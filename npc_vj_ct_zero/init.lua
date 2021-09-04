AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2017 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/Star_Wars_JFO_Inquisitor_[Putzbrigade].mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 580000
ENT.HullType = HULL_HUMAN
ENT.MoveType = MOVETYPE_STEP
ENT.DropWeaponOnDeath = false -- Should it drop its weapon on death?

---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"ZERO"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.FootStepTimeRun = 0.27 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.47 -- Next foot step sound when it is walking
ENT.SightAngle = 95
ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_IfVisible = true -- Should it only face the enemy if it's visible?
ENT.LastSeenEnemyTimeUntilReset = 35
ENT.HasCallForHelpAnimation = false
ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_IfVisible = true -- Should it only face the enemy if it's visible?
ENT.ConstantlyFaceEnemy_IfAttacking = true -- Should it face the enemy when attacking?
ENT.ConstantlyFaceEnemy_Postures = "Both" -- "Both" = Moving or standing | "Moving" = Only when moving | "Standing" = Only when standing
ENT.ConstantlyFaceEnemyDistance = 4000 -- How close does it have to be until it starts to face the enemy?
-- Melee Attack ---------------------------------------------------------------------------------------------------------------------------------------------
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = 10000
ENT.MeleeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.MeleeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the melee attack animation?
ENT.MeleeAttackAnimationDecreaseLengthAmount = 0.2 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.MeleeAttackDistance = 65 -- How close does it have to be until it attacks?
ENT.MeleeAttackAngleRadius = 100 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
ENT.MeleeAttackDamageDistance = 60 -- How far does the damage go?
ENT.MeleeAttackDamageAngleRadius = 100 -- What is the damage angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
ENT.TimeUntilMeleeAttackDamage = 0 -- This counted in seconds | This calculates the time until it hits something
ENT.NextAnyAttackTime_Melee = 1 -- How much time until it can use any attack again? | Counted in Seconds
ENT.TimeUntilMeleeAttackDamage = 0.7 -- This counted in seconds | This calculates the time until it hits something
ENT.HasMeleeAttackKnockBack = true -- If true, it will cause a knockback to its self.enemy
ENT.MeleeAttackKnockBack_Forward1 = math.random(100,350) -- How far it will push you forward | First in math.random
ENT.MeleeAttackKnockBack_Forward2 = math.random(100,350) -- How far it will push you forward | Second in math.random
ENT.MeleeAttackKnockBack_Up1 = math.random(70,200) -- How far it will push you up | First in math.random
ENT.MeleeAttackKnockBack_Up2 = math.random(70,200) -- How far it will push you up | Second in math.random
ENT.MeleeAttackKnockBack_Right1 =  math.random(-80,80)  -- How far it will push you right | First in math.random
ENT.MeleeAttackKnockBack_Right2 = math.random(-80,80) -- How far it will push you right | Second in math.random
------ Range Attack Variables --------------------------------------------------------------------------------------------------------------------------------
ENT.HasRangeAttack = true -- Should the SNPC have a range attack?
ENT.RangeAttackEntityToSpawn = "obj_zero_fireball_soler" -- The entity that is spawned when range attacking
	-- ====== Animation Variables ====== --
ENT.AnimTbl_RangeAttack = {"pushplayer"} -- Range Attack Animations
ENT.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.RangeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the range attack animation?
ENT.RangeAttackAnimationDecreaseLengthAmount = 0.1 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.RangeAttackAnimationStopMovement = true -- Should it stop moving when performing a range attack?
	-- ====== Distance Variables ====== --
ENT.RangeDistance = 1750 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 400 -- How close does it have to be until it uses melee?
ENT.RangeAttackAngleRadius = 180 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
	-- ====== Timer Variables ====== --
	-- To use event-based attacks, set this to false:
ENT.TimeUntilRangeAttackProjectileRelease = 0 -- How much time until the projectile code is ran?
ENT.NextRangeAttackTime = math.random(3, 4) -- How much time until it can use a range attack?
ENT.RangeAttackReps = 1 -- How many times does it run the projectile code?
	-- ====== Projectile Spawn Position Variables ====== --
ENT.RangeUseAttachmentForPos = true -- Should the projectile spawn on a attachment?
ENT.RangeUseAttachmentForPosID = "anim_attachment_RH" -- The attachment used on the range attack if RangeUseAttachmentForPos is set to true
ENT.RangeAttackPos_Up = 0 -- Up/Down spawning position for range attack
ENT.RangeAttackPos_Forward = 0 -- Forward/ Backward spawning position for range attack
ENT.RangeAttackPos_Right = 0 -- Right/Left spawning position for range attack
-- Miscellaneous ---------------------------------------------------------------------------------------------------------------------------------------------	
ENT.AnimTbl_IdleStand = {ACT_HL2MP_IDLE_MELEE2} -- The idle animation when AI is enabled  ACT_HL2MP_IDLE_MELEE2
ENT.AnimTbl_Walk = {ACT_WALK_AIM_PISTOL} -- Set the walking animations | Put multiple to let the base pick a random animation when it moves
ENT.AnimTbl_Run = {ACT_RUN_AIM_PISTOL} -- Set the running animations | Put multiple to let the base pick a random animation when it moves
ENT.AnimTbl_MeleeAttack = {"Swing","thrust","melee_gunhit","range_melee2_1"} -- Melee Attack Animations
-- ====== Other Variables ====== --
ENT.RunAwayOnUnknownDamage = true -- Should run away on damage
ENT.HasLeapAttack = true -- Should the SNPC have a leap attack?
ENT.AnimTbl_LeapAttack = {"jump_melee2"} -- Melee Attack Animations
ENT.LeapAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the leap attack animation?
ENT.LeapDistance = 10000 -- The distance of the leap, for example if it is set to 500, when the SNPC is 500 Unit away, it will jump
ENT.LeapToMeleeDistance = 200 -- How close does it have to be until it uses melee?
ENT.LeapAttackVelocityForward = 170 -- How much forward force should it apply?
ENT.LeapAttackVelocityUp = 200 -- How much upward force should it apply?
ENT.LeapAttackVelocityRight = 0 -- How much right force should it apply?
ENT.LeapAttackDamage = 5000
ENT.LeapAttackDamageDistance = 250 -- How far does the damage go?
ENT.LeapAttackDamageType = DMG_SLASH -- Type of Damage
ENT.TimeUntilLeapAttackDamage = 0 -- How much time until it runs the leap damage code?
ENT.NextLeapAttackTime = 1 -- How much time until it can use a leap attack?
ENT.LeapAttackAnimationDecreaseLengthAmount = 0.5 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
	-- ====== Digital Signal Processor Variables ====== --
ENT.HasMeleeAttackDSPSound = false -- Applies a DSP (Digital Signal Processor) to the player(s) that got hit
	-- ====== Sound File Paths ====== --
ENT.SoundTbl_FootStep = {"step/footstep1.mp3","step/footstep2.mp3","step/footstep3.mp3","step/footstep4.mp3","step/footstep5.mp3"}
ENT.SoundTbl_Breath = {"lightsabers/idle1.mp3"}
ENT.SoundTbl_MeleeAttack = {"lightsabers/impact1.mp3","lightsabers/impact2.mp3","lightsabers/impact3.mp3","lightsabers/impact4.mp3","lightsabers/impact5.mp3","lightsabers/impact6.mp3","lightsabers/impact7.mp3","lightsabers/saber_hit-01.mp3","lightsabers/saber_hit-02.mp3","lightsabers/saber_hit-03.mp3","lightsabers/saber_hit-04.mp3"}
ENT.SoundTbl_MeleeAttackMiss = {"lightsabers/swing1.mp3","lightsabers/swing2.mp3","lightsabers/swing3.mp3","lightsabers/swing4.mp3","lightsabers/swing5.mp3","lightsabers/swing6.mp3","lightsabers/swing7.mp3","lightsabers/swing8.mp3","lightsabers/swing9.mp3","lightsabers/swing10.mp3","lightsabers/swing11.mp3","lightsabers/swing12.mp3","lightsabers/swing13.mp3","lightsabers/swing14.mp3","lightsabers/swing15.mp3"}
ENT.NextSoundTime_Breath_BaseDecide = false -- Let the base decide the next sound time, if it can't it will use the numbers below
ENT.MeleeAttackSoundPitch1 = 100
ENT.MeleeAttackSoundPitch2 = 100
ENT.ExtraMeleeSoundPitch1 = 100
ENT.ExtraMeleeSoundPitch2 = 100
ENT.MeleeAttackMissSoundPitch1 = 100
ENT.MeleeAttackMissSoundPitch2 = 100
ENT.GeneralSoundPitch1 = 100
ENT.GeneralSoundPitch2 = 100
ENT.NextSoundTime_Breath1 = 5.15
ENT.NextSoundTime_Breath2 = 5.15

