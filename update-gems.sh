#!/usr/bin/env bash
# Use this script if the gem file ever changes
nix-shell -p bundler --run "bundler update"
nix-shell -p bundler --run "bundler package --no-install --path vendor/bundle"
$(nix-build '<nixpkgs>' -A bundix --fallback)/bin/bundix
