function get_sets()
    sets.Idle = {}

    sets.Engaged = {}

    sets.Rune = {}
    sets.Ward = {}

    -- JA Sets --
    sets.JobAbility = {}
    -- sets.JobAbility['Elemental Sforzo'] = {}
    -- sets.JobAbility['Swordplay'] = {}
    -- sets.JobAbility['Embolden'] = {}
    -- sets.JobAbility['Vivacious Pulse'] = {}
    -- sets.JobAbility['One for All'] = {}
    -- sets.JobAbility['Odyllic Subterfuge'] = {}

    -- WS Sets --
    sets.WeaponSkill = {}
    -- sets.WeaponSkill['Hard Slash'] = {}
    -- sets.WeaponSkill['Power Slash'] = {}
    -- sets.WeaponSkill['Frostbite'] = {}
    -- sets.WeaponSkill['Freezebite'] = {}
    -- sets.WeaponSkill['Shockwave'] = {}
    -- sets.WeaponSkill['Crescent Moon'] = {}
    -- sets.WeaponSkill['Sickle Moon'] = {}
    -- sets.WeaponSkill['Spinning Slash'] = {}
    -- sets.WeaponSkill['Ground Strike'] = {}
    -- sets.WeaponSkill['Herculean Slash'] = {}

end

function precast(spell, action)
    if "Trust" == spell.type then
        return
    end

    if (spell.english == "Spectral Jig" or spell.english == "Sneak") and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
    end

    if sets[spell.type] and sets[spell.type].equipable then
        equip(sets[spell.type])

        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function aftercast(spell, action)
    status_change(player.status)
end

function status_change(new, old)
    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end

function status_change_engaged()
    equip(sets.Engaged)

    if DT then
        equip(sets.PDT)
    end
end

function buff_change(name, gain, buff_details)
    debug(name .. " " .. (gain and "on" or "off"))
end

function debug(s)
    send_command("@input /echo " .. s)
end

function self_command(command)
    command = command:lower()

    if "dt" == command then
        DT = not DT

        windower.add_to_chat(123, "DT: " .. (DT and "on" or "off"))

        status_change(player.status, player.status)

        return
    end
end

function is_magic(spell)
    return spell.type:endswith("Magic") 
        or spell.type == "BardSong" 
        or spell.type == "Ninjutsu" 
        or spell.type == "Trust"
end
