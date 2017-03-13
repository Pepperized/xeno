SWEP.PrintName			= "Scanner" -- This will be shown in the spawn menu, and in the weapon selection menu
SWEP.Author			= "Pepperized" -- These two options will be shown when you have the weapon highlighted in the weapon selection menu
SWEP.Instructions		= "Scan for dead crewmates or xenos"
SWEP.Spawnable = true

SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo		= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo		= "none"

SWEP.Weight			= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Slot			= 1
SWEP.SlotPos			= 2
SWEP.DrawAmmo			= false
SWEP.DrawCrosshair		= true
SWEP.ViewModel			= "models/weapons/v_pistol.mdl"
SWEP.WorldModel			= "models/weapons/w_pistol.mdl"


local ShootSound = Sound( "npc/scanner/combat_scan_loop1.wav" )
local PrimaryDelay = 2
local SecondaryDelay = 5

function SWEP:PrimaryAttack()

	self.Weapon:SetNextPrimaryFire( CurTime() + PrimaryDelay)

end


--
-- Called when the rightmouse button is pressed
--
function SWEP:SecondaryAttack()

	self.Weapon:SetNextPrimaryFire( CurTime() + SecondaryDelay)

end