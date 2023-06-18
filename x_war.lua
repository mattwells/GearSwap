function get_sets()

	--binds--
send_command('bind !f11 gs c dagger;')  -- Alt F11 equip Dagger line of weapon
send_command('bind !f10 gs c gaxe;')  -- Alt F10 equip Great Axe line of weapon
send_command('bind !f9 gs c gsword;')  -- Alt F9 equip Great Sword line of weapon
send_command('bind !f8 gs c axe;')  -- Alt F8 equip Axe line of weapon
send_command('bind !f7 gs c sword;')  -- Alt F7 equip Sword line of weapon
send_command('bind !f6 gs c polearm;')  -- Alt F6 equip Polearm line of weapon
send_command('bind !f5 gs c scythe;')  -- Alt F5 equip Scythe line of weapon
send_command('bind !f4 gs c club;')  -- Alt F4 equip Club line of weapon
send_command('bind !f3 gs c staff;')  -- Alt F3 equip Staff line of weapon
send_command('bind !f2 gs c toggle DW;')  -- Alt F2 equip DW ON or OFF
send_command('bind !f1 gs c toggle main;')  -- Alt F1 equip circle through weapons of a given weapon line




sets.Idle = {}
sets.Idle.index = {'Standard','DT'}
Idle_ind = 1

	--Idle Sets--	
sets.Idle.Standard = {
    ammo="Staunch Tathlum",
    head="Volte Salade",
    body="Tartarus Platemail",
    hands="Volte Moufles",
    legs="Sulev. Cuisses +2",
    feet="Hermes' Sandals",
    neck="Wiglen Gorget",
    waist="Flume Belt",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Sheltered Ring",
    right_ring="Paguroidea Ring",
    back="Solemnity Cape",
}

sets.Idle.DT = {
	ammo="Staunch Tathlum",
    head="Volte Salade",
    body="Tartarus Platemail",
    hands="Volte Moufles",
    legs="Sulev. Cuisses +2",
    feet="Hermes' Sandals",
    neck="Warder's Charm",
    waist="Asklepian Belt",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -5%',}},
    back="Solemnity Cape",
}

	--weapon sets--

main_weapon_type = 'gaxe'
main_weapon_index = 1
accuracy_index = 1

sets.weapon = {
	gaxe = {
		{main = 'chango', sub = 'utu grip'},
		--{main = 'bravura', sub = 'utu grip'},
		--{main = 'conqueror', sub = 'utu grip'},
	},
	gsword = {
		{main = 'montante +1', sub = 'utu grip'},
		{main = 'ragnarok', sub = 'utu grip'},
	},
	polearm = {
		{main = 'exalted spear +1', sub = 'utu grip'},
		{main = 'quint spear', sub = 'utu grip'},
	},
	scyth = {
		{main = 'blurred scythe', sub = 'utu grip'},
	},
	staff = {
		{main = 'gozuki mezuki', sub = 'utu grip'},
	},  
	axe = {
		DW = true,
		{main = 'beryllium pick +1'},
		--{main = 'farsha'},
	},
	sword = {
		DW = true,
		{main = 'firangi'},
		{main = 'hep. sapara +1'},
	},
	club = {
		DW = true,
		{main = 'beryllium mace +1'},
	},
	dagger = {
		DW = true,
		{main = 'odium'},
		{main = 'malevolence'},
	},
}

DW = 'off'
sets.DW_sub = {
	on  = {sub = "reikiko"},
	off = {sub = "blurred shield +1"},
}


	--TP Sets--
sets.TP = {
	chango = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
	--bravura = {standard = {}, accuracy = {}, hybride = {},}
	--conqueror = {standard = {}, accuracy = {}, hybride = {},}
    ["montante +1"] = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
	ragnarok = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
    ["exalted spear +1"] = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
	["quint spear"] = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
    ["blurred scythe"] = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
    ["gozuki mezuki"] = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
    ["beryllium pick +1"] = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
	--farsha = {standard = {}, accuracy = {}, hybride = {},},
    firangi = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
	["hep. sapara +1"] = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
    ["beryllium mace +1"] = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
    odium = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
	malevolence = {
		standard = {}, 
		accuracy = {}, 
		hybride = {},
	},
}
	

