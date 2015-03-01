function get_sets()
	AccIndex = 1
	AccArray = {"LowACC", "MidACC", "HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. Default ACC Set Is LowACC. The First TP Set Of Your Main Weapon Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below --
	WeaponIndex = 1
	WeaponArray = {"Izhiikoh", "Sandung"} -- Default Sub Weapon Is Izhiikoh. Can Delete Any Weapons/Sets That You Don't Need Or Replace/Add The New Weapons That You Want To Use. --
	IdleIndex = 1
	IdleArray = {"Movement", "Regen"} -- Default Idle Set Is Movement --
	SA = false
	TA = false
	TH = 'OFF' -- Set Default Full TH ON or OFF Here --
	Rancor = 'OFF' -- Set Default Rancor ON or OFF Here --
	target_distance = 5 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --

	sc_map = {SC1="Exenterator", SC2="HasteSamba", SC3="Ranged"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	-- Idle/Town Sets --
	sets.Idle = {}
	sets.Idle.Regen = {
		range="Raider's Bmrng.",
		head="Whirlpool mask", neck="Twilight torque", ear1="Dudgeon earring", ear2="Heartseeker earring",
		body="Pillager's Vest +1", hands="Pillager's armlets +1", ring1="Shadow ring", ring2="Dark ring",
		back="Repulse mantle", waist="Flume belt", legs="Pillager's culottes +1", feet="Plunderer's poulaines +1"
	}
	sets.Idle.Regen.Izhiikoh = set_combine(sets.Idle.Regen,{
		main="Mandau", sub="Izhiikoh"
	})
	sets.Idle.Regen.Sandung = set_combine(sets.Idle.Regen,{
		main="Mandau", sub="Sandung"
	})

	sets.Idle.Movement = set_combine(sets.Idle.Regen, {})
	sets.Idle.Movement.Izhiikoh = set_combine(sets.Idle.Movement, {
		main="Mandau", sub="Izhiikoh"
	})
	sets.Idle.Movement.Sandung = set_combine(sets.Idle.Movement, {
		main="Mandau", sub="Sandung"
	})

	-- Normal TP Sets --
	sets.TP = {
		-- head="Felistris mask"
		head="Taeon chapeau", neck="Asperity necklace", ear1="Dudgeon earring", ear2="Heartseeker earring",
		body="Qaaxo Harness", hands="Qaaxo Mitaines", ring1="Haverton ring", ring2="Epona's ring",
		back="Canny cape", waist="Patentia sash", legs="Taeon Tights", feet="Taeon boots",
		-- Canny cape (DW2%), Patentia sash (DW5%), Taeon boots (DW9%), earrings (DW7%)
	}
	sets.TP.MidACC = set_combine(sets.TP,{
		-- neck="Ej necklace +1",
		body="Emet harness +1", -- hands="Qaaxo Mitaines",
		-- back="Letalis Mantle", feet="Qaaxo Leggings"
	})
	sets.TP.HighACC = set_combine(sets.TP.MidACC,{
		neck="Iqabi necklace",
		body="Emet harness +1", -- ring1="Mars's Ring",
		-- waist="Anguinus Belt"
	})

	-- March x2 + Haste --
	sets.TP.MidHaste = set_combine(sets.TP, {
		body="Thaumas Coat"
	})
	sets.TP.MidACC.MidHaste = set_combine(sets.TP.MidHaste, {
		-- neck="Ej necklace +1",
		-- body="Qaaxo Harness", hands="Qaaxo Mitaines",
		-- back="Letalis Mantle", feet="Qaaxo Leggings"
	})
	sets.TP.HighACC.MidHaste = set_combine(sets.TP.MidACC.MidHaste,{
		head="Whirlpool Mask",
		-- body="Manibozho Jerkin",
		-- ring1="Mars's Ring",
		waist="Anguinus Belt"
	})

	-- March x2 + Haste + Samba --
	sets.TP.HighHaste = set_combine(sets.TP.MidHaste, {
		ear1="Trux Earring", ear2="Brutal Earring",
		waist="Windbuffet Belt +1"
	})
	sets.TP.MidACC.HighHaste = set_combine(sets.TP.HighHaste, {
		neck="Iqabi necklace",
		ear1="Steelflash Earring", ear2="Bladeborn Earring",
		body="Emet harness +1", -- hands="Qaaxo Mitaines",
		-- back="Letalis Mantle", feet="Qaaxo Leggings"
	})
	sets.TP.HighACC.MidHaste = set_combine(sets.TP.MidACC.MidHaste, {
		head="Whirlpool Mask", neck="Iqabi necklace", ear1="Steelflash earring",
		body="Emet harness +1", hands="Plunderer's Armlets +1",
		-- ring1="Mars's Ring",
		back="Kayapa Cape", waist="Dynamic belt", legs="Pillager's Culottes +1",
	})

	-- Full TH TP Set --
	sets.TP.TH = {
		hands="Plunderer's Armlets +1",
		waist="Chaac Belt",
	}

	-- TP Rancor ON Neck --
	sets.TP.Rancor = {
		neck="Rancor Collar"
	}

	-- TP Feint Set --
	sets.TP.Feint = {
		legs="Plunderer's Culottes +1"
	}

	-- PDT/MDT Sets --
	sets.PDT = {-- neck="Twilight Torque",
		head="Iuitl Headgear +1", neck="Warder's charm", ear1="Black Earring", ear2="Darkness Earring",
		body="Emet harness +1", hands="Iuitl Wristbands +1", ring1="Dark Ring", ring2="Shadow Ring",
		back="Mollusca Mantle", waist="Flume Belt", legs="Iuitl Tights +1", feet="Iuitl Gaiters +1"
	}

	sets.MDT = set_combine(sets.PDT,{
		-- ear1="Merman's Earring", ear2="Sanare Earring",
		ring1="Shadow Ring",
		-- back="Engulfer Cape", waist="Resolute Belt"
	})

	-- Hybrid/Evasion Sets --
	sets.TP.Hybrid = set_combine(sets.PDT,{
		head="Felistris Mask", ear1="Heartseeker Earring", ear2="Dudgeon Earring",
		body="Thaumas Coat", hands="Pillager's Armlets +1",
		waist="Patentia Sash", legs="Pillager's Culottes +1", feet="Plunderer's Poulaines +1"
	})
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})

	sets.Evasion = set_combine(sets.PDT,{})

	-- WS Base Set --
	sets.WS = {}

	-- WS Sets --
	sets.WS.Evisceration = {
		head="Uk'uxkaj cap", neck="Fotia gorget", ear1="Moonshade Earring", ear2="Brutal earring",
		body="Pillager's Vest +1", hands="Nilas gloves", ring1="Ramuh ring", ring2="Epona's ring",
		back="Rancorous mantle", waist="Fotia belt", legs="Pillager's culottes +1", feet="Plunderer's poulaines +1"
	}
	sets.WS.Evisceration.SA = set_combine(sets.WS.Evisceration,{
		hands="Raider's Armlets +2"
	})
	sets.WS.Evisceration.TA = set_combine(sets.WS.Evisceration,{})

	sets.WS["Rudra's Storm"] = {
		head="Pillager's Bonnet +1", neck="Love torque", ear1="Moonshade Earring", ear2="Brutal earring",
		body="Pillager's Vest +1", hands="Pillager's armlets +1", ring1="Ramuh ring", ring2="Ramuh ring",
		back="Vespid Mantle", waist="Chiner's belt", legs="Pillager's culottes +1", feet="Plunderer's poulaines +1"
	}
	sets.WS["Rudra's Storm"].SA = set_combine(sets.WS["Rudra's Storm"], {
		hands="Raider's Armlets +2"
	})
	sets.WS["Rudra's Storm"].TA = set_combine(sets.WS["Rudra's Storm"],{})

	-- JA Sets --
	sets.JA = {}
	TH_Gear = {
		hands="Plunderer's Armlets +1",
		waist="Chaac Belt", feet="Raider's Poulaines +2"
	}

	sets.JA.Conspirator = {
		body="Raider's Vest +2"
	}
	sets.JA.Accomplice = {
		head="Raider's Bonnet +2"
	}
	sets.JA.Collaborator = {
		head="Raider's Bonnet +2"
	}
	sets.JA["Perfect Dodge"] = {
		hands="Plunderer's Armlets +1"
	}
	sets.JA.Steal = {
		hands="Pillager's Armlets +1",
		legs="Pillager's Culottes +1", feet="Pillager's Poulaines +1"
	}
	sets.JA.Flee = {
		feet="Pillager's Poulaines +1"
	}
	sets.JA.Despoil = {
		legs="Raider's Culottes +2", feet="Raider's Poulaines +2"
	}
	sets.JA.Mug = {
		head="Plunderer's Bonnet +1"
	}
	sets.JA.Hide = {
		body="Pillager's Vest +1"
	}
	sets.JA.Provoke = TH_Gear
	sets.JA["Sneak Attack"] = {
		head="Pillager's Bonnet +1",
		body="Pillager's Vest +1", hands="Raider's Armlets +2",
		legs="Pillager's Culottes +1", feet="Plunderer's Poulaines +1"
	}
	sets.JA["Trick Attack"] = set_combine(sets.JA["Sneak Attack"], {
		hands="Pillager's Armlets +1"
	})

	-- Step Set --
	sets.Step = set_combine({},TH_Gear)

	-- Flourish Set --
	sets.Flourish = set_combine({},TH_Gear)

	-- Waltz Set --
	sets.Waltz = {}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = {
		head="Haruspex Hat +1", neck="Orunmila's Torque", ear1="Loquac. Earring",
		hands="Thaumas Gloves", ring1="Prolix Ring", ring2="Veneficium Ring",
		legs="Enif Cosciales"
	}
	-- Utsusemi Precast Set --
	sets.Precast.Utsusemi = set_combine(sets.Precast.FastCast, {
		neck="Magoraga Beads"
	})

	sets.Midcast = {}
	-- Magic Haste Set --
	sets.Midcast.Haste = set_combine(sets.PDT,{})
