function get_sets()
    send_command("@input /macro book 6;wait .1;input /macro set 1")

    sets.Idle = {mode = "Default"}
    sets.Idle.Default = {
        ammo = "Staunch Tathlum +1",
        head = "Turms Cap +1",
        body = "Runeist's Coat +2",
        hands = "Erilaz Gauntlets +1",
        legs = "Eri. Leg Guards +1",
        feet = "Erilaz Greaves +1",
        neck = "Futhark Torque +2",
        waist = "Flume Belt",
        left_ear = "Genmei Earring",
        right_ear = "Hearty Earring",
        left_ring = "Moonlight Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Ogma's cape",
            augments = {
                "STR+20",
                "Accuracy+20 Attack+20",
                "STR+10",
                '"Dbl.Atk."+10'
            }
        }
    }
    sets.Idle.Dt = {
        ammo = "Staunch Tathlum +1",
        head = "Fu. Bandeau +1",
        body = "Futhark Coat +1",
        hands = {
            name = "Herculean Gloves",
            augments = {"Phys. dmg. taken -5%", "STR+10", "Accuracy+7", "Attack+7"}
        },
        legs = "Carmine Cuisses +1",
        feet = "Erilaz Greaves +1",
        neck = "Futhark Torque +2",
        waist = "Flume Belt",
        left_ear = "Genmei Earring",
        right_ear = "Hearty Earring",
        left_ring = "Moonlight Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Ogma's cape",
            augments = {
                "HP+60",
                "Eva.+20 /Mag. Eva.+20",
                "Mag. Evasion+10",
                "Enmity+10",
                "Mag. Evasion+15"
            }
        }
    }
    -- sets.Idle.Kite = {}

    sets.Engaged = {mode = "Melee"}
    sets.Engaged.Melee = {
        ammo = "Ginsen",
        head = {
            name = "Adhemar Bonnet +1",
            augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        },
        body = {
            name = "Adhemar Jacket +1",
            augments = {"STR+12", "DEX+12", "Attack+20"}
        },
        hands = {
            name = "Adhemar Wrist. +1",
            augments = {"STR+12", "DEX+12", "Attack+20"}
        },
        legs = "Samnuha Tights",
        feet = {
            name = "Carmine Greaves +1",
            augments = {"Accuracy+12", "DEX+12", "MND+20"}
        },
        neck = "Anu Torque",
        waist = "Windbuffet Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Sherida Earring",
        left_ring = "Niqmaddu Ring",
        right_ring = "Epona's Ring",
        back = {
            name = "Ogma's cape",
            augments = {
                "STR+20",
                "Accuracy+20 Attack+20",
                "STR+10",
                '"Dbl.Atk."+10'
            }
        }
    }
    sets.Engaged.Parry =
        set_combine(
        sets.Engaged.Melee,
        {
            ammo = "Staunch Tathlum +1",
            head = "Futhark Bandeau +1",
            body = "Futhark Coat +1",
            hands = "Turms Mittens +1",
            legs = "Eri. Leg Guards +1",
            -- feet="Turms Leggings",
            neck = "Futhark Torque +2",
            waist = "Flume Belt",
            left_ear = "Genmei Earring",
            -- right_ear = "Odnowa Earring +1",
            -- left_ring = "Gelatinous Ring +1",
            right_ring = "Defending Ring",
            back = {
                name = "Ogma's cape",
                augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10", "Mag. Evasion+15"}
            }
        }
    )
    sets.Engaged.Magic = {
        ammo = "Staunch Tathlum +1", -- DT3  PDT  MDT
        head = "Futhark Bandeau +1", -- DT   PDT4 MDT
        body = "Futhark Coat +1", -- DT7  PDT  MDT
        hands = {
            name = "Herculean Gloves",
            augments = {"Phys. dmg. taken -5%", "STR+10", "Accuracy+7", "Attack+7"}
        }, -- DT   PDT7 MDT
        legs = "Eri. Leg Guards +1", -- DT   PDT7 MDT
        feet = "Erilaz Greaves +1", -- DT   PDT5 MDT
        neck = "Futhark Torque +2", -- DT7  PDT  MDT
        waist = "Flume Belt", -- DT   PDT4 MDT
        left_ear = "Genmei Earring", -- DT   PDT2 MDT
        right_ear = "Sherida Earring", -- DT   PDT  MDT
        left_ring = "Shadow Ring", -- DT   PDT  MDT
        right_ring = "Defending Ring", -- DT10 PDT  MDT
        back = {
            name = "Ogma's cape",
            augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10", "Mag. Evasion+15"}
        }
    } -- DT27 PDT29 MDT
    sets.Engaged.Hybrid =
        set_combine(
        sets.Engaged.Melee,
        {
            ammo = "Staunch Tathlum +1",
            head = "Meghanada Visor +2",
            body = "Ayanmo Corazza +2",
            -- hands={
            --     name="Herculean Gloves",
            --     augments={'DEX','Acc/Att','TA'}
            -- },
            legs = "Meg. Chausses +2",
            feet = {
                name = "Herculean Boots",
                augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
            },
            neck = "Futhark Torque +2",
            waist = "Ioskeha Belt",
            left_ear = "Telos Earring",
            right_ear = "Sherida Earring",
            left_ring = "Niqmaddu Ring",
            right_ring = "Defending Ring",
            back = {
                name = "Ogma's cape",
                augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10'}
            }
        }
    )

    sets.Emnity = {
        equipable = true,
        ammo = "Aqreqaq Bomblet",
        head = "Halitus Helm",
        body = "Emet Harness +1",
        hands = "Futhark Mitons +1",
        legs = "Eri. Leg Guards +1",
        feet = "Ahosi Leggings",
        neck = "Futhark Torque +2",
        left_ear = "Trux Earring",
        right_ear = "Cryptic Earring",
        back = {
            name = "Ogma's cape",
            augments = {"Enmity+10"}
        }
    }

    sets.Rune = {}
    sets.Ward = {}

    -- JA Sets --
    sets.JobAbility = {}

    sets.JobAbility["Battuta"] = {head = "Futhark Bandeau +1"}
    sets.JobAbility["Elemental Sforzo"] = {body = "Futhark Coat +1"}
    sets.JobAbility["Gambit"] = {hands = "Runeist mitons +1"}
    sets.JobAbility["Inspiration"] = {legs = "Futhark Trousers +1"}
    sets.JobAbility["Liement"] = {body = "Futhark Coat +1"}
    sets.JobAbility["Pflug"] = {feet = "Runeist Bottes +1"}
    sets.JobAbility["Rayke"] = {feet = "Futhark Boots +1"}
    sets.JobAbility["Sleight of Sword"] = {hands = "Futhark mitons +1"}
    sets.JobAbility["Swordplay"] = {hands = "Futhark mitons +1"}
    sets.JobAbility["Valiance"] = {body = "Runeist's Coat +2"}
    sets.JobAbility["Vallation"] = {body = "Runeist's Coat +2"}
    sets.JobAbility["Vivacious Pulse"] = {head = "Erilaz Galea +1"}

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
    -- sets.WeaponSkill['Dimidiation'] = {}

    sets.WeaponSkill["Resolution"] = {
        ammo = "Knobkierrie",
        head = {
            name = "Lilitu Headpiece",
            augments = {
                "STR+10",
                "DEX+10",
                "Attack+15",
                "Weapon skill damage +3%"
            }
        },
        body = {
            name = "Adhemar Jacket +1",
            augments = {"STR+12", "DEX+12", "Attack+20"}
        },
        hands = {
            name = "Adhemar Wrist. +1",
            augments = {"STR+12", "DEX+12", "Attack+20"}
        },
        legs = "Lustr. Subligar +1",
        feet = {name = "Lustra. Leggings +1", augments = {"Attack+20", "STR+8", '"Dbl.Atk."+3'}},
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Moonshade Earring",
        right_ear = "Sherida Earring",
        left_ring = "Niqmaddu Ring",
        right_ring = "Regal Ring",
        back = {
            name = "Ogma's cape",
            augments = {
                "STR+20",
                "Accuracy+20 Attack+20",
                "STR+10",
                '"Dbl.Atk."+10'
            }
        }
    }

    sets.WeaponSkill["Dimidiation"] = {
        ammo = "Knobkierrie",
        head = {
            name = "Lilitu Headpiece",
            augments = {
                "STR+10",
                "DEX+10",
                "Attack+15",
                "Weapon skill damage +3%"
            }
        },
        body = {
            name = "Adhemar Jacket +1",
            augments = {"STR+12", "DEX+12", "Attack+20"}
        },
        hands = "Meg. Gloves +2",
        legs = {
            name = "Lustr. Subligar +1",
            augments = {"Accuracy+20", "DEX+8", "Crit. hit rate+3%"}
        },
        feet = {
            name = "Lustra. Leggings +1",
            augments = {"Attack+20", "STR+8", '"Dbl.Atk."+3'}
        },
        neck = "Caro Necklace",
        waist = "Chiner's Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Sherida Earring",
        left_ring = "Niqmaddu Ring",
        right_ring = "Ilabrat Ring",
        back = {
            name = "Ogma's cape",
            augments = {
                "STR+20",
                "Accuracy+20 Attack+20",
                "STR+10",
                '"Dbl.Atk."+10'
            }
        }
    }

    sets.WeaponSkill["Fell Cleave"] = sets.WeaponSkill["Resolution"]
    sets.WeaponSkill["Steel Cyclone"] = sets.WeaponSkill["Dimidiation"]

    sets.FastCast = {
        ammo = "Impatiens",
        head = "Runeist's Bandeau +2",
        hands = {
            name = "Leyline Gloves",
            augments = {'"Fast Cast"+3'}
        },
        legs = "Aya. Cosciales +2",
        feet = "Carmine Greaves +1",
        neck = "Futhark Torque +2",
        waist = "Flume Belt",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Prolix Ring",
        right_ring = "Defending Ring"
    }

    sets.Midcast = {}

    sets.Midcast["Enhancing Magic"] = {
        equipable = true,
        hands = "Runeist Mitons +1",
        legs = "Futhark Trousers +1",
        waist = "Olympus Sash",
        left_ear = "Andoaa Earring",
        back = "Merciful Cape"
    }

    sets.Midcast["Enhancing Magic"].Phalanx =
        set_combine(sets.Midcast["Enhancing Magic"], {head = "Futhark Bandeau +1"})
    sets.Midcast["Enhancing Magic"].Refresh = set_combine(sets.Midcast["Enhancing Magic"], {head = "Erilaz Galea +1"})
    sets.Midcast["Enhancing Magic"].Regen =
        set_combine(sets.Midcast["Enhancing Magic"], {head = "Runeist's Bandeau +2"})
    sets.Midcast["Enhancing Magic"]["Regen II"] = sets.Midcast["Enhancing Magic"].Regen
    sets.Midcast["Enhancing Magic"]["Regen III"] = sets.Midcast["Enhancing Magic"].Regen
    sets.Midcast["Enhancing Magic"]["Regen IV"] = sets.Midcast["Enhancing Magic"].Regen

    sets.Midcast["Divine Magic"] = set_combine(sets.Emnity, {})
    sets.Midcast["Dark Magic"] = set_combine(sets.Emnity, {})
    sets.Midcast["Blue Magic"] = set_combine(sets.Emnity, {})
