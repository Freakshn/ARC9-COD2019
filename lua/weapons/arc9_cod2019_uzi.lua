AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Submachine Guns"

SWEP.PrintName = "Uzi"

SWEP.Class = "Submachine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "Israel",
    ["Manufacturer"] = "Cronen",
    ["Caliber"] = "9×19mm Parabellum",
    ["Weight (Loaded)"] = "3.5 kg",
    ["Projectile Weight"] = "124 gr",
    ["Muzzle Velocity"] = "1,300 ft/s",
    ["Muzzle Energy"] = "631 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Fully automatic open bolt submachine gun. Simple, steady, effective.]]

SWEP.ViewModel = "models/weapons/cod2019/c_smg_uzi.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_smg_uzi.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-6.5, 5, -1.5),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 30 -- Damage done at point blank range
SWEP.DamageMin = 17 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 900 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1512 * 12
SWEP.PhysBulletGravity = 1.4
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 32 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 603

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 0,
    },
    {
        Mode = 1,
		PoseParam = 1,
    },
    -- {
        -- Mode = 3,
		-- RunawayBurst = true,
		-- PostBurstDelay = 0.25
    -- },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.2

SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 45

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.5 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.4
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilMultSights = 0.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2.5
SWEP.VisualRecoilUp = 1

SWEP.VisualRecoilMultSights = 0.2
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

-- SWEP.Spread = 0.002
-- SWEP.SpreadSights = 0

-- SWEP.SpreadAddRecoil = 0.01
-- SWEP.SpreadMultRecoil = 1.1
-- SWEP.RecoilModifierCap = 4
-- SWEP.RecoilModifierCapMove = 0.5
-- SWEP.RecoilModifierCapSights = 0

-- SWEP.SpreadAddHipFire = 0.0012
-- SWEP.SpreadMultHipFire = 1.5

-- SWEP.SpreadAddMove = 0.1
-- --SWEP.SpreadAddMidAir = 0
-- SWEP.SpreadAddCrouch = -0.01
-- SWEP.SpreadAddSights = -0.5

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.005
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


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
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.45, -3, 0.9),
    Ang = Angle(0, 0, -3),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-1, -1, -1)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 20, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 3, -3.2)
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

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.085
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_smg_uzi_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/uzi/"

SWEP.ShootSound = "COD2019.Uzi.Fire"
SWEP.ShootSoundIndoor = "COD2019.Uzi.Fire"

SWEP.ShootSoundSilenced = "COD2019.Uzi.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Uzi.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_SMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_SMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_SMG_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_sm_uzulu_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_sm_uzulu_ads_down.ogg"

SWEP.TriggerDelay = 0.15 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.15 -- Time until weapon fires.

