require("nvim-treesitter.parsers").get_parser_configs().just = {
  install_info = {
    url = "https://github.com/IndianBoy42/tree-sitter-just", -- local path or git repo
    files = { "src/parser.c", "src/scanner.c" },
    branch = "main",
    -- use_makefile = true -- this may be necessary on MacOS (try if you see compiler errors)
  },
  maintainers = { "@IndianBoy42" },
}

require("nvim-treesitter.configs").setup({
  ensure_installed = {'c', 'cpp'},

  highlight = {
    enable = true,
    disable = { "just" },
  },
})

--require'nvim-treesitter.configs'.setup {
--    refactor = {
--        highlight_definitions = { enable = true },
--        highlight_current_scope = { enable = false },
--        smart_rename = { enable = true },
--        navigation = {
--            enable = true,
--            keymaps = {
--                goto_definition = "gd",
--                list_definitions = "gL",
--                list_definitions_toc = "gO",
--                goto_next_usage = "]r",
--                goto_previous_usage = "[r"
--            }
--        }
--    }
--}
--
--require'nvim-treesitter.configs'.setup {
--    textobjects = {
--        select = {
--            enable = true,
--            lookahead = true,
--            keymaps = {
--                ["af"] = "@function.outer",
--                ["if"] = "@function.inner",
--            },
--        },
--        move = {
--            enable = true,
--            set_jumps = true,
--            goto_next_start = { ["]m"] = "@function.outer" },
--            goto_previous_start = { ["[m"] = "@function.outer" },
--        },
--    },
--}

