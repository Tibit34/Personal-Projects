AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = "models/weaman/WeaMan_PM.mdl" -- Leave empty if using more than one model 
--ENT.Model = "models/myuto/npc/Keyuon_pm.mdl" -- Leave empty if using more than one model 
--ENT.StartHealth = 80000
ENT.StartHealth = 255000
ENT.MoveType = MOVETYPE_STEP
ENT.HullType = HULL_HUMAN
ENT.HullSizeNormal = false -- set to false to cancel out the self:SetHullSizeNormal()
ENT.PlayerFriendly = true -- Makes the SNPC friendly to the player and HL2 Resistance
ENT.FriendsWithAllPlayerAllies = true
ENT.VJ_NPC_Class = {"CLASS_UNITED_STATES_FRIENDLY","CLASS_CLONE_TROOPER_FRIENDLY"}
ENT.BloodParticle = {"blood_impact_red_01"} -- Particle that the SNPC spawns when it's damaged
ENT.BloodDecal = {"Blood"} -- Leave blank for none | Commonly used: Red = Blood, Yellow Blood = YellowBlood
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackAnimationFaceEnemy = true

ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_IfVisible = true -- Should it only face the enemy if it's visible?

ENT.LeapAttackAnimationFaceEnemy = true
ENT.AnimTbl_MeleeAttack = {"thrust","swing","melee_gunhit","range_melee2_1"} -- Melee Attack Animations
--ENT.AnimTbl_MeleeAttack = {"combo1"}
ENT.MeleeAttackDistance = 50 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 70 -- How far does the damage go?
ENT.TimeUntilMeleeAttackDamage = 0.3 -- This counted in seconds | This calculates the time until it hits something
ENT.NextAnyAttackTime_Melee = 0.2 -- How much time until it can use a attack again? | Counted in Seconds
ENT.MeleeAttackDamage =  math.random(4400,4500)
ENT.DisableWeapons = false
ENT.FootStepTimeRun = 0.3 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.3 -- Next foot step sound when it is walking
ENT.SightDistance = 10000 -- How far it can see

