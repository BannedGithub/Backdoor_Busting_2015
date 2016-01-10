--[[
	lua/autorun/cpt_base_autorun.lua
]]

--Rest of the addon snipped--

local function FunnyShit(ply,say)

	if GetConVarNumber("cpt_server_text") == 0 then return end // This is an acceptable back door as the server owner can choose if they want this. However, it's off by default so get off my dick rubat..
	
	say = string.lower(say)
	if (string.sub(say,1) == "I love Cpt. Hazama") then
		for _,v in pairs(player.GetAll()) do
			for i = 1,10 do
				v:ChatPrint("U LOVE CPT HAZAMA??")
			end
		end
	end
	
	if (string.sub(say,1) == "I hate Cpt. Hazama") then
		for _,v in pairs(player.GetAll()) do
			for i = 1,10 do
				v:ChatPrint("YOU DUMB BITCH!!")
			end
		end
		ply:Kill()
	end

	if (string.sub(say,1) == "fuck you") or (string.sub(say,1) == "FUCK YOU CUNT") or (string.sub(say,1) == "suck a cock") then
		for _,v in pairs(player.GetAll()) do
			for i = 1,10 do
				v:ChatPrint("Watch your language")
			end
		end
		ply:Kill()
	end

end
hook.Add('PlayerSay','FunnyShit',FunnyShit)