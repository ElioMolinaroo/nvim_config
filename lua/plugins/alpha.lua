return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")

		dashboard.section.header.val = {
        "                         .            .                                                      oooo       ",
        "                       .o8          .o8                                                      `888       ",
        " .oooooooo  .ooooo.  .o888oo      .o888oo  .ooooo.       oooo oooo    ooo  .ooooo.  oooo d8b  888  oooo ",
        "888' `88b  d88' `88b   888          888   d88' `88b       `88. `88.  .8'  d88' `88b `888\"\"8P  888 .8P'  ",
        "888   888  888ooo888   888          888   888   888        `88..]88..8'   888   888  888      888888.   ",
        "`88bod8P'  888    .o   888 .        888 . 888   888         `888'`888'    888   888  888      888 `88b.    .o.",
        "`8oooooo.  `Y8bod8P'   \"888\"        \"888\" `Y8bod8P'          `8'  `8'     `Y8bod8P' d888b    o888o o888o   Y8P",
        "d\"     YD                                                                                               ",
        "Y88888P'                                                                                                ",
    }

		alpha.setup(dashboard.opts)
	end,
}
