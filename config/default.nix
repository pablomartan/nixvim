{ pkgs, ... }:
{
  imports = [
    ./plugins
    ./keymaps.nix
    ./options.nix
  ];

  globals = {
    neoformat_try_node_exe = 1;
  };

  colorschemes.catppuccin = {
    enable = true;
    flavour = "mocha";
  };

  autoCmd = [
    {
      event = ["BufWritePre"];
      pattern = [ "*.js*" "*.ts*" "*.*css" ];
      command = "Neoformat";
    }
  ];
}
