{ pkgs, lib, config,  ... }: {
  imports = [
    ./shell.nix
    ./rust.nix
    ./hyprland.nix
    ./python.nix
  ];
}
