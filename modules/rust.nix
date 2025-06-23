{ pkgs, lib, config,  ... }: {

  home.packages = with pkgs; [
    cargo

    rusty-man
  ];

}
