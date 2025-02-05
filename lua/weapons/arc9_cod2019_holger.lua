AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Light Machine Guns"

SWEP.PrintName = "Holger-26"

SWEP.Class = "Light Machine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "Germany",
    ["Manufacturer"] = "FORGE TAC",
    ["Caliber"] = "5.56×45mm NATO",
    ["Weight (Loaded)"] = "3.63 kg",
    ["Projectile Weight"] = "62 gr",
    ["Muzzle Velocity"] = "3,018 ft/s",
    ["Muzzle Energy"] = "1,700 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[A versatile fully automatic 5.56mm light machine gun. Modular design can be configured for a broad range of engagements.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_holger.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_holger.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-6, 5, -2),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 28 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 7000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 13 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2369 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.25

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 100 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 704

SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
		RPM = 500,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.2

SWEP.RecoilSeed = 142375

SWEP.RecoilPatternDrift = 45

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.6

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilRollSights = 20
SWEP.VisualRecoilPunch = 4
SWEP.VisualRecoilUp = 0.4

SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 25
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.2

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
SWEP.RecoilModifierCap = 2
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.25

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.56, -2, 0.4),
    Ang = Angle(0, 0, 1.5),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(-1, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-0.7, -0.7, -0.7)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1.5, 3, -3.2)
SWEP.PeekAng = Angle(0, 0, -45)

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
SWEP.ShellScale = 0.075
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_holger_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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

local path = "weapons/cod2019/holger/"
local path2 = "weapons/cod2019/kilo141/"
local path3 = "weapons/cod2019/ak47/"

SWEP.ShootSound = "COD2019.Holger.Fire"
SWEP.ShootSoundIndoor = "COD2019.Holger.Fire"

SWEP.ShootSoundSilenced = "COD2019.Holger.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Holger.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_LMG.Outside"
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

