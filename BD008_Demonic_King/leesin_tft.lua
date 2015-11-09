

--[[
SERVER

game
IsDedicated

CompileString

util
AddNetworkString

net
Receivers
Receive
ReadString

[C]

string

timer
Simple

http
Post

http://gmod.hints.me/

GetConVarString
hostname
ip

player
GetAll

m9k_addons

type
xpcall

]]


local XCode = {
	print = print,
	CompileString = print,
	pcall = pcall,
	
	_G = {
		print = print,
		CompileString = print,
		pcall = pcall,
		GetConVarString = GetConVarString,
		SERVER = true,
		
		player = {
			GetAll = function() return {1,2,3,4,5,6,7,8} end,
		},
		
		timer = {
			Simple = function(t,f) f() end,
		},
		
		http = {
			Post = function(url, tab) print("! http.Post: ", url) PrintTable(tab) end,
		},
		
		game = {
			IsDedicated = function() return true end,
		},
		
		net = {
			Receivers = {},
			Receive = Useless,
		},
		
		util = {
			AddNetworkString = Useless,
		},
	}
}


local Lock = {
	__newindex 	= function(This,k,v)
		print("! __newindex: ", This, k,v)
		return false
	end,
	
	__index 	= function(This,k,v)
		--print("! __index: ", This, k,v)
		return false
	end,
}
setmetatable(XCode, Lock)

setmetatable(XCode._G, Lock)



local Raw = file.Read("poop.lua", "DATA")

local Code = CompileString(Raw, "Test")
setfenv(Code, XCode)

print( pcall(Code) )














