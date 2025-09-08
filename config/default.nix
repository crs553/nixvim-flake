{pkgs,...}:
{
    nixpkgs.config.allowUnfreePredicate = _: true;

    extraPackages = with pkgs; [
# alejandra
# lldb
        (python3.withPackages (python-pkgs: [ python-pkgs.pylatexenc ]))
            black
            cowsay # print a cow
            fd
            fortune # get a quote
            gofumpt
            golangci-lint
            golines
            imagemagick
            isort
            jq
            jupyter
            nixpkgs-fmt
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
        ./plugins/blink-cmp.nix
        ./plugins/conform.nix
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