ENT.SoundTbl_MeleeAttack = {"ruby/weapons/slashhit1.wav","ruby/weapons/slashhit2.wav","ruby/weapons/slashhit3.wav","ruby/weapons/slashhit4.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"ruby/weapons/slashhit1.wav","ruby/weapons/slashhit2.wav","ruby/weapons/slashhit3.wav","ruby/weapons/slashhit4.wav"}




ENT.SquadName = "japanese" -- Squad name, console error will happen if two groups that are enemy and try to squad!
ENT.HasMeleeAttackKnockBack = true -- If true, it will cause a knockback to its self.enemy
ENT.MeleeAttackKnockBack_Forward1 = math.random(0,350) -- How far it will push you forward | First in math.random
ENT.MeleeAttackKnockBack_Forward2 = math.random(0,350) -- How far it will push you forward | Second in math.random
ENT.MeleeAttackKnockBack_Up1 = math.random(20,200) -- How far it will push you up | First in math.random
ENT.MeleeAttackKnockBack_Up2 = math.random(20,200) -- How far it will push you up | Second in math.random
ENT.MeleeAttackKnockBack_Right1 =  math.random(-80,80)  -- How far it will push you right | First in math.random
ENT.MeleeAttackKnockBack_Right2 = math.random(-80,80) -- How far it will push you right | Second in math.random
ENT.MeleeAttackBleedEnemy = true -- Should the enemy bleed when attacked by melee?
ENT.MeleeAttackBleedEnemyChance = 1 -- How much chance there is that the enemy will bleed? | 1 = always
ENT.MeleeAttackBleedEnemyDamage = 1000 -- How much damage will the enemy get on every rep?
ENT.MeleeAttackBleedEnemyTime = .5 -- How much time until the next rep?
ENT.MeleeAttackBleedEnemyReps = 6 -- How many reps?

ENT.MeleeAttackAngleRadius = 120 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC

ENT.HasLeapAttack = true

ENT.LeapAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the leap attack animation?
ENT.LeapAttackAnimationDecreaseLengthAmount = 0.2

ENT.AnimTbl_LeapAttack = {"Jump_Holding_Glide"}
ENT.LeapAttackAnimationDelay = 0
 
 
ENT.LeapDistance = 5700-- The distance of the leap, for example if it is set to 500, when the SNPC is 500 Unit away, it will jump
ENT.LeapToMeleeDistance = 60 -- How close does it have to be until it uses melee?
ENT.TimeUntilLeapAttackDamage = 0 -- How much time until it runs the leap damage code?
ENT.NextLeapAttackTime =  .6-- How much time until it can use a leap attack?
ENT.LeapAttackVelocityForward = 350 -- How much forward force should it apply?
ENT.LeapAttackVelocityUp = math.random(150,200) -- How much upward force should it apply?
ENT.LeapAttackVelocityRight = 0 -- How much right force should it apply?
ENT.LeapAttackDamage = 3550

ENT.PlayerFriendly = true
ENT.FollowPlayer = true
ENT.BecomeEnemyToPlayer = true -- Should the friendly SNPC become enemy towards the player if it's damaged by a player?
ENT.BecomeEnemyToPlayerLevel = 3
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {}
ENT.SoundTbl_MeleeAttack = {}
ENT.SoundTbl_LeapAttack = {}
ENT.SoundTbl_MeleeAttackMiss = {"friday13/woosh.mp3"}
ENT.SoundTbl_Pain = {}
ENT.SoundTbl_Death = {}


ENT.HasRangeAttack = false -- Should the SNPC have a range attack?
ENT.RangeAttackEntityToSpawn = "obj_mute_great_lightening" -- The entity that is spawned when range attacking
	-- ====== Animation Variables ====== --
ENT.AnimTbl_RangeAttack = {"throw"} -- Range Attack Animations
ENT.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.RangeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the range attack animation?
ENT.RangeAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.RangeAttackAnimationStopMovement = false -- Should it stop moving when performing a range attack?
	-- ====== Distance Variables ====== --
ENT.RangeDistance = 13000 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 500 -- How close does it have to be until it uses melee?
ENT.RangeAttackAngleRadius = 100 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
	-- ====== Timer Variables ====== --
	-- To use event-based attacks, set this to false:
ENT.TimeUntilRangeAttackProjectileRelease = 1 -- How much time until the projectile code is ran?
ENT.NextRangeAttackTime = 6 -- How much time until it can use a range attack?
ENT.NextRangeAttackTime_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
	-- To let the base automatically detect the attack duration, set this to false:
ENT.NextAnyAttackTime_Range = false -- How much time until it can use any attack again? | Counted in Seconds
ENT.NextAnyAttackTime_Range_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
ENT.RangeAttackReps = 1 -- How many times does it run the projectile code?
ENT.RangeAttackExtraTimers = {/* Ex: 1,1.4 */} -- Extra range attack timers | it will run the projectile code after the given amount of seconds
	-- ====== Projectile Spawn Position Variables ====== --
ENT.RangeUseAttachmentForPos = false -- Should the projectile spawn on a attachment?
ENT.RangeUseAttachmentForPosID = "muzzle" -- The attachment used on the range attack if RangeUseAttachmentForPos is set to true
ENT.RangeAttackPos_Up = 50 -- Up/Down spawning position for range attack
ENT.RangeAttackPos_Forward = 0 -- Forward/Backward spawning position for range attack
ENT.RangeAttackPos_Right = 0 -- Right/Left spawning position for range attack


--ParticleEffect("elc_strong_attackhull",self:GetPos() + self:GetForward()*800,Angle(0,0,0),nil)
--ParticleEffect("elc_strong_attackhull",self:GetPos() + self:GetForward()*800,Angle(0,0,0),nil)


function ENT:CustomOnMeleeAttack_BeforeChecks()
	--self:EmitSound(Sound("weapons/melee/knife/knife_slash_" .. math.random(1, 3) .. ".wav"),100,00)
	self:EmitSound("artorias/c4100_damage1.wav")
end

function ENT:CustomOnMeleeAttack_AfterChecks(TheHitEntity)
	--self:EmitSound(Sound("weapons/melee/knife/knife_slash_" .. math.random(1, 11) .. ".wav"),100,100)
		self:EmitSound("artorias/c4100_damage1.wav")
end
ENT.FindEnemy_UseSphere = true -- Should the SNPC be able to see all around him? (360) | Objects and walls can still block its sight!
ENT.FindEnemy_CanSeeThroughWalls = true -- Should it be able to see through walls and objects? | Can be useful if you want to make it know where the enemy is at all times
ENT.NoChaseAfterCertainRange = true -- Should the SNPC not be able to chase when it's between number x and y?
ENT.NoChaseAfterCertainRange_FarDistance = 0 -- How far until it can chase again? | "UseRangeDistance" = Use the number provided by the range attack instead
ENT.NoChaseAfterCertainRange_CloseDistance = 0 -- How near until it can chase again? | "UseRangeDistance" = Use the number provided by the range attack instead
-- Custom
ENT.RunAwayT = 0

ENT.NextCloakT = 0
ENT.Cloaking = false

ENT.SARY = false
ENT.SARY2 = false
ENT.att = false
ENT.att1 = false
ENT.att2 = false
ENT.att3 = false
ENT.att4 = false
ENT.att5 = false
ENT.att6 = false
ENT.att7 = false

ENT.att8 = false
ENT.att9 = false

ENT.here = false

ENT.fireshield = false
ENT.slashing = false

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()

	--timer.Simple(6,function() if IsValid(self) then
		--self.att6 = false
	--end end)
	--self:SetBodygroup(0,2)
	//self:SetMaterial("models/effects/vol_ight001_")
	--self:SetBodygroup(0,2)
self:SetBodygroup(2,1)
--self:SetBodygroup(3,1)
	if GetConVarNumber("vj_npc_noidleparticle") == 0 then
	
	
	
	end

			self.ExtraGunModel1 = ents.Create("prop_physics")
			--self.ExtraGunModel1:SetModel("models/skyrim/akaviri/katana/w_akaviri.mdl")
			--self.ExtraGunModel1:SetModel("models/omni_blade.mdl")
			--self.ExtraGunModel1:SetModel("models/honkai_impact_weapons/arccw/w_verdict.mdl")
			--self.ExtraGunModel1:SetModel("models/scarlet scythe/angelchan/seeleabyss/scythe.mdl")
			--self.ExtraGunModel1:SetModel("models/honkai_impact_weapons/arccw/w_shovel.mdl")
			self.ExtraGunModel1:SetModel("models/energyweapons/weapons/doom/argent_katana.mdl")
			self.ExtraGunModel1:SetLocalPos(self:GetPos())
			//self.ExtraGunModel1:SetPos(self:GetPos())
			self.ExtraGunModel1:SetOwner(self)
			self.ExtraGunModel1:SetParent(self)
			self.ExtraGunModel1:SetLocalAngles(Angle(-120,45,90))
			//self.ExtraGunModel1:Fire("SetParentAttachmentMaintainOffset","anim_attachment_LH")
			self.ExtraGunModel1:Fire("SetParentAttachment","anim_attachment_LH")
			self.ExtraGunModel1:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
			self.ExtraGunModel1:Spawn()
			self.ExtraGunModel1:Activate()
			self.ExtraGunModel1:SetSolid(SOLID_NONE)
			self.ExtraGunModel1:AddEffects(EF_BONEMERGE)
			
			
			
			
			
		
	timer.Simple(0.1,function()
	if IsValid(self) then
	self:SetRenderMode(RENDERMODE_TRANSALPHA) end end)
	

end

function ENT:CustomOnThink()

	
	

if self:Health() < 225000 then
self:SetHealth(self:Health()+ math.random(7,8),0,225000) 
end
--self.FindEnemy_UseSphere = true
--self.FindEnemy_CanSeeThroughWalls = true 
end


ENT.CanLightsaberBlock = false
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
ENT.LightsaberBlock_Angle = 100
ENT.LightsaberBlock_Range = 6000

ENT.CanLightsaberSpin = false
ENT.LightsaberSpin_NextT = 0
ENT.LightsaberSpin_Nexttime = 0.5
ENT.LightsaberSpin_recharge = 2.1
ENT.LightsaberSpin_durationT = 0
ENT.LightsaberSpin_duration = 1.2
ENT.LightsaberSpin_activated = 0
ENT.LightsaberSpin_Range = 60
ENT.LightsaberSpin_AttackRange = 60
ENT.LightsaberSpin_AttackRadius = 150
ENT.LightsaberSpin_Damage = 250
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
ENT.LightsaberModel = "models/weapons/w_saber_1.mdl"

ENT.CanLightsaberThrow = false
ENT.LightsaberThrow_NextT = 0
ENT.LightsaberThrow_Nexttime = 1.5
ENT.LightsaberThrow_recharge = 5
ENT.LightsaberThrow_rangemax = 1000
ENT.LightsaberThrow_rangemin = 160
ENT.LightsaberThrow_attackradius = 75
ENT.LightsaberThrow_damage = 250
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
ENT.LightsaberJump_Nexttime = 0.8
ENT.LightsaberJump_recharge = 2.6
ENT.LightsaberJump_durationT = 0
ENT.LightsaberJump_duration = 5.2
ENT.LightsaberJump_activated = 0
ENT.LightsaberJump_Range = 200
ENT.LightsaberJump_RangeHigh = 600
ENT.LightsaberJump_Height = 120
ENT.LightsaberJump_AttackRange = 350
ENT.LightsaberJump_AttackRadius = 180
ENT.LightsaberJump_Damage = 7500--25750
ENT.LightsaberJump_anim = "vjseq_lowcover_aim_pistol"
ENT.LightsaberJump_Chance = 4
ENT.LightsaberJump_posing = 0
ENT.LightsaberJump_attackT = 0
ENT.LightsaberJump_attacktime = 8
ENT.LightsaberJump_VelFor = 6000
ENT.LightsaberJump_VelUp = 600
ENT.LightsaberJump_oldmovtype = VJ_MOVETYPE_GROUND
ENT.LightsaberJump_oldturn = false
ENT.LightsaberJump_faceenemy = true
ENT.LightsaberJump_posepara = true
ENT.LightsaberJump_meleeface = true
ENT.LightsaberJump_oldgravity = 1
ENT.LightsaberJump_originalfriction = 1
ENT.LightsaberJump_forcejump = 0

function ENT:CustomOnThink_AIEnabled()

/*if self:GetEnemy() != nil then
if self:Health() <= 3760000 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) < 2000 then
if self.att == false then
if !IsValid(self.manha1) && !IsValid(self.manha2) && !IsValid(self.manha3) && !IsValid(self.manha4) && !IsValid(self.manha5) && !IsValid(self.manha6) then
self.att = true
self.att1 = true
self:VJ_ACT_PLAYACTIVITY("signal_advance",true,1,false)
timer.Simple(0.7,function() if IsValid(self) then 

self.manha1 = ents.Create("npc_vj_ds_artorias")
self.manha1:SetPos(self:GetPos() + self:GetUp()*math.random(130,150) +self:GetRight()*150)
self.manha1:SetAngles(self:GetAngles())
self.manha1:Spawn()
self.manha1:SetModelScale(1)
self.manha1:Activate()
self.manha1:SetOwner(self)
self:DeleteOnRemove(self.manha1)
self.manha2 = ents.Create("npc_vj_ds_gwyn")
self.manha2:SetPos(self:GetPos() + self:GetUp()*math.random(130,150) + self:GetForward()*150)
self.manha2:SetAngles(self:GetAngles())
self.manha2:Spawn()
self.manha2:SetModelScale(1)
self.manha2:Activate()
self.manha2:SetOwner(self)
self:DeleteOnRemove(self.manha2)
self.manha3 = ents.Create("npc_vj_ds_ornstein")
self.manha3:SetPos(self:GetPos() + self:GetUp()*math.random(130,150) +self:GetRight()*-150)
self.manha3:SetAngles(self:GetAngles())
self.manha3:Spawn()
self.manha3:SetModelScale(1)
self.manha3:Activate()
self.manha3:SetOwner(self)
self:DeleteOnRemove(self.manha3)

 end end)
 timer.Simple(1.3,function() if IsValid(self) then self.att1 = false end end)
timer.Simple(math.random(25,36),function() if IsValid(self) then self.att = false end end)
end
end
end
end
end*/



if self:GetEnemy() != nil then
if self:Health() <= 130000000 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) < 100 then
if self.att3 == false then
if !IsValid(self.scanner2) then
self.att3 = true
self.GodMode = true