SWEP.EnterSightsSound = "weapons/cod2019/ak47/wfoly_ar_akilo47_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/ak47/wfoly_ar_akilo47_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.015 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.015 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/holger/weap_mgolf36_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/holger/weap_mgolf36_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
		MinProgress = 0.8,
		FireASAP = true,
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
			{s = path .. "wfoly_lm_mgolf36_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_drum_out.ogg", t = 21/30},
			{s = path .. "wfoly_lm_mgolf36_reload_arm_up.ogg", t = 44/30},
			{s = path .. "wfoly_lm_mgolf36_reload_drum_hit_well.ogg", t = 58/30},
			{s = path .. "wfoly_lm_mgolf36_reload_drum_in.ogg", t = 73/30},
			{s = path .. "wfoly_lm_mgolf36_reload_drum_smack.ogg", t = 85/30},
			{s = path .. "wfoly_lm_mgolf36_reload_end.ogg", t = 96/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 0.8,
		MinProgress = 0.8,
		FireASAP = true,
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
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_drum_mag_out.ogg", t = 23/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_drum_mag_hit_well.ogg", t = 45/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_drum_mag_in.ogg", t = 75/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_drum_smack.ogg", t = 85/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_bolt_lever.ogg", t = 102/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_charge.ogg", t = 106/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_end.ogg", t = 118/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
		MinProgress = 0.8,
		FireASAP = true,
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
			{s = path .. "wfoly_lm_mgolf36_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_drum_out.ogg", t = 14/30},
			{s = path .. "wfoly_lm_mgolf36_reload_arm_up.ogg", t = 30/30},
			{s = path .. "wfoly_lm_mgolf36_reload_drum_hit_well.ogg", t = 38/30},
			{s = path .. "wfoly_lm_mgolf36_reload_drum_in.ogg", t = 51/30},
			{s = path .. "wfoly_lm_mgolf36_reload_end.ogg", t = 56/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 0.8,
		MinProgress = 0.8,
		FireASAP = true,
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
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_drum_mag_out.ogg", t = 16/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_drum_mag_hit_well.ogg", t = 17/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_drum_mag_in.ogg", t = 50/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_bolt_lever.ogg", t = 63/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_charge.ogg", t = 67/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_end.ogg", t = 79/30},
        },
    },
    ["reload_ar"] = {
        Source = "reload_armag",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
		MinProgress = 0.8,
		FireASAP = true,
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
			{s = path .. "wfoly_lm_mgolf36_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magout.ogg", t = 20/30},
			{s = path .. "wfoly_lm_mgolf36_reload_arm_up.ogg", t = 25/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_hit_mag_well.ogg", t = 42/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magin.ogg", t = 47/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_end.ogg", t = 69/30},
        },
    },
    ["reload_empty_ar"] = {
        Source = "reload_armag_empty",
		MinProgress = 0.9,
		DropMagAt = 0.95,
		MinProgress = 0.8,
		FireASAP = true,
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
                t = 1.15,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magout.ogg", t = 14/30},
			{s = path .. "wfoly_lm_mgolf36_reload_arm_up.ogg", t = 19/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_hit_mag_well.ogg", t = 52/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magin.ogg", t = 57/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_charge.ogg", t = 79/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_end.ogg", t = 96/30},
        },
    },
    ["reload_ar_fast"] = {
        Source = "reload_armag_fast",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
		DropMagAt = 0.6,
		MinProgress = 0.8,
		FireASAP = true,
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
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magout.ogg", t = 9/30},
			{s = path .. "wfoly_lm_mgolf36_reload_arm_up.ogg", t = 14/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_hit_mag_well.ogg", t = 30/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magin.ogg", t = 35/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_end.ogg", t = 53/30},
        },
    },
    ["reload_ar_fast_empty"] = {
        Source = "reload_armag_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 0.8,
		MinProgress = 0.8,
		FireASAP = true,
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
			{s = path .. "wfoly_lm_mgolf36_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magout.ogg", t = 9/30},
			{s = path .. "wfoly_lm_mgolf36_reload_arm_up.ogg", t = 14/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_hit_mag_well.ogg", t = 33/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magin.ogg", t = 38/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_charge.ogg", t = 48/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_end.ogg", t = 67/30},
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
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_lm_mgolf36_raise_first_lift.ogg", t = 0/30},
            {s = path .. "wfoly_lm_mgolf36_raise_first_bolt_pull.ogg", t = 19/30},
			{s = path .. "wfoly_lm_mgolf36_raise_first_bolt_release.ogg", t = 34/30},
			{s = path .. "wfoly_lm_mgolf36_raise_first_down_grab.ogg", t = 41/30},
			{s = path .. "wfoly_lm_mgolf36_raise_first_end.ogg", t = 53/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
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
            {s = path .. "wfoly_lm_mgolf36_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.3,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_lm_mgolf36_drop.ogg", t = 0/30},
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
            {s = path .. "wfoly_lm_mgolf36_inspect_01.ogg", t = 2/30},
			{s = path .. "wfoly_lm_mgolf36_inspect_02.ogg", t = 54/30},
			{s = path .. "wfoly_lm_mgolf36_inspect_03.ogg", t = 115/30},
        },
    },
    ["inspect_ar"] = {
        Source = "lookat01_ar",
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
            {s = path .. "wfoly_lm_mgolf36_ar_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_ar_inspect_02.ogg", t = 71/30},
			{s = path .. "wfoly_lm_mgolf36_ar_inspect_03.ogg", t = 125/30},
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
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["firemode_1"] = {
        Source = "semi_off",
        EventTable = {
            {s = path3 .. "weap_akilo47_selector_off.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_on",
        EventTable = {
            {s = path3 .. "weap_akilo47_selector_on.ogg", t = 0/30},
        },
    },
    ["switchsights"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "wfoly_lm_mgolf36_inspect_02.ogg", t = 0/30},
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("mag_armag") and wep:HasElement("perk_speedreload") then
        return "reload_ar_fast"
    elseif anim == "reload_empty" and wep:HasElement("mag_armag") and wep:HasElement("perk_speedreload") then 
        return "reload_ar_fast_empty"
    elseif anim == "inspect" and wep:HasElement("mag_armag") then 
        return "inspect_ar"
    -------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    -------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_armag") then
        return "reload_ar"
    elseif anim == "reload_empty" and wep:HasElement("mag_armag") then 
        return "reload_empty_ar"
    elseif anim == "inspect" and wep:HasElement("mag_armag") and wep:HasElement("perk_speedreload") then 
        return "inspect_ar"
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(13, -0.5, 0.7),
	ModelAngleOffset = Angle(0, 0, 15),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(1, 0, 0.1),
    },
}

SWEP.AttachmentElements = {
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
    ["stock_retract"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {4,2},
        },
    },
    ["sights_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_holger_barrel",
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
		ExcludeElements = {"barrel_spitfire"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sights_none"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(4, 0, -3),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
		ExcludeElements = {"barrel_spitfire"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-3.5, 0, 0.1),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {"rail_grip"},
		ExcludeElements = {"barrel_spitfire"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"stock_retract","cod2019_holger_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
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
        Category = {"cod2019_holger_mag"},
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
        Category = "cod2019_skins_holger",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_holger_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_holger_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_holger_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_holger_decal_d.mdl",
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
        Bone = "tag_attachments",
        Pos = Vector(3.7, -0.75, -0.7),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4
SWEP.GripPoseParam2 = 0.6
SWEP.CodAngledGripPoseParam = 19
SWEP.CodStubbyGripPoseParam = 1
SWEP.CodStubbyTallGripPoseParam = 16