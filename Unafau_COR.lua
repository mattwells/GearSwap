function get_sets()
    sets.Idle = {
        main = "Demersal degen",
        sub = "Arasy knife",
        head = "Meghanada Visor +1",
        body = "Meg. Cuirie +2",
        hands = "Meg. Gloves +1",
        legs = "Meg. Chausses +1",
        feet = "Meg. Jam. +1",
        neck = "Twilight Torque",
        waist = "",
        left_ear = "Steelflash earring",
        right_ear = "Bladeborn earring",
        left_ring = "Patricius Ring",
        right_ring = "Epona's Ring",
        back = "Mecistopins Mantle"
    }

    sets.Engaged = {
        range = "Doomsday",
        head = "Meghanada visor +1",
        body = "Meg. Cuirie +2",
        hands = "Herculean gloves",
        legs = "Herculean trousers",
        feet = "Herculean boots",
        neck = "Asperity Necklace",
        waist = "Sarissaphori Belt",
        left_ear = "Bladeborn earring",
        right_ear = "Steelflash earring",
        right_ring = "Rajas ring",
        left_ring = "Epona's ring",
        back = "Atheling mantle"
    }

    sets.Misc = {}
    sets.Misc.Ranged = {
        head = "Meghanada Visor +1",
        body = "Meg. Cuirie +2",
        hands = "",
        legs = "Meg. Chausses +1",
        feet = "Meg. Jam. +1",
        neck = "Iqabi Necklace",
        left_ear = "",
        right_ear = "",
        left_ring = "",
        right_ring = "",
        back = ""
    }

    sets.WeaponSkill = {
        head = "Meghanada Visor +1",
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
        right_ear = {
            name = "Moonshade Earring", 
            augments = {"Attack+4", "TP Bonus +25"}
        },
        left_ring = "Ilabrat Ring",
        right_ring = "Apate Ring",
        back = "Buquwik Cape"
    }
    sets.WeaponSkill["Savage Blade"] = {
        head = "Meghanada Visor +1",
        body = {
            name = "Herculean Vest", 
            augments = {"Attack+25", "Weapon skill damage +3%", "DEX+12", "Accuracy+11"}
        },
        hands = "Meg. Gloves +1",
        legs = "Meg. Chausses +2",
        feet = {
            name = "Herculean Boots", 
            augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
        },
        neck = "Fotia Gorget",
        waist = "Metalsinger Belt",
        left_ear = "Ishvara Earring",
        right_ear = {
            name = "Moonshade Earring", 
            augments = {"Attack+4", "TP Bonus +25"}
        },
        left_ring = "Ifrit Ring",
        right_ring = "Ifrit Ring +1",
        back = "Buquwik Cape"
    }

    sets.WeaponSkill["Last Stand"] = {
        head = "Dampening Tam",
        body = "Samnuha coat",
        hands = "Floral gauntlets",
        legs = "Meg. Chausses +1",
        feet = "Meg. jambeau +1",
        neck = "Gaudryi necklace",
        waist = "Elanid belt",
        left_ear = "",
        right_ear = "",
        left_ring = "",
        right_ring = "",
        back = "Thall mantle"
    }
    sets.WeaponSkill["Leaden Salute"] = {
        range = "Doomsday",
        head = "Meghanada visor +1",
        body = "Samnuha coat",
        hands = "Leyline gloves",
        legs = "Meg. Chausses +1",
        feet = "Meg. Jam. +1",
        neck = "Sanctity Necklace",
        waist = "Eschan Stone",
        left_ear = "Friomisi Earring",
        right_ear = "Hecate's earring",
        left_ring = "Weatherspoon Ring",
        right_ring = "Acumen Ring",
        back = "Gunslinger's Cape"
    }

    sets.CorsairRoll = {
        range = "Compensator",
        head = "Lanun Tricorne",
        hands = "Navarch's gants +2",
        left_ring = "Barataria Ring",
        right_ring = "Luzaf's ring",
        back = "Gunslinger's Cape"
    }
    -- sets.CorsairRoll["Fighter's Roll"] = {}

    -- sets.CorsairShot = {}
    -- sets.CorsairShot["Ice Shot"] = {}
end

function precast(spell, action)
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
    if (sets[new]) then
        equip(sets[new])
        debug(new)
    end
end

function debug(s)
    send_command("@input /echo " .. s)
end
