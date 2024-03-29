local engagedMode = "Normal"
local rangedMode = "Normal"

function get_sets()
    incapacitated_states = T {"stun", "petrification", "terror", "sleep"}
    debugMode = false

    sets.Idle = {
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Carmine cuisses +1",
        feet = "Nyame Sollerets",
        neck = "Comm. Charm +2",
        waist = "Sailfi Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Dedition Earring",
        left_ring = "Defending Ring",
        right_ring = "Ilabrat Ring"
    }

    sets.Engaged = {}
    sets.Engaged.Normal = {
        ammo = "Chrono Bullet",
        head = "Malignance Chapeau",
        body = "Mummu Jacket +2",
        hands = "Meg. Gloves +2",
        legs = "Malignance Tights",
        feet = "Mummu Gamash. +2",
        neck = "Comm. Charm +2",
        waist = "Sailfi Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Cessance Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Petrov Ring",
        back = {
            name = "Belenus's Cape",
            -- augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', '"Dual Wield"+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.Engaged.Turtle = {
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Comm. Charm +2",
        waist = "Sailfi Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Cessance Earring",
        left_ring = "Defending Ring",
        right_ring = "Petrov Ring",
        back = {
            name = "Belenus's Cape",
            -- augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', '"Dual Wield"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.JobAbility = {}

    sets.WeaponSkill = {}
    sets.WeaponSkill["Last Stand"] = {
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Scout's Gorget +2",
        waist = "Light Belt",
        left_ear = "Telos Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Dingir Ring",
        right_ring = "Karieyh Ring",
        back = {
            name = "Belenus's Cape",
            augments = {'AGI+20', 'Rng.Acc.+20 Rng.Atk.+20', 'AGI+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }
    sets.WeaponSkill["Detonator"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Slug Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Sniper Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Split Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Numbing Shot"] = sets.WeaponSkill["Last Stand"]

    sets.WeaponSkill["Wildfire"] = {
        head = "Nyame Helm",
        body = "Lanun Frac +3",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Lanun Bottes +3",
        neck = "Comm. Charm +2",
        waist = "Orpheus's Sash",
        left_ear = "Friomisi Earring",
        -- right_ear = "Moonshade Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Karieyh Ring",
        back = {
            name = "Belenus's Cape",
            augments = {
                -- 'AGI+20',
                -- 'Mag. Acc+20 /Mag. Dmg.+20',
                -- 'AGI+10',
                -- 'Weapon skill damage +10%'
            }
        }
    }

    sets.WeaponSkill["Aeolian Edge"] = {
        ammo = "Living Bullet",
        head = "Nyame Helm",
        body = "Lanun Frac +3",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Lanun Bottes +3",
        neck = "Comm. Charm +2",
        waist = "Orpheus's Sash",
        left_ear = "Friomisi Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Dingir Ring",
        right_ring = "Karieyh Ring",
        back = {
            name = "Belenus's Cape",
            -- augments = {'AGI+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'AGI+10', 'Weapon skill damage +10%'}
        }
    }

    sets.Precast = {}
    sets.Precast['Ranged Attack'] = {
        head = "Taeon Chapeau",
        body = "Ikenga's Vest",
        hands = "Carmine Fin. Ga. +1",
        legs = "Adhemar Kecks +1",
        feet = "Meg. Jam. +2",
        neck = "Scout's Gorget +2",
        waist = "Impulse Belt",
        left_ear = "Telos Earring",
        left_ring = "Dingir Ring",
        back = {
            name = "Belenus's Cape",
            augments = {'"Snapshot"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Midcast = {}
    sets.Midcast['Ranged Attack'] = {}
    sets.Midcast['Ranged Attack']['Normal'] = {
        head = "Ikenga's Hat",
        body = "Ikenga's Vest",
        hands = "Ikenga's Gloves",
        legs = "Ikenga's Trousers",
        feet = "Ikenga's Clogs",
        neck = "Comm. Charm +2",
        left_ear = "Dedition Earring",
        right_ear = "Telos Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Ilabrat Ring",
        back = {
            name = "Belenus's Cape",
            augments = {'AGI+20', 'AGI+10'}
        }
    }

    sets.Midcast['Ranged Attack']['Crit'] = {
        head = "Mummu Bonnet +2",
        body = "Mummu Jacket +2",
        hands = "Mummu Wrists +2",
        legs = "Mummu Kecks +2",
        feet = "Oshosi Leggings",
        neck = {
            name = "Comm. Charm +2",
            augments = {'Path: A'}
        },
        waist = "Kwahu Kachina Belt",
        left_ear = "Telos Earring",
        right_ear = "Cessance Earring",
        left_ring = "Mummu Ring",
        right_ring = "Chirich Ring +1",
        back = {
            name = "Belenus's Cape",
            augments = {
                'AGI+20', 'AGI+10'
            }
        }
    }

    sets.Midcast['Ranged Attack']['Triple Shot'] = {
        head = "Oshosi Mask",
        body = "Oshosi Vest",
        hands = "Oshosi Gloves",
        legs = "Oshosi Trousers",
        feet = "Oshosi Leggings",
        neck = "Comm. Charm +2",
        waist = "Kwahu Kachina Belt",
        left_ear = "Dedition Earring",
        right_ear = "Telos Earring",
        left_ring = "Mummu Ring",
        right_ring = "Ilabrat Ring",
        back = {
            name = "Belenus's Cape",
            augments = {'AGI+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'AGI+10', 'Weapon skill damage +10%'}
        }
    }
end

function precast(spell, action)
    if incapacitated() then
        return
    end

    if (spell.english == "Spectral Jig" or spell.english == "Sneak") and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    debug("Pre " .. spell.action_type)

    if spell.action_type == 'Ranged Attack' then
        equip(sets.Precast['Ranged Attack'])
        return
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
    end

    if sets[spell.type] and sets[spell.type].equipable then
        equip(sets[spell.type])

        return
    end

    if is_magic(spell) then
        equip(sets.FastCast)
        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function midcast(spell, action)
    if incapacitated() then
        return
    end

    if spell.action_type == 'Ranged Attack' then
        if sets.Midcast['Ranged Attack']['Triple Shot'] then
            equip(sets.Midcast['Ranged Attack']['Triple Shot'])
            return
        end

        equip(sets.Midcast['Ranged Attack'][rangedMode])
        return
    end

    if not is_magic(spell) then
        return
    end

    notice("Midcast - " .. spell.skill .. " - " .. spell.english)

    if sets["Midcast"][spell.skill] and sets["Midcast"][spell.skill][spell.english] then
        equip(sets["Midcast"][spell.skill][spell.english])

        return
    end

    if sets["Midcast"][spell.skill] and sets["Midcast"][spell.skill].equipable then
        equip(sets["Midcast"][spell.skill])

        return
    end

    debug("No set for Midcast." .. spell.skill .. "." .. spell.english)
end

function aftercast(spell, action)
    debug("Aftercast: " .. player.status)
    status_change(player.status)
end

function status_change(new, old)
    if incapacitated() then
        debug("incapacitated")
        return
    end

    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end

function buff_change(name, gain, buff_details)
    if incapacitated_states:contains(name) then
        status_change(player.status)
    end
end

function incapacitated()
    if incapacitated_states:find(function(value)
        return buffactive[value] or false
    end) then
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

function status_change_engaged()
    equip(sets.Engaged[engagedMode])
end

function self_command_e(args)
    return self_command_engaged(args)
end

function self_command_engaged(args)
    if not args[1] then
        error("Error: No Engaged Mode Specified")
        return
    end

    local mode = args[1]:ucfirst()
    if not sets.Engaged[mode] then
        error("Error: Invalid Engaged Mode: " .. mode)
        return
    end

    engagedMode = mode
    notice("Engaged Mode Set: " .. mode)
end

function self_command_r(args)
    self_command_ranged(args)
end

function self_command_ranged(args)
    if not args[1] then
        error("Error: No Ranged Mode Specified")
        return
    end

    local mode = args[1]:ucfirst()
    if not sets.Midcast['Ranged Attack'] then
        error("Error: Invalid Ranged Mode: " .. mode)
        return
    end

    rangedMode = mode
    notice("Ranged Mode Set: " .. mode)
end

function is_magic(spell)
    return spell.type:endswith("Magic") or spell.type == "BardSong" or spell.type == "Ninjutsu" or spell.type == "Trust"
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
