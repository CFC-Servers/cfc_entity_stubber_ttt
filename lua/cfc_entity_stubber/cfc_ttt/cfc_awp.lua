AddCSLuaFile()
cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "weapon_ttt_awp" )
    weapon.CFCDamageMultipliers = {
        [HITGROUP_HEAD] = 2,
        [HITGROUP_CHEST] = 2,
        [HITGROUP_STOMACH] = 2,
        [HITGROUP_LEFTARM] = 2,
        [HITGROUP_RIGHTARM] = 2
    }
end )
