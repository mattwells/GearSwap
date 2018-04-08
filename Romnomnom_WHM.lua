function get_sets()

	sets.Idle = {
		main="Tamaxchi", sub="Genbu's Shield", ammo="Incantor Stone",
		head="Gendewitha caubeen +1", neck="Orison Locket", ear1="Roundel Earring", ear2="Loquac. Earring",
		body="Gendewitha bliaut +1", hands="Iuvenalis mittens +1", ring1="Serket Ring", ring2="Prolix Ring",
		back="Orison Cape", waist="Cascade Belt", legs="Piety Pantaloons", feet="Espial socks",
	}

	sets.Precast = {}

	sets.Precast.FastCast = {
		ammo="Incantor Stone",
		neck="Orison Locket", ear2="Loquac. Earring",
		body="Shango Robe",
		ring2="Prolix Ring",
	}

	sets.Precast.Cure = {
		body="Heka's Kalasiris", neck="Orison Locket", ear2="Loquac. Earring",
		ring2="Prolix Ring",
		feet="Cure Clogs",
	}

	sets.Midcast = {}

	sets.Midcast.Cure = {
		main="Tamaxchi", sub="Genbu's Shield",
		head="Gendewitha caubeen +1", neck="Phalaina locket", ear1="Roundel Earring",
		body="Heka's Kalasiris", hands="Augur's gloves",
		back="Orison Cape", waist="Cascade Belt", legs="Orsn. Pantaln. +2", feet="Orison Duckbills +2",
	}

	sets.Midcast.Bar = {
		legs="Cleric's pantaloons +2",
	}
end

function precast(spell, action)
	if spell.type:endswith('Magic') or spell.type == "BardSong" or spell.type == "Ninjutsu" then

		if buffactive.silence then -- Cancel Magic or Ninjutsu or BardSong If You Are Silenced or Out of Range --
			cancel_spell()
			debug(spell.name..' Canceled: [Silence has fallen]')
			return
		else

			if string.find(spell.english,'Cur') and spell.english ~= "Cursna" then
				equip(sets.Precast.Cure)
				debug('Precast: Cure')

			elseif string.find(spell.english, 'Bar') then
				equip(sets.Midcast.Bar)
				debug('Midcast: Bar')

			else
				equip(sets.Precast.FastCast)
				debug('Precast: Fast Cast')
			end

		end
	end
end

function midcast(spell, action)
	if spell.type:endswith('Magic') or spell.type == 'Ninjutsu' or spell.type == "BardSong" then

		if string.find(spell.english,'Cure') then
			equip(sets.Midcast.Cure)
			debug('Midcast: Cure')

		elseif string.find(spell.english,'Cura') then
			equip(sets.Midcast.Curaga)
			debug('Midcast: Curaga')

		elseif string.find(spell.english, 'Bar') then
			equip(sets.Midcast.Bar)
			debug('Midcast: Bar')
		end

	end
end

function aftercast(spell, action)
	debug('Idle')
	equip(sets.Idle)
end

function debug(s)
	-- windower.add_to_chat(123, s)
end
