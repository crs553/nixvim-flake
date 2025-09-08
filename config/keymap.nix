{...} : {
  keymaps = [
  ]
  ++ import ./keymaps/harpoon.nix
  ++ import ./keymaps/oil.nix
  ++ import ./keymaps/search.nix;
}
