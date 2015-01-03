function get_sets()
    AccIndex = 1
    AccArray = {"LowAcc", "MidAcc", "HighAcc"}

    PDT = false
    MDT = false

    sets.Idle = {
        main="Izhiikoh", sub="Atoyac", ammo="Ginsen",
        head="Horos tiara +1", neck="Twilight torque", ear1="Dudgeon earring", ear2="Heartseeker earring",
        body="Horos casaque +1", hands="Horos bangles", ring1="Rajas ring", ring2="Dark ring",
        back="Repulse mantle", waist="Flume belt", legs="Horos tights", feet="Horos toe shoes +1",
    }

    -- TP Sets
    sets.Engaged = {}
    sets.Engaged.LowAcc = {
        main="Izhiikoh", sub="Atoyac", ammo="Ginsen",
        head="Whirlpool mask", neck="Asperity necklace", ear1="Dudgeon earring", ear2="Heartseeker earring",
        body="Thaumas coat", hands="Qaaxo mitaines", ring1="Rajas ring", ring2="Epona's ring",
        back="Atheling mantle", waist="Patentia sash", legs="Iuitl tights +1", feet="Horos toe shoes +1",
    }
    sets.Engaged.MidAcc = sets.Engaged.LowAcc
    sets.Engaged.HighAcc = sets.Engaged.LowAcc

    sets.PDT = {}
    sets.MDT = {}
    sets.Hybrid = {}

    -- Weapon Skills
    sets.WeaponSkill = {}
    sets.WeaponSkill.Evisceration = {
        head="Uk'uxkaj cap", neck="Shadow gorget", ear1="Moonshade earring", ear2="Brutal earring",
        body="Maxixi casaque +1", hands="Nilas gloves", ring1="Ramuh ring", ring2="Epona's ring",
        back="Rancorous mantle", waist="Shadow belt", legs="Maxixi tights +1", feet="Maxixi toe shoes +1",
    }
    sets.WeaponSkill["Pyrrhic Kleos"] = {
        head="Uk'uxkaj cap", neck="Aqua gorget", ear1="Steelflash earring", ear2="Bladeborn earring",
        body="Maxixi casaque +1", hands="Nilas gloves", ring1="Ramuh ring", ring2="Epona's ring",
        back="Buquwik cape", waist="Aqua belt", legs="Maxixi tights +1", feet="Maxixi toe shoes +1",
    }
    sets.WeaponSkill["Rudra's Storm"] = {
        head="Horos tiara +1", neck="Love torque", ear1="Moonshade earring", ear2="Brutal earring",
        body="Maxixi casaque +1", hands="Nilas gloves", ring1="Ramuh ring", ring2="Ramuh ring",
        back="Kayapa cape", waist="Chiner's belt", legs="Maxixi tights +1", feet="Maxixi toe shoes +1",
    }

    -- Waltzes
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
    sets.Jig = {feet="Horos toe shoes +1",}

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
    sets.JobAbility["No Foot Rise"] = {body="Horos casaque +1",}
    sets.JobAbility["Fan Dance"] = {hands="Horos bangles",}
    sets.JobAbility["Saber Dance"] = {legs="Horos tights",}

end

function precast(spell)

    -- Check we have enough TP
    if spell.tp_cost > player.tp then
        cancel_spell()
        add_to_chat(8, "You need more TP to " .. spell.name)
    end

    -- Waltzes
    if "Waltz" == spell.type then
        equip(sets.Waltz)
        return
    end

    -- Steps
    if "Step" == spell.type then
        equip(sets.Set[spell.name] ? sets.Step[spell.name] : sets.Step)
        return
    end

    -- Sambas
    if "Samba" == spell.type then
        equip(sets.Samba)
        return
    end

    -- Weapon Skills
    if "WeaponSkill" == spell.type then
        -- Check Engaged
        if "Engaged" ~= player.status then
            cancel_spell()
            add_to_chat(8, "You need to be Engaged to WeaponSkill")
            return
        end

        -- Check TP levels
        if 1000 < player.tp then
            cancel_spell()
            add_to_chat(8, "You need more TP to WeaponSkill")
            return
        end

        -- Check we have a set for the WeaponSkill
        if sets.WeaponSkill[spell.name] then
            equip(sets.WeaponSkill[spell.name])
        end

        return
    end

    -- Catch all
    if sets[spell.type] and sets[spell.type][spell.name] then
        -- Specific Set
        if sets[spell.type][spell.name] then
            equip(sets[spell.type][spell.name])
            return
        end
    end
end

function aftercast()
    status_change(player.status, player.status)
end

function status_change(status, old)
    -- Check DT sets
    if equipDT() then
        return
    end

    -- Engaged Statuses
    if "Engaged" == status then
        equip(sets.Engaged[AccArray[AccIndex]])
        return
    end

    equip(sets.Idle)
end

function self_command(command)
    -- Toggle Accuracy
    if "acc" == command then
        AccIndex = (AccIndex % #AccArray) + 1
        status_change(player.status, player.status)
        add_to_chat(8, "Set " .. AccArray[AccIndex])
        return
    end

    -- Toggle PDT
    if "pdt" == command then
        PDT = not PDT
        status_change(player.status, player.status)
        add_to_chat(8, (PDT ? "Locked" : "Unlocked") .. " PDT")
    end

    if "mdt" == command then
        MDT = not MDT
        status_change(player.status, player.status)
        add_to_chat(8, (MDT ? "Locked" : "Unlocked") .. " MDT")
    end

end

function equipDT()
    if PDT then
        equip(sets.PDT)
        return true
    end

    if MDT then
        equip(sets.MDT)
        return true
    end

    return false
end
