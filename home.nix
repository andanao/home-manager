{ lib, pkgs, ... }:
let
  username = "adrian";
in {
  home = {
    packages = with pkgs; [
      cowsay
    ];

    inherit username;
    homeDirectory = "/home/${username}";

    stateVersion = "24.11";

    file = {
      "hello.txt" = {
        text =''
          #!/usr/bin/env bash

          echo "Hello, ${username}!"
          echo '*slaps roof* This script can fit so many lines in it'
        '';
        executable = true;
      };
    };
  };
}
