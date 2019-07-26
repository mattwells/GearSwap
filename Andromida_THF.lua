function get_sets()
    send_command("@input /macro book 2;wait .1;input /macro set 1")

    sets.Idle = {
        ammo = "Staunch Tathlum +1",
        head = "Turms Cap +1",
        body = "Meg. Cuirie +2",
        hands = {
            name = "Herculean Gloves",
            augments = {
                "Phys. dmg. taken -5%",
                "STR+10",
                "Accuracy+7",
                "Attack+7"
            }
        },
        legs = "Mummu Kecks +2",
        feet = "Meg. Jam. +2",
        neck = "Loricate Torque +1",
        waist = "Engraved Belt",
        left_ear = "Genmei Earring",
        right_ear = "Hearty Earring",
        left_ring = "Defending Ring",
        right_ring = "Vocane Ring",
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
    } -- DT 28

    sets.Engaged = {
        ammo = "Yamarang",
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
            augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        },
        legs = {
            name = "Samnuha Tights",
            augments = {"STR+10", "DEX+10", '"Dbl.Atk."+3', '"Triple Atk."+3'}
        },
        feet = "Mummu Gamash. +2",
        neck = "Assassin's Gorget",
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

    DT = false
    sets.PDT =
        set_combine(
        sets.Engaged,
        {
            ammo = "Staunch Tathlum +1",
            head = {
                name = "Adhemar Bonnet +1",
                augments = {"DEX+12", "AGI+12", "Accuracy+20"}
            },
            body = "Meg. Cuirie +2",
            hands = "Meg. Gloves +2",
            legs = "Meg. Chausses +2",
            feet = "Meg. Jam. +2",
            neck = "Loricate Torque +1",
            waist = "Dynamic Belt",
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
    )

    TH = false
    sets.TH = {
        hands = {
            name = "Plun. Armlets +3",
            augments = {'Enhances "Perfect Dodge" effect'}
        },
    }

    sets.WeaponSkill = {
        ammo = "Yamarang",
        head = "Pill. Bonnet +3",
        body = {
            name = "Herculean Vest",
            augments = {
                "MND+9",
                "Attack+29",
                "Weapon skill damage +6%",
                "Accuracy+15 Attack+15"
            }
        },
        hands = "Meg. Gloves +2",
        legs = "Plun. Culottes +3",
        feet = {
            name = "Herculean Boots",
            augments = {
                "Attack+24",
                "Weapon skill damage +3%",
                "DEX+14"
            }
        },
        neck = "Assassin's Gorget",
        waist = "Chiner's Belt +1",
        left_ear = "Ishvara Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Regal Ring",
        back = {
            name = "Toutatis's Cape",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+10",
                "Weapon skill damage +10%",
                "Phys. dmg. taken-10%"
            }
        }
    }

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

    window =
        texts.new(
        {
            pos = {x = 513, y = 642},
            text = {
                font = "Segoe UI Symbol",
                size = 12,
                Fonts = {"sans-serif"}
            },
            bg = {alpha = 255}
        }
    )
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

    if DT then
        equip(sets.PDT)
    end

    if TH then
        equip(sets.TH)
    end
end

function self_command(command)
    command = command:lower()

    if "dt" == command then
        DT = not DT

        windower.add_to_chat(123, "DT: " .. (DT and "on" or "off"))
        screen_notices()

        status_change(player.status, player.status)

        return
    end

    if "th" == command then
        TH = not TH

        windower.add_to_chat(123, "TH: " .. (TH and "on" or "off"))
        screen_notices()

        status_change(player.status, player.status)

        return
    end

    if "koc" == command then
        for party_index, ally_party in ipairs(alliance) do
            for player_index, _player in ipairs(ally_party) do
                print(_player.name)
            end
        end
    -- windower.ffxi.get_mob_by_name(name)
    end
end

function screen_notices()
    window:clear()

    local text = ""

    if TH then
        text = text .. "TH "
    end

    if DT then
        text = text .. "DT "
    end

    window:append(text:trim())
    window:show()
end

function buff_change(name, gain, buff_details)
    -- if not gain and name:endswith("Roll") then
    --     send_command('@input /t Ajirha ' .. name .. ' off')
    -- end
end

function debug(s)
    send_command("@input /echo " .. s)
end
