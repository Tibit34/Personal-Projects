AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = "models/dizcordum/npc/ebony/ebonymail_vampyr_cape.mdl"-- Leave empty if using more than one model 
ENT.StartHealth = 600000
ENT.MoveType = MOVETYPE_STEP
ENT.HullType = HULL_HUMAN
ENT.HullSizeNormal = false -- set to false to cancel out the self:SetHullSizeNormal()

ENT.VJ_NPC_Class = {"Demon"}
ENT.BloodParticle = {"blood_impact_red_01"} -- Particle that the SNPC spawns when it's damaged
ENT.BloodDecal = {"Blood"} -- Leave blank for none | Commonly used: Red = Blood, Yellow Blood = YellowBlood
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.AnimTbl_MeleeAttack = { "swing"} -- Melee Attack Animations
ENT.IsGuard = true
ENT.MeleeAttackDistance = 5 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 25 -- How far does the damage go?
ENT.TimeUntilMeleeAttackDamage = 0.3 -- This counted in seconds | This calculates the time until it hits something
ENT.NextAnyAttackTime_Melee = 1.3-- How much time until it can use a attack again? | Counted in Seconds
ENT.MeleeAttackDamage = 1000
ENT.DisableWeapons = false
ENT.FootStepTimeRun = 0.3 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.3 -- Next foot step sound when it is walking
ENT.SquadName = "japanese" -- Squad name, console error will happen if two groups that are enemy and try to squad!
ENT.HasMeleeAttackKnockBack = true -- If true, it will cause a knockback to its self.enemy
ENT.MeleeAttackKnockBack_Forward1 = math.random(20,350) -- How far it will push you forward | First in math.random
ENT.MeleeAttackKnockBack_Forward2 = math.random(20,350) -- How far it will push you forward | Second in math.random
ENT.MeleeAttackKnockBack_Up1 = math.random(20,200) -- How far it will push you up | First in math.random
ENT.MeleeAttackKnockBack_Up2 = math.random(20,200) -- How far it will push you up | Second in math.random
ENT.MeleeAttackKnockBack_Right1 =  math.random(-80,80)  -- How far it will push you right | First in math.random
ENT.MeleeAttackKnockBack_Right2 = math.random(-80,80) -- How far it will push you right | Second in math.ra
ENT.MeleeAttackAngleRadius = 120 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
ENT.HasMeleeAttackDSPSound = false -- Applies a DSP (Digital Signal Processor) to the player(s) that got hit
	-- ====== Sound File Paths ====== --

