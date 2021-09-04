AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/mailer/wow_characters/wowanim_c_deathwing.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 1400000000
--ENT.MovementType = VJ_MOVETYPE_AERIAL
--ENT.HullType = HULL_LARGE
ENT.MoveType = VJ_MOVETYPE_GROUND--used for the drakes
ENT.HullType = HULL_HUMAN--used for the drakes
ENT.VJ_IsHugeMonster = true -- Is this a huge monster?
--ACT_DIESIMPLE
--ACT_GMOD_GESTURE_AGREE--maybe
--ACT_HL2MP_IDLE_KNIFE--head is down
--ACT_HL2MP_WALK_CROUCH_AR2 --breath attacks
--ACT_HL2MP_WALK_CROUCH
--ACT_HL2MP_RUN --normal standing alexstrasza
--ACT_GMOD_NOCLIP_LAYER-- this is the dragon flying animation alexstrasza
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"Absorber Dragon"} -- NPCs with the same class will be friendly to each other | Combine: CLASS_COMBINE, Zombie: CLASS_ZOMBIE, Antlions = CLASS_ANTLION
ENT.Aerial_ShouldBeFlying = true
ENT.Aerial_FlyingSpeed_Calm = 98 -- The speed it should fly with, when it's wandering, moving slowly, etc. | Basically walking campared to ground SNPCs
ENT.Aerial_FlyingSpeed_Alerted = 98
ENT.DisableChasingEnemy = false
ENT.FindEnemy_UseSphere = true
ENT.HasDeathAnimation = true 
ENT.FadeCorpse = true -- Fades the ragdoll on death
ENT.FadeCorpseTime = 1.4
ENT.DeathAnimationTime = 5
ENT.AnimTbl_Death = {"L11c_die"}
ENT.Aerial_AnimTbl_Alerted = {"combatidle_1"}
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.HasRangeAttack = false
ENT.RangeToMeleeDistance = 530 
ENT.AllowIgnition = false -- Can this SNPC be set on fire?