end

function pretarget(spell,action)
        if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
                cancel_spell()
                send_command('input /item "Echo Drops" <me>')
        elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
                cancel_spell()
                send_command('Aggressor')
        elseif (spell.english == 'Ranged' and spell.target.distance > 24.9) or (spell.type == "WeaponSkill" and spell.target.distance > target_distance and player.status == 'Engaged') then -- Cancel Ranged Attack or WS If You Are Out Of Range --
                cancel_spell()
                add_to_chat(123, spell.name..' Canceled: [Out of Range]')
                return
        end
end

function precast(spell,action)
        if spell.type == "WeaponSkill" then
                if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
                        cancel_spell()
                        add_to_chat(123,'Unable To Use WeaponSkill: [Disengaged]')
                        return
                else
                		if spell.english == "Evisceration" and (player.tp > 1750 or SA or TA) then
                			cancel_spell()
                			send_command('input /ws "Rudra\'s Storm" <t>')
                		end

                        equipSet = sets.WS
                        if equipSet[spell.english] then
                                equipSet = equipSet[spell.english]
                        end
                        if SA and equipSet["SA"] then
                                equipSet = equipSet["SA"]
                        end
                        if TA and equipSet["TA"] then
                                equipSet = equipSet["TA"]
                        end
                        if spell.english == "Evisceration" and player.tp > 2999 then -- Equip Jupiter's Pearl When You Have 300 TP --
                                equipSet = set_combine(equipSet,{ear1="Jupiter's Pearl"})
                        end
                        equip(equipSet)

                        SA = false
                        TA = false
                end
        elseif spell.type=="JobAbility" then
                if sets.JA[spell.english] then
                        equip(sets.JA[spell.english])
                end
                if spell.english=="Sneak Attack" then
                        SA = true
                end
                if spell.english=="Trick Attack" then
                        TA = true
                end
        elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
                if string.find(spell.english,'Utsusemi') then
                        if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
                                cancel_spell()
                                add_to_chat(123, spell.name .. ' Canceled: [3+ Images]')
                                return
                        else
                                equip(sets.Precast.Utsusemi)
                        end
                else
                        equip(sets.Precast.FastCast)
                end
        elseif spell.type == 'Step' then
                equip(sets.Step)
        elseif string.find(spell.type,'Flourish') then
                equip(sets.Flourish)
        elseif spell.type == "Waltz" then
                refine_waltz(spell,action)
                equip(sets.Waltz)
        elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
                cast_delay(0.2)
                send_command('cancel Sneak')
        end
