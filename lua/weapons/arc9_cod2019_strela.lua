AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Launchers"

SWEP.PrintName = "Strela-P"

SWEP.Class = "Rocket Launcher"
SWEP.Trivia = {
    ["Manufacturer"] = "FORGE TAC",
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Palindrone/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[84mm recoilless rifle lobs an explosive projectile at a very high velocity. The unguided armor piercing round has a low explosive yield, but is devastating against vehicles on contact.]]

SWEP.ViewModel = "models/weapons/cod2019/c_eq_strela.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_strela.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-9, 8, -4),
    Ang = Angle(-17, 3, 190),
    TPIKPos = Vector(-4, 7.5, -5),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.ShootEnt = "arc9_cod2019_proj_strela_default" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 5000

SWEP.ShootPosOffset = Vector(5, 10, -5)
SWEP.ShootPosOffsetSights = Vector(5, 10, -5)

SWEP.PushBackForce = 5

-------------------------- MAGAZINE

SWEP.Ammo = "RPG_Round" -- what ammo type the gun uses

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 12 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 12 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.MissileCrosshair = true

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 2

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

SWEP.RecoilAutoControl = 10 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.9

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 20
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = -1/6

-------------------------- SPREAD

SWEP.Spread = 0
SWEP.SpreadAddRecoil = 0

SWEP.SpreadMultSights = 0
SWEP.SpreadAddHipFire = 0
--SWEP.SpreadAddMove = 0
--SWEP.SpreadAddMidAir = 0.02
-- SWEP.SpreadAddRecoil = math.rad(5/37.5) -- 0

SWEP.RecoilPatternDrift = 20

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.AimDownSightsTime = 0.8 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.4 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.6

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.3, -5, 0.7),
    Ang = Angle(-1, 6, 15),
    Magnification = 1.25,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(-2, 0, -2)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.ActivePosShooting = Vector(0, 0, 0)
SWEP.ActiveAngShooting = Angle(0, 0, 0)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(-1.5, -1, -1.5)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, -8, -5)

