--[[
luci-app-filetransfer
Description: File upload / download
]]--

module("luci.controller.filetransfer", package.seeall)

function index()
	entry({"admin", "system", "filetransfer"}, cbi("updownload"), _("FileTransfer"),89)
end
