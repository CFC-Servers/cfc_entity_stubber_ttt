AddCSLuaFile()
cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "weapon_ttt_jihad" )
    function weapon:Asplode()
        local ent = ents.Create( "env_explosion" )

        local owner = self:GetOwner()
        ent:SetPos( owner:WorldSpaceCenter() )
        ent:SetOwner( owner )
        ent:Spawn()
        ent:SetKeyValue( "iMagnitude", "230" )
        ent:Fire( "Explode", 0, 0 )
        ent:EmitSound( "ttt_jihad_explosion", 500, 500 )
        self:Remove()
    end
end )