ENT.SoundTbl_MeleeAttack = {"ruby/weapons/slashhit1.wav","ruby/weapons/slashhit2.wav","ruby/weapons/slashhit3.wav","ruby/weapons/slashhit4.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"ruby/weapons/slashhit1.wav","ruby/weapons/slashhit2.wav","ruby/weapons/slashhit3.wav","ruby/weapons/slashhit4.wav"}


ENT.NextSoundTime_Breath_BaseDecide = false -- Let the base decide the next sound time, if it can't it will use the numbers below
ENT.SoundTrackVolume = 0.5
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
ENT.HasLeapAttack = false

ENT.LeapAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the leap attack animation?
ENT.LeapAttackAnimationDecreaseLengthAmount = 0.2

ENT.AnimTbl_LeapAttack = {"Jump_Holding_Glide"}
ENT.LeapAttackAnimationDelay = 0
 
 
ENT.LeapDistance = 4000-- The distance of the leap, for example if it is set to 500, when the SNPC is 500 Unit away, it will jump
ENT.LeapToMeleeDistance = 350 -- How close does it have to be until it uses melee?
ENT.TimeUntilLeapAttackDamage = 0 -- How much time until it runs the leap damage code?
ENT.NextLeapAttackTime = 2 -- How much time until it can use a leap attack?
ENT.LeapAttackVelocityForward = 200 -- How much forward force should it apply?
ENT.LeapAttackVelocityUp = math.random(120,500)  -- How much upward force should it apply?
ENT.LeapAttackVelocityRight = 0 -- How much right force should it apply?
ENT.LeapAttackDamage = 3000



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
ENT.RangeAttackEntityToSpawn = "obj_bm_fire_ebony" -- The entity that is spawned when range attacking
	-- ====== Animation Variables ====== --
ENT.AnimTbl_RangeAttack = {"pushplayer"} -- Range Attack Animations
ENT.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.RangeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the range attack animation?
ENT.RangeAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.RangeAttackAnimationStopMovement = false -- Should it stop moving when performing a range attack?
	-- ====== Distance Variables ====== --
ENT.RangeDistance = 13000 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 0 -- How close does it have to be until it uses melee?
ENT.RangeAttackAngleRadius = 100 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
	-- ====== Timer Variables ====== --
	-- To use event-based attacks, set this to false:
ENT.TimeUntilRangeAttackProjectileRelease = 0 -- How much time until the projectile code is ran?
ENT.NextRangeAttackTime = 1 -- How much time until it can use a range attack?
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
-- Custom
ENT.RunAwayT = 0

ENT.NextCloakT = 0
ENT.Cloaking = false

function ENT:CustomOnMeleeAttack_BeforeChecks()
	self:EmitSound(Sound("weapons/energysword/optre_swing" .. math.random(1, 3) .. ".wav"),100,100)
end

function ENT:CustomOnMeleeAttack_AfterChecks(TheHitEntity)
	self:EmitSound(Sound("weapons/energysword/optre_impact" .. math.random(1, 11) .. ".wav"),100,100)
end

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
		--self:SetSkin(2)
	//self:SetMaterial("models/effects/vol_ight001_")

	if GetConVarNumber("vj_npc_noidleparticle") == 0 then
	
	
	
	end

			self.ExtraGunModel1 = ents.Create("prop_physics")
			--self.ExtraGunModel1:SetModel("models/weapons/w_remilia_spear.mdl")
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
	
		local eyeglow1 = ents.Create("env_sprite")
		eyeglow1:SetKeyValue("model","vj_base/sprites/vj_glow1.vmt")
		eyeglow1:SetKeyValue("scale","0.2")
		eyeglow1:SetKeyValue("rendermode","5")
		eyeglow1:SetKeyValue("rendercolor","255 0 0")
		eyeglow1:SetKeyValue("spawnflags","0.1") -- If animated
		eyeglow1:SetParent(self)
		eyeglow1:Fire("SetParentAttachment","eyes",0)
		eyeglow1:Spawn()
		eyeglow1:Activate()
		self:DeleteOnRemove(eyeglow1)
ParticleEffectAttach("combne_las",PATTACH_POINT_FOLLOW,self,3)
	
end

ENT.SoundTbl_LightsaberBlock = {"lightsabers/deflect1.mp3","lightsabers/deflect2.mp3","lightsabers/deflect3.mp3","lightsabers/deflect4.mp3","lightsabers/deflect5.mp3","lightsabers/deflect6.mp3","lightsabers/deflect7.mp3","lightsabers/deflect8.mp3","lightsabers/deflect9.mp3","lightsabers/deflect10.mp3","lightsabers/deflect11.mp3","lightsabers/deflect12.mp3","lightsabers/deflect13.mp3","lightsabers/deflect14.mp3","lightsabers/deflect15.mp3","lightsabers/deflect16.mp3","lightsabers/deflect17.mp3","lightsabers/deflect18.mp3","lightsabers/deflect19.mp3","lightsabers/deflect20.mp3","lightsabers/deflect1.mp3","lightsabers/deflect21.mp3","lightsabers/deflect1.mp3","lightsabers/deflect22.mp3",}

---------------------------------------------------------------------------------------------------------------------------------------------
ENT.SARY = false
ENT.SARY2 = false
ENT.att = false
ENT.att1 = false
ENT.att2 = false

function ENT:CustomOnThink_AIEnabled()

if self:GetEnemy() != nil then
if self:Health() <= 13000000 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) < 6000 then
if self.att == false then
if !IsValid(self.scanner1) && !IsValid(self.scanner2) then
self.att = true

