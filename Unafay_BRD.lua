function get_sets()
	debug('Rommi Scripts')
	-- Idle Sets --
	sets.Idle = {
			main="Terra's Staff",
			sub="Achaq grip",
			head="Bihu roundlet +1",
			neck="Twilight Torque",
			ear1="Loquac. Earring",
			ear2="Aoidos' Earring",
			body="Bihu justaucorps +1",
			hands="Marduk's dastanas +1",
			ring1="Patricius Ring",
			ring2="Sangoma ring",
			back="Kumbira cape",
			waist="Ovate rope",
			legs="Bihu cannions +1",
			feet="Aoidos' Cothrn. +2"}

	sets.Resting = set_combine(sets.Idle,{})

	-- JA Sets --
	sets.JA = {}
	sets.JA.Nightingale = {feet="Brd. Slippers +2"}
	sets.JA.Troubadour = {body="Bard's Justaucorps +2"}
	sets.JA["Soul Voice"] = {legs="Brd. Cannions +2"}

	-- Song Precast Set --
	sets.Precast = {}
	sets.Precast.SongCast = {
			main="Felibre's dague",
			head="Aoidos' Calot +2",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Aoidos' Earring",
			body="Sha'ir Manteel",
			hands="Marduk's dastanas +1",
			ring1="Prolix Ring",
			ring2="Dawnsoul ring",
			back="Swith Cape +1",
			waist="Witful Belt",
			legs="Gendewitha Spats",
			feet="Bard Slippers +2"}

	-- Fastcast Set --
	sets.Precast.FastCast = {
			main="Felibre's dague",
			head="Nahtirah Hat",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			body="Vanir Cotehardie",
			hands="Gendewitha Gages +1",
			ring1="Prolix Ring",
			back="Swith Cape +1",
			waist="Witful Belt",
			legs="Artsieq hose",
			feet="Chelona Boots"}

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
			feet="Chelona Boots"}
	
	sets.Midcast = {}
	
	-- Song Debuff Set --
	sets.Midcast.Wind ={
			main="Twebuliij",
			sub ="Mephitis grip",
			range="Gjallarhorn",
			head="Brioso Roundlet +1",
			neck="Piper's Torque",
			ear1="Gwati earring",
			ear2="Musical earring",
			body="Brioso Just. +1",
			hands="Brioso cuffs +1",
			ring1="Perception Ring",
			ring2="Sangoma Ring",
			back="Rhapsode's Cape",
			waist="Ovate rope",
			legs="Bihu Cannions +1",
			feet="Bokwus Boots"}

			-- Song Buff Set --
	sets.Midcast.WindBuff = {
			main="Carnwenhan",
			range="",
			head="Aoidos' Calot +2",
			neck="Aoidos' Matinee",
			ear1="Musical Earring",
			ear2="Aoidos' Earring",
			body="Aoidos' Hngrln. +2",
			hands="Ad. Mnchtte. +2",
			ring1="Demonsoul ring",
			back="Kumbira cape",
			waist="Ovate rope",
			legs="Mdk. Shalwar +1",
			feet="Brioso Slippers +1"}

	sets.Midcast.March = {hands="Ad. Mnchtte. +2"}
	sets.Midcast.Minuet = {body="Aoidos' Hngrln. +2"}
	sets.Midcast.Madrigal = {head="Aoidos' Calot +2"}
	sets.Midcast.Ballad = {legs="Aoidos' Rhing. +2"}
	sets.Midcast.Scherzo = {feet="Aoidos' Cothrn. +2"}
	sets.Midcast.Mazurka = {head="Nahtirah Hat"}
	sets.Midcast.Paeon = {head="Brioso Roundlet +1"}
	sets.Midcast.Finale = {}
	sets.Midcast.Lullaby = {hands= "Brioso cuffs +1"}

	-- Cure Set --
	sets.Midcast.Cure = {
			main="Arka IV",
			sub="Achaq grip",
			head="Gendewitha caubeen +1",
			neck="Colossus's torque",
			ear1="Loquac. Earring",
			ear2="Beatific earring",
			body="Hedera Cotehardie",
			hands="Bokwus gloves",
			ring1="Ephedra ring",
			ring2="Sirona's ring",
			back="Pahtli cape",
			waist="Cascade belt",
			legs="Artsieq hose",
			feet="Chelona Boots"}

	-- Curaga Set --
	sets.Midcast.Curaga = {
			main="",
			sub="Genbu's Shield",
			ammo="Oreiad's Tathlum",
			head="Gende. Caubeen",
			neck="Nuna Gorget +1",
			ear1="Lifestorm Earring",
			ear2="Loquac. Earring",
			body="Heka's Kalasiris",
			hands="Gendewitha Gages",
			ring1="Aquasoul Ring",
			ring2="Karka Ring",
			back="Pahtli Cape",
			waist="Pythia Sash +1",
			legs="Gendewitha Spats",
			feet="Gende. Galoshes"}

	-- Haste Set --
	sets.Midcast.Haste = set_combine(sets.Precast.FastCast,{
			head="Nahtirah Hat",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			body="Hedera Cotehardie",
			hands="Gendewitha Gages",
			ring1="Prolix Ring",
			ring2="Veneficium Ring",
			back="Swith Cape +1",
			waist="Pya'ekue Belt",
			legs="Brioso Cann. +1",
			feet="Brioso Slippers +1"})

	-- Cursna Set --
	sets.Midcast.Cursna = set_combine(sets.Midcast.Haste,{
			ring1="Ephedra ring",
			neck="Malison medallion",
			feet="Gende. Galoshes"})

	-- Stoneskin Set --
	sets.Midcast.Stoneskin = set_combine(sets.Midcast.Haste)
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

function midcast(spell,action)
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
	end
end

song_set_names = {'Finale', 'Lullaby', 'March', 'Minuet', 'Madrigal', 'Ballad', 'Scherzo', 'Mazurka', 'Paeon'}
function song_equip(spell)
	if spell.target.type == 'MONSTER' then
		equip(sets.Midcast.Wind)
		debug('Midcast: Wind')
	else
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