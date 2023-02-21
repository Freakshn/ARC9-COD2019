AddCSLuaFile()

SWEP.Base = "arc9_go_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Submachine Guns"

SWEP.PrintName = "P90"

SWEP.Class = "Submachine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "Belgium",
    ["Manufacturer"] = "FORGE TAC",
    ["Caliber"] = "5.7×28mm FN",
    ["Weight (Loaded)"] = "2.6 kg",
    ["Projectile Weight"] = "27 gr",
    ["Muzzle Velocity"] = "2,350 ft/s",
    ["Muzzle Energy"] = "449 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/SlogoKolt/Arctic/TheOnly8Z/Matsilagi/CturiX",
    Assets = "Counter-Strike: Global Offensive/Call of Duty®: Modern Warfare"
}

SWEP.Description = [[Automatic bullpup submachine gun. A unique top mounted magazine hold carries ample high velocity 5.7 x 28mm ammunition.]]

SWEP.ViewModel = "models/weapons/cod2019/c_smg_p90.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_smg_p90.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-10, 4, 0),
    TPIKAng = Angle(0, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 22 -- Damage done at point blank range
SWEP.DamageMin = 13 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 900 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1512 * 12
SWEP.PhysBulletGravity = 1.3
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 50 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 905

SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    },
    -- {
        -- Mode = 3,
		-- RunawayBurst = true,
		-- PostBurstDelay = 0.25
    -- },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.3

SWEP.RecoilSeed = 6213

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 2 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 0.6
SWEP.VisualRecoilUp = 0.01

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 4

SWEP.SpreadAddHipFire = 0.0012
SWEP.SpreadMultHipFire = 1.5

SWEP.SpreadAddMove = 0.1
SWEP.SpreadAddMidAir = 0.1
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.65

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.09, -4, -0.3),
    Ang = Angle(0, 0, -4),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, -1)
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

