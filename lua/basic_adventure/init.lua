local M = {}

-----------------------------------------------------------------------
-- LOCAL PATH HELPERS -------------------------------------------------
-----------------------------------------------------------------------
local function runtime_file(path)
    local files = vim.api.nvim_get_runtime_file(path, false)
    return (#files > 0) and files[1] or nil
end

local game_path = runtime_file("python3/main.py")
assert(game_path, "python3/basic_adventure/main.py not found in runtimepath")

-- dirname that works on all OS
local game_dir = vim.fn.fnamemodify(game_path, ":h")

-----------------------------------------------------------------------
-- FLOATING TERMINAL --------------------------------------------------
-----------------------------------------------------------------------
local function create_floating_terminal()
    local buf         = vim.api.nvim_create_buf(false, true)

    local cols, lines = vim.o.columns, vim.o.lines
    local width       = math.floor(cols)
    local height      = math.floor(lines )
    local row         = math.floor((lines - height) / 2)
    local col         = math.floor((cols - width) / 2)

    local win         = vim.api.nvim_open_win(buf, true, {
        relative = "editor",
        width    = width,
        height   = height,
        row      = row,
        col      = col,
        style    = "minimal",
        border   = "rounded",
    })

    vim.api.nvim_set_current_win(win)

    -- agora garantido: game_dir é um diretório válido
    vim.fn.jobstart({ "python3", game_path }, {
        cwd  = game_dir,
        term = true,
    })

    vim.cmd("startinsert")
    vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = buf, silent = true })
end

-----------------------------------------------------------------------
-- CONFIG -------------------------------------------------------------
-----------------------------------------------------------------------
function M.start_game()
    create_floating_terminal()
end

return M