ENT.HasExtraMeleeAttackSounds = true -- Set to true to use the extra melee attack sounds
ENT.HasSoundTrack = true -- Currently disabled for workshop version of VjBase
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Idle = {"paokai/paokai_hail0.wav","paokai/paokai_hail1.wav","paokai/paokai_hail2.wav","paokai/paokai_striking0.wav","paokai/paokai_striking1.wav","paokai/paokai_striking2.wav"}
ENT.SoundTbl_CombatIdle = {"paokai/paokai_hail0.wav","paokai/paokai_hail1.wav","paokai/paokai_hail2.wav","paokai/paokai_striking0.wav","paokai/paokai_striking1.wav","paokai/paokai_striking2.wav"}
ENT.SoundTbl_Alert = {"paokai/paokai_threat0.wav","paokai/paokai_threat1.wav","paokai/paokai_threat2.wav"}
ENT.SoundTbl_Breath = {"paokai/paokai_wings03.wav"}
ENT.SoundTbl_MeleeAttack = {"paokai/paokai_attack_tail02.wav","paokai/paokai_attack_tail03.wav"}
ENT.SoundTbl_BeforeRangeAttack = {"paokai/paokai_ouch0.wav","paokai/paokai_ouch1.wav","paokai/paokai_ouch2.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"paokai/paokai_attack_tail02.wav","paokai/paokai_attack_tail03.wav"} 
ENT.SoundTbl_Pain = {"paokai/paokai_ouch0.wav","paokai/paokai_ouch1.wav","paokai/paokai_ouch2.wav"}
ENT.SoundTbl_Death = {"paokai/paokai_dying0.wav","paokai/undead_dying1.wav"}
ENT.SoundTbl_SoundTrack = {"paokai/l12_bonedragonboss_loop.wav"}

ENT.AnimTbl_IdleStand = {ACT_HL2MP_RUN}

ENT.AnimTbl_Walk = {ACT_HL2MP_RUN} -- Set the walking animations | Put multiple to let the base pick a random animation when it moves
ENT.AnimTbl_Run = {ACT_HL2MP_RUN} -- Set the running animations | Put multiple to let the base pick a random animation when it moves
--ENT.Aerial_AnimTbl_Calm = {ACT_RUN_PASSIVE} -- Animations it plays when it's wandering around while idle
ENT.Aerial_AnimTbl_Alerted = {ACT_GMOD_TAUNT_LAUGH}
--ENT.AnimTbl_MeleeAttack = {ACT_GMOD_TAUNT_LAUGH} -- Melee Attack Animations

ENT.NextSoundTime_Breath1 = 2.7
ENT.NextSoundTime_Breath2 = 2.7
ENT.BreathSoundLevel = 160
ENT.IdleSoundLevel = 160
ENT.CombatIdleSoundLevel = 160
ENT.MeleeAttackSoundLevel = 120
ENT.MeleeAttackMissSoundLevel = 120
ENT.DeathSoundLevel = 160
ENT.PainSoundLevel = 160
ENT.AlertSoundLevel = 160

ENT.SightDistance = 20000 -- How far it can see
-------Custom
ENT.ShockT = 0
ENT.ShockGo = false

ENT.HasLeapAttack = true
ENT.LeapAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the leap attack animation?
ENT.LeapAttackAnimationDecreaseLengthAmount = 0.2
ENT.AnimTbl_LeapAttack = {ACT_GMOD_NOCLIP_LAYER}
ENT.LeapAttackAnimationDelay = 0
ENT.LeapDistance = 25700-- The distance of the leap, for example if it is set to 500, when the SNPC is 500 Unit away, it will jump
ENT.LeapToMeleeDistance = 3600 -- How close does it have to be until it uses melee?
ENT.TimeUntilLeapAttackDamage = 0 -- How much time until it runs the leap damage code?
ENT.NextLeapAttackTime =  10-- How much time until it can use a leap attack?
ENT.LeapAttackVelocityForward = 1000 -- How much forward force should it apply?
ENT.LeapAttackVelocityUp = 2000 -- How much upward force should it apply?
ENT.LeapAttackVelocityRight = 0 -- How much right force should it apply?
ENT.LeapAttackDamage = 235500

ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_IfVisible = true -- Should it only face the enemy if it's visible?

ENT.iceability = false

ENT.blastability = false
ENT.energyability = false
ENT.dissolveability = false
ENT.shockability = false
ENT.sonicability = false
ENT.poisonability = false
ENT.directability = false

----------------------------------------------------------------
function ENT:CustomOnInitialize()
self:SetModelScale(15)
--self:SetColor( Color( 33, 255, 0, 255 ) )
--self:SetMaterial("models/XQM/LightLinesRed_tool")--mute'S DRAGON
--self:SetMaterial("dw_materials/vortexes/70s/1970")--rc's'S DRAGON
--self:SetMaterial("dw_materials/vortexes/newseries/2009r")--rc's mabye
--self:SetMaterial("models/wireframe")--nova's dragon
--self:SetCollisionBounds(Vector(130, 130, 250), -Vector(130, 130, 170))
	/*local effect = ents.Create("info_particle_system")
	effect:SetKeyValue("effect_name","explosion_huge_g")
	effect:SetPos(self:GetPos()+ self:GetUp()*50 +self:GetRight()*50)
	effect:SetParent(self)
	effect:SetAngles(self:GetAngles())
	effect:Spawn()
	effect:Activate()
	effect:Fire("Start","",0)*/
end
------------------------------------------------------------
ENT.att2 = false
function ENT:CustomOnThink_AIEnabled()
if self:GetEnemy() != nil then
if self:GetPos():Distance(self:GetEnemy():GetPos()) < 4000 then
if self.att2 == false then
self.att2 = true

	local attack = math.random(0,9)

	if attack == 0 && self:GetPos():Distance(self:GetEnemy():GetPos()) < 1500 then
		self:VJ_ACT_PLAYACTIVITY("ACT_DIESIMPLE",true,3.2833333202865,false)
		VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
		
		timer.Simple(2.5,function() if IsValid(self) then
		
		ParticleEffect("explosion_huge_g",self:GetPos()+self:GetForward()*250,Angle(0,0,0),nil)
		ParticleEffect("explosion_huge_h",self:GetPos()+self:GetForward()*500,Angle(0,0,0),nil)
		ParticleEffect("explosion_huge_j",self:GetPos()+self:GetForward()*1000,Angle(0,0,0),nil)
		ParticleEffect("Weapon_Combine_Ion_Cannon_Explosion_f",self:GetPos()+500,Angle(0,0,0),nil)
		ParticleEffect("explosion_huge_h",self:GetPos()+self:GetForward()*250,Angle(0,0,0),nil)
		ParticleEffect("explosion_huge_j",self:GetPos()+self:GetForward()*500,Angle(0,0,0),nil)
		ParticleEffect("Weapon_Combine_Ion_Cannon_Explosion_f",self:GetPos()+500,Angle(0,0,0),nil)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		
		util.VJ_SphereDamage(self,self,self:GetPos(),1500,math.random(586000,760000),DMG_CLUB,true,true)
		end end)
		
		timer.Simple(3,function() if IsValid(self) then
			self:VJ_ACT_PLAYACTIVITY("ACT_HL2MP_RUN",true,3.2833333202865,false)
	
		end end)

	elseif attack == 1 && self.blastability == true then
	
		self:VJ_ACT_PLAYACTIVITY("ACT_GMOD_GESTURE_AGREE",true,3.2833333202865,false)
		
		VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
		
		for x=1, 50 do
			local attackposition = self:GetPos()+ self:GetUp()*math.random(0,4500) + self:GetForward()*math.random(-4500,4500) +self:GetRight() *math.random(-4500,4500) 
			
			timer.Simple(math.Rand(0,4),function() if IsValid(self) then
			util.VJ_SphereDamage(self,self, attackposition ,1000,math.random(80000,100000),DMG_BLAST,true,true)
			ParticleEffect("explosion_huge_g",attackposition,Angle(0,0,0),nil)
			ParticleEffect("explosion_huge_h",attackposition,Angle(0,0,0),nil)
			ParticleEffect("explosion_huge_j",attackposition,Angle(0,0,0),nil)
			ParticleEffect("Weapon_Combine_Ion_Cannon_Explosion_f",attackposition,Angle(0,0,0),nil)
			ParticleEffect("explosion_huge_h",attackposition,Angle(0,0,0),nil)
			ParticleEffect("explosion_huge_j",attackposition,Angle(0,0,0),nil)
			ParticleEffect("Weapon_Combine_Ion_Cannon_Explosion_f",attackposition,Angle(0,0,0),nil)
			VJ_EmitSound(self,"ani/bom2.wav",160,160)
			VJ_EmitSound(self,"ani/bom2.wav",160,160)
			VJ_EmitSound(self,"ani/bom2.wav",160,160)
			VJ_EmitSound(self,"ani/bom2.wav",160,160)
			end end)
			
		end
		
		timer.Simple(5.5,function() if IsValid(self) then
			self:VJ_ACT_PLAYACTIVITY("ACT_HL2MP_RUN",true,3.2833333202865,false)
	
		end end)
		
	elseif attack == 2 && self.shockability == true then
	
		self:VJ_ACT_PLAYACTIVITY("ACT_GMOD_GESTURE_AGREE",true,3.2833333202865,false)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
		
		timer.Simple(2,function() if IsValid(self) then
			
			ParticleEffectAttach("skill_blast",PATTACH_POINT_FOLLOW,self,1)
			util.VJ_SphereDamage(self,self,self:GetPos() ,5000,math.random(786000,860000),DMG_SHOCK,true,true)
		end end)
		

		timer.Simple(3,function() if IsValid(self) then
			self:VJ_ACT_PLAYACTIVITY("ACT_HL2MP_RUN",true,3.2833333202865,false)
	
		end end)
	
	elseif attack == 3 && self.sonicability == true then
		self:VJ_ACT_PLAYACTIVITY("ACT_GMOD_GESTURE_AGREE",true,3.2833333202865,false)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","rollwind")
		effect:SetPos(self:GetPos()+ self:GetForward()*500)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",0)
		effect:Fire("Kill","",1)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","rollwind")
		effect:SetPos(self:GetPos()+ self:GetForward()*1000)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",.5)
		effect:Fire("Kill","",1.5)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","rollwind")
		effect:SetPos(self:GetPos()+ self:GetForward()*1500)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",1)
		effect:Fire("Kill","",2)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","rollwind")
		effect:SetPos(self:GetPos()+ self:GetForward()*2000)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",1.5)
		effect:Fire("Kill","",2.5)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","rollwind")
		effect:SetPos(self:GetPos()+ self:GetForward()*2500)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",2)
		effect:Fire("Kill","",3)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","rollwind")
		effect:SetPos(self:GetPos()+ self:GetForward()*3000)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",2.5)
		effect:Fire("Kill","",3.5)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","rollwind")
		effect:SetPos(self:GetPos()+ self:GetForward()*3500)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",3)
		effect:Fire("Kill","",4)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","rollwind")
		effect:SetPos(self:GetPos()+ self:GetForward()*4000)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",3.5)
		effect:Fire("Kill","",4.5)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","rollwind")
		effect:SetPos(self:GetPos()+ self:GetForward()*4500)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",4)
		effect:Fire("Kill","",5)
		
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","rollwind")
		effect:SetPos(self:GetPos()+ self:GetForward()*5000)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",4.5)
		effect:Fire("Kill","",5.5)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","rollwind")
		effect:SetPos(self:GetPos()+ self:GetForward()*5500)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",5)
		effect:Fire("Kill","",6)
		
		timer.Simple(0,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*500 ,800,math.random(586000,660000),DMG_SONIC,true,true)
		end end)
		timer.Simple(.5,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*1000 ,800,math.random(586000,660000),DMG_SONIC,true,true)
		end end)
		timer.Simple(1,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*1500 ,800,math.random(586000,660000),DMG_SONIC,true,true)
		end end)
		timer.Simple(1.5,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*2000 ,800,math.random(586000,660000),DMG_SONIC,true,true)
		end end)
		timer.Simple(2,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*2500 ,800,math.random(586000,660000),DMG_SONIC,true,true)
		end end)
		timer.Simple(2.5,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*3000 ,800,math.random(586000,660000),DMG_SONIC,true,true)
		end end)
		timer.Simple(3,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*3500 ,800,math.random(586000,660000),DMG_SONIC,true,true)
		end end)
		timer.Simple(3.5,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*4000 ,800,math.random(586000,660000),DMG_SONIC,true,true)
		end end)
		timer.Simple(4,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*4500 ,800,math.random(586000,660000),DMG_SONIC,true,true)
		end end)
		timer.Simple(4.5,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*5000 ,800,math.random(586000,660000),DMG_SONIC,true,true)
		end end)
		timer.Simple(5,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*5500 ,800,math.random(586000,660000),DMG_SONIC,true,true)
		end end)
		
		timer.Simple(3.5,function() if IsValid(self) then
			self:VJ_ACT_PLAYACTIVITY("ACT_HL2MP_RUN",true,3.2833333202865,false)
	
		end end)
	
	elseif attack == 4 && self.energyability == true then
		
	
	elseif attack == 5 && self.dissolveability == true then
		
	
	elseif attack == 6 && self.directability == true then
	
		self.HasRangeAttack = true
		self.RangeDistance = 20000
		self.RangeToMeleeDistance = 4000 -- How close does it have to be until it uses melee?
		self.RangeAttackEntityToSpawn = "obj_darkball_absober_dragon" -- The entity that is spawned when range attacking
		self.TimeUntilRangeAttackProjectileRelease = 1.2 -- How much time until the projectile code is ran?
		self.NextAnyAttackTime_Range = 0.7 -- How much time until it can use a range attack?
		self.NextRangeAttackTime = 5 -- How much time until it can use a range attack?
		self.RangeAttackExtraTimers = {}
		self.NextAnyAttackTime_Range = false -- How much time until it can use any attack again? | Counted in Seconds
		self.NextAnyAttackTime_Range_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
		self.RangeAttackReps = 1 -- How many times does it run the projectile code?
		self.RangeAttackExtraTimers = {/* Ex: 1,1.4 */} -- Extra range attack timers | it will run the projectile code after the given amount of seconds
		self.RangeUseAttachmentForPos = false -- Should the projectile spawn on a attachment?
		self.RangeUseAttachmentForPosID = "muzzle" -- The attachment used on the range attack if RangeUseAttachmentForPos is set to true
		self.RangeAttackPos_Up = 500 -- Up/Down spawning position for range attack
		self.RangeAttackPos_Forward = 500 -- Forward/Backward spawning position for range attack

	
	elseif attack == 7 && self.poisonability == true then
		
		
	elseif 	attack == 8 && self.iceability == true then
		
		
	else
	
	self:VJ_ACT_PLAYACTIVITY("ACT_GMOD_GESTURE_AGREE",true,3.2833333202865,false)
	
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
			VJ_EmitSound(self,"dragon/dragon_voice_07.wav",99,60)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*1500 +self:GetRight()*1500)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",1)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*1500 +self:GetRight()*-1500)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",1)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*-1500 +self:GetRight()*1500)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",1)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*-1500 +self:GetRight()*-1500)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",1)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*3000 +self:GetRight()*3000)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",2)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*3000 +self:GetRight()*-3000)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",2)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*-3000 +self:GetRight()*3000)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",2)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*-3000 +self:GetRight()*-3000)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",2)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*4500 +self:GetRight()*4500)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",3)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*4500 +self:GetRight()*-4500)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",3)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*-4500 +self:GetRight()*4500)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",3)
		
		local effect = ents.Create("info_particle_system")
		effect:SetKeyValue("effect_name","attackfire")
		effect:SetPos(self:GetPos()+ self:GetForward()*-4500 +self:GetRight()*-4500)
		effect:SetParent(self)
		effect:SetAngles(self:GetAngles())
		effect:Spawn()
		effect:Activate()
		effect:Fire("Start","",3)
		
		timer.Simple(1,function() if IsValid(self) then
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*1500 +self:GetRight()*1500 ,2000,math.random(286000,360000),DMG_BURN,true,true)
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*-1500 +self:GetRight()*1500 ,2000,math.random(286000,360000),DMG_BURN,true,true)
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*1500 +self:GetRight()*-1500 ,2000,math.random(286000,360000),DMG_BURN,true,true)
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*-1500 +self:GetRight()*-1500 ,2000,math.random(286000,360000),DMG_BURN,true,true)
		end end)
		
		timer.Simple(2,function() if IsValid(self) then
			VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*3000 +self:GetRight()*3000 ,2000,math.random(286000,360000),DMG_BURN,true,true)
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*-3000 +self:GetRight()*3000 ,2000,math.random(286000,360000),DMG_BURN,true,true)
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*-000 +self:GetRight()*-3000 ,2000,math.random(286000,360000),DMG_BURN,true,true)
			util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*-3000 +self:GetRight()*-3000 ,2000,math.random(286000,360000),DMG_BURN,true,true)
		end end)
		
		timer.Simple(3,function() if IsValid(self) then
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		VJ_EmitSound(self,"ani/bom2.wav",160,160)
		util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*4500 +self:GetRight()*4500 ,2000,math.random(286000,360000),DMG_BURN,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*-4500 +self:GetRight()*4500 ,2000,math.random(286000,360000),DMG_BURN,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*4500 +self:GetRight()*-4500 ,2000,math.random(286000,360000),DMG_BURN,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+ self:GetForward()*-4500 +self:GetRight()*-4500 ,2000,math.random(286000,360000),DMG_BURN,true,true)
		end end)
		
		timer.Simple(3.5,function() if IsValid(self) then
			self:VJ_ACT_PLAYACTIVITY("ACT_HL2MP_RUN",true,3.2833333202865,false)
	
		end end)
	end