end

function midcast(spell,action)
        if spell.english == 'Ranged' then
                equip(TH_Gear)
        elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
                if string.find(spell.english,'Utsusemi') then
                        if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
                                send_command('@wait 1.7;cancel Copy Image*')
                        end
                        equip(sets.Midcast.Haste)
                elseif spell.english == 'Monomi: Ichi' then
                        if buffactive['Sneak'] then
                                send_command('@wait 1.7;cancel sneak')
                        end
                        equip(sets.Midcast.Haste)
                else
                        equip(sets.Midcast.Haste)
                end
        end
end

function aftercast(spell,action)
        if spell.type == "WeaponSkill" and not spell.interrupted then
                send_command('wait 0.2;gs c TP')
        end
        status_change(player.status)
end

function status_change(new,old)
        if player.equipment.range ~= 'empty' then
                disable('range','ammo')
        else
                enable('range','ammo')
        end
        if Armor == 'PDT' then
                equip(sets.PDT)
        elseif Armor == 'MDT' then
                equip(sets.MDT)
        elseif Armor == 'EVA' then
                equip(sets.Evasion)
        elseif new == 'Engaged' then
                equipSet = sets.TP
                if Armor == 'Hybrid' and equipSet["Hybrid"] then
                        equipSet = equipSet["Hybrid"]
                end
                if equipSet[AccArray[AccIndex]] then
                        equipSet = equipSet[AccArray[AccIndex]]
                end
                if (buffactive.Embrava and (buffactive.Haste or buffactive.March) and buffactive['Haste Samba']) or (buffactive.March == 2 and buffactive.Haste and buffactive['Haste Samba']) and equipSet["HighHaste"] then
                        equipSet = equipSet["HighHaste"]
                end
                if ((buffactive.Haste or buffactive.March or buffactive['Haste Samba'])) or (buffactive.March == 1 and buffactive.Haste and buffactive['Haste Samba'] and equipSet["MidHaste"]) or (buffactive.March == 2 and (buffactive.Haste or buffactive['Haste Samba'])) and equipSet["MidHaste"] then
                        equipSet = equipSet["MidHaste"]
                end
                if SA then
                        equipSet = set_combine(equipSet,sets.JA["Sneak Attack"])
                end
                if TA then
                        equipSet = set_combine(equipSet,sets.JA["Trick Attack"])
                end
                if buffactive.Feint then
                        equipSet = set_combine(equipSet,sets.TP.Feint)
                end
                if Rancor == 'ON' then -- Use Rancor Toggle For Rancor Collar --
                        equipSet = set_combine(equipSet,sets.TP.Rancor)
                end
                if TH == 'ON' then -- Use TH Toggle To Lock Full TH Set --
                        equipSet = set_combine(equipSet,sets.TP.TH)
                end
                equip(equipSet)
        else
                equipSet = sets.Idle
                if equipSet[IdleArray[IdleIndex]] then
                        equipSet = equipSet[IdleArray[IdleIndex]]
                end
                if equipSet[WeaponArray[WeaponIndex]] then
                        equipSet = equipSet[WeaponArray[WeaponIndex]]
                end
                equip(equipSet)
        end