local Rand2 = math.random(0,6)
if Rand2 <= 5 then 
	self:EmitSound("blake/weapons/slashsword" .. math.random(1,7) .. ".wav", 90, 100, 1)
	for x=1, math.random(2,5) do
		self.scanner2 = ents.Create("obj_mute_slash")
		self.scanner2:SetPos(self:GetPos() +self:GetUp()*math.random(0,55) +self:GetForward()*math.random(105,115) +self:GetRight()*math.random(-55,55))
		self.scanner2:SetAngles(self:GetAngles())
		self.scanner2:Spawn()
		self.scanner2:SetParent(self)
		self.scanner2:Activate()
		self.scanner2:SetOwner(self)
		self:DeleteOnRemove(self.scanner2) 
	end
	timer.Simple(1,function() if IsValid(self) then
						self.macheteslash = false
						self.GodMode = false
						end end)
end
if Rand2 == 6 then 		
	for x=1, 15 do
		self.scanner2 = ents.Create("obj_mute_slash")
		self.scanner2:SetPos(self:GetPos() +self:GetUp()*math.random(0,55) +self:GetForward()*math.random(105,115) +self:GetRight()*math.random(-55,55))
		self.scanner2:SetAngles(self:GetAngles())
		self.scanner2:Spawn()
		self.scanner2:SetParent(self)
		self.scanner2:Activate()
		self.scanner2:SetOwner(self)
		self:DeleteOnRemove(self.scanner2) 
	end

	timer.Simple(1,function() if IsValid(self) then
						self.macheteslash = false
						self.GodMode = false
						end end)
