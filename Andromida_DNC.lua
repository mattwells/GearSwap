local incapacitated_states = T {"stun", "petrification", "terror", "sleep", "weakness"}

local modes = {
    Idle = "Movement",
    Engaged = "Turtle"
}

function get_sets()
    sets.Idle = {}
    sets.Idle.Movement = {
        ammo = "Staunch Tathlum +1",
        head = "Turms Cap +1",
        body = "Gleti's Cuirass",
        hands = "Gleti's Gauntlets",
        legs = "Gleti's Breeches",
        feet = "Skd. Jambeaux +1",
        neck = "Rep. Plat. Medal",
        waist = "Engraved Belt",
        left_ear = "Hearty Earring",
        right_ear = "Infused Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Chirich Ring +1",
        back = {
            name = "Senuna's Mantle",
            augments = {'Phys. dmg. taken-10%'}
        }
    }

    sets.Idle.Regain = {
        ammo = "Staunch Tathlum +1",
        head = "Turms Cap +1",
        body = "Gleti's Cuirass",
        hands = "Gleti's Gauntlets",
        legs = "Gleti's Breeches",
        feet = "Turms Leggings +1",
        neck = "Rep. Plat. Medal",
        waist = "Engraved Belt",
        left_ear = "Hearty Earring",
        right_ear = "Infused Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Chirich Ring +1",
        back = {
            name = "Senuna's Mantle",
            augments = {'Phys. dmg. taken-10%'}
        }
    }

    sets.Engaged = {}
    sets.Engaged.Fodder = {
        ammo = "Staunch Tathlum +1",
        head = {
            name = "Adhemar Bonnet +1",
            augments = {'DEX+12', 'AGI+12', 'Accuracy+20'}
        },
        body = "Macu. Casaque +3",
        hands = {
            name = "Adhemar Wrist. +1",
            augments = {'DEX+12', 'AGI+12', 'Accuracy+20'}
        },
        legs = "Samnuha Tights",
        feet = "Horos T. Shoes +3",
        neck = "Etoile Gorget +2",
        waist = "Windbuffet Belt +1",
        left_ear = "Sherida Earring",
        right_ear = "Telos Earring",
        left_ring = "Moonlight Ring",
        right_ring = "Epona's Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', '"Store TP"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Engaged.Regain = {
        ammo = "Staunch Tathlum +1",
        head = "Turms Cap +1",
        body = "Gleti's Cuirass",
        hands = "Gleti's Gauntlets",
        legs = "Gleti's Breeches",
        feet = "Turms Leggings +1",
        neck = "Rep. Plat. Medal",
        waist = "Engraved Belt",
        left_ear = "Hearty Earring",
        right_ear = "Infused Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Chirich Ring +1",
        back = {
            name = "Senuna's Mantle",
            augments = {'Phys. dmg. taken-10%'}
        }
    }

    sets.Engaged.Am3 = {
        ammo = "Aurgelmir Orb +1",
        head = "Malignance Chapeau",
        body = "Malignance Tabard",
        hands = "Malignance Gloves",
        legs = "Malignance Tights",
        feet = "Malignance Boots",
        neck = "Etoile Gorget +2",
        waist = "Windbuffet Belt +1",
        left_ear = "Dedition Earring",
        right_ear = "Telos Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Chirich Ring +1",
        back = {
            name = "Senuna's Mantle",
            augments = {
                'DEX+20',
                'Accuracy+20 Attack+20',
                'DEX+10',
                '"Store TP"+10',
                'Phys. dmg. taken-10%'
            }
        }
    }

    sets.Engaged.Turtle = {
        ammo = "Staunch Tathlum +1",
        head = "Malignance Chapeau",
        body = "Malignance Tabard",
        hands = "Malignance Gloves",
        legs = "Malignance Tights",
        feet = "Malignance Boots",
        neck = "Etoile Gorget +2",
        waist = "Engraved Belt",
        left_ear = "Sherida Earring",
        right_ear = "Brutal Earring",
        left_ring = "Vocane Ring +1",
        right_ring = "Defending Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {
                'DEX+20',
                'Accuracy+20 Attack+20',
                'DEX+10',
                '"Store TP"+10',
                'Phys. dmg. taken-10%'
            }
        }
    }

    sets.FastCast = {
        ammo = "Sapience Orb",
        head = {
            name = "Herculean Helm",
            augments = {'"Fast Cast"+3'}
        },
        body = {
            name = "Adhemar Jacket +1",
            augments = {'"Fast Cast"+10'}
        },
        hands = {
            name = "Leyline Gloves",
            augments = {'"Fast Cast"+3'}
        },
        neck = "Voltsurge Torque",
        waist = "Plat. Mog. Belt",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Prolix Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {'"Fast Cast"+10'}
        }
    }

    sets.Midcast = {}
    sets.Midcast["Dark Magic"] = {
        equipable = true,
        ammo = "Yamarang",
        head = "Maculele Tiara +3",
        body = "Macu. Casaque +3",
        hands = "Macu. Bangles +3",
        legs = "Maculele Tights +3",
        feet = "Macu. Toe Sh. +3",
        neck = "Etoile Gorget +2",
        waist = "Eschan Stone",
        left_ear = "Digni. Earring",
        right_ear = "Macu. Earring +1",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Senuna's Mantle",
            augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'Magic Damage +10', '"Fast Cast"+10',
                        'Spell interruption rate down-10%'}
        }
    }

    -- JA Sets --
    sets.JobAbility = {}
    sets.JobAbility["Saber Dance"] = {
        legs = "Horos Tights +3"
    }

    sets.JobAbility["Fan Dance"] = {
        hands = "Horos Bangles +1"
    }

    sets.JobAbility["No Foot Rise"] = {
        body = "Horos Casaque +3"
    }

    sets.Jig = {
        legs = "Horos Tights +3",
        feet = "Maxixi Toe shoes +2"
    }

    sets.Flourish = {}
    sets.Flourish["Violent Flourish"] = {
        body = "Horos Casaque +3"
    }

    sets.Flourish2 = {}
    sets.Flourish2["Reverse Flourish"] = {
        hands = "Macu. Bangles +3",
        back = {
            name = "Toetapper Mantle",
            augments = {'"Store TP"+2', '"Rev. Flourish"+29', "Weapon skill damage +1%"}
        }
    }

    sets.Flourish3 = {}

    sets.Waltz = {
        ammo = "Yamarang",
        head = "Horos Tiara +3",
        body = "Maxixi Casaque +3",
        hands = "Maxixi Bangles +3",
        legs = "Dashing Subligar",
        feet = "Horos T. Shoes +3",
        neck = "Etoile Gorget +2",
        waist = "Chaac Belt"
    }

    sets.Samba = {
        head = "Maculele Tiara +3",
        body = "Macu. Casaque +3",
        hands = "Macu. Bangles +3",
        legs = "Maculele Tights +3",
        feet = "Macu. Toe sh. +3"
    }

    sets.Step = {
        head = "Maxixi Tiara +2",
        body = "Horos Casaque +3",
        hands = "Maxixi Bangles +3",
        legs = "Meg. Chausses +2",
        feet = "Horos Toe Shoes +3",
        neck = "Etoile gorget +2",
        left_ring = "Regal Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%"}
        }
    }

    -- WS Sets --
    sets.WeaponSkill = {
        ammo = "Charis Feather",
        head = {
            name = "Lilitu Headpiece",
            augments = {"STR+10", "DEX+10", "Attack+15", "Weapon skill damage +3%"}
        },
        body = {
            name = "Herculean Vest",
            augments = {'MND+9', 'Attack+29', 'Weapon skill damage +6%', 'Accuracy+15 Attack+15'}
        },
        hands = "Maxixi Bangles +3",
        legs = "Horos Tights +3",
        feet = {
            name = "Herculean Boots",
            augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
        },
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Sherida Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Regal Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%"}
        }
    }

    sets.WeaponSkill["Evisceration"] = {
        ammo = "Charis Feather",
        head = {
            name = "Adhemar Bonnet +1",
            augments = {'DEX+12', 'AGI+12', 'Accuracy+20'}
        },
        body = "Meg. Cuirie +2",
        hands = "Mummu Wrists +2",
        legs = "Lustr. Subligar +1",
        feet = "Mummu Gamash. +2",
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Sherida Earring",
        right_ear = "Mache Earring +1",
        left_ring = "Ilabrat Ring",
        right_ring = "Regal Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', 'Weapon skill damage +10%'}
        }
    }

    sets.WeaponSkill["Pyrrhic Kleos"] = {
        ammo = "Aurgelmir Orb +1",
        head = "Lustratio Cap +1",
        body = {
            name = "Adhemar Jacket +1",
            augments = {'STR+12', 'DEX+12', 'Attack+20'}
        },
        hands = {
            name = "Adhemar Wrist. +1",
            augments = {'STR+12', 'DEX+12', 'Attack+20'}
        },
        legs = "Samnuha Tights",
        feet = "Lustra. Leggings +1",
        neck = "Etoile Gorget +2",
        waist = "Fotia Belt",
        left_ear = "Sherida Earring",
        right_ear = "Mache Earring +1",
        left_ring = "Epona's Ring",
        right_ring = "Regal Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', '"Dbl.Atk."+10'}
        }
    }

    sets.WeaponSkill["Rudra's Storm"] = {
        ammo = "Coiste Bodhar",
        head = "Maculele Tiara +3",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Etoile Gorget +2",
        waist = "Kentarch Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Macu. Earring +1",
        left_ring = "Epaminondas's Ring",
        right_ring = "Regal Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', 'Weapon skill damage +10%'}
        }
    }
    sets.WeaponSkill["Shark Bite"] = set_combine(sets.WeaponSkill["Rudra's Storm"], {})
    sets.WeaponSkill["Ruthless Stroke"] = set_combine(sets.WeaponSkill["Rudra's Storm"], {})
