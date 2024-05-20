{ pkgs, ... }:
{
  imports = [
    ./plugins
    ./keymaps.nix
    ./options.nix
    ./autocmds.nix
    ./ui.nix
  ];

  globals = {
    neoformat_try_node_exe = 1;
  };
}
