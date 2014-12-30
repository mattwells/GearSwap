-- *** Credit goes to Flippant for helping me with Gearswap *** --
-- ** I Use Motenten's Macro Book Function ** --
-- Last Updated: 05/02/14 8:00 PM *Added RA Sets* --

function get_sets()
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. First Set Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below. Most of These Sets Are Empty So You Need To Edit Them On Your Own. Remember To Check What The Combined Set Is For Each Sets. Can Delete Lentus If You Don't Need It. --
	Armor = 'None'
	Twilight = 'None'
	warning = false
	Attack = 'OFF' -- Set Default Attack Set ON or OFF Here --
	Seigan = 'OFF' -- Set Default Seigan Set ON or OFF Here --
	Third_Eye = 'OFF' -- Set Default Third Eye Set ON or OFF Here --
	Samurai_Roll = 'OFF' -- Set Default SAM Roll ON or OFF Here --
	ammo_warning_limit = 10 -- Set Ammo Limit Check Here --
	target_distance = 5 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --

	sc_map = {SC1="TachiFudo", SC2="TachiRana", SC3="NamasArrow"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	-- Idle/Town Sets --
	sets.Idle = {
		main="Tsurumaru", sub="Bloodrain strap", range="Cibitshavore", ammo="Tulfaire Arrow",
		head="Otomi Helm", neck="Twilight Torque", ear1="Sanare Earring", ear2="Merman's Earring",
		body="Sakonji domaru +1", hands="Sakonji Kote +1", ring1="Shadow Ring", ring2="Dark Ring",
		back="Shadow mantle", waist="Flume Belt", legs="Wakido haidate +1", feet="Danzo Sune-Ate"
	}

	sets.Twilight = {head="Twilight Helm",body="Twilight Mail"}

	-- Preshot Set --
	sets.Preshot = {}

	-- Midshot Sets --
	sets.Midshot = {}
	sets.Midshot.MidACC = set_combine(sets.Midshot,{})
	sets.Midshot.HighACC = set_combine(sets.Midshot.MidACC,{})

	-- Tsurumaru TP Sets --
	sets.TP = {
		main="Tsurumaru", sub="Bloodrain strap", range="Cibitshavore", ammo="Eminent Arrow",
		head="Otomi Helm", neck="Ganesha's mala", ear1="Trux earring", ear2="Brutal earring",
		body="Sakonji domaru +1", hands="Wakido kote +1", ring1="K'ayres ring", ring2="Rajas ring",
		back="Takaha mantle", waist="Windbuffet belt +1", legs="Wakido haidate +1", feet="Otronif boots +1"
	}

	sets.TP.MidACC = set_combine(sets.TP,{
		head="Yaoyotl Helm", neck="Iqabi Necklace", ear1="Steelflash Earring", ear2="Bladeborn Earring",
		-- ring1="Mars's Ring",
		back="Takaha Mantle", waist="Dynamic Belt"
	})
	sets.TP.HighACC = set_combine(sets.TP.MidACC,{
		ear2="Zennaroi Earring",
		body="Mes. Haubergeon", hands="Sakonji Kote +1", -- ring2="Patricius Ring",
		legs="Xaddi Cuisses", -- feet="Waki. Sune-Ate +1"
	})

	-- Tsurumaru(Ionis) TP Sets --
	sets.TP.Ionis = set_combine(sets.TP,{
		body="Xaddi Mail", ring1="Oneiros Ring",
		back="Takaha Mantle", legs="Otronif Brais +1"
	})

	sets.TP.MidACC.Ionis = set_combine(sets.TP.Ionis,{
		head="Yaoyotl Helm", neck="Iqabi Necklace", ear1="Steelflash Earring", ear2="Bladeborn Earring",
		-- ring1="Mars's Ring",
		back="Takaha Mantle", waist="Dynamic Belt"
	})
	sets.TP.HighACC.Ionis = set_combine(sets.TP.MidACC.Ionis,{
		body="Mes. Haubergeon", hands="Sakonji Kote +1", --  ring2="Patricius Ring", ear2="Zennaroi Earring",
		legs="Xaddi Cuisses" -- , feet="Waki. Sune-Ate +1"
	})

	-- Tsurumaru(SAM Roll) TP Sets --
	sets.TP.STP = set_combine(sets.TP,{})
	sets.TP.MidACC.STP = set_combine(sets.TP.MidACC,{})
	sets.TP.HighACC.STP = set_combine(sets.TP.HighACC,{})

	-- Tsurumaru(Ionis + SAM Roll) TP Sets --
	sets.TP.Ionis.STP = set_combine(sets.TP.Ionis,{
		ear1="Trux Earring", ear2="Brutal Earring"
	})
	sets.TP.MidACC.Ionis.STP = set_combine(sets.TP.Ionis.STP,{
		head="Yaoyotl Helm", neck="Iqabi Necklace", ear1="Steelflash Earring", ear2="Bladeborn Earring",
		-- ring1="Mars's Ring",
		back="Takaha Mantle", waist="Dynamic Belt"
	})
	sets.TP.HighACC.Ionis.STP = set_combine(sets.TP.MidACC.Ionis.STP,{
		body="Mes. Haubergeon", ring2="Patricius Ring",
		legs="Xaddi Cuisses", feet="Waki. Sune-Ate +1"
	})

	-- Seigan TP Set --
	sets.TP.Seigan = {head="Unkai Kabuto +2"}

	-- Third Eye TP Set --
	sets.TP['Third Eye'] = {legs="Sakonji Haidate +1"}

	-- PDT/MDT Sets --
	sets.PDT = {
		head="Otronif Mask +1", neck="Twilight Torque", -- ear1="Sanare Earring", ear2="Merman's Earring",
		body="Otronif Harness +1", hands="Sakonju Kote +1", ring1="Dark Ring", -- ring2="Defending Ring",
		back="Mollusca Mantle", waist="Flume Belt", legs="Otronif Brais +1", feet="Otronif Boots +1"
	}

	sets.MDT = set_combine(sets.PDT,{
		head="Otronif Mask +1", neck="Twilight Torque", ear1="Sanare Earring", ear2="Merman's Earring",
		body="Otro. Harness +1", hands="Otronif Gloves +1", ring1="Dark Ring", ring2="Defending Ring",
		back="Engulfer Cape +1", waist="Flume Belt", legs="Otronif Brais +1", feet="Otronif Boots +1"
	})

	-- Hybrid Sets --
	sets.TP.Hybrid = set_combine(sets.PDT,{
		head="Lithelimb Cap", neck="Agitator's Collar", ear1="Steelflash Earring", ear2="Bladeborn Earring",
		hands="Xaddi Gauntlets", ring1="Patricius Ring",
		back="Mollusca Mantle"
	})
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{
		body="Sakonji Domaru +1", hands="Wakido Kote +1", ear1="Steelflash Earring", ear2="Bladeborn Earring",
	})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{
		head="Yaoyotl Helm",
		body="Mes. Haubergeon",
		waist="Dynamic Belt +1", legs="Xaddi Cuisses"})

	-- WS Base Set --
	sets.WS = {
		head="Otomi Helm", neck="Ganesha's Mala", ear1="Moonshade Earring", ear2="Brutal Earring",
		body="Phorcys Korazin", hands="Miki. Gauntlets", ring1="Ifrit Ring", ring2="Ifrit Ring",
		back="Buquwik Cape", waist="Metalsinger Belt", legs="Wakido Haidate +1", feet="Sak. Sune-Ate +1"
	}

	-- Tachi: Fudo Sets --
	sets.WS["Tachi: Fudo"] = {
		head="Otomi Helm", neck="Light Gorget", ear1="Moonshade Earring", ear2="Brutal Earring",
		body="Phorcys Korazin", hands="Mikinaak gauntlets", ring1="Ifrit Ring", ring2="Ifrit Ring",
		back="Buquwik Cape", waist="Metalsinger Belt", legs="Scuffler's cosciales", feet="Gigantes Boots +1"
	}
	sets.WS["Tachi: Fudo"].MidACC = set_combine(sets.WS["Tachi: Fudo"],{
		head="Gavialis Helm",
		body="Mes. Haubergeon", hands="Mikinaak gauntlets",
		legs="Xaddi Cuisses", feet="Sak. Sune-Ate +1"
	})
	sets.WS["Tachi: Fudo"].HighACC = set_combine(sets.WS["Tachi: Fudo"].MidACC,{
		back="Takaha Mantle", waist="Light Belt",
		legs="Miki. Cuisses", feet="Waki. Sune-Ate +1"
	})

	-- Tachi: Fudo(4 Hits) Set --
	sets.WS["Tachi: Fudo"].Lentus = set_combine(sets.WS["Tachi: Fudo"],{
			ring2="Rajas Ring"})

	-- Tachi: Fudo(SAM Roll) Sets --
	sets.WS["Tachi: Fudo"].STP = set_combine(sets.WS["Tachi: Fudo"],{})
	sets.WS["Tachi: Fudo"].MidACC.STP = set_combine(sets.WS["Tachi: Fudo"].MidACC,{})
	sets.WS["Tachi: Fudo"].HighACC.STP = set_combine(sets.WS["Tachi: Fudo"].HighACC,{})

	-- Tachi: Fudo(Attack) Set --
	sets.WS["Tachi: Fudo"].ATT = set_combine(sets.WS["Tachi: Fudo"],{
		head="Yaoyotl Helm",
		hands="Miki. Gauntlets"})

	-- Tachi: Shoha Sets --
	sets.WS["Tachi: Shoha"] = {
		head="Otomi Helm", neck="Ganesha's Mala", ear1="Moonshade Earring", ear2="Brutal Earring",
		body="Mes. Haubergeon", hands="Mikinaak gauntlets", ring1="Ifrit Ring", ring2="Ifrit Ring",
		back="Buquwik Cape", waist="Windbuffet Belt +1", legs="Wakido Haidate +1", feet="Gigantes Boots +1" -- feet="Sak. Sune-Ate +1"
	}
	sets.WS["Tachi: Shoha"].MidACC = set_combine(sets.WS["Tachi: Shoha"],{
		head="Gavialis Helm",
		-- neck="Breeze Gorget",
		hands="Mikinaak gauntlets",
		waist="Breeze Belt", legs="Xaddi Cuisses", feet="Waki. Sune-Ate +1"
	})
	sets.WS["Tachi: Shoha"].HighACC = set_combine(sets.WS["Tachi: Shoha"].MidACC,{
		back="Takaha Mantle", legs="Miki. Cuisses"
	})

	-- Tachi: Shoha(4 Hits) Set --
	sets.WS["Tachi: Shoha"].Lentus = set_combine(sets.WS["Tachi: Shoha"],{})

	-- Tachi: Shoha(SAM Roll) Sets --
	sets.WS["Tachi: Shoha"].STP = set_combine(sets.WS["Tachi: Shoha"],{})
	sets.WS["Tachi: Shoha"].MidACC.STP = set_combine(sets.WS["Tachi: Shoha"].MidACC,{})
	sets.WS["Tachi: Shoha"].HighACC.STP = set_combine(sets.WS["Tachi: Shoha"].HighACC,{})

	-- Tachi: Kaiten Sets --
	sets.WS["Tachi: Kaiten"] = {
		head="Otomi Helm",
		neck="Light Gorget",
		ear1="Vulcan's Pearl",
		ear2="Brutal Earring",
		body="Phorcys Korazin",
		hands="Tachi: Kaiten",
		ring1="Ifrit Ring", ring2="Ifrit Ring",
		back="Buquwik Cape",
		waist="Light Belt",
		legs="Wakido Haidate +1",
		feet="Sak. Sune-Ate +1"}
	sets.WS["Tachi: Kaiten"].MidACC = set_combine(sets.WS["Tachi: Kaiten"],{
		head="Yaoyotl Helm",
		hands="Mikinaak gauntlets",
		legs="Xaddi Cuisses",
		feet="Waki. Sune-Ate +1"})
	sets.WS["Tachi: Kaiten"].HighACC = set_combine(sets.WS["Tachi: Kaiten"].MidACC,{
		body="Mes. Haubergeon",
		back="Takaha Mantle",
		legs="Miki. Cuisses",
		feet="Waki. Sune-Ate +1"})

	-- Tachi: Kaiten(Lentus) Set --
	sets.WS["Tachi: Kaiten"].Lentus = set_combine(sets.WS["Tachi: Kaiten"],{})

	-- Tachi: Kaiten(SAM Roll) Sets --
	sets.WS["Tachi: Kaiten"].STP = set_combine(sets.WS["Tachi: Kaiten"],{})
	sets.WS["Tachi: Kaiten"].MidACC.STP = set_combine(sets.WS["Tachi: Kaiten"].MidACC,{})
	sets.WS["Tachi: Kaiten"].HighACC.STP = set_combine(sets.WS["Tachi: Kaiten"].HighACC,{})

	-- Tachi: Kaiten(Attack) Set --
	sets.WS["Tachi: Kaiten"].ATT = set_combine(sets.WS["Tachi: Kaiten"],{
		head="Yaoyotl Helm",
		hands="Mikinaak gauntlets"})

	-- Tachi: Rana Sets --
	sets.WS["Tachi: Rana"] = {
		head="Otomi Helm",
		neck="Snow Gorget",
		ear1="Vulcan's Pearl",
		ear2="Brutal Earring",
		body="Mes. Haubergeon",
		hands="Xaddi Gauntlets",
		ring1="Ifrit Ring", ring2="Ifrit Ring",
		back="Buquwik Cape",
		waist="Snow Belt",
		legs="Wakido Haidate +1",
		feet="Sak. Sune-Ate +1"}
	sets.WS["Tachi: Rana"].MidACC = set_combine(sets.WS["Tachi: Rana"],{
		head="Yaoyotl Helm",
		hands="Mikinaak gauntlets",
		legs="Xaddi Cuisses",
		feet="Waki. Sune-Ate +1"})
	sets.WS["Tachi: Rana"].HighACC = set_combine(sets.WS["Tachi: Rana"].MidACC,{
		back="Takaha Mantle",
		legs="Miki. Cuisses"})

	-- Tachi: Rana(4 Hits) Set --
	sets.WS["Tachi: Rana"].Lentus = set_combine(sets.WS["Tachi: Rana"],{})

	-- Tachi: Rana(SAM Roll) Sets --
	sets.WS["Tachi: Rana"].STP = set_combine(sets.WS["Tachi: Rana"],{})
	sets.WS["Tachi: Rana"].MidACC.STP = set_combine(sets.WS["Tachi: Rana"].MidACC,{})
	sets.WS["Tachi: Rana"].HighACC.STP = set_combine(sets.WS["Tachi: Rana"].HighACC,{})

	-- JA Sets --
	sets.JA = {}
	sets.JA.Meditate = {
		head="Wakido Kabuto +1",
		hands="Sakonji Kote +1",
		back="Takaha mantle"
	}
	sets.JA["Warding Circle"] = {head="Wakido Kabuto +1"}

	-- Waltz Set --
	sets.Waltz = {}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = {
		neck="Orunmila's Torque",
		ear1="Loquac. Earring",
		ring1="Prolix Ring",
		ring2="Veneficium Ring"}

	sets.Midcast = {}
	-- Magic Haste Set --
	sets.Midcast.Haste = set_combine(sets.PDT,{})
