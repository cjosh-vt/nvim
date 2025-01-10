local M = {}

function M.setup()
  local whichkey = require "which-key"
  local wk = require("which-key")
  wk.add(
    {
      mode = {"n","v"}, -- NORMAL and VISUAL mode
      buffer = nil,
      silent = true,
      noremap = true,
      nowait = false,
      { "<leader>q", "<cmd>q<cr>", desc = "Quit" },
      { "<leader>w", "<cmd>w<cr>", desc = "Write" },
      { "<leader>g", group = "Git" },
      { "<leader>gs", "<Cmd>Neogit<CR>", desc = "Status" },
      { "<leader>b", group = "Beuffer" },
      { "<leader>bc", "<Cmd>bd!<Cr>", desc = "Close current buffer" },
      { "<leader>bD", "<Cmd>%bd|e#|bd#<Cr>", desc = "Delete all buffers" },
      { "<leader>z", group = "Packer" },
      { "<leader>zc", "<cmd>PackerCompile<cr>", desc = "Compile"},
      { "<leader>zi", "<cmd>PackerInstall<cr>", desc = "Install" },
      { "<leader>zs", "<cmd>PackerSync<cr>", desc = "Sync" },
      { "<leader>zS", "<cmd>PackerStatus<cr>", desc = "Status" },
      { "<leader>zu", "<cmd>PackerUpdate<cr>", desc = "Update" },
      { "<leader>f", group = "Find" },
      { "<leader>ff", "<cmd>lua require('utils.finder').find_files()<cr>", desc = "Files" },
      { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
      { "<leader>fo", "<cmd>FzfLua oldfiles<cr>", desc = "Old Files" },
      { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
      { "<leader>fc", "<cmd>FzfLua commands<cr>", desc = "Commands" },
      { "<leader>fe", "<cmd>NvimTreeToggle<cr>", desc = "Explorer" }
      })
end

return M
