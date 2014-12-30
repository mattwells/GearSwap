function get_sets()
    debug = true

    SetIndex = 1
    SetArray = {"Fodder", "StoreTP", "Evasion", "PDT", "MDT", "MidAcc", "HighAcc"}

    sets.Idle = {
        main="Izhiikoh", sub="Atoyac", ammo="Ginsen",
        head="Horos tiara +1", neck="Twilight torque", ear1="Dudgeon earring", ear2="Heartseeker earring",
        body="Horos casaque", hands="Horos bangles", ring1="Rajas ring", ring2="Dark ring",
        back="Repulse mantle", waist="Flume belt", legs="Horos tights", feet="Horos toe shoes",
    }

    sets.Engaged = {
        main="Izhiikoh", sub="Atoyac", ammo="Ginsen",
        head="Whirlpool mask", neck="Asperity necklace", ear1="Dudgeon earring", ear2="Heartseeker earring",
        body="Thaumas coat", hands="Qaaxo mitaines", ring1="Rajas ring", ring2="Epona's ring",
        back="Athling mantle", waist="Patentia sash", legs="Quiahuiz trousers", feet="Qaaxo leggings",
    }
    sets.Engaged.Aftermath = {}

    sets.Engaged.MidHaste = sets.Engaged
    sets.Engaged.MidHaste.Aftermath = {}

    sets.Engaged.HighHaste = sets.Engaged
    sets.Engaged.HighHaste.Aftermath = {}

    sets.WeaponSkill = {}
    sets.WeaponSkill.Evisceration = {
        head="Uk'uxkaj cap", neck="Shadow gorget", ear1="Moonshade earring", ear2="Brutal earring",
        body="Maxixi casaque +1", hands="Nilas gloves", ring1="Ramuh ring", ring2="Epona's ring",
        back="Rancorous mantle", waist="Shadow belt", legs="Maxixi tights +1", feet="Maxixi toe shoes +1",
    }
    sets.WeaponSkill["Pyrrhic Kleos"] = {
        head="Uk'uxkaj cap", neck="Snow gorget", ear1="Steelflash earring", ear2="Bladeborn earring",
        body="Maxixi casaque +1", hands="Nilas gloves", ring1="Ramuh ring", ring2="Epona's ring",
        back="Buquwik cape", waist="Snow belt", legs="Maxixi tights +1", feet="Maxixi toe shoes +1",
    }
    sets.WeaponSkill["Rudra's Storm"] = {
        head="Horos tiara +1", neck="Love torque", ear1="Moonshade earring", ear2="Brutal earring",
        body="Maxixi casaque +1", hands="Nilas gloves", ring1="Ramuh ring", ring2="Ramuh ring",
        back="Kayapa cape", waist="Chiner's belt", legs="Maxixi tights +1", feet="Maxixi toe shoes +1",
    }

    -- Waltz
    sets.Waltz = {
        head="Horos tiara +1", -- 11%
        body="Maxixi casaque +1", -- 15%
        feet="Maxixi toe shoes +1", -- 10%
    }

    -- Sambas
    sets.Samba = {head="Maxixi tiara +1",}

    -- Steps
    sets.Step = {}
    sets.Step["Feather Step"] = {feet="Charis toe shoes +2",}

    -- Jigs
    sets.Jig = {feet="Horos toe shoes",}

    -- Flourishes
    sets.Flourish = {}
    sets.Flourish["Striking Flourish"] = {body="Charis casaque +2",}
    sets.Flourish["Reverse Flourish"] = {hands="Charis bangles +2",}
    sets.Flourish["Climactic Flourish"] = {head="Charis tiara +2",}

    sets.Flourish2 = sets.Flourish
    sets.Flourish3 = sets.Flourish

    -- Other JAs
    sets.JobAbility = {}
    sets.JobAbility.Trance = {head="Horos tiara +1",}
    sets.JobAbility["No Foot Rise"] = {body="Horos casaque",}
    sets.JobAbility["Fan Dance"] = {hands="Horos bangles",}
    sets.JobAbility["Saber Dance"] = {legs="Horos tights",}
    sets.JobAbility["Closed Position"] = {feet="Horos toe shoes",}

    sets.Fodder = clone(sets)

    sets.Evasion = clone(sets.Fodder)
    sets.Evasion.Engaged = {}

    sets.PDT = clone(sets.Fodder)
    sets.PDT.Engaged = {}

    sets.MDT = clone(sets.Fodder)
    sets.MDT.Engaged = {}

    sets.StoreTP = clone(sets.Fodder)
    sets.StoreTP.Engaged = {}

    sets.MidAcc = clone(sets.Fodder)
    sets.MidAcc.Engaged = {}

    sets.HighAcc = clone(sets.Fodder)
    sets.HighAcc.Engaged = {}

    sets.PDT.Idle = sets.PDT.Engaged
    sets.MDT.Idle = sets.MDT.Engaged

end

function precast(spell)
    change_equip(spell.type, spell.name, "Precast")
end

function midcast(spell)
    change_equip(spell.type, spell.name, "Midcast")
end

function aftercast()
    status_change(player.status, player.status)
end

function status_change(status, old)
    local AM3 = buffactive["Aftermath: Lv.3"]
    local setName = SetArray[SetIndex]

    dbg(old .. " -> " .. status .. " Set: " .. setName)

    if sets[status] then
        dbg("Status")

        if sets[setName][status] then
            dbg("Status Set")

            if AM3 && sets[setName][status]["Aftermath"] then
                dbg("Status Set Aftermath")
                equip(sets[setName][status]["Aftermath"])
                return
            end

            equip(sets[setName][status])
            return
        end

        if AM3 && sets[status]["Aftermath"] then
            dbg("Status Aftermath")
            equip(sets[status]["Aftermath"])
            return
        end

        equip(sets[status])
    end
end

function change_equip(type, name, cast)
    local s = sets[SetArray[SetIndex]]

    dbg(type .. "[\"" .. name .. "\"]." .. cast)

    if s[type] then
        dbg("Type")

        if s[type][name] then
            dbg("Type Name")

            if s[type][name][cast] then
                dbg("Type Name Cast")

                equip(s[type][name][cast])
                dbg("Type: " .. type .. " Name: '" .. name .. "' Cast: " .. cast)
                return true
            end

            equip(s[type][name])
            dbg("Type: " .. type .. " Name: '" .. name .. "'")
            return true
        end

        if s[type][cast] then
            equip(s[type][cast])

            dbg("Type: " .. type .. " Cast: " .. cast)
            return true
        end

        equip(s[type])
        dbg("Type: " .. type)
        return true
    end

    dbg("None")
    return false
end

function self_command(command)
    if command == 'set' then -- Accuracy Level Toggle --
        SetIndex = (SetIndex % #SetArray) + 1
        status_change(player.status, player.status)
        add_to_chat(158,'Set: ' .. SetArray[SetIndex])
    end
end

function findLeafSet(...) 
    local after = {}

    do

end

--- Debug Message
-- Outputs any information into FFXI chat window to help with debugging when the
-- debug variable is set to true.
-- @param message String to display
function dbg(message)
    if debug then
        add_to_chat(8, message)
    end
end

--- Deep clone a table
-- @see http://lua-users.org/wiki/CopyTable
function clone(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[clone(orig_key)] = clone(orig_value)
        end

        setmetatable(copy, clone(getmetatable(orig)))

    else -- number, string, boolean, etc
        copy = orig
    end

    return copy
end
