-- *** Credit goes to Flippant & Martel for helping me with this Gearswap *** --
-- ** I Use Some of Motenten's Functions ** --
-- Last Updated: 05/03/14 7:30 AM *Changed HB Rule* --

function get_sets()
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. First Set Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below. Most of These Sets Are Empty So You Need To Edit Them On Your Own. Remember To Check What The Combined Set Is For Each Sets. --
	AttIndex = 1
	AttArray = {"LowATT","HighATT","LowContent"} -- LowATT Is The Same As LowACC Set. MidACC & HighACC Take Priority Over These 2 Sets(HighATT & LowContent). --
	IdleIndex = 1
	IdleArray = {"Movement","Regen"} -- Default Idle Set Is Movement --
	Armor = 'None'
	Twilight = 'None'
	Rancor = 'ON' -- Set Default Rancor ON or OFF Here --
	Brais = 'ON' -- Set Default Brais ON or OFF Here --
	Samurai_Roll = 'ON' -- Set Default SAM Roll ON or OFF Here --
	target_distance = 5 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --

	NM_For_Brais = S{} -- Add More NM Here For High Jump --

	HB_Mage_SubJob = S{"WHM","RDM","BLM","BLU","SCH"} -- 50% Healing Breath Trigger SubJob --
	HB_DD_SubJob = S{"PLD","DRK","BRD","NIN"} -- 33% Healing Breath Trigger SubJob --
	sc_map = {SC1="Drakesbane", SC2="SpiritJump", SC3="SoulJump"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	sets.Idle = {}
	-- Idle/Town Sets --
	sets.Idle.Regen = {
		ammo="Ginsen",
		head="Twilight Helm", neck="Wiglen Gorget", ear1="Black Earring", ear2="Dawn Earring",
		body="Kumarbi's Akar", hands="Lncr. Vmbrc. +2", ring1="K'ayres Ring", ring2="Rajas Ring",
		back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Blood Cuisses", feet="Mikinaak Greaves"
	}
	sets.Idle.Movement = set_combine(sets.Idle.Regen,{
		head="Otomi Helm",
		neck="Ganesha's Mala", ear1="Trux Earring", ear2="Brutal Earring",
		body="Lncr. Plackart +2", ring1="Patricius Ring", ring2="Defending Ring"
	})

	sets.Twilight = {head="Twilight Helm",body="Twilight Mail"}

	-- TP Base Set --
	sets.TP = {}

	-- Ryunohige(AM3 Down) TP Sets --
	sets.TP.Ryunohige = {
		main="Ryunohige", sub="Bloodrain Strap", ammo="Ginsen",
		head="Otomi Helm", neck="Ganesha's Mala", ear1="Tripudio Earring", ear2="Brutal Earring",
		body="Xaddi Mail", hands="Cizin Mufflers +1", ring1="K'ayres Ring", ring2="Rajas Ring",
		back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Xaddi Cuisses", feet="Mikinaak Greaves"
	}
	sets.TP.Ryunohige.MidACC = set_combine(sets.TP.Ryunohige,{
		neck="Iqabi necklace",
		body="Xaddi Mail", hands="Xaddi Gauntlets",
		-- back="Letalis Mantle",
		waist="Goading Belt", legs="Xaddi Cuisses"
	})
	sets.TP.Ryunohige.HighACC = set_combine(sets.TP.Ryunohige.MidACC,{
		ear1="Tripudio Earring", ear2="Steelflash Earring",
		-- ring1="Mars's Ring",
		waist="Dynamic Belt", -- +1", feet="Xaddi Boots"
	})

	-- Ryunohige(AM3 Up) TP Sets --
	sets.TP.Ryunohige.AM3 = set_combine(sets.TP.Ryunohige,{
		main="Ryunohige", sub="Bloodrain Strap", ammo="Ginsen",
		head="Yaoyotl Helm", neck="Ganesha's Mala", ear1="Tripudio Earring", ear2="Brutal Earring",
		body="Xaddi Mail", hands="Cizin Mufflers +1", ring1="K'ayres Ring", ring2="Rajas Ring",
		back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Xaddi Cuisses", feet="Mikinaak Greaves"
	})
	sets.TP.Ryunohige.MidACC.AM3 = set_combine(sets.TP.Ryunohige.AM3,{
		body="Xaddi Mail", hands="Xaddi Gauntlets",
		-- back="Letalis Mantle",
		legs="Xaddi Cuisses", feet="Mikinaak Greaves"
	})
	sets.TP.Ryunohige.HighACC.AM3 = set_combine(sets.TP.Ryunohige.MidACC.AM3,{
		neck="Iqabi necklace", ear2="Steelflash Earring",
		-- ring1="Mars's Ring",
		waist="Dynamic Belt", -- +1", feet="Xaddi Boots"
	})

	-- Ryunohige(AM3 Down: Ionis) TP Sets --
	sets.TP.Ryunohige.Ionis = set_combine(sets.TP.Ryunohige,{})
	sets.TP.Ryunohige.MidACC.Ionis = set_combine(sets.TP.Ryunohige.Ionis,{})
	sets.TP.Ryunohige.HighACC.Ionis = set_combine(sets.TP.Ryunohige.MidACC.Ionis,{})

	-- Ryunohige(AM3 Up: Ionis) TP Sets --
	sets.TP.Ryunohige.AM3.Ionis = set_combine(sets.TP.Ryunohige.AM3,{})
	sets.TP.Ryunohige.MidACC.AM3.Ionis = set_combine(sets.TP.Ryunohige.AM3.Ionis,{})
	sets.TP.Ryunohige.HighACC.AM3.Ionis = set_combine(sets.TP.Ryunohige.MidACC.AM3.Ionis,{})

	-- Ryunohige(AM3 Down: SAM Roll) TP Sets --
	sets.TP.Ryunohige.STP = set_combine(sets.TP.Ryunohige,{})
	sets.TP.Ryunohige.MidACC.STP = set_combine(sets.TP.Ryunohige.STP,{})
	sets.TP.Ryunohige.HighACC.STP = set_combine(sets.TP.Ryunohige.MidACC.STP,{})

	-- Ryunohige(AM3 Up: SAM Roll) TP Sets --
	sets.TP.Ryunohige.AM3.STP =  set_combine(sets.TP.Ryunohige.AM3,{})
	sets.TP.Ryunohige.MidACC.AM3.STP = set_combine(sets.TP.Ryunohige.AM3.STP,{})
	sets.TP.Ryunohige.HighACC.AM3.STP = set_combine(sets.TP.Ryunohige.MidACC.AM3.STP,{})

	-- Ryunohige(AM3 Down: Ionis + SAM Roll) TP Sets --
	sets.TP.Ryunohige.Ionis.STP =  set_combine(sets.TP.Ryunohige.Ionis,{})
	sets.TP.Ryunohige.MidACC.Ionis.STP = set_combine(sets.TP.Ryunohige.Ionis.STP,{})
	sets.TP.Ryunohige.HighACC.Ionis.STP = set_combine(sets.TP.Ryunohige.MidACC.Ionis.STP,{})

	-- Ryunohige(AM3 Up: Ionis + SAM Roll) TP Sets --
	sets.TP.Ryunohige.AM3.Ionis.STP =  set_combine(sets.TP.Ryunohige.AM3.Ionis,{})
	sets.TP.Ryunohige.MidACC.AM3.Ionis.STP = set_combine(sets.TP.Ryunohige.AM3.Ionis.STP,{})
	sets.TP.Ryunohige.HighACC.AM3.Ionis.STP = set_combine(sets.TP.Ryunohige.MidACC.AM3.Ionis.STP,{})

	-- Gungnir TP Sets --
	sets.TP.Gungnir = {
		main="Gungnir", sub="Bloodrain Strap", ammo="Ginsen",
		head="Otomi Helm", neck="Ganesha's Mala", ear1="Tripudio Earring", ear2="Brutal Earring",
		body="Xaddi Mail", hands="Cizin Mufflers +1", ring1="K'ayres Ring", ring2="Rajas Ring",
		back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Xaddi Cuisses", feet="Mikinaak Greaves"
	}
	sets.TP.Gungnir.MidACC = set_combine(sets.TP.Gungnir,{})
	sets.TP.Gungnir.HighACC = set_combine(sets.TP.Gungnir.MidACC,{})

	-- Gungnir(Ionis) TP Sets --
	sets.TP.Gungnir.Ionis = set_combine(sets.TP.Gungnir,{})
	sets.TP.Gungnir.MidACC.Ionis = set_combine(sets.TP.Gungnir.Ionis,{})
	sets.TP.Gungnir.HighACC.Ionis = set_combine(sets.TP.Gungnir.MidACC.Ionis,{})

	-- Gungnir(SAM Roll) TP Sets --
	sets.TP.Gungnir.STP = set_combine(sets.TP.Gungnir,{})
	sets.TP.Gungnir.MidACC.STP = set_combine(sets.TP.Gungnir.MidACC,{})
	sets.TP.Gungnir.HighACC.STP = set_combine(sets.TP.Gungnir.HighACC,{})

	-- Gungnir(Ionis + SAM Roll) TP Sets --
	sets.TP.Gungnir.Ionis.STP = set_combine(sets.TP.Gungnir.Ionis,{})
	sets.TP.Gungnir.MidACC.Ionis.STP = set_combine(sets.TP.Gungnir.Ionis.STP,{})
	sets.TP.Gungnir.HighACC.Ionis.STP = set_combine(sets.TP.Gungnir.MidACC.Ionis.STP,{})

	-- Rhongomiant TP Sets --
	sets.TP.Rhongomiant = {}
	sets.TP.Rhongomiant.MidACC = set_combine(sets.TP.Rhongomiant,{})
	sets.TP.Rhongomiant.HighACC = set_combine(sets.TP.Rhongomiant.MidACC,{})

	-- Rhongomiant(Ionis) TP Sets --
	sets.TP.Rhongomiant.Ionis = set_combine(sets.TP.Rhongomiant,{})
	sets.TP.Rhongomiant.MidACC.Ionis = set_combine(sets.TP.Rhongomiant.Ionis,{})
	sets.TP.Rhongomiant.HighACC.Ionis = set_combine(sets.TP.Rhongomiant.MidACC.Ionis,{})

	-- Rhongomiant(SAM Roll) TP Sets --
	sets.TP.Rhongomiant.STP = set_combine(sets.TP.Rhongomiant,{})
	sets.TP.Rhongomiant.MidACC.STP = set_combine(sets.TP.Rhongomiant.MidACC,{})
	sets.TP.Rhongomiant.HighACC.STP = set_combine(sets.TP.Rhongomiant.HighACC,{})

	-- Rhongomiant(Ionis + SAM Roll) TP Sets --
	sets.TP.Rhongomiant.Ionis.STP = set_combine(sets.TP.Rhongomiant.Ionis,{})
	sets.TP.Rhongomiant.MidACC.Ionis.STP = set_combine(sets.TP.Rhongomiant.Ionis.STP,{})
	sets.TP.Rhongomiant.HighACC.Ionis.STP = set_combine(sets.TP.Rhongomiant.MidACC.Ionis.STP,{})

	-- Upukirex TP Sets --
	sets.TP.Upukirex = {}
	sets.TP.Upukirex.MidACC = set_combine(sets.TP.Upukirex,{})
	sets.TP.Upukirex.HighACC = set_combine(sets.TP.Upukirex.MidACC,{})

	-- Upukirex(Ionis) TP Sets --
	sets.TP.Upukirex.Ionis = set_combine(sets.TP.Upukirex,{})
	sets.TP.Upukirex.MidACC.Ionis = set_combine(sets.TP.Upukirex.Ionis,{})
	sets.TP.Upukirex.HighACC.Ionis = set_combine(sets.TP.Upukirex.MidACC.Ionis,{})

	-- Upukirex(SAM Roll) TP Sets --
	sets.TP.Upukirex.STP = set_combine(sets.TP.Upukirex,{})
	sets.TP.Upukirex.MidACC.STP = set_combine(sets.TP.Upukirex.MidACC,{})
	sets.TP.Upukirex.HighACC.STP = set_combine(sets.TP.Upukirex.HighACC,{})

	-- Upukirex(Ionis + SAM Roll) TP Sets --
	sets.TP.Upukirex.Ionis.STP = set_combine(sets.TP.Upukirex.Ionis,{})
	sets.TP.Upukirex.MidACC.Ionis.STP = set_combine(sets.TP.Upukirex.Ionis.STP,{})
	sets.TP.Upukirex.HighACC.Ionis.STP = set_combine(sets.TP.Upukirex.MidACC.Ionis.STP,{})

	-- AM3 Rancor ON Mantle --
	sets.TP.Rancor = {back="Rancorous Mantle"}

	-- PDT/MDT Sets --
	sets.PDT = set_combine(sets.TP.Ryunohige, {
		head="Ogier's helm", neck="Twilight Torque", --ear1="Black Earring", ear2="Darkness Earring",
		body="Cizin Mail +1", hands="Cizin Mufflers +1", ring1="Dark Ring", ring2="Shadow ring",
		back="Mollusca Mantle", waist="Flume belt", --legs="Cizin Breeches +1",
		feet="Phorcys Schuhs"
	})

	sets.MDT = set_combine(sets.PDT,{
		ammo="Demonry Stone",
		head="Ogier's Helm", ear1="Merman's Earring", ear2="Sanare Earring",
	 	body="Nocturnus Mail", ring1="Shadow Ring",
	 	back="Engulfer Cape", waist="Resolute Belt"
	})

	-- Hybrid Sets --
	sets.TP.Hybrid = set_combine(sets.PDT,{
		ammo="Ginsen",
		head="Otomi Helm", ear1="Steelflash Earring", ear2="Bladeborn Earring",
		body="Xaddi Mail", hands="Xaddi Gauntlets", ring1="Patricius Ring",
		waist="Goading Belt", feet="Huginn Gambieras"
	})
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})


	-- WS Base Set --
	sets.WS = {}

	-- WS Sets --
	sets.WS.Drakesbane = {
		ammo="Thew Bomblet",
		head="Otomi Helm", neck="Light Gorget", ear1="Moonshade Earring", ear2="Brutal Earring",
		body="Cizin Mail +1", hands="Mikinaak gauntlets", ring1="Ifrit Ring", ring2="Ifrit Ring",
		back="Rancorous Mantle", waist="Metalsinger belt", legs="Lncr. Cuissots +2", feet="Phorcys Schuhs"
	}
	sets.WS.Drakesbane.MidACC = set_combine(sets.WS.Drakesbane, {body="Cizin Mail +1"})
	sets.WS.Drakesbane.HighACC = set_combine(sets.WS.Drakesbane.MidACC,{
		ammo="Ginsen",
		legs="Miki. Cuisses", feet="Xaddi Boots"
	})

	-- Drakesbane(Low Level Content) Set --
	sets.WS.Drakesbane.LowContent = set_combine(sets.WS.Drakesbane,{
		neck="Ganesha's Mala",
		body="Vishap Mail",
		waist="Windbuffet Belt +1"
	})
	-- Drakesbane(High Attack) Set --
	sets.WS.Drakesbane.HighATT = set_combine(sets.WS.Drakesbane,{
		ammo="Ginsen",
		head="Yaoyotl Helm", neck="Justiciar's Torque",
		body="Miki. Breastplate",
		waist="Prosilio Belt"
	})

	sets.WS.Stardiver = {
		ammo="Thew Bomblet",
		head="Otomi Helm", neck="Shadow Gorget", ear1="Moonshade Earring", ear2="Brutal Earring",
		body="Cizin Mail +1", hands="Mikinaak gauntlets", ring1="Ifrit Ring", ring2="Ifrit Ring",
		back="Atheling Mantle", waist="Shadow Belt", legs="Scuffler's Cosciales", feet="Ejekamal Boots"
	}
	sets.WS.Stardiver.MidACC = set_combine(sets.WS.Stardiver,{
		ammo="Ginsen",
		legs="Xaddi Cuisses", feet="Xaddi Boots"
	})
	sets.WS.Stardiver.HighACC = set_combine(sets.WS.Stardiver.MidACC,{})

	-- Stardiver(High Attack) Set --
	sets.WS.Stardiver.HighATT = set_combine(sets.WS.Stardiver,{body="Miki. Breastplate"})

	-- JA Sets --
	sets.JA = {}
	sets.JA.Jump = {
		ammo="Ginsen",
		head="Otomi Helm", neck="Ganesha's Mala", ear1="Tripudio Earring", ear2="Brutal Earring",
		body="Vishap Mail", hands="Ogier's Gauntlets", ring1="K'ayres Ring", ring2="Rajas Ring",
		back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Xaddi Cuisses", feet="Huginn Gambieras"
	}
	sets.JA.Jump.MidACC = set_combine(sets.JA.Jump,{
		head="Yaoyotl Helm", ear1="Steelflash Earring", ear2="Bladeborn Earring",
		body="Xaddi Mail", hands="Xaddi Gauntlets",
		back="Letalis Mantle", waist="Anguinus Belt", legs="Xaddi Cuisses", feet="Xaddi Boots"
	})
	sets.JA.Jump.HighACC = set_combine(sets.JA.Jump.MidACC,{
		neck="Ziel Charm", ring1="Mars's Ring"
	})

	sets.JA["High Jump"] = set_combine(sets.JA.Jump,{})
	sets.JA["High Jump"].MidACC = set_combine(sets.JA.Jump.MidACC,{})
	sets.JA["High Jump"].HighACC = set_combine(sets.JA.Jump.HighACC,{})

	sets.JA["Spirit Jump"] = set_combine(sets.JA.Jump,{
		neck="Asperity Necklace",
		feet="Lncr. Schynbld. +2"
	})
	sets.JA["Spirit Jump"].MidACC = set_combine(sets.JA["Spirit Jump"],{
		head="Yaoyotl Helm", ear1="Steelflash Earring", ear2="Bladeborn Earring",
		body="Xaddi Mail", hands="Xaddi Gauntlets",
		back="Letalis Mantle", waist="Anguinus Belt", legs="Xaddi Cuisses"
	})
	sets.JA["Spirit Jump"].HighACC = set_combine(sets.JA["Spirit Jump"].MidACC,{
		neck="Ziel Charm",
		ring1="Mars's Ring"
	})

	sets.JA["Soul Jump"] = set_combine(sets.JA.Jump,{neck="Asperity Necklace"})

	sets.JA["Soul Jump"].MidACC = set_combine(sets.JA.Jump.MidACC,{})
	sets.JA["Soul Jump"].HighACC = set_combine(sets.JA.Jump.HighACC,{})

	sets.JA.Angon = {ammo="Angon",ear1="Dragoon's Earring",hands="Wym. Fng. Gnt. +2"}
	sets.JA["Ancient Circle"] = {"Vishap Brais"}
	sets.JA['Call Wyvern'] = {body="Wym. Mail +2"}

	sets.Pet = {}
	sets.Pet.WyvernHP = {
		head="Wym. Armet +1", neck="Lancer's Torque",
		body="Wyvern Mail", ring1="Dark Ring", ring2="Defending Ring",
		back="Updraft Mantle", waist="Glassblower's Belt", legs="Vishap Brais", feet="Wym. Greaves +2"
	}

	sets.JA["Spirit Link"] = set_combine(sets.Pet.WyvernHP,{head="Drachen Armet",hands="Lncr. Vmbrc. +2"})
	sets.Pet["Restoring Breath"] = set_combine(sets.Pet.WyvernHP)
	sets.Pet["Smiting Breath"] = set_combine(sets.Pet.WyvernHP)
	sets.Pet["Steady Wing"] = set_combine(sets.Pet.WyvernHP)

	-- Healing Breath Trigger --
	sets.HealingBreathTrigger = set_combine(sets.Pet.WyvernHP,{
		ammo="Egoist's Tathlum",
		head="Drachen Armet", 
		body="Wym. Mail", hands="Ares' Gauntlets +1", ring1="K'ayres Ring", ring2="Meridian Ring",
		back="Strendu Mantle", legs="Osmium Cuisses", feet="Ejekamal Boots"
	})

	-- Waltz Set --
	sets.Waltz = {}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = {
		ammo="Impatiens",
		head="Cizin Helm +1", neck="Orunmila's Torque", ear1="Loquac. Earring",
		ring1="Prolix Ring", ring2="Veneficium Ring",
		legs="Enif Cosciales"
	}

	sets.Midcast = {}
	-- Magic Haste Set --
	sets.Midcast.Haste = set_combine(sets.PDT,{
		head="Otomi Helm",
		hands="Cizin Mufflers +1",
		waist="Goading Belt", legs="Ares' Flanchard +1", feet="Huginn Gambieras"
	})
