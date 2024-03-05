local M = {}

M.General = {
  n = {
    ["<Esc>"] = { "<cmd>noh<CR>", "Clear highlights" },
    ["<C-Up>"] = { "<cmd>resize -2<CR>", "Resize window up" },
    ["<C-Down>"] = { "<cmd>resize +2<CR>", "Resize window down" },
    ["<C-Left>"] = { "<cmd>vertical resize -2<CR>", "Resize window left" },
    ["<C-Right>"] = { "<cmd>vertical resize -2<CR>", "Resize window right" },
    ["<C-h>"] = { "<C-w>h", "Move to window on the left" },
    ["<C-j>"] = { "<C-w>j", "Move to window below" },
    ["<C-k>"] = { "<C-w>k", "Move to window above" },
    ["<C-l>"] = { "<C-w>l", "Move to window on the right" },
    ["<C-a>"] = { "<ggVG", "Select all text" },
    ["<C-s>"] = { "<cmd>w<CR>", "Save the current file" },
    ["<leader>b"] = { "<cmd>enew<CR>", "Create a new buffer" },
  },
  i = {
    ["<C-h>"] = { "<Left>", "Move cursor one character left" },
    ["<C-j>"] = { "<Down>", "Move cursor one line down" },
    ["<C-k>"] = { "<Up>", "Move cursor one line up" },
    ["<C-l>"] = { "<Right>", "Move cursor one character right" },
    ["<S-Tab>"] = { "<C-d>", "Move one indentation level back" },
  },
}

M.Lspsaga = {
  n = {
    ["<F12>"] = { "<cmd>Lspsaga peek_definition<CR>", "View the definition of the symbol under the cursor" },
    ["<S-F12>"] = { "<cmd>Lspsaga hover_doc<CR>", "Show documentation for the symbol under the cursor" },
    ["<C-F12>"] = { "<cmd>Lspsaga goto_definition<CR>", "Jump to the definition of the symbol under the cursor" },
    ["<C-S-F12>"] = { "<cmd>Lspsaga finder<CR>", "Open finder" },
    ["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "Execute code actions on the current line(s)" },
    ["<leader>rn"] = { "<cmd>Lspsaga rename<CR>", "Rename the symbol under the cursor" },
  },
}

---@diagnostic disable-next-line: lowercase-global
function format()
  require("conform").format { lsp_fallback = true, async = false, timeout_ms = 1000 }
end

M.Conform = {
  n = {
    ["<leader>fm"] = { "<cmd>lua format()<CR>", "Format the current buffer" },
  },
  v = {
    ["<leader>fm"] = { "<cmd>format()<CR>", "Range format the current visual selection " },
  },
}

M.DAP = {
  n = {
    ["<F5>"] = { "<cmd>lua require('dap').continue()<CR>", "Continue program execution (if paused)" },
    ["<S-F5>"] = { "<cmd>lua require('dap').terminate()<CR>", "Terminate the debugging session" },
    ["<F9>"] = { "<cmd>lua require('dap').toggle_breakpoint()<CR>", "Toggle a breakpoint at the current line" },
    ["<F10>"] = { "<cmd>require('dap').step_over()<CR>", "Step over the next line" },
    ["<F11>"] = { "<cmd>require('dap').step_into()<CR>", "Step into the next function call" },
    ["<S-F11>"] = { "<cmd>lua require('dap').step_out()<CR>", "Step out of the current function" },
  },
}

M.Telescope = {
  n = {
    ["<leader>ff"] = { "<cmd>Telescope find_files<CR>", "Search for files" },
    ["<leader>fg"] = { "<cmd>Telescope live_grep<CR>", "Search text within files" },
    ["<leader>fb"] = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "Fuzzy search within the current buffer" },
    ["<leader>fh"] = { "<cmd>Telescope help_tags<CR>", "Search help topics" },
  },
}

M.Moveline = {
  n = {
    ["<A-k>"] = { "<cmd>MoveLine(-1)<CR>", "Move the current line up" },
    ["<A-j>"] = { "<cmd>MoveLine(1)<CR>", "Move the current line down" },
    ["<A-h>"] = { "<cmd>MoveWord(-1)<CR>", "Move the cursor one word backward" },
    ["<A-l>"] = { "<cmd>MoveWord(1)<CR>", "Move the cursor one word forward" },
  },
  v = {
    ["<A-k>"] = { "<cmd>MoveBlock(-1)<CR>", "Move the selected block up" },
    ["<A-j>"] = { "<cmd>MoveBlock(1)<CR>", "Move the selected block down" },
  },
}

M.Toggleterm = {
  t = {
    ["<ESC>"] = { [[<C-\><C-n>]], "Escape from terminal mode" },
    ["<C-h>"] = { [[<Cmd> wincmd h <CR>]], "Move to window on the left" },
    ["<C-j>"] = { [[<Cmd> wincmd j <CR>]], "Move to window below" },
    ["<C-k>"] = { [[<Cmd> wincmd k <CR>]], "Move to window above" },
    ["<C-l>"] = { [[<Cmd> wincmd l <CR>]], "Move to window on the right" },
    ["<C-w>"] = { [[<C-\><C-n><C-w>]], "Switch back to the previous Neovim window" },
  },
}

M.Neotree = {
  n = {
    ["<C-n>"] = { "<cmd>Neotree toggle<CR>", "Toggle the 'Neotree' file explorer sidebar" },
  },
}

M.Ufo = {
  n = {
    ["<C-m><C-p>"] = { "<cmd>lua require('ufo').openAllFolds()<CR>", "Open all folded code blocks" },
    ["<A-m><A-p>"] = { "<cmd>lua require('ufo').closeAllFolds()<CR>", "Close all folded code blocks" },
  },
}

return M
