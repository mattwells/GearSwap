spellSets = {}
spellSets.Cure = S{"Cure","Cure II","Cure III","Cure IV","Curaga","Curaga II"}

debug = 0

function get_sets()
	select_default_macro_book()

	sets.aftercast = {}
	sets.aftercast.Refresh = {
		main="Bolelabunga", sub="Sors shield", ammo="Demonry stone",
		head="Vitivation chapeau", neck="Twilight torque", ear1="Psystorm earring", ear2="Lifestorm earring",
		body="Hagondes coat +1", hands="Serpentes cuffs", ring1="Shadow ring", ring2="Dark ring",
		back="Shadow mantle", waist="Fucho-no-obi", legs="Nares trews", feet="Serpentes sabots"
	}
	sets.aftercast.Movement = set_combine(sets.aftercast.Refresh, {legs="Blood cuisses"})

	sets.precast = {}
	sets.precast.FastCast = {
		head="Atrophy chapeau +1", ear1="Loquacious Earring earring",
		body="Vitivation tabard +1",
		back="Swith cape", waist="Witful belt"
	}
	sets.precast.Cure = set_combine(sets.precast.FastCast, {
		sub="Sors shield",
		back="Pahtli cape"
	})

	sets.midcast = {}

	sets.midcast.Cure = {
		main="Tamaxchi", sub="Sors shield",
		head="Vitivation chapeau", neck="Phalaina locket", ear1="Psystorm earring", ear2="Lifestorm earring",
		body="Gendewitha bliaut +1", hands="Serpentes cuffs",
		back="Pahtli cape", waist="Penitent's rope", legs="Atrophy tights +1", feet="Serpentes sabots"
	}

	sets.midcast.Enfeebling = {
		main="Arendsi fleuret",
		ring1="Globidonta ring",
		back="Ghostfyre cape", feet="Umbani boots"
	}

	sets.midcast.Enhancing = {
		ear2="Andoaa earring"
	}

	sets.midcast.Elemental = {}

	sets.midcast.Dark = {}

end

function precast(spell)
	if spellSets.Cure:contains(spell.name) then
		equip(sets.precast.Cure)
		send_command('@input /echo Precast: Cure')
	elseif spell.action_type == 'Magic' then
		equip(sets.precast.FastCast)
		send_command("@input /echo Precast: FastCase")
	end
end

function midcast(spell)
	if spellSets.Cure:contains(spell.name) then
		equip(sets.midcast.Cure)
		send_command('@input /echo Midcast: Cure')
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast_EnfeeblingMagic)
		send_command('@input /echo Midcast: Enfeebling')
	elseif spell.skill == 'Enhancing Magic' then
		equip(sets.midcast.Enhancing)
		send_command('@input /echo Midcast: Enhancing')
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.midcast.Elemental)
		send_command('@input /echo Midcast: Elemental')
	elseif spell.skill == 'Dark Magic' then
		equip(sets.midcast.Dark)
		send_command('@input /echo Midcast: Dark')
	end
end

function aftercast(spell)
	equip(sets.aftercast.Refresh)
	send_command("@input /echo Aftercase: Refresh")
end

function sub_job_change(newSubjob, oldSubjob)
	select_default_macro_book()
end

function select_default_macro_book()
	send_command('@input /macro book 1;wait .1;input /macro set 1')
end
