{

  globals = {
    localleader = " ";
    globalleader = " ";
  };

  extraConfigLua = ''
    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      update_in_insert = false,
      underline = true,
      severity_sort = true,
    })
  '';

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
    ./options.nix

  ];
}
