AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
--ENT.Model = "models/shadow/Shadow.mdl" -- Leave empty if using more than one model 
--ENT.Model = "models/pgr/drhunter/camu/camu_npc_ex.mdl" -- Leave empty if using more than one model 
ENT.Model = "models/custom/claude_von_riegan_ally.mdl" -- Leave empty if using more than one model 

ENT.StartHealth = 100000
ENT.MoveType = MOVETYPE_STEP
ENT.HullType = HULL_HUMAN
ENT.HullSizeNormal = false -- set to false to cancel out the self:SetHullSizeNormal()
ENT.PlayerFriendly = true -- Makes the SNPC friendly to the player and HL2 Resistance
ENT.FriendsWithAllPlayerAllies = true
ENT.VJ_NPC_Class = {"CLASS_UNITED_STATES_FRIENDLY","CLASS_CLONE_TROOPER_FRIENDLY"}
ENT.BloodParticle = {"blood_impact_red_01"} -- Particle that the SNPC spawns when it's damaged
ENT.BloodDecal = {"Blood"} -- Leave blank for none | Commonly used: Red = Blood, Yellow Blood = YellowBlood
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.AnimTbl_MeleeAttack = {"thrust","swing"} -- Melee Attack Animations
--ENT.AnimTbl_MeleeAttack = {"combo1"}
ENT.MeleeAttackDistance = 50 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 150 -- How far does the damage go?
ENT.TimeUntilMeleeAttackDamage = 0.3 -- This counted in seconds | This calculates the time until it hits something
ENT.NextAnyAttackTime_Melee = 1 -- How much time until it can use a attack again? | Counted in Seconds
ENT.MeleeAttackDamage =  math.random(2100,2250)
ENT.DisableWeapons = false
ENT.FootStepTimeRun = 0.3 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.3 -- Next foot step sound when it is walking
ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_IfVisible = true -- Should it only face the enemy if it's visible?


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


ENT.MeleeAttackAngleRadius = 120 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC

ENT.HasLeapAttack = false

ENT.LeapAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the leap attack animation?
ENT.LeapAttackAnimationDecreaseLengthAmount = 0.2

ENT.AnimTbl_LeapAttack = {"Jump_Holding_Glide"}
ENT.LeapAttackAnimationDelay = 0
 
 


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


ENT.HasRangeAttack = true -- Should the SNPC have a range attack?

ENT.RangeToMeleeDistance = 0 -- How close does it have to be until it uses melee?





function ENT:CustomOnMeleeAttack_BeforeChecks()
	--self:EmitSound(Sound("weapons/melee/knife/knife_slash_" .. math.random(1, 3) .. ".wav"),100,00)
	self:EmitSound("artorias/c4100_damage1.wav")
end

function ENT:CustomOnMeleeAttack_AfterChecks(TheHitEntity)
	--self:EmitSound(Sound("weapons/melee/knife/knife_slash_" .. math.random(1, 11) .. ".wav"),100,100)
		self:EmitSound("artorias/c4100_damage1.wav")
end

-- Custom
ENT.RunAwayT = 0

ENT.NextCloakT = 0
ENT.Cloaking = false

ENT.SARY = false
ENT.SARY2 = false
ENT.att = false
ENT.att1 = false
ENT.att2 = false
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	
	//self:SetMaterial("models/effects/vol_ight001_")
self:SetBodygroup(2,1)
	if GetConVarNumber("vj_npc_noidleparticle") == 0 then
	
	
	
	end

			self.ExtraGunModel1 = ents.Create("prop_physics")
			self.ExtraGunModel1:SetModel("models/aoc_weapon/w_dagger1.mdl")
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
	
	
	self:SetSkin(0)
end




---------------------------------------------------------------------------------------------------------------------------------------------

function ENT:CustomOnThink()

if self:Health() < 100500 then
self:SetHealth(self:Health()+math.random(7,8),0,100500) 
end
self.AnimTbl_Walk = {self:GetSequenceActivity(self:LookupSequence("WalkUnarmed_all"))}
end

