-- Andromida RNG GearSwap
-- Built from Andromida_COR.lua conventions + uploaded inventory.csv
-- Default: Fomalhaut + Chrono Bullet
--
-- IMPORTANT INVENTORY NOTES:
--   * Amini +3 set is currently on Storage Slip 30: retrieve it before using this file.
--   * Annihilator is currently in Safe2 and Armageddon in Storage: move them to Inventory/Wardrobe
--     before using the weapon toggle.
--   * Meghanada Jambeaux +2 is on Storage Slip 23 if you want the extra Snapshot option.
--   * Campestres's Cape has multiple copies; inventory export does not include augments, so cape
--     selection below is name-only. Add augments={} once you know which cape is which.
--
-- Commands:
--   //gs c weapon       -> Fomalhaut > Annihilator > Armageddon
--   //gs c flurry       -> None > Flurry I > Flurry II
--   //gs c dt           -> toggle DT engaged set
--   //gs c ammo         -> re-equip Chrono Bullet
--
-- This is intentionally a practical "use what you own" file rather than a theoretical BIS file.

DT = false
WeaponMode = 1
FlurryMode = 0

local weapons = {"Fomalhaut", "Annihilator", "Armageddon"}
local flurry_names = {[0] = "None", [1] = "Flurry I", [2] = "Flurry II"}

function get_sets()
    sets = {}
    sets.Precast = {}
    sets.Midcast = {}
    sets.JobAbility = {}
    sets.WeaponSkill = {}

    ----------------------------------------------------------------------
    -- BASE / IDLE / MELEE
    ----------------------------------------------------------------------
    sets.Idle = {
        range = "Fomalhaut",
        ammo = "Chrono Bullet",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Warder's Charm +1",
        waist = "Carrier's Sash",
        left_ear = "Odnowa Earring +1",
        right_ear = "Tuisto Earring",
        left_ring = "Defending Ring",
        right_ring = "Murky Ring"
    }

    -- Melee TP when you are actually swinging rather than shooting.
    sets.Engaged = {
        range = "Fomalhaut",
        ammo = "Chrono Bullet",
        head = "Malignance Chapeau",
        body = "Malignance Tabard",
        hands = "Malignance Gloves",
        legs = "Malignance Tights",
        feet = "Malignance Boots",
        neck = "Caro Necklace",
        waist = "Sailfi Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Sherida Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Chirich Ring +1"
    }

    sets.PDT = {
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        left_ring = "Defending Ring",
        right_ring = "Murky Ring"
    }

    ----------------------------------------------------------------------
    -- RANGED ATTACK
    ----------------------------------------------------------------------
    -- Snapshot preshot.
    -- RNG merits contribute Snapshot too. This set uses known owned pieces and does not assume
    -- unknown Taeon/Campestres augments. Amini Gapette +3 is Snapshot +9; Carmine hands +1
    -- carry Snapshot +8 / Rapid Shot +11; Crepuscular Ring is Snapshot +3.
    sets.Precast.RA = {
        head = "Amini Gapette +3",
        body = "Amini Caban +3",
        hands = "Carmine Fin. Ga. +1",
        legs = "Carmine Cuisses +1",
        feet = "Amini Bottillons +3",
        neck = "Sanctity Necklace",
        waist = "Sroda Belt",
        left_ear = "Telos Earring",
        right_ear = "Dedition Earring",
        left_ring = "Crepuscular Ring",
        right_ring = "Chirich Ring +1",
        back = "Campestres's Cape"
    }

    -- Flurry I: less Snapshot needed, lean slightly harder into Rapid Shot / normal RA stats.
    sets.Precast.RA.Flurry1 = {
        head = "Amini Gapette +3",
        body = "Amini Caban +3",
        hands = "Carmine Fin. Ga. +1",
        legs = "Amini Bragues +3",
        feet = "Amini Bottillons +3",
        neck = "Sanctity Necklace",
        waist = "Sroda Belt",
        left_ear = "Telos Earring",
        right_ear = "Dedition Earring",
        left_ring = "Crepuscular Ring",
        right_ring = "Chirich Ring +1",
        back = "Campestres's Cape"
    }

    -- Flurry II: 30 Snapshot from magic, so prioritize Rapid Shot / RA pieces after head + hands.
    sets.Precast.RA.Flurry2 = {
        head = "Amini Gapette +3",
        body = "Amini Caban +3",
        hands = "Carmine Fin. Ga. +1",
        legs = "Amini Bragues +3",
        feet = "Amini Bottillons +3",
        neck = "Sanctity Necklace",
        waist = "Sroda Belt",
        left_ear = "Telos Earring",
        right_ear = "Dedition Earring",
        left_ring = "Crepuscular Ring",
        right_ring = "Chirich Ring +1",
        back = "Campestres's Cape"
    }

    -- Shooting midcast. Keep Amini Caban +3 on while Velocity Shot is active because its
    -- Velocity Shot bonus only applies while worn.
    sets.Midcast.RA = {
        head = "Amini Gapette +3",
        body = "Amini Caban +3",
        hands = "Amini Glove. +3",
        legs = "Amini Bragues +3",
        feet = "Amini Bottillons +3",
        neck = "Sanctity Necklace",
        waist = "Sroda Belt",
        left_ear = "Telos Earring",
        right_ear = "Dedition Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Ilabrat Ring",
        back = "Campestres's Cape"
    }

    sets.Midcast.RA.Acc = {
        head = "Malignance Chapeau",
        body = "Amini Caban +3",
        hands = "Malignance Gloves",
        legs = "Malignance Tights",
        feet = "Malignance Boots",
        neck = "Sanctity Necklace",
        waist = "Sroda Belt",
        left_ear = "Telos Earring",
        right_ear = "Mache Earring +1",
        left_ring = "Chirich Ring +1",
        right_ring = "Chirich Ring +1",
        back = "Campestres's Cape"
    }

    ----------------------------------------------------------------------
    -- JOB ABILITIES
    ----------------------------------------------------------------------
    sets.JobAbility["Bounty Shot"] = {hands = "Amini Glove. +3"}
    sets.JobAbility["Velocity Shot"] = {body = "Amini Caban +3"}
    sets.JobAbility["Double Shot"] = {head = "Amini Gapette +3"}
    sets.JobAbility["Unlimited Shot"] = {feet = "Amini Bottillons +3"}

    -- You only have older Barrage relic pieces in the export, so use your modern ranged set
    -- rather than sacrificing large amounts of ilvl stats just for the old enhancement.
    sets.JobAbility["Barrage"] = sets.Midcast.RA

    ----------------------------------------------------------------------
    -- PHYSICAL RANGED WEAPON SKILLS
    ----------------------------------------------------------------------
    sets.WeaponSkill = {
        ammo = "Chrono Bullet",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Amini Bottillons +3",
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Moonshade Earring",
        right_ear = "Ishvara Earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Regal Ring",
        back = "Campestres's Cape"
    }

    -- Fomalhaut's main WS.
    sets.WeaponSkill["Last Stand"] = {
        ammo = "Chrono Bullet",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Amini Bottillons +3",
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Moonshade Earring",
        right_ear = "Ishvara Earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Regal Ring",
        back = "Campestres's Cape"
    }

    -- Annihilator relic WS. This is deliberately WSD-heavy with the pieces you own.
    sets.WeaponSkill["Coronach"] = {
        ammo = "Chrono Bullet",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Amini Bottillons +3",
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Moonshade Earring",
        right_ear = "Ishvara Earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Regal Ring",
        back = "Campestres's Cape"
    }

    ----------------------------------------------------------------------
    -- MAGICAL RANGED WEAPON SKILLS
    ----------------------------------------------------------------------
    -- Armageddon's Wildfire. Orpheus is used by default; swap to Anrin Obi manually/in code
    -- when matching day/weather gives you the stronger elemental bonus at range.
    sets.WeaponSkill["Wildfire"] = {
        ammo = "Chrono Bullet",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Sanctity Necklace",
        waist = "Orpheus's Sash",
        left_ear = "Friomisi Earring",
        right_ear = "Crematio Earring",
        left_ring = "Acumen Ring",
        right_ring = "Regal Ring",
        back = "Campestres's Cape"
    }

    sets.WeaponSkill["Trueflight"] = {
        ammo = "Chrono Bullet",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Sanctity Necklace",
        waist = "Orpheus's Sash",
        left_ear = "Friomisi Earring",
        right_ear = "Crematio Earring",
        left_ring = "Acumen Ring",
        right_ring = "Regal Ring",
        back = "Campestres's Cape"
    }

    ----------------------------------------------------------------------
    -- MELEE WS FALLBACK
    ----------------------------------------------------------------------
    sets.WeaponSkill["Savage Blade"] = {
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Caro Necklace",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Ishvara Earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Regal Ring"
    }
