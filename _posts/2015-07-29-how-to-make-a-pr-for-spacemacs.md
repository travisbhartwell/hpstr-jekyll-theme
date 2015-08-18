---
title: "How to Make a Pull Request for Spacemacs"
layout: post
tags: [Technically Travis]
date: 2015-07-29 23:00:00 -0600
---

I've created a screencast demonstrating making a [pull request](https://help.github.com/articles/using-pull-requests/) for open source projects, specifically, [Spacemacs](https://github.com/syl20bnr/spacemacs).  The principles explained here apply to any Git and Github based project.  In this screencast, I demonstrate fixing an [issue I reported](https://github.com/syl20bnr/spacemacs/issues/2431) with how bookmarks were being handled in the Spacemacs home buffer:

<iframe width="560" height="315" src="https://www.youtube.com/embed/pWzJ6IGXwmk" frameborder="0" allowfullscreen> </iframe>

## How to do it

### Fork the Repository
Create the [fork](https://help.github.com/articles/fork-a-repo/) by visiting the project page on Github.  In the case of Spacemacs, it's at <https://github.com/syl20bnr/spacemacs/>.  On that page, click the *Fork* button on the upper right side of the page.  If you happen to belong to organizations on Github (which I do, as seen in the video), you will be prompted to select where to fork the repository.  Select your user.

This will create a new repository for your user that is a mirror of the current state of the [upstream](https://help.github.com/articles/github-glossary/#upstream) repository.

Note the repository clone URL that is shown on the right-hand side of the page, part way down.  This is needed when you add your repository as a remote to your local checkout.

### Update your local repository
Next, you need to make sure your local checkout of the Spacemacs repository is up to date.  As specified in the [Spacemacs Contributor Guidelines](https://github.com/syl20bnr/spacemacs/blob/develop/doc/CONTRIBUTE.org#pull-request-guidelines), contributions are best done off of the `develop` branch.

1.  Go to magit-status for the Spacemacs repository by doing `SPC u SPC g s` (_Hit the spacebar, then u, then the spacebar again, then g, then s_).  Then enter the path of the Spacemacs repository, `~/.emacs.d`, and hit `RETURN`.

2.  Switch to the develop branch, if you are not already there. Hit `b b` and type `develop`.  One thing I did not cover in the video is the case if you haven't already checked out the develop branch previously, instead of `b b` (or, *branch checkout*), you need to do `b B` (or, *create and checkout*).  It will prompt you for the branch to base it off of, select or type `origin/develop`, hit `RETURN` and then name the branch `develop`.  Note that any time in the `magit-status` buffer, if you want to know what commands are available, just hit `?`.

3.  After you have the develop branch checked out, update it against the remote upstream repository.  Hit `F` for Pulling.  Then type `-r` to rebase.  Even though we don't yet have any local commits, it makes sense to rebase any unpushed commits on the remote branch so that they are up to date and can be merged without merge commits.  Hit `F` to pull and rebase.  After this is done, we want to restart Emacs to run any of the latest changes.  Hit `SPC q q` to quit Emacs.  Relaunch Emacs.

### Adding your remote

We now need to add our newly-forked remote repository as a remote in our Spacemacs repository.  There are several strategies that can be taken here.  One option is to wipe your `~/.emacs.d` directory and clone your fork, making it `origin`.  You would then add the upstream, original repository as a new remote (perhaps named `upstream`) that you could pull from.  But since I am more often than not going to be running and updating code from the upstream repository, I will leave the upstream as `origin`, and add my fork as `mine`.

1.  Go to the `magit-status` buffer again: `SPC u SPC g s ~/.emacs.d RET`.

2.  Hit `M` (or, *Remoting*) and then `a` (or, *Add*).

3.  When prompted, give the remote a name.  I called it `mine`.

4.  When prompted for the remote URL, put the URL that you copied from the *Clone URL* on your project page.  For example, mine was `git@github.com:travisbhartwell/spacemacs`.

### Creating a branch for your changes

Before any changes are made, we need to make a branch to put them in.  You could just commit to the `develop` branch, push your changes to your fork, and then do a pull request off of that.  But since I often have multiple pull requests open at one time, I find it simpler to do a branch per pull request.  This also allows my branches to have meaningful names.

1.  From the `magit-status` buffer, hit `b B` (or, *create and checkout branch*).

2.  magit will then prompt you for the branch you are branching off of.  Choose `develop`.

3.  Next, it will prompt you for a branch name.  I like long descriptive names, so I chose `fix/spacemacs-home-buffer-bookmarks-jump`.

Check out the [Git book chapter on branching](http://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell) for an in-depth discussion of branching.

### Make, commit, and push changes

Now that we have a branch we can make our changes.  In the video, I used a previously created [Git stash](http://git-scm.com/book/en/v2/Git-Tools-Stashing-and-Cleaning) to quickly apply changes to my repository.  I simply applied it by hitting `z p` (or, *Stash pop*).  Go ahead and make the changes you want.  After you have tested and are satisfied with them, you are ready to commit and push.

1.  Go to the `magit-status` buffer again: `SPC u SPC g s ~/.emacs.d RET`.

2.  Stage any unstaged changes you have made.  Quickly: hit `s` on each line under *Unstaged changes* corresponding to a file you've changed.

3.  Hit `c c` to commit all staged changes.

4.  Type a meaningful commit message.  (See [this post](http://chris.beams.io/posts/git-commit/) for a great explanation of what a good commit message is.)  Helpfully, the diff of what you have changed is shown on the right-hand side for you to see what you did.  Make the first line be a short subject describing the commit.  Add a blank line and then in lines wrapped at 78, write a brief description of the changes and why.  If you are fixing an issue that has been filed, include something along the lines of 'Fixes #2431'.  Hit `C-c C-c` (*that's Control and c together, and then again*).

5.  Hit `P` (or, *Pushing*).  Then, `-u` to set the upstream so subsequent pushes, if needed, default to this remote.  Then `P` (or, *Push current*).  Start typing the name of your remote (in my case, `mine`), and it will finish the branch name for you -- `mine/fix/spacemacs-home-buffer-bookmarks-jump`.  Hit `RETURN`.

### Make the pull request

You are now ready to submit your pull request.  Switch back to your browser to the page for your fork.

1.  Github will show your recently pushed branches near the top, in a yellow box.  Refresh your page if you don't see this.  Click the green *"Compare & pull request"* button.

2.  In the next screen, Github will prompt you for a branch to compare against.  By default it will show *base: master*.  We want to select `develop` here.  As shown in the video, it may take a minute for the page to update after you have selected the `develop` branch.

3.  If you've done everything right, it will be able to cleanly merge your commit and will indicate so.  It will then pull from your commit message the subject and description.  If you've written a good commit message, there should be no need to add anything here.  Click *Create pull request*.

Congratulations!  There you go, you have created your first pull request.  Hopefully the project developers will like your pull request and merge it.

Happy Hacking!