function ENT:CustomOnThink_AIEnabled()
	local randattack = math.random(1,10)		
	    if	randattack == 1 then
		self.RangeDistance = 1500
		self.RangeUseAttachmentForPosID = "righthand"
		self.AnimTbl_RangeAttack = {"swing"} -- Range Attack Animations
		self.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
		self.RangeAttackAnimationFaceEnemy = true
		self.RangeAttackEntityToSpawn = "obj_pkninja_knife" -- The entity that is spawned when range attacking
		self.TimeUntilRangeAttackProjectileRelease = 1.2 -- How much time until the projectile code is ran?
		self.NextAnyAttackTime_Range = 0.7 -- How much time until it can use a range attack?
		self.NextRangeAttackTime = 2.2 -- How much time until it can use a range attack?
		self.RangeAttackExtraTimers = {1.3}
		self.RangeToMeleeDistance = 100 -- How close does it have to be until it uses melee?
		self.RangeAttackAngleRadius = 120
		self.RangeAttackPos_Up = math.random(40,60)
		
		elseif	randattack == 2 then
		self.RangeDistance = 1500
		self.RangeUseAttachmentForPosID = "righthand" 
		self.AnimTbl_RangeAttack = {"swing"} -- Range Attack Animations
		self.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
		self.RangeAttackAnimationFaceEnemy = true
		self.RangeAttackEntityToSpawn = "obj_pkninja_knife" -- The entity that is spawned when range attacking
		self.TimeUntilRangeAttackProjectileRelease = 1 -- How much time until the projectile code is ran?
		self.NextAnyAttackTime_Range = 1.7 -- How much time until it can use a range attack?
		self.NextRangeAttackTime = 3.3 -- How much time until it can use a range attack?
		self.RangeAttackExtraTimers = {0.8,0.9,1.1,1.2}
		self.RangeToMeleeDistance = 100 -- How close does it have to be until it uses melee?
		self.RangeAttackAngleRadius = 120
		self.RangeAttackPos_Up = math.random(40,60)
		
		elseif	randattack == 3 then
		self.RangeDistance = 1500
		self.RangeUseAttachmentForPosID = "lefthand"
		self.AnimTbl_RangeAttack = {"swing"} -- Range Attack Animations
		self.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
		self.RangeAttackAnimationFaceEnemy = true
		self.RangeAttackEntityToSpawn = "obj_pkninja_knife" -- The entity that is spawned when range attacking
		self.TimeUntilRangeAttackProjectileRelease = 0.8 -- How much time until the projectile code is ran?
		self.NextAnyAttackTime_Range = 2.7 -- How much time until it can use a range attack?
		self.NextRangeAttackTime = 4.3 -- How much time until it can use a range attack?
		self.RangeAttackExtraTimers = {0.9,1,1.1}
		self.RangeToMeleeDistance = 100 -- How close does it have to be until it uses melee?
		self.RangeAttackAngleRadius = 120
		self.RangeAttackPos_Up = math.random(40,60)
		
		elseif	randattack == 4 then
		self.RangeDistance = 1500
		self.RangeUseAttachmentForPosID = "righthand"
		self.AnimTbl_RangeAttack = {"swing"} -- Range Attack Animations
		self.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
		self.RangeAttackAnimationFaceEnemy = true
		self.RangeAttackEntityToSpawn = "obj_pkninja_knife" -- The entity that is spawned when range attacking
		self.TimeUntilRangeAttackProjectileRelease = 1 -- How much time until the projectile code is ran?
		self.NextAnyAttackTime_Range = 3.7 -- How much time until it can use a range attack?
		self.NextRangeAttackTime = 5.3 -- How much time until it can use a range attack?
		self.RangeAttackExtraTimers = {0.8,0.9,1.1,1.2}
		self.RangeToMeleeDistance = 100 -- How close does it have to be until it uses melee?
		self.RangeAttackAngleRadius = 120
		self.RangeAttackPos_Up = math.random(40,60)
		
		elseif	randattack == 5 then
		self.RangeDistance = 1500
		self.RangeUseAttachmentForPosID = "righthand"
		self.AnimTbl_RangeAttack = {"swing"} -- Range Attack Animations
		self.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
		self.RangeAttackAnimationFaceEnemy = true
		self.RangeAttackEntityToSpawn = "obj_pkninja_knife" -- The entity that is spawned when range attacking
		self.TimeUntilRangeAttackProjectileRelease = 1.2 -- How much time until the projectile code is ran?
		self.NextAnyAttackTime_Range = 0.7 -- How much time until it can use a range attack?
		self.NextRangeAttackTime = 2.2 -- How much time until it can use a range attack?
		self.RangeAttackExtraTimers = {1.3}
		self.RangeToMeleeDistance = 100 -- How close does it have to be until it uses melee?
		self.RangeAttackAngleRadius = 120
		self.RangeAttackPos_Up = math.random(40,60)
		
		elseif	randattack == 6 then
		self.RangeDistance = 1500
		self.RangeUseAttachmentForPosID = "righthand" 
		self.AnimTbl_RangeAttack = {"swing"} -- Range Attack Animations
		self.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
		self.RangeAttackAnimationFaceEnemy = true
		self.RangeAttackEntityToSpawn = "obj_pkninja_knife" -- The entity that is spawned when range attacking
		self.TimeUntilRangeAttackProjectileRelease = 1 -- How much time until the projectile code is ran?
		self.NextAnyAttackTime_Range = 1.7 -- How much time until it can use a range attack?
		self.NextRangeAttackTime = 3.3 -- How much time until it can use a range attack?
		self.RangeAttackExtraTimers = {0.8,0.9,1.1,1.2}
		self.RangeToMeleeDistance = 100 -- How close does it have to be until it uses melee?
		self.RangeAttackAngleRadius = 120
		self.RangeAttackPos_Up = math.random(40,60)
		
		elseif	randattack == 7 then
		self.RangeDistance = 1500
		self.RangeUseAttachmentForPosID = "lefthand"
		self.AnimTbl_RangeAttack = {"swing"} -- Range Attack Animations
		self.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
		self.RangeAttackAnimationFaceEnemy = true
		self.RangeAttackEntityToSpawn = "obj_pkninja_knife" -- The entity that is spawned when range attacking
		self.TimeUntilRangeAttackProjectileRelease = 0.8 -- How much time until the projectile code is ran?
		self.NextAnyAttackTime_Range = 2.7 -- How much time until it can use a range attack?
		self.NextRangeAttackTime = 4.3 -- How much time until it can use a range attack?
		self.RangeAttackExtraTimers = {0.9,1,1.1}
		self.RangeToMeleeDistance = 100 -- How close does it have to be until it uses melee?
		self.RangeAttackAngleRadius = 120
		self.RangeAttackPos_Up = math.random(40,60)
		
		elseif	randattack == 8 then
		self.RangeDistance = 1500
		self.RangeUseAttachmentForPosID = "righthand"
		self.AnimTbl_RangeAttack = {"swing"} -- Range Attack Animations
		self.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
		self.RangeAttackAnimationFaceEnemy = true
		self.RangeAttackEntityToSpawn = "obj_pkninja_knife" -- The entity that is spawned when range attacking
		self.TimeUntilRangeAttackProjectileRelease = 1 -- How much time until the projectile code is ran?
		self.NextAnyAttackTime_Range = 3.7 -- How much time until it can use a range attack?
		self.NextRangeAttackTime = 5.3 -- How much time until it can use a range attack?
		self.RangeAttackExtraTimers = {0.8,0.9,1.1,1.2}
		self.RangeToMeleeDistance = 100 -- How close does it have to be until it uses melee?
		self.RangeAttackAngleRadius = 120
		self.RangeAttackPos_Up = math.random(40,60)
		
		elseif	randattack == 9 then
		self.RangeDistance = 1500
		self.RangeUseAttachmentForPosID = "lefthand"
		self.AnimTbl_RangeAttack = {"swing"} -- Range Attack Animations
		self.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
		self.RangeAttackAnimationFaceEnemy = true
		self.RangeAttackEntityToSpawn = "obj_pkninja_knife" -- The entity that is spawned when range attacking
		self.TimeUntilRangeAttackProjectileRelease = 0.8 -- How much time until the projectile code is ran?
		self.NextAnyAttackTime_Range = 2.7 -- How much time until it can use a range attack?
		self.NextRangeAttackTime = 4.3 -- How much time until it can use a range attack?
		self.RangeAttackExtraTimers = {0.9,1,1.1}
		self.RangeToMeleeDistance = 100 -- How close does it have to be until it uses melee?
		self.RangeAttackAngleRadius = 120
		self.RangeAttackPos_Up = math.random(40,60)
		
		elseif	randattack == 10 then
		self.RangeDistance = 1500
		self.RangeUseAttachmentForPosID = "righthand"
		self.AnimTbl_RangeAttack = {"swing"} -- Range Attack Animations
		self.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
		self.RangeAttackAnimationFaceEnemy = true
		self.RangeAttackEntityToSpawn = "obj_pkninja_knife" -- The entity that is spawned when range attacking
		self.TimeUntilRangeAttackProjectileRelease = 1 -- How much time until the projectile code is ran?
		self.NextAnyAttackTime_Range = 3.7 -- How much time until it can use a range attack?
		self.NextRangeAttackTime = 5.3 -- How much time until it can use a range attack?
		self.RangeAttackExtraTimers = {0.8,0.9,1.1,1.2}
		self.RangeToMeleeDistance = 100 -- How close does it have to be until it uses melee?
		self.RangeAttackAngleRadius = 120
		self.RangeAttackPos_Up = math.random(40,60)
		
		
      end
      
	if self:GetEnemy() != nil then
