function get_sets()
	sets.Idle = {
		main = "Queller Rod",
		sub = "Sors Shield",
		ammo = "Incantor Stone",
		head = "Inyanga Tiara +2",
		body = "Ebers Bliaud",
		hands = "Inyan. Dastanas +2",
		legs = "Assiduity Pants",
		feet = "Inyan. Crackows +1",
		neck = "Phalaina Locket",
		waist = "Cascade Belt",
		left_ear = "Roundel Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Serket Ring",
		right_ring = "Inyanga Ring",
		back = "Mecisto. Mantle"
	}

	sets.Precast = {}

	sets.Precast.FastCast = {
		ammo = "Incantor Stone",
		body = "Inyanga Jubbah +1",
		ear2 = "Loquac. Earring",
		ring2 = "Prolix Ring",
		neck = "Orison Locket",
		waist = "Witful Belt",
		right_ear = "Loquac. Earring",
		right_ring = "Prolix Ring"
	}

	sets.Precast.Cure =
		set_combine(
		sets.Precast.FastCast,
		{
			main = "Queller Rod",
			sub = "Sors Shield",
			head = "Theophany Cap +2",
			body = "Heka's Kalasiris",
			ear1 = "Nourish. Earring +1",
			legs = "Ebers Pantaloons",
			feet = "Cure Clogs",
			back = {
				name = "Alaunus's Cape",
				augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", "MND+5", '"Fast Cast"+10', "Damage taken-5%"}
			}
		}
	)

	sets.Midcast = {}

	sets.Midcast.Cure = {
		main = {
			name = "Queller Rod",
			augments = {"Healing magic skill +15", '"Cure" potency +10%', '"Cure" spellcasting time -7%'}
		},
		sub = "Sors Shield",
		head = "Theophany Cap +2",
		body = "Heka's Kalasiris",
		hands = "Theophany Mitts +2",
		legs = "Ebers Pantaloons",
		feet = "Ebers Duckbills",
		waist = "Cascade Belt",
		left_ear = "Nourish. Earring +1",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "MND+10", '"Cure" potency +10%', "Damage taken-5%"}
		}
	}

	sets.Midcast.Cursna = {
		legs = "Theo. Pant. +1",
		waist = "Alaunus's Cape"
	}

	sets.Midcast.Regen = {
		body = "Cleric's Briault",
		hands = "Ebers Mitts",
		legs = "Theo. Pant. +1"
	}

	sets.Midcast.Bar = {
		legs = "Piety pantaloons"
	}
end

function is_magic(spell)
	return spell.type:endswith("Magic") or spell.type == "BardSong" or spell.type == "Ninjutsu"
end

function precast(spell, action)
	if "Trust" == spell.type then
		return
	end

	if is_magic(spell) then
		if buffactive.silence then -- Cancel Magic or Ninjutsu or BardSong If You Are Silenced or Out of Range --
			cancel_spell()
			debug(spell.name .. " Canceled: [Silence has fallen]")
			return
		end

		if spell.english:startswith("Cur") and spell.english ~= "Cursna" then
			equip(sets.Precast.Cure)
			debug("Precast: Cure")
			return
		end

		if spell.english:startswith("Bar") then
			equip(sets.Midcast.Bar)
			debug("Midcast: Bar")
			return
		end

		equip(sets.Precast.FastCast)
		debug("Precast: Fast Cast")
	end
end

function midcast(spell, action)
	if "Trust" == spell.type then
		return
	end

	if is_magic(spell) then
		if spell.english == "Cursna" then
			equip(sets.Midcast.Cursna)
			debug("Cursna")
			return
		end

		if spell.english:startswith("Cura") then
			equip(sets.Midcast.Curaga)
			debug("Midcast: Curaga")

			return
		end

		if string.find(spell.english, "Cure") then
			equip(sets.Midcast.Cure)
			debug("Midcast: Cure")
			return
		end

		if string.find(spell.english, "Bar") then
			equip(sets.Midcast.Bar)
			debug("Midcast: Bar")
			return
		end
	end
end

function aftercast(spell, action)
	debug("Idle")
	equip(sets.Idle)
end

function debug(s)
	-- windower.add_to_chat(123, s)
end
