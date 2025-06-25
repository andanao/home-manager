{ pkgs, lib, config,  ... }: {

  home.packages = with pkgs; [
      ripgrep
      ripgrep-all
      bat
      fd
      du-dust
      dua
      kondo

      wiki-tui
      ncspot
  ];


  programs.eza = {
    enable = true;
    colors = "always";
    git = true;
    icons = "auto";
    enableZshIntegration = true;
  };

  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };


  home.shellAliases = {
      ls = "eza";
      cd = "z";
      grep = "rg";

      ll = "ls -l";
      la = "ls -la";
      "..." = "cd ../..";


      gs = "git status";
      glog="git log --pretty=\"%C(Yellow)%h  %C(reset)%ad (%C(Green)%cr%C(reset))%x09 %C(Cyan)%an: %C(reset)%s\" --date=short";
      glogs="glog -3";

      jkn = "cd ~/nix";
      jkh = "cd ~/home-manager";
      jkd = "cd ~/Downloads";
      jkl = "~/git";
      jko = "~/git/org";
      jke = "~/git/emacs";


      weather = "(){ curl -s v2.wttr.in/$1 }";

      nsp = "nix-shell -p --run $SHELL";
      nspk = "nix search nixpkgs";

      nurse = "sudo nixos-rebuild switch --flake ~/nix/";
      horse = "home-manager switch --flake ~/home-manager#adrian -b backup";
  };

  programs.zsh = {
    enable = true;
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/.histfile";
      ignoreDups = true;
      ignoreSpace = true;
      extended = true;
      append = true;
      share = true;
    };

    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;

  };

}
