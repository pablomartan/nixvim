{pkgs, ...}: {
  plugins = {
    copilot-lsp.enable = true;

    copilot-lua = {
      enable = true;
      settings = {
        copilot_node_command = "${pkgs.nodejs_22}/bin/node";
      };
    };
  };
}
