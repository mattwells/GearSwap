--TP set toggle input: //gs c toggle TP set----1 Standard, 2 Solo, 3 Marches, 4 AccuracyLite, 5 AccuracyMax, 6 DT, 7 DTAccuracy--
--Idle set toggle input: //gs c toggle Idle set----1 Standard, 2 DT--
--Requiescat set toggle 	: //gs c toggle Req set----1 Attack, 2 Accuracy--
--Chant du Cygne set toggle Winput: //gs c toggle CDC set----1 Attack, 2 Accuracy--

function get_sets()
	Gear_Debug = 0
	
	
	CDC_Body = {name="Herculean Vest", augments={'Accuracy+20','Crit. hit damage +4%','DEX+10','Attack+12',}}
	ACC_Body = {name="Herculean Vest", augments={'Accuracy+21 Attack+21','"Triple Atk."+1','STR+1','Accuracy+14','Attack+13',}}
	MAB_Legs = {name="Herculean Trousers", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Magic dmg. taken -4%','"Mag.Atk.Bns."+13',}}
	WSD_Back = {name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}}
	AGI_Back = {name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Snapshot"+10',}}
	--Idle Sets--	
	sets.Idle = {}
	
	sets.Idle.index = {'Standard','DT'}
	Idle_ind = 1			
	
	sets.Idle.Standard = {head="Iuitl headgear +1",neck="Loricate torque +1", ear1="Sanare earring", ear2="Moonshade earring",
		              body="Hashishin mintan +1",hands="Umuthi gloves",ring1="Patricius Ring",ring2="Defending Ring",
			      back="Repulse mantle",waist="Flume belt",legs="Carmine cuisses +1",feet="Iuitl gaiters +1"}
						  
	sets.Idle.DT = {head="Iuitl headgear +1",neck="Loricate torque +1", ear1="Sanare earring", ear2="Moonshade earring",
		              body="Hashishin mintan +1",hands="Umuthi gloves",ring1="Patricius Ring",ring2="Defending Ring",
			      back="Repulse mantle",waist="Flume belt",legs="Carmine cuisses +1",feet="Iuitl gaiters +1"}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {'Standard', 'Solo', 'Marches', 'AccuracyLite', 'AccuracyFull', 'DT', 'DTAccuracy'}
	--1=Standard, 2=Solo, 3=Marches, 4=AccuracyLite, 5=AccuracyFull, 6=DT, 7=DTAccuracy--
	TP_ind = 1
	TP_ind2 = 1
	CP_Mode = 0
	
	sets.TP.Standard = {head="Dampening tam",neck="Lissome necklace", ear1="Brutal earring", ear2="Suppanomimi",
			    body="Adhemar jacket",hands="Adhemar wristbands",ring1="Epona's ring",ring2="Petrov ring",
			    back=STR_Back,waist="Windbuffet belt +1",legs="Samnuha tights",feet="Herculean boots"}
						
	sets.TP.Marches = sets.TP.Standard
					   		
	sets.TP.Solo = sets.TP.Standard
					
	sets.TP.AccuracyLite = {head="Dampening tam",neck="Lissome necklace", ear1="Cessance earring", ear2="Suppanomimi",
			    body=ACC_Body,hands="Herculean gloves",ring1="Epona's ring",ring2="Rajas ring",
			    back=DEX_Back,waist="Windbuffet belt +1",legs="Carmine cuisses +1",feet="Carmine greaves +1"}
	
	sets.TP.AccuracyFull = {head="Carmine mask +1",neck="Subtlety Spec.", ear1="Zennaroi earring", ear2="Suppanomimi",
			    body=ACC_Body,hands="Herculean gloves",ring1="Rajas ring",ring2="Ramuh ring +1",
			    back=DEX_Back,waist="Kentarch belt +1",legs="Carmine cuisses +1",feet="Carmine greaves +1"}
							
	sets.TP.DT = {head="Iuitl headgear +1",neck="Loricate torque +1", ear1="Sanare earring", ear2="Suppanomimi",
		      body="Emet Harness +1",hands="Umuthi gloves",ring1="Patricius Ring",ring2="Defending Ring",
		      back="Agema Cape",waist="Flume belt",legs="Herculean trousers",feet="Iuitl gaiters +1"}
				  
	sets.TP.DTAccuracy = {head="Iuitl headgear +1",neck="Loricate torque +1", ear1="Sanare earring", ear2="Suppanomimi",
		      body="Emet Harness +1",hands="Umuthi gloves",ring1="Patricius Ring",ring2="Defending Ring",
		      back="Agema Cape",waist="Flume belt",legs="Herculean trousers",feet="Iuitl gaiters +1"}
			  
	sets.Snapshot = {head="Meghanada Visor +1",body="Oshosi Vest",hands="Carmine finger gauntlets +1",legs="Oshosi trousers",
				feet="Meghanada jambeaux +1",neck="Gaudryi Necklace",waist="Eschan Stone",left_ear="Telos Earring",
				back=AGI_Back,right_ear="Neritic Earring",left_ring="Ilabrat Ring",right_ring="Paqichikaji Ring",}
				
	sets.Shooting = {head="Meghanada Visor +1",body="Oshosi Vest",hands="Meghanada gloves +2",legs="Oshosi trousers",
				feet="Meghanada jambeaux +1",neck="Gaudryi Necklace",waist="Eschan Stone",left_ear="Telos Earring",
				back=AGI_Back,right_ear="Neritic Earring",left_ring="Ilabrat Ring",right_ring="Paqichikaji Ring",}
	
	sets.holywater = {ring1="Purity Ring",ring2="Blenmot's Ring"}

	--Weaponskill Sets--
	sets.WS = {}	
	
	
	sets.WS.LS = {head="Meghanada visor +1",neck="Fotia gorget", ear1="Telos earring", ear2="Moonshade earring",
			    body="Meghanada cuirie +1",hands="Meghanada gloves +2",ring1="Ilabrat ring",ring2="Regal ring",
			    back=WSD_Back,waist="Fotia belt",legs="Meghanada chausses +1",feet="Meghanada jambeaux +1"}
	sets.WS.TF = {head="Herculean helm",neck="Sanctity necklace",ear1="Friomisi earring",ear2="Moonshade earring",
			 	  body="Samnuha coat",hands="Carmine finger gauntlets +1",ring1="Dingir ring",ring2="Weatherspoon ring",
			   	  back=WSD_Back,waist="Eschan stone",legs=MAB_Legs,feet="Adhemar gamashes"}
	
	sets.WS.Detonator = {head="Meghanada visor +1",neck="Fotia gorget", ear1="Ishvara earring", ear2="Moonshade earring",
			    body="Meghanada cuirie +1",hands="Meghanada gloves +2",ring1="Ilabrat ring",ring2="Regal ring",
			    back=WSD_Back,waist="Fotia belt",legs="Meghanada chausses +1",feet="Meghanada jambeaux +1"}
	
	sets.WS.HS = {head="Meghanada visor +1",neck="Fotia gorget", ear1="Ishvara earring", ear2="Moonshade earring",
			    body="Meghanada cuirie +1",hands="Meghanada gloves +2",ring1="Ilabrat ring",ring2="Regal ring",
			    back=WSD_Back,waist="Fotia belt",legs="Meghanada chausses +1",feet="Meghanada jambeaux +1"}						
								
	--Blue Magic Sets--
	sets.BlueMagic = {}

	--Job Ability Sets--
    sets.JA = {}
    sets.JA.EES = {legs="Arcadian Braccae +1",}
    sets.JA.Scavange = {feet="Orion Socks +2",}
    sets.JA.SBind = {hands="Meg. Chausses +3",}
    sets.JA.Camo = {body="Orion Jerkin +2",}
    sets.JA.SShot = {legs="Orion Braccae +2",}
    sets.JA.Barrage = {hands="Orion Bracers +1",}
    sets.JA.VShot = {body="Amini Caban +1",}
    sets.JA.BShot = {hands="Amini glovelettes +1",}		
			
	--Precast Sets--
	sets.precast = {}
	sets.precast.FC = {}
end

function precast(spell)
	if spell.name == 'Holy Water' then
		equip(sets.holywater)
		send_command('@input /echo Holy Water Set')
	else
	end
			
	if spell.action_type == 'Ranged Attack' then
			equip(sets.Snapshot)
			send_command('@input /echo Snapshot Set')
	elseif spell.english == 'Last Stand' then
			equip(sets.WS.LS)
			send_command('@input /echo Last Stand Set')
	elseif spell.english == 'Trueflight' then
			equip(sets.WS.TF)
			send_command('@input /echo Trueflight Set')
	elseif spell.english == 'Heavy Shot' then
			equip(sets.WS.HS)
			send_command('@input /echo Heavy Shot Set')
	elseif spell.english == 'Detonator' then
			equip(sets.WS.Detonator)
			send_command('@input /echo Detonator Set')		
	end

    if spell.english == "Scavange" then 
        equip(sets.JA.Scavange)
		send_command('@input /echo Scavange Set')

        return
    end

    if spell.english == "Eagle Eye Shot" then 
		equip(sets.Shooting, sets.JA.EES)
		send_command('@input /echo Eagle Eye Shot Set')

        return
    end

    if spell.english == "Shadowbind" then 
		equip(sets.JA.SBind)
		send_command('@input /echo Shadowbind Set')

        return
    end

    if spell.english == "Camouflage" then 
		equip(sets.JA.Camo)
		send_command('@input /echo Camouflage Set')

        return
    end

    if spell.english == "Sharpshot" then 
		equip(sets.JA.SShot)
		send_command('@input /echo Sharpshot Set')

        return
    end 
    
    if spell.english == "Bounty Shot" then 
		equip(sets.JA.BShot)
		send_command('@input /echo Bounty Shot Set')

        return
    end
end
	
function midcast(spell,act)
	if spell.action_type == 'Ranged Attack' then
		equip(sets.Shooting)
		send_command('@input /echo Shooting Set')
	end

	if buffactive['Barrage'] then 
		equip(sets.JA.Barrage)
	end
end

function aftercast(spell)
	if player.status == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind2]])
	else
		if Gear_Debug == 0 then
			equip(sets.Idle.Standard)
			send_command('@input /echo Idle Set')
		else
		end
	end
