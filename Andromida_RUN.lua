function get_sets()
    sets.Idle = {
        ammo="Staunch Tathlum +1",
        head="Meghanada Visor +2",
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +2",
        legs="Meg. Chausses +2",
        feet="Meg. Jam. +2",
        neck="Loricate Torque +1",
        waist="Flume Belt",
        left_ear="Telos Earring",
        right_ear="Sherida Earring",
        left_ring="Moonlight Ring",
        right_ring="Defending Ring",
        back={ 
            name="Ogma's cape", 
            augments={
                'STR+20',
                'Accuracy+20 Attack+20',
                'STR+10',
                '"Dbl.Atk."+10',
            }
        },
    }

    sets.Engaged = {
        ammo="Ginsen",
        head={ 
            name="Adhemar Bonnet +1",
            augments={'DEX+12','AGI+12','Accuracy+20',}
        },
        body={ 
            name="Adhemar Jacket +1", 
            augments={'STR+12','DEX+12','Attack+20',}
        },
        hands={ 
            name="Adhemar Wrist. +1",
            augments={'STR+12','DEX+12','Attack+20',}
        },
        legs="Samnuha Tights",
        feet={ 
            name="Carmine Greaves +1", 
            augments={'Accuracy+12','DEX+12','MND+20',}
        },
        neck="Anu Torque",
        waist="Windbuffet Belt +1",
        left_ear="Telos Earring",
        right_ear="Sherida Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Epona's Ring",
        back={ 
            name="Ogma's cape",
            augments={
                'STR+20',
                'Accuracy+20 Attack+20',
                'STR+10',
                '"Dbl.Atk."+10',
            }
        },
    }

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

    sets.WeaponSkill['Resolution'] = {
        main="Aettir",
        sub="Utu Grip",
        ammo="Knobkierrie",
        head={ 
            name="Lilitu Headpiece", 
            augments={
                'STR+10',
                'DEX+10','Attack+15',
                'Weapon skill damage +3%',
            }
        },
        body={ 
            name="Adhemar Jacket +1", 
            augments={'STR+12','DEX+12','Attack+20',}
        },
        hands={ 
            name="Herculean Gloves", 
            augments={'"Store TP"+5','STR+7','Accuracy+14',}
        },
        legs="Meg. Chausses +2",
        feet={ 
            name="Lustra. Leggings +1", 
            augments={'Attack+20','STR+8','"Dbl.Atk."+3',}
        },
        neck="Fotia Gorget",
        waist="Flume Belt",
        left_ear="Moonshade Earring",
        right_ear="Sherida Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Regal Ring",
        back={ 
            name="Ogma's cape", 
            augments={
                'STR+20',
                'Accuracy+20 Attack+20',
                'STR+10',
                '"Dbl.Atk."+10',
            }
        },
    }

    sets.FastCast = {
        head="Runeist Bandeau",
        hands={ 
            name="Leyline Gloves", 
            augments={'"Fast Cast"+2',}
        },
        feet="Carmine Greaves +1",
        right_ear="Loquac. Earring",
        left_ring="Prolix Ring",
    }

    sets.Midcast = {}
    sets.Midcast["Enhancing Magic"] = {
        hands = "Runeist Mitons +1",
        legs = "Carmine Cuisses +1",
        waist = "Olympus Sash",
        left_ear = "Andoaa Earring",
    }
end

function precast(spell, action)
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

    if is_magic(spell) then
        equip(sets.FastCast)
        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function midcast(spell, action)
    if not is_magic(spell) then
        return
    end
    
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

function status_change(new, old)
    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end

function aftercast(spell, action)
    status_change(player.status)
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
