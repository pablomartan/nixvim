{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      timeoutMs = 500;
    };
    formattersByFt = {
      nix = ["alejandra"];
      javascript = [["prettierd" "prettier"]];
      javascriptreact = [["prettierd" "prettier"]];
      typescript = [["prettierd" "prettier"]];
      typescriptreact = [["prettierd" "prettier"]];
      css = [["prettierd" "prettier"]];
      json = ["jq"];
      markdown = ["prettierd"];
    };
  };
}
