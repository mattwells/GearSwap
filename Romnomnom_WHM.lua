function get_sets()
	sets.Idle = {
		main = "Queller Rod",
		sub = "Sors Shield",
		ammo = "Incantor Stone",
		head = "Inyanga Tiara +1",
		body = {
			name = "Gende. Bilaut +1",
			augments = {"Phys. dmg. taken -1%", '"Cure" potency +3%'}
		},
		hands = "Inyan. Dastanas +1",
		legs = "Assiduity Pants",
		feet = "Inyan. Crackows +1",
		neck = "Phalaina Locket",
		waist = "Cascade Belt",
		left_ear = "Roundel Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Serket Ring",
		right_ring = "Prolix Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "MND+10", '"Cure" potency +10%', "Damage taken-3%"}
		}
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

	sets.Precast.Cure = set_combine(
		sets.Precast.FastCast,
		{
			main = "Queller Rod",
			sub = "Sors Shield",
			body = "Heka's Kalasiris",
			ear1 = "Nourish. Earring +1",
			legs = "Ebers Pantaloons",
			feet = "Cure Clogs"
		}
	)

	sets.Midcast = {}

	sets.Midcast.Cure = {
		main = {
			name = "Queller Rod",
			augments = {"Healing magic skill +15", '"Cure" potency +10%', '"Cure" spellcasting time -7%'}
		},
		sub = "Sors Shield",
		head = {name = "Gende. Caubeen +1", augments = {"Phys. dmg. taken -4%", "Song recast delay -1"}},
		body = "Heka's Kalasiris",
		hands = "Augur's Gloves",
		legs = "Ebers Pantaloons",
		feet = "Ebers Duckbills",
		neck = "Colossus's Torque",
		waist = "Cascade Belt",
		left_ear = "Nourish. Earring +1",
		right_ear = "Psystorm Earring",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "MND+10", '"Cure" potency +10%', "Damage taken-3%"}
		}
	}

	sets.Midcast.Bar = {
		legs = "Piety pantaloons"
	}
end

function precast(spell, action)
	if spell.type:endswith("Magic") or spell.type == "BardSong" or spell.type == "Ninjutsu" then
		if buffactive.silence then -- Cancel Magic or Ninjutsu or BardSong If You Are Silenced or Out of Range --
			cancel_spell()
			debug(spell.name .. " Canceled: [Silence has fallen]")
			return
		else
			if string.find(spell.english, "Cur") and spell.english ~= "Cursna" then
				equip(sets.Precast.Cure)
				debug("Precast: Cure")
			elseif string.find(spell.english, "Bar") then
				equip(sets.Midcast.Bar)
				debug("Midcast: Bar")
			else
				equip(sets.Precast.FastCast)
				debug("Precast: Fast Cast")
			end
		end
	end
end

function midcast(spell, action)
	if spell.type:endswith("Magic") or spell.type == "Ninjutsu" or spell.type == "BardSong" then
		if string.find(spell.english, "Cure") then
			equip(sets.Midcast.Cure)
			debug("Midcast: Cure")
		elseif string.find(spell.english, "Cura") then
			equip(sets.Midcast.Curaga)
			debug("Midcast: Curaga")
		elseif string.find(spell.english, "Bar") then
			equip(sets.Midcast.Bar)
			debug("Midcast: Bar")
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
