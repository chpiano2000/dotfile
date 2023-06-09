local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end


mason.setup()

mason_lspconfig.setup({
  -- list of servers for mason to install
	ensure_installed = {
    "pyright",
    "jedi_language_server",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true,
})
