function get_sets()
	sets.default=
{
    main="Izhiikoh",
    sub={ name="Atoyac", augments={'Occ. atk. twice+8','Crit.hit rate+4',}},
    range="Raider's Bmrng.",
    head="Felistris Mask",
    body="Pillager's Vest +1",
    hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
    legs={ name="Iuitl Tights +1", augments={'Phys. dmg. taken -2%',}},
    feet="Plun. Poulaines +1",
    neck="Asperity Necklace",
    waist="Shetal Stone",
    left_ear="Heartseeker Earring",
    right_ear="Dudgeon Earring",
    left_ring="Rajas Ring",
    right_ring="Epona's Ring",
    back="Letalis Mantle",
}
end

function aftercast(spell,action)
	equip(sets.default)
end
