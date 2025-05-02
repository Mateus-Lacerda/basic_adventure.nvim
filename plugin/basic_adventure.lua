-- auto‑carregado pelo Neovim
local game = require("basic_adventure")   -- lua/snake_game/init.lua

vim.api.nvim_create_user_command("BasicAdventure", function()
    game.start_game()
end, {
    nargs = "*",
})
