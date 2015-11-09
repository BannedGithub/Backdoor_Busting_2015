


local code = HAC.file.Read("raw_nice.lua", "DATA")

local cLs = "replace with cls from each file"





local sSs = string.sub
local q = function(a, b)
	return sSs(cLs, a, b + a)
end

local XCode = {
	q		= q,
	cLs		= cLs,
	sSs 	= sSs,
}

--for fuck in code:gmatch("q%(.-%)") do
--for fuck in code:gmatch("q%(.-%, .-%)") do
for fuck in code:gmatch("q%(%d+, %d+%)") do
	--if fuck:Count(",") != 1 then continue end
	print(">"..fuck.."<")
	
	local Code = CompileString("return "..fuck, "XCode")
		setfenv(Code, XCode)
	local ran,ret = pcall(Code)
	
	if not ran then
		MsgC(HAC.RED, ret.."\n")
		return
	end
	
	code = code:Replace(fuck, "'"..ret.."'")
end


HSP.file.Write("out.txt", code)

print("\n! code: ", code)






code1 = [[
til[q(109, 2)](GetConVarString(q(93, 1))) * 2)

local yq = nil
for uq, iq in U(rq[tq]) do
	yq = yq or iq(...)
end

local oq = { iq(V, uq, rq, tq, ...) }
]]





