lvim.builtin.treesitter.ensure_installed = {
  "haskell",
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.highlight.enable = true


-- Overrides
lvim.lsp.automatic_configuration.skipped_servers = { "hls" }

require("lvim.lsp.manager").setup("hls", {
  settings = {
    haskell = {
      plugin = {
        hlint = { globalOn = false }
      }
    }
  }
})


require("lvim.lsp.manager").setup("pyright", {
  settings = {
    python = {
      analysis = {
        reportOptionalSubscript = "none"
      }
    }
  }
})