end

function pretarget(spell,action)
	if (spell.type:endswith('Magic') or spell.type == 'BardSong' or spell.type == 'Ninjutsu') and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.english == "Spirit Jump" and not pet.isvalid then -- Change Spirit Jump To Jump If Wyvern Is Not Present --
		cancel_spell()
		send_command('Jump')
	elseif spell.english == "Soul Jump" and not pet.isvalid then -- Change Soul Jump To High Jump If Wyvern Is Not Present --
		cancel_spell()
		send_command('HighJump')
	elseif spell.english == "Dismiss" and pet.hpp < 100 then -- Cancel Dismiss If Wyvern's HP Is Under 100% --
		cancel_spell()
		add_to_chat(123, spell.english .. ' Canceled: [' .. pet.hpp .. ']')
		return
	elseif spell.english =="Call Wyvern" and pet.isvalid then -- Change Call Wyvern To Dismiss If Wyvern Is Present --
		cancel_spell()
		send_command('Dismiss')
	elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
		cancel_spell()
		send_command('Aggressor')
	elseif spell.english == "Seigan" and buffactive.Seigan then -- Change Seigan To Third Eye If Seigan Is On --
		cancel_spell()
		send_command('ThirdEye')
	elseif spell.english == "Meditate" and player.tp > 2900 then -- Cancel Meditate If TP Is Above 290 --
		cancel_spell()
		add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
	elseif spell.type == "WeaponSkill" and spell.target.distance > target_distance and player.status == 'Engaged' then -- Cancel WS If You Are Out Of Range --
		cancel_spell()
		add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		return
	end
