AddCSLuaFile()

cfcEntityStubber.registerStub(function()
    local weapon = weapons.GetStored("weapon_ttt_sipistol")

    weapon.Primary.Damage = 39
    weapon.Primary.Recoil = 3
    weapon.Primary.DefaultClip = 10
    weapon.Primary.ClipMax = 10
end)
