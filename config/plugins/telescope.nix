{
  plugins.web-devicons.enable = true;

  plugins.telescope = {
    enable = true;

    extensions = {
      fzf-native.enable = true;
    };

    keymaps = {
      gd = "lsp_definitions";
      "<leader>vrr" = "lsp_references";
      "<leader>pf" = "find_files";
      "<C-p>" = "git_files";
      "<leader>ps" = "live_grep";
    };
  };
}
