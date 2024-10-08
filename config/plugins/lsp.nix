{
  plugins.lsp = {
    enable = true;

    servers = {
      nil-ls.enable = true;
      ts-ls.enable = true;
      eslint.enable = true;
      lua-ls.enable = true;
    };

    keymaps = {
      lspBuf = {
        gd = "definition";
        K = "hover";
        "<leader>vws" = "workspace_symbol";
        "<leader>vca" = "code_action";
        "<leader>vrr" = "references";
        "<leader>vrn" = "rename";
        "<C-h>" = "signature_help";
        "<leader>f" = "format";
      };
      diagnostic = {
        "<leader>vd" = "open_float";
        "<d" = "goto_next";
        ">d" = "goto_prev";
      };
    };
  };
}