end

function status_change(new,old)
	if new == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind2]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end

function self_command(command)
	if command == 'toggle TP set' then
		TP_ind = TP_ind +1
		if TP_ind > #sets.TP.index then TP_ind = 1 end
		send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == 'toggle Idle set' then
		Idle_ind = Idle_ind +1
		if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
		send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == 'toggle Req set' then
		Requiescat_ind = Requiescat_ind +1
		if Requiescat_ind > #sets.Requiescat.index then Requiescat_ind = 1 end
		send_command('@input /echo <----- Requiescat Set changed to '..sets.Requiescat.index[Requiescat_ind]..' ----->')
	elseif command == 'toggle CDC set' then
		ChantDuCygne_ind = ChantDuCygne_ind +1
		if ChantDuCygne_ind > #sets.ChantDuCygne.index then ChantDuCygne_ind = 1 end
		send_command('@input /echo <----- Chant du Cygne Set changed to '..sets.ChantDuCygne.index[ChantDuCygne_ind]..' ----->')
	elseif command == 'equip TP set' then
		TP_ind = 1
		TP_ind2 = 1
		equip(sets.TP[sets.TP.index[TP_ind2]])
		send_command('@input /echo Changed to Standard mode')
	elseif command == 'equip Idle set' then
		TP_ind = 1
		TP_ind2 = 1
		equip(sets.Idle.Standard)
		send_command('@input /echo Changed to Idle')
	elseif command == 'equip Acc-Lite set' then
		TP_ind = 4
		TP_ind2 = 4
		equip(sets.TP[sets.TP.index[TP_ind2]])
		send_command('@input /echo Changed to Acc-Lite mode')
	elseif command == 'equip Acc-Full set' then
		TP_ind = 5
		TP_ind2 = 5		
		equip(sets.TP[sets.TP.index[TP_ind2]])
		send_command('@input /echo Changed to Acc-Full mode')
	elseif command == 'equip DT set' then
		TP_ind = 6		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Changed to DT mode')
	elseif command == 'equip set' then				
		equip(sets.TP[sets.TP.index[TP_ind2]])
		send_command('@input /echo Current Set '..sets.TP.index[TP_ind2]..' Equiped')
	elseif command == 'enable CP mode' then				
		CP_Mode = 1
		equip({back="Mercistopins mantle"})
		send_command('@input CP Mode enabled')
	elseif command == 'change debug mode' then
		if Gear_Debug == 1 then
			Gear_Debug = 0
			send_command('@input /echo Debug Mode Set to 0')
		else
			Gear_Debug = 1
			send_command('@input /echo Debug Mode Set to 1')
		end
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
 end
end

function weathercheck(spell_element)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip({waist="Hachirin-no-Obi"})
		send_command('@input /echo Using Element Obi')
	else		
	end
end

windower.register_event('zone change', function()
    equip(sets.Idle.Standard)	
end)