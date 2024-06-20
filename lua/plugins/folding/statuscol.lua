return {
	"luukvbaal/statuscol.nvim",
	config = function()
		local builtin = require("statuscol.builtin")
		require("statuscol").setup({
			segments = {
				{ text = { "%s" }, click = "v:lua.ScSa" },
				{
					text = { builtin.foldfunc, " " },
					click = "v:lua.ScFa",
					maxwidth = 2,
					colwidth = 2,
					auto = true,
					wrap = true,
				},
				{
					text = { builtin.lnumfunc, "  " },
					condition = { true, builtin.not_empty },
					click = "v:lua.ScLa",
				},
			},
		})
	end,
}
