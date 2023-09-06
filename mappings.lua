-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>j"] = { name = "Custom" },
    ["<leader>ja"] = {
      function() require("harpoon.mark").add_file() end,
      desc = "Add file to harpoon",
    },
    ["<leader>je"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
      desc = "Toggle quick menu",
    },
    ["<leader>j1"] = {
      function() require("harpoon.ui").nav_file(1) end,
      desc = "Go to harpoon mark 1",
    },
    ["<leader>j2"] = {
      function() require("harpoon.ui").nav_file(2) end,
      desc = "Go to harpoon mark 2",
    },
    ["<leader>j3"] = {
      function() require("harpoon.ui").nav_file(3) end,
      desc = "Go to harpoon mark 3",
    },
    ["<leader>j4"] = {
      function() require("harpoon.ui").nav_file(4) end,
      desc = "Go to harpoon mark 4",
    },
    ["<leader>ju"] = {
      ":UndotreeToggle<cr>",
      desc = "Toggle undotree",
    },

    -- Allows cursor in place when using "J"
    J = "mzJ`z",
    -- Keep cursor in middle during D and U
    ["<C-d>"] = "<C-d>zz",
    ["<C-u>"] = "<C-u>zz",
    -- Keep cursor in middle during n and N
    n = "nzzzv",
    N = "Nzzzv",
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    -- enables move selected line / block up and down
    K = { ":m '<-2<CR>gv=gv" },
    J = { ":m '>+1<CR>gv=gv" },
  },
  x = {
    -- Paste and DONT copy selection
    ["<leader>jp"] = { "_dP" },
  },
}
