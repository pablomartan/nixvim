let
  adapter = "opencode";
  model = "DeepSeek-V4-Flash";
in {
  plugins.codecompanion = {
    enable = true;

    settings = {
      strategies = {
        chat = {
          inherit adapter;
          inherit model;
        };
        inline = {
          inherit adapter;
          inherit model;
        };
        cli = {
          inherit adapter;
          inherit model;
        };
        cmd = {
          inherit adapter;
          inherit model;
        };
        background = {
          inherit adapter;
          inherit model;
        };
      };
    };
  };
}
