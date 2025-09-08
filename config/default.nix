{ pkgs, ... }:
{
  globals = {
    mapleader = " ";
    maplocalleader = ",";
    markdown_folding = true;
  };
  nixpkgs.config.allowUnfreePredicate = _: true;

  extraPackages = with pkgs; [
    # alejandra
    # lldb
    (python3.withPackages (python-pkgs: [ python-pkgs.pylatexenc ]))
    black
    cowsay # print a cow
    fd
    fortune # get a quote
    gh
    gofumpt
    golangci-lint
    golines
    imagemagick
    isort
    jq
    jupyter
    nixfmt-rfc-style
    nodePackages.prettier
    openssl
    postgresql
    prettierd
    ripgrep
    rust-analyzer
    rustfmt
    shfmt
    sqlite
    tectonic
    stylua
    terraform
    #websocat
    wordnet
  ];

  extraPlugins = with pkgs.vimPlugins; [
    lazydev-nvim
    nvim-jdtls
    #vim-dadbod
    #vim-dadbod-completion
    #vim-dadbod-ui
    #vim-table-mode
    luasnip
  ];

  extraPython3Packages = p: [
    p.ipykernel
    p.jupyter-client
    p.numpy
    p.plotly
    p.pnglatex
    p.pynvim
    p.pyperclip
  ];

  extraConfigLua = ''
    vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            update_in_insert = false,
            underline = true,
            severity_sort = true,
            })
  '';
  autoCmd = [
    {
      event = [ "TextYankPost" ];
      pattern = [ "*" ];
      command = "silent! lua vim.hl.on_yank()";
    }
    {
      event = [ "BufEnter" ];
      pattern = [ "github.com_*.txt" ];
      command = "set filetype=markdown";
    }
    {
      event = [ "BufRead" ];
      pattern = [ "Cargo.toml" ];
      command = ''
            vim.api.nvim_create_autocmd("BufRead", {
            group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
            pattern = "Cargo.toml",
            callback = function()
                cmp.setup.buffer({ sources = { { name = "crates" } } })
            end,
        })
      '';
    }
  ];

  viAlias = true;
  vimAlias = true;

  performance = {
    byteCompileLua = {
      enable = true;
      nvimRuntime = true;
      plugins = true;
    };

    #combinePlugins = {
    #    enable = true;

    #    standalonePlugins = with pkgs.vimPlugins; [
    #        conform-nvim
    #        #mini-nvim
    #        #nvim-jdtls
    #        #nvim-treesitter
    #        oil-nvim
    #        #snacks-nvim
    #    ];
    #};
  };

  # Import all your configuration modules here
  imports = [
    ./plugins/blink-cmp.nix
    ./plugins/cmp.nix
    ./plugins/conform.nix
    ./plugins/dap.nix
    ./plugins/floaterm.nix
    ./plugins/fugitive.nix
    ./plugins/harpoon.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/markdown-preview.nix
    ./plugins/oil.nix
    ./plugins/smear.nix
    ./plugins/snacks.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix
    ./plugins/trouble.nix
    ./plugins/vimbegood.nix

    ./keymap.nix
    ./colorscheme.nix
    ./options.nix

  ];
}
