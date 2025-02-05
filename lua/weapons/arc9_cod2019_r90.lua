AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "R9-0"

SWEP.Class = "Shotgun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "FORGE TAC",
    ["Caliber"] = "12-gauge",
    ["Weight (Loaded)"] = "4.2 kg",
    ["Projectile Weight"] = "493 gr",
    ["Muzzle Velocity"] = "1,300 ft/s",
    ["Muzzle Energy"] = "2,509 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Double barrels provide two rapid shots before each re-chamber.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_r90.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_r90.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-5, 3, 0),
    TPIKAng = Angle(-10, 3, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 36 -- Damage done at point blank range
SWEP.DamageMin = 6 -- Damage done at maximum range

SWEP.Num = 6

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 500 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 3000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1410.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

SWEP.RicochetChance = 0

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 2 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 14 -- Self-explanatory.
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

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 4

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.7

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.3

-------------------------- SPREAD

-- SWEP.Spread = 0.035

-- SWEP.SpreadAddRecoil = 0.02 -- Applied per unit of recoil.

-- --SWEP.SpreadAddMove = 0
-- --SWEP.SpreadAddMidAir = 0
-- SWEP.SpreadAddHipFire = 0.035
-- SWEP.SpreadMultHipFire = 1.15
-- SWEP.SpreadMultSights = 1
-- SWEP.SpreadAddCrouch = -0.004
-- SWEP.SpreadAddSightsMove = -0.1

SWEP.Spread = 200 * ARC9.MOAToAcc
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
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.95, -2, 0.3),
    Ang = Angle(0, 0, -3.5),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(-0.8, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(9, 30, 5)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 15, 3)

SWEP.PeekPos = Vector(-1.2, 1.5, -3.5)
SWEP.PeekAng = Angle(0, 0.4, -45)

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

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.ShotgunReload = true
SWEP.ManualActionChamber = 2

-------------------------- SOUNDS

local path = "weapons/cod2019/r90/"

SWEP.ShootSound = "COD2019.R90.Fire"
SWEP.ShootSoundIndoor = "COD2019.R90.Fire"

SWEP.ShootSoundSilenced = "COD2019.R90.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.R90.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Sniper.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Shotgun2.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_ShotgunSUP.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sh_dpapa12_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sh_dpapa12_ads_down.ogg"

SWEP.HideBones  = {
    [1] = "j_shell",
    [2] = "j_fired_shell",
    [3] = "j_group2_fired_shell02",
    [4] = "j_group2_shell02",
    [5] = "j_group2_shell03",
    [6] = "j_group2_shell04",
    [7] = "j_group2_shell05",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = ""
SWEP.TriggerUpSound = ""

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["cycle"] = {
        Source = "pump",
		EjectAt = 0.2,
		MinProgress = 0.6,
		FireASAP = true,
        EventTable = {
            {s = "COD2019.R90.Rechamber_A", t = 1/30},
			{s = "COD2019.R90.Rechamber_B", t = 5/30},
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_dpapa12_reload_start_rotate.ogg", t = 0/30},
			{s = "COD2019.R90.ShellIn", t = 20/30},
			{s = path .. "wfoly_sh_dpapa12_reload_loop_cloth.ogg", t = 20/30},
        },
    },
    ["reload_insert"] = {
        Source = {"reload_loop"},
		RestoreAmmo = 1,
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
            {s = "COD2019.R90.ShellIn", t = 4/30},
			{s = path .. "wfoly_sh_dpapa12_reload_loop_cloth.ogg", t = 4/30},
			{s = "COD2019.R90.ShellIn", t = 17/30},
			{s = path .. "wfoly_sh_dpapa12_reload_loop_cloth.ogg", t = 17/30},
        },
    },
    ["reload_finish"] = {
        Source = "reload_end",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
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
			{s = path .. "wfoly_sh_dpapa12_reload_empty_end_rotate.ogg", t = 0/30},
        },
    },
    ["reload_finish_empty"] = {
        Source = "reload_end_empty",
		EjectAt = 0.4,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
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
            {s = path .. "wfoly_sh_dpapa12_reload_empty_end_rotate.ogg", t = 0/30},
			{s = "COD2019.R90.Rechamber_Empty", t = 9/30},
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_dpapa12_raise_first_lift.ogg", t = 0/30},
			{s = path .. "wfoly_sh_dpapa12_rechamber_chamber_v3_01a.ogg", t = 14/30},
			{s = path .. "wfoly_sh_dpapa12_rechamber_chamber_v3_02a.ogg", t = 18/30},
			{s = path .. "wfoly_sh_dpapa12_raise_first_end.ogg", t = 26/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.85,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_sh_dpapa12_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_sh_dpapa12_drop.ogg", t = 0/30},
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
            {s = path .. "wfoly_sh_dpapa12_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sh_dpapa12_inspect_02.ogg", t = 42/30},
			{s = path .. "wfoly_sh_dpapa12_inspect_03.ogg", t = 68/30},
			{s = path .. "wfoly_sh_dpapa12_inspect_04.ogg", t = 101/30},
			{s = path .. "wfoly_sh_dpapa12_inspect_05.ogg", t = 127/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2"},
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
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(7, 0, -1.3),
	ModelAngleOffset = Angle(0, 0, -20),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    ["go_holdstyle_1"] = {
    ModelOffset = Vector(0, -0.5, 0.2),
	ModelAngleOffset = Angle(0, 0, 170)
    },
}

SWEP.AttachmentElements = {
    ["base_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["grip"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["pump_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["sight_off"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {4,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,0) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_r90_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_shot",
        Bone = "tag_silencer",
        Pos = Vector(0, -0.68, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
		DuplicateModels = { -- For guns that require duplicating attachment models, e.g. akimbo or guns with 2 mags on model
             {
                 Bone = "tag_silencer",
                 Pos = Vector(0, 0.68, 0),
                 Ang = Angle(0, 0, 0),
             }
        },
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight_off"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_grip_attach",
        Pos = Vector(-0.9, 1.5, 1.4),
        Ang = Angle(0, 0, -90),
		InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = {"cod2019_grip","grip_xm1014"},
        Bone = "tag_grip_attach",
        Pos = Vector(-1.5, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"grip"},
    },
    {
        PrintName = "Ammo",
        Bone = "tag_mag_attach",
        Category = {"cod2019_ammo_sg"},
        Pos = Vector(8, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag"},
        Pos = Vector(8, 0, 1.5),
        Ang = Angle(0, 0, 0),
    },
    {
		PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh_2"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_r90",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_r90_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_r90_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_r90_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_r90_decal_d.mdl",
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
        Pos = Vector(3, 0, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.CodAngledGripPoseParam = 3
SWEP.CodStubbyGripPoseParam = 5
SWEP.CodStubbyTallGripPoseParam = 22
SWEP.GripPoseParam = 0.3
SWEP.GripPoseParam2 = 0