end

function pretarget(spell,action)
	if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
		cancel_spell()
		send_command('Aggressor')
	elseif spell.english == "Seigan" and buffactive.Seigan then -- Change Seigan To Third Eye If Seigan Is On --
		cancel_spell()
		send_command('ThirdEye')
	elseif spell.english == "Meditate" and player.tp > 2900 then -- Cancel Meditate If TP Is Above 2900 --
		cancel_spell()
		add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
	elseif spell.action_type == 'Ranged Attack' and spell.target.distance > 24.9 then
		cancel_spell()
		add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		return
	elseif spell.type == 'WeaponSkill' and player.status == 'Engaged' then
		if spell.skill == 'Archery' then
			if spell.target.distance > 16+target_distance then
				cancel_spell()
				add_to_chat(123, spell.name..' Canceled: [Out of Range]')
				return
			end
		else
			if spell.target.distance > target_distance then
				cancel_spell()
				add_to_chat(123, spell.name..' Canceled: [Out of Range]')
				return
			end
		end
	end
end

function precast(spell,action)
	local check_ammo
	local check_ammo_count = 1
	if spell.action_type == 'Ranged Attack' then
		check_ammo = player.equipment.ammo
		if player.equipment.ammo == 'empty' or player.inventory[check_ammo].count <= check_ammo_count then
			add_to_chat(123, spell.name..' Canceled: [Out of Ammo]')
			cancel_spell()
			return
		else
			equip(sets.Preshot)
			if player.inventory[check_ammo].count <= ammo_warning_limit and player.inventory[check_ammo].count > 1 and not warning then
				add_to_chat(8, '***** [Low Ammo Warning!] *****')
				warning = true
			elseif player.inventory[check_ammo].count > ammo_warning_limit and warning then
				warning = false
			end
		end
	elseif spell.type == "WeaponSkill" then
		if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
			cancel_spell()
			add_to_chat(123,'Unable To Use WeaponSkill: [Disengaged]')
			return
		else
			equipSet = sets.WS
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end
			if Attack == 'ON' then
				equipSet = equipSet["ATT"]
			end
			if equipSet[AccArray[AccIndex]] then
				equipSet = equipSet[AccArray[AccIndex]]
			end
			if buffactive["Samurai Roll"] and equipSet["STP"] and Samurai_Roll == 'ON' then
				equipSet = equipSet["STP"]
			end
			if buffactive.Sekkanoki then -- Equip Unkai Kote +2 When Sekkanoki Is On --
				equipSet = set_combine(equipSet,{hands="Unkai Kote +2"})
			end
			if buffactive.Sengikori then -- Equip Unkai Sune-ate +2 When Sengikori Is On --
				equipSet = set_combine(equipSet,{feet="Unkai Sune-ate +2"})
			end
			if (spell.english == "Tachi: Fudo" or spell.english == "Tachi: Shoha") and (player.tp > 2999 or buffactive.Sekkanoki or (player.tp > 1999 and buffactive.Hagakure)) then -- Equip Vulcan's Pearl When You Have 300 TP or Sekkanoki On or 200+ TP For Hagakure --
				equipSet = set_combine(equipSet,{ear1="Vulcan's Pearl"})
			end
			equip(equipSet)
		end
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.action_type == 'Magic' then
		if string.find(spell.english,'Utsusemi') then
			if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
				cancel_spell()
				add_to_chat(123, spell.name .. ' Canceled: [3+ Images]')
				return
			else
				equip(sets.Precast.FastCast)
			end
		else
			equip(sets.Precast.FastCast)
		end
	elseif spell.type == "Waltz" then
		refine_waltz(spell,action)
		equip(sets.Waltz)
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	end
	if Twilight == 'Twilight' then
		equip(sets.Twilight)
	end