end

function precast(spell, action)
    if spell.action_type == "Ranged Attack" then
        if FlurryMode == 2 then
            equip(sets.Precast.RA.Flurry2)
        elseif FlurryMode == 1 then
            equip(sets.Precast.RA.Flurry1)
        else
            equip(sets.Precast.RA)
        end
        equip_weapon()
        return
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])
        equip_weapon()

        -- Match your COR-style obi handling for magical WS.
        if (spell.english == "Wildfire" or spell.english == "Trueflight")
            and (spell.element == world.day_element or spell.element == world.weather_element) then
            equip({waist = "Anrin Obi"})
        end
        return
    elseif sets[spell.type] then
        equip(sets[spell.type])
        equip_weapon()
        return
    end
end

function midcast(spell)
    if spell.action_type == "Ranged Attack" then
        equip(sets.Midcast.RA)
        equip_weapon()
        return
    end
end

function aftercast(spell, action)
    status_change(player.status)
end

function status_change(new, old)
    if new == "Engaged" then
        equip(sets.Engaged)
        if DT then
            equip(sets.PDT)
        end
    else
        equip(sets.Idle)
    end
    equip_weapon()
end

function equip_weapon()
    local gun = weapons[WeaponMode]
    equip({range = gun, ammo = "Chrono Bullet"})
end

function self_command(command)
    command = command:lower()

    if command == "dt" then
        DT = not DT
        windower.add_to_chat(123, "RNG DT: " .. (DT and "on" or "off"))
        status_change(player.status, player.status)
        return
    end

    if command == "weapon" then
        WeaponMode = WeaponMode + 1
        if WeaponMode > #weapons then WeaponMode = 1 end
        windower.add_to_chat(123, "RNG weapon: " .. weapons[WeaponMode])
        equip_weapon()
        return
    end

    if command == "flurry" then
        FlurryMode = FlurryMode + 1
        if FlurryMode > 2 then FlurryMode = 0 end
        windower.add_to_chat(123, "RNG Flurry mode: " .. flurry_names[FlurryMode])
        return
    end

    if command == "ammo" then
        equip({ammo = "Chrono Bullet"})
        windower.add_to_chat(123, "Chrono Bullet equipped")
        return
    end
end
