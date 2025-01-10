{
  plugins.lsp = {
    enable = true;

    servers = {
      nil-ls.enable = true;
      ts-ls = {
        enable = true;
        extraOptions = {
          __raw = ''
            {
              commands = {
                OrganizeImports = {
                  function()
                  local params = {
                    command = "_typescript.organizeImports",
                    arguments = {
                      vim.api.nvim_buf_get_name(0)
                    },
                    title = ""
                  }

                  vim.lsp.buf.execute_command(params)
                  end,
                  description = "Organize Imports"
                }
              }
            }
          '';
        };
      };
      eslint.enable = true;
      lua-ls.enable = true;
    };

    keymaps = {
      lspBuf = {
        gd = "definition";
        K = "hover";
        "<leader>vws" = "workspace_symbol";
        "<leader>vca" = "code_action";
        "<leader>vrr" = "references";
        "<leader>vrn" = "rename";
        "<C-h>" = "signature_help";
        "<leader>f" = "format";
      };
      diagnostic = {
        "<leader>vd" = "open_float";
        "<d" = "goto_next";
        ">d" = "goto_prev";
      };
    };
  };
}
