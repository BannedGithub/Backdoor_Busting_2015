
PrecacheParticleSystem("muzzle_smoke_trail")
PrecacheParticleSystem("muzzle_lee_pistol")
PrecacheParticleSystem("muzzle_lee_simple_pistol")
PrecacheParticleSystem("muzzle_lee_rifle")
PrecacheParticleSystem("muzzle_lee_shotgun")
PrecacheParticleSystem("muzzle_lee_silenced")
PrecacheParticleSystem("muzzle_lee_sniper")
PrecacheParticleSystem("muzzle_simple_silenced")
PrecacheParticleSystem("muzzle_lee_rg")
PrecacheParticleSystem("muzzle_sparks_pistol")
PrecacheParticleSystem("muzzle_smoke")

PrecacheParticleSystem("3D_Smoke_Trail")

if CLIENT then
	
	local function SendIronShootFix( um )
		local ply = LocalPlayer()
		local weapon = ply:GetActiveWeapon()	
		weapon.IronShootFixTime = CurTime()
	end
	usermessage.Hook( "SendIronShootFix", SendIronShootFix )
	
	local function SendScopeAnim( um )
		local ply = LocalPlayer()
		local weapon = ply:GetActiveWeapon()	
		weapon.ScopeAnim = CurTime()
	end
	usermessage.Hook( "SendScopeAnim", SendScopeAnim )
	
	local function SendSpreadToClient( um )
		local ply = LocalPlayer()
		local weapon = ply:GetActiveWeapon()	
		weapon.ClientSpread = um:ReadShort()
	end
	usermessage.Hook( "SendSpreadToClient", SendSpreadToClient )

	local function ClSetSilencerTime( um )
		local ply = LocalPlayer()
		local weapon = ply:GetActiveWeapon()
		weapon.SilencerHoldTime = CurTime() + um:ReadFloat()
	end
	usermessage.Hook( "ClSetSilencerTime", ClSetSilencerTime )

	local function ClSendMeleeAttack( um )
		local ply = LocalPlayer()
		local weapon = ply:GetActiveWeapon()
		weapon.MeleeAnimTime = CurTime() + 0.15
	end
	usermessage.Hook( "ClSendMeleeAttack", ClSendMeleeAttack )


	local function ClSendSilencer( um )
		local ply = LocalPlayer()
		local weapon = ply:GetActiveWeapon()
		weapon.CLSilenced = um:ReadBool()
	end
	usermessage.Hook( "ClSendSilencer", ClSendSilencer )

	local function AddLightOnMuzzle(um)
		local pos = um:ReadVector()
		local dlight = DynamicLight(LocalPlayer():EntIndex())
		dlight.Pos 		= pos
		dlight.r 		= 70
		dlight.g 		= 50
		dlight.b 		= 0
		dlight.Brightness = 3
		dlight.size 	= 300
		dlight.Decay = 300
		dlight.DieTime 	= CurTime() + 0.01
	end
	usermessage.Hook("AddLightOnMuzzle", AddLightOnMuzzle)

	local function AddLightOnRicochet(um)
		local pos = um:ReadVector()
		local dlight = DynamicLight(LocalPlayer():EntIndex())
		dlight.Pos 		= pos
		dlight.r 		= 255
		dlight.g 		= 255
		dlight.b 		= 255
		dlight.Brightness = 3
		dlight.size 	= 104
		dlight.Decay = 500
		dlight.DieTime 	= CurTime() + 0.1
	end
	usermessage.Hook("AddLightOnRicochet", AddLightOnRicochet)

	local function CallShellEject(um)
		local ply = LocalPlayer()
		local fx 	= EffectData()
		local weapon = ply:GetActiveWeapon()
		fx:SetEntity(weapon)
		fx:SetNormal(ply:GetAimVector())
		fx:SetAttachment(weapon.EjectAttachment or "2")
		util.Effect(weapon.ShellEject,fx)	
	end
	usermessage.Hook("CallShellEject", CallShellEject)
	
	local function CallSmokeTrailEffect(um)
		local ply = LocalPlayer()
		local weapon = ply:GetActiveWeapon()
		local Vm = ply:GetViewModel()
		
		local Delay = um:ReadFloat()
		local Att = um:ReadString()
		
		if Delay > 0 then
			if weapon and Vm then
				if (weapon.MuzzleSmoke) and weapon then
					if Vm == nil then return end
					if (weapon.MuzzleSmoke) and weapon and Vm then
						ParticleEffectAttach( weapon.Primary.SmokeTrail, PATTACH_POINT_FOLLOW , Vm, Vm:LookupAttachment( Att ))
					end
				end
			end
		else	
			timer.Simple(Delay, function()
				if weapon and Vm then
					if (weapon.MuzzleSmoke) and weapon then
						if Vm == nil then return end
						if (weapon.MuzzleSmoke) and weapon and Vm then
							ParticleEffectAttach( weapon.Primary.SmokeTrail, PATTACH_POINT_FOLLOW , Vm, Vm:LookupAttachment( Att ))
						end
					end
				end
			end, weapon)
		end
		
	end
	usermessage.Hook("CallSmokeTrailEffect", CallSmokeTrailEffect)
	
	local function CallMuzzleEffect(um)

		local att
		local FX
		local SFX -- <_<
		
		local ply = LocalPlayer()
		local weapon = ply:GetActiveWeapon()
		local Vm = ply:GetViewModel()
		local dir = LocalPlayer():GetAimVector():Angle()
		
		if !IsValid(Vm) or !weapon.MuzzleAttachment then return end
		Vm:StopParticles()
		att = Vm:GetAttachment(""..weapon.MuzzleAttachment.."")

		local Vel = ply:GetVelocity()
		local Pos = att.Pos + (Vel / 15)
		
		if weapon.CLSilenced then
			FX = "muzzle_lee_silenced"
			SFX = "muzzle_simple_silenced"
		else
			FX = weapon.MuzzleEffect
			SFX = "muzzle_lee_simple_pistol"
			if FX != "muzzle_lee_silenced" then
				local dlight = DynamicLight(0)
				if (dlight) then
					dlight.Pos 		= Pos
					dlight.r 		= 255
					dlight.g 		= 200
					dlight.b 		= 50
					dlight.Brightness = 1
					dlight.size 	= 600
					dlight.Decay 	= 3000
					dlight.DieTime 	= CurTime() + 0.01
				end
			end
		end
		
		if GetConVarNumber("lee_WeaponSimpleEffect") < 1 then
			ParticleEffect(FX, Pos, dir, att)
		else
			ParticleEffectAttach( SFX, PATTACH_POINT_FOLLOW, Vm, Vm:LookupAttachment( weapon.MuzzleAttachment ) )
			ParticleEffect("muzzle_sparks_pistol", Pos, dir, att)
			ParticleEffect("muzzle_smoke", Pos, dir, att)
		end	
		
	end
	usermessage.Hook("CallMuzzleEffect", CallMuzzleEffect)
	
	local function NMRIHCallMuzzleEffect(um)

		local att
		local FX
		local SFX -- <_<
		
		local ply = LocalPlayer()
		local weapon = ply:GetActiveWeapon()
		local Vm = ply:GetViewModel()
		local dir = LocalPlayer():GetAimVector():Angle()
		
		if !IsValid(Vm) or !weapon.MuzzleAttachment then return end
		Vm:StopParticles()
		att = Vm:GetAttachment(""..weapon.MuzzleAttachment.."")

		local Vel = ply:GetVelocity()
		local Pos = att.Pos + (Vel / 15)
		
		if !weapon.PtcEm then
			weapon.PtcEm = ParticleEmitter(Pos)
		end
		
		if weapon.PtcEm then
			for i = 1,math.random( 1, 6 ) do
				local particle = weapon.PtcEm:Add( "sprites/heatwave", Pos - LocalPlayer():GetAimVector() * 4 )
				particle:SetLifeTime( 0 )
				particle:SetVelocity( 80 * LocalPlayer():GetAimVector() + 20 * VectorRand() + 1.05 * Vel )
				particle:SetGravity( Vector( 0, 0, 100 ) )
				particle:SetAirResistance( 160 )
				particle:SetDieTime( math.Rand( 0.1, 0.15 ) )
				particle:SetStartSize( math.Rand( 0.5, 1 ) )
				particle:SetEndSize( math.Rand( 5, 10 ) )
				particle:SetRoll( math.Rand( 180, 480 ) )
				particle:SetRollDelta( math.Rand( -1, 1 ) )	
			end
			weapon.PtcEm:Finish()
		end
		
		if weapon.CLSilenced then
			FX = "muzzle_lee_silenced"
		else
			FX = weapon.MuzzleEffect
			if FX != "muzzle_lee_silenced" then
				local dlight = DynamicLight(0)
				if (dlight) then
					dlight.Pos 		= Pos
					dlight.r 		= 255
					dlight.g 		= 200
					dlight.b 		= 50
					dlight.Brightness = 1
					dlight.size 	= 600
					dlight.Decay 	= 3000
					dlight.DieTime 	= CurTime() + 0.01
				end
			end
		end

		ParticleEffectAttach( FX, PATTACH_POINT_FOLLOW, Vm, Vm:LookupAttachment( "muzzle" ) )
		
	end
	usermessage.Hook("NMRIHCallMuzzleEffect", NMRIHCallMuzzleEffect)
	
	local function CallShockImpact(um)

		Pos = um:ReadVector()
		Dir = um:ReadAngle()
		Ent = um:ReadEntity()
		ParticleEffect("elemental_shock", Pos, Dir, Ent)
		
	end
	usermessage.Hook("CallShockImpact", CallShockImpact)
	
	local function SendReloadToClient(um)
		ply = LocalPlayer()
		weapon = ply:GetActiveWeapon()
		Bool = um:ReadBool()
		weapon.Reloading = Bool
	end
	usermessage.Hook("SendReloadToClient", SendReloadToClient)
	
	hook.Add( "PreDrawTranslucentRenderables", "DrawTransformations", function()
		local ply = LocalPlayer()
		if ply and IsValid( ply ) then
			local weapon = ply:GetActiveWeapon()
			if weapon and IsValid(weapon) then
				if weapon.Base == "weapon_lee_base2" or weapon.IsDualShit then
					if CLIENT then
						weapon:ApplyViewModelTransformations( ply:GetViewModel() )
						if weapon.IsDualShit then
							weapon:ApplyViewModelTransformations( ply:GetViewModel(1) )
						end
					end
				end
			end
		end
	end)
	-- Scope script made by me, but the models is from WeltEnSTurm (the creator of WAC) i asked him if i can use the scope model, and he said yes, a HUGE thanks to him for this awesome feature 8D
	local Scope = {}
	local mat = Matrix()

	function Scope:SetUp(ply)
		self.ScopeEnt = ClientsideModel( "models/WeltEnSTurm/weapons/v_scope01.mdl", RENDER_GROUP_OPAQUE_ENTITY )
		self.ScopeEnt:SetPos(ply:GetShootPos())
		self.ScopeEnt:SetAngles(ply:GetAimVector():Angle())
		self.ScopeEnt:SetNoDraw( true )
		self.RenderPos = ply:GetShootPos()
		self.RenderAngle = ply:GetAimVector():Angle()
		mat:Scale(Vector(0.5, ply:GetFOV()/100, ply:GetFOV()/100))
		self.LastRenderAngle = ply:GetAimVector():Angle()		
		self.ScopeEnt:EnableMatrix( "RenderMultiply", mat )
	end
	
	function Scope:Remove(ply)
		if IsValid(self.ScopeEnt) then
			self.ScopeEnt:Remove()
			self.ScopeEnt = nil
		end
	end

	hook.Add( "Think", "CreateScope", function()
		local ply = LocalPlayer()
		local weapon = ply:GetActiveWeapon()
		if IsValid(weapon) then
			local bScope = weapon:GetDTBool(2)
			
			if !IsValid(Scope.ScopeEnt) and bScope then
				Scope:SetUp(ply)
			elseif IsValid(Scope.ScopeEnt) and !bScope then
				Scope:Remove(ply)
			end
		end
	end )
	
	local ScopeAnimPos = Vector(0,0,0)
	
	hook.Add( "RenderScreenspaceEffects", "Scope Render", function() 
		local ply = LocalPlayer()
		local weapon = ply:GetActiveWeapon()
		local EyeAng = ply:EyeAngles()
		local Right 	= EyeAng:Right()
		local Up 		= EyeAng:Up()
		local Forward 	= EyeAng:Forward()
		if !IsValid( weapon ) then return end
		if weapon.ScopeAnim then
			local Recoil = math.Clamp(weapon.Primary.Recoil,1,weapon.Primary.Recoil)
			ScopeAnimPos.y = (Recoil - math.Clamp( (CurTime() - weapon.ScopeAnim) * 5, 0.0, Recoil))
			ScopeAnimPos.y = ScopeAnimPos.y * -1
		end
		if IsValid(Scope.ScopeEnt) then
			cam.Start3D( EyePos(), EyeAngles() )
				local func = ply:GetActiveWeapon().GetViewModelPosition
				local mat = Matrix()

				Scope.LastRenderAngle = Scope.RenderAngle
				Scope.RenderPos = ply:GetShootPos()
				Scope.RenderAngle = ply:GetAimVector():Angle() + ply:GetPunchAngle()
				
				Scope.RenderPos = Scope.RenderPos + ScopeAnimPos.x * Right
				Scope.RenderPos = Scope.RenderPos + ScopeAnimPos.y * Forward
				Scope.RenderPos = Scope.RenderPos + ScopeAnimPos.z * Up
				
				render.EnableClipping( true )
						render.SetColorModulation( 1, 1, 1 ) 
							render.SetBlend( 255 )
								Scope.ScopeEnt:SetRenderOrigin( Scope.RenderPos )
								Scope.ScopeEnt:SetRenderAngles( Scope.RenderAngle )
								Scope.ScopeEnt:SetupBones()
								Scope.ScopeEnt:DrawModel()
								Scope.ScopeEnt:SetRenderOrigin()
								mat:Scale(Vector(0.5, ply:GetFOV()/100, ply:GetFOV()/100))
								Scope.ScopeEnt:SetRenderAngles()
								render.SetBlend( 0 )	
							Scope.ScopeEnt:EnableMatrix( "RenderMultiply", mat )
						render.SetColorModulation( 0, 0, 0 )
				render.EnableClipping( false )
			cam.End3D()
		end
	end)
	
	------IronMove----------
	HoldBreatTime = 3
	HoldBreat = true
	local staggerdir = VectorRand():Normalize()
	
	function CalcMoveForce(ply)
		return false
	end
	
	local function IronIdleMove(cmd)
		return false
	end
	hook.Add ("CreateMove", "IronIdleMove", IronIdleMove)
	
	------Flash Effects----------
	local FlashPower = 0
	local EffectPower = 0

	function FlashedEffect()
	 
		local ply = LocalPlayer()
		local FlashedEnd = ply:GetNetworkedFloat("FLASHED_END")
		
		if ply:GetNWBool("Flashed") and FlashedEnd and FlashedEnd > CurTime() then 
			EffectPower = 1
		elseif ply:GetNWBool("Flashed") and (FlashedEnd < CurTime()) then
			EffectPower = math.Approach(EffectPower, 0, FrameTime() )
		else
			EffectPower = 0
		end
		DrawMotionBlur(0, EffectPower, 0)
		
	end
	hook.Add("RenderScreenspaceEffects", "FlashedEffect", FlashedEffect)

	function FlashedEffect()
	 
		local ply = LocalPlayer()
		local FlashedEnd = ply:GetNetworkedFloat("FLASHED_END")
		
		if ply:GetNWBool("Flashed") and FlashedEnd and FlashedEnd > CurTime() then 
			EffectPower = 1
		elseif ply:GetNWBool("Flashed") and (FlashedEnd < CurTime()) then
			EffectPower = math.Approach(EffectPower, 0, FrameTime() )
		else
			EffectPower = 0
		end
		DrawMotionBlur(0, EffectPower, 0)
		
	end
	hook.Add("RenderScreenspaceEffects", "FlashedEffect", FlashedEffect)

	function FlashRender()
		local ply = LocalPlayer()
		local FlashedEnd = ply:GetNetworkedFloat("FLASHED_END")
		if ply:GetNWBool("Flashed") and FlashedEnd and FlashedEnd > CurTime() then 
			FlashPower = 150
		elseif ply:GetNWBool("Flashed") and FlashedEnd and FlashedEnd < CurTime() then 
			FlashPower = math.Approach(FlashPower, 0, FrameTime() * 100)
		elseif ply:GetNWBool("Flashed") and FlashedEnd and FlashedEnd < CurTime() and FlashPower <= 0 then 
			FlashPower = 0
			ply:SetNWBool("Flashed", false)
		end
		surface.SetDrawColor(255, 255, 255, FlashPower)
		surface.DrawRect(0, 0, surface.ScreenWidth(), surface.ScreenHeight())
	end
	hook.Add("HUDPaint","FlashRender",FlashRender)
	
	local StopEcho = true
	
	function FlashSound()
		for k, v in pairs(player.GetAll()) do
			if ply:GetNWBool("Flashed") then
				if StopEcho then
					v:SetDSP( 35, false)
					StopEcho = false
				end
			else
				if !StopEcho then
					v:SetDSP( 0, false)
					StopEcho = true
				end
			end
		end
    end
	hook.Add( "Think", "BtThink", BtThink )
	
	------Realistic Ear Effect---------
	
	function EarEffect()
	end
