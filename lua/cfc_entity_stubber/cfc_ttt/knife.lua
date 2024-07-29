AddCSLuaFile()
cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "weapon_ttt_knife" )
    weapon.DeploySpeed = 4
    weapon.Primary.Damage = 70
end )