sets.TP.chango.standard = {
	ammo="Yetshila",
	head="Flam. Zucchetto +2",
	body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}},
	hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
	legs="Pumm. Cuisses +3",
	feet="Pumm. Calligae +3",
	neck="Lissome Necklace",
	waist="Ioskeha Belt +1",
	left_ear="Brutal Earring",
	right_ear="Telos Earring",
	left_ring="Niqmaddu Ring",
	right_ring="Flamma Ring",
	back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}
sets.TP.chango.accuracy = {
	ammo="Seeth. Bomblet +1",
	head="Flam. Zucchetto +2",
	body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}},
	hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
	legs="Pumm. Cuisses +3",
	feet="Pumm. Calligae +3",
	neck="Combatant's Torque",
	waist="Ioskeha Belt +1",
	left_ear="Digni. Earring",
	right_ear="Telos Earring",
	left_ring="Regal Ring",
	right_ring="Flamma Ring",
	back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}
sets.TP.chango.hybride = {
	ammo="Ginsen",
	head="Sulevia's Mask +2",
	body="Tartarus Platemail",
	hands="Pumm. Mufflers +2",
	legs="Sulev. Cuisses +2",
	feet="Sulev. Leggings +2",
	neck="Agitator's Collar",
	waist="Ioskeha Belt +1",
	left_ear="Digni. Earring",
	right_ear="Telos Earring",
	left_ring="Petrov Ring",
	right_ring="Flamma Ring",
	back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}



sets.TP["Montante +1"] = sets.TP.chango

sets.TP.ragnarok.standard = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Ainia Collar",
    waist="Ioskeha Belt +1",
    left_ear="Dedition Earring",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Flamma Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}
sets.TP.ragnarok.accuracy = {
	ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Combatant's Torque",
    waist="Ioskeha Belt +1",
    left_ear="Digni. Earring",
    right_ear="Telos Earring",
    left_ring="Regal Ring",
    right_ring="Flamma Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}
sets.TP.ragnarok.hybride = {
	ammo="Ginsen",
	head="Sulevia's Mask +2",
	body="Tartarus Platemail",
	hands="Pumm. Mufflers +2",
	legs="Sulev. Cuisses +2",
	feet="Sulev. Leggings +2",
	neck="Agitator's Collar",
	waist="Ioskeha Belt +1",
	left_ear="Digni. Earring",
	right_ear="Telos Earring",
	left_ring="Petrov Ring",
	right_ring="Flamma Ring",
	back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}






	--Weaponskill Sets--

--Chapter 1 : GA WS--

sets.Upheaval = {}		
sets.Upheaval.Attack = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +3",
    hands={ name="Odyssean Gauntlets", augments={'STR+3','Magic dmg. taken -1%','Weapon skill damage +9%',}},
    legs={ name="Odyssean Cuisses", augments={'Attack+11','Weapon skill damage +4%','STR+10','Accuracy+6',}},
    feet="Sulev. Leggings +2",
    neck="Tjukurrpa Medal",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
}	
sets.Upheaval.Accuracy = {
	ammo="Seeth. Bomblet +1",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +3",
    hands="Pumm. Mufflers +2",
    legs="Pumm. Cuisses +3",
    feet="Sulev. Leggings +2",
    neck="Combatant's Torque",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
}

