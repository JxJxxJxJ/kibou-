local Banners = {}

Banners.big = {
  [[     \\XXXXXX//]],
  [[      XXXXXXXX]],
  [[     //XXXXXX\\                      OOOOOOOOOOOOOOOOOOOO]],
  [[    ////XXXX\\\\                     OOOOOOOOOOOOOOOOOOOO]],
  [[   //////XX\\\\\\     |||||||||||||||OOOOOOOOOOOOOOOVVVVVVVVVVVVV]],
  [[  ////////\\\\\\\\    |!!!|||||||||||OOOOOOOOOOOOOOOOVVVVVVVVVVV]],
  [[ ////////  \\\\\\\\ .d88888b|||||||||OOOOOOOOOOOOOOOOOVVVVVVVVV]],
  [[////////    \\\\\\\d888888888b||||||||||||            'VVVVVVV']],
  [[///////      \\\\\\d88888888888||||||||||||             'VVVVV']],
  [[//////        \\\\\Y888888888Y||||||||||||              'VVV']],
  [[/////          \\\\\\Y88888Y|||||||||||||| .             'V']],
  [[////            \\\\\\|iii|||||||||||||||!:::.            ']],
  [[///              \\\\\\||||||||||||||||!:::::::.]],
  [[//                \\\\\\\\           .:::::::::::.]],
  [[/                  \\\\\\\\        .:::::::::::::::.]],
  [[                    \\\\\\\\     .:::::::::::::::::::.]],
  [[                     \\\\\\\\]],
}

Banners.small = {
  [[                                                            ]],
  [[ |     .-.                                                  ]],
  [[ |    /   \         .-.                                     ]],
  [[ |   /     \       /   \       .-.     .-.     _   _        ]],
  [[ +--/-------\-----/-----\-----/---\---/---\---/-\-/-\/\/--- ]],
  [[ | /         \   /       \   /     '-'     '-'              ]],
  [[ |/           '-'         '-'                               ]],
  [[                                                            ]],
}

local buttons = {
  { key = 'f', desc = '  Find File', action = 'Telescope find_files hidden=true' },
  { key = 'n', desc = '  New File', action = 'ene!' },
  { key = 'm', desc = '  Man Pages', action = 'Telescope man_pages sections=ALL' },
  { key = 'r', desc = '  Recent files', action = ':Telescope oldfiles' },
  { key = 't', desc = '  Find Text', action = 'Telescope live_grep' },
  { key = 'c', desc = '  Configuration', action = 'edit ' .. vim.fn.stdpath 'config' .. '/init.lua' },
  { key = 'q', desc = '  Quit', action = 'quit' },
}

return {
  'nvimdev/dashboard-nvim',
  enabled = false,
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = Banners.small,
        center = buttons,
        footer = { 'Jx' },
      },
      vertical_center = true,
    }
  end,
}
