-- Andromida: ClosetCleaner2 2026-09-26 plus subsequent user ownership confirmations.
-- Notes reviewed 2026-09-27. Unused slipped gear may be omitted from that report.
-- Confirmed: Nyame Path B; Dojikiri, Sailfi and previously discussed ranked gear maxed.
-- Moonshade TP Bonus confirmed. Kasuga Earring +2 confirmed augments:
-- STR+7 DEX+7 Accuracy+16 Magic Accuracy+16 Weapon skill damage +3%.
-- Completed Smertrios's Mantle confirmed: STR+30, Acc/Atk+20, WSD+10%, PDT-10%.
-- findAll confirmed: all five Kasuga +3 armor pieces in Wardrobe 5; earring +2 in Wardrobe 4.
-- Additional ownership confirmed: Kasuga Kote +3, Wakido Kabuto +1,
-- Sakonji Domaru +4 and Sakonji Kote +1.
-- Murky Ring owned, unaugmented: replaces Defending Ring at the same DT-10%.
-- Wakido Kote +4 obtained, confirmed by user.
-- Commands: gs c e normal | hybrid | turtle
--           gs c weapon slashing | piercing | auto (manual change spends current TP)
--           gs c autows on | off (original Odyssey WS replacement; off for manual SCs)
-- Hoxne: equipped in Idle; wait for readiness, then /item "Hoxne Ampulla" <me>.
-- Removing it ends the enchantment. Activation is manual; its effect consumes gil.
-- Hybrid is recommended for dangerous content/Sortie; WS swaps are offensive and
-- do not inherit its DT cap. Turtle/Idle cap ordinary DT, not immunity to mechanics.
-- WS earrings: Moonshade left (Thrud above 2500 TP), set-specific earring right.
-- Gear references: https://www.bg-wiki.com/ffxi/Samurai_Guide_by_Bippin
-- https://www.bg-wiki.com/ffxi/Kasuga_Haidate_%2B3
local weapon_mode = "Auto"
local auto_ws = true
local engaged_mode = "Normal"
-- Above this TP, Dojikiri (+500) and Mpaca's Cap (+200) already reach the 3000 cap.
local moonshade_tp = 2500

-- Retain Hoxne through all swaps while the enchantment buff (162) is active.
-- This is the shared enchantment buff; it is not unique to Hoxne.
local gearswap_equip = equip
local function equip(gear)
    if buffactive[162] then
        gear = set_combine(gear, {ammo = "Hoxne Ampulla"})
    end
    gearswap_equip(gear)
end

-- Moonshade's TP Bonus is wasted once TP is capped; use Thrud instead.
local function ws_earrings(set)
    if player.tp > moonshade_tp and set.left_ear == "Moonshade Earring" then
        return set_combine(set, {left_ear = "Thrud Earring"})
    end
    return set
end

local incapacitated_states = T {"stun", "petrification", "terror", "sleep", "defense down"}

local tutle_mobs = T {
    -- Ody NMs
    "Asena",
    "Bygul",
    "Chaos Steward",
    "Dabbat al-Ard",
    "Kurmajara",
    "Lotanu",
    "Wayra Tata",

    -- Ody Holo
    "Agon Heretic",
    "Agon Marquess",
    "Agon Monarch",
    "Agon Viscount",
    "Agon Vizier",

    -- Ody Mobs
    "Nostos Apkallu",
    "Nostos Bhoot",
    "Nostos Black Pudding",
    "Nostos Clot",
    "Nostos Ghoul",
    "Nostos Imp",
    "Nostos Korrigan",
    "Nostos Rarab",
    "Nostos Sapling",
    "Nostos Scorpion",
    "Nostos Spider",
    "Nostos Wasp",

    -- Dyna Sandy
    "Halphas",
    "Ravager Leader",
    "Ravager Commander",
    "Mendicant Leader",
    "Mendicant Commander",
    "Cutpurse Leader",
    "Cutpurse Commander",
    "Invoker Leader",
    "Invoker Commander",
    "Warlock Leader",
    "Warlock Commander",
    "Stalwart Leader",
    "Stalwart Commander",
    "Hunter Leader",
    "Hunter Commander",
    "Priest Leader",
    "Priest Commander",
    "Minstrel Leader",
    "Minstrel Commander",
    "Kagemusha Leader",
    "Kagemusha Commander",
    "Canoneer Leader",
    "Canoneer Commander",
    "Squadron Pugilist",
    "Regiment Pugilist",
    "Squadron Tamer",
    "Regiment Tamer",
    "Squadron Shinobi",
    "Regiment Shinobi",
}