----Credit to Panzer Elite for the advance SNPC coding below. Slightly modified and used only for the purpose of this addon.----

ENT.IdleSounds_PlayOnAttacks = true -- It will be able to continue and play idle sounds when it performs an attack
ENT.IdleSounds_NoRegularIdleOnAlerted = true -- if set to true, it will not play the regular idle sound table if the combat idle sound table is empty
ENT.Weapon_TimeSinceLastShot = 0
ENT.SoundTbl_LightsaberBlock = {"lightsabers/deflect1.mp3","lightsabers/deflect2.mp3","lightsabers/deflect3.mp3","lightsabers/deflect4.mp3","lightsabers/deflect5.mp3","lightsabers/deflect6.mp3","lightsabers/deflect7.mp3","lightsabers/deflect8.mp3","lightsabers/deflect9.mp3","lightsabers/deflect10.mp3","lightsabers/deflect11.mp3","lightsabers/deflect12.mp3","lightsabers/deflect13.mp3","lightsabers/deflect14.mp3","lightsabers/deflect15.mp3","lightsabers/deflect16.mp3","lightsabers/deflect17.mp3","lightsabers/deflect18.mp3","lightsabers/deflect19.mp3","lightsabers/deflect20.mp3","lightsabers/deflect1.mp3","lightsabers/deflect21.mp3","lightsabers/deflect1.mp3","lightsabers/deflect22.mp3",}

ENT.CanLightsaberBlock = true
ENT.LightsaberBlock_NextT = 0
ENT.LightsaberBlock_Nexttime = 0.08
ENT.LightsaberBlock_resetT = 0
ENT.LightsaberBlock_resettime = 0.4
ENT.LightsaberBlock_soundT = 0
ENT.LightsaberBlock_soundtime = 0.2
ENT.LightsaberBlock_activated = 0
ENT.LightsaberBlock_posing = 0
ENT.LightsaberBlock_PosCenter = Vector(23,-0.6,50) -- -5z
ENT.LightsaberBlock_PosUR = Vector(23,-7.35,61) --minus 0.5y
ENT.LightsaberBlock_PosUL = Vector(23,8.0,62)
ENT.LightsaberBlock_PosDR = Vector(23,-6.07,29)
ENT.LightsaberBlock_PosDL = Vector(23,6.1,29)
ENT.LightsaberBlock_Angle = 180
ENT.LightsaberBlock_Range = 6000

ENT.CanLightsaberSpin = true
ENT.LightsaberSpin_NextT = 0
ENT.LightsaberSpin_Nexttime = 0.5
ENT.LightsaberSpin_recharge = 3.1
ENT.LightsaberSpin_durationT = 0
ENT.LightsaberSpin_duration = 1.2
ENT.LightsaberSpin_activated = 0
ENT.LightsaberSpin_Range = 160
ENT.LightsaberSpin_AttackRange = 180
ENT.LightsaberSpin_AttackRadius = 150
ENT.LightsaberSpin_Damage = 5700
ENT.LightsaberSpin_anim = "vjseq_lowcover_aim_pistol"
ENT.LightsaberSpin_Chance = 3
ENT.LightsaberSpin_posing = 0
ENT.LightsaberSpin_attackT = 0
ENT.LightsaberSpin_attacktime = 0.25
ENT.LightsaberSpin_VelFor = 60
ENT.LightsaberSpin_oldmovtype = VJ_MOVETYPE_GROUND
ENT.LightsaberSpin_oldturn = false
ENT.LightsaberSpin_faceenemy = true
ENT.LightsaberSpin_posepara = true
ENT.LightsaberSpin_meleeface = true

ENT.HasLightsaber = 1
ENT.LightsaberModel = "models/c_pickaxe.mdl"

ENT.CanLightsaberThrow = true
ENT.LightsaberThrow_NextT = 0
ENT.LightsaberThrow_Nexttime = 2
ENT.LightsaberThrow_recharge = 5
ENT.LightsaberThrow_rangemax = 1000
ENT.LightsaberThrow_rangemin = 160
ENT.LightsaberThrow_attackradius = 75
ENT.LightsaberThrow_damage = 5700
ENT.LightsaberThrow_anim = "vjseq_Swing"
ENT.LightsaberThrow_Chance = 4
ENT.LightsaberThrow_durationT = 0
ENT.LightsaberThrow_duration = 6.5
ENT.LightsaberThrow_activated = 0
ENT.LightsaberThrow_VelFor = 1200
ENT.LightsaberThrow_Entity = NULL
ENT.LightsaberThrow_chosenrange = 0
ENT.LightsaberThrow_originalmovetype = VJ_MOVETYPE_GROUND
ENT.LightsaberThrow_originalturn = false
ENT.LightsaberThrow_throwpos = Vector(58,-4,49)
ENT.LightsaberThrow_targetpos = Vector(0,0,0)

ENT.CanLightsaberJump = true
ENT.LightsaberJump_NextT = 0
ENT.LightsaberJump_Nexttime = 2
ENT.LightsaberJump_recharge = 3.6
ENT.LightsaberJump_durationT = 0
ENT.LightsaberJump_duration = 5.2
ENT.LightsaberJump_activated = 0
ENT.LightsaberJump_Range = 600
ENT.LightsaberJump_RangeHigh = 60
ENT.LightsaberJump_Height = 260
ENT.LightsaberJump_AttackRange = 180
ENT.LightsaberJump_AttackRadius = 180
ENT.LightsaberJump_Damage = 5700
ENT.LightsaberJump_anim = "vjseq_lowcover_aim_pistol"
ENT.LightsaberJump_Chance = 5
ENT.LightsaberJump_posing = 0
ENT.LightsaberJump_attackT = 0
ENT.LightsaberJump_attacktime = 0.1
ENT.LightsaberJump_VelFor = 650
ENT.LightsaberJump_VelUp = 60
ENT.LightsaberJump_oldmovtype = VJ_MOVETYPE_GROUND
ENT.LightsaberJump_oldturn = false
ENT.LightsaberJump_faceenemy = true
ENT.LightsaberJump_posepara = true
ENT.LightsaberJump_meleeface = true
ENT.LightsaberJump_oldgravity = 1
ENT.LightsaberJump_originalfriction = 1
ENT.LightsaberJump_forcejump = 0

ENT.CanRegenHealth = true
ENT.RegenHealth_wait = 6
ENT.RegenHealth_NextT = 0
ENT.RegenHealth_healwait = 0.01
ENT.RegenHealth_heal = 2

function ENT:CustomOnInitialize()
self:SetBodygroup(1,2)
self:SetBodygroup(2,2)
self:SetBodygroup(3,1)
self:SetBodygroup(4,1)
self:SetBodygroup(6,1)
self:SetBodygroup(7,1)
self:SetBodygroup(8,1)
			self.ExtraGunModel1 = ents.Create("prop_physics")
			self.ExtraGunModel1:SetSkin( 4 )
			self.ExtraGunModel1:SetModel(self.LightsaberModel) 
			self.ExtraGunModel1:SetLocalPos(self:GetPos())
			//self.ExtraGunModel1:SetPos(self:GetPos())
			self.ExtraGunModel1:SetOwner(self)
			self.ExtraGunModel1:SetParent(self)
			--self.ExtraGunModel1:SetLocalAngles(Angle(-120,45,90))
			//self.ExtraGunModel1:Fire("SetParentAttachmentMaintainOffset","anim_attachment_LH")
			self.ExtraGunModel1:Fire("SetParentAttachment","anim_attachment_head")
			self.ExtraGunModel1:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
			self.ExtraGunModel1:Spawn()
			self.ExtraGunModel1:Activate()
			self.ExtraGunModel1:SetSolid(SOLID_NONE)
			self.ExtraGunModel1:AddEffects(EF_BONEMERGE)
			self:DeleteOnRemove(self.ExtraGunModel1)
			
			
			--ParticleEffectAttach("elc_strong_fire",PATTACH_POINT_FOLLOW,self,3)
			--ParticleEffectAttach("elc_strong_fire_base",PATTACH_POINT_FOLLOW,self,3)
			
			
end

function ENT:CustomOnMeleeAttack_BeforeChecks()

	if self.HasSounds == false or self.HasMeleeAttackSounds == false then return end
	local randomattacksound = 1
	local soundtbl = self.SoundTbl_Lightsaber
	--if CustomTbl != nil && #CustomTbl != 0 then soundtbl = CustomTbl end
	if randomattacksound == 1 && VJ_PICKRANDOMTABLE(soundtbl) != false then
		if self.IdleSounds_PlayOnAttacks == false then VJ_STOPSOUND(self.CurrentIdleSound) end
		self.NextIdleSoundT_RegularChange = CurTime() + 1
		self.CurrentMeleeAttackSound = VJ_CreateSound(self,soundtbl,self.MeleeAttackSoundLevel,self:VJ_DecideSoundPitch(self.MeleeAttackSoundPitch1,self.MeleeAttackSoundPitch2))
   end

