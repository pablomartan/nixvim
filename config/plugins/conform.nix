{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      timeoutMs = 500;
    };
    formattersByFt = {
      nix = ["alejandra"];
      javascript = [["prettierd" "prettier"]];
      typescript = [["prettierd" "prettier"]];
      css = [["prettierd" "prettier"]];
      json = ["jq"];
      markdown = ["prettierd"];
    };
  };
}