end

function precast(spell,action)
	if spell.english == 'Ranged' then
		equip({ammo="Pebble"})
	elseif spell.type == "WeaponSkill" then
		if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
			cancel_spell()
			add_to_chat(123,'Unable To Use WeaponSkill: [Disengaged]')
			return
		else
			equipSet = sets.WS
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end
			if equipSet[AccArray[AccIndex]] then
				equipSet = equipSet[AccArray[AccIndex]]
			end
			if equipSet[AttArray[AttIndex]] then
				equipSet = equipSet[AttArray[AttIndex]]
			end
			if player.tp > 299 or buffactive.Sekkanoki then -- Equip Kokou's Earring When You Have 300 TP or Sekkanoki --
				equipSet = set_combine(equipSet,{ear1="Kokou's Earring"})
			end
			if spell.english == "Drakesbane" and string.find(spell.target.name,'Dynamis Lord') then -- Equip Phorcys Korazin When You Use Drakesbane On DL & ADL --
				equipSet = set_combine(equipSet,{body="Phorcys Korazin"})
			end
			equip(equipSet)
		end
	elseif spell.type == "JobAbility" then
		equipSet = sets.JA
		if equipSet[spell.english] then
			equipSet = equipSet[spell.english]
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if spell.english == "High Jump" and NM_For_Brais:contains(spell.target.name) and Brais == 'ON' then -- Use Vishap Brais +1 Toggle To Equip Vishap Brais +1 For High Jump --
			equipSet = set_combine(equipSet,{legs="Vishap Brais +1"})
		end
		equip(equipSet)
	elseif spell.type:endswith('Magic') or spell.type == 'Ninjutsu' or spell.type == 'BardSong' then
		if buffactive.silence or spell.target.distance > 16+target_distance then
			cancel_spell()
			add_to_chat(123, spell.name..' Canceled: [Silenced or Out of Casting Range]')
			return
		else
			if string.find(spell.english,'Utsusemi') then
				if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
					cancel_spell()
					add_to_chat(123,'Utsusemi Canceled: [3+ Images]')
					return
				else
					equip(sets.Precast.FastCast)
				end
			else
				equip(sets.Precast.FastCast)
			end
		end
	elseif spell.type == "Waltz" then
		refine_waltz(spell,action)
		equip(sets.Waltz)
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	elseif spell.type == "PetCommand" then
		equip(sets.Pet[spell.english])
	end
	if Twilight == 'Twilight' then
		equip(sets.Twilight)
	end
