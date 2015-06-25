{ stdenv, lib, buildEnv, bundlerEnv, ruby_2_1, curl, nodejs, pygments, python }:

let
  jekyll-iamtravis-blog = bundlerEnv {
    name = "jekyll-iamtravis-blog";

    ruby = ruby_2_1;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;

    buildInputs = [ curl ];
  };
in buildEnv {
  name = "iamtravis-blog";

  paths = [
    jekyll-iamtravis-blog
    nodejs
    pygments
    python
  ];
}