for x=1, 20 do

timer.Simple(math.Rand(0,1),function() if IsValid(self) then  
local positionOfStorm = self:GetPos()+ self:GetUp()*math.random(3000,3500) +self:GetForward()*math.random(-1000, 3000) + self:GetRight()*math.random(-1500,1500)
smoke = ents.Create("env_smoketrail")
		smoke:SetKeyValue("startsize","375")
		smoke:SetKeyValue("endsize","1250")
		smoke:SetKeyValue("spawnradius","125")
		smoke:SetKeyValue("mindirectedspeed","25")
		smoke:SetKeyValue("maxdirectedspeed","125")
		smoke:SetKeyValue("startcolor", "255 255 255")
		smoke:SetKeyValue("endcolor", "255 255 255")
		smoke:SetKeyValue("opacity","1")
		smoke:SetKeyValue("spawnrate","0")
		smoke:SetKeyValue("lifetime","5")
		smoke:SetAngles(self:GetAngles()+Angle(math.random(15,-75),math.random(-180,180),0))
		smoke:SetPos(positionOfStorm)
		--smoke:SetParent(self)
		smoke:Spawn()
		smoke:Fire("kill","",15)
		
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_vj_lighting_ebony")
self.scanner1:SetPos(positionOfStorm)
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 
end end end)

end


timer.Simple(math.random(1,2),function() if IsValid(self) then self.att = false  end end)
end
end
end
end
end

if self:GetEnemy() != nil then
if self:Health() <= 13000000 then
if self:GetPos():Distance(self:GetEnemy():GetPos()) < 6000 then
if self.att1 == false then
if !IsValid(self.scanner1) && !IsValid(self.scanner2) then
self.att1 = true

for x=1, 20 do

timer.Simple(math.Rand(0,1),function() if IsValid(self) then  
local positionOfRock = self:GetPos()+ self:GetUp()*20 +self:GetForward()*math.random(-2000, 2000) + self:GetRight()*math.random(-1500,1500)
smoke = ents.Create("env_smoketrail")
		smoke:SetKeyValue("startsize","375")
		smoke:SetKeyValue("endsize","1250")
		smoke:SetKeyValue("spawnradius","125")
		smoke:SetKeyValue("mindirectedspeed","25")
		smoke:SetKeyValue("maxdirectedspeed","125")
		smoke:SetKeyValue("startcolor", "255 255 255")
		smoke:SetKeyValue("endcolor", "255 255 255")
		smoke:SetKeyValue("opacity","1")
		smoke:SetKeyValue("spawnrate","0")
		smoke:SetKeyValue("lifetime","5")
		smoke:SetAngles(self:GetAngles()+Angle(math.random(15,-75),math.random(-180,180),0))
		smoke:SetPos(positionOfRock)
		--smoke:SetParent(self)
		smoke:Spawn()
		smoke:Fire("kill","",15)
		
if self:GetEnemy() != nil then
self.scanner1 = ents.Create("obj_small_rock_ebony")
self.scanner1:SetPos(positionOfRock)
self.scanner1:SetAngles(((self:GetEnemy():GetPos()+Vector(0,0,math.random(-25,75)))-(self.scanner1:GetPos())):Angle())
self.scanner1:Spawn()
self.scanner1:Activate()
self.scanner1:SetOwner(self)
self:DeleteOnRemove(self.scanner1) 
end end end)

end


timer.Simple(math.random(1,2),function() if IsValid(self) then self.att1 = false  end end)
end
end
end
end
end

end-------------------------------------------------------------------------------------------------------------------------------



/*-----------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/