-- https://www.ffxiah.com/forum/topic/54555/the-odyssey-strategy-and-discussion/152/#3590215
local mob_weapon_damage_type = T {
    -- Ody Lamia
    ["Agon Adjudicator"] = "Piercing",
    ["Agon Dignitary"] = "Piercing",
    ["Agon Marksman"] = "Piercing",
    ["Agon Rabblerouser"] = "Piercing",
    ["Agon Scallywag"] = "Piercing",
    ["Agon Vizier"] = "Piercing",
    ["Agon Yojimbo"] = "Piercing",
    ["Agon Monarch"] = "Piercing",

    -- Ody Trolls
    ["Agon Clearmind"] = "Slashing",
    ["Agon Defender"] = "Slashing",
    ["Agon Footsoldier"] = "Slashing",
    ["Agon Infidel"] = "Slashing",
    ["Agon Ritualist"] = "Slashing",
    ["Agon Sharpshooter"] = "Slashing",
    ["Agon Shieldsaint"] = "Slashing",
    ["Agon Viscount"] = "Slashing",

    -- Ody Mamool
    ["Agon Cleric"] = "Slashing",
    ["Agon Heretic"] = "Slashing",
    ["Agon Initiate"] = "Slashing",
    ["Agon Instigator"] = "Slashing",
    ["Agon Marquess"] = "Slashing",
    ["Agon Phalanx"] = "Slashing",
    ["Agon Pilferer"] = "Slashing",
    ["Agon Praetor"] = "Slashing",

    -- Ody NMs
    ["Asena"] = "Slashing",
    ["Bygul"] = "Slashing",
    ["Chaos Steward"] = "Slashing",
    ["Dabbat al-Ard"] = "Slashing",
    ["Kurmajara"] = "Piercing",
    ["Lotanu"] = "Slashing",
    ["Wayra Tata"] = "Slashing",

    -- Ody Mobs
    ["Nostos Ameretat"] = "Slashing",
    ["Nostos Apkallu"] = "Slashing",
    ["Nostos Bat"] = "Slashing",
    ["Nostos Bats"] = "Slashing",
    ["Nostos Bhoot"] = "Piercing",
    ["Nostos Bigbird"] = "Slashing",
    ["Nostos Black Pudding"] = "Slashing",
    ["Nostos Bugard"] = "Slashing",
    ["Nostos Chigoe"] = "Slashing",
    ["Nostos Clot"] = "Slashing",
    ["Nostos Cluster"] = "Slashing",
    ["Nostos Colibri"] = "Slashing",
    ["Nostos Crab"] = "Piercing",
    ["Nostos Dahak"] = "Slashing",
    ["Nostos Defoliator"] = "Slashing",
    ["Nostos Diremite"] = "Slashing",
    ["Nostos Draugar"] = "Slashing",
    ["Nostos Flytrap"] = "Slashing",
    ["Nostos Funguar"] = "Slashing",
    ["Nostos Gaganabo"] = "Slashing",
    ["Nostos Goobbue"] = "Slashing",
    ["Nostos Imp"] = "Slashing",
    ["Nostos Jagil"] = "Piercing",
    ["Nostos Karakul"] = "Slashing",
    ["Nostos Korrigan"] = "Slashing",
    ["Nostos Leech"] = "Slashing",
    ["Nostos Leopard"] = "Slashing",
    ["Nostos Manticore"] = "Slashing",
    ["Nostos Marid"] = "Slashing",
    ["Nostos Puk"] = "Slashing",
    ["Nostos Qutrub"] = "Slashing",
    ["Nostos Ram"] = "Slashing",
    ["Nostos Raptor"] = "Slashing",
    ["Nostos Rarab"] = "Slashing",
    ["Nostos Sapling"] = "Slashing",
    ["Nostos Scorpion"] = "Slashing",
    ["Nostos Soulflayer"] = "Slashing",
    ["Nostos Spider"] = "Slashing",
    ["Nostos Tiger"] = "Slashing",
    ["Nostos Treant"] = "Slashing",
    ["Nostos Vulture"] = "Slashing",
    ["Nostos Wamoura"] = "Slashing",
    ["Nostos Wamouracampa"] = "Slashing",
    ["Nostos Wasp"] = "Slashing",
    ["Nostos Weapon"] = "Slashing",
    ["Nostos Worm"] = "Slashing",
    ["Nostos Wyvern"] = "Slashing",
    ["Nostos Ziz"] = "Slashing",
}