SWEP.MovingPos = Vector(0, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 20, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

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

SWEP.MuzzleParticle = "weapon_muzzle_flash_assaultrifle"
SWEP.AfterShotParticle = "barrel_smoke_plume"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/models/weapons/shared/shell_9mm_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.08
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_smg_p90_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/p90/"

SWEP.ShootSound = "COD2019.P90.Fire"
SWEP.ShootSoundSilenced = "COD2019.P90.Silenced_Fire"
SWEP.DistantShootSound = "CSGO.p90.Distance_Fire"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "CSGO.Rifle.Switch_Mode"

SWEP.EnterSightsSound = "COD2019.Iron.In_SMG"
SWEP.ExitSightsSound = "COD2019.Iron.Out_SMG"

SWEP.BulletBones = {
    [1] = "j_bullet_01",
    [2] = "j_bullet_02",
	[3] = "j_bullet_03",
	[4] = "j_bullet_04",
	[5] = "j_bullet_05",
	[6] = "j_bullet_06",
    [7] = "j_bullets_01",
    [8] = "j_bullets_02",
	[9] = "j_bullets_03",
	[10] = "j_bullets_04",
	[11] = "j_bullets_05",
	[12] = "j_bullets_06",
	[13] = "j_bullets_07",
	[14] = "j_bullets_08",
	[15] = "j_bullets_09",
	[16] = "j_bullets_010",
	[17] = "j_bullets_011",
	[18] = "j_bullets_012",
	[19] = "j_bullets_013",
	[20] = "j_bullets_014",
	[21] = "j_bullets_015",
	[22] = "j_bullets_016",
	[23] = "j_bullets_017",
	[24] = "j_bullets_018",
	[25] = "j_bullets_019",
	[26] = "j_bullets_020",
	[27] = "j_bullets_021",
	[28] = "j_bullets_022",
}

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["fire_sights"] = {
        Source = "shoot1_ads",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.8,
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sm_papa90_reload_grabmag.ogg", t = 0/30},
			{s = path .. "wfoly_sm_papa90_reload_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_sm_papa90_reload_arm_down.ogg", t = 11/30},
			{s = path .. "wfoly_sm_papa90_reload_arm_up.ogg", t = 11/30},
			{s = path .. "wfoly_sm_papa90_reload_arm_maghit.ogg", t = 28/30},
			{s = path .. "wfoly_sm_papa90_reload_magin_v2_01.ogg", t = 44/30},
			{s = path .. "wfoly_sm_papa90_reload_magin_v2_02.ogg", t = 49/30},
			{s = path .. "wfoly_sm_papa90_reload_hitmag_01.ogg", t = 60/30},
			{s = path .. "wfoly_sm_papa90_reload_end.ogg", t = 73/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		MagSwapTime = 1.5,
		DropMagAt = 0.8,
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
			{s = path .. "wfoly_sm_papa90_reload_empty_rattle.ogg", t = 0/30},
			{s = path .. "wfoly_sm_papa90_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_sm_papa90_reload_empty_arm_down.ogg", t = 17/30},
			{s = path .. "wfoly_sm_papa90_reload_empty_arm_swing.ogg", t = 24/30},
			{s = path .. "wfoly_sm_papa90_reload_empty_rattle.ogg", t = 28/30},
			{s = path .. "wfoly_sm_papa90_reload_empty_magin_v2_01.ogg", t = 44/30},
			{s = path .. "wfoly_sm_papa90_reload_empty_magin_v2_02.ogg", t = 49/30},
			{s = path .. "wfoly_sm_papa90_reload_empty_hitmag_01.ogg", t = 60/30},
			{s = path .. "wfoly_sm_papa90_reload_empty_chamber_01.ogg", t = 76/30},
			{s = path .. "wfoly_sm_papa90_reload_empty_gunrattle.ogg", t = 77/30},
			{s = path .. "wfoly_sm_papa90_reload_empty_end.ogg", t = 88/30},
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
            {s = path .. "wfoly_sm_papa90_raise_first_start.ogg", t = 0/37},
            {s = path .. "wfoly_sm_papa90_raise_first_charge_01.ogg", t = 9/37},
			{s = path .. "wfoly_sm_papa90_raise_first_end.ogg", t = 15/37},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        EventTable = {
            {s = path .. "wfoly_sm_papa90_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 0.7,
        EventTable = {
            {s = path .. "wfoly_sm_papa90_reload_empty_arm_down.ogg", t = 0/30},
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
            { s = path .. "wfoly_sm_papa90_inspect_01.ogg", t = 0/30 },
			{ s = path .. "wfoly_sm_papa90_inspect_02.ogg", t = 39/30 },
			{ s = path .. "wfoly_sm_papa90_inspect_03.ogg", t = 68/30 },
			{ s = path .. "wfoly_sm_papa90_inspect_04.ogg", t = 94/30 },
			{ s = path .. "wfoly_sm_papa90_inspect_05.ogg", t = 124/30 },
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2", "melee3"},
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
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_Think	= ARC9.COD2019.BlendEmptyP90

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(3.4, 0.1, 0.38),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
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
            {2,2},
        },
    },
    ["top_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["ext_barrel"] = {
    AttPosMods = { 
	[2] = { Pos = Vector(5.2, 0, -0.28), },
	[4] = { Pos = Vector(4, -2.6, 0.05), },
	}	
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then model:SetBodygroup(5,1) end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_p90_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = {"muzzle","muzzle_p90","p90_barrel"},
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(2.5, 0, -0.07),
        Ang = Angle(0, 0, 0),
        Category = {"csgo_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sights"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "csgo_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(0.5, 0, 0.15),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"go_ammo"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = {"cod2019_mag_p90"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Installed = "cod2019_p90_mag_default",
        Integral = "cod2019_p90_mag_default",
    },
    {
        PrintName = "Perk",
        Category = "go_perk"
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_p90",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_p90_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_p90_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_p90_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_p90_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_p90_decal_e.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(-2.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4
SWEP.GripPoseParam2 = 0.5