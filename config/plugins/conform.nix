{
  plugins.conform-nvim = {
    enable = true;

    settings = {
      formatters_by_ft = {
        nix = ["alejandra"];
        javascript = ["prettierd" "prettier"];
        javascriptreact = ["prettierd" "prettier"];
        typescript = ["prettierd" "prettier"];
        typescriptreact = ["prettierd" "prettier"];
        css = ["prettierd" "prettier"];
        scss = ["prettierd" "prettier"];
        json = ["prettierd" "prettier"];
        markdown = ["prettierd"];
        python = ["black"];
      };

      format_on_save = ''
        { timeout_ms = 200, lsp_fallback = false, stop_after_first = true }
      '';
    };
  };
}