SWEP.TriggerDownSound = "COD2019.Uzi.Trigger"
SWEP.TriggerUpSound = path .. "weap_uzulu_disconnector_plr_01.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
	[3] = "j_bullet3",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

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
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_uzulu_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_arm.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_magout_01.ogg", t = 21/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_magin_01.ogg", t = 42/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_shake.ogg", t = 45/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_end.ogg", t = 58/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 0.5,
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
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_magout_01.ogg", t = 12/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_tilt.ogg", t = 12/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_magin_01.ogg", t = 35/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_charge_01.ogg", t = 69/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_arm.ogg", t = 60/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_rattle.ogg", t = 82/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_end.ogg", t = 82/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		--DropMagAt = 0.7,
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
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_uzulu_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_magout_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_tilt.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_magin_01.ogg", t = 27/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_end.ogg", t = 37/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.6,
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
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_magout_01.ogg", t = 12/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_tilt.ogg", t = 12/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_magin_01.ogg", t = 35/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_charge_01.ogg", t = 50/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_arm.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_rattle.ogg", t = 61/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_end.ogg", t = 66/30},
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
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_uzulu_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_arm.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_magout_01.ogg", t = 21/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_magin_01.ogg", t = 42/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_shake.ogg", t = 45/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_end.ogg", t = 58/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
		DropMagAt = 0.5,
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
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_magout_01.ogg", t = 12/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_tilt.ogg", t = 12/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_magin_01.ogg", t = 35/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_charge_01.ogg", t = 69/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_arm.ogg", t = 60/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_rattle.ogg", t = 82/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_end.ogg", t = 82/30},
        },
    },
    ["reload_fast_xmag"] = {
        Source = "reload_fast_xmag",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		--DropMagAt = 0.7,
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
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_uzulu_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_magout_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_tilt.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_magin_01.ogg", t = 27/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_end.ogg", t = 37/30},
        },
    },
    ["reload_fast_xmag_empty"] = {
        Source = "reload_fast_xmag_empty",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.6,
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
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_magout_01.ogg", t = 12/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_tilt.ogg", t = 12/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_magin_01.ogg", t = 35/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_charge_01.ogg", t = 50/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_arm.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_rattle.ogg", t = 61/30},
			{s = path .. "wfoly_plr_sm_uzulu_reload_empty_end.ogg", t = 66/30},
        },
    },
    ["ready"] = {
        Source = "draw",
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
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sm_uzulu_raise_first_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_sm_uzulu_raise_first_stock.ogg", t = 8/30},
			{s = path .. "wfoly_plr_sm_uzulu_raise_first_extend.ogg", t = 9/30},
			{s = path .. "wfoly_plr_sm_uzulu_raise_first_end.ogg", t = 29/30},
        },
    },
    ["ready_nostock"] = {
        Source = "draw_nostock",
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
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sm_uzulu_raise_first_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_sm_uzulu_raise_first_stock.ogg", t = 8/30},
			{s = path .. "wfoly_plr_sm_uzulu_raise_first_extend.ogg", t = 9/30},
			{s = path .. "wfoly_plr_sm_uzulu_raise_first_end.ogg", t = 29/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        EventTable = {
            {s = path .. "wfoly_plr_sm_uzulu_raise_up.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_plr_sm_uzulu_drop_down.ogg", t = 0/30},
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
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sm_uzulu_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_uzulu_inspect_02.ogg", t = 30/30},
			{s = path .. "wfoly_plr_sm_uzulu_inspect_03.ogg", t = 58/30},
			{s = path .. "wfoly_plr_sm_uzulu_inspect_04.ogg", t = 97/30},
			{s = path .. "wfoly_plr_sm_uzulu_inspect_05.ogg", t = 109/30},
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
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_sm_uzulu_selector_off.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_sm_uzulu_selector_on.ogg", t = 0/30},
        },
    },
    ["switchsights"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "wfoly_plr_sm_uzulu_inspect_02.ogg", t = 0/30},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
	
    if anim == "ready" and wep:HasElement("stock_none") then 
        return "ready_nostock"
	end

    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
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
    end
end

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(4, -0.25, 0.1),
	ModelAngleOffset = Angle(0, 0, 30),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.15),
    },
}

SWEP.AttachmentElements = {
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["sights"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_retract"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["stock_none2"] = {
        Bodygroups = {
            {3,3},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["rail_sight"] = {
        Bodygroups = {
            {8,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then model:SetBodygroup(3,1) end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_uzi_barrel",
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
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.7, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"rail_sight"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(0, -0.8, -1.1),
        Ang = Angle(0, 0, -90),
		--InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_tube","stock_retract"},
        Bone = "tag_stock_attach",
        Pos = Vector(0.1, 0, -0.07),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_none"},
		Scale = 1,
    },
    {
        PrintName = "Reciever",
        Category = "cod2019_uzi_reciever",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(0, 0, 0),
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
        Category = {"cod2019_mag"},
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
        Category = "cod2019_skins_uzi",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_uzi_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_uzi_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_uzi_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_uzi_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_attachments",
        Pos = Vector(-4, 0.2, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_attachments",
        Pos = Vector(0, 0.1, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4
SWEP.GripPoseParam2 = 0.7
SWEP.CodAngledGripPoseParam = 4
SWEP.CodStubbyGripPoseParam = 7
SWEP.CodStubbyTallGripPoseParam = 22