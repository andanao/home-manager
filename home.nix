{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      hello
    ];

    username = "adrian";
    homeDirectory = "/home/adrian";

    stateVersion = "24.11";
  };
}
