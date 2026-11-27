# cfc_entity_stubber_ttt

Entity Stubber definitions for the TTT server.

Requires the [cfc_entity_stubber](https://github.com/CFC-Servers/cfc_entity_stubber) version supporting filename-based weapon stubs through PreRegisterSWEP.

Weapon patches live in `lua/cfc_entity_stubber/weapons/ttt/`. Each filename is the exact weapon class and each file returns a function receiving the weapon table being registered. The framework distributes and loads these files on both server and client; no per-file AddCSLuaFile or stubber registration is needed.

The six patches cover the AWP, jihad bomb, Newton launcher, silenced pistol, knife, and MP5. Their existing tuning is preserved. Newton resolves its base-class table inside Think because that table may not exist during weapon registration.

Restart the map after installing this migration. Remove the old files from deployed copies so the legacy loader cannot apply the same patches again. The framework reapplies a patch when its weapon re-registers; editing a stub alone does not re-register the weapon.

Manual in-game checks remain outstanding:

- Join a dedicated TTT server without a local copy of this addon and confirm client delivery and error-free loading in both realms.
- Verify AWP damage multipliers, knife damage/deploy speed, MP5 cone/damage, and silenced pistol damage/recoil/ammo settings.
- Exercise the jihad explosion and Newton charging, release, force, and cooldown behavior.
- Reload the weapons and verify the patches still apply. Check startup with optional weapon packs absent.
