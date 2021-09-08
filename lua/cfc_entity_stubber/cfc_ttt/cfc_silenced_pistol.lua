AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "weapon_ttt_sipistol" )
    weapon.Primary.Damage = 10000000000
end )
