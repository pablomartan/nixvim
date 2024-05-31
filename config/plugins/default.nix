{ ... }: {
  imports = [
    ./cmp.nix
    ./conform.nix
    ./lsp.nix
    ./lualine.nix
    ./telescope.nix
    ./single-liners.nix
    ./custom-plugins.nix
  ];
}
