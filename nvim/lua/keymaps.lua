-- источник: https://habr.com/ru/post/586808/

local map = vim.api.nvim_set_keymap
local default_opt = {noremap=true, silent=true}

-- системный буфер обмена Shift+Y
map('v', '<S-Y>', '"+y', {})
-- переключение вкладок с помощью TAB или Shift+TAB
map('n', '<S-Tab>', ':BufferLineCycleNext<CR>', default_opt)

-- включение и отключение панели NERDTree
map('n', '<C-n>', ':NERDTreeToggle<CR>', {})
