let
  nixpkgs = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/660e7737851506374da39c0fa550c202c824a17c.tar.gz";
    sha256 = "sha256:19vv89p2s8kcs7acjkfv473caxbfhxvy3vijkjg8bkwmgm1xvpya";
  };
  lib = import (nixpkgs + "/lib");

in
lib
