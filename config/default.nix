{ pkgs, ... }:
{
  imports = [
    ./plugins
    ./keymaps.nix
    ./options.nix
    ./autocmds.nix
    ./ui.nix
    ./globals.nix
  ];
}
