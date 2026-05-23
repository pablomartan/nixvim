{
  plugins.codecompanion = {
    enable = true;

    settings = {
      strategies = {
        chat = {
          adapter = "opencode";
        };
        inline = {
          adapter = "opencode";
        };
        cli = {
          adapter = "opencode";
        };
        cmd = {
          adapter = "opencode";
        };
        background = {
          adapter = "opencode";
        };
      };
    };
  };
}