sets["King's Justice"] = {}		
sets["King's Justice"].Attack = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +3",
    hands={ name="Odyssean Gauntlets", augments={'STR+3','Magic dmg. taken -1%','Weapon skill damage +9%',}},
    legs={ name="Odyssean Cuisses", augments={'Attack+11','Weapon skill damage +4%','STR+10','Accuracy+6',}},
    feet="Sulev. Leggings +2",
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}	
sets["King's Justice"].Accuracy = {
	ammo="Seeth. Bomblet +1",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +3",
    hands="Pumm. Mufflers +2",
    legs="Pumm. Cuisses +3",
    feet="Sulev. Leggings +2",
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

sets["Steel Cyclone"] = sets["King's Justice"]
sets["Fell Cleave"] = sets["King's Justice"]

sets.UkkosFury = {}		
sets.UkkosFury.Attack = {
	ammo="Yetshila",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands="Flam. Manopolas +2",
    legs={ name="Argosy Breeches +1", augments={'STR+12','DEX+12','Attack+20',}},
    feet="Boii Calligae +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}	
sets.UkkosFury.Accuracy = {
	ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands="Flam. Manopolas +2",
    legs={ name="Argosy Breeches +1", augments={'STR+12','DEX+12','Attack+20',}},
    feet="Boii Calligae +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}

sets.SteelCyclone = {}		
sets.SteelCyclone.Attack = {
	ammo="Ginsen",
    head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','MND+2','Weapon skill damage +10%',}},
    body={ name="Herculean Vest", augments={'CHR+2','Mag. Acc.+4','Weapon skill damage +6%','Accuracy+9 Attack+9','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
    hands={ name="Herculean Gloves", augments={'Attack+3','"Triple Atk."+4','STR+4','Accuracy+15',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Rawhide Boots", augments={'DEX+10','STR+7','INT+7',}},
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear="Ishvara Earring",
    right_ear="Brutal Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Ifrit Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
}	
sets.SteelCyclone.Accuracy = {
	ammo="Ginsen",
    head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','MND+2','Weapon skill damage +10%',}},
    body={ name="Herculean Vest", augments={'"Triple Atk."+2','Accuracy+16','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    hands={ name="Herculean Gloves", augments={'Attack+3','"Triple Atk."+4','STR+4','Accuracy+15',}},
    legs={ name="Adhemar Kecks", augments={'DEX+10','AGI+10','Accuracy+15',}},
    feet={ name="Rawhide Boots", augments={'DEX+10','STR+7','INT+7',}},
    neck="Combatant's Torque",
    waist="Grunfeld Rope",
    left_ear="Digni. Earring",
    right_ear="Telos Earring",
    left_ring="Ramuh Ring +1",
    right_ring="Ramuh Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
}

sets.Break = {}		
sets.Break.Attack = {
	ammo="Pemphredo Tathlum",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Digni. Earring",
    right_ear="Telos Earring",
    left_ring="Etana Ring",
    right_ring="Flamma Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}	
sets.Break.Accuracy = {
	ammo="Pemphredo Tathlum",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Digni. Earring",
    right_ear="Telos Earring",
    left_ring="Etana Ring",
    right_ring="Flamma Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

sets.OtherWS = {}		
sets.OtherWS.Attack = {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'STR+11','Accuracy+18 Attack+18','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Pumm. Lorica +3",
    hands={ name="Odyssean Gauntlets", augments={'STR+3','Magic dmg. taken -1%','Weapon skill damage +9%',}},
    legs={ name="Odyssean Cuisses", augments={'Attack+11','Weapon skill damage +4%','STR+10','Accuracy+6',}},
    feet="Sulev. Leggings +2",
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}	
sets.OtherWS.Accuracy = {
	ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body="Pumm. Lorica +3",
    hands="Pumm. Mufflers +2",
    legs="Pumm. Cuisses +3",
    feet="Sulev. Leggings +2",
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

--Chapter 2 : GS WS--

sets.Resolution = {}		
sets.Resolution.Attack = {
	ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','DEX+12','Attack+20',}},
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}	
sets.Resolution.Accuracy = {
	ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Flamma Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}

sets.MAB = {
	ammo="Pemphredo Tathlum",
    head={ name="Jumalik Helm", augments={'MND+10','"Mag.Atk.Bns."+15','Magic burst dmg.+10%','"Refresh"+1',}},
    body={ name="Found. Breastplate", augments={'Accuracy+5','Mag. Acc.+2','"Mag.Atk.Bns."+7',}},
    hands={ name="Founder's Gauntlets", augments={'STR+9','Attack+13','"Mag.Atk.Bns."+14','Phys. dmg. taken -4%',}},
    legs={ name="Odyssean Cuisses", augments={'Attack+11','Weapon skill damage +4%','STR+10','Accuracy+6',}},
    feet={ name="Founder's Greaves", augments={'VIT+10','Accuracy+15','"Mag.Atk.Bns."+15','Mag. Evasion+15',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Ishvara Earring",
    left_ring="Acumen Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
}	

sets.GStrike = {}		
sets.GStrike.Attack = {
	ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','DEX+12','Attack+20',}},
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}	
sets.GStrike.Accuracy = {
	ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Flamma Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}

--Chapter 3 : Polearm WS--

sets.Upheaval = {}		
sets.Upheaval.Attack = {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+22','VIT+15','Attack+1',}},
    body="Pumm. Lorica +3",
    hands={ name="Odyssean Gauntlets", augments={'STR+3','Magic dmg. taken -1%','Weapon skill damage +9%',}},
    legs={ name="Odyssean Cuisses", augments={'Attack+11','Weapon skill damage +4%','STR+10','Accuracy+6',}},
    feet="Sulev. Leggings +2",
    neck="Tjukurrpa Medal",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
}	
sets.Upheaval.Accuracy = {
	ammo="Seeth. Bomblet +1",
    head="Sulevia's Mask +2",
    body="Pumm. Lorica +3",
    hands="Pumm. Mufflers +2",
    legs="Pumm. Cuisses +3",
    feet="Sulev. Leggings +2",
    neck="Combatant's Torque",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
}

--Chapter 4 : Sword WS--
	
sets.WS = {}
sets.WS.index = {'Attack','Accuracy'}
WS_ind = 1
sets.Requiescat = {}
sets.Requiescat.Attack = {
	ammo="Ginsen",
    head="Hashishin Kavuk +1",
    body="Hashishin Mintan +1",
    hands="Hashi. Bazu. +1",
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Epona's Ring",
    right_ring="Rufescent Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
}						  
sets.Requiescat.Accuracy = {
	ammo="Falcon Eye",
    head={ name="Herculean Helm", augments={'Accuracy+22','Accuracy+25 Attack+25','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
    body={ name="Herculean Vest", augments={'"Triple Atk."+2','Accuracy+16','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Adhemar Kecks", augments={'DEX+10','AGI+10','Accuracy+15',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Ramuh Ring +1",
    right_ring="Rufescent Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
}					 
sets.ChantDuCygne = {}
sets.ChantDuCygne.Attack = {
	ammo="Jukukik Feather",
    head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','MND+2','Weapon skill damage +10%',}},
    body={ name="Herculean Vest", augments={'"Triple Atk."+2','Accuracy+16','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet="Thereoid Greaves",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Jupiter's Pearl",
    left_ring="Ramuh Ring +1",
    right_ring="Begrudging Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
}			   
sets.ChantDuCygne.Accuracy = {
	ammo="Falcon Eye",
    head={ name="Herculean Helm", augments={'Accuracy+22','Accuracy+25 Attack+25','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
    body={ name="Herculean Vest", augments={'"Triple Atk."+2','Accuracy+16','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Adhemar Kecks", augments={'DEX+10','AGI+10','Accuracy+15',}},
    feet="Thereoid Greaves",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Ramuh Ring +1",
    right_ring="Begrudging Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
}			   
sets.SavageBlade = {}		
sets.SavageBlade.Attack = {
	ammo="Ginsen",
    head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','MND+2','Weapon skill damage +10%',}},
    body={ name="Herculean Vest", augments={'CHR+2','Mag. Acc.+4','Weapon skill damage +6%','Accuracy+9 Attack+9','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
    hands={ name="Herculean Gloves", augments={'Attack+3','"Triple Atk."+4','STR+4','Accuracy+15',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Rawhide Boots", augments={'DEX+10','STR+7','INT+7',}},
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Ifrit Ring +1",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
sets.SavageBlade.Accuracy = {
	ammo="Falcon Eye",
    head={ name="Herculean Helm", augments={'Accuracy+22','Accuracy+25 Attack+25','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
    body={ name="Herculean Vest", augments={'"Triple Atk."+2','Accuracy+16','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Adhemar Kecks", augments={'DEX+10','AGI+10','Accuracy+15',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','AGI+8','Accuracy+12',}},
    neck="Combatant's Torque",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Ramuh Ring +1",
    right_ring="Ramuh Ring +1",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

sets.SanguineBlade = {}
sets.SanguineBlade = {
    ammo="Pemphredo Tathlum",
    head={ name="Herculean Helm", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Phys. dmg. taken -2%','INT+4','"Mag.Atk.Bns."+15',}},
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +1",
    feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Friomisi Earring",
    left_ring="Archon Ring",
    right_ring="Acumen Ring",
    back={ name="Cornflower Cape", augments={'MP+17','Accuracy+4','Blue Magic skill +9',}},
}


--Chapter 5 : Axe WS--

sets.FlashNova = {}
sets.FlashNova = {
    ammo="Pemphredo Tathlum",
    head={ name="Herculean Helm", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Phys. dmg. taken -2%','INT+4','"Mag.Atk.Bns."+15',}},
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +1",
    feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Friomisi Earring",
    left_ring="Strendu Ring",
    right_ring="Acumen Ring",
    back={ name="Cornflower Cape", augments={'MP+17','Accuracy+4','Blue Magic skill +9',}},
}

--Chapter 6 : Club WS--

sets.FlashNova = {}
sets.FlashNova = {
    ammo="Pemphredo Tathlum",
    head={ name="Herculean Helm", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Phys. dmg. taken -2%','INT+4','"Mag.Atk.Bns."+15',}},
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +1",
    feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Friomisi Earring",
    left_ring="Strendu Ring",
    right_ring="Acumen Ring",
    back={ name="Cornflower Cape", augments={'MP+17','Accuracy+4','Blue Magic skill +9',}},
}

--Chapter 7 : Staff WS--

sets.FlashNova = {}
sets.FlashNova = {
    ammo="Pemphredo Tathlum",
    head={ name="Herculean Helm", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Phys. dmg. taken -2%','INT+4','"Mag.Atk.Bns."+15',}},
    body="Jhakri Robe +1",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +1",
    feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    right_ear="Friomisi Earring",
    left_ring="Strendu Ring",
    right_ring="Acumen Ring",
    back={ name="Cornflower Cape", augments={'MP+17','Accuracy+4','Blue Magic skill +9',}},
}

	
	--Job Ability Sets--
sets.JA = {}
sets.JA.Warcry = {head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},}
sets.JA.Berserk = {body="Pumm. Lorica +3", feet={ name="Agoge Calligae +1", augments={'Enhances "Tomahawk" effect',}}, back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}
sets.JA.Aggressor = {head="Pumm. Mask +1", body={ name="Agoge Lorica +1", augments={'Enhances "Aggressive Aim" effect',}},}
sets.JA.BloodRage = {body="Boii Lorica +1",}
sets.JA.Retaliation = {hands="Pumm. Mufflers +2", feet="Boii Calligae +1",}
sets.JA.Restrain = {hands="Boii Mufflers +1",}

sets.JA.MS = {hands={ name="Agoge Mufflers +1", augments={'Enhances "Mighty Strikes" effect',}},}
sets.JA.CritDmg = {ammo="Yetshila", feet="Boii Calligae +1",}
			
	--Precast Sets--
sets.Precast = {
	ammo="Sapience Orb",
    neck="Baetyl Pendant",
    --waist="",
    left_ear="Etiolation Earring",
    right_ear="Loquac. Earring",
    left_ring="Rahab Ring",
    right_ring="Prolix Ring",
    --back="",
}

	send_command('input /macro book 4;wait .1;input /macro set 1')	
	weapon()
end

function precast(spell)
	if 'WeaponSkill' == spell.type then
		if sets[spell.english] then
    		equip(sets[spell.english][sets.WS.index[WS_ind]])
		else
			equip(sets.OtherWS[sets.WS.index[WS_ind]])
    	end
    
    	return
    end

  
  
	if spell.action_type == 'Magic' then
		equip(sets.Precast)
	elseif spell.english == 'Upheaval' then
		equip(sets.Upheaval[sets.WS.index[WS_ind]])
	elseif spell.english == "King's Justice" or spell.english == "Steel Cyclone" or spell.english == "Fell Cleave" then
		equip(sets.KingsJustice[sets.WS.index[WS_ind]])
	elseif spell.english == "Full Break" then
		equip(sets.Break[sets.WS.index[WS_ind]])
	--elseif spell.english == 'Expiacion' then
	--	equip(sets.Expiacion[sets.WS.index[WS_ind]])
	--elseif spell.english == 'Savage Blade' then
	--	equip(sets.SavageBlade[sets.WS.index[WS_ind]])
	--elseif spell.english == 'Sanguine Blade' then
	--	equip(sets.SanguineBlade)
	--elseif spell.english == 'Realmrazer' then
	--	equip(sets.Realmrazer[sets.WS.index[WS_ind]])
	--elseif spell.english == 'Flash Nova' then
	--	equip(sets.FlashNova)
	elseif spell.action_type == 'Weaponskill' then
		equip(sets.OtherWS[sets.WS.index[WS_ind]])
	elseif spell.english == 'Warcry' then
		equip(sets.JA.Warcry)
	elseif spell.english == 'Berserk' then
		equip(sets.JA.Berserk)
	elseif spell.english == 'Blood Rage' then
		equip(sets.JA.BloodRage)
	elseif spell.english == 'Aggressor' then
		equip(sets.JA.Aggressor)
	elseif spell.english == 'Mighty Strikes' then
		equip(sets.JA.MS)
	end
end
	
function midcast(spell,act)
	
end

function aftercast(spell)
	if player.status == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
	weapon()
end

function status_change(new,old)
	if new == 'Engaged' 
		then equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
	weapon()
end

function self_command(command)
	if command == 'toggle idle set' then
		Idle_ind = Idle_ind +1
		if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
		send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		weapon()
		return
	end
	if command == 'toggle main' then
		main_weapon_index = main_weapon_index + 1
    
		if not sets.weapon[main_weapon_type][main_weapon_index] then 
			main_weapon_index = 1 
		end
    
		weapon()
		return
	end
	if 'toggle DW' == command then
		if 'on' == DW then
			DW = 'off'
		else
			DW = 'on'
		end
		weapon()
		return
	end
	if command == 'toggle TP set' then
		accuracy_index = accuracy_index +1
		
		if not sets.TP[main_weapon_index][accuracy_index] then 
			accuracy_index = 1 
		end
		
		send_command('@input /echo <----- TP Set changed to '..accuracy_index..' ----->')
		
		if accuracy_index > 1 then 
			WS_ind = 2
		else WS_ind = 1 
		end
		send_command('@input /echo <----- WS set changed to '..sets.WS.index[WS_ind]..' ----->')
		weapon()
		TP ()
		return
	end
	if sets.weapon[command] then
		main_weapon_type = command
		main_weapon_index = 1
		DW = 'off'
		weapon()
		send_command('@input /echo <----- Weapon changed to '..sets.weapon[main_weapon_type][main_weapon_index].main..' ----->')
		return

	end
end

function weapon()
    local main_weapon = sets.weapon[main_weapon_type][main_weapon_index]
    print(main_weapon.main)
    local TP_set = sets.TP
        [main_weapon.main]
        [accuracy_index]
	
	equip(
    	TP_set,
    	main_weapon
  	)
	
	if sets.weapon[main_weapon_type].DW then
		equip(sets.DW_sub[DW])
    end
end







