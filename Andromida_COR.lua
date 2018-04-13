function get_sets()
    sets.Idle = {
        head="Meghanada Visor +1",
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +1",
        legs="Meg. Chausses +2",
        feet="Meg. Jam. +1",
        neck="Twilight Torque",
        waist="Flume Belt",
        left_ear="Telos Earring",
        right_ear="Infused Earring",
        left_ring={ name="Dark Ring", augments={'Magic dmg. taken -5%','Phys. dmg. taken -3%',}},
        right_ring="Warden's Ring",
        back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }

    sets.Engaged = {
        head="Meghanada Visor +1",
        body="Meg. Cuirie +2",
        hands="Adherar Wrist. +1",
        legs="Meg. Chausses +2",
        feet="Meg. Jam. +1",
        neck="Iqabi Necklace",
        waist="Dynamic Belt",
        left_ear="Telos Earring",
        right_ear="Brutal Earring",
        left_ring="Ilabrat Ring",
        right_ring="Petrov Ring",
        back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }

    sets.Misc = {}
    sets.Misc.Ranged = {
        head="Meghanada Visor +1",
        body="Meg. Cuirie +2",
        hands="Carmine Fin. Ga. +1",
        legs="Meg. Chausses +2",
        feet="Meg. Jam. +1",
        neck="Iqabi Necklace",
        left_ear="Telos Earring",
        right_ear="Neritic Earring",
        left_ring="Ilabrat Ring",
        right_ring="Haverton Ring",
        back="Buquwik Cape",
    }

    sets.WeaponSkill = {}
    -- sets.WeaponSkill["Last Stand"] = {}
    sets.WeaponSkill["Leaden Salute"] = {
        head="Pixie Hairpin +1",
        body="Meg. Cuirie +2",
        hands="Carmine Fin. Ga. +1",
        legs="Meg. Chausses +2",
        feet="Meg. Jam. +1",
        neck="Iqabi Necklace",
        waist="Eschan Stone",
        left_ear="Friomisi Earring",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
        left_ring="Ilabrat Ring",
        right_ring="Acumen Ring",
        back="Toro Cape",
    }

    sets.CorsairRoll = {
        head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
        hands="Chasseur's Gants",
        left_ring="Barataria Ring",
        back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }
    -- sets.CorsairRoll["Fighter's Roll"] = {}

    -- sets.CorsairShot = {}
    -- sets.CorsairShot["Ice Shot"] = {}
end

function precast(spell, action)
    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])
        debug(spell.type .. '.' .. spell.english)
        return
    elseif sets[spell.type] then
        equip(sets[spell.type])
        debug(spell.type)
        return
    end
    
    debug('No set for ' .. spell.type .. '.' .. spell.english)
end

function aftercast(spell,action)
	status_change(player.status)
end

function status_change(new, old)
    if (sets[new]) then
        equip(sets[new])
        debug(new);
    end
end

function debug(s)
	send_command('@input /echo ' .. s)
end
