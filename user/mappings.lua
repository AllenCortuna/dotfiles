-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
    -- ["<leader>bD"] = {
    --   function()
    --     require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
    --   end,
    --   desc = "Pick to close",
    -- },
return {
  -- first key is the mode
  n = {
    ["<leader>C"] = false,
    ["<leader>e"] = false,
    ["<leader>n"] = false,
    ["<leader>o"] = false,
    
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader><leader>"] = { "<cmd>w!<cr>", desc = "Save" },
    ["<leader>n"] = { "<cmd>SessionManager load_current_dir_session<cr>", desc = "./session" },
    ["<F5>"] = { "<cmd>Neotree toggle<cr>", desc = "Neotree" },
    ["c"] = { "dd", desc = "cut line" },
    ["z"] = {"v",desc= "visual"},
    ["dk"] = { "d'k", desc = "cut mark" },
    ["yk"] = { "y'k", desc = "copy mark" },
    ["o"] = { "ojk", desc = "" },
    ["O"] = { "Ojk", desc = "" },
    ["<F4>"] = { "<cmd>bd<cr>", desc = "" },
    ["<tab>"] = { "<cmd>Telescope find_files<cr>", desc = "" },
    ["<leader>o"] = { "<cmd>AerialToggle<cr>", desc = "Code Summary" },
    -- rename  
    ["<leader>ra"] = { ":%s///g<left><left>", desc = "rename all" },
    ["<leader>rc"] = { ":%s///gc<left><left><left>", desc = "rename confirm" },
    ["<leader>rl"] = { ":s///g<left><left>", desc = "rename line" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = " Buffers" },
    ["<leader>r"] = { name = " Rename" },
    ["<leader>p"] = { name = " Packages" },
    ["<leader>f"] = { name = " Find" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
