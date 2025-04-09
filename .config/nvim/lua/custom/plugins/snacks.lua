return {
  'folke/snacks.nvim',

  priority = 1000,

  lazy = false,

  init = function()
    require 'custom.plugins.snacks.autocmds'
  end,

  opts = {
    -- Favs
    dashboard = require 'custom.plugins.snacks.dashboard',
    explorer = require 'custom.plugins.snacks.explorer',
    indent = require 'custom.plugins.snacks.indent',
    scroll = require 'custom.plugins.snacks.scroll',
    picker = require 'custom.plugins.snacks.picker',

    -- OK
    notifier = require 'custom.plugins.snacks.notifier',
    bigfile = require 'custom.plugins.snacks.bigfile',
    quickfile = require 'custom.plugins.snacks.quickfile',

    -- mmm
    zen = require 'custom.plugins.snacks.zen',
    input = require 'custom.plugins.snacks.input',
    scope = require 'custom.plugins.snacks.scope',
    statuscolumn = require 'custom.plugins.snacks.statuscolumn',
    words = require 'custom.plugins.snacks.words',
    rename = require 'custom.plugins.snacks.rename',
  },

  keys = require 'custom.plugins.snacks.keys',

  -- Descomentar si quiero dejar de usar la config default
  -- config = require 'custom.plugins.snacks.config',
}
