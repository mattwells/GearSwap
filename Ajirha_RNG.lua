function get_sets()

    --binds--
    send_command('bind !f2 gs equip sets.CP; gs disable back; input /echo <----- CP mantle locked ----->') -- Alt F2 locks CP mantle
    send_command('bind ^f2 gs enable back; input /echo <----- CP mantle unlocked ----->') -- Ctrl F2 unlocks CP mantle

    send_command('bind !f10 gs c toggle SJ set;')  -- Alt F10 swap subjob for different DW level 0 to 25 to 15
    send_command('bind !f9 gs c toggle Melee Weapon set;')  -- Alt F9 swap melee weapon from Melee to Physical range to Magical range
    send_command('bind !f8 gs c toggle Range Weapon set;') -- Alt F8 swap range weapon from Gun to Xbow to Bow
    send_command('bind !f7 gs c toggle DW set;') -- Alt F7 swap DW 
    send_command('bind !f6 gs c status check;') -- Alt F6 return sets status


    --SubJob list--
    sets.SJ = {}
    sets.SJ.index = {'Other','Ninja','Dancer'}
    SJ_ind = 1

    --Weapon Sets--
    sets.Weapon_melee = {}
    sets.Weapon_melee.index = {'Melee','Prange','Mrange'}
    Wm_ind = 1
    sets.Weapon_melee.Melee = {
        main="Perun +1",
        sub="Odium",
    }
    sets.Weapon_melee.Prange = {
        main="Perun +1",
        sub="kustawi +1",
    }
    sets.Weapon_melee.Mrange = {
        main={ name="Malevolence", augments={'INT+10','Mag. Acc.+10','"Mag.Atk.Bns."+8','"Fast Cast"+5',}},
        sub={ name="Malevolence", augments={'INT+5','Mag. Acc.+7','"Fast Cast"+2',}},
    }

    sets.Weapon_range = {}
    sets.Weapon_range.index = {'Gun','XBow','Bow'}
    Wr_ind = 1
    sets.Weapon_range.Gun = {
        range="Fomalhaut",
        ammo="Chrono Bullet",
    }
    sets.Weapon_range.XBow = {
        range="gastraphetes",
        ammo="bronze bolt",
    }
    sets.Weapon_range.Bow = {
        range={ name="Teller", augments={'Weapon skill damage +2%','DEX+14','Rng.Acc.+29','Rng.Atk.+20','DMG:+11',}},
        ammo="eminent arrow",
    }

    sets.DW_mode = {}
    sets.DW_mode.index = {'DW','notDW'}
    DW_mode_ind = 1

    sets.DW_mode.DW = {}
    sets.DW_mode.notDW = {sub="Nusku Shield",}

    --Idle Sets--    
    sets.Idle = {}
    sets.Idle.index = {'Standard','DT'}
    Idle_ind = 1
    sets.Idle.Standard = {
        head="Oce. Headpiece +1",
        body="Kheper Jacket",
        hands="Meg. Gloves +2",
        legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet="Meg. Jam. +2",
        neck="Wiglen Gorget",
        waist="Flume Belt",
        left_ear="Infused Earring",
        right_ear="Genmei Earring",
        left_ring="Sheltered Ring",
        right_ring="Paguroidea Ring",
        back="Solemnity Cape",
    }
    sets.Idle.DT = {
        head="Meghanada Visor +2",
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +2",
        legs="Mummu Kecks +2",
        feet="Jute Boots +1",
        neck="Loricate Torque +1",
        waist="Flume Belt",
        left_ear="Infused Earring",
        right_ear="Novia Earring",
        left_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -5%',}},
        right_ring="Defending Ring",
        back="Solemnity Cape",
    }

    --CP mantle set--
    sets.CP = {
        back={ name="Mecisto. Mantle", augments={'Cap. Point+50%','HP+22','"Mag.Atk.Bns."+2','DEF+4',}},   
    }

    --TP Sets--
    sets.TP = {}
    sets.TP.index = {'Standard', 'MidAccuracy', 'HighAccuracy', 'Hybride'}
    TP_ind = 1

    sets.TP.Standard = {}
    sets.TP.Standard.index = {'Other','Ninja','Dancer'}
    sets.TP.Standard.Other = {
        head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'"Triple Atk."+4','AGI+10','Accuracy+11','Attack+15',}},
        neck="Lissome Necklace",
        waist="Windbuffet Belt +1",
        left_ear="Telos Earring",
        right_ear="Sherda Earring",
        left_ring="Petrov Ring",
        right_ring="ilabrat ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }
    sets.TP.Standard.Ninja = {
        head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'"Triple Atk."+4','AGI+10','Accuracy+11','Attack+15',}},
        neck="Lissome Necklace",
        waist="Windbuffet Belt +1",
        left_ear="Telos Earring",
        right_ear="Suppanomimi",
        left_ring="Petrov Ring",
        right_ring="ilabrat ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }
    sets.TP.Standard.Dancer = {
        head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Taeon Boots", augments={'Accuracy+18 Attack+18','"Dual Wield"+5','DEX+9',}},
        neck="Lissome Necklace",
        waist="Windbuffet Belt +1",
        left_ear="Eabani Earring",
        right_ear="Suppanomimi",
        left_ring="Petrov Ring",
        right_ring="ilabrat ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }

    sets.TP.MidAccuracy = {}
    sets.TP.MidAccuracy.index = {'Other','Ninja','Dancer'}
    sets.TP.MidAccuracy.Other = {
        head={ name="Herculean Helm", augments={'Accuracy+22','Accuracy+25 Attack+25','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'"Triple Atk."+4','AGI+10','Accuracy+11','Attack+15',}},
        neck="Combatant's Torque",
        waist="Windbuffet Belt +1",
        left_ear="Telos Earring",
        right_ear="Digni. Earring",
        left_ring="Petrov Ring",
        right_ring="ilabrat ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }
    sets.TP.MidAccuracy.Ninja = {
        head={ name="Herculean Helm", augments={'Accuracy+22','Accuracy+25 Attack+25','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Taeon Boots", augments={'Accuracy+18 Attack+18','"Dual Wield"+5','DEX+9',}},
        neck="Combatant's Torque",
        waist="Windbuffet Belt +1",
        left_ear="Telos Earring",
        right_ear="Digni. Earring",
        left_ring="Petrov Ring",
        right_ring="ilabrat ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }
    sets.TP.MidAccuracy.Dancer = {
        head={ name="Herculean Helm", augments={'Accuracy+22','Accuracy+25 Attack+25','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Taeon Boots", augments={'Accuracy+18 Attack+18','"Dual Wield"+5','DEX+9',}},
        neck="Combatant's Torque",
        waist="Windbuffet Belt +1",
        left_ear="Eabani Earring",
        right_ear="Suppanomimi",
        left_ring="Petrov Ring",
        right_ring="ilabrat ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }

    sets.TP.HighAccuracy = {}
    sets.TP.HighAccuracy.index = {'Other','Ninja','Dancer'}
    sets.TP.HighAccuracy.Other = {
        head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','AGI+8','Accuracy+12',}},
        neck="Combatant's Torque",
        waist="Kentarch Belt +1",
        left_ear="Telos Earring",
        right_ear="Digni. Earring",
        left_ring="Ramuh Ring +1",
        right_ring="Regal Ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }
    sets.TP.HighAccuracy.Ninja = {
        head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','AGI+8','Accuracy+12',}},
        neck="Combatant's Torque",
        waist="Kentarch Belt +1", 
        left_ear="Telos Earring",
        right_ear="Digni. Earring",
        left_ring="Ramuh Ring +1",
        right_ring="Regal Ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }
    sets.TP.HighAccuracy.Dancer = {
        head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','AGI+8','Accuracy+12',}},
        neck="Combatant's Torque",
        waist="Kentarch Belt +1",
        left_ear="Eabani Earring",
        right_ear="Suppanomimi",
        left_ring="Ramuh Ring +1",
        right_ring="Regal Ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }

    sets.TP.Hybride = {}
    sets.TP.Hybride.index = {'Other','Ninja','Dancer'}
    sets.TP.Hybride.Other = {
        head={ name="Herculean Helm", augments={'Accuracy+22','Accuracy+25 Attack+25','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
        body="Meg. Cuirie +2",
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="Mummu Kecks +2",
        feet={ name="Herculean Boots", augments={'"Triple Atk."+4','AGI+10','Accuracy+11','Attack+15',}},
        neck="Loricate Torque +1",
        waist="Kentarch Belt +1",
        left_ear="Telos Earring",
        right_ear="Genmei Earring",
        left_ring="Patricius Ring",
        right_ring="Defending Ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }
    sets.TP.Hybride.Ninja = {
        head={ name="Herculean Helm", augments={'Accuracy+22','Accuracy+25 Attack+25','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
        body="Meg. Cuirie +2",
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="Mummu Kecks +2",
        feet={ name="Herculean Boots", augments={'"Triple Atk."+4','AGI+10','Accuracy+11','Attack+15',}},
        neck="Loricate Torque +1",
        waist="Kentarch Belt +1",
        left_ear="Telos Earring",
        right_ear="Genmei Earring",
        left_ring="Patricius Ring",
        right_ring="Defending Ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }
    sets.TP.Hybride.Dancer = {
        head={ name="Herculean Helm", augments={'Accuracy+22','Accuracy+25 Attack+25','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
        body="Meg. Cuirie +2",
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="Mummu Kecks +2",
        feet={ name="Herculean Boots", augments={'"Triple Atk."+4','AGI+10','Accuracy+11','Attack+15',}},
        neck="Loricate Torque +1",
        waist="Kentarch Belt +1",
        left_ear="Telos Earring",
        right_ear="Genmei Earring",
        left_ring="Patricius Ring",
        right_ring="Defending Ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }

    sets.Ranged = {}
    sets.Ranged.index = {'Standard','HighAccuracy'}
    sets.Ranged.Standard = {
        head={ name="Arcadian Beret +1", augments={'Enhances "Recycle" effect',}},
        body="Orion Jerkin +2",
        hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
        legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        feet={ name="Herculean Boots", augments={'Rng.Acc.+15 Rng.Atk.+15','Crit.hit rate+4','AGI+6',}},
        neck="Iskur Gorget",
        waist="Yemaya Belt",
        left_ear="Telos Earring",
        right_ear="Enervating Earring",
        left_ring="ilabrat Ring",
        right_ring="Dingir Ring",
        back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10',}},
    }
    sets.Ranged.HighAccuracy = {
        head="Meghanada Visor +2",
        body="Orion Jerkin +2",
        hands={ name="adhemar wristband +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        feet="Orion Socks +2",
        neck="Iskur Gorget",
        waist="Yemaya Belt",
        left_ear="Telos Earring",
        right_ear="Enervating Earring",
        left_ring="Regal Ring",
        right_ring="Hajduk Ring",
        back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10',}},
    }

    --Defence Sets--
    set.PDT = {
        head={ name="Iuitl Headgear +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Dbl.Atk."+1',}},
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +2",
        legs="Meg. Chausses +2",
        feet="Ahosi Leggings",
        neck="Loricate Torque +1",
        waist="Flume Belt",
        left_ear="Infused Earring",
        right_ear="Genmei Earring",
        left_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -5%',}},
        right_ring="Defending Ring",
        back="Solemnity Cape",
    }
    set.MDT = {
        head="Mummu Bonnet +2",
        body="Mummu Jacket +2",
        hands="Kurys Gloves",
        legs="Mummu Kecks +2",
        feet="Ahosi Leggings",
        neck="Warder's Charm",
        waist="Resolute Belt",
        left_ear="Sanare Earring",
        right_ear="Etiolation Earring",
        left_ring="Shadow Ring",
        right_ring="Defending Ring",
        back="Reiki Cloak",
    }


    --Weaponskill Sets--
    sets.WS = {}
    sets.WS.index = {'Attack','Accuracy'}
    WS_ind = 1
                
    sets.Ruinator = {}        
    sets.Ruinator.Attack = {
        head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
        body={ name="Herculean Vest", augments={'Pet: STR+1','STR+9','Quadruple Attack +2','Accuracy+19 Attack+19','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
        hands="Meg. Gloves +2",
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Rawhide Boots", augments={'DEX+10','STR+7','INT+7',}},
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Telos Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
        left_ring="Ifrit Ring +1",
        right_ring="Ifrit Ring +1",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }
    sets.Ruinator.Accuracy = {
        head="Meghanada Visor +2",
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +2",
        legs="Meg. Chausses +2",
        feet="Meg. Jam. +2",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Telos Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
        left_ring="Ramuh Ring +1",
        right_ring="Ramuh Ring +1",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }

    sets.OtherAxe = {}        
    sets.OtherAxe.Attack = {
        head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','MND+2','Weapon skill damage +10%',}},
        body={ name="Herculean Vest", augments={'CHR+2','Mag. Acc.+4','Weapon skill damage +6%','Accuracy+9 Attack+9','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
        hands="Meg. Gloves +2",
        legs={ name="Herculean Trousers", augments={'Accuracy+14','CHR+2','Weapon skill damage +6%','Accuracy+12 Attack+12','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
        feet={ name="Herculean Boots", augments={'Mag. Acc.+21','Weapon skill damage +4%','INT+9','"Mag.Atk.Bns."+10',}},
        neck="Caro Necklace",
        waist="Chiner's Belt +1",
        left_ear="Telos Earring",
        right_ear="Jupiter's Pearl",
        left_ring="Ifrit Ring +1",
        right_ring="Ifrit Ring +1",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }
    sets.OtherAxe.Accuracy = {
        head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','MND+2','Weapon skill damage +10%',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands="Meg. Gloves +2",
        legs={ name="Herculean Trousers", augments={'Accuracy+14','CHR+2','Weapon skill damage +6%','Accuracy+12 Attack+12','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
        feet="Meg. Jam. +2",
        neck="Shifting Neck. +1",
        waist="Chiner's Belt +1",
        left_ear="Telos Earring",
        right_ear="Digni. Earring",
        left_ring="Ramuh Ring +1",
        right_ring="Ramuh Ring +1",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }

    sets.Rampage = {}
    sets.Rampage.Attack = {
        head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
        body="Meg. Cuirie +2",
        hands="Mummu Wrists +1",
        legs="Mummu Kecks +2",
        feet="Mummu Gamash. +2",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Telos Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
        left_ring="Ifrit Ring +1",
        right_ring="Ifrit Ring +1",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }               
    sets.Rampage.Accuracy = {
        head="Mummu Bonnet +2",
        body="Meg. Cuirie +2",
        hands="Mummu Wrists +1",
        legs="Mummu Kecks +2",
        feet="Mummu Gamash. +2",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Telos Earring",
        right_ear="Digni. Earring",
        left_ring="Ramuh Ring +1",
        right_ring="Ramuh Ring +1",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }

    sets.Evisceration = {}
    sets.Evisceration.Attack = {
        head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
        body="Meg. Cuirie +2",
        hands="Mummu Wrists +1",
        legs="Mummu Kecks +2",
        feet="Mummu Gamash. +2",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Jupiter's Pearl",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
        left_ring="Ramuh Ring +1",
        right_ring="Begrudging Ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }               
    sets.Evisceration.Accuracy = {
        head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="Mummu Jacket +2",
        hands="Mummu Wrists +1",
        legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet="Mummu Gamash. +2",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Jupiter's Pearl",
        right_ear="Digni. Earring",
        left_ring="Ramuh Ring +1",
        right_ring="Begrudging Ring",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }


    sets.MagicGun = {}
    sets.MagicGun.Attack = {
        head={ name="Herculean Helm", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Phys. dmg. taken -2%','INT+4','"Mag.Atk.Bns."+15',}},
        body={ name="Samnuha Coat", augments={'Mag. Acc.+13','"Mag.Atk.Bns."+14','"Fast Cast"+3','"Dual Wield"+4',}},
        hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
        legs={ name="Herculean Trousers", augments={'Weapon skill damage +5%','INT+10','Mag. Acc.+14','"Mag.Atk.Bns."+15',}},
        feet={ name="Herculean Boots", augments={'Mag. Acc.+21','Weapon skill damage +4%','INT+9','"Mag.Atk.Bns."+10',}},
        neck="Sanctity Necklace",
        waist="Eschan Stone",
        left_ear="Friomisi Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
        right_ring="Acumen Ring",
        left_ring="Dingir Ring",
        back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }
    sets.MagicGun.Accuracy = {
        head={ name="Herculean Helm", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Phys. dmg. taken -2%','INT+4','"Mag.Atk.Bns."+15',}},
        body={ name="Samnuha Coat", augments={'Mag. Acc.+13','"Mag.Atk.Bns."+14','"Fast Cast"+3','"Dual Wield"+4',}},
        hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+29','Mag. Acc.+11 "Mag.Atk.Bns."+11','Accuracy+14 Attack+14',}},
        legs={ name="Herculean Trousers", augments={'Weapon skill damage +5%','INT+10','Mag. Acc.+14','"Mag.Atk.Bns."+15',}},
        feet={ name="Herculean Boots", augments={'Mag. Acc.+21','Weapon skill damage +4%','INT+9','"Mag.Atk.Bns."+10',}},
        neck="Sanctity Necklace",
        waist="Eschan Stone",
        left_ear="Hermetic Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
        right_ring="Vertigo Ring",
        left_ring="Dingir Ring",
        back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }

    sets.OtherWS = {}        
    sets.OtherWS.Attack = {
        head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body={ name="Herculean Vest", augments={'CHR+2','Mag. Acc.+4','Weapon skill damage +6%','Accuracy+9 Attack+9','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Rawhide Boots", augments={'DEX+10','STR+7','INT+7',}},
        neck="Caro Necklace",
        waist="Grunfeld Rope",
        left_ear="Telos Earring",
        right_ear="Brutal Earring",
        left_ring="Ifrit Ring +1",
        right_ring="Ifrit Ring +1",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }    
    sets.OtherWS.Accuracy = {
        head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','MND+2','Weapon skill damage +10%',}},
        body={ name="Herculean Vest", augments={'"Triple Atk."+2','Accuracy+16','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
        hands={ name="Adhemar Wristbands +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Adhemar Kecks", augments={'DEX+10','AGI+10','Accuracy+15',}},
        feet={ name="Rawhide Boots", augments={'DEX+10','STR+7','INT+7',}},
        neck="Combatant's Torque",
        waist="Grunfeld Rope",
        right_ear="Digni. Earring",
        left_ear="Telos Earring",
        left_ring="Ramuh Ring +1",
        right_ring="Ramuh Ring +1",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }

    sets.RangedWS = {}        
    sets.RangedWS.Attack = {
        head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','MND+2','Weapon skill damage +10%',}},
        body={ name="Herculean Vest", augments={'CHR+2','Mag. Acc.+4','Weapon skill damage +6%','Accuracy+9 Attack+9','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
        hands="Meg. Gloves +2",
        legs={ name="Herculean Trousers", augments={'Accuracy+14','CHR+2','Weapon skill damage +6%','Accuracy+12 Attack+12','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
        feet={ name="Herculean Boots", augments={'Mag. Acc.+21','Weapon skill damage +4%','INT+9','"Mag.Atk.Bns."+10',}},
        neck="Combatant's Torque",
        waist="Yemaya Belt",
        left_ear="Telos Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
        left_ring="Dingir Ring",
        right_ring="Garuda Ring",
        back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
    }    
    sets.RangedWS.Accuracy = {
        head="Meghanada Visor +2",
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +2",
        legs="Orion Braccae +2",
        feet="Orion Socks +2",
        neck="Combatant's Torque",
        waist="Yemaya Belt",
        left_ear="Telos Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
        left_ring="Regal Ring",
        right_ring="Hajduk Ring",
        back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
    }

    sets.RangedWScrit = {}        
    sets.RangedWScrit.Attack = {
        head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
        body="Meg. Cuirie +2",
        hands="Mummu Wrists +1",
        legs="Darraigner's Brais",
        feet="Mummu Gamash. +2",
        neck="Combatant's Torque",
        waist="Yemaya Belt",
        left_ear="Telos Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
        left_ring="Dingir Ring",
        right_ring="Begrudging Ring",
        back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
    }    
    sets.RangedWScrit.Accuracy = {
        head="Mummu Bonnet +2",
        body="Meg. Cuirie +2",
        hands="Mummu Wrists +1",
        legs="Mummu Kecks +2",
        feet="Mummu Gamash. +2",
        neck="Combatant's Torque",
        waist="Yemaya Belt",
        left_ear="Telos Earring",
        right_ear="Digni. Earring",
        left_ring="Hajduk Ring",
        right_ring="Hajduk Ring",
        back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
    }

    sets.AeolianEdge = {}
    sets.AeolianEdge = {
        head={ name="Herculean Helm", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Phys. dmg. taken -2%','INT+4','"Mag.Atk.Bns."+15',}},
        body={ name="Samnuha Coat", augments={'Mag. Acc.+13','"Mag.Atk.Bns."+14','"Fast Cast"+3','"Dual Wield"+4',}},
        hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
        legs="Gyve Trousers",
        feet={ name="Herculean Boots", augments={'Mag. Acc.+21','Weapon skill damage +4%','INT+9','"Mag.Atk.Bns."+10',}},
        neck="Baetyl Pendant",
        waist="Eschan Stone",
        left_ear="Friomisi Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
        left_ring="Dingir Ring",
        right_ring="Ramuh Ring +1",
        back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 1155 Val: 4',}},
    }

    --Job Ability Sets--
    sets.JA = {}
    sets.JA.EES = {legs="Arcadian Braccae +1",}
    sets.JA.Scavange = {feet="Orion Socks +2",}
    sets.JA.SBind = {hands="Meg. Chausses +3",}
    sets.JA.Camo = {body="Orion Jerkin +2",}
    sets.JA.SShot = {legs="Orion Braccae +2",}
    sets.JA.Barrage = {hands="Meg. Chausses +3",}
    sets.JA.VShot = {body="Amini Caban +1",}
    sets.JA.BShot = {hands="Amini glovelettes +1",}


    --Other special gear--
    sets.obi = {
        waist="Hachirin-no-Obi",
    }

    sets.lightnuke = {
        left_ring="Weatherspoon Ring",
    }

    --Precast Sets--
    sets.snapshot = {
        head="Amini Gapette +1",
        body={ name="Skopos Jerkin", augments={'"Snapshot"+5','VIT+1','Ice resistance-2 Wind resistance+2',}},
        hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
        legs="Nahtirah Trousers",
        feet="Meg. Jam. +2",
        waist="Impulse Belt",
        back={ name="Belenus's Cape", augments={'"Snapshot"+10',}},
    }    
        
    send_command('input /macro book 1;wait .1;input /macro set 1')    

end

function is_ranged_weaponskill(spell)
    return spell.english == "Last Stand" 
        or spell.english == "Coronach" 
        or spell.english == "Wildfire" 
        or spell.english == "Trueflight" 
        or spell.english == "Detonator" 
        or spell.english == "Heavy Shot" 
        or spell.english == "Slug Shot" 
        or spell.english == "Sniper Shot" 
        or spell.english == "Split Shot" 
        or spell.english == "Hot Shot"
        or spell.english == "Jishun's Radiance" 
        or spell.english == "Refulgent Arrow" 
        or spell.english == "Empyreal Arrow" 
        or spell.english == "Arching Arrow" 
        or spell.english == "Sidewinder" 
        or spell.english == "Dulling Arrow" 
        or spell.english == "Piercing Arrow" 
        or spell.english == "Flaming Arrow"
end

function precast(spell)
    if spell.action_type == 'Ranged Attack' then
        equip(sets.snapshot)

        return
    end

    if spell.type == 'WeaponSkill' then 
        if player.tp < 800 then 
            return
        end

        if is_ranged_weaponskill(spell) then 
            if spell.target.distance <= 21.5 then 
                cancel_spell(); 
                windower.add_to_chat(121, 'Canceled '..spell.name..' '..spell.target.name..' is Too Far')

                return
            end

            if spell.english == "Trueflight" then 
                equip(set_combine(sets.MagicGun[sets.WS.index[WS_ind]], sets.lightnuke))

                if world.day_element == 'Light' or world.weather_element == 'Light' then 
                    equip(set_combine(sets.obi, sets.lightnuke))
                end

                return
            end

            if spell.english == "Wildfire" or spell.english == "Hot Shot" or spell.english == "Flaming Arrow" then 
                equip(sets.MagicGun[sets.WS.index[WS_ind]])

                if world.day_element == 'Fire' or world.weather_element == 'Fire'
                    then equip(sets.obi)
                end

                return
            end

            if spell.english == "Jishun's Radiance" or spell.english == "Heavy Shot" or spell.english == "Arching Arrow" then 
                equip(sets.RangedWScrit[sets.WS.index[WS_ind]])

                return end
            end

            equip(sets.RangedWS[sets.WS.index[WS_ind]])

            return
        end 

        if spell.target.distance > 5.5 then 
            cancel_spell(); 
            windower.add_to_chat(121, 'Canceled '..spell.name..' '..spell.target.name..' is Too Far')

            return
        end

        if spell.english == "Blast Shot" or spell.english == "Blast Arrow" or spell.english == "Numbing Shot" then 
            equip(sets.RangedWS[sets.WS.index[WS_ind]])

            return
        end

        if spell.english == 'Ruinator' then 
            equip(sets.Ruinator[sets.WS.index[WS_ind]])

            return
        end

        if spell.english == 'Rampage' then
            equip(sets.Rampage[sets.WS.index[WS_ind]])

            return
        end

        if spell.english == 'Aeolian Edge' then 
            equip(sets.AeolianEdge)

            if world.day_element == 'Wind' or world.weather_element == 'Wind' then 
                equip(sets.obi)
            end

            return
        end

        if spell.english == 'Evisceration' then 
            equip(sets.Evisceration[sets.WS.index[WS_ind]])

            return
        end

        if spell.english == 'Bora Axe' or spell.english == 'Decimation' or spell.english == 'Avalanche' or spell.english == 'Gale Axe' or spell.english == 'Smash Axe' or spell.english == 'Raging Axe' then 
            equip(sets.OtherAxe[sets.WS.index[WS_ind]])

            return
        end
        
        equip(sets.OtherWS[sets.WS.index[WS_ind]])

        return
    end

    if spell.english == "Scavange" then 
        equip(sets.JA.Scavange)

        return
    end

    if spell.english == "Eagle Eye Shot" then 
        equip(sets.Ranged[sets.Ranged.index[WS_ind]], sets.JA.EES)

        return
    end

    if spell.english == "Shadowbind" then 
        equip(sets.JA.SBind)

        return
    end

    if spell.english == "Camouflage" then 
        equip(sets.JA.Camo)

        return
    end

    if spell.english == "Sharpshot" then 
        equip(sets.JA.SShot)

        return
    end 
    
    if spell.english == "Bounty Shot" then 
        equip(sets.JA.BShot)

        return
    end
end
    
function midcast(spell,act)
    if spell.action_type == 'Ranged Attack' then 
        equip(sets.Ranged[sets.Ranged.index[WS_ind]])

        if buffactive['Velocity Shot'] then 
            equip(sets.JA.VShot)
        end

        if buffactive['Barrage'] then 
            equip(sets.JA.Barrage)
        end
    end
end

function aftercast(spell)
    if player.status == 'Engaged' then 
        equip(
            sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
            sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
            sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
            sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
        )

        return
    end

    equip(
        sets.Idle[sets.Idle.index[Idle_ind]],
        sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
        sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
    )
end

function status_change(new, old)
    if new == 'Engaged' then 
        equip(
            sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
            sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
            sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
            sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
        )

        return
    end

    equip(
        sets.Idle[sets.Idle.index[Idle_ind]],
        sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
        sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
    )
end

function self_command(command)
    if command == 'toggle TP set' then 
        TP_ind = TP_ind +1

        if TP_ind > #sets.TP.index then 
            TP_ind = 1 
        end

        send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')

        if TP_ind > 1 then 
            WS_ind = 2
        else 
            WS_ind = 1 
        end

        send_command('@input /echo <----- WS set changed to '..sets.WS.index[WS_ind]..' ----->')
        send_command('@input /echo <----- SJ Set changed to '..sets.SJ.index[SJ_ind]..' ----->')

        equip(
            sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
            sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
            sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
            sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
        )

        return
    end

    if command == 'toggle SJ set' then 
        SJ_ind = SJ_ind +1

        if SJ_ind > #sets.SJ.index then 
            SJ_ind = 1
        end

        send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
        send_command('@input /echo <----- WS set changed to '..sets.WS.index[WS_ind]..' ----->')
        send_command('@input /echo <----- SJ Set changed to '..sets.SJ.index[SJ_ind]..' ----->')

        equip(
            sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
            sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
            sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
            sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
        )

        return
    end

    if command == 'toggle Melee Weapon set' then 
        Wm_ind = Wm_ind +1

        if Wm_ind > #sets.Weapon_melee.index then 
            Wm_ind = 1
        end

        send_command('@input /echo <----- Melee weapon changed to '..sets.Weapon_melee.index[Wm_ind]..' ----->')
        send_command('@input /echo <----- Range weapon changed to '..sets.Weapon_range.index[Wr_ind]..' ----->')

        equip(
            sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
            sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
            sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
            sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
        )

        return
    end

    if command == 'toggle Range Weapon set' then 
        Wr_ind = Wr_ind +1

        if Wr_ind > #sets.Weapon_range.index then 
            Wr_ind = 1
        end

        send_command('@input /echo <----- Melee weapon changed to '..sets.Weapon_melee.index[Wm_ind]..' ----->')
        send_command('@input /echo <----- Range weapon changed to '..sets.Weapon_range.index[Wr_ind]..' ----->')

        equip(
            sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
            sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
            sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
            sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
        )

        return
    end

    if command == 'toggle DW set' then 
        DW_mode_ind = DW_mode_ind +1

        if DW_mode_ind > #sets.DW_mode.index then 
            DW_mode_ind = 1
        end

        send_command('@input /echo <----- DW status changed to '..sets.DW_mode.index[DW_mode_ind]..' ----->')
        
        equip(
            sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
            sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
            sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
            sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
        )

        return
    end

    if command == 'toggle idle set' then
        Idle_ind = Idle_ind +1

        if Idle_ind > #sets.Idle.index then 
            Idle_ind = 1 
        end

        send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
        
        equip(
            sets.Idle[sets.Idle.index[Idle_ind]],
            sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
            sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
        )

        return
    end

    if command == 'toggle pdt set' then
        equip(set.PDT)
        send_command('@input /echo <----- PDT set Equipped ----->')

        return
    end

    if command == 'toggle mdt set' then
        equip(set.MDT)
        send_command('@input /echo <----- MDT set Equipped ----->')

        return
    end

    if command == 'status check' then 
        send_command('@input /echo <----- Melee weapon changed to '..sets.Weapon_melee.index[Wm_ind]..' ----->')
        send_command('@input /echo <----- Range weapon changed to '..sets.Weapon_range.index[Wr_ind]..' ----->')
        send_command('@input /echo <----- SJ Set changed to '..sets.SJ.index[SJ_ind]..' ----->')
        send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
        send_command('@input /echo <----- WS set changed to '..sets.WS.index[WS_ind]..' ----->')

        return
    end
end