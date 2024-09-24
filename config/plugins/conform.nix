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
        function(bufnr)
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end

          if slow_format_filetypes[vim.bo[bufnr].filetype] then
            return
          end

          local function on_format(err)
            if err and err:match("timeout$") then
              slow_format_filetypes[vim.bo[bufnr].filetype] = true
            end
          end

          return { timeout_ms = 200, lsp_fallback = false }, on_format
         end
      '';
    };
  };
}