end

function ENT:CustomManipulateBone(ent,bonename,ang)

	if IsValid(ent) and bonename != nil and ang != nil then
		local id = ent:LookupBone( bonename )
		local newang = Angle(ang.y,ang.p,ang.r)
		if id != nil then 
			ent:ManipulateBoneAngles( id, ang ) 
		end
	end
	
end

function ENT:CustomOnThink()
if self:Health() < 580000 then
self:SetHealth(self:Health()+ math.random(50,70),0,580000) 
end
	if self:IsMoving() == true then
		self:SetArrivalActivity(VJ_PICKRANDOMTABLE(self.AnimTbl_IdleStand))
	end
	
	if (self.LightsaberBlock_resetT < CurTime() or (self:GetActivity() != VJ_PICKRANDOMTABLE(self.AnimTbl_IdleStand) and self:GetActivity() != VJ_PICKRANDOMTABLE(self.AnimTbl_Walk) and self:GetActivity() != VJ_PICKRANDOMTABLE(self.AnimTbl_Run) )) and self.LightsaberBlock_posing == 1 then
		self.LightsaberBlock_posing = 0
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_UpperArm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Forearm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Hand",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_UpperArm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Forearm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Hand",Angle(0,0,0))			
	end
	
	
	
end
ENT.att = false
ENT.att1 = false
ENT.att3 = false
ENT.att4 = false
ENT.ShockT = 0
ENT.ShockGo = false
function ENT:CustomOnThink_AIEnabled() 



if self:GetEnemy() != nil then
if self:Health() <= 13000000 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) < 450 then
if self.att4 == false then
if !IsValid(self.scanner1) && !IsValid(self.scanner2) then
self.att4 = true

self.GodMode = true
self:EmitSound("blake/weapons/slashsword" .. math.random(1,7) .. ".wav", 90, 100, 1)
for x=1, 5 do
self.scanner1 = ents.Create("obj_zero_lightening")
self.scanner1:SetPos(self:GetPos() +self:GetUp()*math.random(45,50) +self:GetForward()*15 +self:GetRight()*math.random(-5,5))
self.scanner1:SetAngles(self:GetAngles())
self.scanner1:Spawn()
self.scanner1:SetParent(self)
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 
util.VJ_SphereDamage(self,self,self:GetPos(),550,math.random(5000,5500),DMG_SHOCK,true,true)
end

timer.Simple(2,function() if IsValid(self) then
						self.macheteslash = false
						self.GodMode = false
						end end)




timer.Simple(math.random(4,6),function() if IsValid(self) then self.att4 = false end end)
end
end
end
end
end



if self:GetEnemy() != nil then
if self:Health() <= 13000000 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) > 50 then
if self.att == false then
if !IsValid(self.scanner2) then
self.att = true



if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_zero_fireball")
self.scanner2:SetPos(self:GetPos()+ self:GetUp()*60 +self:GetForward()*50)
self.scanner2:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner2:GetPos())):Angle())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end







timer.Simple(math.random(5,8),function() if IsValid(self) then self.att = false end end)
end
end
end
end
end



if self:GetEnemy() != nil then
if self:Health() <= 13000000 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) > 0 and self:GetPos():Distance(self:GetEnemy():GetPos()) < 2500 then
if self.att1 == false then
if !IsValid(self.scanner3) then
self.att1 = true


for x=1, 100 do
self.scanner3 = ents.Create("obj_zero_fireball_solerrain")
self.scanner3:SetPos(self:GetPos() +self:GetUp()*math.random(1000,3000) +self:GetForward()*math.random(-1000,2000) +self:GetRight()*math.random(-1500,1500))
self.scanner3:SetAngles(self:GetAngles())
self.scanner3:Spawn()
self.scanner3:Activate()
self.scanner3:SetOwner(self)
self:DeleteOnRemove(self.scanner3) 
end






timer.Simple(math.random(8,10),function() if IsValid(self) then self.att1 = false end end)
end
end
end
end
end



if self:GetEnemy() != nil  then

