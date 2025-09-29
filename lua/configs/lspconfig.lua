require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "nixd" }
vim.lsp.enable(servers)


vim.lsp.config('nixd', {
  cmd = { "nixd" },
  settings = {
    nixd = {
      nixpkgs = {
        expr = "import <nixpkgs> { }",
      },
      formatting = {
        command = { "nixfmt" }, -- or nixfmt or nixpkgs-fmt
      },
      options = {
        nixos = {
        expr = '(builtins.getFlake "/etc/nixos/").nixosConfigurations',
        },
      },
    },
  },
})
-- read :h vim.lsp.config for changing options of lsp servers 
