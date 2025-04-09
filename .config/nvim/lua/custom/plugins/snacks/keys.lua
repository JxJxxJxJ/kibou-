return {
  {
    '<leader>bx',
    function()
      Snacks.bufdelete()
    end,
    desc = 'Buffer delete',
    mode = 'n',
  },
  {
    '<leader>bo',
    function()
      Snacks.bufdelete.other()
    end,
    desc = 'Buffer delete other',
    mode = 'n',
  },
  {
    '<leader>bz',
    function()
      Snacks.zen()
    end,
    desc = 'Toggle Zen Mode',
    mode = 'n',
  },
  {
    '<leader>e',
    function()
      Snacks.picker.explorer()
    end,
    desc = '[E]xplore Files',
    mode = 'n',
  },
}