end


timer.Simple(.3,function() if IsValid(self) then self.att3 = false end end)
end
end
end
end
end



if self:GetEnemy() != nil then
if self:Health() <= 1200000 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) < 4000 then
if self.att5 == false then
if !IsValid(self.scanner21) && !IsValid(self.scanner31) && !IsValid(self.scanner41) && !IsValid(self.scanner51) && !IsValid(self.scanner61) then
self.att5 = true
--self.GodMode = true
timer.Simple(1,function() if IsValid(self) then 
self.scanner21 = ents.Create("obj_dm_dark_mute")
self.scanner21:SetPos(self:GetPos()+ self:GetUp()*50 +self:GetRight()*-50)

self.scanner21:SetAngles(self:GetAngles())
self.scanner21:Spawn()
self.scanner21:Activate()
self.scanner21:SetOwner(self)
self:DeleteOnRemove(self.scanner21) 
end end)

timer.Simple(1,function() if IsValid(self) then 
self.scanner31 = ents.Create("obj_dm_dark_mute")
self.scanner31:SetPos(self:GetPos()+ self:GetUp()*75 +self:GetRight()*-25)

self.scanner31:SetAngles(self:GetAngles())
self.scanner31:Spawn()
self.scanner31:Activate()
self.scanner31:SetOwner(self)
self:DeleteOnRemove(self.scanner31) 
end end)

