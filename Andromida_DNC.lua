function get_sets()
	sets.Idle = {
		ammo = "Yamarang",
		head = "Meghanada Visor +2",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		legs = "Meg. Chausses +2",
		feet = "Tandava Crackows",
		neck = "Twilight Torque",
		waist = "Flume Belt",
		left_ear = "Telos Earring",
		right_ear = "Infused Earring",
		left_ring = "Warden's ring",
		right_ring = "Defending Ring",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Store TP"+10', "System: 1 ID: 1155 Val: 4"}
		}
	}

	DT = false
	sets.PDT = {
		head = "Meghanada Visor +2",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +1",
		neck = "Twilight Torque",
		waist = "Flume Belt",
		left_ring = "Warden's ring",
		right_ring = "Defending Ring",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Store TP"+10', "System: 1 ID: 1155 Val: 4"}
		}
	}

	sets.Engaged = {
		ammo = "Yamarang",
		head = {
			name = "Adhemar Bonnet +1",
			augments = {"DEX+12", "AGI+12", "Accuracy+20"}
		},
		body = {
			name = "Horos Casaque +3",
			augments = {'Enhances "No Foot Rise" effect'}
		},
		hands = {
			name = "Adhemar Wrist. +1",
			augments = {"DEX+12", "AGI+12", "Accuracy+20"}
		},
		legs = "Samnuha Tights",
		feet = "Mummu Gamash. +2",
		neck = "Sanctity Necklace",
		waist = "Windbuffet Belt +1",
		left_ear = "Sherida Earring",
		right_ear = "Telos Earring",
		left_ring = "Ilabrat Ring",
		right_ring = "Petrov Ring",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Store TP"+10', "Phys. dmg. taken-10%"}
		}
	}

	-- JA Sets --
	sets.JobAbility = {}
	sets.JobAbility["Saber Dance"] = {
		legs = "Horos Tights +3"
	}

	sets.JobAbility["Fan Dance"] = {
		hands = "Horos Bangles +1"
	}

	sets.JobAbility["No Foot Rise"] = {
		body = "Horos Casaque +3"
	}

	sets.Jig = {
		legs = "Horos Tights +3",
		feet = "Maxixi Toeshoes +2"
	}

	sets.Flourish = {}
	sets.Flourish["Violent Flourish"] = {
		body = "Horos Casaque +3"
	}

	sets.Flourish2 = {}
	sets.Flourish2["Reverse Flourish"] = {
		hands = "Macu. Bangles +1",
		back = {
			name = "Toetapper Mantle",
			augments = {'"Store TP"+2', '"Rev. Flourish"+29', "Weapon skill damage +1%"}
		}
	}

	sets.Flourish3 = {}

	sets.Waltz = {
		ammo = "Yamarang",
		head = {
			name = "Horos Tiara +1",
			augments = {'Enhances "Trance" effect'}
		},
		body = "Maxixi Casaque +2",
		feet = "Maxixi Toeshoes +2",
		back = {
			name = "Toetapper Mantle",
			augments = {'"Store TP"+2', '"Rev. Flourish"+29', "Weapon skill damage +1%"}
		}
	}

	sets.Samba = {
		head = "Maculele Tiara +1",
		body = "Macu. Casaque +1",
		hands = "Macu. Bangles +1",
		legs = "Maculele Tights +1",
		feet = "Macu. Toeshoes +1"
	}

	sets.Step = {
		head = "Maxixi Tiara +2",
		body = "Horos Casaque +3",
		hands = "Maxixi Bangles +3",
		legs = "Meg. Chausses +2",
		feet = "Horos Toe Shoes +2",
		neck = "Iqabi Necklace",
		waist = "Olseni Belt",
		left_ear = "Zennaroi Earring",
		right_ear = "Heartseeker Earring",
		left_ring = "Ramuh Ring +1",
		right_ring = "Oneiros Ring",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%"}
		}
	}

	-- WS Sets --
	sets.WeaponSkill = {
		ammo = "Jukukik Feather",
		head = "Adhemar Bonnet +1",
		body = {
			name = "Herculean Vest",
			augments = {"Attack+25", "Weapon skill damage +3%", "DEX+12", "Accuracy+11"}
		},
		hands = "Maxixi Bangles +3",
		legs = "Mummu Kecks +2",
		feet = {
			name = "Herculean Boots",
			augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
		},
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Sherida Earring",
		right_ear = {
			name = "Moonshade Earring",
			augments = {"Attack+4", "TP Bonus +25"}
		},
		left_ring = "Ilabrat Ring",
		right_ring = "Ramuh Ring +1",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Store TP"+10', "System: 1 ID: 1155 Val: 4"}
		}
		-- DEX30 Acc/Att DblAtt
	}

	sets.WeaponSkill["Rudra's Storm"] = {
		ammo = "Jukukik Feather",
		head = "Adhemar Bonnet +1",
		body = {
			name = "Herculean Vest",
			augments = {"Attack+25", "Weapon skill damage +3%", "DEX+12", "Accuracy+11"}
		},
		hands = "Maxixi Bangles +3",
		legs = "Horos Tights +3",
		feet = {
			name = "Herculean Boots",
			augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
		},
		neck = "Caro Necklace",
		waist = "Chiner's Belt +1",
		left_ear = "Sherida Earring",
		right_ear = {
			name = "Moonshade Earring",
			augments = {"Attack+4", "TP Bonus +25"}
		},
		left_ring = "Ilabrat Ring",
		right_ring = "Ramuh Ring +1",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%"}
		}
	}
	sets.WeaponSkill["Shark Bite"] = sets.WeaponSkill["Rudra's Storm"]
end

function precast(spell, action)
	if "Trust" == spell.type then
		return
	end

	if spell.english == "Spectral Jig" and buffactive.Sneak then
		cast_delay(0.2)
		send_command("cancel Sneak")
	end

	if "Step" == spell.type then
		local allRecasts = windower.ffxi.get_ability_recasts()
		local prestoCooldown = allRecasts[236]
		local missingEnoughFM = not buffactive["Finishing Move 5"] and not buffactive["Finishing Move (6+)"]

		if prestoCooldown < 1 and missingEnoughFM then
			cast_delay(1.1)
			send_command('@input /ja "Presto" <me>')
		end
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
	return spell.type ~= "JobAbility" and not spell.type:startswith("Flourish")
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
