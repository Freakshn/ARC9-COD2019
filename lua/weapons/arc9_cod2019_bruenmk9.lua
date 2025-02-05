AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Light Machine Guns"

SWEP.PrintName = "Bruen Mk9"

SWEP.Class = "Light Machine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "Bruen/Tempus Armament",
    ["Caliber"] = "5.56×45mm NATO",
    ["Weight (Loaded)"] = "10 kg",
    ["Projectile Weight"] = "62 gr",
    ["Muzzle Velocity"] = "3,000 ft/s",
    ["Muzzle Energy"] = "1,680 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[This air-cooled open bolt 5.56 light machine gun features a competitive rate of fire and excellent stability that will dominate the mid to long range battlefield.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_bruenmk9.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_bruenmk9.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-7, 5, -2),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 28 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 7000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 12

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 3000 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 100 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 752

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.5

SWEP.RecoilSeed = 6767

SWEP.RecoilPatternDrift = 0

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.6

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.6

SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 1

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 1
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5

SWEP.SpreadHook = function(self, orig)
    local rec = self:GetRecoilAmount()
    local maxmult = -0.5 -- minimal ever spread mult after this (0.5 = 2x more accurate after many shots)
    local speedofthis = 0.5 -- per shot multiplier, or just speed
    local minshots = 5 -- minimal amount of shoots to make this thing work
	--print(math.max(orig * maxmult, orig * (1 - (rec - minshots) * speedofthis)))
    
    if rec > minshots then

      return  math.max(orig * maxmult, orig * (1 - (rec - minshots) * speedofthis))
   end
end


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.4

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3, -2, 1.1),
    Ang = Angle(0, 0, 3),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(-1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-1, -1, -1)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 3, -4.2)
SWEP.PeekAng = Angle(-0.3, 0, -45)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_rifle_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.06
SWEP.ShellPhysBox = Vector(1, 1, 1)

SWEP.ExtraShellModels = {
    [1] = {
        model = "models/weapons/cod2019/shared/lmg_link.mdl",
        physbox = Vector(1, 1, 1),
        smoke = false
    },
    [2] = {
        model = "models/weapons/cod2019/shared/lmg_link.mdl",
        smoke = false
    }
}

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_bruenmk9_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/bruenmk9/"
local path2 = "weapons/cod2019/m4a1/"
local path3 = "weapons/cod2019/sa86/"

SWEP.ShootSound = "COD2019.BruenMk9.Fire"
SWEP.ShootSoundIndoor = "COD2019.BruenMk9.Fire"

SWEP.ShootSoundSilenced = "COD2019.BruenMk9.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.BruenMk9.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_AR5.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_LMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = "weapons/cod2019/bruenmk9/wfoly_lm_mkilo3_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/bruenmk9/wfoly_lm_mkilo3_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
	[5] = "j_bullet05",
	[6] = "j_bullet06",
	[7] = "j_bullet07",
	[8] = "j_bullet08",
	[9] = "j_bullet09",
	[10] = "j_bullet10",
	[11] = "j_bullet011",
	[12] = "j_bullet012",
	[13] = "j_bullet013",
	[14] = "j_bullet014",
	[15] = "j_bullet015",
	[16] = "j_bullet016",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
    [2] = "j_emptylink01",
    [3] = "j_emptylink02",
    [4] = "j_emptylink03",
}

