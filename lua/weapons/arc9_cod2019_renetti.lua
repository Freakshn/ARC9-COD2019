AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Handguns"

SWEP.PrintName = "Renetti"

SWEP.Class = "Handgun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "Silverfield Ordnance",
    ["Caliber"] = "9×19mm Parabellum",
    ["Weight (Loaded)"] = "1 kg",
    ["Projectile Weight"] = "124 gr",
    ["Muzzle Velocity"] = "1,250 ft/s",
    ["Muzzle Energy"] = "583 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Well rounded semi-auto 9mm pistol. This unassuming sidearm excels in close range combat, and features gunsmithing capabilities unique to the pistol class that permit a variety of engagement styles.]]

SWEP.ViewModel = "models/weapons/cod2019/c_pist_renetti.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = false
SWEP.WorldModelMirror = "models/weapons/cod2019/c_pist_renetti.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-12, 4, -5),
    TPIKAng = Angle(0, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 33 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 600 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.2

SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1300 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 15 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

--SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilMultSights = 0.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.1
SWEP.VisualRecoilRoll = 55
SWEP.VisualRecoilSide = -1/6

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 10
SWEP.VisualRecoilDampingConstSights = 50

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 4
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadAddMove = 0.05
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.015
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.2 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(1.15, 0, 2.65),
    Ang = Angle(0, 0, 20),
    Magnification = 1.15,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, 0, -0.5)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, -25, 0)
SWEP.CustomizePos = Vector(16, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(1, -10, 3)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-2.5, -6, -3.5)
SWEP.PeekAng = Angle(0, 0, -45)

-------------------------- HoldTypes

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_pistol_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.PistolShellSoundsTable
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.06
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_renetti_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/renetti/"

SWEP.ShootSound = "COD2019.Renetti.Fire"
SWEP.ShootSoundIndoor = "COD2019.Renetti.Fire"

SWEP.ShootSoundSilenced = "COD2019.Renetti.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Renetti.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Pistol.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Pistol_Mag_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_pi_mike9_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_pi_mike9_ads_down.ogg"

