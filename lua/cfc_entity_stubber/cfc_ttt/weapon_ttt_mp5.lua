AddCSLuaFile()
cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "weapon_ttt_mp5" )
    weapon.Primary.Cone = 0.025
    weapon.Primary.Damage = 13
end )
