--[[
 静态ARP绑定 Luci页面 Controller
]]--

module("luci.controller.arpbind", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/arpbind") then
		return
	end
	entry({"admin", "network", "arpbind"}, cbi("arpbind"), _("IP/MAC Binding"), 45).dependent = true
end
