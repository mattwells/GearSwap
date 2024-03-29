function get_sets()
	sets.Idle = {
		main = "Gridarvor",
		sub = "Elan Strap +1",
    	ammo = "Sancus Sachet +1",
		head = "Con. Horn +1",
		body = {
			name = "Apo. Dalmatica +1",
			augments = {"MP+80", 'Pet: "Mag.Atk.Bns."+35', "Blood Pact Dmg.+8"}
		},
		hands = {
			name = "Merlinic Dastanas",
			augments = {
				'Pet: Mag. Acc.+23 Pet: "Mag.Atk.Bns."+23',
				"Pet: Phys. dmg. taken -1%",
				"Pet: DEX+6",
				"Pet: Mag. Acc.+6",
				'Pet: "Mag.Atk.Bns."+12'
			}
		},
		legs = {
			name = "Apogee Slacks +1",
			augments = {"Pet: STR+20", "Blood Pact Dmg.+14", 'Pet: "Dbl. Atk."+4'}
		},
		feet = "Con. Pigaches",
		neck = "Caller's Pendant",
		waist = "Flax Sash",
		left_ear = "Gwati Earring",
		right_ear = "Enmerkar Earring",
		left_ring = "Defending Ring",
		right_ring = "Warden's Ring",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20",
				"Pet: Attack+10 Pet: Rng.Atk.+10",
				'Pet: "Regen"+10',
				"Phys. dmg. taken-10%"
			}
		}
	}

	DT = false
	sets.PDT = set_combine(sets.Idle, {})

	sets.FastCast = {
		legs = "Lengo Pants",
		right_ear = "Loquac. Earring",
		right_ring = "Prolix Ring",
		back = {
			name = "Campestres's Cape",
			augments = {"Pet: M.Acc.+20 Pet: M.Dmg.+20", "Pet: Mag. Acc.+10", '"Fast Cast"+10'}
		}
	}

	sets.BloodPactRage = {
		head="Con. Horn +1",
		body="Con. Doublet +2",
		hands="Glyphic Bracers +2",
		feet="Glyph. Pigaches +2",
	}
	sets.BloodPactWard = set_combine(sets.BloodPactRage, {})

	sets.Pet = {}
	sets.Pet.BloodPact = {}
	sets.Pet.BloodPact.Magic = {
		main={
			name="Keraunos",
			augments={
				'Pet: "Mag.Atk.Bns."+19',
				'"Elemental Siphon"+25',
				'MP+62',
			}
		},
		sub="Elan Strap +1",
		ammo="Sancus Sachet +1",
		head={
			name="Apogee Crown +1",
			augments={
				'MP+80',
				'Pet: "Mag.Atk.Bns."+35',
				'Blood Pact Dmg.+8',
			}
		},
		body={
			name="Apo. Dalmatica +1",
			augments={
				'MP+80',
				'Pet: "Mag.Atk.Bns."+35',
				'Blood Pact Dmg.+8',
			}
		},
		hands={
			name="Merlinic Dastanas",
			augments={
				'Pet: Mag. Acc.+23 Pet: "Mag.Atk.Bns."+23',
				'Pet: Phys. dmg. taken -1%',
				'Pet: DEX+6',
				'Pet: Mag. Acc.+6',
				'Pet: "Mag.Atk.Bns."+12',}
			},
		legs="Beck. Spats +1",
		feet={
			name="Apogee Pumps +1",
			augments={
				'MP+80',
				'Pet: "Mag.Atk.Bns."+35',
				'Blood Pact Dmg.+8',
			}
		},
		neck="Smn. Collar +1",
    	waist="Incarnation Sash",
		left_ear="Gelos Earring",
		right_ear="Enmerkar Earring",
		left_ring="Varar Ring +1",
		right_ring="Varar Ring +1",
		back={
			name="Campestres's Cape",
			augments={
				'Pet: M.Acc.+20 Pet: M.Dmg.+20',
				'Pet: Mag. Acc.+10',
				'"Fast Cast"+10',
			}
		},
	}

	sets.Pet.BloodPact.Merit = set_combine(
		sets.Pet.BloodPact.Magic,
		{legs = "Enticer's Pants"}
	)

	sets.Pet.BloodPact.Physical = {
		main="Was",
		sub="Elan Strap +1",
		ammo="Sancus Sachet +1",
		head="Helios Band",
		body="Con. Doublet +2",
		hands={
			name="Merlinic Dastanas",
			augments={
				'Pet: Attack+18 Pet: Rng.Atk.+18',
				'Blood Pact Dmg.+8',
				'Pet: STR+10',
			}
		},
		legs={
			name="Apogee Slacks +1",
			augments={
				'Pet: STR+20',
				'Blood Pact Dmg.+14',
				'Pet: "Dbl. Atk."+4',
			}
		},
		feet="Helios Boots",
		neck="Smn. Collar +1",
    	waist="Incarnation Sash",
		left_ear="Gelos Earring",
		right_ear="Enmerkar Earring",
		left_ring="Varar Ring +1",
		right_ring="Varar Ring +1",
		back={
			name="Campestres's Cape",
			augments={
				'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20',
				'Pet: Attack+10 Pet: Rng.Atk.+10',
				'Pet: "Regen"+10',
				'Phys. dmg. taken-10%',
			}
		},
	}

	sets.Pet.BloodPact.Hybrid = {
		main={
			name="Gridarvor",
			augments={
				'Pet: Accuracy+70',
				'Pet: Attack+70',
				'Pet: "Dbl. Atk."+15',
			}
		},
		sub="Elan Strap +1",
		ammo="Sancus Sachet +1",
		head={
			name="Apogee Crown +1",
			augments={
				'MP+80',
				'Pet: "Mag.Atk.Bns."+35',
				'Blood Pact Dmg.+8',
			}
		},
		body="Con. Doublet +2",
		hands={
			name="Merlinic Dastanas",
			augments={
				'Pet: Attack+18 Pet: Rng.Atk.+18',
				'Blood Pact Dmg.+8','Pet: STR+10',
			}
		},
		legs={
			name="Apogee Slacks +1",
			augments={
				'Pet: STR+20',
				'Blood Pact Dmg.+14',
				'Pet: "Dbl. Atk."+4',
			}
		},
		feet={
			name="Apogee Pumps +1",
			augments={
				'MP+80',
				'Pet: "Mag.Atk.Bns."+35',
				'Blood Pact Dmg.+8',
			}
		},
		neck="Smn. Collar +1",
    	waist="Incarnation Sash",
		left_ear="Gelos Earring",
		right_ear="Enmerkar Earring",
		left_ring="Varar Ring +1",
		right_ring="Varar Ring +1",
		back={
			name="Campestres's Cape",
			augments={
				'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20',
				'Pet: Attack+10 Pet: Rng.Atk.+10',
				'Pet: "Regen"+10','Phys. dmg. taken-10%',
			}
		},
	}

	sets.Pet.BloodPact.Skill = {
		sub="Vox Grip",
		ammo="Sancus Sachet +1",
		head="Con. Horn +1",
		body="Beckoner's Doublet",
		hands="Glyphic Bracers +2",
		legs="Beck. Spats +1",
		neck="Caller's Pendant",
		waist="Kobo Obi",
		left_ear="Andoaa Earring",
		left_ring="Globidonta Ring",
		back="Conveyance Cape",
	}

	sets.Pet.BloodPactRage = set_combine(sets.Pet.BloodPact.Hybrid, {})

	-- Garuda
	sets.Pet.BloodPactRage["Claw"] = set_combine(sets.Pet.BloodPact.Physical, {})
	sets.Pet.BloodPactRage["Aero II"] = set_combine(sets.Pet.BloodPact.Magic, {})
	sets.Pet.BloodPactRage["Aero IV"] = set_combine(sets.Pet.BloodPact.Magic, {})
	sets.Pet.BloodPactRage["Predator Claws"] = set_combine(sets.Pet.BloodPact.Physical, {})
	-- Ifrit
	sets.Pet.BloodPactRage["Punch"] = set_combine(sets.Pet.BloodPact.Physical, {})
	sets.Pet.BloodPactRage["Fire II"] = set_combine(sets.Pet.BloodPact.Magic, {})
	sets.Pet.BloodPactRage["Burning Strike"] = set_combine(sets.Pet.BloodPact.Magic, {})
	sets.Pet.BloodPactRage["Double Punch"] = set_combine(sets.Pet.BloodPact.Physical, {})
	sets.Pet.BloodPactRage["Fire IV"] = set_combine(sets.Pet.BloodPact.Magic, {})
	sets.Pet.BloodPactRage["Flaming Crush"] = sets.Pet.BloodPact.Hybrid
	sets.Pet.BloodPactRage["Conflag Strike"] = set_combine(sets.Pet.BloodPact.Physical, {})
	-- Ramuh
	sets.Pet.BloodPactRage["Shock Strike"] = set_combine(sets.Pet.BloodPact.Magic, {})
	sets.Pet.BloodPactRage["Thunder II"] = set_combine(sets.Pet.BloodPact.Magic, {})
	sets.Pet.BloodPactRage["Thunderspark"] = set_combine(sets.Pet.BloodPact.Magic, {})
	sets.Pet.BloodPactRage["Thunder IV"] = set_combine(sets.Pet.BloodPact.Magic, {})
	sets.Pet.BloodPactRage["Chaotic Strike"] = set_combine(sets.Pet.BloodPact.Physical, {})
	sets.Pet.BloodPactRage["Volt Strike"] = set_combine(sets.Pet.BloodPact.Magic, {})
	-- Shiva
	sets.Pet.BloodPactRage["Axe Kick"] = set_combine(sets.Pet.BloodPact.Physical, {})
	sets.Pet.BloodPactRage["Blizzard II"] = set_combine(sets.Pet.BloodPact.Magic, {})
	sets.Pet.BloodPactRage["Double Slap"] = set_combine(sets.Pet.BloodPact.Physical, {})
	sets.Pet.BloodPactRage["Blizzard IV"] = set_combine(sets.Pet.BloodPact.Magic, {})
	sets.Pet.BloodPactRage["Rush"] = set_combine(sets.Pet.BloodPact.Physical, {})

	-- Meritted
	sets.Pet.BloodPactRage["Meteor Strike"] = set_combine(sets.Pet.BloodPact.Merit, {})
	sets.Pet.BloodPactRage["Geocrush"] = set_combine(sets.Pet.BloodPact.Merit, {})
	sets.Pet.BloodPactRage["Grand Fall"] = set_combine(sets.Pet.BloodPact.Merit, {})
	sets.Pet.BloodPactRage["Wind Blade"] = set_combine(sets.Pet.BloodPact.Merit, {})
	sets.Pet.BloodPactRage["Heavenly Strike"] = set_combine(sets.Pet.BloodPact.Merit, {})
	sets.Pet.BloodPactRage["Thunderstorm"] = set_combine(sets.Pet.BloodPact.Merit, {})

	sets.Pet.BloodPactWard = set_combine(sets.Pet.BloodPact.Skill, {})

	sets.SummonerPact = {}

	-- JA Sets --
	sets.JobAbility = {}
	sets.JobAbility["Elemental Siphon"] = {
		sub="Vox Grip",
		head="Con. Horn +1",
		body="Beckoner's Doublet",
		hands="Summoner's Brcr.",
		legs="Beck. Spats +1",
		feet="Caller's Pgch. +1",
		neck="Caller's Pendant",
		waist="Kobo Obi",
		left_ring="Globidonta Ring",
	}
