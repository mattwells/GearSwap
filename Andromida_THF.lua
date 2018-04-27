function get_sets()
    sets.Idle = {
        head = "Meghanada Visor +1",
        body = "Meg. Cuirie +2",
        hands = "Meg. Gloves +1",
        legs = "Meg. Chausses +2",
        feet = "Meg. Jam. +1",
        neck = "Twilight Torque",
        waist = "Flume Belt",
        left_ear = "Reraise Earring",
        right_ear = "Infused Earring",
        left_ring = {
            name = "Dark Ring",
            augments = {"Magic dmg. taken -5%", "Phys. dmg. taken -3%"}
        },
        right_ring = "Warden's Ring",
        back = "Mollusca Mantle"
    }

    sets.Engaged = {
        ammo = "Yamarang",
        head = "Mummu Bonnet +1",
        body = "Mummu Jacket +2",
        hands = {
            name = "Plun. Armlets +1",
            augments = {'Enhances "Perfect Dodge" effect'}
        },
        -- hands = {
        --     name = "Adhemar Wrist. +1",
        --     augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        -- },
        legs = "Mummu Kecks +2",
        feet = "Raid. Poulaines +2",
        -- feet = "Mummu Gamash. +1",
        neck = "Asperity Necklace",
        waist = "Chaac Belt",
        -- waist = "Windbuffet Belt +1",
        left_ear = "Sherida Earring",
        right_ear = "Telos Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Epona's Ring",
        back = "Canny Cape"
    }

    sets.Misc = {}
    sets.Misc.Ranged = {
        head = "Meghanada Visor +1",
        body = "Meg. Cuirie +2",
        hands = "Meg. Gloves +1",
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
        ammo = "Jukukik Feather",
        head = "Mummu Bonnet +1",
        body = {
            name = "Herculean Vest",
            augments = {"Attack+25", "Weapon skill damage +3%", "DEX+12", "Accuracy+11"}
        },
        hands = "Meg. Gloves +1",
        legs = "Mummu Kecks +2",
        feet = "Mummu Gamash. +1",
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Sherida Earring",
        right_ear = {
            name = "Moonshade Earring",
            augments = {"Attack+4", "TP Bonus +25"}
        },
        left_ring = "Ilabrat Ring",
        right_ring = "Ramuh Ring +1",
        back = {
            name = "Senuna's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Store TP"+10', "System: 1 ID: 1155 Val: 4"}
        }
        -- DEX30 Acc/Att DblAtt
    }

    sets.WeaponSkill["Rudra's Storm"] = {
        ammo = "Jukukik Feather",
        head = "Mummu Bonnet +1",
        body = {
            name = "Herculean Vest",
            augments = {"Attack+25", "Weapon skill damage +3%", "DEX+12", "Accuracy+11"}
        },
        hands = "Meg. Gloves +1",
        legs = "Mummu Kecks +2",
        feet = "Mummu Gamash. +1",
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Sherida Earring",
        right_ear = {
            name = "Moonshade Earring",
            augments = {"Attack+4", "TP Bonus +25"}
        },
        left_ring = "Ilabrat Ring",
        right_ring = "Ramuh Ring +1",
        back = "Canny Cape"
    }
    sets.WeaponSkill["Shark Bite"] = sets.WeaponSkill["Rudra's Storm"]

    sets.JobAbility = {}
    sets.JobAbility.Despoil = {
        feet = "Raid. Poulaines +2"
    }
    sets.JobAbility["Perfect Dodge"] = {
        hands = {
            name = "Plun. Armlets +1",
            augments = {'Enhances "Perfect Dodge" effect'}
        }
    }

    sets.BardSong = {
        head = "Meghanada Visor +1",
        body = "Meg. Cuirie +2",
        hands = {
            name = "Plun. Armlets +1",
            augments = {'Enhances "Perfect Dodge" effect'}
        },
        legs = "Meg. Chausses +2",
        feet = "Raid. Poulaines +2",
        neck = "Twilight Torque",
        waist = "Chaac Belt",
        left_ear = "Reraise Earring",
        right_ear = "Infused Earring",
        left_ring = {
            name = "Dark Ring",
            augments = {"Magic dmg. taken -5%", "Phys. dmg. taken -3%"}
        },
        right_ring = "Warden's Ring",
        back = "Mollusca Mantle"
    }
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