end

function buff_change(buff,gain)
        buff = string.lower(buff)
        if buff == "sneak attack" then
                SA = gain
        elseif buff == "trick attack" then
                TA = gain
        elseif buff == 'weakness' then -- Weakness Timer --
                if gain then
                        send_command('timers create "Weakness" 300 up')
                else
                        send_command('timers delete "Weakness"')
                end
        end
        if not midaction() then
                status_change(player.status)
        end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
        if command == 'acc' then -- Accuracy Level Toggle --
                AccIndex = (AccIndex % #AccArray) + 1
                status_change(player.status)
                add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
        elseif command == 'thw' then -- Main Weapon Toggle --
                WeaponIndex = (WeaponIndex % #WeaponArray) + 1
                add_to_chat(158,'Main Weapon: '..WeaponArray[WeaponIndex])
                status_change(player.status)
        elseif command == 'C5' then -- Auto Update Gear Toggle --
                status_change(player.status)
                add_to_chat(158,'Auto Update Gear')
        elseif command == 'C2' then -- Hybrid Toggle --
                if Armor == 'Hybrid' then
                        Armor = 'None'
                        add_to_chat(123,'Hybrid Set: [Unlocked]')
                else
                        Armor = 'Hybrid'
                        add_to_chat(158,'Hybrid Set: '..AccArray[AccIndex])
                end
                status_change(player.status)
        elseif command == 'th' then -- Full TH Set Toggle --
                if TH == 'ON' then
                        TH = 'OFF'
                        add_to_chat(123,'Full TH Set: [Unlocked]')
                else
                        TH = 'ON'
                        add_to_chat(158,'Full TH Set: [Locked]')
                end
                status_change(player.status)
        elseif command == 'pdt' then -- PDT Toggle --
                if Armor == 'PDT' then
                        Armor = 'None'
                        add_to_chat(123,'PDT Set: [Unlocked]')
                else
                        Armor = 'PDT'
                        add_to_chat(158,'PDT Set: [Locked]')
                end
                status_change(player.status)
        elseif command == 'mdt' then -- MDT Toggle --
                if Armor == 'MDT' then
                        Armor = 'None'
                        add_to_chat(123,'MDT Set: [Unlocked]')
                else
                        Armor = 'MDT'
                        add_to_chat(158,'MDT Set: [Locked]')
                end
                status_change(player.status)
        elseif command == 'eva' then -- Evasion Toggle --
                if Armor == 'EVA' then
                        Armor = 'None'
                        add_to_chat(123,'Evasion Set: [Unlocked]')
                else
                        Armor = 'EVA'
                        add_to_chat(158,'Evasion Set: [Locked]')
                end
                status_change(player.status)
        elseif command == 'rancor' then -- Rancor Toggle --
                if Rancor == 'ON' then
                        Rancor = 'OFF'
                        add_to_chat(123,'Rancor: [OFF]')
                else
                        Rancor = 'ON'
                        add_to_chat(158,'Rancor: [ON]')
                end
                status_change(player.status)
        elseif command == 'C6' then -- Idle Toggle --
                IdleIndex = (IdleIndex % #IdleArray) + 1
                status_change(player.status)
                add_to_chat(158,'Idle Set: ' .. IdleArray[IdleIndex])
        elseif command == 'TP' then
                add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
        elseif command:match('^SC%d$') then
                send_command('//' .. sc_map[command])
        end
end

function refine_waltz(spell,action)
        if spell.type ~= 'Waltz' then
                return
        end

        if spell.name == "Healing Waltz" or spell.name == "Divine Waltz" or spell.name == "Divine Waltz II" then
                return
        end

        local newWaltz = spell.english
        local waltzID

        local missingHP

        if spell.target.type == "SELF" then
                missingHP = player.max_hp - player.hp
        elseif spell.target.isallymember then
                local target = find_player_in_alliance(spell.target.name)
                local est_max_hp = target.hp / (target.hpp/100)
                missingHP = math.floor(est_max_hp - target.hp)
        end

        if missingHP ~= nil then
                if player.sub_job == 'DNC' then
                        if missingHP < 40 and spell.target.name == player.name then
                                add_to_chat(123,'Full HP!')
                                cancel_spell()
                                return
                        elseif missingHP < 150 then
                                newWaltz = 'Curing Waltz'
                                waltzID = 190
                        elseif missingHP < 300 then
                                newWaltz = 'Curing Waltz II'
                                waltzID = 191
                        else
                                newWaltz = 'Curing Waltz III'
                                waltzID = 192
                        end
                else
                        return
                end
        end

        local waltzTPCost = {['Curing Waltz'] = 20, ['Curing Waltz II'] = 35, ['Curing Waltz III'] = 50}
        local tpCost = waltzTPCost[newWaltz]

        local downgrade

        if player.tp < tpCost and not buffactive.trance then

                if player.tp < 20 then
                        add_to_chat(123, 'Insufficient TP ['..tostring(player.tp)..']. Cancelling.')
                        cancel_spell()
                        return
                elseif player.tp < 35 then
                        newWaltz = 'Curing Waltz'
                elseif player.tp < 50 then
                        newWaltz = 'Curing Waltz II'
                end

                downgrade = 'Insufficient TP ['..tostring(player.tp)..']. Downgrading to '..newWaltz..'.'
        end

        if newWaltz ~= spell.english then
                send_command('@input /ja "'..newWaltz..'" '..tostring(spell.target.raw))
                if downgrade then
                        add_to_chat(158, downgrade)
                end
                cancel_spell()
                return
        end

        if missingHP > 0 then
                add_to_chat(158,'Trying to cure '..tostring(missingHP)..' HP using '..newWaltz..'.')
        end
end

function find_player_in_alliance(name)
        for i,v in ipairs(alliance) do
                for k,p in ipairs(v) do
                        if p.name == name then
                                return p
                        end
                end
        end
end

function sub_job_change(newSubjob, oldSubjob)
        select_default_macro_book()
end

function set_macro_page(set,book)
        if not tonumber(set) then
                add_to_chat(123,'Error setting macro page: Set is not a valid number ('..tostring(set)..').')
                return
        end
        if set < 1 or set > 10 then
                add_to_chat(123,'Error setting macro page: Macro set ('..tostring(set)..') must be between 1 and 10.')
                return
        end

        if book then
                if not tonumber(book) then
                        add_to_chat(123,'Error setting macro page: book is not a valid number ('..tostring(book)..').')
                        return
                end
                if book < 1 or book > 20 then
                        add_to_chat(123,'Error setting macro page: Macro book ('..tostring(book)..') must be between 1 and 20.')
                        return
                end
                send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(set))
        else
                send_command('@input /macro set '..tostring(set))
        end
end

function select_default_macro_book()
        -- Default macro set/book
        if player.sub_job == 'WAR' then
                set_macro_page(3, 2)
        elseif player.sub_job == 'DNC' then
                set_macro_page(1, 2)
        elseif player.sub_job == 'NIN' then
                set_macro_page(2, 2)
        else
                set_macro_page(1, 2)
        end
end