if self:Health() <= 175000 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) < 30000 then
if self.att2 == false then
if !IsValid(self.scanner2) && !IsValid(self.scanner3) && !IsValid(self.scanner4) && !IsValid(self.scanner5) then
self.att2 = true

timer.Simple(math.random(1,5),function() if IsValid(self) then
if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_pkninja_dart")
self.scanner2:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner2:SetAngles(self:GetAngles())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end end end)

timer.Simple(math.random(1,5),function() if IsValid(self) then
if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_pkninja_dart")
self.scanner2:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner2:SetAngles(self:GetAngles())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end end end)

timer.Simple(math.random(1,5),function() if IsValid(self) then
if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_pkninja_dart")
self.scanner2:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner2:SetAngles(self:GetAngles())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end end end)

timer.Simple(math.random(1,5),function() if IsValid(self) then
if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_pkninja_dart")
self.scanner2:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner2:SetAngles(self:GetAngles())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end end end)

timer.Simple(math.random(1,5),function() if IsValid(self) then
if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_pkninja_dart")
self.scanner2:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner2:SetAngles(self:GetAngles())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end end end)

timer.Simple(math.random(1,5),function() if IsValid(self) then
if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_pkninja_dart")
self.scanner2:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner2:SetAngles(self:GetAngles())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end end end)

