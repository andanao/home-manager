{ pkgs, lib, config,  ... }: {

  home.packages = with pkgs; [
    cargo

    cargo-edit
    cargo-info

    crates-tui
    rusty-man

    bacon
  ];

}