local mob_ws = T {
    ["Nostos Cluster"] = "Tachi: Kagero",
    ["Nostos Puk"] = "Tachi: Kagero",
    ["Nostos Draugar"] = "Tachi: Kagero",

    ["Nostos Bat"] = "Tachi: Jinpu",
    ["Nostos Bats"] = "Tachi: Jinpu",
    ["Nostos Wyvern"] = "Tachi: Jinpu",
    ["Nostos Karakul"] = "Tachi: Jinpu",
    ["Nostos Rarab"] = "Tachi: Jinpu",
    ["Nostos Bugard"] = "Tachi: Jinpu",
    ["Nostos Ziz"] = "Tachi: Jinpu",
    ["Nostos Leopard"] = "Tachi: Jinpu",
    ["Nostos Ram"] = "Tachi: Jinpu",
}


function get_sets()
    sets.Weapons = {}
    -- Owned: Shining One and Utu Grip. Polearm upgrades deferred by preference.
    sets.Weapons.Piercing = {main = "Shining One", sub = "Utu Grip"}
    -- Owned: fully ranked Dojikiri and Utu Grip; no immediate weapon purchase needed.
    -- Long term: Masamune/Kusanagi are optional alternative projects after armor upgrades.
    sets.Weapons.Slashing = {main = "Dojikiri Yasutsuna", sub = "Utu Grip"}

    -- Owned defensive set; no immediate purchase needed.
    -- Null Shawl supplies magic evasion; an additional defensive cape is not a priority.
    -- DT 53% (capped, 3% spare): Masque 10, Nyame hands/legs/feet 22, Loricate 6,
    -- Alabaster 5, Murky 10. Spare DT traded for Regen (19 total) and Magic Evasion.
    sets.Idle = {
        ammo = "Hoxne Ampulla",
        head = "Null Masque",
        body = "Sacro Breastplate",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Loricate Torque +1",
        waist = "Null Belt",
        left_ear = "Odnowa Earring +1",
        right_ear = "Alabaster Earring",
        left_ring = "Murky Ring",
        right_ring = "Karieyh Ring +1", -- Regain+5 builds TP while not engaged
        back = "Null Shawl",
    }

    sets.Engaged = {}
    -- Current: owned Kasuga Kabuto +3 and Wakido Kote +4 selected as requested.
    -- Kasuga armor is in Wardrobe 5, ready to equip. No immediate purchase needed.
    -- Flamma feet prioritize TP generation; Kasuga feet remain an owned WS alternative.
    sets.Engaged.Normal = {
        ammo = "Aurgelmir Orb +1",
        head = "Kasuga Kabuto +3",
        body = "Kasuga Domaru +3",
        hands = "Wakido Kote +4",
        legs = "Kasuga Haidate +3",
        feet = "Flam. Gambieras +2",
        neck = "Sam. Nodowa +2",
        waist = "Sailfi Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Kasuga Earring +2",
        left_ring = "Chirich Ring +1",
        right_ring = "Niqmaddu Ring",
        back = "Null Shawl",
    }

    -- Automatically used in place of Normal while the enchantment is active.
    -- Separate set for Hoxne adjustments; no manual Hoxne mode.
    sets.Engaged.Hoxne = {
        ammo = "Hoxne Ampulla",
        head = "Kasuga Kabuto +3",
        neck = "Sam. Nodowa +2",
        left_ear = "Dedition Earring", -- Hoxne caps Double Attack; Store TP+8 over Telos
        right_ear = "Kasuga Earring +2",
        body = "Kasuga Domaru +3",
        hands = "Wakido Kote +4",
        left_ring = "Niqmaddu Ring",
        right_ring = "Chirich Ring +1",
        back = {
            name = "Smertrios's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', 'Store TP+10', 'Phys. dmg. taken-10%'},
        },
        waist = "Sailfi Belt +1",
        legs = "Kasuga Haidate +3",
        feet = "Flamma Gambieras +2"
    }

    -- Owned gear: no immediate upgrade required; no missing Mpaca pieces needed.
    -- 59% listed DT (10+14+7+11+7+10), capped at 50%, without cape/earring augments.
    -- Kasuga head/body/legs support Zanshin and Store TP; legs also enhance Hasso.
    sets.Engaged.Hybrid = set_combine(sets.Engaged.Normal, {
        head = "Kasuga Kabuto +3",
        hands = "Nyame Gauntlets",
        feet = "Nyame Sollerets",
        left_ring = "Murky Ring",
    })

    -- Fighting set for dangerous targets; kept separate from the Regen-focused Idle.
    -- DT 57%: Masque 10, Nyame body/hands/legs/feet 31, Loricate 6, Murky 10.
    sets.Engaged.Turtle = {
        ammo = "Hoxne Ampulla",
        head = "Null Masque",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Loricate Torque +1",
        waist = "Sailfi Belt +1",
        left_ear = "Odnowa Earring +1",
        right_ear = "Kasuga Earring +2",
        left_ring = "Murky Ring",
        right_ring = "Niqmaddu Ring",
        back = "Null Shawl",
    }

    sets.JobAbility = {}
    -- Owned: Wakido Kabuto +1, Sakonji Kote +1 and completed Smertrios cape.
    -- Long term: upgrade those existing head/hands pieces to +3/+4.
    sets.JobAbility.Meditate = set_combine(sets.Idle, {
        head = "Wakido Kabuto +1",
        hands = "Sakonji Kote +1",
        back = {
            name = "Smertrios's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'},
        },
    })

    -- Wakido Kabuto +1: Warding Circle duration +50% / potency +2% (BG-Wiki, unconfirmed).
    sets.JobAbility["Warding Circle"] = {head = "Wakido Kabuto +1"}

    -- Owned: Kasuga Kote +3 and completed STR/WSD cape are already equipped.
    -- Sakonji Domaru +4 obtained and equipped; no immediate body upgrade needed.
    -- Nyame Mail remains in the elemental hybrid WS and defensive sets.
    -- Physical WS assume attack cap (COR + BRD nearly always present), so
    -- Physical damage limit is favoured: Kasuga feet (+10%) and Sroda Ring (+3%).
    sets.WeaponSkill = {
        equipable = true,
        ammo = "Knobkierrie",
        head = "Mpaca's Cap",
        body = "Sakonji Do. +4",
        hands = "Kasuga Kote +3",
        legs = "Nyame Flanchard",
        feet = "Kas. Sune-Ate +3",
        neck = "Sam. Nodowa +2",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Kasuga Earring +2",
        left_ring = "Ephramad's Ring",
        right_ring = "Sroda Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'},
        },
    }

    -- Owned Kasuga Kote +3 and STR/WSD cape inherited from the default WS set.
    -- Sakonji Domaru +4 and cape complete; no immediate purchase needed.
    sets.WeaponSkill["Tachi: Fudo"] = set_combine(sets.WeaponSkill, {})

    -- Owned Kasuga Kote +3 and STR/WSD cape already included.
    -- Sakonji Domaru +4 equipped; no immediate body upgrade needed.
    -- Multi-hit: Mpaca's Hose damage limit applies to every hit; Nyame legs' WSD only to the first.
    sets.WeaponSkill["Tachi: Shoha"] = set_combine(sets.WeaponSkill, {
        legs = "Mpaca's Hose",
    })

    -- Owned cape/hands complete. Optional purchase: Lugra Earring +1 for night use;
    -- the report lists only NQ Lugra. Sakonji Domaru +4 is already equipped.
    -- Rana gets no damage scaling from TP Bonus.
    sets.WeaponSkill["Tachi: Rana"] = set_combine(sets.WeaponSkill["Tachi: Shoha"], {
        head = "Nyame Helm",
        left_ear = "Schere Earring",
    })

    -- Owned Nyame B and completed STR/WSD cape; no immediate purchase needed.
    -- Hybrid physical+elemental WS: retain Nyame hands for both components.
    -- Orpheus is a close-range choice; no day/weather automation is assumed.
    sets.WeaponSkill["Tachi: Jinpu"] = set_combine(sets.WeaponSkill, {
        body = "Nyame Mail",
        head = "Nyame Helm",
        hands = "Nyame Gauntlets",
        feet = "Nyame Sollerets", -- magic half gains nothing from damage limit
        right_ring = "Epaminondas's Ring",
        waist = "Orpheus's Sash",
        left_ear = "Moonshade Earring",
        right_ear = "Friomisi Earring",
        back = {
            name = "Smertrios's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'},
        },
    })

    -- Owned Nyame B and STR/WSD cape inherited from Jinpu; no immediate purchase needed.
    sets.WeaponSkill["Tachi: Kagero"] = set_combine(sets.WeaponSkill["Tachi: Jinpu"], {})

    -- Owned Nyame B and STR/WSD cape inherited from Jinpu; no immediate purchase needed.
    -- Avoid using light damage against resistant targets.
    sets.WeaponSkill["Tachi: Koki"] = set_combine(sets.WeaponSkill["Tachi: Jinpu"], {})

    -- Polearm upgrades deferred. Null Shawl is the current owned multi-hit option.
    -- Any future STR/DA cape would be a SECOND cape, distinct from the completed STR/WSD one.
    -- Do not equip weapons inside a WS set: switching them would erase TP.
    sets.WeaponSkill.Stardiver = set_combine(sets.WeaponSkill, {
        body = "Nyame Mail",
        back = "Null Shawl",
        hands = "Nyame Gauntlets",
        legs = "Mpaca's Hose",
        feet = "Flam. Gambieras +2",
    })

    -- Uses the completed STR/WSD cape. Polearm upgrades deferred; no purchase suggested.
    -- Multi-hit; Mpaca's crit rate also helps Shining One's TP-based crit bonus.
    sets.WeaponSkill["Impulse Drive"] = set_combine(sets.WeaponSkill, {
        legs = "Mpaca's Hose",
    })

    -- Owned defensive fallback; no immediate casting-gear purchase needed.
    sets.FastCast = set_combine(sets.Idle, {})
    -- Owned defensive fallback; dedicated spell sets only if support-job use warrants them.
    sets.Midcast = set_combine(sets.Idle, {equipable = true})