timer.Simple(math.random(1,5),function() if IsValid(self) then
if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_pkninja_dart")
self.scanner2:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner2:SetAngles(self:GetAngles())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end end end)

timer.Simple(math.random(1,5),function() if IsValid(self) then
if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_pkninja_dart")
self.scanner2:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner2:SetAngles(self:GetAngles())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end end end)

timer.Simple(math.random(1,5),function() if IsValid(self) then
if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_pkninja_dart")
self.scanner2:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner2:SetAngles(self:GetAngles())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end end end)

timer.Simple(math.random(1,5),function() if IsValid(self) then
if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_pkninja_dart")
self.scanner2:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner2:SetAngles(self:GetAngles())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end end end)

timer.Simple(math.random(1,5),function() if IsValid(self) then
if self:GetEnemy() != nil then
self.scanner2 = ents.Create("obj_pkninja_dart")
self.scanner2:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner2:SetAngles(self:GetAngles())
self.scanner2:Spawn()
self.scanner2:Activate()
self.scanner2:SetOwner(self)
self:DeleteOnRemove(self.scanner2) 
end end end)

timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_pkninja_knife teleport")
self.scanner1:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 


end end end)

timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_pkninja_knife teleport")
self.scanner1:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 


end end end)

timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_pkninja_knife teleport")
self.scanner1:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 


end end end)

timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_pkninja_knife teleport")
self.scanner1:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 


end end end)
timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_pkninja_knife teleport")
self.scanner1:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 


end end end)

timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_pkninja_knife teleport")
self.scanner1:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 


end end end)
timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_pkninja_knife teleport")
self.scanner1:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 


end end end)

timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_pkninja_knife teleport")
self.scanner1:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 


end end end)

timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_pkninja_knife teleport")
self.scanner1:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 


end end end)

timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_pkninja_knife teleport")
self.scanner1:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 


end end end)

timer.Simple(1,function() if IsValid(self) then 
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_pkninja_knife teleport")
self.scanner1:SetPos(self:GetPos()+ self:GetForward()*(self:GetPos():Distance(self:GetEnemy():GetPos())+ math.random(-300,300))+ self:GetUp()*math.random(30,150) +self:GetRight()*math.random(-150,150))
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 


end end end)











