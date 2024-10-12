function shaman_1button()
    -- spell names
    local lightning_shield = "Lightning Shield"
    local stormstrike = "Stormstrike"
    local earth_shock = "Earth Shock"
    local rockbiter_weapon = "Rockbiter Weapon"

    -- Stormstrike on cooldown.
    if cooldown_for(stormstrike) == 0 then
        cast(stormstrike)
    end

    -- Keep up Lightning Shield.
    if not buffed(lightning_shield) then
            cast(lightning_shield)
            return
    end

      -- Keep up Rockbiter Weapon.
    if not buffed("Rockbiter", 'player') then
         cast(rockbiter_weapon)
         return
    end

    -- Cast Earth Shock on cooldown.
    if cooldown_for(earth_shock) == 0 then
        cast_and_downrank(earth_shock)
    end
end

function cooldown_for(spell_name)
        local index = spell_index(spell_name)
        local _, cd, _ = GetSpellCooldown(index, BOOKTYPE_SPELL)
        return cd
end

    
function spell_index(spell_name, spell_rank)
    local i = 1
    while true do
        local name, rank = GetSpellName(i, BOOKTYPE_SPELL)
        if not name then
            error(string.format("spell not found: %s, scanned: %d", spell_name, i))
            return
        end
    
        if (not spell_rank and name == spell_name) or (name == spell_name and rank == spell_rank) then
            return i
        end
    
        i = i + 1
    end
end

-- If under 60% mana, cast the Rank 4 version of a spell. Under 20%, cast the Rank 1 Version.
function cast_and_downrank(spell_name)
    local mana = UnitMana("player")
    local max_mana = UnitManaMax("player")
    if mana/max_mana < 0.6 then
        spell_name = string.format("%s(Rank 4)", spell_name)
    end

    if mana/max_mana < 0.2 then
        spell_name = string.format("%s(Rank 1)", spell_name)
    end

    cast(spell_name)
end