timer.Simple(15,function() if IsValid(self) then self.att2 = false  end end)

end
end
end
end


	---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_BeforeImmuneChecks(dmginfo)


	local panis = dmginfo:GetDamageType()
	if panis == DMG_BLAST then
		self.blastability = true
		dmginfo:ScaleDamage(0.5)
		
	elseif panis == DMG_SHOCK then
		self.shockability = true
		dmginfo:ScaleDamage(0.5)
	
	elseif panis == DMG_SONIC then
		self.sonicability = true
		dmginfo:ScaleDamage(0.5)
	
	elseif panis == DMG_PLASMA || panis == DMG_ENERGYBEAM then
		self.energyability = true
		dmginfo:ScaleDamage(0.5)
	
	elseif panis == DMG_DISSOLVE then
		self.dissolveability = true
		dmginfo:ScaleDamage(0.5)
	
	elseif panis == DMG_DIRECT then
		self.directability = true
		dmginfo:ScaleDamage(0.5)
	
	elseif panis == DMG_POISON then
		self.poisonability = true
		dmginfo:ScaleDamage(0.5)
		
	elseif 	panis == DMG_RADIATION then
		self.iceability = true
		dmginfo:ScaleDamage(0.5)
		
	else
		dmginfo:ScaleDamage(0.8)
	end


end
/*-----------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/