end

function precast(spell)
    if is_magic(spell) then
        equip(sets.FastCast)
        return
    end

    if spell.english == "Spectral Jig" and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if "Step" == spell.type then
        -- local allRecasts = windower.ffxi.get_ability_recasts()
        -- local prestoAvailable = allRecasts[236] < 1 and not buffactive["Presto"]
        -- local missingEnoughFM = not buffactive["Finishing Move (6+)"]

        -- if prestoAvailable and missingEnoughFM then
            cast_delay(1.1)
            send_command('@input /ja "Presto" <me>')
        -- end
    end

    if spell.english:startswith("Curing Waltz") and not refine_waltz(spell) then
        return
    end

    -- if spell.english == "Rudra's Storm" and buffactive["Climactic Flourish"] then
    --     equip(sets.WeaponSkill["Climactic Rudra's Storm"])
    --     debug("WeaponSkill Climactic Rudra's Storm")

    --     return
    -- end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])
        debug(spell.type .. " " .. spell.english)

        return
    end

    if ignore_spell_type(spell) and sets[spell.type] then
        equip(sets[spell.type])
        debug(spell.type)

        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function ignore_spell_type(spell)
    return spell.type ~= "JobAbility" and not spell.type:startswith("Flourish")
end

function midcast(spell, action)
    if incapacitated() then
        return
    end

    if spell.action_type ~= "Magic" then
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
end

