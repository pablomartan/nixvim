{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
    formattersByFt = {
      nix = ["alejandra"];
      javascript = [[ "prettierd" "prettier" ]];
      json = ["jq"];
      markdown = ["mdformat"];
    };
  };
}
