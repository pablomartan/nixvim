{pkgs, ...}: {
  imports = [
    #    ./autocmds.nix
    ./globals.nix
    ./keymaps.nix
    ./options.nix
    ./plugins
    ./ui.nix
  ];

  extraConfigVim = ''
    let g:conjure#filetype#scheme = "conjure.client.guile.socket"
  '';

  extraPackages = with pkgs; [
    alejandra
    jq
    prettierd
  ];
}
