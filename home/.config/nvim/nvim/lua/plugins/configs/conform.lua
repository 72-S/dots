return {
	"stevearc/conform.nvim",
	opts = {
		formatters = {
			xmllint = {
				command = "xmllint",
				args = { "--format", "-" },
				stdin = true,
			},
			tidy = {
				command = "tidy",
				args = { "--tidy-mark", "no", "-quiet", "-indent", "-wrap", "0", "-indent-spaces", "4" },
				stdin = true,
			},
			google_java_format = {
				command = "google-java-format",
				args = { "-" },
				stdin = true,
			},
			rustfmt = {
				command = "rustfmt",
				args = { "--emit=stdout", "--edition=2021", "--config", "tab_spaces=4" },
				stdin = true,
			},
		},

		formatters_by_ft = {
			lua = { "stylua" },
			json = { "jq" },
			html = { { "prettierd", "prettier", "tidy" } },
			css = { { "prettierd", "prettier", "tidy" } },
			xhtml = { "xmllint", "tidy" },
			xml = { "xmllint" },
			xsd = { "xmllint" },
			javascript = { { "prettierd", "prettier" } },
			java = { "google_java_format" },
			rust = { "rustfmt" },
		},
	},
}