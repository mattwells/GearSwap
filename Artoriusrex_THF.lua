function get_sets()
    AccIndex = 1
    AccArray = {"LowAcc", "MidAcc", "HighAcc"}
    Armor = null

    sets.Idle = {
        main="Sandung",
        sub="Jugo Kukri",
        range="Raider's Bmrng.",
        head="Pill. Bonnet +1",
        body="Qaaxo Harness",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Pill. Culottes +1",
        feet="Pill. Poulaines +1",
        neck="Asperity Necklace",
        waist="Windbuffet Belt",
        left_ear="Brutal Earring",
        right_ear="Suppanomimi",
        left_ring="Rajas Ring",
        right_ring="Epona's Ring",
        back={ name="Canny Cape", augments={'DEX+1','AGI+2','"Dual Wield"+3',}},
    }
end


function precast(spell)
    equip(sets.Idle)
end

function aftercast(status, old)
    equip(sets.Idle)
end

function status_change(new,old)
    equip(sets.Idle)
end