SWEP.BulletBones = {
	[1] = "j_bullet1",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/renetti/weap_mike9a3_hammer_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/renetti/weap_mike9a3_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
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
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_magrelease.ogg", t = 2/30},
			{s = path .. "wfoly_pi_mike9_reload_magout.ogg", t = 10/30},
			{s = path .. "wfoly_pi_mike9_reload_maghit.ogg", t = 20/30},
			{s = path .. "wfoly_pi_mike9_reload_magin.ogg", t = 28/30},
			{s = path .. "wfoly_pi_mike9_reload_end.ogg", t = 33/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
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
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magout.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magin.ogg", t = 21/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_charge.ogg", t = 37/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 41/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.43,
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
			{s = path .. "wfoly_pi_mike9_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_maghit.ogg", t = 19/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magin.ogg", t = 22/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_end.ogg", t = 28/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.43,
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
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magin.ogg", t = 17/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_charge.ogg", t = 25/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 26/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
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
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_magrelease.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike9_reload_magout.ogg", t = 9/30},
			{s = path .. "wfoly_pi_mike9_reload_maghit.ogg", t = 20/30},
			{s = path .. "wfoly_pi_mike9_reload_magin.ogg", t = 28/30},
			{s = path .. "wfoly_pi_mike9_reload_end.ogg", t = 31/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
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
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magout.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magin.ogg", t = 21/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_charge.ogg", t = 37/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 37/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
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
			{s = path .. "wfoly_pi_mike9_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_maghit.ogg", t = 17/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magin.ogg", t = 20/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_end.ogg", t = 15/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.4,
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
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magin.ogg", t = 17/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_charge.ogg", t = 25/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 25/30},
        },
    },
    ["reload_xmaglrg"] = {
        Source = "reload_xmaglrg",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
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
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_magrelease.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike9_reload_magout.ogg", t = 9/30},
			{s = path .. "wfoly_pi_mike9_reload_maghit.ogg", t = 20/30},
			{s = path .. "wfoly_pi_mike9_reload_magin.ogg", t = 28/30},
			{s = path .. "wfoly_pi_mike9_reload_end.ogg", t = 31/30},
        },
    },
    ["reload_xmaglrg_empty"] = {
        Source = "reload_xmaglrg_empty",
		MinProgress = 0.9,
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
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magout.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magin.ogg", t = 21/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_charge.ogg", t = 37/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 37/30},
        },
    },
    ["reload_xmaglrg_fast"] = {
        Source = "reload_xmaglrg_fast",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
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
			{s = path .. "wfoly_pi_mike9_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_maghit.ogg", t = 17/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magin.ogg", t = 20/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_end.ogg", t = 15/30},
        },
    },
    ["reload_xmaglrg_fast_empty"] = {
        Source = "reload_xmaglrg_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.4,
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
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magin.ogg", t = 17/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_charge.ogg", t = 25/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 25/30},
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
            {s = path .. "wfoly_pi_mike9_raise_first_up.ogg", t = 0/30},
            {s = path .. "wfoly_pi_mike9_raise_first_hammer.ogg", t = 9/30},
			{s = path .. "wfoly_pi_mike9_raise_first_end.ogg", t = 14/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_mike9_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_mike9_drop.ogg", t = 0/30},
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
		NoStatAffectors = true
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		NoStatAffectors = true
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
            {s = path .. "wfoly_pi_mike9_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_inspect_02.ogg", t = 34/30},
			{s = path .. "wfoly_pi_mike9_inspect_03.ogg", t = 58/30},
			{s = path .. "wfoly_pi_mike9_inspect_04.ogg", t = 92/30},
			{s = path .. "wfoly_pi_mike9_inspect_05.ogg", t = 111/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2"},
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    --------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast_empty"
	--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg_fast_empty"
	--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then
        return "reload_fast_empty"
	--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag") then
        return "reload_xmag_empty"
	--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg_empty"
	--------------------------------------------------------------------------
    end
end

-- SWEP.Hook_Think	= function(wep)
--     local vm = wep:GetOwner():GetViewModel()
--     if wep:Clip1() == 0 then
--         vm:SetPoseParameter("empty", 1)
--     else
--         vm:SetPoseParameter("empty", 0)
--     end
	
--     local vm = wep:GetOwner():GetViewModel()
--     local delta = wep:GetSightDelta()
--     local coolilove = math.cos(delta * (math.pi / 2))
--     vm:SetPoseParameter( "aim_blend", Lerp(coolilove, 1, 0) )
-- end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_optic_minireddot1"] = {
    Sights = {
    {
        Pos = Vector(0, 15, -0.7),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 65,
        IgnoreExtra = false
    },
    },
    },
    ["cod2019_optic_minireddot2"] = {
    Sights = {
    {
        Pos = Vector(0, 15, -0.65),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 65,
        IgnoreExtra = false
    },
    },
    },
    ["cod2019_optic_minireddot3"] = {
    Sights = {
    {
        Pos = Vector(0, 15, -0.65),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 65,
        IgnoreExtra = false
    },
    },
    },
    ["cod2019_view_alt_pistol"] = {
    ActivePos = Vector(3.9, -1.5, 1.5),
    ActiveAng = Angle(0, 0, 20),

    MovingPos = Vector(-1,-2,-1),
    MovingAng = Angle(0,0,-8),

    CrouchPos = Vector(-1.2, 0, -1),
    CrouchAng = Angle(0, 0, -10),

    ReloadPos = Vector(0,0,0),
    ReloadAng = Angle(0,0,0)
    },
}

SWEP.AttachmentElements = {
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["rail_sight"] = {
        Bodygroups = {
            {3,1},
        },
    },
	["muzzle_comp"] = {
    AttPosMods = { [2] = { Pos = Vector(-0.2, 0, 0), } }	
	}
}

SWEP.Attachments = {
    {
        PrintName = "Slide",
        DefaultAttName = "Standard slide",
        Category = "cod2019_renetti_slide",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_pistols",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_reflex",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = "cod2019_optic",
        CorrectiveAng = Angle(0, 0, 0),
		Scale = 1,
		InstalledElements = {"rail_sight"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = {"cod2019_tac_pistols","cod2019_grip_pistols"},
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grip",
        DefaultAttName = "Default",
        Category = "cod2019_renetti_grip",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = "go_ammo",
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = "cod2019_mag",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = "View",
        Category = "cod2019_pistols_view"
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_m19",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = "universal_camo",
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/pist_renetti_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/pist_renetti_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/pist_renetti_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/pist_renetti_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.6