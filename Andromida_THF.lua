function get_sets()
    sets.Idle = {
        head = "Meghanada Visor +2",
        body = "Meg. Cuirie +2",
        hands = "Meg. Gloves +2",
        legs = "Meg. Chausses +2",
        feet = "Pill. Poulaines +1",
        neck = "Twilight Torque",
        waist = "Flume Belt",
        left_ear = "Sherida Earring",
        right_ear = "Infused Earring",
        left_ring = "Defending Ring",
        right_ring = "Warden's Ring",
        back = {
            name = "Toutatis's Cape",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+5",
                '"Dbl.Atk."+10',
                "Phys. dmg. taken-10%"
            }
        }
    }

	DT = false
	sets.PDT = {
		head = "Meghanada Visor +2",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +1",
		neck = "Twilight Torque",
		waist = "Flume Belt",
		left_ring = "Warden's ring",
		right_ring = "Defending Ring",
        back = {
            name = "Toutatis's Cape",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+5",
                '"Dbl.Atk."+10',
                "Phys. dmg. taken-10%"
            }
        }
	}

    sets.Engaged = {
        ammo = "Yamarang",
        head = {
            name = "Adhemar Bonnet +1",
            augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        },
        body = {
            name = "Herculean Vest",
            augments = {
                "AGI+13",
                "Weapon skill damage +2%",
                "Quadruple Attack +3",
                "Accuracy+18 Attack+18",
                'Mag. Acc.+18 "Mag.Atk.Bns."+18'
            }
        },
        hands = {
            name = "Adhemar Wrist. +1",
            augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        },
        legs = {
            name = "Herculean Trousers",
            augments = {'"Triple Atk."+4', "DEX+7", "Accuracy+15", "Attack+4"}
        },
        feet = "Mummu Gamash. +2",
        neck = "Erudit. Necklace",
        waist = "Windbuffet Belt +1",
        left_ear = "Sherida Earring",
        right_ear = "Telos Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Petrov Ring",
        back = {
            name = "Toutatis's Cape",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+5",
                '"Dbl.Atk."+10',
                "Phys. dmg. taken-10%"
            }
        }
    }

    TH = false
    sets.TH = {
        hands = {
            name = "Plun. Armlets +3",
            augments = {'Enhances "Perfect Dodge" effect'}
        },
        feet = "Skulk. Poulaines +1",
        waist = "Chaac Belt"
    }

    sets.Misc = {}
    sets.Misc.Ranged = {
        head = "Meghanada Visor +2",
        body = "Meg. Cuirie +2",
        hands = "Meg. Gloves +2",
        legs = "Meg. Chausses +2",
        feet = "Meg. Jam. +1",
        neck = "Iqabi Necklace",
        left_ear = "Telos Earring",
        -- right_ear = "Neritic Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Haverton Ring"
        -- back = "Buquwik Cape"
    }

    sets.WeaponSkill = {
        ammo = "Jukukik Feather",
        head = {
            name = "Lilitu Headpiece",
            augments = {"STR+10", "DEX+10", "Attack+15", "Weapon skill damage +3%"}
        },
        body = {
            name = "Herculean Vest",
            augments = {"Attack+25", "Weapon skill damage +3%", "DEX+12", "Accuracy+11"}
        },
        hands = "Meg. Gloves +2",
        legs = "Mummu Kecks +2",
        feet = {
            name = "Herculean Boots",
            augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
        },
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Sherida Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Ramuh Ring +1",
        back = {
            name = "Toutatis's Cape",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%", "Phys. dmg. taken-10%"}
        }
    }

    sets.WeaponSkill["Rudra's Storm"] = set_combine(
        sets.WeaponSkill,
        {left_ear = "Ishvara Earring"}
    )
    sets.WeaponSkill["Shark Bite"] = sets.WeaponSkill["Rudra's Storm"]

    sets.JobAbility = {}
    sets.JobAbility["Assassin's Charge"] = {
        feet = "Plun. Poulaines +1"
    }
    sets.JobAbility.Despoil = {
        feet = "Skulk. Poulaines +1"
    }
    sets.JobAbility.Flee = {
        feet = "Pill. Poulaines +1"
    }
    sets.JobAbility.Hide = {
        body = "Pillager's Vest +1"
    }
    sets.JobAbility["Perfect Dodge"] = {
        hands = {
            name = "Plun. Armlets +3",
            augments = {'Enhances "Perfect Dodge" effect'}
        }
    }
    sets.JobAbility.Steal = {
        hands = "Pillager's Armlets +1",
        legs = "Pill. Culottes +1",
        feet = "Pill. Poulaines +1"
    }

    sets.BardSong = sets.TH
end

function precast(spell, action)
    if "Trust" == spell.type then
        return
    end

    if spell.english == "Spectral Jig" and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
    end

    if sets[spell.type] then
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

    if TH then
        equip(sets.TH)
    end

	if DT then
		equip(sets.PDT)
	end
end

function self_command(command)
    command = command:lower()

    if "dt" == command then
        DT = not DT

        windower.add_to_chat(123, "DT: " .. (DT and "on" or "off"))

        status_change(player.status, player.status)

        return
    end

    if "th" == command then
        TH = not TH

        status_change(player.status, player.status)

        return
    end
end

function debug(s)
    send_command("@input /echo " .. s)
end
