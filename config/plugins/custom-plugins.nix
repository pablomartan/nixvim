{ pkgs, lib, ... }:
let
  fromGitHub = rev: repo: pkgs.vimUtils.buildVimPlugin {
    pname = "${lib.strings.sanitizeDerivationName repo}";
    version = rev;
    src = builtins.fetchGit {
      url = "https://github.com/${repo}.git";
      rev = rev;
    };
  };
in {
  extraPlugins = with pkgs; [
    (fromGitHub "1a625771e3d3d9f50ca28a4501c11842f6c1ec1e" "serenevoid/kiwi.nvim")
  ];

  extraConfigLua = ''
    local kiwi = require('kiwi').setup({
      {
        path = "/home/cleverpy/Documentos/wiki"
      }
    })
    local kiwi = require('kiwi')

    -- Necessary keybindings
    vim.keymap.set('n', '<leader>ww', kiwi.open_wiki_index, {})
    vim.keymap.set('n', 'T', kiwi.todo.toggle, {})
  '';
}
