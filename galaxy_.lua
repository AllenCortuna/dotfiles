local gl = require("galaxyline")
local condition = require("galaxyline.condition")
local gls = gl.section
gl.short_line_list = { "NeoTree", "vista", "dbui", "packer", "Telescope" }
local colors = {
	bg = "#1A1C25",
	fg = "#eeffff",
	fg_alt = "#5B6268",
	green = "#c3e88d",
	yellow = "#ffcb6b",
	blue = "#82aaff",
	red = "#f07178",
	purple = "#c792ea",
	orange = "#f78c6c",
	cyan = "#89ddff",
	gray = "#717CB4",
	magenta = "#c678dd",
}

gls.left[1] = {
	RainbowRed = {
		provider = function()
			return "▊ "
		end,
		highlight = { colors.blue, colors.bg },
	},
}
gls.left[4] = {
	FileIcon = {
		provider = "FileIcon",
		condition = condition.buffer_not_empty,
		highlight = { require("galaxyline.providers.fileinfo").get_file_icon_color, colors.bg },
	},
}

gls.left[5] = {
	FileName = {
		provider = "FileName",
		condition = condition.buffer_not_empty,
		highlight = { colors.orange, colors.bg, "bold" },
	},
}

gls.left[6] = {
	LineInfo = {
		provider = "LineColumn",
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.cyan, colors.bg },
	},
}

gls.left[7] = {
	PerCent = {
		provider = "LinePercent",
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.yellow, colors.bg, "bold" },
	},
}

gls.left[8] = {
	DiagnosticError = {
		provider = "DiagnosticError",
		icon = "  ",
		highlight = { colors.red, colors.bg },
	},
}
gls.left[9] = {
	DiagnosticWarn = {
		provider = "DiagnosticWarn",
		icon = "  ",
		highlight = { colors.yellow, colors.bg },
	},
}

gls.left[10] = {
	DiagnosticHint = {
		provider = "DiagnosticHint",
		icon = "  ",
		highlight = { colors.cyan, colors.bg },
	},
}
gls.left[11] = {
	DiagnosticInfo = {
		provider = "DiagnosticInfo",
		icon = "  ",
		highlight = { colors.blue, colors.bg },
	},
}

-- gls.mid[1] = {
--   ShowLspClient = {
--     provider = "GetLspClient",
--     condition = function()
--       local tbl = { ["dashboard"] = true, [""] = true }
--       if tbl[vim.bo.filetype] then
--         return false
--       end
--       return true
--     end,
--     icon = " LSP:",
--     highlight = { colors.cyan, colors.bg, "bold" },
--   },
-- }

gls.right[3] = {
	GitIcon = {
		provider = function()
			return "  "
		end,
		condition = condition.check_git_workspace,
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.orange, colors.bg, "bold" },
	},
}

gls.right[4] = {
	GitBranch = {
		provider = "GitBranch",
		condition = condition.check_git_workspace,
		highlight = { colors.violet, colors.bg, "bold" },
	},
}

gls.right[5] = {
	DiffAdd = {
		provider = "DiffAdd",
		-- condition = condition.hide_in_width,
		icon = "   ",
		highlight = { colors.green, colors.bg },
	},
}
gls.right[6] = {
	DiffModified = {
		provider = "DiffModified",
		-- condition = condition.hide_in_width,
		icon = "  ",
		highlight = { colors.orange, colors.bg },
	},
}
gls.right[7] = {
	DiffRemove = {
		provider = "DiffRemove",
		-- condition = condition.hide_in_width,
		icon = "  ",
		highlight = { colors.red, colors.bg },
	},
}

gls.right[8] = {
	RainbowBlue = {
		provider = function()
			return "  ▊"
		end,
		highlight = { colors.blue, colors.bg },
	},
}

-- shortline

gls.short_line_left[1] = {
	RainbowRed = {
		provider = function()
			return "▊ "
		end,
		highlight = { colors.blue, colors.bg },
	},
}

gls.short_line_left[2] = {
	FileIcon = {
		provider = "FileIcon",
		condition = condition.buffer_not_empty,
		highlight = { require("galaxyline.providers.fileinfo").get_file_icon_color, colors.bg },
	},
}

gls.short_line_left[3] = {
	SFileName = {
		provider = "SFileName",
		condition = condition.buffer_not_empty,
		highlight = { colors.fg, colors.bg, "bold" },
	},
}

gls.short_line_right[1] = {
	RainbowBlue = {
		provider = function()
			return "  ▊"
		end,
		highlight = { colors.blue, colors.bg },
	},
}
