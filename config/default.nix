{ pkgs, ... }:
{
  imports = [
    ./plugins
    ./keymaps.nix
  ];

  opts = {
    guicursor = "";

    number = true;
    relativenumber = true;

    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;
    expandtab = true;

    smartindent = true;

    wrap = false;

    swapfile = false;
    backup = false;

    hlsearch = false;
    incsearch = true;

    termguicolors = true;

    scrolloff = 8;
    signcolumn = "yes";

    updatetime = 50;

    colorcolumn = "80";

    foldmethod = "expr";
    foldexpr = "nvim_treesiter#foldexpr()";
  };

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
