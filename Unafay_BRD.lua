function get_sets()
	debug('Rommi>> <3')

	-- Idle Sets --
	sets.Idle = {
		main="Terra's Staff",
		sub="Achaq grip",
		head="Bihu roundlet +1",
		neck="Twilight Torque",
		ear1="Loquac. Earring",
		ear2="Enchanter Earring +1",
		body="Bihu justaucorps +1",
		hands="Marduk's dastanas +1",
		ring1="Patricius Ring",
		ring2="Sangoma ring",
		back="Mecistopins mantle",
		waist="Ovate rope",
		legs="Bihu cannions +1",
		feet="Fili cothurnes +1"
	}

	sets.Resting = set_combine(sets.Idle, {
		ear1="Moonshade earring",
		body="Respite cloak",
		waist="Fucho-no-obi",
		legs="Assiduity pants",
		hands="Serpentes cuffs",
		feet="Sepentes sabots"
	})

	-- JA Sets --
	sets.JA = {}
	sets.JA.Nightingale = {feet="Bihu Slippers +1"}
	sets.JA.Troubadour = {body="Bihu Justaucorps +1"}
	sets.JA["Soul Voice"] = {legs="Bihu cannions +1"}

	-- Song Precast Set --
	sets.Precast = {}
	sets.Precast.SongCast = {
		main="Felibre's dague",
		head="Fili Calot +1",
		neck="Orunmila's Torque",
		ear1="Loquac. Earring",
		ear2="Enchanter Earring +1",
		body="Sheikh Manteel",
		hands="Marduk's dastanas +1",
		ring1="Prolix Ring",
		ring2="Weatherspoon ring",
		back="Swith Cape +1",
		waist="Witful Belt",
		legs="Artsieq hose",
		feet="Coalrake sabots"
	}

	-- Fastcast Set --
	sets.Precast.FastCast = {
		main="Felibre's dague",
		head="Nahtirah Hat",
		neck="Orunmila's Torque",
		ear1="Enchanter Earring +1",
		body="Vanir Cotehardie",
		hands="Gendewitha Gages +1",
		ring1="Prolix Ring",
		ring2="Weatherspoon ring",
		back="Swith Cape +1",
		waist="Witful Belt",
		legs="Artsieq hose",
		feet="Chelona Boots"
	}

	-- Cure Precast Set --
	sets.Precast.Cure = {
		head="Nahtirah Hat",
		neck="Orunmila's Torque",
		ear2="Loquac. Earring",
		body="Heka's Kalasiris",
		hands="Gendewitha Gages +1",
		ring1="Prolix Ring",
		back="Pahtli Cape",
		waist="Witful Belt",
		legs="Artsieq hose",
		feet="Chelona Boots"
	}

	sets.Midcast = {}

	-- Song Debuff Set --
	sets.Midcast.Wind = {
		main="Carnwenhan",
		range="Gjallarhorn",
		head="Brioso Roundlet +1",
		neck="Piper's Torque",
		ear1="Gwati earring",
		ear2="Enchanter earring +1",
		body="Brioso Just. +2",
		hands="Brioso cuffs +1",
		ring1="Carbuncle ring +1",
		ring2="Carbuncle ring +1",
		back="Rhapsode's Cape",
		waist="Ovate rope",
		legs="Bihu Cannions +1",
		feet="Artsieq Boots"
	}

			-- Song Buff Set --
	sets.Midcast.WindBuff = {
		main="Carnwenhan",
		range="",
		head="Fili calot +1",
		neck="Moonbow Whistle",
		ear1="Musical Earring",
		ear2="Aoidos' Earring",
		body="Fili hongreline +1",
		hands="Fili manchettes +1",
		ring1="Dawnsoul ring",
		back="Kumbira cape",
		waist="Ovate Rope"
		legs="Mdk. Shalwar +1", -- Inyanga Shalwar +2
		feet="Brioso Slippers +1" -- Brioso Slippers +3
	}

	sets.Midcast.March = {hands="Fili manchettes +1"}
	sets.Midcast.Minuet = {body="Fili hongreline +1"}
	sets.Midcast.Madrigal = {head="Fili calot +1"}
	sets.Midcast.Ballad = {legs="Fili rhingrave +1"}
	sets.Midcast.Scherzo = {feet="Fili cothurnes +1"}
	sets.Midcast.Mazurka = {head="Nahtirah hat"}
	sets.Midcast.Paeon = {head="Brioso Roundlet +1"}
	sets.Midcast.Finale = {}
	sets.Midcast.Lullaby = {hands= "Brioso cuffs +1"}

	-- Cure Set --
	sets.Midcast.Cure = {
		main="Chatoyant staff",
		sub="Achaq grip",
		head="Vanya hood",
		neck="Colossus's torque",
		ear1="Loquac. Earring",
		ear2="Beatific earring",
		body="chironic doublet",
		hands="Bokwus gloves",
		ring1="Ephedra ring",
		ring2="Sirona's ring",
		back="Pahtli cape",
		waist="Cascade belt",
		legs="Nabu's shalwar",
		feet="Bihu slippers +1"
	}

	-- Curaga Set --
	sets.Midcast.Curaga = {
		main="",
		sub="Genbu's Shield",
		ammo="Oreiad's Tathlum",
		head="Gendewitha Caubeen +1",
		-- neck="Nuna Gorget +1",
		ear1="Lifestorm Earring",
		ear2="Loquac. Earring",
		body="Heka's Kalasiris",
		hands="Gendewitha Gages +1",
		-- ring1="Aquasoul Ring",
		-- ring2="Karka Ring",
		back="Pahtli Cape",
		-- waist="Pythia Sash +1",
		-- legs="Gendewitha Spats",
		feet="Gendewitha Galoshes +1"
	}

	-- Haste Set --
	sets.Midcast.Haste = set_combine(sets.Precast.FastCast, {
		head="Nahtirah Hat",
		neck="Orunmila's Torque",
		ear1="Loquac. Earring",
		-- body="Hedera Cotehardie",
		hands="Gendewitha Gages +1",
		ring1="Prolix Ring",
		ring2="Weatherspoon ring",
		back="Swith Cape +1",
		-- waist="Pya'ekue Belt",
		legs="Bihu Cannions +1",
		feet="Brioso Slippers +1"
	})

	-- Cursna Set --
	sets.Midcast.Cursna = set_combine(sets.Midcast.Haste, {
		ring1="Ephedra ring",
		neck="Malison medallion",
		feet="Gendewitha Galoshes +1"
	})

	-- Stoneskin Set --
	sets.Midcast.Stoneskin = set_combine(sets.Midcast.Haste)
	
	-- Melee --
	sets.TP = {
		main="Carnwenhan",
		sub="Izhiikoh",	
		head="Ayanmo zucchetto +1",
		neck="Asperity Necklace",
		ear1="Steelflash Earring",
		ear2="Bladeborn Earring",
		body="Ayanmo corazza +1",
		hands="Ayanmo manopolas +1",
		ring1="Rajas Ring",
		ring2="Ayanmo Ring",
		back="Boxer's Mantle",
		waist="Cetl belt",
		legs="Ayanmo cosciales +1",
		feet="Ayanmo gambieras +1"
	}
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
