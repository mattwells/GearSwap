function get_sets()
    DT = false
    sets.PDT = {
        head = "Sulevia's Mask +1",
        body = "Sulevia's Plate. +1",
        hands = "Sulev. Gauntlets +1",
        legs = "Sulevi. Cuisses +1",
        feet = "Sulev. Leggings +2",
        neck = "Twilight Torque",
        waist = "Flume Belt",
        left_ear = "Infused Earring",
        left_ring = "Sulevia's Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}
        }
    }

    sets.Idle = set_combine(sets.PDT, {})

    sets.Engaged = {
        ammo="Ginsen",
        head="Flam. Zucchetto +2",
        body="Flamma Korazin +1",
        hands="Flam. Manopolas +1", -- Sulevia +2
        legs="Flamma Dirs +1", -- Sulevia +2
        feet="Flam. Gambieras +2",
        neck="Ganesha's Mala",
        waist="Ioskeha Belt",
        left_ear="Telos Earring",
        right_ear="Sherida Earring",
        left_ring="Petrov Ring",
        right_ring="Niqmaddu Ring",
        back={ 
            name="Brigantia's Mantle", 
            augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}
        },
    }

    -- JA Sets --
    sets.JobAbility = {}

    sets.JobAbility["Soul Jump"] = {}
    sets.JobAbility["Spirit Jump"] = set_combine(
        sets.JobAbility["Soul Jump"],
        {feet = "Pelt. Schyn. +1"}
    )
    sets.JobAbility["Jump"] = set_combine(
        sets.JobAbility["Soul Jump"],
        {
            body = "Vishap Mail +1",
            hands = "Vishap F. G. +1"
        }
    )
    sets.JobAbility["High Jump"] = set_combine(
        sets.JobAbility["Jump"], 
        {legs = "Ptero. Brais"}
    )

    -- WS Sets --
    sets.WeaponSkill = {}

    sets.WeaponSkill.Drakesbane = {
        ammo = "Knobkierrie",
        head = "Flam. Zucchetto +2",
        body="Sulevia's Plate. +1",
        hands = "Flam. Manopolas +1",
        legs = "Pelt. Cuissots +1",
        feet = "Sulev. Leggings +2",
        neck = "Fotia Gorget",
        waist="Ioskeha Belt",
        left_ear = "Brutal Earring",
        right_ear = "Sherida Earring",
        left_ring = "Ifrit Ring +1",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {"STR+20", "Accuracy+20 Attack+20", '"Dbl.Atk."+10'}
        }
    }

    sets.WeaponSkill.Stardiver =
        set_combine(
        sets.WeaponSkill.Drakesbane,
        {
            hands = "Sulev. Gauntlets +1",
            legs = "Sulevi. Cuisses +1",
            waist = "Fotia Belt",
            left_ear = "Moonshade Earring",
            right_ear = "Sherida Earring"
        }
    )

    sets.WeaponSkill["Camlann's Torment"] = {
        ammo="Knobkierrie",
        head="Flam. Zucchetto +2",
        body={ 
            name="Valorous Mail", 
            augments={'Attack+30','Sklchn.dmg.+1%','STR+14','Accuracy+14',}
        },
        hands="Wyrm Fng.Gnt.",
        legs="Vishap Brais +1",
        feet="Sulev. Leggings +2",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear="Sherida Earring",
        left_ring="Ifrit Ring +1",
        right_ring="Niqmaddu Ring",
        back={ 
            name="Brigantia's Mantle", 
            augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}
        },
    }
    sets.WeaponSkill["Sonic Thrust"] = sets.WeaponSkill["Camlann's Torment"]

    sets.WeaponSkill["Leg Sweep"] = {
        head = "Flam. Zucchetto +2",
        body = "Flamma Korazin +1",
        hands = "Flam. Manopolas +1",
        legs = "Flamma Dirs +1",
        feet = "Flam. Gambieras +2",
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = {
            name = "Moonshade Earring",
            augments = {"Attack+4", "TP Bonus +250"}
        },
        right_ear = "Digni. Earring",
        left_ring = "Ifrit Ring +1",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {"STR+20", "Accuracy+20 Attack+20", '"Dbl.Atk."+10'}
        }
    }
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

        debug(spell.type .. " " .. spell.english)

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
