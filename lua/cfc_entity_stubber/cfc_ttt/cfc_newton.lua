AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local SWEP = weapons.GetStored( "weapon_ttt_sipistol" )
    local BaseClass = baseclass.Get( "weapon_tttbase" )

    local CHARGE_AMOUNT = 0.1
    local CHARGE_DELAY = 0.025

    weapon_ttt_push_originalThink = weapon_ttt_push_originalThink or SWEP.Think
    function SWEP:Think()
        BaseClass.Think( self )
        if self.IsCharging and IsValid( self:GetOwner() ) and self:GetOwner():IsTerror() then
            -- on client this is prediction
            if not self:GetOwner():KeyDown( IN_ATTACK2 ) then
                self:ChargedAttack()
                return true
            end


            if SERVER and self:GetCharge() < 1 and self.NextCharge < CurTime() then
                self:SetCharge( math.min( 1, self:GetCharge() + CHARGE_AMOUNT ) )

                self.NextCharge = CurTime() + CHARGE_DELAY
            end
        end
    end

    local CHARGE_FORCE_FWD_MIN = 700
    local CHARGE_FORCE_FWD_MAX = 1400
    local CHARGE_FORCE_UP_MIN = 100
    local CHARGE_FORCE_UP_MAX = 750

    function SWEP:ChargedAttack()
        local charge = math.Clamp( self:GetCharge(), 0, 1 )

        self.IsCharging = false
        self:SetCharge( 0 )

        if charge <= 0 then return end

        local max = CHARGE_FORCE_FWD_MAX
        local diff = max - CHARGE_FORCE_FWD_MIN

        local force_fwd = ((charge * diff) - diff) + max

        max = CHARGE_FORCE_UP_MAX
        diff = max - CHARGE_FORCE_UP_MIN

        local force_up = ((charge * diff) - diff) + max

        self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
        self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )

        self:FirePulse( force_fwd, force_up )
    end
end )