end

function midcast(spell,action)
	if spell.english == 'Ranged' then
		equip({ammo="Pebble"})
	elseif spell.type:endswith('Magic') or spell.type == 'BardSong' or spell.type == 'Ninjutsu' then
		if string.find(spell.english,'Utsusemi') then
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
				send_command('@wait 1.7;cancel Copy Image*')
			end
			equip(sets.Midcast.Haste)
		elseif spell.english == 'Monomi: Ichi' then
			if buffactive['Sneak'] then
				send_command('@wait 1.7;cancel sneak')
			end
			equip(sets.Midcast.Haste)
		elseif HB_Mage_SubJob:contains(player.sub_job) and player.hpp < 51 and pet.isvalid then
			equip(sets.HealingBreathTrigger)
		elseif HB_DD_SubJob:contains(player.sub_job) and player.hpp < 34 and pet.isvalid then
			equip(sets.HealingBreathTrigger)
		else
			equip(sets.Midcast.Haste)
		end
	end
end

function aftercast(spell,action)
	if not spell.interrupted then
		if spell.type == "WeaponSkill" then
			send_command('wait 0.2;gs c TP')
		elseif string.find(spell.english,'Jump') then
			send_command('wait 0.2;gs c TP')
		elseif spell.english == "Angon" then -- Angon Timer/Countdown --
			timer_angon()
			send_command('wait 80;input /echo '..spell.name..': [WEARING OFF IN 10 SEC.];wait 10;timers delete "Angon";input /p '..spell.name..': [OFF]')
		elseif spell.english == "Ancient Circle" then -- Ancient Circle Countdown --
			send_command('wait 260;input /echo '..spell.name..': [WEARING OFF IN 10 SEC.];wait 10;input /echo '..spell.name..': [OFF]')
		end
	elseif not string.find(spell.english,'Breath') then
		status_change(player.status)
	end