SWEP.TriggerDelay = 0.1 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.1 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/holger/weap_mgolf36_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/holger/weap_mgolf36_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["fire_smag"] = {
        Source = "shoot1_smag",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		MagSwapTime = 3,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.15,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mkilo3_reload_down.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mkilo3_reload_cover_open.ogg", t = 10/30},
			{s = path .. "wfoly_lm_mkilo3_reload_magout.ogg", t = 24/30},
			{s = path .. "wfoly_lm_mkilo3_reload_magup.ogg", t = 43/30},
			{s = path .. "wfoly_lm_mkilo3_reload_magin_01.ogg", t = 55/30},
			{s = path .. "wfoly_lm_mkilo3_reload_magin_02.ogg", t = 74/30},
			{s = path .. "wfoly_lm_mkilo3_reload_magin_load_belt.ogg", t = 96/30},
			{s = path .. "wfoly_lm_mkilo3_reload_magin_links.ogg", t = 107/30},
			{s = path .. "wfoly_lm_mkilo3_reload_cover_close.ogg", t = 135/30},
			{s = path .. "wfoly_lm_mkilo3_reload_end.ogg", t = 152/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 1.2,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.15,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mkilo3_reload_empty_down.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_charge_pull.ogg", t = 16/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_charge_push.ogg", t = 33/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_up.ogg", t = 39/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_cover_open.ogg", t = 54/30},
			{s = path .. "wfoly_lm_mkilo3_reload_magin_links.ogg", t = 83/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_tray_cover.ogg", t = 97/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_magout.ogg", t = 101/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_magup.ogg", t = 125/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_magin_01.ogg", t = 137/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_magin_02.ogg", t = 155/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_load_belt.ogg", t = 172/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_cover_close.ogg", t = 210/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_end.ogg", t = 226/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mkilo3_reload_fast_up.ogg", t = 1/30},
			{s = path .. "wfoly_lm_mkilo3_reload_fast_cover_open.ogg", t = 8/30},
			{s = path .. "wfoly_lm_mkilo3_reload_fast_magout.ogg", t = 23/30},
			{s = path .. "wfoly_lm_mkilo3_reload_fast_magup.ogg", t = 35/30},
			{s = path .. "wfoly_lm_mkilo3_reload_fast_magin_01.ogg", t = 55/30},
			{s = path .. "wfoly_lm_mkilo3_reload_fast_magin_02.ogg", t = 67/30},
			{s = path .. "wfoly_lm_mkilo3_reload_fast_load_belt.ogg", t = 78/30},
			{s = path .. "wfoly_lm_mkilo3_reload_fast_close_cover.ogg", t = 106/30},
			{s = path .. "wfoly_lm_mkilo3_reload_fast_end.ogg", t = 122/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 1.2,
		MagSwapTime = 2,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.15,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_down.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_charge_pull.ogg", t = 14/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_charge_push.ogg", t = 24/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_mvmnt.ogg", t = 32/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_cover_open.ogg", t = 46/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_magout.ogg", t = 63/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_magup.ogg", t = 83/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_magin_01.ogg", t = 97/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_magin_02.ogg", t = 109/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_load_belt.ogg", t = 124/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_cover_close.ogg", t = 153/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_fast_end.ogg", t = 173/30},
        },
    },
    ["reload_smag"] = {
        Source = "reload_smag",
		MinProgress = 0.8,
		DropMagAt = 0.65,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_up.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_magout.ogg", t = 13/30},
			{s = path2 .. "wpfoly_mike4_reload_lift_v2.ogg", t = 29/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_maghit.ogg", t = 40/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_magin.ogg", t = 45/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_end.ogg", t = 65/30},
        },
    },
    ["reload_smag_empty"] = {
        Source = "reload_smag_empty",
		MinProgress = 0.9,
		DropMagAt = 0.75,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_up.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_magout.ogg", t = 13/30},
			{s = path2 .. "wpfoly_mike4_reload_lift_v2.ogg", t = 29/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_maghit.ogg", t = 43/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_magin.ogg", t = 47/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_magslap.ogg", t = 61/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_charge_pull.ogg", t = 75/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_charge_push.ogg", t = 90/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_end.ogg", t = 102/30},
        },
    },
    ["reload_smag_fast"] = {
        Source = "reload_smag_fast",
		MinProgress = 0.8,
		DropMagAt = 0.65,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_up.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_magout.ogg", t = 9/30},
			{s = path2 .. "wpfoly_mike4_reload_lift_v2.ogg", t = 27/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_maghit.ogg", t = 30/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_magin.ogg", t = 35/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_end.ogg", t = 47/30},
        },
    },
    ["reload_smag_fast_empty"] = {
        Source = "reload_smag_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 0.75,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_up.ogg", t = 2/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_magout.ogg", t = 8/30},
			{s = path2 .. "wpfoly_mike4_reload_lift_v2.ogg", t = 27/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_maghit.ogg", t = 30/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_magin.ogg", t = 35/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_charge_pull.ogg", t = 48/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_charge_push.ogg", t = 61/30},
			{s = path .. "wfoly_lm_mkilo3_reload_empty_smag_end.ogg", t = 107/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_lm_mkilo3_raise_first_up.ogg", t = 0/30},
            {s = path .. "wfoly_lm_mkilo3_raise_first_charge_pull.ogg", t = 22/30},
			{s = path .. "wfoly_lm_mkilo3_raise_first_charge_push.ogg", t = 37/30},
			{s = path .. "wfoly_lm_mkilo3_raise_first_charge_end.ogg", t = 42/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        EventTable = {
            {s = path .. "wfoly_lm_mkilo3_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_lm_mkilo3_drop.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 2.5,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2.5,
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.1,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.3,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.45,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_lm_mkilo3_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mkilo3_inspect_02.ogg", t = 48/30},
			{s = path .. "wfoly_lm_mkilo3_inspect_03.ogg", t = 89/30},
			{s = path .. "wfoly_lm_mkilo3_inspect_04.ogg", t = 123/30},
        },
    },
    ["inspect_smag"] = {
        Source = "lookat01_smag",
		MinProgress = 0.1,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.3,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.45,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_lm_mkilo3_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mkilo3_inspect_02.ogg", t = 48/30},
			{s = path .. "wfoly_lm_mkilo3_inspect_03.ogg", t = 89/30},
			{s = path .. "wfoly_lm_mkilo3_inspect_04.ogg", t = 123/30},
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2"},
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_PrimaryAttack = function(self)
    if self:GetElements()["mag_smag"] then return end

    self:DoEject(1, 2)

    -- if self:Clip1() == self:GetCapacity() then
        -- self:DoEject(2, 2)
    -- end
end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("mag_smag") then 
     model:SetPoseParameter("smag_offset", 1)
    else
     model:SetPoseParameter("smag_offset", 0)
    end
end

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
	
--------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_smag") then
        return "reload_smag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_smag") then 
        return "reload_smag_fast_empty"
    elseif anim == "inspect" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_smag") then 
        return "inspect_smag"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then 
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_smag") then 
        return "reload_smag"
    elseif anim == "reload_empty" and wep:HasElement("mag_smag") then 
        return "reload_smag_empty"
    elseif anim == "inspect"and wep:HasElement("mag_smag") then 
        return "inspect_smag"
--------------------------------------------------------------------------
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(12, -0.5, -0.65),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {4,1},
        },
    },    
	["stock_none"] = {
        Bodygroups = {
            {4,2},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_bruenmk9_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		--InstalledElements = {"sights"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-1.5, -0.5, 0),
        Ang = Angle(0, 0, -90),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-4, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_bruenmk9_barrel","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_adapter"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"cod2019_ammo"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = "cod2019_bruenmk9_mag",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
		PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_bruenmk9",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_bruenmk9_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_bruenmk9_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_bruenmk9_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_bruenmk9_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodStubbyTallGripPoseParam = 8