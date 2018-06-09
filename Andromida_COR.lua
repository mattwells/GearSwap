function get_sets()
    sets.Idle = {
        ammo = "Eminent Bullet",
        head = "Meghanada Visor +2",
        body = "Meg. Cuirie +2",
        hands = "Meg. Gloves +2",
        legs = "Meg. Chausses +2",
        feet = "Meg. Jam. +1",
        neck = "Twilight Torque",
        waist = "Flume Belt",
        left_ear = "Telos Earring",
        right_ear = "Infused Earring",
        left_ring = "Defending Ring",
        right_ring = "Warden's Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+5", '"Dbl.Atk."+10', "System: 1 ID: 1155 Val: 4"}
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
            name = "Camulus's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+5", '"Dbl.Atk."+10', "System: 1 ID: 1155 Val: 4"}
        }
    }

    sets.Engaged = {
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
        neck = "Iqabi Necklace",
        waist = "Windbuffet Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Digni. Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Petrov Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+5", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}
        }
    }

    sets.Misc = {}
    sets.Misc.Ranged = {
        head = "Meghanada Visor +2",
        body = "Meg. Cuirie +2",
        hands = "Carmine Fin. Ga. +1",
        legs = "Meg. Chausses +2",
        feet = "Meg. Jam. +1",
        neck = "Iqabi Necklace",
        left_ear = "Telos Earring",
        right_ear = "Neritic Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Haverton Ring",
        back = "Buquwik Cape"
    }

    sets.WeaponSkill = {
        head = "Lilitu Headpiece",
        body = "Meg. Cuirie +2",
        hands = "Mummu Wrists +1",
        legs = "Meg. Chausses +2",
        feet = {
            name = "Herculean Boots",
            augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
        },
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Ishvara Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Apate Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "Weapon skill damage +10%"}
        }
    }
    sets.WeaponSkill["Savage Blade"] = {
        head = "Lilitu Headpiece",
        body = {
            name = "Herculean Vest",
            augments = {"Attack+25", "Weapon skill damage +3%", "DEX+12", "Accuracy+11"}
        },
        hands = "Meg. Gloves +2",
        legs = "Meg. Chausses +2",
        feet = {
            name = "Herculean Boots",
            augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
        },
        neck = "Fotia Gorget",
        waist = "Metalsinger Belt",
        left_ear = "Ishvara Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ifrit Ring",
        right_ring = "Ifrit Ring +1",
        back = {
            name = "Camulus's Mantle",
            augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", "Weapon skill damage +10%"}
        }
    }

    sets.WeaponSkill["Last Stand"] = {
        head = {
            name = "Lilitu Headpiece",
            augments = {"STR+10", "DEX+10", "Attack+15", "Weapon skill damage +3%"}
        },
        body = {
            name = "Herculean Vest",
            augments = {"Attack+25", "Weapon skill damage +3%", "DEX+12", "Accuracy+11"}
        },
        hands = "Meg. Gloves +2",
        legs = {
            name = "Herculean Trousers",
            augments = {"Rng.Acc.+9", "Weapon skill damage +5%", "AGI+7"}
        },
        feet = {
            name = "Herculean Boots",
            augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
        },
        neck = "Fotia Gorget",
        waist = "Elanid Belt",
        left_ear = "Ishvara Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Apate Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "Weapon skill damage +10%"}
        }
    }
    sets.WeaponSkill["Detonator"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Slug Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Sniper Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Split Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Numbing Shot"] = sets.WeaponSkill["Last Stand"]

    sets.WeaponSkill["Leaden Salute"] = {
        ammo = "Orichalc. Bullet",
        head = "Pixie Hairpin +1",
        body = {
            name = "Carm. Scale Mail",
            augments = {"Attack+15", '"Mag.Atk.Bns."+10', '"Dbl.Atk."+2'}
        },
        hands = {
            name = "Carmine Fin. Ga. +1",
            augments = {"Rng.Atk.+20", '"Mag.Atk.Bns."+12', '"Store TP"+6'}
        },
        legs = {
            name = "Herculean Trousers",
            augments = {"Rng.Acc.+9", "Weapon skill damage +5%", "AGI+7"}
        },
        feet = {
            name = "Herculean Boots",
            augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
        },
        neck = "Sanctity Necklace",
        waist = "Eschan Stone",
        left_ear = "Friomisi Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Acumen Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "Weapon skill damage +10%"}
        }
    }
    sets.WeaponSkill["Wildfire"] = set_combine(
        sets.WeaponSkill["Leaden Salute"], 
        {head = "Lilitu Headpiece"}
    )

    sets.CorsairRoll = {
        head = {
            name = "Lanun Tricorne",
            augments = {'Enhances "Winning Streak" effect'}
        },
        hands = "Chasseur's Gants",
        left_ring = "Barataria Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+5", '"Dbl.Atk."+10', "System: 1 ID: 1155 Val: 4"}
        }
    }
    -- sets.CorsairRoll["Fighter's Roll"] = {}

    -- sets.CorsairShot = {}
    -- sets.CorsairShot["Ice Shot"] = {}
end

function precast(spell, action)
    if "Trust" == spell.type then
        return
    end

    if "Leaden Salute" == spell.english then
        equip(sets.WeaponSkill["Leaden Salute"])

        if spell.element == world.day_element or spell.element == world.weather_element then
            equip({waist = "Anrin Obi"})
        end
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])
        debug(spell.type .. "." .. spell.english)
        return
    elseif sets[spell.type] then
        equip(sets[spell.type])
        debug(spell.type)
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

function self_command(command)
    command = command:lower()

    if "dt" == command then
        DT = not DT

        windower.add_to_chat(123, "DT: " .. (DT and "on" or "off"))

        status_change(player.status, player.status)

        return
    end
end

function debug(s)
    send_command("@input /echo " .. s)
end
