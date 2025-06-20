{pkgs, ...}: {
  imports = [
    #    ./autocmds.nix
    ./globals.nix
    ./keymaps.nix
    ./options.nix
    ./plugins
    ./ui.nix
  ];

  extraPackages = with pkgs; [
    alejandra
    prettierd
    black
  ];

  performance = {
    combinePlugins = {
      enable = true;

      standalonePlugins = [
        "nvim-treesitter"
      ];
    };
  };
}
