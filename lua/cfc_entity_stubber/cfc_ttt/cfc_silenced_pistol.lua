AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "weapon_ttt_sipistol" )
    weapon.Primary.Damage = 100
    weapon.CFCDamageMultipliers = {
        [HITGROUP_HEAD] = 2, -- 2X normal head damage
        [HITGROUP_CHEST] = 0.2,
        [HITGROUP_STOMACH] = 0.1,
        [HITGROUP_LEFTARM] = 0.1,
        [HITGROUP_RIGHTARM] = 0.1,
        [HITGROUP_LEFTLEG] = 0.1,
        [HITGROUP_RIGHTLEG] = 0.1
    }
end )
