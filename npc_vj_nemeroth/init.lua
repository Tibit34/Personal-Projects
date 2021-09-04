AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/nemeroth_chaos_lord1_npc.mdl"} -- Leave empty if using more than one model 
ENT.StartHealth = 800000
ENT.MoveType = MOVETYPE_STEP
ENT.HullType = HULL_HUMAN
ENT.HullSizeNormal = false -- set to false to cancel out the self:SetHullSizeNormal()

ENT.VJ_NPC_Class = {"Black Legion"} 
--ENT.VJ_NPC_Class = {"CLASS_UNITED_STATES_FRIENDLY","CLASS_CLONE_TROOPER_FRIENDLY"}
ENT.BloodParticle = {"blood_impact_red_01"} -- Particle that the SNPC spawns when it's damaged
ENT.BloodDecal = {"Blood"} -- Leave blank for none | Commonly used: Red = Blood, Yellow Blood = YellowBlood
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.AnimTbl_MeleeAttack = {"melee_gunhit","swing"} -- Melee Attack Animations
--ENT.AnimTbl_MeleeAttack = {"combo1"}
ENT.MeleeAttackDistance = 70 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 75 -- How far does the damage go?
ENT.TimeUntilMeleeAttackDamage = 0 -- This counted in seconds | This calculates the time until it hits something
ENT.NextAnyAttackTime_Melee = 3 -- How much time until it can use a attack again? | Counted in Seconds
ENT.MeleeAttackDamage =  math.random(32000,37000)
ENT.DisableWeapons = false
ENT.FootStepTimeRun = 0.3 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.3 -- Next foot step sound when it is walking
ENT.WeaponSpread = 0.5



ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_IfVisible = true -- Should it only face the enemy if it's visible?

ENT.SquadName = "japanese" -- Squad name, console error will happen if two groups that are enemy and try to squad!
ENT.HasMeleeAttackKnockBack = true -- If true, it will cause a knockback to its self.enemy
ENT.MeleeAttackKnockBack_Forward1 = math.random(100,350) -- How far it will push you forward | First in math.random
ENT.MeleeAttackKnockBack_Forward2 = math.random(100,350) -- How far it will push you forward | Second in math.random
ENT.MeleeAttackKnockBack_Up1 = math.random(20,200) -- How far it will push you up | First in math.random
ENT.MeleeAttackKnockBack_Up2 = math.random(20,200) -- How far it will push you up | Second in math.random
ENT.MeleeAttackKnockBack_Right1 =  math.random(-80,80)  -- How far it will push you right | First in math.random
ENT.MeleeAttackKnockBack_Right2 = math.random(-80,80) -- How far it will push you right | Second in math.random
ENT.MeleeAttackBleedEnemy = false-- Should the enemy bleed when attacked by melee?


ENT.MeleeAttackAngleRadius = 120 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC

ENT.HasLeapAttack = false



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
ENT.RangeAttackEntityToSpawn = "obj_vj_nemeroth_ability" -- The entity that is spawned when range attacking
	-- ====== Animation Variables ====== --
ENT.AnimTbl_RangeAttack = {"pushplayer"} -- Range Attack Animations
ENT.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.RangeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the range attack animation?
ENT.RangeAttackAnimationDecreaseLengthAmount = 0.1 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.RangeAttackAnimationStopMovement = true -- Should it stop moving when performing a range attack?
	-- ====== Distance Variables ====== --
ENT.RangeDistance = 5750 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 180 -- How close does it have to be until it uses melee?
ENT.RangeAttackAngleRadius = 180 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
	-- ====== Timer Variables ====== --
	-- To use event-based attacks, set this to false:
ENT.TimeUntilRangeAttackProjectileRelease = 0.-- How much time until the projectile code is ran?
ENT.NextRangeAttackTime = 1 -- How much time until it can use a range attack?
ENT.RangeAttackReps = 1 -- How many times does it run the projectile code?
	-- ====== Projectile Spawn Position Variables ====== --






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
self:SetModelScale(2)
	//self:SetMaterial("models/effects/vol_ight001_")
--self:SetVelocity(self:GetForward()*-500 +self:GetUp()*2500)


			
			
		
	timer.Simple(0.1,function()
	if IsValid(self) then
	self:SetRenderMode(RENDERMODE_TRANSALPHA) end end)
 
 --ParticleEffectAttach("dragon_fire_breath",PATTACH_POINT_FOLLOW,self,3)

end



function ENT:CustomOnTakeDamage_BeforeImmuneChecks(dmginfo)


	dmginfo:ScaleDamage(0.60)
	
