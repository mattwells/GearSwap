function get_sets()
	sets.Idle = {
		main = "Queller Rod",
		sub = "Sors Shield",
		ammo = "Incantor Stone",
		head = "Inyanga Tiara +2",
		body = "Ebers Bliaud +1",
		hands = "Inyan. Dastanas +2",
		legs = "Assiduity Pants",
		feet = "Inyan. Crackows +1",
        neck = "Cleric's Torque",
		waist = "Cascade Belt",
		left_ear = "Roundel Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Serket Ring",
		right_ring = "Inyanga Ring",
		back={ 
			name="Alaunus's Cape", 
			augments={
				'MND+20',
				'Mag. Acc+20 /Mag. Dmg.+20',
				'MND+5',
				'"Fast Cast"+10',
				'Damage taken-5%',
			}
		},
	}

	sets.JobAbility = {}

	sets.JobAbility.Benediction = {
		body = "Piety Briault +2",
	}

	sets.Precast = {}

	sets.Precast.Haste = {
		head = "Theophany Cap +2",
		body = "Shango Robe",
		hands = "Inyan. Dastanas +2",
		legs = "Chironic Hose",
		feet = "Ebers Duckbills +1",
		waist = "Witful Belt"
	}

	sets.Precast.FastCast = set_combine(
		sets.Precast.Haste,
		{
			ammo = "Incantor Stone",
			body = "Inyanga Jubbah +1",
			ear2 = "Loquac. Earring",
			ring2 = "Prolix Ring",
			neck = "Orison Locket",
			waist = "Witful Belt",
			right_ear = "Loquac. Earring",
			right_ring = "Prolix Ring",
			back = {
				name = "Alaunus's Cape",
				augments = {
					"MND+20", 
					"Mag. Acc+20 /Mag. Dmg.+20", 
					"MND+5", 
					'"Fast Cast"+10', 
					"Damage taken-5%"
				}
			}
		}
	)

	sets.Precast.Cure = set_combine(
		sets.Precast.FastCast,
		{
			main = "Queller Rod",
			sub = "Sors Shield",
			head = "Theophany Cap +2",
			neck = "Cleric's Torque",
			body = "Heka's Kalasiris",
			ear1 = "Nourish. Earring +1",
			legs = "Ebers Pantaloons +1",
			feet = "Cure Clogs",
			back = {
				name = "Alaunus's Cape",
				augments = {
					"MND+20", 
					"Mag. Acc+20 /Mag. Dmg.+20", 
					"MND+5", 
					'"Fast Cast"+10', 
					"Damage taken-5%"
				}
			}
		}
	)

	sets.Midcast = {}

	sets.Midcast.Cure = {
		main = {
			name = "Queller Rod",
			augments = {
				"Healing magic skill +15", 
				'"Cure" potency +10%', 
				'"Cure" spellcasting time -7%'
			}
		},
		sub = "Sors Shield",
		head = "Theophany Cap +2",
		neck = "Cleric's Torque",
		body = "Heka's Kalasiris",
		hands = "Theophany Mitts +2",
		legs = "Ebers Pantaloons +1",
		feet = "Ebers Duckbills +1",
		waist = "Cascade Belt",
		left_ear = "Nourish. Earring +1",
		back = {
			name = "Alaunus's Cape",
			augments = {
				"MND+20", 
				"Eva.+20 /Mag. Eva.+20", 
				"MND+10", 
				'"Cure" potency +10%', 
				"Damage taken-5%"
			}
		}
	}

	sets.Midcast["Divine Veil"] = {
		main = "Yagrush",
	}

	sets.Midcast.Erase = set_combine(
		sets.Midcast["Divine Veil"],
		{
			neck = "Cleric's Torque",
		}
	)

	sets.Midcast.Cursna = set_combine(
		sets.Midcast["Divine Veil"],
		{
			legs = "Theo. Pant. +1",
			waist = "Alaunus's Cape"
		}
	)

	sets.Midcast["Enhancing Magic"] = {
		feet = "Theo. Duckbills +2"
	}

	sets.Midcast["Shellra V"] = set_combine(
		sets.Midcast["Enhancing Magic"],
		{
			legs = "Piety pantaloons +2"
		}
	)

	sets.Midcast.Regen = set_combine(
		sets.Midcast["Enhancing Magic"],
		{
			body = "Piety Briault +2",
			hands = "Ebers Mitts",
			legs = "Theo. Pant. +1"
		}
	)

	sets.Midcast.Bar = set_combine(
		sets.Midcast["Enhancing Magic"],
		{
			legs = "Piety pantaloons +2"
		}
	)

	sets.Midcast.Auspice = set_combine(
		sets.Midcast["Enhancing Magic"],
		{
			feet = "Ebers Duckbills +1",
		}
	)
end

function is_magic(spell)
	return spell.type:endswith("Magic") 
		or spell.type == "BardSong" 
		or spell.type == "Ninjutsu"
		or spell.type == "Trust"
end

function precast(spell, action)
	if is_magic(spell) then
		if buffactive.silence then
			cancel_spell()
			send_command('@input /item "Echo Drops" <me>')
			debug(spell.name .. " Canceled: [Silence has fallen]")
			return
		end

		if spell.english:startswith("Cur") and spell.english ~= "Cursna" then
			equip(sets.Precast.Cure)
			debug("Precast: Cure")
			return
		end
	end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        debug("Precast: " .. spell.type .. " " .. spell.english)

        return
    end
end

function midcast(spell, action)
	if "Trust" == spell.type then
		return
	end

	if is_magic(spell) then
		if sets.Midcast[spell.english] then
			equip(sets.Midcast[spell.english])
			debug("Midcast: " .. spell.english)

			return
		end

		if spell.english:endswith("na") then
			equip(sets.Midcast["Divine Veil"])
			debug("Midcast: Devine Veil")

			return
		end

		if spell.english:startswith("Cura") then
			equip(sets.Midcast.Curaga)
			debug("Midcast: Curaga")

			return
		end

		if spell.english:startswith("Cure") then
			equip(sets.Midcast.Cure)
			debug("Midcast: Cure")

			return
		end

		if spell.english:startswith("Regen") then
			equip(sets.Midcast.Regen)
			debug("Midcast: Regen")

			return
		end

		if spell.english:startswith("Bar") then
			equip(sets.Midcast.Bar)
			debug("Midcast: Bar")

			return
		end

		if sets.Midcast[spell.skill] then
			equip(sets.Midcast[spell.skill])
			debug("Midcast Skill: " .. spell.skill)
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
