{ pkgs, ... }: {
  imports = [
    ./cmp.nix
    ./lsp.nix
    ./lualine.nix
    ./telescope.nix
    ./single-liners.nix
    ./custom-plugins.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [
    neoformat
  ];
}
