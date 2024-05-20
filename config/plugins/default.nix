{ pkgs, ... }: {
  imports = [
    ./cmp.nix
    ./lsp.nix
    ./lualine.nix
    ./telescope.nix
    ./single-liners.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [
    neoformat
  ];
}
