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
      snippet = {expand = "luasnip";};
      mapping = {
        "<C-p>" = "cmp.mapping.select_prev_item(cmp_select)";
        "<C-n>" = "cmp.mapping.select_next_item(cmp_select)";
        "<C-y>" = "cmp.mapping.confirm({ select = true })";
        "<C-Space>" = "cmp.mapping.complete()";
      };
      extraConfigLua = ''
        luasnip = require("luasnip")
      '';
    };
  };

  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp_luasnip.enable = true;
}