end

function status_change(new,old)
	if Armor == 'PDT' then
		equip(sets.PDT)
	elseif Armor == 'MDT' then
		equip(sets.MDT)
	elseif new == 'Engaged' then
		equipSet = sets.TP
		if Armor == 'Hybrid' and equipSet["Hybrid"] then
			equipSet = equipSet["Hybrid"]
		end
		if equipSet[player.equipment.main] then
			equipSet = equipSet[player.equipment.main]
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if buffactive["Aftermath: Lv.3"] and equipSet["AM3"] then
			if Rancor == 'ON' then -- Default Rancor Toggle Is Rancorous Mantle --
				equipSet = set_combine(equipSet["AM3"],sets.TP.Rancor)
			else -- Use Rancor Toggle For Atheling Mantle --
				equipSet = equipSet["AM3"]
			end
		end
		if buffactive.Ionis and equipSet["Ionis"] then
			equipSet = equipSet["Ionis"]
		end
		if buffactive["Samurai Roll"] and equipSet["STP"] and Samurai_Roll == 'ON' then
			equipSet = equipSet["STP"]
		end
		equip(equipSet)
	else
		equip(sets.Idle[IdleArray[IdleIndex]])
	end
	if Twilight == 'Twilight' then
		equip(sets.Twilight)
	end
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == "aftermath: lv.3" then -- AM3 Timer/Countdown --
		if gain then
			send_command('timers create "Aftermath: Lv.3" 180 down;wait 120;input /echo Aftermath: Lv.3 [WEARING OFF IN 60 SEC.];wait 30;input /echo Aftermath: Lv.3 [WEARING OFF IN 30 SEC.];wait 20;input /echo Aftermath: Lv.3 [WEARING OFF IN 10 SEC.]')
		else
			send_command('timers delete "Aftermath: Lv.3"')
			add_to_chat(123,'AM3: [OFF]')
		end
	elseif buff == 'weakness' then -- Weakness Timer --
		if gain then
			send_command('timers create "Weakness" 300 up')
		else
			send_command('timers delete "Weakness"')
		end
	end
	if buff == "sleep" and gain and player.hp > 200 and player.status == "Engaged" then -- Equip Berserker's Torque When You Are Asleep & Have 200+ HP --
		equip({neck="Berserker's Torque"})
	else
		if not midaction() and not pet_midaction() then
			status_change(player.status)
		end
	end
