AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Akimbos"

SWEP.PrintName = "M19"

SWEP.Class = "Handgun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "Corvus Defense",
    ["Caliber"] = "9×19mm Parabellum",
    ["Weight (Loaded)"] = "1.66 kg",
    ["Projectile Weight"] = "124 gr",
    ["Muzzle Velocity"] = "1,198 ft/s",
    ["Muzzle Energy"] = "536 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Semi-automatic 9mm pistol, excellent stability with a rapid cycle rate.]]

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_m19.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_m19.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-15, 7.5, -15),
    TPIKAng = Angle(-3, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 33 -- Damage done at point blank range
SWEP.DamageMin = 13 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 600 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.2

SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1100 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 2 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 34 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 600 * 2

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

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.1
SWEP.VisualRecoilRoll = 55
SWEP.VisualRecoilSide = -1/6

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 30
SWEP.VisualRecoilDampingConstSights = 50

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.3
SWEP.RecoilModifierCap = 5

SWEP.SpreadAddMove = 0.05
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.01
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = 0.01


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.255

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 60

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

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(1, -10, 3)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "duel"
SWEP.HoldTypeHolstered = "duel"
SWEP.HoldTypeSights = "duel"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

-- SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
-- SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.AnimDraw = false

SWEP.Akimbo = true

function SWEP:SecondaryAttack()
    return self:MeleeAttack()
end

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_pistol_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.MuzzleEffectQCAEvenShot = 2
SWEP.CaseEffectQCA = 4
SWEP.CaseEffectQCAEvenShot = 3
SWEP.AfterShotQCA = 1
SWEP.AfterShotQCAEvenShot = 2

SWEP.CamQCA = 7
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.PistolShellSoundsTable
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.06
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_m19_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 2 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 6
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/m19/"

SWEP.ShootSound = "COD2019.M19.Fire"
SWEP.ShootSoundIndoor = "COD2019.M19.Fire"

SWEP.ShootSoundSilenced = "COD2019.M19.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.M19.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Pistol.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Distant_Pistol_Mag_Sup.Outside"
SWEP.DistantShootSoundSilenced = "Layer_ARSUP.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Layer_ARSUP.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_pi_papa320_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_pi_papa320_ads_down.ogg"

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/m19/weap_papa320_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/m19/weap_papa320_disconnector_plr_01.ogg"


SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
    [2] = "j_mag2_l",
}

SWEP.Animations = {
    ["fire_left"] = {
        Source = "fire_left",
    },
    ["fire_right"] = {
        Source = "fire_right",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
		DropMagAt = 0.35,
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
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magout_01.ogg", t = 2/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 20/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_01.ogg", t = 48/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 51/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_02.ogg", t = 54/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_end.ogg", t = 62/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 62/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 0.35,
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
			{s = path .. "wfoly_plr_pi_papa320_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magout_01.ogg", t = 6/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 11/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_wiggle.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg", t = 50/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 56/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_02.ogg", t = 55/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_charge_01.ogg", t = 72/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_charge_01.ogg", t = 77/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_end.ogg", t = 77/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 77/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magout_01.ogg", t = 2/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 20/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_01.ogg", t = 38/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 41/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_02.ogg", t = 44/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_end.ogg", t = 44/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 45/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 0.35,
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
			{s = path .. "wfoly_plr_pi_papa320_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magout_01.ogg", t = 7/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 12/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_wiggle.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg", t = 43/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 49/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_02.ogg", t = 48/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_charge_01.ogg", t = 65/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_charge_01.ogg", t = 69/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_end.ogg", t = 70/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 70/30},
        },
    },
    ["ready"] = {
        Source = "draw_first",
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
            {s = path .. "wfoly_plr_pi_papa320_raise_first_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_pi_papa320_raise_first_open_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_pi_papa320_raise_first_close_01.ogg", t = 11/30},
			{s = path .. "wfoly_plr_pi_papa320_raise_first_end.ogg", t = 16/30},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_plr_pi_papa320_raise_up.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_papa320_inspect_04.ogg", t = 0/30},
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
		Mult = 1,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 1,
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
            {s = path .. "wfoly_pi_papa320_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_papa320_inspect_02.ogg", t = 34/30},
			{s = path .. "wfoly_pi_papa320_inspect_03.ogg", t = 61/30},
			{s = path .. "wfoly_pi_papa320_inspect_04.ogg", t = 112/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
    --------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    --------------------------------------------------------------------------
    end
end

SWEP.DefaultBodygroups = "00000000000000"

-- SWEP.AttachmentTableOverrides = {
    -- ["arc9_stat_proscreen_main"] = {
    -- ModelOffset = Vector(3, -1.15, -3.55),
	-- ModelAngleOffset = Angle(0, 0, 0),
	-- Scale = 0.9,
    -- },
-- }

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
            {4,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {1,1},
            {3,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,1},
            {5,1},
        },
    },
}
SWEP.Attachments = {
    {
        PrintName = "Slide",
        DefaultAttName = "Standard slide",
        Category = "cod2019_m19_slide",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        DuplicateModels = {
            {
                Bone = "tag_barrel_attach_l",
            }
        },
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
        DuplicateModels = {
            {
                Bone = "tag_silencer_l",
            }
        },
    },
    {
        PrintName = "Optics",
        Bone = "tag_reflex",
        Pos = Vector(1.1, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optics_pistols_alt","eft_optic_small"},
        CorrectiveAng = Angle(0, 0, 0),
		Scale = 1,
		InstalledElements = {"sight_none"},
        DuplicateModels = {
            {
                Bone = "tag_reflex_l",
            }
        },
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac_pistols",
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
        DuplicateModels = {
            {
                Bone = "tag_laser_attach_l",
            }
        },
    },
    {
        PrintName = "Grip",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_stock_attach",
        Pos = Vector(-2.8, 0, 0.2),
        Ang = Angle(0, 0, 180),
		Scale = 1,
        DuplicateModels = {
            {
                Bone = "tag_stock_attach_l",
            }
        },
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
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        DuplicateModels = {
            {
                Bone = "tag_mag_attach_l",
            }
        },
    },
    {
		PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_m19",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m19_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m19_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m19_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m19_decal_d.mdl",
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