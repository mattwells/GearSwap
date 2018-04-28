function get_sets()
	debug('Rommi>> <3')

	-- Idle Sets --
	sets.Idle = {
		main="Terpsichore",
		sub="Twashtar",
		ammo="Yamarang",
		head="Mummu Bonnet +1",
		body="Meg. Cuirie +2",
		hands="Meg. Gloves +1",
		legs="Meg. Chausses +2",
		feet="Tandava Crackows",
		neck="Twilight Torque",
		waist="Flume Belt",
		left_ear="Telos Earring",
		right_ear="Infused Earring",
		left_ring="Warden's ring",
		right_ring={ name="Dark Ring", augments={'Magic dmg. taken -5%','Phys. dmg. taken -3%',}},
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','System: 1 ID: 1155 Val: 4',}},
	}

	sets.Resting = set_combine(sets.Idle,{})

	-- JA Sets --
	sets.JA = {}

	sets["Fan Dance"] = {
		hands="Horos Bangles +1",
	}

	sets["Saber Dance"] = {
		legs="Horos Tights +1",
	}

	sets.Jig = {
		legs="Horos Tights +1",
		feet="Maxixi Toeshoes +2",
	}

	sets.Flourish = {}
	sets.Flourish["Reverse Flourish"] = {
		hands="Macu. Bangles +1",
		back={ name="Toetapper Mantle", augments={'"Store TP"+2','"Rev. Flourish"+29','Weapon skill damage +1%',}},
	}
	sets.Flourish["Violent Flourish"] = {
		body="Horos Casaque +2",
	}

	sets["No Foot Rise"] = {
		body="Horos Casaque +2",
	}

	sets.Waltz = {
		ammo="Yamarang",
		head={ name="Horos Tiara +1", augments={'Enhances "Trance" effect',}},
		body="Maxixi Casaque +2",
		feet="Maxixi Toeshoes +2",
		back={ name="Toetapper Mantle", augments={'"Store TP"+1','"Dual Wield"+4','"Rev. Flourish"+20',}},
	}

	sets.Samba = {
		head="Maculele Tiara +1",
		body="Macu. Casaque +1",
		hands="Macu. Bangles +1",
		legs="Maculele Tights +1",
		feet="Macu. Toeshoes +1",
	}

	sets.Step = {
		head="Maxixi Tiara +1",
		body="Horos Casaque +2",
		hands="Maxixi Bangles +3",
		legs={ name="Taeon Tights", augments={'Accuracy+20 Attack+20','"Triple Atk."+2','STR+5 DEX+5',}},
		feet="Horos Toe Shoes +2",
		neck="Iqabi Necklace",
		waist="Olseni Belt",
		left_ear="Zennaroi Earring",
		right_ear="Heartseeker Earring",
		left_ring="Ramuh Ring +1",
		right_ring="Oneiros Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}

	-- WS Sets --
	sets.WS = {
		ammo="Jukukik Feather",
		head="Adhemar Bonnet +1",
		body={ name="Herculean Vest", augments={'Attack+25','Weapon skill damage +3%','DEX+12','Accuracy+11',}},
		hands="Maxixi Bangles +3",
		legs="Mummu Kecks +2",
		feet="Mummu Gamash. +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
		left_ring="Ilabrat Ring",
		right_ring="Ramuh Ring +1",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','System: 1 ID: 1155 Val: 4',}},
		-- DEX30 Acc/Att DblAtt
	}

	sets.WS["Rudra's Storm"] = {
		ammo="Jukukik Feather",
		head="Mummu Bonnet +1",
		body={ name="Herculean Vest", augments={'Attack+25','Weapon skill damage +3%','DEX+12','Accuracy+11',}},
		hands="Maxixi Bangles +3",
		legs="Mummu Kecks +2",
		feet="Mummu Gamash. +1",
		neck="Caro necklace",
		waist="Chiner's Belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
		left_ring="Ilabrat Ring",
		right_ring="Ramuh Ring +1",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}

	sets.Precast = {}

	sets.Midcast = {}

	-- Melee --
	sets.TP = {
		ammo="Yamarang",
		head="Adhemar Bonnet +1",
		body="Mummu Jacket +2",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Mummu Kecks +2",
		feet="Mummu Gamash. +1",
		neck="Iqabi Necklace",
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Ilabrat Ring",
		right_ring="Petrov Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','System: 1 ID: 1155 Val: 4',}},
	}
end

function user_setup()
	debug('function user_setup()')
end

function precast(spell,action)
	if spell.type:endswith('Magic') or spell.type == "BardSong" or spell.type == "Ninjutsu" then
		if buffactive.silence then -- Cancel Magic or Ninjutsu or BardSong If You Are Silenced or Out of Range --
			cancel_spell()
			debug(spell.name..' Canceled: [Silence has fallen]')
			return
		else
			if spell.type == 'BardSong' then
				if buffactive.nightingale then
					song_equip(spell)
					return
				else
					equip(sets.Precast.SongCast)
					debug('Precast: Song')
				end
			elseif string.find(spell.english,'Cur') and spell.english ~= "Cursna" then
				equip(sets.Precast.Cure)
				debug('Precast: Cure')
			else
				equip(sets.Precast.FastCast)
				debug('Precast: Fast Cast')
			end
		end
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
			debug('Precast: ' ..  spell.english)
		end
		debug(spell.english)
	elseif spell.type == "WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
			debug('Precast: ' .. spell.english)
		else
			equip(sets.WS)
			debug('Precast: WS')
		end
	elseif sets[spell.type] then
		if sets[spell.type][spell.english] then
			equip(sets[spell.type][spell.english])
			debug(spell.type .. ' ' .. spell.english)
		else
			equip(sets[spell.type])
			debug(spell.type)
		end
	end
end

function midcast(spell, action)
	if sets.Midcast[spell.english] then
		equip(sets.Midcast[spell.english])
		debug('Midcast: ' .. spell.english)
		return

	elseif spell.type:endswith('Magic') or spell.type == 'Ninjutsu' or spell.type == "BardSong" then

		if spell.type == "BardSong" then
			song_equip(spell)
		elseif string.find(spell.english,'Cure') then
			equip(sets.Midcast.Cure)
			debug('Midcast: Cure')
		elseif string.find(spell.english,'Cura') then
			equip(sets.Midcast.Curaga)
			debug('Midcast: Curaga')
		end

	end
end

function aftercast(spell,action)
	status_change(player.status)
end

function status_change(new,old)
	if new == 'Idle' then
		equip(sets.Idle)
		debug('Aftercast: Idle')
	elseif new == 'Resting' then
		equip(sets.Resting)
		debug('Aftercast: Resting')
	elseif new == 'Engaged' then
		equipSet = sets.TP
		equip(equipSet)
		debug('Engaged')
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

song_set_names = {'Finale', 'Lullaby', 'March', 'Minuet', 'Madrigal', 'Ballad', 'Scherzo', 'Mazurka', 'Paeon'}
function song_equip(spell)
	if spell.target.type == 'MONSTER' then
		equip(sets.Midcast.Wind)
		debug('Midcast: Wind')
	else
		if 'Daurdabla' == player.equipment.range then
			debug('Midcast: Dummy Song')
			return
		end

		equip(sets.Midcast.WindBuff)
		debug('Midcast: WindBuff')
	end

	for _, song in ipairs(song_set_names) do
		if string.find(spell.english, song) then
			if sets.Midcast[song] then
				equip(sets.Midcast[song])
				debug('Midcast: ' .. song)
				break
			end
		end
	end
end

function debug(s)
	send_command('@input /echo ' .. s)
end