timer.Simple(1,function() if IsValid(self) then 
self.scanner41 = ents.Create("obj_dm_dark_mute")
self.scanner41:SetPos(self:GetPos()+ self:GetUp()*100 )

self.scanner41:SetAngles(self:GetAngles())
self.scanner41:Spawn()
self.scanner41:Activate()
self.scanner41:SetOwner(self)
self:DeleteOnRemove(self.scanner41) 
end end)

timer.Simple(1,function() if IsValid(self) then 
self.scanner51 = ents.Create("obj_dm_dark_mute")
self.scanner51:SetPos(self:GetPos()+ self:GetUp()*75 +self:GetRight()*25)

self.scanner51:SetAngles(self:GetAngles())
self.scanner51:Spawn()
self.scanner51:Activate()
self.scanner51:SetOwner(self)
self:DeleteOnRemove(self.scanner51) 
end end)

timer.Simple(1,function() if IsValid(self) then 
self.scanner61 = ents.Create("obj_dm_dark_mute")
self.scanner61:SetPos(self:GetPos()+ self:GetUp()*50 +self:GetRight()*50)

self.scanner61:SetAngles(self:GetAngles())
self.scanner61:Spawn()
self.scanner61:Activate()
self.scanner61:SetOwner(self)
self:DeleteOnRemove(self.scanner61) 
end end)

--timer.Simple(2,function() if IsValid(self) then
	--					self.macheteslash = false
		--				self.GodMode = false
			--			end end)
timer.Simple(math.random(5,6),function() if IsValid(self) then self.att5 = false end end)
end
end
end
end
end



if self:GetEnemy() != nil && self.here == false then
self.here = true
local effect = ents.Create("info_particle_system")
	effect:SetKeyValue("effect_name","[5]black_hole_mmicro")
	effect:SetPos(self:GetPos()+ self:GetUp()*50 +self:GetRight()*-50)
	effect:SetParent(self)
	effect:SetAngles(self:GetAngles())
	effect:Spawn()
	effect:Activate()
	effect:Fire("Start","",0)

