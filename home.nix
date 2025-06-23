{ lib, pkgs, ... }:
let
  username = "adrian";
in {

  nixpkgs.config.allowUnfree = true;

  home = {
    inherit username;
    homeDirectory = "/home/${username}";

    packages = with pkgs; [
      discord
    ];

    stateVersion = "24.11";
  };

  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = "Adrian Danao-Schroeder";
    userEmail = "adriandanao@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
    };

    aliases = {
      amend = "commit --amend";
      oops = "commit -a --amend --no-edit";
    };
  };
}
