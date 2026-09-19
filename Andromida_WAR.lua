local incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

function get_sets()


    sets.Idle = {
        ammo = "Staunch Tathlum +1",
        head = "Sakpata's Helm",
        body = "Sakpata's Plate",
        hands = "Sakpata's Gauntlets",
        legs = "Sakpata's Cuisses",
        feet = "Sakpata's Leggings",
        neck = "Rep. Plat. Medal",
        waist = "Flume Belt",
        left_ear = "Infused Earring",
        right_ear = "Genmei Earring",
        left_ring = "Vocane Ring +1",
        right_ring = "Defending Ring",
        back = {
            name = "Cichol's Mantle",
            augments = {'Phys. dmg. taken-10%'}
        }
    }

    sets.Engaged = {mode = "Melee"}
    sets.Engaged.Melee = {
        ammo="Coiste Bodhar",
        head = "Sakpata's Helm",
        body = "Boii Lorica +3",
        hands = "Sakpata's Gauntlets",
        legs = "Sakpata's Cuisses",
        feet="Boii Calligae +3",
        neck = "War. Beads +2",
        waist = "Ioskeha Belt +1",
        left_ear="Schere Earring",
        right_ear = "Boii Earring +2",
        left_ring = "Petrov Ring",
        right_ring ="Moonlight Ring",
        back = {
            name = "Cichol's Mantle",
            augments = {'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}
        },
    }
    sets.Engaged.Hybrid = {
        ammo = "Staunch Tathlum +1",
        head = "Sakpata's Helm",
        body = "Boii Lorica +3",
        hands = "Sakpata's Gauntlets",
        legs = "Sakpata's Cuisses",
        feet = "Sakpata's Leggings",
        neck = "War. Beads +2",
        waist = "Ioskeha Belt +1",
        left_ear = "Schere Earring",
        right_ear = "Boii Earring +2",
        left_ring = "Defending Ring",
        right_ring = "Moonlight Ring",
        back = {
            name = "Cichol's Mantle",
            augments = {'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}
        },
    }
    sets.Engaged.Savage = {
        main = "Naegling",
        sub = "Blurred shield +1",
        ammo = "Coiste Bodhar",
        head = "Sakpata's Helm",
        body = "Boii Lorica +3",
        hands = "Sakpata's Gauntlets",
        legs = "Sakpata's Cuisses",
        feet = "Boii Calligae +3",
        neck = "War. Beads +2",
        waist = "Ioskeha Belt +1",
        left_ear = "Schere Earring",
        right_ear = "Boii Earring +2",
        left_ring = "Niqmaddu Ring",
        right_ring = "Moonlight Ring",
        back = {
            name = "Cichol's Mantle",
            augments = {'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%'}
        },
    }

    -- JA Sets --
    sets.JobAbility = {}
    sets.JobAbility.Warcry = { head = "Agoge Mask +4", }
    sets.JobAbility.Restraint = { hands = "Boii Mufflers +3", }
    sets.JobAbility['Blood Rage'] = { head = "Boii Mask +3", }

    -- WS Sets --
    sets.WeaponSkill = {
        ammo = "Knobkierrie",
        head = "Agoge Mask +4",
        body = "Nyame Mail",
        hands = "Boii Mufflers +3",
        legs = "Boii Cuisses +3",
        feet = "Nyame Sollerets",
        neck = "War. Beads +2",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Thrud Earring",
        left_ring = "Sroda Ring",
        right_ring = "Ephramad's Ring",
        back = {
            name = "Cichol's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }
    sets.WeaponSkill.Disaster = {
        ammo = "Knobkierrie",
        head = "Agoge Mask +4",
        body = "Nyame Mail",
        hands = "Boii Mufflers +3",
        legs = "Boii Cuisses +3",
        feet = "Nyame Sollerets",
        neck = "War. Beads +2",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Thrud Earring",
        left_ring = "Sroda Ring",
        right_ring = "Ephramad's Ring",
        back = {
            name = "Cichol's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }
    sets.WeaponSkill.Upheaval = {
        ammo="Knobkierrie",
        head="Agoge Mask +4",
        body="Nyame Mail",
        hands="Boii Mufflers +3",
        legs="Boii Cuisses +3",
        feet="Nyame Sollerets",
        neck="War. Beads +2",
        waist="Sailfi Belt +1",
        left_ear="Moonshade Earring",
        right_ear="Thrud Earring",
        left_ring="Sroda Ring",
        right_ring="Ephramad's Ring",
        back={
            name="Cichol's Mantle",
            augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%'}
        },
    }
    sets.WeaponSkill["Ukko's Fury"] = {
        ammo="Yetshila +1",
        head="Boii Mask +3",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Boii Cuisses +3",
        feet="Boii Calligae +3",
        neck="War. Beads +2",
        waist="Sailfi Belt +1",
        left_ear="Schere Earring",
        right_ear="Boii Earring +2",
        left_ring="Sroda Ring",
        right_ring="Niqmaddu Ring",
        back={
            name="Cichol's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        },
    }
    sets.WeaponSkill["Savage Blade"] = {
        ammo = "Knobkierrie",
        head = "Agoge Mask +4",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "War. Beads +2",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Thrud Earring",
        left_ring = "Sroda Ring",
        right_ring = "Epaminondas's Ring",
        back = {
            name = "Cichol's Mantle",
            augments = {'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%'}
        },
    }

end

function precast(spell, action)
    if incapacitated() then
        return
    end

    local spell_type = spell.type:lower():gsub("%s+", "_")
    local spell_name = spell.english:lower():gsub("%s+", "_")

    local specific = "precast_" .. spell_type .. "_" .. spell_name
    if _G[specific] and not _G[specific](spell) then
        return
    end

    local generic = "precast_" .. spell_type
    if _G[generic] and not _G[generic](spell) then
        return
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
    end

    print(spell.type)
    if spell.type == "WeaponSkill" then
        print(spell.type .. "in ")
        equip(sets["WeaponSkill"])

        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function precast_trust()
    return false
end

function precast_dancer_ability_spectral_jig(spell)
    if buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    return true
end

function precast_weaponskill(spell)
    if player.equipment.main == "Naegling" and spell.skill ~= "Sword"  then
        cancel_spell()
        send_command('@input /ws "Savage Blade" ' .. tostring(spell.target.raw))
        return false
    end

    return true
end

function aftercast(spell, action)
    status_change(player.status)
end

function status_change(new, old)
    if incapacitated() then
        return
    end

    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end

function status_change_engaged()
    equip(sets.Engaged[sets.Engaged.mode])
end

function buff_change(name, gain, buff_details)
    if incapacitated_states:contains(name) then
        status_change(player.status)
    end
end

function incapacitated()
    if
        incapacitated_states:find(
            function(value)
                return buffactive[value] or false
            end
        )
    then
        equip(sets.Idle)
        return true
    end
end

function self_command(argsString)
    print(T(player).status)

    args = argsString:lower():split(" ")

    if _G["self_command_" .. args[1]] then
        _G["self_command_" .. args[1]](args:slice(2))
    end

    status_change(player.status)
end

function self_command_e(args)
    return self_command_engaged(args)
end

function self_command_engaged(args)
    local mode = "Melee"

    if args[1] then
        mode = args[1]:ucfirst()
    end

    if not sets.Engaged[mode] then
        error("Error: Invalid Engaged Mode: " .. mode)
        return
    end

    sets.Engaged.mode = mode
    status_change(player.status)
    -- notice("Engaged Mode Set: " .. mode)
end

function self_command_tp(args)
    local order = T{
        {id=158, command = '"Jump" <t>'},
        {id=159, command = '"High Jump" <t>'},
    }

    local recasts = windower.ffxi.get_ability_recasts()

    for _, ability in ipairs(order) do
        if recasts[ability.id] == 0 then
            windower.send_command("input /ja " .. ability.command)
            return
        end
    end
end

function notice(s)
    add_to_chat(121, s)
end

function error(s)
    add_to_chat(4, s)
end

function debug(s)
    if debugMode then
        notice(s)
    end
end