end

function midcast(spell,action)
	if spell.action_type == 'Ranged Attack' then
		equipSet = sets.Midshot
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		equip(equipSet)
	elseif spell.action_type == 'Magic' then
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
	if not spell.interrupted then
		if spell.type == "WeaponSkill" then
			send_command('wait 0.2;gs c TP')
		elseif spell.english == "Warding Circle" then -- Warding Circle Countdown --
			send_command('wait 260;input /echo '..spell.name..': [WEARING OFF IN 10 SEC.];wait 10;input /echo '..spell.name..': [OFF]')
		end
	end
	status_change(player.status)
end

function status_change(new,old)
	if Armor == 'PDT' then
		equip(sets.PDT)
	elseif Armor == 'MDT' then
		equip(sets.MDT)
	elseif new == 'Engaged' then
		equipSet = sets.TP
		if Armor == 'Hybrid' and equipSet["Hybrid"] then
			send_command('input /echo Hybrid')
			equipSet = equipSet["Hybrid"]
		end
		if equipSet[AccArray[AccIndex]] then
			send_command('input /echo TP ' .. AccArray[AccIndex])
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if buffactive["Aftermath: Lv.3"] and equipSet["AM3"] then
			send_command('input /echo AM3')
			equipSet = equipSet["AM3"]
		end
		if buffactive.Ionis and equipSet["Ionis"] then
			send_command('input /echo Ionis')
			equipSet = equipSet["Ionis"]
		end
		if buffactive["Samurai Roll"] and equipSet["STP"] and Samurai_Roll == 'ON' then
			send_command('input /echo STP')
			equipSet = equipSet["STP"]
		end
		if buffactive.Seigan and Seigan == 'ON' then -- Use Seigan Toggle For Seigan TP Set --
			send_command('input /echo Seigan')
			equipSet = set_combine(equipSet,sets.TP.Seigan)
		end
		if buffactive["Third Eye"] and Third_Eye == 'ON' then -- Use Third Eye Toggle For Third Eye TP Set --
			send_command('input /echo Third Eye')
			equipSet = set_combine(equipSet,sets.TP["Third Eye"])
		end
		equip(equipSet)
	else
		equip(sets.Idle)
	end
	if Twilight == 'Twilight' then
		equip(sets.Twilight)
	end
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == "aftermath: lv.3" then -- AM3 Timer/Countdown --
		if gain then
			send_command('timers create "Aftermath: Lv.3" 180 down;wait 120;input /echo Aftermath: Lv.3 [WEARING OFF IN 60 SEC.];wait 30;input /echo Aftermath: Lv.3 [WEARING OFF IN 30 SEC.];wait 20;input /echo Aftermath: Lv.3 [WEARING OFF IN 10 SEC.]')
		else
			send_command('timers delete "Aftermath: Lv.3"')
			add_to_chat(123,'AM3: [OFF]')
		end
	elseif buff == "perfect defense" then -- PD Timer --
		if gain then
			send_command('timers create "Perfect Defense" 57 down')
		else
			send_command('timers delete "Perfect Defense"')
			add_to_chat(123,'PD: [OFF]')
		end
	elseif buff == "yaegasumi" then -- Yaegasumi Timer --
		if gain then
			send_command('timers create "Yaegasumi" 45 down')
		else
			send_command('timers delete "Yaegasumi"')
			add_to_chat(123,'Yaegasumi: [OFF]')
		end
	elseif buff == 'weakness' then -- Weakness Timer --
		if gain then
			send_command('timers create "Weakness" 300 up')
		else
			send_command('timers delete "Weakness"')
		end
	end
	if buff == "sleep" and gain and player.hp > 200 and player.status == "Engaged" then -- Equip Berserker's Torque When You Are Asleep & Have 200+ HP --
		equip({neck="Berserker's Torque"})
	else
		if not midaction() then
			status_change(player.status)
		end
	end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'acc' then -- Accuracy Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: '..AccArray[AccIndex])
		status_change(player.status)
	elseif command == 'gear' then -- Auto Update Gear Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	elseif command == 'hybrid' then -- Hybrid Toggle --
		if Armor == 'Hybrid' then
			Armor = 'None'
			add_to_chat(123,'Hybrid Set: [Unlocked]')
		else
			Armor = 'Hybrid'
			add_to_chat(158,'Hybrid Set: '..AccArray[AccIndex])
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
	elseif command == 'seigan' then -- Seigan Toggle --
		if Seigan == 'ON' then
			Seigan = 'OFF'
			add_to_chat(123,'Seigan Set: [Unlocked]')
		else
			Seigan = 'ON'
			add_to_chat(158,'Seigan Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'eye' then -- Third Eye Toggle --
		if Third_Eye == 'ON' then
			Third_Eye = 'OFF'
			add_to_chat(123,'Third Eye Set: [Unlocked]')
		else
			Third_Eye = 'ON'
			add_to_chat(158,'Third Eye Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'roll' then -- SAM Roll Toggle --
		if Samurai_Roll == 'ON' then
			Samurai_Roll = 'OFF'
			add_to_chat(123,'SAM Roll: [OFF]')
		else
			Samurai_Roll = 'ON'
			add_to_chat(158,'SAM Roll: [ON]')
		end
		status_change(player.status)
	elseif command == 'att' then -- Attack Toggle --
		if Attack == 'ON' then
			Attack = 'OFF'
			add_to_chat(123,'Attack: [OFF]')
		else
			Attack = 'ON'
			add_to_chat(158,'Attack: [ON]')
		end
		status_change(player.status)
	elseif command == 'rr' then -- Twilight Toggle --
		if Twilight == 'Twilight' then
			Twilight = 'None'
			add_to_chat(123,'Twilight Set: [Unlocked]')
		else
			Twilight = 'Twilight'
			add_to_chat(158,'Twilight Set: [locked]')
		end
		status_change(player.status)
	elseif command == 'C8' then -- Distance Toggle --
		if player.target.distance then
			target_distance = math.floor(player.target.distance*10)/10
			add_to_chat(158,'Distance: '..target_distance)
		else
			add_to_chat(123,'No Target Selected')
		end
	elseif command == '2hr' then -- Cancel Meikyo Shisui --
		send_command('Cancel Meikyo Shisui')
		add_to_chat(123,'Meikyo Shisui: [OFF]')
	elseif command == 'idle' then -- Idle Toggle --
		IdleIndex = (IdleIndex % #IdleArray) + 1
		add_to_chat(158,'Idle Set: '..IdleArray[IdleIndex])
		status_change(player.status)
	elseif command == 'TP' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	elseif command:match('^SC%d$') then
		send_command('//'..sc_map[command])
	end
end

function refine_waltz(spell,action)
	if spell.type ~= 'Waltz' then
		return
	end

	if spell.name == "Healing Waltz" or spell.name == "Divine Waltz" then
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

	if player.tp < tpCost then

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
			add_to_chat(8, downgrade)
		end
		cancel_spell()
		return
	end

	if missingHP > 0 then
		add_to_chat(8,'Trying to cure '..tostring(missingHP)..' HP using '..newWaltz..'.')
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
		set_macro_page(1, 7)
	elseif player.sub_job == 'DNC' then
		set_macro_page(3, 7)
	elseif player.sub_job == 'DRK' then
		set_macro_page(2, 7)
	elseif player.sub_job == 'NIN' then
		set_macro_page(5, 7)
	else
		set_macro_page(1, 7)
	end
end