end

function precast(spell, action)
	if (buffactive["Apogee"] or buffactive["Astral Conduit"]) and spell.type:startswith("BloodPact")  then
		pet_midcast(spell)
		return
	end

	if "Trust" == spell.type then
		equip(sets.FastCast)
		return
	end

	if spell.english == "Spectral Jig" and buffactive.Sneak then
		cast_delay(0.2)
		send_command("cancel Sneak")
	end

	if sets[spell.type] and sets[spell.type][spell.english] then
		equip(sets[spell.type][spell.english])

		debug(spell.type .. " " .. spell.english)

		return
	end

	if ignore_spell_type(spell) and sets[spell.type] then
		equip(sets[spell.type])

		debug(spell.type)

		return
	end

	debug("No set for " .. spell.type .. "." .. spell.english)
end

function ignore_spell_type(spell)
	return spell.type ~= "JobAbility"
end

function aftercast(spell)
	if (buffactive["Apogee"] or buffactive["Astral Conduit"]) and spell.type:startswith("BloodPact")  then
		pet_midcast(spell)
		return
	end
	
	status_change(player.status)
end

function pet_midcast(spell)
	equip(sets.Pet[spell.type][spell.english])
end

function pet_aftercast(spell)
	aftercast(spell)
end

function status_change(new, old)
	if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
		return
	end

	if (sets[new]) then
		equip(sets[new])
	end
end

function debug(s)
	send_command("@input /echo " .. s)
end
