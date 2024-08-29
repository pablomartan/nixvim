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
    let g:conjure#client#guile#socket#pipename = ".guile-repl.socket"
  '';

  extraPackages = with pkgs; [
    alejandra
    jq
    prettierd
  ];
}
