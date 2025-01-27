-- function ColorMyPencils(color)
-- 	color = color or "rose-pine-moon"
-- 	vim.cmd.colorscheme(color)
--
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
-- return {
--
--     {
--         "erikbackman/brightburn.vim",
--     },
--
--     {
--         "folke/tokyonight.nvim",
--         lazy = false,
--         opts = {},
--         config = function()
--             ColorMyPencils()
--         end
--     },
--     {
--         "ellisonleao/gruvbox.nvim",
--         name = "gruvbox",
--         config = function()
--             require("gruvbox").setup({
--                 terminal_colors = true, -- add neovim terminal colors
--                 undercurl = true,
--                 underline = false,
--                 bold = true,
--                 italic = {
--                     strings = false,
--                     emphasis = false,
--                     comments = false,
--                     operators = false,
--                     folds = false,
--                 },
--                 strikethrough = true,
--                 invert_selection = false,
--                 invert_signs = false,
--                 invert_tabline = false,
--                 invert_intend_guides = false,
--                 inverse = true, -- invert background for search, diffs, statuslines and errors
--                 contrast = "", -- can be "hard", "soft" or empty string
--                 palette_overrides = {},
--                 overrides = {},
--                 dim_inactive = false,
--                 transparent_mode = false,
--             })
--         end,
--     },
--     {
--         "folke/tokyonight.nvim",
--         config = function()
--             require("tokyonight").setup({
--                 -- your configuration comes here
--                 -- or leave it empty to use the default settings
--                 style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--                 transparent = true, -- Enable this to disable setting the background color
--                 terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--                 styles = {
--                     -- Style to be applied to different syntax groups
--                     -- Value is any valid attr-list value for `:help nvim_set_hl`
--                     comments = { italic = false },
--                     keywords = { italic = false },
--                     -- Background styles. Can be "dark", "transparent" or "normal"
--                     sidebars = "dark", -- style for sidebars, see below
--                     floats = "dark", -- style for floating windows
--                 },
--             })
--         end
--     },
--
--     {
--         "rose-pine/neovim",
--         name = "rose-pine",
--         config = function()
--             require('rose-pine').setup({
--                 disable_background = false,
--                 styles = {
--                     italic = false,
--                 },
--             })
--
--             ColorMyPencils();
--         end
--     },
--
--
-- }

-- return {
-- 	{
-- 		"vague2k/vague.nvim",
-- 		config = function()
-- 			require("vague").setup({
-- 				-- optional configuration here
-- 				transparent = true,
-- 				style = {
-- 					-- "none" is the same thing as default. But "italic" and "bold" are also valid options
-- 					boolean = "none",
-- 					number = "none",
-- 					float = "none",
-- 					error = "none",
-- 					comments = "none",
-- 					conditionals = "none",
-- 					functions = "none",
-- 					headings = "bold",
-- 					operators = "none",
-- 					strings = "none",
-- 					variables = "none",
--
-- 					-- keywords
-- 					keywords = "none",
-- 					keyword_return = "none",
-- 					keywords_loop = "none",
-- 					keywords_label = "none",
-- 					keywords_exception = "none",
--
-- 					-- builtin
-- 					builtin_constants = "none",
-- 					builtin_functions = "none",
-- 					builtin_types = "none",
-- 					builtin_variables = "none",
-- 				},
-- 				colors = {
-- 					func = "#bc96b0",
-- 					keyword = "#787bab",
-- 					-- string = "#d4bd98",
-- 					string = "#8a739a",
-- 					-- string = "#f2e6ff",
-- 					-- number = "#f2e6ff",
-- 					-- string = "#d8d5b1",
-- 					number = "#8f729e",
-- 					-- type = "#dcaed7",
-- 				},
-- 			})
-- 		end,
-- 	},
-- 	{
-- 		"jnurmine/Zenburn",
-- 	},
-- 	{
-- 		"RRethy/base16-nvim",
-- 	},
-- }
return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,    -- Load during startup (not lazy-loaded)
        priority = 1000, -- Ensure it loads before other plugins
        config = function()
            require("kanagawa").setup({
                compile = false,  -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false,   -- do not set background color
                dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = {             -- add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                theme = "wave",    -- Load "wave" theme when 'background' option is not set
                background = {     -- map the value of 'background' option to a theme
                    dark = "wave", -- try "dragon" !
                    light = "lotus"
                },
            })
            -- Apply the colorscheme
            vim.cmd("colorscheme kanagawa")
        end,
    }
}