SWEP.CustomizeAng = Angle(90, -5, 7)
SWEP.CustomizePos = Vector(3, 30, 4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(-1, 15, 3)

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

SWEP.MuzzleParticle = "AC_muzzle_pistol_suppressed"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.AfterShotParticleDelay = -1
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.NoShellEject = true

SWEP.HookP_BlockFire = function(self)
    return self:GetSightAmount() < 1
end

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_eq_strela_shell.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_shell_drop_large_shell_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_shell_drop_large_shell_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_shell_drop_large_shell_concrete_03.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 2
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/strela/"

SWEP.ShootSound = "COD2019.Strela.Fire"
SWEP.ShootSoundIndoor = "COD2019.Strela.Fire"

-- Outside
SWEP.LayerSound = "Layer_Sniper.Outside"
SWEP.DistantShootSound = "Distant_Strela.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Strela.Inside"
---------------------------------------------------

SWEP.DryFireSound = "weapons/cod2019/strela/weap_kgolf_fire_plr_fcg_01.ogg"
SWEP.FiremodeSound = "weapons/cod2019/strela/weap_kgolf_fire_plr_fcg_01.ogg"

SWEP.EnterSightsSound = "weapons/cod2019/strela/weap_la_kgolf_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/strela/weap_la_kgolf_ads_down.ogg"

SWEP.TriggerDelay = 0.02 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.02 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/strela/weap_kgolf_fire_plr_fcg_01.ogg"
SWEP.TriggerUpSound = ""

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
        EventTable = {
			{s = path .. "weap_kgolf_fire_plr_lfe_01.ogg", t = 0},
        },
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.8,
		DropMagAt = 2.65,
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
			{s = path .. "wfoly_la_kgolf_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_la_kgolf_reload_raise.ogg", t = 15/30},
			{s = path .. "wfoly_la_kgolf_reload_rotate.ogg", t = 45/30},
			{s = path .. "wfoly_la_kgolf_reload_breechopen.ogg", t = 52/30},
			{s = path .. "wfoly_la_kgolf_reload_shellout.ogg", t = 65/30},
			{s = path .. "wfoly_la_kgolf_reload_shelldrop.ogg", t = 77/30},
			{s = path .. "wfoly_la_kgolf_reload_raise.ogg", t = 102/30},
			{s = path .. "wfoly_la_kgolf_reload_shellin.ogg", t = 132/30},
			{s = path .. "wfoly_la_kgolf_reload_breechclose.ogg", t = 147/30},
			{s = path .. "wfoly_la_kgolf_reload_breechclose2.ogg", t = 152/30},
			{s = path .. "wfoly_la_kgolf_reload_end.ogg", t = 157/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		DropMagAt = 1.5,
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
			{s = path .. "wfoly_la_kgolf_reload_fast_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_la_kgolf_reload_fast_breechopen.ogg", t = 25/30},
			{s = path .. "wfoly_la_kgolf_reload_fast_shelldrop.ogg", t = 34/30},
			{s = path .. "wfoly_la_kgolf_reload_fast_raise.ogg", t = 44/30},
			{s = path .. "wfoly_la_kgolf_reload_fast_shellin.ogg", t = 70/30},
			{s = path .. "wfoly_la_kgolf_reload_fast_breechclose.ogg", t = 74/30},
			{s = path .. "wfoly_la_kgolf_reload_fast_end.ogg", t = 106/30},
        },
    },
    ["ready"] = {
        Source = {"draw"},
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
            {s = path .. "wfoly_plr_la_kgolf_raise_first_up.ogg", t = 3/30},
			{s = path .. "wfoly_plr_la_kgolf_raise_first_settle.ogg", t = 20/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.4,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_plr_la_kgolf_raise_up.ogg", t = 7/30},
			{s = path .. "wfoly_plr_la_kgolf_raise_settle.ogg", t = 24/30},
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
            {s = path .. "wfoly_la_kgolf_drop_rattle.ogg", t = 0/30},
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
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_la_kgolf_inspect_01.ogg", t = 1/30},
			{s = path .. "wfoly_la_kgolf_inspect_02.ogg", t = 88/30},
			{s = path .. "wfoly_la_kgolf_inspect_03.ogg", t = 135/30},
			{s = path .. "wfoly_la_kgolf_reload_raise.ogg", t = 3.25},
			{s = path .. "wfoly_la_kgolf_reload_breechopen.ogg", t = 4.21},
			{s = path .. "wfoly_la_kgolf_reload_breechclose2.ogg", t = 6.17},
			{s = path .. "wfoly_la_kgolf_reload_end.ogg", t = 6.62},
        },
    },
    ["bash"] = {
        Source = "melee_01",
    },
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
	
    --------------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    end
end

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(0, 0, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
}

SWEP.AttachmentElements = {
    ["grip"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["sights_scope"] = {
        Bodygroups = {
            {2,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("sights_scope") then model:SetBodygroup(2,0) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Optics",
        Bone = "tag_launcher_offset",
        Pos = Vector(5, -3.1, 1.9),
        Ang = Angle(0, 0, -90),
        Category = {"cod2019_optic","cod2019_optic_strela"},
        InstalledElements = {"sights_scope"},
		--Installed = "cod2019_optic_scope_strela",
		--Integral = "cod2019_optic_scope_strela",
        CorrectiveAng = Angle(7, 6.2, -90),
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_launcher_offset",
        Pos = Vector(10, -0.83, -1.12),
        Ang = Angle(0, 0, 200),
		Scale = 1,
		InstalledElements = {"grip"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_launcher_offset",
        Pos = Vector(10, 2.1, 0.9),
        Ang = Angle(0, 0, -90),
    },
    {
        PrintName = "Ammo",
        Bone = "tag_launcher_offset",
        Category = {"cod2019_strela_ammo"},
        Pos = Vector(5, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
		PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "go_skins_pila",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_strela_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_strela_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_strela_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_strela_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_launcher_offset",
        Pos = Vector(3, -1.7, 0.7),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_launcher_offset",
        Pos = Vector(2, -1.5, 1.8),
        Ang = Angle(0, 0, 35),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.5
SWEP.CodStubbyGripPoseParam = 8