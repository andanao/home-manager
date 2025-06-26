{ lib, pkgs, ... }:
let
  username = "adrian";
in
{

  nixpkgs.config.allowUnfree = true;
  imports = [
    ./modules
  ];

  home = {
    inherit username;
    homeDirectory = "/home/${username}";

    packages = with pkgs; [
      nixfmt-rfc-style
      discord
    ];

    stateVersion = "24.11";
  };

  home.keyboard = {
    layout = "us";
    options = [ "ctrl:nocaps" ];
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
