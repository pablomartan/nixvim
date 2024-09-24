{
  plugins.conform-nvim = {
    enable = true;

    settings = {
      formatters_by_ft = {
        nix = ["alejandra"];
        javascript = [["prettierd" "prettier"]];
        javascriptreact = [["prettierd" "prettier"]];
        typescript = [["prettierd" "prettier"]];
        typescriptreact = [["prettierd" "prettier"]];
        css = [["prettierd" "prettier"]];
        scss = [["prettierd" "prettier"]];
        json = [["prettierd" "prettier" "jq"]];
        markdown = ["prettierd"];
      };

      format_on_save = ''
        { timeout_ms = 200, lsp_fallback = false }
      '';
    };
  };
}
