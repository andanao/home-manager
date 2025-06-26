{
  programs.kitty.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      general = {
        gaps_in = 8;
        gaps_out = 16;
        border_size = 0;

        resize_on_border = false;

        allow_tearing = false;

        layout = "dwindle";
      };
      decoration = {
        active_opacity = 0.98;
        inactive_opacity = 0.80;

        rounding = 10;
      };
      # bind = [
      #   "$mainMod, A, exec, hyprctl dispatch focuswindow Emacs"
      # ];
    };

    extraConfig = ''
      ${builtins.readFile ../dotfiles/hyprland.conf}
    '';
  };
}
