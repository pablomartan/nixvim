{ pkgs, ... }:
{
  imports = [
    ./plugins
    ./keymaps.nix
    ./options.nix
    ./autocmds.nix
  ];

  globals = {
    neoformat_try_node_exe = 1;
  };

  colorschemes.catppuccin = {
    enable = true;
    flavour = "mocha";
  };
}
