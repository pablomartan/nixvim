{
  plugins.web-devicons.enable = true;

  plugins.telescope = {
    enable = true;

    extensions = {
      fzf-native.enable = true;
    };

    keymaps = {
      "<leader>pf" = "find_files";
      "<C-p>" = "git_files";
      "<leader>ps" = "live_grep";
    };
  };
}