end

--[[
    Healing Breeze
    Refueling
    Cacoon
    Sheep Song
    Blank Gaze
    Geist Wall
    Jettatura
]]
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

function status_change_idle()
    equip(sets.Idle[sets.Idle.mode])
end

function status_change_engaged()
    equip(sets.Engaged[sets.Engaged.mode])
end

function aftercast(spell, action)
    status_change(player.status)
end

function buff_change(name, gain, buff_details)
    debug(name .. " " .. (gain and "on" or "off"))
end

function self_command(argsString)
    print(T(player).status)

    args = argsString:lower():split(" ")

    if _G["self_command_" .. args[1]] then
        _G["self_command_" .. args[1]](args:slice(2))
    end

    status_change(player.status)
end

function self_command_i(args)
    self_command_idle(args)
end

function self_command_idle(args)
    if not args[1] then
        error(4, "Error: No Idle Mode Specified")
        return
    end

    local mode = args[1]:ucfirst()
    if not sets.Idle[mode] then
        error(4, "Error: Invalid Idle Mode: " .. mode)
        return
    end

    sets.Idle.mode = mode
    status_change(player.status)
    notice("Idle Mode Set: " .. mode)
end

function self_command_e(args)
    return self_command_engaged(args)
end

function self_command_engaged(args)
    if not args[1] then
        error(4, "Error: No Engaged Mode Specified")
        return
    end

    local mode = args[1]:ucfirst()
    if not sets.Engaged[mode] then
        error(4, "Error: Invalid Engaged Mode: " .. mode)
        return
    end

    sets.Engaged.mode = mode
    status_change(player.status)
    notice("Engaged Mode Set: " .. mode)
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
