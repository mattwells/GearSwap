--GearSwap Version 0.823
--File Created 2-16-14
--2-21-14 [For the buff "Battlefield" you'll see you can use a echo or the actual JA Scavenge for when 
--exiting a battlefield. By default you will see the echo when exiting a battlefield. Change accordingly.]
-- IMPORTANT: Make sure to also get the Mote-Include.lua file (and its supplementary files) to go with this.
 
-- Initialization function for this job file.
function get_sets()
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

function get_sets()
	TP_Index = 1
	Idle_Index = 1	
	DefensePDT_Index = 1
	DefenseMDT_Index = 1
	Midshot_Index = 1
	Barrage_Index = 1
	Coronach_Index = 1
	LS_Index = 1 --Last Stand
	NA_Index = 1 --Namas Arrow
	JR_Index = 1 --Jishnu's Radiance
	SW_Index = 1 --Sidewinder
	
	--Default Macro Set for RNG
    send_command('input /macro book 4;wait .1;input /macro set 1')
	
	
	--PreSets Below (Snapshot/JA's)
	sets.precast = {}
	sets.precast.bullet = {ammo="Achiyalabopa Bullet"}
	sets.precast.arrow = {ammo="Achiyal. Arrow"}
	sets.precast.trialsammo = {ammo="Gargouille Arrow"}
	sets.precast['Double Shot'] = {head="Sylvan Gapette +2"}
	sets.precast['Velocity Shot'] = {body="Sylvan Caban +2"}
	sets.precast['Camouflage'] = {body="Orion Jerkin +1"}	
	sets.precast['Bounty Shot'] = {hands="Syl. Glvltte. +2"}
	sets.precast['Sharpshot'] = {legs="Orion Braccae +1"}
	sets.precast['Scavenge'] = {feet="Orion socks +1"}
	sets.precast['Shadowbind'] = {hands="Orion Bracers +1"}
	
	sets.precast['Eagle Eye Shot'] = {
		head="Orion Beret +1", neck="Rancor Collar", ear1="Vulcan's pearl", ear2="Vulcan's pearl",
		body="Kyujutsugi", hands="Orion Bracers +1", ring1="Ifrit Ring", ring2="Ifrit Ring +1",
		back="Buquwik cape", waist="Elanid belt", legs="Arcadian Braccae +1", feet="Orion Socks +1"
	}
						
	sets.precast.PreShot = {
		head="Orion Beret +1", body="Arcadian jerkin +1",
		hands="Iuitl Wristbands +1",
		waist="Impulse Belt", legs="Nahtirah Trousers", feet="Arcadian socks +1"
	}
		
	-- Magic Sets Below		
	sets.precast.FastCast = {
		head="Arcadian Beret +1", neck="Twilight Torque", 
		hands="Iuitl Wristbands +1", ring1="Defending Ring", ring2="Dark Ring",
		back="Shadow Mantle", legs="Osmium cuisses", feet="Orion socks +1"
	}
	
	sets.precast.Utsusemi = set_combine(sets.precast.FastCast,{neck="Magoraga Beads"})		
						
	--Midshot Sets Below
	Midshot_Set_Names = {'LightAcc','FullAcc','STP'}
	sets.Midshot = {}
	sets.Midshot.LightAcc = {
		head="Arcadian beret +1", neck="Gaudryi Necklace", ear1="Clearview Earring", ear2="Volley Earring",
		body="Kyujutsugi", hands="Manibozho Gloves", ring1="Rajas Ring", ring2="Paqichikaji Ring",
		back="Lutian Cape", waist="Elanid Belt", legs="Orion Braccae +1", feet="Orion Socks +1"
	}
				
	sets.Midshot.FullAcc = {
		head="Arcadian beret +1", neck="Iqabi Necklace", ear1="Clearview Earring", ear2="Volley Earring",
		body="Orion Jerkin +1", hands="Syl. Glvltte. +2", ring1="Hajduk ring", ring2="Paqichikaji Ring",
		back="Lutian Cape", waist="Elanid Belt", legs="Orion Braccae +1", feet="Orion Socks +1"
	}
		
	sets.Midshot.STP = {
		head="Arcadian beret +1", neck="Ocachi Gorget", ear1="Tripudio Earring", ear2="Volley Earring",
		body="Kyujutsugi", hands="Manibozho Gloves", ring1="Paqichikaji Ring", ring2="Rajas Ring",
		back="Sylvan chlamys", waist="Elanid Belt", legs="Nahtirah Trousers", feet="Arcadian Socks +1"
	}

	--Barrage Sets Below
	Barrage_Set_Names = {'Barrage'}
	sets.Barrage = {}
	sets.Barrage.Barrage = {
		head="Umbani Cap", neck="Rancor Collar", ear1="Clearview Earring", ear2="Volley Earring",
		body="Kyujutsugi", hands="Orion Bracers +1", ring1="Ifrit Ring +1", ring2="Paqichikaji Ring",
		back="Lutian Cape", waist="Elanid Belt", legs="Desultor Tassets", feet="Orion Socks +1"
	}
	
	-- Coronach Sets Below
	Coronach_Set_Names = {'Normal','Acc','Atk'}
	sets.Coronach = {}
	sets.Coronach.Normal = {
		head="Orion Beret +1", neck="Thunder Gorget", ear1="Flame pearl", ear2="Flame pearl",
		body="Kyujutsugi", hands="Manibozho Gloves", ring1="Strigoi Ring", ring2="Pyrosoul Ring",
		back="Libeccio Mantle", waist="Thunder belt", legs="Nahtirah Trousers", feet="Orion Socks +1"
	}

	sets.Coronach.Acc = {
		head="Orion Beret +1", neck="Thunder Gorget", ear1="Flame pearl", ear2="Flame pearl",
		body="Kyujutsugi", hands="Manibozho Gloves", ring1="Hajduk ring", ring2="Paqichikaji Ring",
		back="Libeccio Mantle", waist="Thunder belt", legs="Thurandaut Tights +1", feet="Orion Socks +1"
	}
						
	sets.Coronach.Atk = {
		head="Orion Beret +1", neck="Ocachi Gorget", ear1="Flame pearl", ear2="Flame pearl",
		body="Kyujutsugi", hands="Manibozho Gloves", ring1="Strigoi Ring", ring2="Pyrosoul Ring",
		back="Libeccio Mantle", waist="Prosilio belt", legs="Nahtirah Trousers", feet="Orion Socks +1"
	}
	
	-- Last Stand Sets Below
	LS_Set_Names = {'Normal','Acc','Atk'}
	sets.LS = {}
	sets.LS.Normal = {
		head="Orion Beret +1", neck="Light Gorget", ear1="Flame pearl", ear2="Sylvan Earring",
		body="Kyujutsugi", hands="Manibozho Gloves", ring1="Stormsoul Ring", ring2="Pyrosoul Ring",
		back="Libeccio Mantle", waist="Light belt", legs="Nahtirah Trousers", feet="Orion Socks +1"
	}

	sets.LS.Acc = {
		head="Orion Beret +1", neck="Light Gorget", ear1="Clearview Earring", ear2="Volley Earring",
		body="Kyujutsugi", hands="Manibozho Gloves", ring1="Hajduk ring", ring2="Paqichikaji Ring",
		back="Libeccio Mantle", waist="Light belt", legs="Thurandaut Tights +1", feet="Orion Socks +1"}
						
	sets.LS.Atk = {
		head="Orion Beret +1",
		neck="Ocachi Gorget",
		ear1="Flame pearl",
		ear2="Flame pearl",
		body="Kyujutsugi",
		hands="Manibozho Gloves",
		ring1="Strigoi Ring",
		ring2="Pyrosoul Ring",
		back="Libeccio Mantle",
		waist="Prosilio belt",
		legs="Nahtirah Trousers",
		feet="Orion Socks +1"}
	
	-- Namas Arrow Sets Below
	NA_Set_Names = {'Normal','Acc','Atk'}
	sets.NA = {}
	sets.NA.Normal = {
		head="Arcadian Beret +1",
		neck="Light Gorget",
		ear1="Vulcan's pearl",
		ear2="Vulcan's pearl",
		body="Kyujutsugi",
		hands="Arc. Bracers +1",
		ring1="Ifrit Ring +1",
		ring2="Ifrit Ring",
		back="Buquwik Cape",
		waist="Light belt",
		legs="Nahtirah Trousers",
		feet="Arcadian Socks +1"}

	sets.NA.Acc = {
		head="Arcadian Beret +1",
		neck="Light Gorget",
		ear1="Vulcan's pearl",
		ear2="Vulcan's pearl",
		body="Kyujutsugi",
		hands="Arc. Bracers +1",
		ring1="Ifrit Ring +1",
		ring2="Ifrit Ring",
		back="Buquwik Cape",
		waist="Light belt",
		legs="Nahtirah Trousers",
		feet="Arcadian Socks +1"}			
		
	sets.NA.Atk = {
		head="Arcadian Beret +1",
		neck="Light Gorget",
		ear1="Vulcan's pearl",
		ear2="Vulcan's pearl",
		body="Kyujutsugi",
		hands="Arc. Bracers +1",
		ring1="Ifrit Ring +1",
		ring2="Ifrit Ring",
		back="Buquwik Cape",
		waist="Light belt",
		legs="Nahtirah Trousers",
		feet="Arcadian Socks +1"}
		
	-- Jishnu's Radiance Sets Below
	JR_Set_Names = {'Normal','Acc','Atk'}
	sets.JR = {}
	sets.JR.Normal = {
		head="Uk'uxkaj cap",
		neck="Light Gorget",
		ear1="Flame pearl",
		ear2="Flame pearl",
		body="Kyujutsugi",
		hands="Orion Bracers +1",
		ring1="Rajas Ring",
		ring2="Pyrosoul Ring",
		back="Libeccio Mantle",
		waist="Light belt",
		legs="Nahtirah Trousers",
		feet="Orion Socks +1"}

	sets.JR.Acc = {
		head="Uk'uxkaj cap",
		neck="Light Gorget",
		ear1="Clearview Earring",
		ear2="Volley Earring",
		body="Kyujutsugi",
		hands="Buremte Gloces",
		ring1="Rajas Ring",
		ring2="Pyrosoul Ring",
		back="Libeccio Mantle",
		waist="Light belt",
		legs="Thurandaut tights +1",
		feet="Orion Socks +1"}
						
	sets.JR.Atk = {
		head="Orion Beret +1",
		neck="Ocachi Gorget",
		ear1="Flame pearl",
		ear2="Flame pearl",
		body="Kyujutsugi",
		hands="Manibozho Gloves",
		ring1="Strigoi Ring",
		ring2="Pyrosoul Ring",
		back="Libeccio Mantle",
		waist="Prosilio belt",
		legs="Nahtirah Trousers",
		feet="Orion Socks +1"}
	
	-- Sidewinder Sets Below
	SW_Set_Names = {'Normal','Acc','Atk'}
	sets.SW = {}
	sets.SW.Normal = {
		head="Orion Beret +1",
		neck="Light Gorget",
		ear1="Flame pearl",
		ear2="Flame pearl",
		body="Kyujutsugi",
		hands="Manibozho Gloves",
		ring1="Strigoi Ring",
		ring2="Pyrosoul Ring",
		back="Libeccio Mantle",
		waist="Light belt",
		legs="Nahtirah Trousers",
		feet="Orion Socks +1"}

	sets.SW.Acc = {
		head="Orion Beret +1",
		neck="Light Gorget",
		ear1="Flame pearl",
		ear2="Flame pearl",
		body="Kyujutsugi",
		hands="Manibozho Gloves",
		ring1="Hajduk ring",
		ring2="Paqichikaji Ring",
		back="Libeccio Mantle",
		waist="Light belt",
		legs="Thurandaut Tights +1",
		feet="Orion Socks +1"}
						
	sets.SW.Atk = {}
	
	-- TP Sets Below(I don't really use for RNG but feel free to add your own)
	TP_Set_Names = {"PDT","MDT"}
	sets.TP = {}
	sets.TP['MDT'] = {
		head="Orion Beret +1",
		neck="Huani collar",
		ear1="Merman's Earring",
		ear2="Merman's Earring",
		body="Kyujutsugi",
		hands="Manibozho Gloves",
		ring1="Defending Ring",
		ring2="Dark Ring",
		back="Engulfer Cape +1",
		waist="Resolute Belt",
		legs="Nahtirah Trousers",
		feet="Iuitl Gaiters"}
		
	sets.TP['PDT'] = {
		head="Arcadian beret +1",
		neck="Twilight Torque",
		ear1="Vulcan's pearl",
		ear2="Vulcan's pearl",
		body="Kyujutsugi",
		hands="Iuitl Wristbands +1",
		ring1="Defending Ring",
		ring2="Dark Ring",
		back="Shadow Mantle",
		waist="Flume Belt",
		legs="Osmium cuisses",
		feet="Orion Socks +1"}	
	
	--Idle Sets Below
	Idle_Set_Names = {'Regen','Normal','Town'}
	sets.Idle = {}
	sets.Idle.Normal = {
		head="Arcadian beret +1",
		neck="Twilight Torque",
		ear1="Vulcan's pearl",
		ear2="Vulcan's pearl",
		body="Kyujutsugi",
		hands="Iuitl Wristbands +1",
		ring1="Defending Ring",
		ring2="Dark Ring",
		back="Engulfer Cape +1",
		waist="Flume Belt",
		legs="Osmium cuisses",
		feet="Orion Socks +1"}
						
	sets.Idle.Town = {
		head="Arcadian beret +1",
		neck="Twilight Torque",
		ear1="Vulcan's pearl",
		ear2="Vulcan's pearl",
		body="Kyujutsugi",
		hands="Iuitl Wristbands +1",
		ring1="Defending Ring",
		ring2="Dark Ring",
		back="Engulfer Cape +1",
		waist="Flume Belt",
		legs="Osmium cuisses",
		feet="Orion Socks +1"}			
				
	sets.Idle.Regen = set_combine(sets.Idle.Normal,{
		head="Ocelomeh headpiece +1",
		neck="Wiglen Gorget",						
		body="Kheper jacket",
		ring1="Paguroidea Ring",
		ring2="Sheltered Ring",
		back="Scuta Cape"})	
	
	PDT_Set_Names = {'PDT'}
	sets.DefensePDT = {}
	sets.DefensePDT.PDT = {
		head="Arcadian beret +1",
		neck="Twilight Torque",
		ear1="Vulcan's pearl",
		ear2="Vulcan's pearl",
		body="Kyujutsugi",
		hands="Iuitl Wristbands +1",
		ring1="Defending Ring",
		ring2="Dark Ring",
		back="Shadow Mantle",
		waist="Flume Belt +1",
		legs="Osmium cuisses",
		feet="Orion Socks +1"}	
		
    MDT_Set_Names = {'MDT'}
	sets.DefenseMDT = {}
	sets.DefenseMDT.MDT = set_combine(sets.DefensePDT.PDT,{		
		ear1="Merman's Earring",
		ear2="Merman's Earring",
		body="Kyujutsugi",		
		back="Tuilha Cape",
		waist="Resolute Belt"})
end

function precast(spell)	
	if sets.precast[spell.english] then
                equip(sets.precast[spell.english])
		elseif spell.type == 'WeaponSkill' then
			if spell.target.distance > 21.0  then						
			add_to_chat(167,''..spell.target.name..' is too far can not use '..spell.name..'!!!. Cancelling WeaponSkill ')                           
            cancel_spell()
            return			
			elseif spell.name == "Coronach" then
                equip(sets.Coronach[Coronach_Set_Names[Coronach_Index]])
			elseif spell.name == "Last Stand" then
                equip(sets.LS[LS_Set_Names[LS_Index]])
			elseif spell.name == "Namas Arrow" then
                equip(sets.NA[NA_Set_Names[NA_Index]])
			elseif spell.name == "Jishnu's Radiance" then
                equip(sets.JR[JR_Set_Names[JR_Index]])
			elseif spell.name == "Sidewinder" then
                equip(sets.SW[SW_Set_Names[SW_Index]])			
		end		
		elseif spell.name == "Ranged" then
			equip(sets.precast.PreShot)
			if player.equipment.range == 'Ajjub Bow' then
			equip(sets.precast.arrow)            
			elseif player.equipment.range == 'Yoichinoyumi' then
			equip(sets.precast.arrow)            
			elseif player.equipment.range == 'Annihilator' then
			equip(sets.precast.bullet)            
			elseif player.equipment.range == 'Astrild' then
			equip(sets.precast.trialsammo)			
		end
		elseif spell.type == "Ninjutsu" then
			if string.find(spell.english,'Utsusemi') then
				if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
					cancel_spell()
					add_to_chat(167, spell.english .. ' Canceled: [3+ Images]')
					return
			else
				equip(sets.precast.Utsusemi)
			end
			else
				equip(sets.precast.FastCast)
		end
		elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
			cast_delay(0.2)
			send_command('cancel Sneak')        
    end
end

function midcast(spell)
	if spell.name == "Ranged" then
		equip(sets.Midshot[Midshot_Set_Names[Midshot_Index]])
		if buffactive.Barrage then
			equip(sets.Barrage[Barrage_Set_Names[Barrage_Index]])						
		end
	end
end

function aftercast(spell)	
	if player.status=='Engaged' then
		equip(sets.TP[TP_Set_Names[TP_Index]])	
	else		
		equip(sets.Idle[Idle_Set_Names[Idle_Index]])		
	end
end

function status_change(new,old)
	if T{'Idle','Resting'}:contains(new) then		
		equip(sets.Idle[Idle_Set_Names[Idle_Index]]) 
	elseif new == 'Engaged' then
		equip(sets.TP[TP_Set_Names[TP_Index]])
	end
end

--Reminder for Scavenge when exiting Divine Might or any Battlefield.
--Can change the Scavenge Job ability to the add to chat reminder if you rather have that.
function buff_change(name,gain_or_loss)
	if name == 'Battlefield' and not gain_or_loss then
              --send_command('wait 3; input /ja "Scavenge" <me>')
              add_to_chat(167,'You left the Battlefield, don\'t forget to Scavenge!')
	end
end

--Toggle Self Commands with //gs c [command name] 
--Example type in chat //gs c tp (case sensitive)
--Example Make a macro /console gs c tp (case sensitive)
function self_command(command)
	if command == 'tp' then
		TP_Index = TP_Index +1		
		if TP_Index > #TP_Set_Names then TP_Index = 1 end
		add_to_chat(207,'TP Set Changed to: '..TP_Set_Names[TP_Index]..'')
	elseif command == 'idle' then
		Idle_Index = Idle_Index +1
		if Idle_Index > #Idle_Set_Names then Idle_Index = 1 end
		add_to_chat(207,'Idle Set Changed to: '..Idle_Set_Names[Idle_Index]..'')		
		equip(sets.Idle[Idle_Set_Names[Idle_Index]])	
	elseif command == 'pdt' then
		DefensePDT_Index = DefensePDT_Index +1
		if DefensePDT_Index > #PDT_Set_Names then DefensePDT_Index = 1 end
		add_to_chat(207,'PDT Set Changed to: '..PDT_Set_Names[DefensePDT_Index]..'')		
		equip(sets.DefensePDT[PDT_Set_Names[DefensePDT_Index]])				
	elseif command == 'mdt' then
		DefenseMDT_Index = DefenseMDT_Index +1
		if DefenseMDT_Index > #MDT_Set_Names then DefenseMDT_Index = 1 end
		add_to_chat(207,'MDT Set Changed to: '..MDT_Set_Names[DefenseMDT_Index]..'')		
		equip(sets.DefenseMDT[MDT_Set_Names[DefenseMDT_Index]])
	elseif command == 'midshot' then
		Midshot_Index = Midshot_Index +1
		if Midshot_Index > #Midshot_Set_Names then Midshot_Index = 1 end
		add_to_chat(207,'Midshot Set Changed to: '..Midshot_Set_Names[Midshot_Index]..'')		
	elseif command == 'barrage' then
		Barrage_Index = Barrage_Index +1
		if Barrage_Index > #Barrage_Set_Names then Barrage_Index = 1 end
		add_to_chat(207,'Barrage Set Changed to: '..Barrage_Set_Names[Barrage_Index]..'')
	elseif command == 'relicgunws' then
		Coronach_Index = Coronach_Index +1
		if Coronach_Index > #Coronach_Set_Names then Coronach_Index = 1 end
		add_to_chat(207,'Coronach Set Changed to: '..Coronach_Set_Names[Coronach_Index]..'')		
	elseif command == 'meritws' then
		LS_Index = LS_Index +1
		if LS_Index > #LS_Set_Names then LS_Index = 1 end
		add_to_chat(207,'Last Stand Set Changed to: '..LS_Set_Names[LS_Index]..'')		
	elseif command == 'relicbowws' then
		NA_Index = NA_Index +1
		if NA_Index > #NA_Set_Names then NA_Index = 1 end
		add_to_chat(207,'Namas Arrow Set Changed to: '..NA_Set_Names[NA_Index]..'')		
	elseif command == 'empws' then
		JR_Index = JR_Index +1
		if JR_Index > #JR_Set_Names then JR_Index = 1 end
		add_to_chat(207,'Jishnu\'s Radiance Set Changed to: '..JR_Set_Names[JR_Index]..'')		
	elseif command == 'sidewinderws' then
		SW_Index = SW_Index +1
		if SW_Index > #Coronach_Set_Names then SW_Index = 1 end
		add_to_chat(207,'Sidewinder Set Changed to: '..SW_Set_Names[SW_Index]..'')		
	elseif command == 'update' then
		status_change(player.status)	
	elseif command == 'active' then
		add_to_chat(207,'Idle Set Active: '..Idle_Set_Names[Idle_Index]..'')
		add_to_chat(207,'PDT Set Active: '..PDT_Set_Names[DefensePDT_Index]..'')
		add_to_chat(207,'MDT Set Active: '..MDT_Set_Names[DefenseMDT_Index]..'')
		add_to_chat(207,'TP Set Active: '..TP_Set_Names[TP_Index]..'')
		add_to_chat(207,'Midshot Set Active: '..Midshot_Set_Names[Midshot_Index]..'')
		add_to_chat(207,'Barrage Set Active: '..Barrage_Set_Names[Barrage_Index]..'')
		add_to_chat(207,'Coronach Set Active: '..Coronach_Set_Names[Coronach_Index]..'')
		add_to_chat(207,'Last Stand Set Active: '..LS_Set_Names[LS_Index]..'')
		add_to_chat(207,'Namas Arrow Set Active: '..NA_Set_Names[NA_Index]..'')
		add_to_chat(207,'Jishnu\'s Radiance Set Active: '..JR_Set_Names[JR_Index]..'')
		add_to_chat(207,'Sidewinder Set Active: '..SW_Set_Names[SW_Index]..'') 		
	end
end