end


function precast(spell, action)
    if incapacitated() then
        return
    end

    if (spell.english == "Spectral Jig" or spell.english == "Sneak") and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if override_weaponskill(spell) then
        return
    end

    local is_ws = spell.type == "WeaponSkill"

    if sets[spell.type] and sets[spell.type][spell.english] then
        local set = sets[spell.type][spell.english]
        equip(is_ws and ws_earrings(set) or set)

        return
    end

    if sets[spell.type] and sets[spell.type].equipable then
        equip(is_ws and ws_earrings(sets[spell.type]) or sets[spell.type])

        return
    end

    if is_magic(spell) then
        equip(sets.FastCast)
        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function override_weaponskill(spell)
    if spell.type ~= "WeaponSkill" then return end
    if not auto_ws then return end
    if player.equipment.main ~= sets.Weapons.Slashing.main then return end

    local newWS = mob_ws[spell.target and spell.target.name or ""]

    if not newWS then return end
    if newWS == spell.english then return end

    cancel_spell()
    send_command('@input /ws "' .. newWS .. '" ' .. tostring(spell.target.raw))
    return true
end

function midcast(spell, action)
    if incapacitated() then
        return
    end

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

    if sets.Midcast.equipable then
        equip(sets.Midcast)
        return
    end

    debug("No set for Midcast." .. spell.skill .. "." .. spell.english)
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