end

function pet_midcast(spell,action)
	if string.find(spell.english,'Breath') then
		equip(sets.Pet["Restoring Breath"])
	end
end

function pet_aftercast(spell,action)
	status_change(player.status)
end

function pet_change(pet,gain)
	status_change(player.status)
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'acc' then -- Accuracy Level Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		status_change(player.status)
	elseif command == 'C9' then -- Attack Toggle --
		AttIndex = (AttIndex % #AttArray) + 1
		add_to_chat(158,'Attack Level: '..AttArray[AttIndex])
		status_change(player.status)
	elseif command == 'C5' then -- Auto Update Gear Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	elseif command == 'C2' then -- Hybrid Toggle --
		if Armor == 'Hybrid' then
			Armor = 'None'
			add_to_chat(123,'Hybrid Set: [Unlocked]')
		else
			Armor = 'Hybrid'
			add_to_chat(158,'Hybrid Set: '..AccArray[AccIndex])
		end
		status_change(player.status)
	elseif command == 'pdt' then -- PDT Toggle --
		if Armor == 'PDT' then
			Armor = 'None'
			add_to_chat(123,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'mdt' then -- MDT Toggle --
		if Armor == 'MDT' then
			Armor = 'None'
			add_to_chat(123,'MDT Set: [Unlocked]')
		else
			Armor = 'MDT'
			add_to_chat(158,'MDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C16' then -- Rancor Toggle --
		if Rancor == 'ON' then
			Rancor = 'OFF'
			add_to_chat(123,'Rancor: [OFF]')
		else
			Rancor = 'ON'
			add_to_chat(158,'Rancor: [ON]')
		end
		status_change(player.status)
	elseif command == 'C10' then -- Vishap Brais +1 Toggle --
		if Brais == 'ON' then
			Brais = 'OFF'
			add_to_chat(123,'Vishap Brais +1: [OFF]')
		else
			Brais = 'ON'
			add_to_chat(158,'Vishap Brais +1: [ON]')
		end
		status_change(player.status)
	elseif command == 'C17' then -- SAM Roll Toggle --
		if Samurai_Roll == 'ON' then
			Samurai_Roll = 'OFF'
			add_to_chat(123,'SAM Roll: [OFF]')
		else
			Samurai_Roll = 'ON'
			add_to_chat(158,'SAM Roll: [ON]')
		end
		status_change(player.status)
	elseif command == 'rr' then -- Twilight Toggle --
		if Twilight == 'Twilight' then
			Twilight = 'None'
			add_to_chat(123,'Twilight Set: [Unlocked]')
		else
			Twilight = 'Twilight'
			add_to_chat(158,'Twilight Set: [locked]')
		end
		status_change(player.status)
	elseif command == 'C8' then -- Distance Toggle --
		if player.target.distance then
			target_distance = math.floor(player.target.distance*10)/10
			add_to_chat(158,'Distance: '..target_distance)
		else
			add_to_chat(123,'No Target Selected')
		end
	elseif command == 'C6' then -- Idle Toggle --
		IdleIndex = (IdleIndex % #IdleArray) + 1
		add_to_chat(158,'Idle Set: ' .. IdleArray[IdleIndex])
		status_change(player.status)
	elseif command == 'TP' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	elseif command:match('^SC%d$') then
		send_command('//' .. sc_map[command])
	end
end

function timer_angon()
	local duration = 90
	send_command('timers create "Angon" '..tostring(duration)..' down')
end

function refine_waltz(spell,action)
	if spell.type ~= 'Waltz' then
		return
	end

	if spell.name == "Healing Waltz" or spell.name == "Divine Waltz" or spell.name == "Divine Waltz II" then
		return
	end

	local newWaltz = spell.english
	local waltzID

	local missingHP

	if spell.target.type == "SELF" then
		missingHP = player.max_hp - player.hp
	elseif spell.target.isallymember then
		local target = find_player_in_alliance(spell.target.name)
		local est_max_hp = target.hp / (target.hpp/100)
		missingHP = math.floor(est_max_hp - target.hp)
	end

	if missingHP ~= nil then
		if player.sub_job == 'DNC' then
			if missingHP < 40 and spell.target.name == player.name then
				add_to_chat(123,'Full HP!')
				cancel_spell()
				return
			elseif missingHP < 150 then
				newWaltz = 'Curing Waltz'
				waltzID = 190
			elseif missingHP < 300 then
				newWaltz = 'Curing Waltz II'
				waltzID = 191
			else
				newWaltz = 'Curing Waltz III'
				waltzID = 192
			end
		else
			return
		end
	end

	local waltzTPCost = {['Curing Waltz'] = 20, ['Curing Waltz II'] = 35, ['Curing Waltz III'] = 50, ['Curing Waltz IV'] = 65, ['Curing Waltz V'] = 80}
	local tpCost = waltzTPCost[newWaltz]

	local downgrade

	if player.tp < tpCost and not buffactive.trance then

		if player.tp < 20 then
			add_to_chat(123, 'Insufficient TP ['..tostring(player.tp)..']. Cancelling.')
			cancel_spell()
			return
		elseif player.tp < 35 then
			newWaltz = 'Curing Waltz'
		elseif player.tp < 50 then
			newWaltz = 'Curing Waltz II'
		elseif player.tp < 65 then
			newWaltz = 'Curing Waltz III'
		elseif player.tp < 80 then
			newWaltz = 'Curing Waltz IV'
		end

		downgrade = 'Insufficient TP ['..tostring(player.tp)..']. Downgrading to '..newWaltz..'.'
	end

	if newWaltz ~= spell.english then
		send_command('@input /ja "'..newWaltz..'" '..tostring(spell.target.raw))
		if downgrade then
			add_to_chat(158, downgrade)
		end
		cancel_spell()
		return
	end

	if missingHP > 0 then
		add_to_chat(158,'Trying to cure '..tostring(missingHP)..' HP using '..newWaltz..'.')
	end
end

function find_player_in_alliance(name)
	for i,v in ipairs(alliance) do
		for k,p in ipairs(v) do
			if p.name == name then
				return p
			end
		end
	end
end

function sub_job_change(newSubjob, oldSubjob)
	select_default_macro_book()
end

function set_macro_page(set,book)
	if not tonumber(set) then
		add_to_chat(123,'Error setting macro page: Set is not a valid number ('..tostring(set)..').')
		return
	end
	if set < 1 or set > 10 then
		add_to_chat(123,'Error setting macro page: Macro set ('..tostring(set)..') must be between 1 and 10.')
		return
	end

	if book then
		if not tonumber(book) then
			add_to_chat(123,'Error setting macro page: book is not a valid number ('..tostring(book)..').')
			return
		end
		if book < 1 or book > 20 then
			add_to_chat(123,'Error setting macro page: Macro book ('..tostring(book)..') must be between 1 and 20.')
			return
		end
		send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(set))
	else
		send_command('@input /macro set '..tostring(set))
	end
end

function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'SAM' then
		set_macro_page(1, 5)
	elseif player.sub_job == 'DNC' then
		set_macro_page(5, 5)
	elseif player.sub_job == 'WAR' then
		set_macro_page(3, 5)
	elseif player.sub_job == 'WHM' or player.sub_job == 'RDM' then
		set_macro_page(4, 5)
	elseif player.sub_job == 'NIN' then
		set_macro_page(5, 5)
	else
		set_macro_page(1, 5)
	end
end