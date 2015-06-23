---
layout: post
title: nix-shell and Shebang Lines
description: "Using nix-shell to write scripts."
date: 2015-06-17 08:00:00 -0600
modified: 2015-06-22 21:00:00 -0600
tags: [Technically Travis]
---

A few days ago, version 1.9 of the Nix package manager
[was released](https://nixos.org/releases/nix/nix-1.9/manual/#ssec-relnotes-1.9).
From the release notes:

> nix-shell can now be used as a #!-interpreter. This allows you to write scripts that dynamically fetch their own dependencies.

They followed with an example that used GHC's `runhaskell` to execute Haskell
code using libraries that had been specified in the shebang line.
Unfortunately, this specific example doesn't work, as it isn't sufficient
information for Haskell to find the Network.HTTP library.  But this notwithstanding,
it is still an interesting change that I have found useful.

Why?
----

First, why would you use this?  Several reasons.  As quoted above, your scripts
can auto-fetch their own dependencies.  This makes sharing and deploying scripts
to other Nix-based systems easy.  No having to remember exactly everything that
is needed.  The script will fetch and install whatever it needs.  If the system
already has the package installed, Nix will just use that.

Second, I use this (as is one of my big motivations for Nix in general) to
isolate things.  I have the minimum set of packages installed to keep my system
running and support the applications I run regularly.  Then particularly for
project specific scripts -- things not useful outside the context of the
project, or may have dependencies separate from what the system in general might
use -- I like using `nix-shell` scripts.  I don't have to install all of the
libraries (gems, npm packages, etc) needed and clutter up my system or `$HOME`.

Using nix-shell in a Shebang Line
---------------------------------

To use it, start your scripts with two lines similar to this:

{% highlight bash %}
#! /usr/bin/env nix-shell
#! nix-shell -i python3 -p python3 python34Packages.pygobject3 libnotify gobjectIntrospection gdk_pixbuf
{% endhighlight %}

This is a little different than some other shebang lines you might have seen
before.  First, why use `/usr/bin/env` instead of calling `nix-shell` directly?
As explained in the answers to this
[Unix StackExchange question](http://unix.stackexchange.com/questions/29608/why-is-it-better-to-use-usr-bin-env-name-instead-of-path-to-name-as-my),
this allows the script to be more portable.  On NixOS systems, you could
generally reference `/run/current-system/sw/bin/nix-shell` as the `nix-shell`
path.  In fact, in previous edits of this post I used that in some of my
examples.  But if you wanted to share this with a system that was using Nix on
top of another distribution or OS, that wouldn't work.

Related, the second line is needed to get around a potential limitation
(depending on the system you are running on) in the way that interpreted scripts
are launched.  Quoting the *Interpreter scripts* paragraphs under the *NOTES*
section of the
[execve(2) man page](http://man7.org/linux/man-pages/man2/execve.2.html): 

> A maximum line length of 127 characters is allowed for the first line in an
> interpreter scripts. 
>
> The semantics of the optional-arg argument of an interpreter script vary
> across implementations.  On Linux, the entire string following the interpreter
> name is passed as a single argument to the interpreter, and this string can
> include white space.  However, behavior differs on some other systems.  Some
> systems use the first white space to terminate optional-arg. On  some
> systems, an interpreter script can have multiple arguments, and white spaces
> in optional-arg are used to delimit the arguments.

So, the second line allows passing multiple arguments to `nix-shell`, allowing
for spaces in those arguments, and dealing with a potential line-length limit.

Examples
--------

The `-i` parameter to `nix-shell` tells it which interpreter to use when executing
the script.  Often, it is from one of the dependencies, such as in the above
example.  The `-p` parameter gives one or more dependencies to be used. After
the above lines follows the script (shamelessly borrowed from the
[ArchWiki](https://wiki.archlinux.org/index.php/Desktop_notifications#Usage_in_programming)): 

{% highlight python %}
#! /usr/bin/env nix-shell
#! nix-shell -i python3 -p python3 python34Packages.pygobject3 libnotify gobjectIntrospection gdk_pixbuf

from gi.repository import Notify
Notify.init("Hello world")
Hello=Notify.Notification.new("Hello world","This is an example notification.","dialog-information")
Hello.show()
{% endhighlight %}

But its usefulness isn't limited to just writing scripts interpreted by one of the
declared dependencies.  I needed to write a wrapper for some NodeJS scripts I
had installed in the node_modules directory of a project I am working on.  I
didn't want Node installed globally, so I did this:

{% highlight bash %}
#! /usr/bin/env nix-shell
#! nix-shell -i bash -p nodejs

readonly BIN_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly CMD="$(basename ${BASH_SOURCE[0]/%-wrapper/})"

"${BIN_DIR}"/"${CMD}" "$@"
{% endhighlight %}

I simply made a symlink for each program in my `node_modules/.bin` directory to
this file, with the name `program-wrapper`, for example, `tern-wrapper` to wrap
[tern](http://ternjs.net/).  Notice my script doesn't directly call nodejs,
though the underlying script it calls does.

I wrote the following script to render this document as I was
writing it to check the way it looked in HTML:

{% highlight bash %}
#! /usr/bin/env nix-shell
#! nix-shell -i bash -p inotifyTools pandoc

readonly FILE="$*"

if [ $# -lt 1 ]; then
    echo "Usage:  ${0} MARKDOWN_FILE" 2>&1
    echo "" 2>&1
    echo "MARKDOWN_FILE must exist before launching." 2>&1
    exit 1
fi

if [ ! -e "${FILE}" ]; then
    echo "${FILE} doesn't yet exist, create it before launching!" 2>&1
    exit 1
fi

# Assume the extension is .md
readonly OUTPUT=$(basename "${FILE}" ".md").html

echo "Press Control-C to quit watching for changes on ${FILE}."
while true; do
    inotifywait -q -e modify "${FILE}" &&
        echo "Updating HTML for ${FILE}" &&
        pandoc -s -f markdown -t html -o "${OUTPUT}" "${FILE}"
done
{% endhighlight %}

One last example, where I couldn't use `nix-shell` in a shebang line.  I was
playing with [Hakyll](http://jaspervdj.be/hakyll/).  After you use `haykll-init`
to generate your project structure, all work is done by compiling your own code
(in this case, a `site.hs` that has an accompanying cabal file.  Since something
similar to the example from the release notes didn't work, I tried the
following, a variant of what I've used in `.nix` files.

{% highlight bash %}
#! /usr/bin/env nix-shell
#! nix-shell --pure -i bash -p 'pkgs.haskellPackages.ghcWithPackages (pkgs: with pkgs; [ hakyll cabal-install ])'

cabal run $@
{% endhighlight %}

But `nix-shell` didn't like this:

{% highlight bash %}
nafai@shedemei:~/Documents/blog/hakyll/technically
$ ./site-wrapper 
error: syntax error, unexpected ')', at (string):1:66
{% endhighlight %}

So I had to just make this one a regular shell script:

{% highlight bash %}
#! /usr/bin/env bash

nix-shell --pure \
          -p "pkgs.haskellPackages.ghcWithPackages (pkgs: with pkgs; [ hakyll cabal-install ])" \
          --run "cabal run $@"
{% endhighlight %}

Anyway, just in these last few days I've found interesting ways to use this new
capability.  I hope this gives some examples of how it may be used.  I plan on
writing more posts about other ways I have used this and other useful ways I
have used Nix tools.  I welcome any feedback from more experienced Nix users (or
comments in general about my scripting, I'm a little out of practice).

Updates
-------
On June 22, 2015, I updated the post to expand the explanation of why this might
be used, why `/usr/bin/env` was used along with a second script line, and
cleaned up and made my examples more consistent.