function status_change_engaged()
    local target_name = player.target and player.target.name or ""
    local selected = weapon_mode ~= "Auto" and weapon_mode or mob_weapon_damage_type[target_name]
    if selected then
        equip(sets.Weapons[selected])
    elseif player.equipment.main ~= sets.Weapons.Slashing.main
        and player.equipment.main ~= sets.Weapons.Piercing.main then
        equip(sets.Weapons.Slashing)
    end

    if tutle_mobs:contains(target_name) then
        equip(sets.Engaged.Turtle)
        return
    end

    if engaged_mode == "Normal" and buffactive[162] then
        equip(sets.Engaged.Hoxne)
    else
        equip(sets.Engaged[engaged_mode])
    end
end

function aftercast(spell, action)
    status_change(player.status)
end

function buff_change(name, gain, buff_details)
    if name:lower() == "enchantment" or incapacitated_states:contains(name:lower()) then
        status_change(player.status)
    end
end

function incapacitated()
    if incapacitated_states:find(function(value)
        return buffactive[value] or false
    end) then
        equip(sets.Engaged.Turtle)
        return true
    end
end

function self_command(argsString)
    local args = argsString:lower():split(" ")

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

    local mode = args[1]:ucfirst()
    if mode == "Hoxne" or not sets.Engaged[mode] then
        error("Error: Invalid Engaged Mode: " .. mode)
        return
    end

    engaged_mode = mode
    status_change(player.status)
    notice("Engaged Mode Set: " .. mode)
end

function self_command_tp(args)
    local order = T{
        {id=158, command = '"Jump" <t>'},
        {id=159, command = '"High Jump" <t>'},
    }

    local recasts = windower.ffxi.get_ability_recasts()

    for _, ability in ipairs(order) do
        if recasts[ability.id] == 0 then
            windower.send_command("input /ja " .. ability.command)
            return
        end
    end
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

-- Manual weapon selection overrides the retained Odyssey damage-type table.
function self_command_weapon(args)
    local mode = args[1] and args[1]:ucfirst()
    if mode ~= "Auto" and not sets.Weapons[mode or ""] then
        error("Use: gs c weapon slashing | piercing | auto")
        return
    end
    weapon_mode = mode
    if sets.Weapons[mode] then equip(sets.Weapons[mode]) end
    notice("Weapon mode: " .. mode)
end

function self_command_autows(args)
    if args[1] ~= "on" and args[1] ~= "off" then
        error("Use: gs c autows on | off")
        return
    end
    auto_ws = args[1] == "on"
    notice("Automatic Odyssey WS replacement: " .. args[1])
end
