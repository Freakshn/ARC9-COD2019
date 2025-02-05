AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "Model 680"

SWEP.Class = "Shotgun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "XRK",
    ["Caliber"] = "12-gauge",
    ["Weight (Loaded)"] = "3.2 kg",
    ["Projectile Weight"] = "493 gr",
    ["Muzzle Velocity"] = "1,433.73 ft/s",
    ["Muzzle Energy"] = "3,051 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Reliable, well-rounded 12 gauge pump-action shotgun.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_model680.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "000000000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_model680.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-5, 3, 0),
    TPIKAng = Angle(-10, 3, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 103 -- Damage done at point blank range
SWEP.DamageMin = 40 -- Damage done at maximum range

SWEP.DistributeDamage = true

SWEP.Num = 6

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 500
SWEP.RangeMax = 3000

SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1410.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

SWEP.RicochetChance = 0

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.ForceStandardCrosshair = true

SWEP.ManualAction = true
SWEP.NoLastCycle = true

SWEP.ManualAction = true
SWEP.ManualActionNoLastCycle = true

-------------------------- FIREMODES

SWEP.RPM = 175

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 8

SWEP.RecoilSeed = 65947

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 4

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2.5
SWEP.VisualRecoilUp = 1
SWEP.VisualRecoilSide = -0.1

SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 55

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 30
SWEP.VisualRecoilDampingConstSights = 50
SWEP.VisualRecoilSpringMagnitude = 1

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

-- SWEP.Spread = 0.035

-- SWEP.SpreadAddRecoil = 0.02 -- Applied per unit of recoil.

-- SWEP.SpreadAddSights = 0.5
-- SWEP.SpreadAddMove = 0.055
-- --SWEP.SpreadAddMidAir = 0
-- SWEP.SpreadAddHipFire = 0.065
-- SWEP.SpreadMultHipFire = 1
-- SWEP.SpreadAddCrouch = -0.004
-- SWEP.SpreadAddSightsMove = -0.1

SWEP.Spread = 300 * ARC9.MOAToAcc
SWEP.SpreadAddRecoil = 0.02
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0.01
SWEP.DispersionSpreadAddHipFire = 0.02
--SWEP.DispersionSpreadMultMove = 1.5
--SWEP.DispersionSpreadAddMove = 0.015

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.255

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.18, -2.5, 0.4),
    Ang = Angle(0.95, 1, -5),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, -0.5)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-0.8, -0.1, -0.9)
SWEP.MovingAng = Angle(-0.4, 0.1, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0.6, 0.3, -5)

SWEP.PeekPos = Vector(-1, 1.5, -3.2)
SWEP.PeekAng = Angle(0, 0.4, -45)

SWEP.CustomizeAng = Angle(90, 0, 2)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 15, 3)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_shotgun_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_origin12.mdl"
SWEP.ShellSounds = {
    "arc9/casings/casing_12ga_1.wav",
    "arc9/casings/casing_12ga_2.wav",
    "arc9/casings/casing_12ga_3.wav",
    "arc9/casings/casing_12ga_4.wav",
    "arc9/casings/casing_12ga_1.wav",
    "arc9/casings/casing_12ga_2.wav",
    "arc9/casings/casing_12ga_3.wav",
    "arc9/casings/casing_12ga_4.wav",
    "arc9/casings/casing_12ga_1.wav"
}
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.3
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true
SWEP.EjectDelay = 0.15

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.ShotgunReload = true

--SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_50gs_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineAng = Angle(0, -90, 0)
SWEP.DropMagazineQCA = 4

-------------------------- SOUNDS

local path = "weapons/cod2019/model680/"
local path2 = "weapons/cod2019/m13/"

SWEP.ShootSound = "COD2019.Model680.Fire"
SWEP.ShootSoundIndoor = "COD2019.Model680.Fire"

