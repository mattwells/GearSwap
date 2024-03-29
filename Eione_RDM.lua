local incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

local modes = {
    Idle = "Normal",
    Engaged = "Normal"
}

function get_sets()
    sets.Idle = {}
    sets.Idle.Normal = {
		main = "Daybreak",
		sub = "Genmei Shield",
		ammo = "Staunch Tathlum",
		head = "Viti. Chapeau +1",
		body = "Atrophy Tabard +2",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Dls. Torque +1",
		waist = "Witful Belt",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Stikini Ring +1",
		right_ring = "Defending Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'Mag. Acc.+10', 'Enmity-10', 'Damage taken-5%'}
		}
	}
    sets.Idle.Turtle = {
        main = "Daybreak",
        ammo = "Staunch Tathlum +1",
        head = "Viti. Chapeau +3",
        body = "Bunzi's Robe",
        hands = "Malignance Gloves",
        legs = "Malignance Tights",
        feet = "Malignance Boots",
        neck = "Loricate Torque +1",
        waist = "Flume Belt",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Defending Ring",
        right_ring = "Vocane Ring +1",
        back = {
            name = "Sucellos's Cape",
            augments = {'Phys. dmg. taken-10%'}
        }
    }

    sets.Engaged = {}
    sets.Engaged.Normal = {
		main = "Daybreak",
		sub = "Genmei Shield",
		ammo = "Staunch Tathlum",
		head = "Bunzi's Hat",
		body = "Malignance Tabard",
		hands = "Nyame Gauntlets",
		legs = "Malignance Tights",
		feet = "Malignance Boots",
		neck = "Dls. Torque +1",
		waist = "Witful Belt",
		left_ear = "Sherida Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Stikini Ring +1",
		right_ring = "Defending Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'Mag. Acc.+10', 'Enmity-10', 'Damage taken-5%'}
		}
	}

    sets.Midcast = {}
    sets.Midcast['Dark Magic'] = {}
    sets.Midcast['Elemental Magic'] = {
        equipable = true,
		main = "Daybreak",
		sub = "Ammurapi Shield",
		head = "Ea Hat",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Sanctity Necklace",
		waist = "Acuity Belt +1",
		left_ear = "Regal Earring",
		right_ear = "Malignance Earring",
		left_ring = "Metamor. Ring +1",
		right_ring = "Mujin Band",
		back = {
			name = "Sucellos's Cape",
			augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10', '"Mag.Atk.Bns."+10'}
		}
	}
    sets.Midcast['Enfeebling Magic'] = {
        equipable = true,
        main = "Daybreak",
        sub = "Ammurapi Shield",
        head = "Viti. Chapeau +3",
        body = "Lethargy Sayon +3",
        hands = "Leth. Ganth. +3",
        legs = {
            name = "Chironic Hose",
            augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', 'Haste+2', 'MND+13', 'Mag. Acc.+13'}
        },
        feet = "Vitiation Boots +3",
        neck = {
            name = "Dls. Torque +2",
            augments = {'Path: A'}
        },
        waist = "Luminary Sash",
        left_ear = "Snotra Earring",
        right_ear = "Vor Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Sucellos's Cape",
            augments = {'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'MND+10', '"Fast Cast"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Midcast['Enhancing Magic'] = {}
    sets.Midcast['Enhancing Magic']['Other'] = {
		sub = "Ammurapi Shield",
		head = "Leth. Chappel +2",
		body = "Lethargy Sayon",
		hands = "Atrophy Gloves +2",
		legs = "Leth. Fuseau +2",
		feet = "Leth. Houseaux +3",
		neck = "Dls. Torque +1",
		waist = "Embla Sash",
		left_ear = "Andoaa Earring",
		left_ring = "Stikini Ring +1",
		right_ring = "Stikini Ring"
	}
    sets.Midcast['Enhancing Magic']['Self'] = set_combine(sets.Midcast['Enhancing Magic']['Other'], {
        body = "Viti. Tabard +1"
    })
    sets.Midcast['Phalanx'] = set_combine(
        sets.Midcast['Enhancing Magic']['Self'],
        {
            -- head = "Fu. Bandeau +3",
            -- hands = "Regal Gauntlets",
            -- legs = "Futhark Trousers +1",
            -- feet = "Herculean Boots",
            -- waist = "Olympus Sash",
            left_ear = "Andoaa Earring",
            -- right_ear = "Mimir Earring",
        }
    )
    sets.Midcast['Refresh'] = set_combine(sets.Midcast['Enhancing Magic']['Other'], {
        head = "Amalric Coif +1",
        body = "Atrophy Tabard +2",
        waist = "Gishdubar Sash"
    })
    sets.Midcast['Refresh II'] = sets.Midcast['Refresh']
    sets.Midcast['Refresh III'] = sets.Midcast['Refresh']

    sets.Midcast['Divine Magic'] = {}
    sets.Midcast['Healing Magic'] = {
        equipable = true,
		main = "Bunzi's Rod",
		sub = "Ammurapi Shield",
		ammo = "Staunch Tathlum",
		head = "Kaykaus Mitra +1",
		body = "Kaykaus Bliaut +1",
		hands = "Atrophy Gloves +2",
		legs = "Kaykaus Tights +1",
		feet = "Kaykaus Boots +1",
		neck = "Dls. Torque +1",
		waist = "Luminary Sash",
		left_ear = "Regal Earring",
		right_ear = "Magnetic Earring",
		left_ring = "Stikini Ring +1",
		right_ring = "Stikini Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'Mag. Acc.+10', 'Enmity-10', 'Damage taken-5%'}
		}
    }

    sets.FastCast = {
		ammo="Impatiens",
		head="Atro. Chapeau +2",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Malignance Earring",
		right_ear="Etiolation Earring",
		left_ring="Prolix Ring",
		right_ring="Kishar Ring",
	}
    sets.JobAbility = {}

    sets.WeaponSkill = {
        equipable = true,
        ammo = "Oshasha's Treatise",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Rep. Plat. Medal",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Leth. Earring +1",
        left_ring = "Epaminondas's Ring",
        right_ring = "Sroda Ring",
        back = {
            name = "Sucellos's Cape",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }

    sets.WeaponSkill["Seraph Blade"] = {
        ammo = "Oshasha's Treatise",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Jhakri Cuffs +2",
        legs = "Nyame Flanchard",
        feet = "Leth. Houseaux +3",
        neck = "Dls. Torque +2",
        waist = "Orpheus's Sash",
        left_ear = "Moonshade Earring",
        right_ear = "Malignance Earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Acumen Ring",
        back = {
            name = "Sucellos's Cape",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }

    sets.WeaponSkill["Sanguine Blade"] = {
        ammo = "Oshasha's Treatise",
        head = "Pixie Hairpin +1",
        body = "Nyame Mail",
        hands = "Leth. Ganth. +2",
        legs = "Nyame Flanchard",
        feet = "Leth. Houseaux +3",
        neck = "Sibyl Scarf",
        waist = "Orpheus's Sash",
        left_ear = "Regal Earring",
        right_ear = "Malignance Earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Archon Ring",
        back = {
            name = "Sucellos's Cape",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }

    sets.WeaponSkill["Aeolian Edge"] = {
        ammo = "Oshasha's Treatise",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Leth. Ganth. +3",
        legs = "Nyame Flanchard",
        feet = "Leth. Houseaux +2",
        neck = "Sibyl Scarf",
        waist = "Orpheus's Sash",
        left_ear = "Moonshade Earring",
        right_ear = "Malignance Earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Acumen Ring",
        back = {
            name = "Sucellos's Cape",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }

    sets.SIRD = {}
end

function precast(spell, action)
    if incapacitated() then
        return
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        print(spell.type, spell.english)
        equip(sets[spell.type][spell.english])

        return
    end

    if sets[spell.type] and sets[spell.type].equipable then
        equip(sets[spell.type])

        return
    end

    if spell.action_type == "Magic" then
        equip(sets.FastCast)
        return
    end
end

function midcast(spell, action)
    if incapacitated() then
        return
    end

    if spell.action_type ~= "Magic" then
        return
    end

    if sets["Midcast"][spell.english] then
        equip(sets["Midcast"][spell.english])

        return
    end

    if spell.skill == "Enhancing Magic" then
        if spell.target.id == player.id then
            equip(sets["Midcast"]["Enhancing Magic"]["Self"])
            return
        end

        equip(sets["Midcast"]["Enhancing Magic"]["Other"])
        return
    end

    if sets["Midcast"][spell.skill] then
        equip(sets["Midcast"][spell.skill])

        return
    end

    equip(sets.SIRD)
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

function status_change_idle()
    equip(sets.Idle[modes.Idle])
end

function status_change_engaged()
    equip(sets.Engaged[modes.Engaged])
end

function aftercast(spell, action)
    status_change(player.status)
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
        equip(sets.Idle.Turtle)
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
    if not args[1] then
        error("Error: No Engaged Mode Specified")
        return
    end

    local mode = args[1]:ucfirst()
    if not sets.Engaged[mode] then
        error("Error: Invalid Engaged Mode: " .. mode)
        return
    end

    modes.Engaged = mode
    status_change(player.status)
    notice("Engaged Mode Set: " .. mode)
end