end
---------------------------------------------------------------------------------------------------------------------------------------------

ENT.att3 = false
ENT.att4 = false

function ENT:CustomOnThink_AIEnabled()
if self:GetEnemy() != nil  then

if self:GetPos():Distance(self:GetEnemy():GetPos()) < 100 then
if self.att3 == false then
	self.att3 = true
	local effect = ents.Create("info_particle_system")
	effect:SetKeyValue("effect_name","[4]jet_v")
	effect:SetPos(self:GetPos()+ self:GetUp()*50+ self:GetForward()*50)
	effect:SetParent(self)
	effect:SetAngles(self:GetAngles())
	effect:Spawn()
	effect:Activate()
	effect:Fire("Start","",0)
	effect:Fire("Kill","",3.2)
	
	for x = 1, 15 do
	--self:EmitSound("FLAMETHROWER_Medium_Heavy_Single_01.mp3")
		timer.Simple(math.Rand(0,3),function() if IsValid(self) then
			util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*50,105,math.random(7760,7860),DMG_BLAST,true,true)
		end end)
	end

	
	
timer.Simple(math.random(3,6),function() if IsValid(self) then self.att3 = false end end)
	
	
end
end 





if self:GetPos():Distance(self:GetEnemy():GetPos()) < 3000 then
if self.att4 == false then
	self.att4 = true
	local effect2 = ents.Create("info_particle_system")
	effect2:SetKeyValue("effect_name","dragon_fire_breath")
	effect2:SetPos(self:GetPos()+ self:GetUp()*50+ self:GetForward()*50)
	effect2:SetParent(self)
	effect2:SetAngles(self:GetAngles())
	effect2:Spawn()
	effect2:Activate()
	effect2:Fire("Start","",0)
	effect2:Fire("Kill","",2.2)
	

	--self:EmitSound("FLAMETHROWER_Medium_Heavy_Single_01.mp3")
	timer.Simple(.2,function() if IsValid(self) then
		util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(20760,20860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*300,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*600,500,math.random(9760,10860),DMG_BLAST,true,true)
	end end)
	
	timer.Simple(.4,function() if IsValid(self) then
		util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(20760,20860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*300,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*600,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*900,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1200,500,math.random(9760,10860),DMG_RADIATION,true,true)
	end end)
	
	timer.Simple(.6,function() if IsValid(self) then
		util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(20760,20860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*300,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*600,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*900,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1200,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1800,500,math.random(9760,10860),DMG_RADIATION,true,true)
	end end)
	
	timer.Simple(.8,function() if IsValid(self) then
		util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(20760,20860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*300,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*600,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*900,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1200,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1800,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2100,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2400,500,math.random(9760,10860),DMG_RADIATION,true,true)
	end end)
	
	timer.Simple(1,function() if IsValid(self) then
		util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(20760,20860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*300,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*600,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*900,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1200,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1800,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2100,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2400,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2700,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(9760,10860),DMG_RADIATION,true,true)
	end end)
	
	timer.Simple(1.2,function() if IsValid(self) then
		util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(20760,20860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*300,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*600,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*900,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1200,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1800,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2100,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2400,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2700,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(9760,10860),DMG_RADIATION,true,true)
	end end)
	
	timer.Simple(1.6,function() if IsValid(self) then
		util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(20760,20860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*300,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*600,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*900,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1200,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1800,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2100,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2400,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2700,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(9760,10860),DMG_RADIATION,true,true)
		end end)
	
	timer.Simple(1.8,function() if IsValid(self) then
		util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(20760,20860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*300,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*600,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*900,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1200,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1800,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2100,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2400,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2700,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(9760,10860),DMG_RADIATION,true,true)
	end end)
	
	timer.Simple(2,function() if IsValid(self) then
		util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(20760,20860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*300,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*600,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*900,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1200,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1800,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2100,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2400,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2700,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(9760,10860),DMG_RADIATION,true,true)
	end end)
	
	timer.Simple(2.2,function() if IsValid(self) then
		util.VJ_SphereDamage(self,self,self:GetPos(),500,math.random(20760,20860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*300,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*600,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*900,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1200,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1500,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*1800,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2100,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2400,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*2700,500,math.random(9760,10860),DMG_RADIATION,true,true)
		util.VJ_SphereDamage(self,self,self:GetPos()+self:GetForward()*3000,500,math.random(9760,10860),DMG_RADIATION,true,true)
	end end)
	

	
	
timer.Simple(math.random(20,35),function() if IsValid(self) then self.att4 = false end end)
	
	
end
end 

end

end




/*-----------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/