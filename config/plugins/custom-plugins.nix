{
  pkgs,
  lib,
  ...
}: let
  fromGitHub = rev: repo:
    pkgs.vimUtils.buildVimPlugin {
      pname = "${lib.strings.sanitizeDerivationName repo}";
      version = rev;
      src = builtins.fetchGit {
        url = "https://github.com/${repo}.git";
        rev = rev;
      };
    };
in {
  extraPlugins = [
    pkgs.vimPlugins.plenary-nvim
    (fromGitHub "fb84fad97cd4b51caee3c865e8a33a0d413b77a8" "f-person/git-blame.nvim")
  ];
}
