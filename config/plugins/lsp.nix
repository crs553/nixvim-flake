{...}: {
  plugins.lsp = {
    enable = true;

    servers = {
      bashls.enable = true;
      ccls.enable = true;
      cssls.enable = true;
      dockerls.enable = true;
      golangci_lint_ls.enable = true;
      gopls.enable = true;
      html.enable = true;
      jsonls.enable = true;
      lua_ls.enable = true;
      marksman.enable = true;
      pylsp.enable = true;
      pylyzer.enable = false;

      nixd = {
        enable = true;

        settings = {
          formatting.command = [ "nixpkgs-fmt" ];
          nixpkgs.expr = "import <nixpkgs> {}";
        };
      };

      yamlls = {
        enable = true;
        filetypes = [ "yaml" ];
      };
    };
  };
}
