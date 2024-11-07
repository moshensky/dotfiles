return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Configure sessions. Works in tandem with mini.starter
    --
    --
    local function close_neo_tree()
      vim.cmd 'Neotree close'
    end

    local function open_neo_tree()
      vim.cmd 'Neotree'
    end

    require('mini.sessions').setup {
      autoread = false,
      directory = '~/.local/share/nvim/session', -- for global sessions
      file = '', -- disable local sessions
      hooks = {
        pre = {
          write = close_neo_tree,
        },
        -- post = {
        --   read = open_neo_tree,
        -- },
      },
    }

    local starter = require 'mini.starter'
    starter.setup {

      evaluate_single = true,
      items = {
        -- Use this if you set up 'mini.sessions'
        starter.sections.sessions(),
        starter.sections.recent_files(10, false),
        starter.sections.recent_files(10, true),
      },
      content_hooks = {
        starter.gen_hook.adding_bullet(),
        starter.gen_hook.indexing('all', { 'Builtin actions' }),
        starter.gen_hook.padding(3, 2),
      },
    }

    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    -- Simple and easy statusline.
    --  You could remove this setup call if you don't like it,
    --  and try some other statusline plugin
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font }

    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end

    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim
  end,
}
