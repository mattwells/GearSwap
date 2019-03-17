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
		back = "Mecisto. Mantle"
		-- back = {
		-- 	name = "Campestres's Cape",
		-- 	augments = {
		-- 		"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20",
		-- 		"Pet: Attack+10 Pet: Rng.Atk.+10",
		-- 		'Pet: "Regen"+10',
		-- 		"Phys. dmg. taken-10%"
		-- 	}
		-- }
	}

	DT = false
	sets.PDT = sets.Idle

	sets.FastCast = {
		legs = "Lengo Pants",
		right_ear = "Loquac. Earring",
		right_ring = "Prolix Ring",
		back = {
			name = "Campestres's Cape",
			augments = {"Pet: M.Acc.+20 Pet: M.Dmg.+20", "Pet: Mag. Acc.+10", '"Fast Cast"+10'}
		}
	}

	sets.BloodPact = {}
	sets.BloodPact.Magic = {
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
		waist="Kobo Obi",
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

	sets.BloodPact.Physical = {
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
		waist="Kobo Obi",
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

	sets.BloodPact.Hybrid = {
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
		waist="Kobo Obi",
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

	sets.BloodPact.Skill = {
		main = "Gridarvor",
		sub = "Vox Grip",
    	ammo = "Sancus Sachet +1",
		head = "Con. Horn +1",
		body = "Beckoner's Doublet",
		legs = "Beck. Spats +1",
		neck = "Caller's Pendant"
	}

	sets.BloodPactRage = sets.BloodPact.Hybrid

	-- Garuda
	sets.BloodPactRage["Claw"] = sets.BloodPact.Physical
	sets.BloodPactRage["Aero II"] = sets.BloodPact.Magic
	sets.BloodPactRage["Aero IV"] = sets.BloodPact.Magic
	sets.BloodPactRage["Predator Claws"] = sets.BloodPact.Physical
	sets.BloodPactRage["Wind Blade"] = sets.BloodPact.Magic
	-- Ifrit
	sets.BloodPactRage["Punch"] = sets.BloodPact.Physical
	sets.BloodPactRage["Fire II"] = sets.BloodPact.Magic
	sets.BloodPactRage["Burning Strike"] = sets.BloodPact.Magic
	sets.BloodPactRage["Double Punch"] = sets.BloodPact.Physical
	sets.BloodPactRage["Fire IV"] = sets.BloodPact.Magic	
	sets.BloodPactRage["Flaming Crush"] = sets.BloodPact.Hybrid
	sets.BloodPactRage["Meteor Strike"] = sets.BloodPact.Physical
	sets.BloodPactRage["Conflag Strike"] = sets.BloodPact.Physical
	-- Ramuh
	sets.BloodPactRage["Shock Strike"] = sets.BloodPact.Magic
	sets.BloodPactRage["Thunder II"] = sets.BloodPact.Magic
	sets.BloodPactRage["Thunderspark"] = sets.BloodPact.Magic
	sets.BloodPactRage["Thunder IV"] = sets.BloodPact.Magic
	sets.BloodPactRage["Chaotic Strike"] = sets.BloodPact.Physical
	sets.BloodPactRage["Thunderstorm"] = sets.BloodPact.Magic
	sets.BloodPactRage["Volt Strike"] = sets.BloodPact.Magic
	-- Shiva
	sets.BloodPactRage["Axe Kick"] = sets.BloodPact.Physical
	sets.BloodPactRage["Blizzard II"] = sets.BloodPact.Magic
	sets.BloodPactRage["Double Slap"] = sets.BloodPact.Physical
	sets.BloodPactRage["Blizzard IV"] = sets.BloodPact.Magic
	sets.BloodPactRage["Rush"] = sets.BloodPact.Physical
	sets.BloodPactRage["Heavenly Strike"] = sets.BloodPact.Magic

	sets.BloodPactWard = sets.BloodPact.Skill

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

function aftercast(spell, action)
	status_change(player.status)
end

function status_change(new, old)
	if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
		return
	end

	if (sets[new]) then
		equip(sets[new])
	end
end

function status_change_engaged()
	equip(sets.Engaged)

	if DT then
		equip(sets.PDT)
	end
end

function buff_change(name, gain, buff_details)
	debug(name .. " " .. (gain and "on" or "off"))
end

function debug(s)
	send_command("@input /echo " .. s)
end

function self_command(command)
	command = command:lower()

	if "dt" == command then
		DT = not DT

		windower.add_to_chat(123, "DT: " .. (DT and "on" or "off"))

		status_change(player.status, player.status)

		return
	end
end
