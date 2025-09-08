{
  # Import all your configuration modules here
  imports = [ 
    ./plugins/dap.nix
    ./plugins/fugitive.nix
    ./plugins/harpoon.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/oil.nix 
    ./plugins/smear.nix
    ./plugins/telescope.nix
    ./plugins/toggleterm.nix
    ./plugins/treesitter.nix

    ./keymap.nix
    ./colorscheme.nix

  ];
}
