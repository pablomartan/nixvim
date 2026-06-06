let
  model = "Sonnet-4.6";
in {
  plugins.codecompanion = {
    enable = true;

    settings = {
      strategies = {
        chat = {
          inherit model;
        };
        inline = {
          inherit model;
        };
        cli = {
          inherit model;
        };
        cmd = {
          inherit model;
        };
        background = {
          inherit model;
        };
      };
    };
  };
}
