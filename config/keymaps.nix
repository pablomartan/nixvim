{
  globals.mapleader = " ";
  globals.maplocalleader = ",";

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
      mode = ["n" "v"];
      action = "<cmd>UndotreeToggle<CR>";
      key = "<leader>u";
    }
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
    }
    {
      mode = "n";
      key = "n";
      action = "nzzzv";
    }
    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
    }
    {
      mode = "x";
      key = "<leader>p";
      action = "[[\"_dP]]";
    }
    {
      mode = ["n" "v"];
      key = "<leader>y";
      action = "[[\"+y]]";
    }
    {
      mode = "n";
      key = "<leader>Y";
      action = "[[\"+Y]]";
    }
    {
      mode = ["n" "v"];
      key = "<leader>d";
      action = "[[\"_d]]";
    }
    {
      mode = "n";
      key = "Q";
      action = "<nop>";
    }
    {
      mode = "n";
      key = "<C-f>";
      action = "<cmd>silent !tmux neww tmux-sessionizer<CR>";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<cmd>cnext<CR>zz";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<cmd>cprev<CR>zz";
    }
    {
      mode = "n";
      key = "<leader>k";
      action = "<cmd>lnext<CR>zz";
    }
    {
      mode = "n";
      key = "<leader>j";
      action = "<cmd>lprev<CR>zz";
    }
    {
      mode = "n";
      key = "<leader>s";
      action = "[[\:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]";
    }
    {
      mode = "v";
      key = "N";
      action = "<cmd>m '>+1<CR>gv=gv";
    }
    {
      mode = "v";
      action = "<cmd>m '<-2<CR>gv=gv";
      key = "E";
    }
  ];
}