local effect = ents.Create("info_particle_system")
	effect:SetKeyValue("effect_name","[5]black_hole_mmicro")
	effect:SetPos(self:GetPos()+ self:GetUp()*75 +self:GetRight()*-25)
	effect:SetParent(self)
	effect:SetAngles(self:GetAngles())
	effect:Spawn()
	effect:Activate()
	effect:Fire("Start","",0)
	
	local effect = ents.Create("info_particle_system")
	effect:SetKeyValue("effect_name","[5]black_hole_mmicro")
	effect:SetPos(self:GetPos()+ self:GetUp()*100)
	effect:SetParent(self)
	effect:SetAngles(self:GetAngles())
	effect:Spawn()
	effect:Activate()
	effect:Fire("Start","",0)
	
 local effect = ents.Create("info_particle_system")
	effect:SetKeyValue("effect_name","[5]black_hole_mmicro")
	effect:SetPos(self:GetPos()+ self:GetUp()*75 +self:GetRight()*25)
	effect:SetParent(self)
	effect:SetAngles(self:GetAngles())
	effect:Spawn()
	effect:Activate()
	effect:Fire("Start","",0)
	
	
local effect = ents.Create("info_particle_system")
	effect:SetKeyValue("effect_name","[5]black_hole_mmicro")
	effect:SetPos(self:GetPos()+ self:GetUp()*50 +self:GetRight()*50)
	effect:SetParent(self)
	effect:SetAngles(self:GetAngles())
	effect:Spawn()
	effect:Activate()
	effect:Fire("Start","",0)




end




if self:GetEnemy() != nil then
if self:Health() <= 1200000 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) > 1000 then
if self.att2 == false then
if !IsValid(self.scanner211) && !IsValid(self.scanner31) && !IsValid(self.scanner41) && !IsValid(self.scanner51) && !IsValid(self.scanner61) then
self.att2 = true
--self.GodMode = true
--timer.Simple(1,function() if IsValid(self) then 
local effect = ents.Create("info_particle_system")
	effect:SetKeyValue("effect_name","ds3_cinder_spear_lightning")
	effect:SetPos(self:GetPos()+ self:GetUp()*40+ self:GetForward()*20)
	effect:SetParent(self)
	effect:SetAngles(self:GetAngles())
	effect:Spawn()
	effect:Activate()
	effect:Fire("Start","",0)
	effect:Fire("Kill","",1)
timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner211 = ents.Create("obj_mute_great_lightening")
self.scanner211:SetPos(self:GetPos()+ self:GetUp()*40 +self:GetForward()*20)
self.scanner211:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner211:GetPos())):Angle())
self.scanner211:Spawn()
self.scanner211:Activate()
self.scanner211:SetOwner(self)
self:DeleteOnRemove(self.scanner211) 
end end end)
--end end)

timer.Simple(math.random(7,12),function() if IsValid(self) then self.att2 = false end end)
end
end
end
end
end



if self:GetEnemy() != nil  then
if self.att4 == false then 
	self.att4 = true
	local eyeglow1 = ents.Create("env_sprite")
		eyeglow1:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		eyeglow1:SetKeyValue("scale","0.2")
		eyeglow1:SetKeyValue("rendermode","5")
		eyeglow1:SetKeyValue("rendercolor","67 0 255")
		eyeglow1:SetKeyValue("spawnflags","0.1") -- If animated
		eyeglow1:SetParent(self)
		eyeglow1:Fire("SetParentAttachment","eyes",0)
		eyeglow1:Spawn()
		eyeglow1:Activate()
		self:DeleteOnRemove(eyeglow1)
ParticleEffectAttach("combne_las",PATTACH_POINT_FOLLOW,self,3)

ParticleEffectAttach("dskart_ambient_flux_oriented",PATTACH_POINT_FOLLOW,self,1)
ParticleEffectAttach("dskart_ambient_shadows_3",PATTACH_POINT_FOLLOW,self,1)
ParticleEffectAttach("dskart_ambient_shadows_3",PATTACH_POINT_FOLLOW,self,1)

end

