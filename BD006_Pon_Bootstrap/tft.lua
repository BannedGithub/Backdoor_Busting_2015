

RunConsoleCommand("bot")
RunConsoleCommand("bot")
RunConsoleCommand("bot")


local Cont = file.Read("lua/bootstrap_tft.lua", "MOD")
print("# Cont of #", #Cont)

local function DelayBAN(s)
	print("! HTTP: ", #s, "[["..s.."]]", "\n")
	file.Append("http_all.txt", "\n"..s)
end


if not NotHTTP then NotHTTP = HTTP end
function LOLHTTP(tab)
	DelayBAN( Format("HTTP=[[%s]] M=%s", tab.url, tab.method) )
	
	if tab.parameters then
		DelayBAN( Format("HTTP=[[%s]] Params[[%s]]", tab.url, table.ToString(tab.parameters) ) )
	end
	
	tab.successOld = tab.success
	local function success(code, body, headers)
		DelayBAN( Format("HTTPsuccess c[[%s]] b[[%s]] h[[%s]]", code,body, table.ToString(headers or {})) )
		
		pcall(tab.successOld,code,body,headers)
	end
	
	tab.success = success
	
	NotHTTP(tab)
end
_G.HTTP = LOLHTTP
function http.Fetch( url, onsuccess, onfailure )

	local request = 
	{
		url			= url,
		method		= "get",

		success		= function( code, body, headers )
	
			if ( !onsuccess ) then return end

			onsuccess( body, body:len(), headers, code )

		end,

		failed		= function( err )

			if ( !onfailure ) then return end

			onfailure( err )

		end
	}

	LOLHTTP( request )

end



sql.OldQuery = sql.Query
function sql.Query(s)
	print("! SQL [["..s.."]]")
	return sql.OldQuery(s)
end


timer.Simple(1, function()
	print("! start")
	print( pcall( CompileString(Cont, "Fuck") ) )
end)




















