spellSets = {}
spellSets.Cure = S{"Cure","Cure II","Cure III","Cure IV","Curaga","Curaga II"}

debug = 0

function get_sets()
	select_default_macro_book()

	sets.aftercast = {}
	sets.aftercast.Movement = {}

	sets.precast = {}

	sets.midcast = {}
-- test save
end

function precast(spell)
end

function midcast(spell)
end

function aftercast(spell)
	equip(sets.aftercast.Movement)
	send_command("@input /echo Aftercase: Movement")
end

function sub_job_change(newSubjob, oldSubjob)
	select_default_macro_book()
end

function select_default_macro_book()
	send_command('@input /macro book 4;wait .1;input /macro set 1')
end
