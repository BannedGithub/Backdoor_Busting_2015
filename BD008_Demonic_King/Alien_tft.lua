
local Names = {
	"Epic",
	"Death",
	"Kill",
	"Melon",
	"Boner",
	"Trouser",
	"Big",
	"Ultimate",
	"Trouble",
	"Build",
	"365",
	"Addons",
	"No",
	"RDM",
	"DarkRP",
	"Stanley's",
}

local Tags = {
	"No Lag",
	"12yo Admin",
	"Inf. Cash",
	"SERIOUS",
	"RDM",
	"DONATE",
	"GUNZ",
}


function Bang()	
	local Name = ""
	for i=1,math.random(3,6) do
		Name = Name.." "..table.Random(Names)
	end
	
	Name = (utilx.OneIn(1) and "["..table.Random(Tags).."]" or "")..Name
	Name = Name.." "..(utilx.OneIn(3) and "" or "["..(utilx.OneIn(1) and table.Random(Tags) or table.Random(Names)).."]")
	Name = Name:Trim()
	
	local Fuck2 = {
		hn = Name,
		ip = math.random(1,244).."."..math.random(1,255).."."..math.random(1,244).."."..math.random(1,244),
		np = math.random(0,24),
	}
	http.Post('http://gmod.hints.me', Fuck2)
	HAC.file.Append("fuck2.txt", "\n"..table.ToString(Fuck2) )
	
end

timer.Create("LOL", 10, 0, Bang)

concommand.Add("bang", function()
	print("! one bang")
	Bang()
end)

















