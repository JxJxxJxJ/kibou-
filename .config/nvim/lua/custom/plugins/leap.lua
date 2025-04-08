return {
  'ggandor/leap.nvim',
  config = function()
    local leap = require 'leap'

    -- Set equivalence classes y preview filter
    leap.opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }
    leap.opts.preview_filter = function(ch0, ch1, ch2)
      return not (ch1:match '%s' or ch0:match '%w' and ch1:match '%w' and ch2:match '%w')
    end

    -- Crear los mapeos por defecto
    leap.create_default_mappings()

    -- Teclas para repetir el movimiento anterior
    require('leap.user').set_repeat_keys('<enter>', '<backspace>')
  end,
}
