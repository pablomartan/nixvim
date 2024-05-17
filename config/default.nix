{ pkgs, ... }: {
       opts = {
         guicursor = "";

         number = true;
         relativenumber = true;

         tabstop = 4;
         softtabstop = 4;
         shiftwidth = 4;
         expandtab = true;

         smartindent = true;

         wrap = false;

         swapfile = false;
         backup = false;

         hlsearch = false;
         incsearch = true;

         termguicolors = true;

         scrolloff = 8;
         signcolumn = "yes";

         updatetime = 50;

         colorcolumn = "80";

         foldmethod = "expr";
         foldexpr = "nvim_treesiter#foldexpr()";
       };

       globals = {
         mapleader = " ";
         neoformat_try_node_exe = 1;

       };

       colorschemes.catppuccin = {
         enable = true;
         flavour = "mocha";
       };

       keymaps = [
         {
           mode = "n";
           key = "<leader>gs";
           action = "<cmd>Git<CR>";
         }
         {
           mode = "n";
           key = "<leader>pv";
           action = "<cmd>Ex<CR>";
         }
         {
           mode = "v";
           key = "J";
           action = "<cmd>m '>+1<CR>gv=gv";
         }
         {
           mode = "v";
           key = "K";
           action = "<cmd>m '<-2<CR>gv=gv";
         }
         {
           mode = ["n" "v"];
           action = "<cmd>UndotreeToggle<CR>";
           key = "<leader>u";
         }
       ];

       autoCmd = [
         {
           event = ["BufWritePre"];
           pattern = [ "*.js*" "*.ts*" "*.*css" ];
           command = "Neoformat";
         }
       ];

       plugins = {
         treesitter.enable = true;
         telescope = {
           enable = true;
           keymaps = {
             "<leader>pf" = "find_files";
             "<C-p>" = "git_files";
             "<leader>ps" = "live_grep";
           };
         };
         nix = {
           enable = true;
         };
         fugitive.enable = true;
         lualine = {
           enable = true;

           sectionSeparators = {
             left = "";
             right = "";
           };

           componentSeparators = {
             left = "";
             right = "";
           };

           sections = {
             lualine_a = ["mode"];
             lualine_b = ["branch" "diff" "diagnostics"];
             lualine_c = ["filename"];
             lualine_x = ["encoding" "fileformat" "filetype"];
             lualine_y = ["progress"];
             lualine_z = ["location"];
           };

           inactiveSections = {
             lualine_c = ["filename"];
             lualine_x = ["location"];
           };
         };

         undotree.enable = true;

         lsp = {
           enable = true;

           servers = {
             nil_ls.enable = true;
             tsserver.enable = true;
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
             };
             diagnostic = {
               "<leader>vd" = "open_float";
               "<d" = "goto_next";
               ">d" = "goto_prev";
             };
           };
         };

         nvim-cmp = {
           enable = true;
           autoEnableSources = true;
           sources = [
              {name = "path";}
              {name = "nvim_lsp";}
              {name = "nvim_lua";}
              {name = "buffer";}
              # {name = "luasnip";}
           ];

           mapping = {
               "<C-p>" = "cmp.mapping.select_prev_item(cmp_select)";
               "<C-n>" = "cmp.mapping.select_next_item(cmp_select)";
               "<C-y>" = "cmp.mapping.confirm({ select = true })";
               "<C-Space>" = "cmp.mapping.complete()";
             };
           };
       };

       extraPlugins = with pkgs.vimPlugins; [
         neoformat
       ];
     }