if self:GetPos():Distance(self:GetEnemy():GetPos()) < 3000 then
if self.att3 == false then
self.att3 = true
timer.Simple(math.random(20,30),function() if IsValid(self) then

self:VJ_ACT_PLAYACTIVITY("pushplayer",true,3.3,false)
	local effect = ents.Create("info_particle_system")
	effect:SetKeyValue("effect_name","elahan_fire")
	effect:SetPos(self:GetPos()+self:GetUp()*50)
	effect:SetParent(self)
	effect:SetAngles(self:GetAngles())
	effect:Spawn()
	effect:Activate()
	effect:Fire("Start","",0)
	effect:Fire("Kill","",3)
	
timer.Simple(0,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(0.2,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(0.4,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(0.6,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(0.8,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(1.0,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(1.2,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(1.4,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(1.6,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(1.8,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(2,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(2.2,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(2.4,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(2.6,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(2.8,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)

timer.Simple(3,function() if IsValid(self) then
util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(10746,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2500,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(7546,10856),DMG_BURN,true,true)
util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3500,500,math.random(7546,10856),DMG_BURN,true,true)

end end)


self.att3 = false
end end)
end
end 
end


if self.Dead == false then
if self:GetEnemy() != nil then
if self:Health() > 0 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) < 7700 then
if CurTime() > self.ShockT && self.ShockGo == false && self.MeleeAttacking == false && self.RangeAttacking == false then
self.ShockGo = true
local dark = self:GetEnemy() 
local posfive = dark:LocalToWorld(Vector(math.random(10,10),math.random(10,10),0) + self:GetUp()*0)

	timer.Simple(0,function() if IsValid(self) && IsValid(dark) then util.VJ_SphereDamage(self,self,posfive,600,15000,DMG_BURN,true,true) end end)
	timer.Simple(0,function() if IsValid(self) && IsValid(dark) then 
	ParticleEffect("zecallion_jump_attack",posfive,Angle(0,0,0),nil)

    VJ_EmitSound(self,"ani/bom2.wav",160,160) end end)
	self.ShockGo = false
	self.ShockT = CurTime() + math.random(14,18)	
	end
	end
end
end
end


	if self.Dead == true then return end
	
	
	if self.CanRegenHealth == true and GetConVarNumber("vj_advance_snpc_canheal") == 1 and self:GetMaxHealth() != nil and self:Health() != nil then 
	if CurTime() > self.RegenHealth_NextT and self:GetMaxHealth() > self:Health() then
	
	self.RegenHealth_NextT = CurTime() + self.RegenHealth_healwait
	self:SetHealth(math.Clamp(self:Health() + self.RegenHealth_heal,self:Health(),self:GetMaxHealth()))
	
	end
	end
	 
	
	
	if self.CanLightsaberSpin == true then
	
	if self.LightsaberSpin_activated == 1 then
	
		self:SetAngles( self:GetAngles() + Angle(0,95,0) )
		
		if self.LightsaberSpin_attackT < CurTime() then 
			self.LightsaberSpin_attackT = CurTime() + self.LightsaberSpin_attacktime
			
				local IsPropAttack = false
				--if self.MeleeAttack_DoingPropAttack == true then IsPropAttack = true end
				local MyEnemy = self:GetEnemy()
				local AttackDist = self.LightsaberSpin_AttackRange
				--if self.MeleeAttackAnimationFaceEnemy == true && self.MeleeAttack_DoingPropAttack == false then self:FaceCertainEntity(MyEnemy,true) end
				self:CustomOnMeleeAttack_BeforeChecks()
				local FindEnts = ents.FindInSphere(self:GetPos() + self:GetForward(), AttackDist)
				local hitentity = false
				local HasHitGoodProp = false
				if FindEnts != nil then
				for _,v in pairs(FindEnts) do
					if (self.VJ_IsBeingControlled == true && self.VJ_TheControllerBullseye == v) or (v:IsPlayer() && v.IsControlingNPC == true) then continue end
					if (v != self && v:GetClass() != self:GetClass()) && (((v:IsNPC() or (v:IsPlayer() && v:Alive())) && (self:Disposition(v) != D_LI)) or VJ_IsProp(v) == true or v:GetClass() == "func_breakable_surf" or VJ_HasValue(self.EntitiesToDestroyClass,v:GetClass()) or v.VJ_AddEntityToSNPCAttackList == true) then
						if (self:GetForward():Dot((v:GetPos() -self:GetPos()):GetNormalized()) > math.cos(math.rad(self.LightsaberSpin_AttackRadius))) then
							if IsPropAttack == true && (v:IsPlayer() or v:IsNPC()) then
								--if self:VJ_GetNearestPointToEntityDistance(v) > self.LightsaberSpin_AttackRange then continue end
							end
					if VJ_IsProp(v) == true then
						local phys = v:GetPhysicsObject()
						if phys:IsValid() && phys != nil && phys != NULL then
					
							--if self:PushOrAttackPropsCode({IsSingleValue=v,CustomMeleeDistance=AttackDist}) then
								HasHitGoodProp = true
								phys:EnableMotion(true)

								phys:Wake()

								constraint.RemoveConstraints(v,"Weld") 
								if self.PushProps == true then
									local phys = v:GetPhysicsObject()
									if MyEnemy != nil then
										local posfor = phys:GetMass() * 700
										local posup = phys:GetMass() * 200
										phys:ApplyForceCenter(MyEnemy:GetPos()+self:GetForward() *posfor +self:GetUp()*posup)
									end
								end
							--end
						end
					end
					self:CustomOnMeleeAttack_AfterChecks(v)
					if self.HasMeleeAttackKnockBack == true && v.MovementType != VJ_MOVETYPE_STATIONARY then
						if v.VJ_IsHugeMonster != true or v.IsVJBaseSNPC_Tank == true then
							--v:SetGroundEntity(NULL)
							--v:SetVelocity(self:GetForward()*math.random(self.MeleeAttackKnockBack_Forward1,self.MeleeAttackKnockBack_Forward2) +self:GetUp()*math.random(self.MeleeAttackKnockBack_Up1,self.MeleeAttackKnockBack_Up2) +self:GetRight()*math.random(self.MeleeAttackKnockBack_Right1,self.MeleeAttackKnockBack_Right2))
						end
					end
					--if self.DisableDefaultMeleeAttackDamageCode == false then
						local doactualdmg = DamageInfo()
						if v:IsPlayer() then doactualdmg:SetDamage(self.LightsaberSpin_Damage/2) else doactualdmg:SetDamage(self.LightsaberSpin_Damage) end
						doactualdmg:SetDamageType(self.MeleeAttackDamageType)
						if v:IsNPC() or v:IsPlayer() then doactualdmg:SetDamageForce(self:GetForward()*((doactualdmg:GetDamage()+100)*70)) end
						doactualdmg:SetInflictor(self)
						doactualdmg:SetAttacker(self)
						v:TakeDamageInfo(doactualdmg, self)
					--end
					
					if v:IsPlayer() then
						if self.HasMeleeAttackDSPSound == true && ((self.MeleeAttackDSPSoundUseDamage == false) or (self.MeleeAttackDSPSoundUseDamage == true && self.MeleeAttackDamage >= self.MeleeAttackDSPSoundUseDamageAmount && GetConVarNumber("vj_npc_nomeleedmgdsp") == 0)) then
							v:SetDSP(self.MeleeAttackDSPSoundType,false)
						end
						v:ViewPunch(Angle(math.random(-1,1)*self.MeleeAttackDamage,math.random(-1,1)*self.MeleeAttackDamage,math.random(-1,1)*self.MeleeAttackDamage))
						if self.SlowPlayerOnMeleeAttack == true then
							self:VJ_DoSlowPlayer(v,self.SlowPlayerOnMeleeAttack_WalkSpeed,self.SlowPlayerOnMeleeAttack_RunSpeed,self.SlowPlayerOnMeleeAttackTime,{PlaySound=self.HasMeleeAttackSlowPlayerSound,SoundTable=self.SoundTbl_MeleeAttackSlowPlayer,SoundLevel=self.MeleeAttackSlowPlayerSoundLevel,FadeOutTime=self.MeleeAttackSlowPlayerSoundFadeOutTime},{})
							self:CustomOnMeleeAttack_SlowPlayer(v)
						end
					end
					VJ_DestroyCombineTurret(self,v)
					if VJ_IsProp(v) == true then
						if HasHitGoodProp == true then
							hitentity = true
						end
					else
						hitentity = true
					end
					end
					end
					end
					end
					if hitentity == true then
						--self:MeleeAttackSoundCode()
						--if self.StopMeleeAttackAfterFirstHit == true then self.AlreadyDoneMeleeAttackFirstHit = true /*self:StopMoving()*/ end
					else
						self:CustomOnMeleeAttack_Miss()
						--if self.MeleeAttackWorldShakeOnMiss == true then util.ScreenShake(self:GetPos(),self.MeleeAttackWorldShakeOnMissAmplitude,self.MeleeAttackWorldShakeOnMissFrequency,self.MeleeAttackWorldShakeOnMissDuration,self.MeleeAttackWorldShakeOnMissRadius) end
						--self:MeleeAttackMissSoundCode()
					end

		
		end
		
		if (CurTime() > self.LightsaberSpin_durationT+0.1 ) or ( (CurTime() + self.LightsaberSpin_duration)-self.LightsaberSpin_durationT > 1 and self:GetSequenceName(self:GetSequence()) != "lowcover_aim_pistol") then 
		
		self.LightsaberSpin_activated = 0
		self.MovementType = self.LightsaberSpin_oldmovtype
		self.CanTurnWhileStationary = self.LightsaberSpin_oldturn
		self.ConstantlyFaceEnemy = self.LightsaberSpin_faceenemy
		self.ConstantlyFaceEnemy_IfVisible = true
		self.ConstantlyFaceEnemy_IfAttacking = true
		self.HasPoseParameterLooking = self.LightsaberSpin_posepara
		self.MeleeAttackAnimationFaceEnemy = self.LightsaberSpin_meleeface
		if self.LightsaberSpin_posing == 1 then 
		self.LightsaberSpin_posing = 0
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_UpperArm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Forearm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Hand",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_UpperArm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Forearm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Hand",Angle(0,0,0))
		end
		self.vACT_StopAttacks = false
		self.NextChaseTime = CurTime() + 0.5
		self.NextIdleTime = CurTime() 
		self.LightsaberSpin_NextT = CurTime() + self.LightsaberSpin_recharge
		if ( CurTime() < self.LightsaberSpin_durationT+0.1 and self:GetSequenceName(self:GetSequence()) != "lowcover_aim_pistol") then
			self.LightsaberSpin_NextT = CurTime() + self.LightsaberSpin_recharge/2
		end
		self:ClearSchedule()
		self:VJ_ACT_PLAYACTIVITY( VJ_PICKRANDOMTABLE(self.AnimTbl_IdleStand),false,0.5,false,0,{})
		
		end
	end
	
	if self.LightsaberSpin_NextT < CurTime() and self.LightsaberSpin_activated != 1 and self.LightsaberThrow_activated != 1  and IsValid(self:GetEnemy()) and self.HasLightsaber == 1 and self.vACT_StopAttacks != true and self.VJ_PlayingSequence != true then
	self.LightsaberSpin_NextT = CurTime() + self.LightsaberSpin_Nexttime

	if math.random(1,10) >= self.LightsaberSpin_Chance then
	if self:GetPos():DistToSqr( self:GetEnemy():NearestPoint(self:GetPos()) ) < self.LightsaberSpin_Range*self.LightsaberSpin_Range and self:Visible(self:GetEnemy()) then
	
	local spinduration = self.LightsaberSpin_duration
	
	self.LightsaberSpin_activated = 1
	self.LightsaberSpin_NextT = CurTime() + self.LightsaberSpin_recharge
	self.LightsaberSpin_durationT = CurTime() + self.LightsaberSpin_duration
	self.CurrentAttackAnimation = self.LightsaberSpin_anim
	
	self.LightsaberSpin_oldmovtype = self.MovementType
	self.LightsaberSpin_oldturn = self.CanTurnWhileStationary
	self.LightsaberSpin_faceenemy = self.ConstantlyFaceEnemy
	self.LightsaberSpin_posepara = self.HasPoseParameterLooking 
	self.LightsaberSpin_meleeface = self.MeleeAttackAnimationFaceEnemy
	
	self.ConstantlyFaceEnemy = false
	self.ConstantlyFaceEnemy_IfVisible = false
	self.ConstantlyFaceEnemy_IfAttacking = false
	self.HasPoseParameterLooking = false 
	self.MeleeAttackAnimationFaceEnemy = false 
	self.MovementType = VJ_MOVETYPE_STATIONARY
	self.CanTurnWhileStationary = false
	self:FaceCertainPosition( self:GetPos() +self:GetForward()*1 )
	
	--IsDoingFaceEnemy 
	self:ClearSchedule()
	self:StopMoving()
	self:StopAttacks(true)
	self.vACT_StopAttacks = true
	self.NextChaseTime = CurTime() + spinduration + 1
	self.NextIdleTime = CurTime() + spinduration + 1
	
	self:VJ_ACT_PLAYACTIVITY(self.CurrentAttackAnimation,false,(spinduration+0.5),false,0,{SequenceDuration=(spinduration+0.4)})
	
	if self.LightsaberBlock_posing == 1 then self.LightsaberBlock_posing = 0 end
	self:CustomManipulateBone(self,"ValveBiped.Bip01_R_UpperArm",Angle(0,10,0))
	self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Forearm",Angle(0,30,0))
	self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Hand",Angle(-45,0,0))
	self:CustomManipulateBone(self,"ValveBiped.Bip01_L_UpperArm",Angle(30,0,0))
	self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Forearm",Angle(0,40,0))
	self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Hand",Angle(30,0,40))
	self.LightsaberSpin_posing = 1
	
	self.LightsaberSpin_attackT = CurTime() --+ self.LightsaberSpin_attacktime
	
	--timer.Simple(spinduration,function()
	--if IsValid(self) then
	--if self.LightsaberSpin_activated == 1 then
	--	self.LightsaberSpin_activated = 0
	--	self.MovementType = self.LightsaberSpin_oldmovtype
	--	self.CanTurnWhileStationary = self.LightsaberSpin_oldturn
	--	self.ConstantlyFaceEnemy = self.LightsaberSpin_faceenemy
	--	self.ConstantlyFaceEnemy_IfVisible = true
	--	self.ConstantlyFaceEnemy_IfAttacking = true
	--	self.HasPoseParameterLooking = self.LightsaberSpin_posepara
	--	self.MeleeAttackAnimationFaceEnemy = self.LightsaberSpin_meleeface
	--	if self.LightsaberSpin_posing == 1 then 
	--	self.LightsaberSpin_posing = 0
	--	self:CustomManipulateBone(self,"ValveBiped.Bip01_R_UpperArm",Angle(0,0,0))
	--	self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Forearm",Angle(0,0,0))
	--	self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Hand",Angle(0,0,0))
	--	end
	--end
	--end
	--end)
	
	
	end
	end
	
	end
	end
	
	
	
	
	
	
	if self.CanLightsaberThrow == true then
	
	if self.LightsaberThrow_activated == 1 then
	
	if IsValid(self.LightsaberThrow_Entity) then
	
		self.LightsaberThrow_Entity:SetAngles( self.LightsaberThrow_Entity:GetAngles() + Angle(0,85,0) )
		if self.LightsaberThrow_Entity.vel != nil then 
				local physw110 = self.LightsaberThrow_Entity:GetPhysicsObject()
				if ( IsValid( physw110 ) ) then
				physw110:SetVelocity( self.LightsaberThrow_Entity.vel:GetNormalized()*self.LightsaberThrow_VelFor )
				end
		end
				local IsPropAttack = false
				--if self.MeleeAttack_DoingPropAttack == true then IsPropAttack = true end
				local MyEnemy = self:GetEnemy()
				local AttackDist = self.LightsaberThrow_attackradius
				--if self.MeleeAttackAnimationFaceEnemy == true && self.MeleeAttack_DoingPropAttack == false then self:FaceCertainEntity(MyEnemy,true) end
				self:CustomOnMeleeAttack_BeforeChecks()
				local FindEnts1 = ents.FindInSphere(self.LightsaberThrow_Entity:GetPos(), self.LightsaberThrow_attackradius)
				local hitentity = false
				local HasHitGoodProp = false
				if FindEnts1 != nil then
				for _,v in pairs(FindEnts1) do
					if (self.VJ_IsBeingControlled == true && self.VJ_TheControllerBullseye == v) or (v:IsPlayer() && v.IsControlingNPC == true) then continue end
					if (v != self && v:GetClass() != self:GetClass()) && (((v:IsNPC() or (v:IsPlayer() && v:Alive())) && (self:Disposition(v) != D_LI)) or VJ_IsProp(v) == true or v:GetClass() == "func_breakable_surf" or VJ_HasValue(self.EntitiesToDestroyClass,v:GetClass()) or v.VJ_AddEntityToSNPCAttackList == true) then
					if VJ_IsProp(v) == true then
						local phys = v:GetPhysicsObject()
						if phys:IsValid() && phys != nil && phys != NULL then
					
							--if self:PushOrAttackPropsCode({IsSingleValue=v,CustomMeleeDistance=AttackDist}) then
								HasHitGoodProp = true
								phys:EnableMotion(true)

								phys:Wake()

								constraint.RemoveConstraints(v,"Weld") 

							--end
						end
					end
					self:CustomOnMeleeAttack_AfterChecks(v)

						local doactualdmg = DamageInfo()
						if v:IsPlayer() then doactualdmg:SetDamage(self.LightsaberThrow_damage/2) else doactualdmg:SetDamage(self.LightsaberThrow_damage) end
						doactualdmg:SetDamageType(self.MeleeAttackDamageType)
						if v:IsNPC() or v:IsPlayer() then doactualdmg:SetDamageForce(self:GetForward()*((doactualdmg:GetDamage()+100)*70)) end
						doactualdmg:SetInflictor(self)
						doactualdmg:SetAttacker(self)
						v:TakeDamageInfo(doactualdmg, self)
					
					if v:IsPlayer() then
						if self.HasMeleeAttackDSPSound == true && ((self.MeleeAttackDSPSoundUseDamage == false) or (self.MeleeAttackDSPSoundUseDamage == true && self.MeleeAttackDamage >= self.MeleeAttackDSPSoundUseDamageAmount && GetConVarNumber("vj_npc_nomeleedmgdsp") == 0)) then
							v:SetDSP(self.MeleeAttackDSPSoundType,false)
						end
						v:ViewPunch(Angle(math.random(-1,1)*self.MeleeAttackDamage,math.random(-1,1)*self.MeleeAttackDamage,math.random(-1,1)*self.MeleeAttackDamage))
						if self.SlowPlayerOnMeleeAttack == true then
							self:VJ_DoSlowPlayer(v,self.SlowPlayerOnMeleeAttack_WalkSpeed,self.SlowPlayerOnMeleeAttack_RunSpeed,self.SlowPlayerOnMeleeAttackTime,{PlaySound=self.HasMeleeAttackSlowPlayerSound,SoundTable=self.SoundTbl_MeleeAttackSlowPlayer,SoundLevel=self.MeleeAttackSlowPlayerSoundLevel,FadeOutTime=self.MeleeAttackSlowPlayerSoundFadeOutTime},{})
							self:CustomOnMeleeAttack_SlowPlayer(v)
						end
					end
					VJ_DestroyCombineTurret(self,v)
					if VJ_IsProp(v) == true then
					else
						hitentity = true
					end

					end
					end
					end
					if hitentity == true then
						--self:MeleeAttackSoundCode()
						else
						self:CustomOnMeleeAttack_Miss()
						--self:MeleeAttackMissSoundCode()
					end
	
			if self:GetPos():DistToSqr( self.LightsaberThrow_Entity:GetPos() ) > self.LightsaberThrow_chosenrange + 200*200 then 
			
				local thrownlightsaber_velo = (self:GetPos()+self:GetUp()*45) - self.LightsaberThrow_Entity:GetPos()
				self.LightsaberThrow_Entity.vel = thrownlightsaber_velo*1.5
				local physw11 = self.LightsaberThrow_Entity:GetPhysicsObject()
				if ( IsValid( physw11 ) ) then
				physw11:SetVelocity( thrownlightsaber_velo:GetNormalized()*self.LightsaberThrow_VelFor*1 )
				end
			
			end
	
	end
	
		if (CurTime() > self.LightsaberThrow_durationT+0.5 ) or (IsValid(self.LightsaberThrow_Entity) and self:GetPos():DistToSqr(self.LightsaberThrow_targetpos) < self.LightsaberThrow_Entity:GetPos():DistToSqr(self.LightsaberThrow_targetpos)-900 ) or (!IsValid(self.LightsaberThrow_Entity) and (CurTime() +self.LightsaberThrow_duration)-self.LightsaberThrow_durationT > 1.2) or ( (CurTime() +self.LightsaberThrow_duration)-self.LightsaberThrow_durationT > 1.6 and IsValid(self.LightsaberThrow_Entity) and self:GetPos():DistToSqr( self.LightsaberThrow_Entity:GetPos() ) < 150*150 ) then 
		
		self.LightsaberThrow_activated = 0
		self.MovementType = self.LightsaberThrow_originalmovetype
		self.CanTurnWhileStationary = self.LightsaberThrow_originalturn
		self.vACT_StopAttacks = false
		self.NextChaseTime = CurTime() + 0.5
		self.NextIdleTime = CurTime() 
		self.LightsaberThrow_NextT = CurTime() + self.LightsaberThrow_recharge
		if IsValid(self.ExtraGunModel1) then self.ExtraGunModel1:SetNoDraw(false) end
		if IsValid(self.LightsaberThrow_Entity) then 
			self.LightsaberThrow_Entity:Remove() 
		end
		self:ClearSchedule()
		--self:VJ_TASK_IDLE_STAND()
		self:VJ_ACT_PLAYACTIVITY( VJ_PICKRANDOMTABLE(self.AnimTbl_IdleStand),false,0.5,false,0,{})
	
		
		end
	
	end

	if self.LightsaberThrow_NextT < CurTime() and self.LightsaberThrow_activated != 1 and !IsValid(self.LightsaberThrow_Entity) and self.LightsaberSpin_activated != 1 and IsValid(self:GetEnemy()) and self.HasLightsaber == 1 and self.vACT_StopAttacks != true and self.VJ_PlayingSequence != true then
	self.LightsaberThrow_NextT = CurTime() + self.LightsaberThrow_Nexttime

	if math.random(1,10) >= self.LightsaberThrow_Chance then
		if self:GetPos():DistToSqr( self:GetEnemy():GetPos() ) < self.LightsaberThrow_rangemax*self.LightsaberThrow_rangemax and self:GetPos():DistToSqr( self:GetEnemy():GetPos() ) >= self.LightsaberThrow_rangemin*self.LightsaberThrow_rangemin and self:Visible(self:GetEnemy()) then
			
			local throwduration = self.LightsaberThrow_duration
			
			self.LightsaberThrow_activated = 1
			self.LightsaberThrow_NextT = CurTime() + self.LightsaberThrow_recharge
			self.LightsaberThrow_durationT = CurTime() + self.LightsaberThrow_duration
			
			
			self.LightsaberThrow_originalmovetype = self.MovementType
			self.LightsaberThrow_originalturn = self.CanTurnWhileStationary
			
			self:FaceCertainPosition( self:GetEnemy():GetPos() )
			self.MovementType = VJ_MOVETYPE_STATIONARY
			self.CanTurnWhileStationary = false
			
			--IsDoingFaceEnemy 
			
			self.CurrentAttackAnimation = self.LightsaberThrow_anim
			self:ClearSchedule()
			self:StopMoving()
				
			self:StopAttacks(true)
			self.vACT_StopAttacks = true
			self.NextChaseTime = CurTime() + throwduration + 1
			self.NextIdleTime = CurTime() + throwduration + 1
			
			self:VJ_ACT_PLAYACTIVITY(self.CurrentAttackAnimation,false,(throwduration+0.5),false,0,{SequenceDuration=(throwduration+0.5)})
	
			self.LightsaberThrow_chosenrange = self:GetPos():DistToSqr( self:GetEnemy():GetPos() + self:GetEnemy():GetUp()*35 )
			local enemypos = self:GetEnemy():GetPos() + self:GetEnemy():GetUp()*40
			self.LightsaberThrow_targetpos = enemypos
			
			timer.Simple(0.6,function()
			if IsValid(self) then
			if self.LightsaberThrow_activated == 1 then
			
			if IsValid(self.ExtraGunModel1) then self.ExtraGunModel1:SetNoDraw(true) end
			
			local LightsaberThrowEntity = ents.Create("prop_physics_override")
			LightsaberThrowEntity:SetModel( self.LightsaberModel ) 
			LightsaberThrowEntity:SetPos( self:LocalToWorld( self.LightsaberThrow_throwpos ) )
			LightsaberThrowEntity:SetAngles( self:GetAngles() )
			LightsaberThrowEntity:Spawn()
			LightsaberThrowEntity:DrawShadow( false )
			LightsaberThrowEntity:SetCollisionGroup( COLLISION_GROUP_WORLD )
			self:DeleteOnRemove(LightsaberThrowEntity)
			LightsaberThrowEntity:Activate()
			LightsaberThrowEntity:SetFriction(0)
			
			local physw1 = LightsaberThrowEntity:GetPhysicsObject()
			if ( IsValid( physw1 ) ) then
				physw1:EnableGravity(false)
				physw1:EnableDrag(false)
				physw1:SetBuoyancyRatio(0)
				physw1:SetDragCoefficient(0) 
				physw1:EnableCollisions( false )
				physw1:Wake()
				physw1:SetAngleDragCoefficient(0) 
			end
	

			
			self.LightsaberThrow_Entity = LightsaberThrowEntity
			
				local thrownlightsaber_vel = enemypos - self.LightsaberThrow_Entity:GetPos()
				self.LightsaberThrow_Entity.vel = thrownlightsaber_vel
				--self.lightsaberthrow_lightsaberentity_originalvel = thrownlightsaber_vel:GetNormalized()*2200
				if ( IsValid( physw1 ) ) then
				physw1:SetVelocity( thrownlightsaber_vel:GetNormalized()*self.LightsaberThrow_VelFor )
				end
			
			end
			end
			end)
			
		end
	end
	
	end
	
	
	end

	
	
	
	
	if self.CanLightsaberJump == true then
	
	if self.LightsaberJump_activated == 1 then
	
	local canceljump = 0


	VJ_EmitSound("palpatine/forceleap5.mp3")	
	self:SetAngles( self:GetAngles() + Angle(31,0,0) )
	timer.Simple(0.06,function()
	if IsValid(self) then
	if self.LightsaberJump_activated == 1 then
	self:SetAngles( self:GetAngles() + Angle(31,0,0) )
	end
	end
	end)
		
		if self.LightsaberJump_attackT < CurTime() then 
			self.LightsaberJump_attackT = CurTime() + self.LightsaberJump_attacktime
			
				local IsPropAttack = false
				--if self.MeleeAttack_DoingPropAttack == true then IsPropAttack = true end
				local MyEnemy = self:GetEnemy()
				local AttackDist = self.LightsaberJump_AttackRange
				--if self.MeleeAttackAnimationFaceEnemy == true && self.MeleeAttack_DoingPropAttack == false then self:FaceCertainEntity(MyEnemy,true) end
				self:CustomOnMeleeAttack_BeforeChecks()
				local FindEnts1 = ents.FindInSphere(self:GetPos(), self.LightsaberJump_AttackRange)
				local hitentity = false
				local HasHitGoodProp = false
				if FindEnts1 != nil then
				for _,v in pairs(FindEnts1) do
					if (self.VJ_IsBeingControlled == true && self.VJ_TheControllerBullseye == v) or (v:IsPlayer() && v.IsControlingNPC == true) then continue end
					if (v != self && v:GetClass() != self:GetClass()) && (((v:IsNPC() or (v:IsPlayer() && v:Alive())) && (self:Disposition(v) != D_LI)) or VJ_IsProp(v) == true or v:GetClass() == "func_breakable_surf" or VJ_HasValue(self.EntitiesToDestroyClass,v:GetClass()) or v.VJ_AddEntityToSNPCAttackList == true) then
					if VJ_IsProp(v) == true then
						local phys = v:GetPhysicsObject()
						if phys:IsValid() && phys != nil && phys != NULL then
					
							--if self:PushOrAttackPropsCode({IsSingleValue=v,CustomMeleeDistance=AttackDist}) then
								HasHitGoodProp = true
								phys:EnableMotion(true)

								phys:Wake()

								constraint.RemoveConstraints(v,"Weld") 

							--end
						end
					end
					self:CustomOnMeleeAttack_AfterChecks(v)

						local doactualdmg = DamageInfo()
						if v:IsPlayer() then doactualdmg:SetDamage(self.LightsaberJump_Damage/3) else doactualdmg:SetDamage(self.LightsaberJump_Damage) end
						doactualdmg:SetDamageType(self.MeleeAttackDamageType)
						if v:IsNPC() or v:IsPlayer() then doactualdmg:SetDamageForce(self:GetForward()*((doactualdmg:GetDamage()+100)*70)) end
						doactualdmg:SetInflictor(self)
						doactualdmg:SetAttacker(self)
						v:TakeDamageInfo(doactualdmg, self)
					
					if v:IsPlayer() then
						if self.HasMeleeAttackDSPSound == true && ((self.MeleeAttackDSPSoundUseDamage == false) or (self.MeleeAttackDSPSoundUseDamage == true && self.MeleeAttackDamage >= self.MeleeAttackDSPSoundUseDamageAmount && GetConVarNumber("vj_npc_nomeleedmgdsp") == 0)) then
							v:SetDSP(self.MeleeAttackDSPSoundType,false)
						end
						v:ViewPunch(Angle(math.random(-1,1)*self.MeleeAttackDamage,math.random(-1,1)*self.MeleeAttackDamage,math.random(-1,1)*self.MeleeAttackDamage))
						if self.SlowPlayerOnMeleeAttack == true then
							self:VJ_DoSlowPlayer(v,self.SlowPlayerOnMeleeAttack_WalkSpeed,self.SlowPlayerOnMeleeAttack_RunSpeed,self.SlowPlayerOnMeleeAttackTime,{PlaySound=self.HasMeleeAttackSlowPlayerSound,SoundTable=self.SoundTbl_MeleeAttackSlowPlayer,SoundLevel=self.MeleeAttackSlowPlayerSoundLevel,FadeOutTime=self.MeleeAttackSlowPlayerSoundFadeOutTime},{})
							self:CustomOnMeleeAttack_SlowPlayer(v)
						end
					end
					VJ_DestroyCombineTurret(self,v)
					if VJ_IsProp(v) == true then
					else
						hitentity = true
					end

					end
					end
					end
					if hitentity == true then
						--self:MeleeAttackSoundCode()
						else
						self:CustomOnMeleeAttack_Miss()
						--self:MeleeAttackMissSoundCode()
					end

		
		end
	
	
	if (CurTime() +self.LightsaberJump_duration)-self.LightsaberJump_durationT > 0.8 then
	
		local tracedataAD = {}
		tracedataAD.start = self:GetPos() + Vector(0,0,0)
		tracedataAD.endpos = self:GetPos() + Vector(0,0,-15)
		tracedataAD.filter = {self,self.ExtraGunModel1}
		local trAD = util.TraceEntity(tracedataAD,self)
		if (self.LightsaberJump_durationT < CurTime()) or ( trAD.HitWorld ) or ( trAD.Entity != nil and IsValid(trAD.Entity) and trAD.Entity != self) then
	
		self.LightsaberJump_activated = 0
		
		self.MovementType = self.LightsaberJump_oldmovtype
		self.CanTurnWhileStationary = self.LightsaberJump_oldturn
		self.ConstantlyFaceEnemy = self.LightsaberJump_faceenemy
		self.HasPoseParameterLooking = self.LightsaberJump_posepara
		self.MeleeAttackAnimationFaceEnemy = self.LightsaberJump_meleeface
		self:SetGravity(self.LightsaberJump_oldgravity)
		self:SetFriction(self.LightsaberJump_originalfriction)
		
		self.vACT_StopAttacks = false
		self.NextChaseTime = CurTime() + 0.5
		self.NextIdleTime = CurTime() 
		self.LightsaberJump_NextT = CurTime() + self.LightsaberJump_recharge
		
		if self.LightsaberJump_posing == 1 then 
			self:CustomManipulateBone(self,"ValveBiped.Bip01_R_UpperArm",Angle(0,0,0))
			self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Forearm",Angle(0,0,0))
			self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Hand",Angle(0,0,0))
			self:CustomManipulateBone(self,"ValveBiped.Bip01_Spine",Angle(0,0,0))
			self:CustomManipulateBone(self,"ValveBiped.Bip01_Spine1",Angle(0,0,0))
			self:CustomManipulateBone(self,"ValveBiped.Bip01_Spine4",Angle(0,0,0))
			self.LightsaberJump_posing = 0
		end

		self:ClearSchedule()
		self:SetAngles( Angle(0,self:GetAngles().y,0) )
		--self:VJ_TASK_IDLE_STAND()
		self:VJ_ACT_PLAYACTIVITY( VJ_PICKRANDOMTABLE(self.AnimTbl_IdleStand),false,0.5,false,0,{})
			timer.Simple(0.9,function()
			if IsValid(self) then
			if self.LightsaberJump_activated != 1 then
				--self:SetAngles( self:GetAngles() + Angle(31,0,0) )
				local tracedataAD2 = {}
				tracedataAD2.start = self:GetPos() + Vector(0,0,10)
				tracedataAD2.endpos = self:GetPos() + Vector(0,0,-15)
				tracedataAD2.filter = {self,self.ExtraGunModel1}
				local trAD2 = util.TraceEntity(tracedataAD2,self)
				if trAD2.Entity != nil and IsValid(trAD2.Entity) and trAD2.Entity != self and trAD2.Entity:IsNPC() then 
					self.LightsaberJump_NextT = CurTime() + 0.5
					self.LightsaberJump_forcejump = 1 
				end
			end
			end
			end)
	
		end
	end
	
	
	
	
	
	end
	
	
	
	
	
	if self.LightsaberJump_NextT < CurTime() and self.LightsaberJump_activated != 1 and self.LightsaberSpin_activated != 1 and self.LightsaberThrow_activated != 1  and IsValid(self:GetEnemy()) and self.HasLightsaber == 1 and self.vACT_StopAttacks != true and self.VJ_PlayingSequence != true then
	self.LightsaberJump_NextT = CurTime() + self.LightsaberJump_Nexttime
	if math.random(1,10) >= self.LightsaberJump_Chance or self.LightsaberJump_forcejump == 1 then

	local enemyhigh = 0
	if self:GetEnemy():GetPos().z > (self:GetPos().z+self.LightsaberJump_Range) then enemyhigh = 1 end
			if math.random(1,10) >= 5 then
				local tracedataAD2a = {}
				tracedataAD2a.start = self:GetPos() + Vector(0,0,10)
				tracedataAD2a.endpos = self:GetPos() + Vector(0,0,-15)
				tracedataAD2a.filter = {self,self.ExtraGunModel1}
				local trAD2a = util.TraceEntity(tracedataAD2a,self)
				if trAD2a.Entity != nil and IsValid(trAD2a.Entity) and trAD2a.Entity != self and trAD2a.Entity:IsNPC() then	enemyhigh = 2 end
			end
	if ( ((self:GetPos():DistToSqr( self:GetEnemy():NearestPoint(self:GetPos()) ) < self.LightsaberJump_Range*self.LightsaberJump_Range) or (enemyhigh != 0 and self:GetPos():DistToSqr( self:GetEnemy():GetPos() ) < self.LightsaberJump_RangeHigh*self.LightsaberJump_RangeHigh)) and self:Visible(self:GetEnemy()) ) or self.LightsaberJump_forcejump == 1 then
	
	local failedcheck1 = 0
	local heightpos = self:GetPos()+Vector(0,0,180)
	local tr13 = util.TraceEntity({
							start = self:GetPos()+self:GetUp()*20,
							endpos = heightpos,
							filter = {self,self.ExtraGunModel1}
							},self)
	if tr13.HitPos:DistToSqr(heightpos) > 32*32 then failedcheck1 = 1 end
	
	if failedcheck1 == 0 or self.LightsaberJump_forcejump == 1 then
	
	
		local jumpduration = self.LightsaberJump_duration
	
		self.LightsaberJump_activated = 1
		self.LightsaberJump_NextT = CurTime() + self.LightsaberJump_recharge
		self.LightsaberJump_durationT = CurTime() + self.LightsaberJump_duration
		self.CurrentAttackAnimation = self.LightsaberJump_anim
	
		self.LightsaberJump_oldmovtype = self.MovementType
		self.LightsaberJump_oldturn = self.CanTurnWhileStationary
		self.LightsaberJump_faceenemy = self.ConstantlyFaceEnemy
		self.LightsaberJump_posepara = self.HasPoseParameterLooking 
		self.LightsaberJump_meleeface = self.MeleeAttackAnimationFaceEnemy
		self.LightsaberJump_oldgravity = self:GetGravity()
		self.LightsaberJump_originalfriction = self:GetFriction()
		--self:PoseParameterLookingCode(true)
		
		self.ConstantlyFaceEnemy = false
		self.ConstantlyFaceEnemy_IfVisible = false
		self.ConstantlyFaceEnemy_IfAttacking = false
		self.HasPoseParameterLooking = false 
		self.MeleeAttackAnimationFaceEnemy = false 
		self.MovementType = VJ_MOVETYPE_STATIONARY
		self.CanTurnWhileStationary = false
		self:FaceCertainPosition( self:GetEnemy():GetPos() )
	
		--IsDoingFaceEnemy 
		self:ClearSchedule()
		self:StopMoving()
		self:StopAttacks(true)
		self.vACT_StopAttacks = true
		self.NextChaseTime = CurTime() + jumpduration + 1
		self.NextIdleTime = CurTime() + jumpduration + 1

		self:SetFriction(0)
		self:SetGravity( 2.5 ) 

		self:VJ_ACT_PLAYACTIVITY(self.CurrentAttackAnimation,false,(jumpduration+0.4),false,0,{SequenceDuration=(jumpduration+0.3)})
	
			if self.LightsaberBlock_posing == 1 then self.LightsaberBlock_posing = 0 end
			if self.LightsaberSpin_posing == 1 then self.LightsaberSpin_posing = 0 end
			self:CustomManipulateBone(self,"ValveBiped.Bip01_R_UpperArm",Angle(0,15,0))
			self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Forearm",Angle(0,0,0))
			self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Hand",Angle(-25,0,0))
			self:CustomManipulateBone(self,"ValveBiped.Bip01_Spine",Angle(-20,20,0))
			self:CustomManipulateBone(self,"ValveBiped.Bip01_Spine1",Angle(-6,6,0))
			self:CustomManipulateBone(self,"ValveBiped.Bip01_Spine4",Angle(0,6,0))
			self.LightsaberJump_posing = 1
		
			self.LightsaberJump_attackT = CurTime()
		
			local gravitynew = 2.5
			local upvelocity = 2*(11.43*gravitynew)*(self.LightsaberJump_Height*0.01905)
			local upvel = math.sqrt(upvelocity)
			local vel = self:GetUp()*(upvel/0.01905)
			if self.LightsaberJump_forcejump == 1 or enemyhigh == 2 then vel = vel + self:GetForward()*-70 end
			self:SetVelocity( vel )
			
			if self.LightsaberJump_forcejump == 1 then self.LightsaberJump_forcejump = 0 end

	
	end
	
	
	end
	
	
	
	end
	end
	
	
	
	
	end
	

	
end


function ENT:CustomOnTakeDamage_AfterDamage(dmginfo,hitgroup) 

	if self.Dead == true then return end
	
	self.RegenHealth_NextT = CurTime() + self.RegenHealth_wait

end

function ENT:CustomOnTakeDamage_BeforeDamage(dmginfo,hitgroup) 

	local DamageInflictor = dmginfo:GetInflictor()
	if IsValid(DamageInflictor) then local DamageInflictorClass = DamageInflictor:GetClass() end
	local DamageAttacker = dmginfo:GetAttacker()
	if IsValid(DamageAttacker) then local DamageAttackerClass = DamageAttacker:GetClass() end
	local DamageType = dmginfo:GetDamageType()
	local hitgroupd = hitgroup
	
	if ( hitgroup == HITGROUP_HEAD ) then
	
	if dmginfo:GetDamage() >= 0.5*self:GetMaxHealth() then
		--dmginfo:ScaleDamage( 2 ) // More damage when we're shot in the head
		dmginfo:SetDamage( 70 )
		
	else
	
		if dmginfo:GetDamage() == self:Health() and self:Health() > 150 then
			dmginfo:ScaleDamage( 0.25 )
		end
	end
		
	end
	if (dmginfo:IsBulletDamage()) and dmginfo:GetDamage() > 3 then
		if math.random(1,2) >= 1 then dmginfo:ScaleDamage(0.75) end
	end
	--self:CustomOnTakeDamage_BeforeImmuneChecks(dmginfo,hitgroup)
	if self.CanLightsaberBlock == true and self.HasLightsaber == 1 and self.LightsaberBlock_NextT < CurTime() and (self:GetActivity() == VJ_PICKRANDOMTABLE(self.AnimTbl_IdleStand) or self:GetActivity() == VJ_PICKRANDOMTABLE(self.AnimTbl_Walk) or self:GetActivity() == VJ_PICKRANDOMTABLE(self.AnimTbl_Run)) then
	if IsValid(DamageAttacker) and DamageType != nil then
	if (dmginfo:IsBulletDamage() or DamageType == DMG_AIRBOAT or DamageType == DMG_BUCKSHOT or DamageType == DMG_SHOCK or DamageType == DMG_ENERGYBEAM) then
	if (self:GetForward():Dot((DamageAttacker:GetPos() -self:GetPos()):GetNormalized()) > math.cos(math.rad(self.LightsaberBlock_Angle))) and self:GetPos():DistToSqr( DamageAttacker:GetPos() ) < self.LightsaberBlock_Range*self.LightsaberBlock_Range then
	
	local DamagePos = dmginfo:GetDamagePosition()
	if DamagePos != Vector(0,0,0) and DamagePos != self:GetPos() and DamagePos != self:GetPos() +self:OBBCenter() then --DamagePos = self:GetPos() + self:OBBCenter() end
	
	local pointcenter = self:LocalToWorld( self.LightsaberBlock_PosCenter ):DistToSqr(DamagePos)
	local pointur = self:LocalToWorld( self.LightsaberBlock_PosUR ):DistToSqr(DamagePos)
	local pointul = self:LocalToWorld( self.LightsaberBlock_PosUL ):DistToSqr(DamagePos)
	local pointdr = self:LocalToWorld( self.LightsaberBlock_PosDR ):DistToSqr(DamagePos)
	local pointdl = self:LocalToWorld( self.LightsaberBlock_PosDL ):DistToSqr(DamagePos)
	local chosenside = "center"
	local chosensiden = math.min( pointcenter, pointur, pointul, pointdr, pointdl )
	if chosensiden == pointcenter then chosenside = "center" end
	if chosensiden == pointur then chosenside = "ur" end
	if chosensiden == pointul then chosenside = "ul" end
	if chosensiden == pointdr then chosenside = "dr" end
	if chosensiden == pointdl then chosenside = "dl" end
	
	self.LightsaberBlock_NextT = CurTime() + self.LightsaberBlock_Nexttime

	self.LightsaberBlock_resetT = CurTime() + self.LightsaberBlock_resettime

	self.LightsaberBlock_activated = 1
	self.LightsaberBlock_posing = 1
	local randnum = math.random(-10,10)
	local randnum2 = math.random(-5,5)
	if chosenside == "center" then 
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_UpperArm",Angle(-25,40,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Forearm",Angle(0,-6,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Hand",Angle(0,0,-15+randnum))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_UpperArm",Angle(40,20,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Forearm",Angle(0,26,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Hand",Angle(-20,0,15+randnum))
	end	
	if chosenside == "ur" then 
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_UpperArm",Angle(-10,25,-45))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Forearm",Angle(0,-10,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Hand",Angle(0,0,60+randnum))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_UpperArm",Angle(-2,40,80))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Forearm",Angle(-50,-20,-30))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Hand",Angle(0,0,60+randnum))
	end
	if chosenside == "dr" then 
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_UpperArm",Angle(-10,25,-45))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Forearm",Angle(0,-9,50))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Hand",Angle(35,0,135+randnum))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_UpperArm",Angle(30,30,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Forearm",Angle(-15,-20,30))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Hand",Angle(0,0,0+randnum))
	end
	if chosenside == "ul" then 
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_UpperArm",Angle(-10,30,-20))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Forearm",Angle(30,-20,10))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Hand",Angle(0,0,-45+randnum))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_UpperArm",Angle(25,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Forearm",Angle(-18,-0,-0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Hand",Angle(0,5,5+randnum))
	end
	if chosenside == "dl" then 
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_UpperArm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Forearm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_R_Hand",Angle(0,0,-135+randnum))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_UpperArm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Forearm",Angle(0,0,0))
		self:CustomManipulateBone(self,"ValveBiped.Bip01_L_Hand",Angle(0,0,90+randnum))
	end
	local DamagePoslocal = self:WorldToLocal(DamagePos)
	local sparkpos = Vector(25,DamagePoslocal.y,DamagePoslocal.z)
	local actualsparkpos = self:LocalToWorld(sparkpos)
			dmginfo:ScaleDamage(0)
			self.DamageSpark11 = ents.Create("env_spark")
			self.DamageSpark11:SetKeyValue("Magnitude","1")
			self.DamageSpark11:SetKeyValue("Spark Trail Length","1")
			self.DamageSpark11:SetPos(actualsparkpos)
			self.DamageSpark11:SetAngles(self:GetAngles())
			//self.DamageSpark1:Fire("LightColor", "255 255 255")
			self.DamageSpark11:SetParent(self)
			self.DamageSpark11:Spawn()
			self.DamageSpark11:Activate()
			self.DamageSpark11:Fire("StartSpark", "", 0)
			self.DamageSpark11:Fire("StopSpark", "", 0.001)
			self:DeleteOnRemove(self.DamageSpark11)
			if self.HasSounds == true and CurTime() > self.LightsaberBlock_soundT then 
				VJ_EmitSound(self,VJ_PICKRANDOMTABLE(self.SoundTbl_LightsaberBlock),70) 
				self.LightsaberBlock_soundT = CurTime() + self.LightsaberBlock_soundtime
			end
			timer.Simple(0.3,function()
			if IsValid(self) and self.DamageSpark11 != nil and IsValid(self.DamageSpark11) then
				self.DamageSpark11:Remove() 
			end
			end)
			
			local effectdata = EffectData()
			effectdata:SetOrigin(actualsparkpos)
			effectdata:SetAngles(self:GetAngles())
			effectdata:SetEntity(self) 
			effectdata:SetNormal((DamageAttacker:GetPos() -actualsparkpos):GetNormalized() )
			//effectdata:SetScale( 500 )
			util.Effect( "MetalSpark ", effectdata )
	
			/*
					table.insert( usablespots, actualcoverpos )
					local isclosestone = 1
					for ku,usepos in pairs(usablespots) do
					if usepos != nil and usepos != NULL then
					if self:GetPos():DistToSqr(usepos) < self:GetPos():DistToSqr(actualcoverpos) then 
						--chosenspot = actualcoverpos
						isclosestone = 0
					end
					end
					end
					if isclosestone == 1 then chosenspot = actualcoverpos end
			*/
	end
	
	end
	end
	end
	end
end
function ENT:CustomOnTakeDamage_BeforeImmuneChecks(dmginfo)


		dmginfo:ScaleDamage(0.55)
	
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/