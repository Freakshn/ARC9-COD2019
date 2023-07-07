AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "LMGs"

SWEP.PrintName = "M91"

SWEP.Class = "Light Machine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "Germany",
    ["Manufacturer"] = "FSS",
    ["Caliber"] = "7.62×51mm NATO",
    ["Weight (Loaded)"] = "11.2 kg",
    ["Projectile Weight"] = "147 gr",
    ["Muzzle Velocity"] = "2,657 ft/s",
    ["Muzzle Energy"] = "3,125 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Robust light machine gun sacrifices mobility for stability. High caliber sustained fire will neutralize targets at long ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_m91.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_m91.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-7, 5, -2),
    TPIKAng = Angle(-9, -1, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 35 -- Damage done at point blank range
SWEP.DamageMin = 25 -- Damage done at maximum range

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

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.4

SWEP.RecoilSeed = 2433426

SWEP.RecoilPatternDrift = 45

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
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 20
SWEP.VisualRecoilPunch = 1.2
SWEP.VisualRecoilUp = 0
SWEP.VisualRecoilRoll = 1.5
SWEP.VisualRecoilSide = 0

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 1
SWEP.RecoilModifierCapSights = 0


SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.07
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.8 -- How long it takes to go from hip fire to aiming down sights.
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
    Pos = Vector(-4.07, -0.9, 0.6),
    Ang = Angle(0, 0.2, -0.6),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(-1, 0, -1.5)
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
SWEP.CustomizePos = Vector(19, 35, 4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
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

SWEP.MuzzleParticle = "AC_muzzle_rifle"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/lmg_bullet.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 2
SWEP.ShellPhysBox = Vector(1, 1, 1)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_m91_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/m91/"

SWEP.ShootPitchVariation = 10
SWEP.ShootSound = {path .. "weap_kilo121_fire_plr_01.ogg", path .. "weap_kilo121_fire_plr_02.ogg", path .. "weap_kilo121_fire_plr_03.ogg", path .. "weap_kilo121_fire_plr_04.ogg"}
SWEP.ShootSoundSilenced = {path .. "weap_kilo121_fire_silenced_plr_01.ogg", path .. "weap_kilo121_fire_silenced_plr_02.ogg", path .. "weap_kilo121_fire_silenced_plr_03.ogg", path .. "weap_kilo121_fire_silenced_plr_04.ogg"}
SWEP.ShootSoundIndoor = {path .. "weap_kilo121_fire_plr_inside_01.ogg", path .. "weap_kilo121_fire_plr_inside_02.ogg", path .. "weap_kilo121_fire_plr_inside_03.ogg", path .. "weap_kilo121_fire_plr_inside_04.ogg"}
SWEP.ShootSoundSilencedIndoor = {path .. "weap_kilo121_fire_silenced_plr_inside_01.ogg", path .. "weap_kilo121_fire_silenced_plr_inside_02.ogg", path .. "weap_kilo121_fire_silenced_plr_inside_03.ogg", path .. "weap_kilo121_fire_silenced_plr_inside_04.ogg"}

--SWEP.DistantShootSound = "CSGO.NEGEV.Fire.Distance"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "CSGO.Rifle.Switch_Mode"

SWEP.EnterSightsSound = "COD2019.Iron.In_Rifle"
SWEP.ExitSightsSound = "COD2019.Iron.Out_Rifle"

SWEP.BulletBones = {
    [17] = "j_b_01",
    [16] = "j_b_02",
	[15] = "j_b_03",
	[14] = "j_b_04",
	[13] = "j_b_05",
	[12] = "j_b_06",
	[11] = "j_b_07",
	[10] = "j_b_08",
	[9] = "j_b_09",
	[8] = "j_b_10",
	[7] = "j_b_11",
	[6] = "j_b_12",
	[5] = "j_b_13",
	[4] = "j_b_14",
	[3] = "j_b_15",
	[2] = "j_b_16",
	[1] = "j_b_17",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
    [2] = "j_empty_ammo_belt_01",
    [3] = "j_empty_ammo_belt_02",
    [4] = "j_empty_ammo_belt_03",
}

SWEP.TriggerDelay = 0.15 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.15 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/sa87/weap_lima86_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/sa87/weap_lima86_disconnector_plr_01.ogg"

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
			{s = path .. "wfoly_lm_kilo121_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_lm_kilo121_reload_boltopen_01.ogg", t = 23/30},
			{s = path .. "wfoly_lm_kilo121_reload_boltclose_01.ogg", t = 37/30},
			{s = path .. "wfoly_lm_kilo121_reload_lower.ogg", t = 44/30},
			{s = path .. "wfoly_lm_kilo121_reload_coveropen_01.ogg", t = 65/30},
			{s = path .. "wfoly_lm_kilo121_reload_magout_01.ogg", t = 86/30},
			{s = path .. "wfoly_lm_kilo121_reload_boxmag.ogg", t = 110/30},
			{s = path .. "wfoly_lm_kilo121_reload_magin_01.ogg", t = 128/30},
			{s = path .. "wfoly_lm_kilo121_reload_click_01.ogg", t = 151/30},
			{s = path .. "wfoly_lm_kilo121_reload_coverclose_01.ogg", t = 174/30},
			{s = path .. "wfoly_lm_kilo121_reload_end.ogg", t = 201/30},
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
			{s = path .. "wfoly_lm_kilo121_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_boltopen_01.ogg", t = 23/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_boltclose_01.ogg", t = 37/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_lower.ogg", t = 44/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_coveropen_01.ogg", t = 65/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_clean.ogg", t = 83/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_inspect.ogg", t = 106/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_magout_01.ogg", t = 114/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_raise_01.ogg", t = 126/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_boxmag.ogg", t = 142/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_magin_01.ogg", t = 155/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_beltmvmnt.ogg", t = 164/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_click_01.ogg", t = 176/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_mvmnt01.ogg", t = 193/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_coverclose_01.ogg", t = 201/30},
			{s = path .. "wfoly_lm_kilo121_reload_empty_end.ogg", t = 223/30},
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
            {s = path .. "wfoly_lm_kilo121_raise_first_raise.ogg", t = 0/30},
            {s = path .. "wfoly_lm_kilo121_raise_first_raise_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_kilo121_raise_first_drop.ogg", t = 11/30},
			{s = path .. "wfoly_lm_kilo121_raise_first_rattle.ogg", t = 21/30},
			{s = path .. "wfoly_lm_kilo121_reload_boltopen_01.ogg", t = 28/30},
			{s = path .. "wfoly_lm_kilo121_reload_boltclose_01.ogg", t = 41/30},
			{s = path .. "wfoly_lm_kilo121_raise_first_cloth01.ogg", t = 51/30},
			{s = path .. "wfoly_lm_kilo121_raise_first_end.ogg", t = 59/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
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
            {s = path .. "wfoly_lm_kilo121_raise.ogg", t = 0/30},
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
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_lm_kilo121_reload_empty_end.ogg", t = 0/30},
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
		Mult = 2.3,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2.3,
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
            {s = path .. "wfoly_lm_kilo121_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_kilo121_inspect_02.ogg", t = 55/30},
			{s = path .. "wfoly_lm_kilo121_inspect_03.ogg", t = 113/30},
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

SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty2

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(16, 0, -1.2),
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
	["sight_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
	["grip_none"] = {
        Bodygroups = {
            {7,1},
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
        Category = "cod2019_m91_barrel",
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
        Pos = Vector(0, 0, -0.05),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight_none"},
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
        Pos = Vector(-2.5, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"grip_none"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_m91_stock","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_adapter"},
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
        Category = "cod2019_m91_mag",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
		PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh_2"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_m91",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_m91_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_m91_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_m91_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_m91_decal_d.mdl",
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
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 4