if self:GetPos():Distance(self:GetEnemy():GetPos()) < 120 then
if self.att7 == false then
	self.att7 = true
	local effect = ents.Create("info_particle_system")
	effect:SetKeyValue("effect_name","ds3_friede_bf_scythe")
	effect:SetPos(self:GetPos()+ self:GetUp()*50+ self:GetForward()*50)
	effect:SetParent(self)
	effect:SetAngles(self:GetAngles())
	effect:Spawn()
	effect:Activate()
	effect:Fire("Start","",0)
	effect:Fire("Kill","",2.6)
	self:DeleteOnRemove(effect)
	
	--for x = 1, 15 do
	--self:EmitSound("FLAMETHROWER_Medium_Heavy_Single_01.mp3")
		timer.Simple(.2,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(.4,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(.6,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(.8,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(1,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(1.2,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(1.4,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(1.6,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(1.8,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(2,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(2.2,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(2.4,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
		timer.Simple(2.6,function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*15,150,math.random(2860,3060),DMG_DIRECT,true,true)
		end end)
	--end

	
	
timer.Simple(math.random(5,7),function() if IsValid(self) then self.att7 = false end end)
	
	
end
end 


if  self.att6 == false then
	self.fireshield = true
	self.att6 = true
	timer.Simple(0,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(.5,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(1,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(1.5,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(2,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(2.5,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(3,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(3.5,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(4,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(4.5,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(5,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(5.5,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(6,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
	end end)
	timer.Simple(6.5,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
		self.fireshield = false
	end end)
	timer.Simple(7,function() if IsValid(self) then
		ParticleEffectAttach("ds3_friede_bf_super",PATTACH_POINT_FOLLOW,self,0)
		util.VJ_SphereDamage(self,self,self:GetPos(),350,math.random(2460,2660),DMG_DIRECT,true,true)
		self.fireshield = false
	end end)



	

timer.Simple(math.random(15,20),function() if IsValid(self) then self.att6 = false end end)
end


if self:GetPos():Distance(self:GetEnemy():GetPos()) < 250 then
if self.att8 == false then
	self.att8 = true
	self:EmitSound("blake/weapons/slashsword" .. math.random(1,7) .. ".wav", 90, 100, 1)
	for x=1, 3 do
		util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(8500,8700),DMG_SHOCK,true,true)
		self.scanner2 = ents.Create("obj_mute_lightening")
		self.scanner2:SetPos(self:GetPos() +self:GetUp()*math.random(5,45) +self:GetForward()*math.random(-55,55) +self:GetRight()*math.random(-55,55))
		self.scanner2:SetAngles(self:GetAngles())
		self.scanner2:Spawn()
		self.scanner2:SetParent(self)
		self.scanner2:Activate()
		self.scanner2:SetOwner(self)
		self:DeleteOnRemove(self.scanner2) 
	end
	
	
	
timer.Simple(math.random(2,4),function() if IsValid(self) then self.att8 = false end end)
	
	
end
end 


if self:GetPos():Distance(self:GetEnemy():GetPos()) < 200 then
if self.att9 == false then
	self.att9 = true
	self:EmitSound("blake/weapons/slashsword" .. math.random(1,7) .. ".wav", 90, 100, 1)
	for x=1, 4 do
		util.VJ_SphereDamage(self,self,self:GetPos(),300,math.random(8550,8700),DMG_DIRECT,true,true)
		self.scanner2 = ents.Create("obj_mute_fire")
		self.scanner2:SetPos(self:GetPos()+ self:GetUp()*math.random(5,45) + self:GetRight()*math.random(-55,55) +self:GetForward()*math.random(-55,55))
		self.scanner2:SetAngles(self:GetAngles())
		self.scanner2:Spawn()
		self.scanner2:Activate()
		self.scanner2:SetOwner(self)
		self:DeleteOnRemove(self.scanner2) 
		
	end
	
	
	
timer.Simple(math.random(4,5),function() if IsValid(self) then self.att9 = false end end)
	
	
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




function ENT:CustomOnTakeDamage_BeforeImmuneChecks(dmginfo)

	dmginfo:ScaleDamage(0.45)

	local Rand2 = math.random(0,9)
	if self.fireshield == true then
		dmginfo:ScaleDamage(0)
	elseif Rand2 == 5 then 
		dmginfo:ScaleDamage(0)
		self.scanner2 = ents.Create("obj_mute_slash")
		self.scanner2:SetPos(self:GetPos() +self:GetUp()*math.random(0,55) +self:GetForward()*math.random(105,115) +self:GetRight()*math.random(-55,55))
		self.scanner2:SetAngles(self:GetAngles())
		self.scanner2:Spawn()
		self.scanner2:SetParent(self)
		self.scanner2:Activate()
		self.scanner2:SetOwner(self)
		self:DeleteOnRemove(self.scanner2) 
	else
		dmginfo:ScaleDamage(0.40)
	end

 end

/*-----------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/