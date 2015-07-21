---
title: "Announcing nix-emacs v0.0.1"
layout: post
tags: [Technically Travis]
date: 2015-07-20 20:45:00 -0600
---

My friend [Diego Berrocal](http://cestdiego.github.io) and I would like to announce the release of [nix-emacs v0.0.1](https://github.com/travisbhartwell/nix-emacs/releases/tag/v0.0.1).

<iframe width="560" height="315" src="https://www.youtube.com/embed/4FZl_a7YQIA" frameborder="0" allowfullscreen> </iframe>

nix-emacs adds support for searching and completing options in [Nix OS](http://nixos.org) configuration files.  Nix OS is configured using the Nix expression language.  This includes configuration from your hostname to options for various services you may enable.  The [online documentation](https://nixos.org/nixos/manual/ch-options.html) lists the abundant options available.  There is also a [handy interface](https://nixos.org/nixos/options.html) for searching the options.

But, we found it less than ideal to have to constantly switch back and forth between the browser and our editor while editing our configurations.

Included is support for:

+ A [helm](https://emacs-helm.github.io/helm/) source for searching the options and viewing documentation

![helm-nixos-options](https://github.com/travisbhartwell/nix-emacs/raw/v0.0.1/img/helm-nixos-options.gif)

+ A [company](http://company-mode.github.io/) backend for completion of option names in nix-mode files.

![company-nixos-options](https://github.com/travisbhartwell/nix-emacs/raw/v0.0.1/img/company-nixos-options.gif)


Check out the [README](https://github.com/travisbhartwell/nix-emacs/blob/v0.0.1/README.org) for instructions on how to use nix-emacs.

We've submitted pull requests to get this included in [MELPA](http://melpa.org/#/) so you can easily install it.  Also, we've submitted a pull request to [Spacemacs](https://github.com/syl20bnr/spacemacs/), the Emacs configuration we both use, to add a Nix layer, with everything configured out of the box.

This is just an initial release.  Hopefully more refinements to come.  Feel free to follow along on [Github](https://github.com/travisbhartwell/nix-emacs/).  Submit any issues you may have or submit pull requests.

We also have a [Gitter](https://gitter.im/travisbhartwell/nix-emacs?utm_source=share-link&utm_medium=link&utm_campaign=share-link) channel, if you want to chat with us.

---

Updated on 2015-07-21 to add Gitter link.
