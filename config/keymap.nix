{ ... }:
{
  keymaps = [
  ]
  ++ import ./keymaps/floaterm.nix
  ++ import ./keymaps/fugitive.nix
  ++ import ./keymaps/harpoon.nix
  ++ import ./keymaps/oil.nix
  ++ import ./keymaps/search.nix
  ++ import ./keymaps/terminal.nix
  ++ import ./keymaps/which-key.nix;
}
