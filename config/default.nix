{ pkgs, ... }:
{
  imports = [
    ./autocmds.nix
    ./globals.nix
    ./keymaps.nix
    ./options.nix
    ./plugins
    ./ui.nix
  ];
}