SWEP.ShootSoundSilenced = "COD2019.Model680.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Model680.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_Shotgun.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_LMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Shotgun2.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_ShotgunSUP.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sh_romeo870_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sh_romeo870_ads_down.ogg"

SWEP.HideBones  = {
    [1] = "j_shell",
    [2] = "j_shell_fired",
}

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["cycle"] = {
        Source = "pump",
		--EjectAt = 0.2,
		MinProgress = 0.6,
		FireASAP = true,
        EventTable = {
            {s = "COD2019.Model680.Rechamber_A", t = 0},
			{s = "COD2019.Model680.Rechamber_B", t = 0.23},
        },
    },
    ["reload_start"] = {
        Source = "reload_start",
		RestoreAmmo = 1,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0/30},
			{s = path .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 16/30},
        },
    },
    ["reload_insert"] = {
        Source = "reload_loop",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_reload_loop_loadportstart.ogg", t = 0/30},
			{s = path .. "wfoly_sh_romeo870_reload_loop_loadportend.ogg", t = 9/30},
            {s = "COD2019.Model680.ShellIn", t = 10/30},
        },
    },
    ["reload_finish"] = {
        Source = "reload_end",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_reload_end_turnover.ogg", t = 3/30},
        },
    },
    ["reload_finish_empty"] = {
        Source = "reload_end_empty",
		EjectAt = 0.4,
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_reload_empty_start_twist.ogg", t = 0/30},
            {s = "COD2019.Model680.Rechamber_A", t = 8/30},
			{s = "COD2019.Model680.Rechamber_B", t = 15/30},
            {s = path .. "wfoly_sh_romeo870_reload_empty_start_end.ogg", t = 14/30},
            
        },
    },
    ["reload_start_fast"] = {
        Source = "reload_start_fast",
		RestoreAmmo = 1,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_reload_start_fast_twist.ogg", t = 0},
            {s = path .. "wfoly_sh_romeo870_reload_start_fast_shellin_01.ogg", t = 0.5},
        },
    },
    ["reload_insert_fast"] = {
        Source = "reload_loop_fast",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_reload_loop_loadportstart.ogg", t = 0},
            {s = "COD2019.Model680.ShellIn", t = 0.267},
        },
    },
    ["reload_finish_fast"] = {
        Source = "reload_end_fast",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_reload_end_fast_twist.ogg", t = 0/30},
			{s = path .. "wfoly_sh_romeo870_reload_end_fast_shoulder.ogg", t = 16/30},
        },
    },
    ["reload_finish_empty_fast"] = {
        Source = "reload_end_empty_fast",
		EjectAt = 0.4,
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_reload_end_fast_twist.ogg", t = 0/30},
			{s = "COD2019.Model680.Rechamber_A", t = 10/30},
			{s = "COD2019.Model680.Rechamber_B", t = 17/30},
        },
    },
    ["reload"] = {
        Source = "reload_mag_short",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 1.1,
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
			{s = path .. "wfoly_sh_romeo870_caldb_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_magout.ogg", t = 21/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_magup.ogg", t = 25/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_maghit.ogg", t = 55/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_magin.ogg", t = 59/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_end.ogg", t = 63/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_mag_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 1.1,
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_rechamber_v2_01a.ogg", t = 3/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_raise.ogg", t = 15/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_magout.ogg", t = 27/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_magup.ogg", t = 45/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_maghit.ogg", t = 60/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_magin.ogg", t = 65/30},
			{s = path .. "wfoly_sh_romeo870_rechamber_v2_02a.ogg", t = 83/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_end.ogg", t = 84/30},
        },
    },
    ["reload_mag_fast"] = {
        Source = "reload_mag_fast_short",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.6,
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
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_magout.ogg", t = 10/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_magup.ogg", t = 20/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_magin.ogg", t = 30/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_end.ogg", t = 45/30},
        },
    },
    ["reload_mag_empty_fast"] = {
        Source = "reload_mag_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.8,
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
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_rechamber_v2_01a.ogg", t = 3/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_magout.ogg", t = 19/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_magup.ogg", t = 32/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_magin.ogg", t = 38/30},
			{s = path .. "wfoly_sh_romeo870_rechamber_v2_02a.ogg", t = 55/30},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_end.ogg", t = 59/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_raise_first_lift.ogg", t = 0/30},
			{s = path .. "wfoly_sh_romeo870_raise_first_chamber_e.ogg", t = 4/30},
			{s = path .. "wfoly_sh_romeo870_raise_first_shoulder.ogg", t = 18/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_drop.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2,
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
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sh_romeo870_inspect_02.ogg", t = 41/30},
			{s = path .. "wfoly_sh_romeo870_inspect_03.ogg", t = 69/30},
			{s = path .. "wfoly_sh_romeo870_inspect_04.ogg", t = 100/30},
			{s = path .. "wfoly_sh_romeo870_inspect_05.ogg", t = 126/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
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

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("shot_mag") then
        return "reload_mag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("shot_mag") then 
        return "reload_mag_empty_fast"
--------------------------------------------------------------
    -- elseif anim == "reload" and wep:HasElement("shot_mag") then 
        -- return "reload_mag"
    -- elseif anim == "reload_empty" and wep:HasElement("shot_mag") then 
        -- return "reload_mag_empty"
--------------------------------------------------------------
    elseif anim == "reload_start" and wep:HasElement("perk_speedreload") then
        return "reload_start_fast"
    elseif anim == "reload_insert" and wep:HasElement("perk_speedreload") then 
        return "reload_insert_fast"
    elseif anim == "reload_finish" and wep:HasElement("perk_speedreload") then 
        return "reload_finish_fast"
    elseif anim == "reload_finish_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_finish_empty_fast"
    end
end


SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(4, 0, -1.3),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["cod2019_laser_02_cylinde_alt"] = {
    Sights = {
    {
        Pos = Vector(-0.5, 22, -2.5),
        Ang = Angle(1.9, -0.2, 45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["cod2019_laser_01_cylinde_alt"] = {
    Sights = {
    {
        Pos = Vector(-0.5, 22, -2.5),
        Ang = Angle(1.9, -0.2, 45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["cod2019_laser_03_cylinde_alt"] = {
    Sights = {
    {
        Pos = Vector(-0.5, 22, -2.5),
        Ang = Angle(1.9, -0.2, 45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["pump_rail"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["pump_none"] = {
        Bodygroups = {
            {2,2},
        },
    },
    ["rail_sight_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["front_sight_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {4,1},
            {6,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["tag_laser"] = {
        Bodygroups = {
            {8,1},
        },
    },
    ["barrel_long"] = {
    AttPosMods = { 
	[2] = { Pos = Vector(6, 0, 0), },
	},
    },
	["sight_minidot"] = {
    AttPosMods = { [3] = { Pos = Vector(0.5, 0, -0.1), } }
	}
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,0) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_model680_barrels",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_shot",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic","cod2019_model680_optic"},
        CorrectiveAng = Angle(2, 0.1, 0),
		InstalledElements = {"sight_none"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac_cylinde",
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"tag_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = {"cod2019_grip"},
        Bone = "tag_grip_attach",
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"pump_rail"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = "cod2019_tube",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_adapter"},
		Scale = 1,
    },
    {
        PrintName = "Ammo",
        Bone = "tag_attachments",
        Category = {"cod2019_ammo_sg"},
        Pos = Vector(5, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "tag_attachments",
        Category = {"cod2019_mag","cod2019_model680_mag"},
        Pos = Vector(5, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_shot"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_model680",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.3
SWEP.GripPoseParam2 = 0.7
SWEP.CodAngledGripPoseParam = 0
SWEP.CodStubbyGripPoseParam = 8
SWEP.CodStubbyTallGripPoseParam = 22