timer.Simple(math.random(5,9),function() if IsValid(self) then self.att2 = false end end)
end
end
end
end
end
	  
	  
	  


	
/*	  
	  if self:GetEnemy() != nil then
if self:Health() <= 13000000 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) < 100 then
if self.att == false then
if !IsValid(self.scanner1) && !IsValid(self.scanner2) then
self.att = true

self.GodMode = true
self:EmitSound("blake/weapons/slashsword" .. math.random(1,7) .. ".wav", 90, 100, 1)
for x=1, 10 do
self.scanner1 = ents.Create("obj_death_slash")
self.scanner1:SetPos(self:GetPos() +self:GetUp()*math.random(-5,55) +self:GetForward()*math.random(-55,55) +self:GetRight()*math.random(-55,55))
self.scanner1:SetAngles(self:GetAngles())
self.scanner1:Spawn()
self.scanner1:SetParent(self)
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 
end

timer.Simple(1,function() if IsValid(self) then
						self.macheteslash = false
						self.GodMode = false
						end end)

timer.Simple(math.random(5,6),function() if IsValid(self) then self.att = false end end)
end
end
end
end
end*/
	  
	end

function ENT:CustomOnTakeDamage_BeforeImmuneChecks(dmginfo)


		dmginfo:ScaleDamage(0.45)
	

				/*local Rand2 = math.random(1,50)
				if Rand2 == 10 then 
					 self:VJ_ACT_PLAYACTIVITY(VJ_PICK("FlipBack"),true,1.29)
					self:SetLocalVelocity(self:GetForward()*800+self:GetUp()*180)
				elseif Rand2 == 20 then 
					self:VJ_ACT_PLAYACTIVITY(VJ_PICK("FlipRight"),true,1.29)
					self:SetLocalVelocity(self:GetRight()*800+self:GetUp()*180)
				elseif Rand2 == 30 then
					self:VJ_ACT_PLAYACTIVITY(VJ_PICK("FlipLeft"),true,1.29)
					self:SetLocalVelocity(self:GetRight()*-800+self:GetUp()*180)
				end*/
				
				local Rand2 = math.random(1,10)
		--timer.Create("abab",1,1, function()
		if Rand2 == 10 then
		dmginfo:ScaleDamage(0)
				self:SetPos(self:GetPos(math.random(-145,-15)) + self:GetRight()*math.random(-145,100) + self:GetForward()*math.random(-55,-175))
				
						timer.Simple(0.1, function()
						self:SetPos(self:GetPos(math.random(-15,-175))+ self:GetRight()*math.random(-175,-200) + self:GetForward()*math.random(-45,-105))
						end)
								timer.Simple(0.1, function()
								self:SetPos(self:GetPos(math.random(-145,-15))+ self:GetRight()*math.random(145,200) + self:GetForward()*math.random(245,-75))
								end)
																timer.Simple(0.1, function()
								self:SetPos(self:GetPos(math.random(-45,-15))+ self:GetRight()*math.random(-245,100) + self:GetForward()*math.random(95,-95))
								end)
																timer.Simple(0.1, function()
								self:SetPos(self:GetPos(math.random(-45,-15))+ self:GetRight()*math.random(-50,-160) + self:GetForward()*math.random(45,-175))
								end)
																timer.Simple(0.1, function()
								self:SetPos(self:GetPos(math.random(-45,-15))+ self:GetRight()*math.random(135,-140) + self:GetUp()*75 + self:GetForward()*math.random(-75,-5))
								end)
								--end)

		end
 end
function ENT:CustomOnMeleeAttack_Miss()

	self:SetPos(self:GetPos(math.random(-15,-175))+ self:GetRight()*math.random(-45,150) + self:GetForward()*math.random(-145,175))
		timer.Simple(0.1, function()
				self:SetPos(self:GetPos(math.random(-145,-15)) + self:GetRight()*math.random(-145,100) + self:GetForward()*math.random(-55,-175))
				end)
						timer.Simple(0.1, function()
						self:SetPos(self:GetPos(math.random(-15,-175))+ self:GetRight()*math.random(-175,-200) + self:GetForward()*math.random(-45,-105))
						end)
								timer.Simple(0.1, function()
								self:SetPos(self:GetPos(math.random(-145,-15))+ self:GetRight()*math.random(145,200) + self:GetForward()*math.random(245,-75))
								end)
																timer.Simple(0.1, function()
								self:SetPos(self:GetPos(math.random(-45,-15))+ self:GetRight()*math.random(-245,100) + self:GetForward()*math.random(95,-95))
								end)
																timer.Simple(0.1, function()
								self:SetPos(self:GetPos(math.random(-45,-15))+ self:GetRight()*math.random(-50,-160) + self:GetForward()*math.random(45,-175))
								end)
																timer.Simple(0.1, function()
								self:SetPos(self:GetPos(math.random(-45,-15))+ self:GetRight()*math.random(135,-140) + self:GetUp()*75 + self:GetForward()*math.random(-75,-5))
								end)
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/