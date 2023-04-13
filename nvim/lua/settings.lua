local cmd    = vim.cmd            -- execute Vim command
local script = vim.api.nvim_exec  -- execute Vim script
local g = vim.g -- global variables
local opt = vim.opt -- global/buffer/window-scoped options

opt.colorcolumn = '80' -- разделитель на 80 символов
opt.cursorline = true -- подсветка текущей строки
opt.number = true -- включить нумерацию срок
opt.relativenumber = true -- включить относительную нумерацию строк
opt.so=999 -- курсор всегда в центре экрана
opt.splitright = true -- вертикальные сплиты становятся справа
opt.splitbelow = true -- горизонтальные сплиты становятся снизу

-- табуляция
opt.expandtab = true
opt.shiftwidth = 4 -- кол-во пробелов при сдвиге > или <
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.smartindent = true -- подстраивать новые строки под предыдущий отступ

-- clipboard
opt.clipboard = 'unnamedplus'

-- поиск
opt.hlsearch = true

-- синтаксис языков
opt.syntax = 'on'

cmd [[autocmd FileType markdown set tw=80 wrap]]

opt.browsedir = 'buffer'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.showcmd = true

opt.list = true
opt.listchars='eol:~'

