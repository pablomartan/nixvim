{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      sources = [
        {name = "path";}
        {name = "nvim_lsp";}
        {name = "nvim_lua";}
        {name = "buffer";}
        {name = "luasnip";}
      ];
      snippet = {
        expand = "function(args) require('luasnip').lsp_expand(args.body) end";
      };
      mapping = {
        "<C-p>" = "cmp.mapping.select_prev_item(cmp_select)";
        "<C-n>" = "cmp.mapping.select_next_item(cmp_select)";
        "<C-y>" = "cmp.mapping.confirm({ select = true })";
        "<C-Space>" = "cmp.mapping.complete()";
        __raw = ''
          cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping(function(fallback)
                  local luasnip = require("luasnip")
                  if cmp.visible() then
                    cmp.select_next_item()
                  elseif luasnip.locally_jumpable(1) then
                    luasnip.jump(1)
                  else
                    fallback()
                  end
                end, { "i", "s" }),

                ["<S-Tab>"] = cmp.mapping(function(fallback)
                  local luasnip = require("luasnip")
                  if cmp.visible() then
                    cmp.select_prev_item()
                  elseif luasnip.locally_jumpable(-1) then
                    luasnip.jump(-1)
                  else
                    fallback()
                  end
                end, { "i", "s" })
              })
        '';
      };
      extraConfigLua = ''
        luasnip = require("luasnip")
      '';
    };
  };

  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp_luasnip.enable = true;
}
