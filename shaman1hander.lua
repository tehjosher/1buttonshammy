    function shaman_1button()
        -- spell names
    local lightning_shield = "Lightning Shield"
    local stormstrike = "Stormstrike"
    local flame_shock = "Flame Shock"
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

        -- Cast and apply Flame Shock debuff.
        if not buffed("Flame Shock", 'target') then
            cast_and_downrank(flame_shock)
            return
        end

        -- Cast Earth Shock if Flame Shock debuff is active.
        if buffed("Flame Shock", 'target') then
            cast_and_downrank(earth_shock)
            return
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

    -- If under 30% mana, cast the Rank 3 version of a spell.
    function cast_and_downrank(spell_name)
        local mana = UnitMana("player")
        local max_mana = UnitManaMax("player")
        if mana/max_mana < 0.3 then
            spell_name = string.format("%s(Rank 3)", spell_name)
        end
    
        cast(spell_name)
    end