function aftercast(spell, action)
    debug("Aftercast")
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

function status_change_idle()
    equip(sets.Idle[modes.Idle])
end

function status_change_engaged()
    equip(sets.Engaged[modes.Engaged])
end

function incapacitated()
    if incapacitated_states:find(function(value)
        return buffactive[value] or false
    end) then
        equip(sets.Idle)
        return true
    end
end

function buff_change(name, gain, buff_details)
    if incapacitated_states:contains(name) then
        status_change(player.status)
    end

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

function self_command_e(args)
    return self_command_engaged(args)
end

function self_command_engaged(args)
    if not args[1] then
        error("Error: No Engaged Mode Specified")
        return
    end

    local cmdMode = args[1]:ucfirst()
    if not sets.Engaged[cmdMode] then
        error("Error: Invalid Engaged Mode: " .. cmdMode)
        return
    end

    modes.Engaged = cmdMode
    status_change(player.status)
    notice("Engaged Mode Set: " .. cmdMode)
end

function self_command_i(args)
    return self_command_idle(args)
end

function self_command_idle(args)
    if not args[1] then
        error("Error: No Idle Mode Specified")
        return
    end

    local cmdMode = args[1]:ucfirst()
    if not sets.Idle[cmdMode] then
        error("Error: Invalid Engaged Mode: " .. cmdMode)
        return
    end

    modes.Idle = cmdMode
    status_change(player.status)
    notice("Engaged Mode Set: " .. cmdMode)
end

function find_player_in_alliance(name)
    for party_index, ally_party in ipairs(alliance) do
        for player_index, _player in ipairs(ally_party) do
            if _player.name == name then
                return _player
            end
        end
    end
end

function get_target_missing_hp(target)
    if target.type == "SELF" then
        return player.max_hp - player.hp
    end

    if not target.isallymember then
        return
    end

    local target = find_player_in_alliance(target.name)

    return math.floor((target.hp / (target.hpp / 100)) - target.hp)
end

function get_dnc_level()
    if player.sub_job == "DNC" then
        return player.sub_job_level
    end

    return player.main_job_level
end

function refine_waltz(spell)
    if player.tp < 200 then
        add_to_chat(122, "No TP!")
        cancel_spell()
        return
    end

    local dncLevel = get_dnc_level()
    local spellRecasts = windower.ffxi.get_spell_recasts()
    local missingHP = get_target_missing_hp(spell.target)

    if not missingHP then
        return true
    end

    local waltzes = table.filter({{
        id = 190,
        name = "Curing Waltz",
        level = 15,
        tp = 200,
        hp = 300
    }, {
        id = 191,
        name = "Curing Waltz II",
        level = 30,
        tp = 350,
        hp = 600
    }, {
        id = 192,
        name = "Curing Waltz III",
        level = 45,
        tp = 500,
        hp = 1000
    }, {
        id = 193,
        name = "Curing Waltz IV",
        level = 70,
        tp = 650,
        hp = 1500
    }, {
        id = 194,
        name = "Curing Waltz V",
        level = 87,
        tp = 800,
        hp = 2000
    }}, function(waltz)
        return waltz.level <= dncLevel and waltz.tp <= player.tp and spellRecasts[waltz.id] < 1
    end)

    local newWaltz = "Curing Waltz"
    for _, waltz in ipairs(waltzes) do
        if waltz.hp > missingHP then
            break
        end

        newWaltz = waltz.name
    end

    if newWaltz ~= spell.english then
        send_command('@input /ja "' .. newWaltz .. '" ' .. tostring(spell.target.raw))
        cancel_spell()
        return
    end

    return true
end

function is_magic(spell)
    return spell.action_type == "Magic"
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
