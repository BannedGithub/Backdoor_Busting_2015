



local Names = {
	"Epic",
	"Death",
	"Kill",
	"Melon",
	"Boner",
	"Trouser",
	"Big",
	"Ultimate",
	"Trouble",
	"Build",
	"365",
	"Addons",
	"No",
	"RDM",
	"DarkRP",
	"Stanley's",
}

local Tags = {
	"No Lag",
	"12yo Admin",
	"Inf. Cash",
	"SERIOUS",
	"RDM",
	"DONATE",
	"GUNZ",
}





function Bang()
	local Maps = {
		"ttt_minecraft.bsp",
		"ttt_minecraft_v2.bsp",
		"ttt_minecraft_fixed.bsp",
		"cs_office_unlimited_oc.bsp",
		"de_dust2_unlimited.bsp",
		"de_nuke.bsp",
		"de_dust2.bsp",
		"de_dust.bsp",
		"de_scud_pro_beta.bsp",
		"fy_highrise_09.bsp",
		"gta_arsondale.bsp",
		"sh_cobalt.bsp",
		"sh_nuked.bsp",
		"ttt_"..HAC.RandomString():lower()..".bsp",
		"ttt_"..HAC.RandomString():lower()..".bsp",
		"ttt_"..HAC.RandomString():lower()..".bsp",
		"ttt_"..HAC.RandomString():lower()..".bsp",
		"ttt_"..HAC.RandomString():lower().."_v"..math.random(1,5)..".bsp",
		"ttt_"..HAC.RandomString():lower().."_v"..math.random(1,5)..".bsp",
		"ttt_"..HAC.RandomString():lower().."_v_"..math.random(1,5)..".bsp",
		"ttt_"..HAC.RandomString():lower().."_v_"..math.random(1,5)..".bsp",
		"ttt_"..HAC.RandomString():lower().."_v_"..math.random(1,5)..".bsp",
		"ttt_"..HAC.RandomString():lower().."_v_"..math.random(1,5)..".bsp",
	}
	local RPMaps = {
		"rp_downtown.bsp",
		"rp_downtown_v4c.bsp",
		"rp_downtown_22.bsp",
		"rp_downtown_special.bsp",
		"rp_downtown_pkill.bsp",
		"rp_downtown_v_2.bsp",
		"rp_downtown_xmas.bsp",
		"rp_"..HAC.RandomString():lower()..".bsp",
		"rp_"..HAC.RandomString():lower()..".bsp",
		"rp_"..HAC.RandomString():lower()..".bsp",
		"rp_"..HAC.RandomString():lower()..".bsp",
		"rp_"..HAC.RandomString():lower()..".bsp",
		"rp_"..HAC.RandomString():lower()..".bsp",
		"rp_"..HAC.RandomString():lower()..".bsp",
		"rp_"..HAC.RandomString():lower().."_v_"..math.random(1,5)..".bsp",
		"rp_"..HAC.RandomString():lower().."_v_"..math.random(1,5)..".bsp",
		"rp_"..HAC.RandomString():lower().."_v_"..math.random(1,5)..".bsp",
		"rp_"..HAC.RandomString():lower().."_v"..math.random(1,5)..".bsp",
		"rp_"..HAC.RandomString():lower().."_v"..math.random(1,5)..".bsp",
		"rp_"..HAC.RandomString():lower().."_v"..math.random(1,5)..".bsp",
		"rp_"..HAC.RandomString():lower().."_v"..math.random(1,5)..".bsp",
		"rp_"..HAC.RandomString():lower().."_v"..math.random(1,5)..".bsp",
	}
	
	
	
	local Name = ""
	for i=1,math.random(3,6) do
		Name = Name.." "..table.Random(Names)
	end
	
	Name = (utilx.OneIn(1) and "["..table.Random(Tags).."]" or "")..Name
	Name = Name.." "..(utilx.OneIn(3) and "" or "["..(utilx.OneIn(1) and table.Random(Tags) or table.Random(Names)).."]")
	Name = Name:Trim()
	
	local IsRP = Name:lower():find("rp")
	local Game = IsRP and "DarkRP 2."..math.random(0,9).."."..math.random(0,9) or (utilx.OneIn(1) and "Sandbox" or "Trouble In Terrorist Town")
	
	local Tot = math.random(0,33)
	local Max = math.random(12,50)
	if Tot > Max then Tot = Max - 1 end
	
	local Map = IsRP and table.RandomEx(RPMaps) or table.RandomEx(Maps)
	
	local Fuck1 = {
		server_name 	= Name,
		map 			= Map,
		gamemodename 	= Game,
		server_ip 		= math.random(1,244).."."..math.random(1,244).."."..math.random(1,244).."."..math.random(1,244),
		serverport		= utilx.OneIn(3) and "27016" or "27015"
		server_rcon		= utilx.OneIn(3) and HAC.RandomString() or "No rcon"
		serverpass 		= utilx.OneIn(5) and table.RandomEx(HSP.ChatFilter.Abbreviations).what or "",
		currentplayers 	= tostring(Tot),
		maxplayers 		= tostring(Max),
		infector 		= "Third Person Controller",
		infector_ver 	= "3.3",
	}
	HAC.file.Append("fuck3.txt", "\n"..table.ToString(Fuck1) )
	
	HTTP({
		url = "http://thisisreallylegit.appspot.com/gmodaddoncounter_post",
		method = "post",
		parameters = Fuck1,
		failed = function(error)
			
		end,
		success = function(code, body, headers)
			
		end
	})
end

timer.Create("LOL", 10, 0, Bang)

concommand.Add("bang", function()
	print("! one bang")
	Bang()
end)















