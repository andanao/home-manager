{ pkgs, lib, config,  ... }: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
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

    shellAliases = {
      ll = "ls -l";
      la = "ls -la";

      gs = "git status";
      glog="git log --pretty=\"%C(Yellow)%h  %C(reset)%ad (%C(Green)%cr%C(reset))%x09 %C(Cyan)%an: %C(reset)%s\" --date=short";
      glogs="glog -5";

      jkn = "cd ~/nix";
      jkh = "cd ~/home-manager";
      jkd = "cd ~/Downloads";
      jkl = "~/git";
      jko = "~/git/org";
      jke = "~/git/emacs";

      nurse = "sudo nixos-rebuild switch --flake ~/nix/";
      horse = "home-manager switch --flake ~/home-manager#adrian";
    };
  };

}