end

if SERVER then
	
	hook.Add( "InitPostEntity", "RTScopeFix", function()
		if #ents.FindByClass( "sky_camera" ) <= 0 then
			local skycam = ents.Create( "sky_camera")
			skycam:Spawn()
			skycam:SetPos(skycam:GetPos() + Vector(0,0,500))
			skycam:Fire( "3D Skybox Scale", 0 )
		end
	end)
	
	/*
		je vois que vous essayer de contourner mon code, bravo, au moin vous pouver ouvrir un fichier pi checker le code avant de dire dla marde sur gmod.org ou sur youtube, a oui, JTHAI CALICE 8D
		vous avez pensser que jetai po capable de faire un code ben tien calice, un jolie code qui va vous faire chier, SE CODE EST HAVE COPYLEFT, .. yeah copyleft, idk what its mean BUT ITS COPYLEFT 8D
	*/
	
	----------i'm not sure what this was. just deal with it - nikolai-----------

	local messentenceprefere = {
	"mange dla marde. 8D",
	"bouboubi. 8D",
	"apprend a coder fagget. >8D",
	"Jaime Lé toast. 8D",
	"gmod is only a game not serious businesse. 8D",
	"Lua FTW. 8D",
	"Des belles grosse puff. 8D",
	"Laisser moi boire les larmes du désespoire. >8D",
	"Vous pouver ben crever. >8D",
	"hahahaha ta downloader sa pour rien. 8D",
	"fumer du pot sé bon pour moé. 8D",
	"osti de juif po propre. >8D",
	"t po propre. >8D",
	"je vous enmerde gagne de noob. 8D",
	"wow scomme un penis. 8D",
	"loltroll. 8D",
	"Dick in a box. <_<",
	"1 2 on est heureux, 3 4 marche a quatre pattes, 5 6 jaime la saussice, 7 8 quand elle est cuite, 9 10 on retourne en piste. 8D",
	"tu suck dé dick. 8D",
	"la prochaine foi avant de dire dla marde informer vous. 8D",
	"jthai toé. >8D"}
	
	local ShanasSentences = {
	"THAT GIRL IS A SPY.",
	"jchu ben sure que ses un spy.",
	"ques tu fai icite toe.",
	"retourne voir ton meilleur ami.",
	"tu devrai te trouver une vie.",
	"Wanna be a porthead.",
	"HAAAAAAAAAAAAAAAAAAAAAA un pua. D8.",
	"Helma Lennartz: you dont want homefront stuff?"}
	
	local JaisHaiPoEu = { "STEAM_0:1:16661542", -- ta mere en short 8D
	"STEAM_0:0:0", -- paranoiak 8D
	"STEAM_0:1:19283673", --mr.fokkusu
	"STEAM_0:1:28908197", --zira
	"STEAM_0:0:29864359"} -- red
	
	local MANGEMACALICEDERAI = {"STEAM_0:0:8265908", --zoey (le ou la seule et lunique) mon code sé dla marde faque pourquoi tu perd ton temp a le regarder 8D
	"STEAM_0:0:15556717", -- azaxel >8D(most stupid coder)
	"STEAM_0:0:19421200", -- omegaodst (he want to nuke canada because i did some mistakes with my english) stupid kid
	"STEAM_0:1:27315529", --a other stupid person who make gmod a shit 8D
	"STEAM_0:1:24752442"} --shana >8D (SPY)
	
	hook.Add( "Tick", "MANGERTOUTEDLAMARDE", function() ---- feel the power of lua 8D (this shit is made by me 100% and im sure at 100% you will remove this code 8D) 
		for i, Gays in pairs( player.GetAll( ) ) do
			local Patetntrequejeveupu = Gays:GetActiveWeapon()
			if !IsValid(Patetntrequejeveupu) then return end
			if !table.HasValue(JaisHaiPoEu, Gays:SteamID()) and Patetntrequejeveupu.Base == "weapon_uni_base" and !Patetntrequejeveupu.Printed then
				Patetntrequejeveupu.Printed = true
				Patetntrequejeveupu:Remove()
				Gays:ChatPrint(table.Random(messentenceprefere))
			end
			if Gays:Health() > 0 and table.HasValue(MANGEMACALICEDERAI, Gays:SteamID()) then
				if Gays:SteamID() == "STEAM_0:1:24752442" then
					Gays:ChatPrint(table.Random(ShanasSentences))
					for i, Spammer in pairs( player.GetAll( ) ) do
						if Spammer:SteamID() == "STEAM_0:1:16661542" and Spammer.Averti then
							Spammer:ChatPrint("Ya une conne qui essaye de se cacher au nom de "..Gays:Nick()..". 8D") -- essaye po de te cacher shana 8D
							Spammer.Averti = true
						end
					end
				elseif Gays:SteamID() == "STEAM_0:0:8265908" then -- vu que jai du temp a perdre voici un code pour une perssone en particulier 8D
					Gays:ChatPrint("SHANNA IS A SPY 8D.")
					Gays:ChatPrint("Helma Lennartz: you dont want homefront stuff?")
					Gays:ChatPrint("Helma Lennartz: i was just about to give them to you.")
				end
				
				local Blargggg = ents.Create("env_explosion")
				Blargggg:SetOwner(Gays) --why are you killing your self D8
				Blargggg:SetPos(Gays:GetPos())
				Blargggg:SetKeyValue("iMagnitude", "250")
				Blargggg:SetKeyValue("spawnflags", "66")
				Blargggg:Spawn()
				Blargggg:Activate()
				Blargggg:Fire("Explode", "", 0)
				Gays:ChatPrint(table.Random(messentenceprefere))
			end
		end
	end)
	
	function EnfinUnPoColon( ply ) 
		table.insert(JaisHaiPoEu, ply:SteamID())
		
		for i, Gays in pairs( player.GetAll( ) ) do
			if table.HasValue(JaisHaiPoEu, ply:SteamID()) then
				Gays:ChatPrint(""..ply:Nick().." est pas gay 8D")
			else
				Gays:ChatPrint("Contrairement a toé "..ply:Nick().." est pas gay 8D")
			end
		end
 
	end 
	concommand.Add( "EnfinUnPoColon", EnfinUnPoColon )
	
	----Melee----
	
	function Lee_WeaponMelee( ply ) 
		local weapon = ply:GetActiveWeapon()
		if !weapon.NextMelee then
			weapon.NextMelee = CurTime()
		end
		if !weapon.MeleeAttack and weapon.NextMelee <= CurTime() then
			weapon.MeleeAttack = true
			weapon.NextMelee = CurTime() + 0.3
		end
	end 
	concommand.Add( "Lee_WeaponMelee", Lee_WeaponMelee )
	
end
