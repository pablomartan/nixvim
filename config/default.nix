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
    jq
    prettierd
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
