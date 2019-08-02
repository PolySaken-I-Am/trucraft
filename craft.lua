
if minetest.get_modpath("unified_inventory") then

	unified_inventory.register_craft_type("trucraft:finding", {
		description="Found On the Ground",
		icon="poly_tcmag.png",
		width=1,
		height=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:finding",
		items={"default:dirt_with_grass"},
		output="trucraft:stick",
		width=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:finding",
		items={"default:dirt_with_grass"},
		output="trucraft:rock_stone",
		width=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:finding",
		items={"default:sand"},
		output="trucraft:rock_sandstone",
		width=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:finding",
		items={"default:desert_sand"},
		output="trucraft:rock_desert_stone",
		width=1,
	})
	
	unified_inventory.register_craft_type("trucraft:leftclick", {
		description="Left-Clicking",
		icon="poly_tccursor.png",
		width=1,
		height=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:leftclick",
		items={"trucraft:string 4"},
		output="trucraft:string2",
		width=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:leftclick",
		items={"default:grass_1"},
		output="trucraft:string",
		width=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:leftclick",
		items={"default:dry_grass_1"},
		output="trucraft:string",
		width=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:leftclick",
		items={"trucraft:stick"},
		output="trucraft:shaft",
		width=1,
	})
	
	unified_inventory.register_craft_type("trucraft:leftclick2", {
		description="Smackin'",
		icon="poly_tchand.png",
		width=1,
		height=2,
	})
	
	unified_inventory.register_craft({
		type="trucraft:leftclick2",
		items={"group:rock", "group:tree"},
		output="trucraft:table",
		width=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:leftclick2",
		items={"trucraft:string2", "group:tree"},
		output="trucraft:station",
		width=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:leftclick2",
		items={"trucraft:sieve", "default:gravel"},
		output="default:flint",
		width=1,
	})
	
	unified_inventory.register_craft_type("trucraft:combo", {
		description="Combination",
		icon="default_tree_top.png^poly_tcmatrix2.png",
		width=2,
		height=2,
	})
	
	function truCraft.register_basic_craft(def)
		table.insert(truCraft.basic_crafts, def)
		unified_inventory.register_craft({
			type="trucraft:combo",
			items={def.item1, def.item2, def.item3, def.item4},
			output=def.result,
			width=2,
			height=2
		})
	end
	
	unified_inventory.register_craft_type("trucraft:leftclick3", {
		description="Chopping Block",
		icon="default_tree_top.png^poly_tcmatrix.png",
		width=1,
		height=2,
	})
	
	function truCraft.register_chop(def)
		truCraft.chops[def.item]=def.result
		unified_inventory.register_craft({
		type="trucraft:leftclick3",
			items={"group:axe", def.item},
			output=def.result,
			width=1,
		})
	end
else

	function truCraft.register_basic_craft(def)
		table.insert(truCraft.basic_crafts, def)
	end
	
	function truCraft.register_chop(def)
		truCraft.chops[def.item]=def.result
	end
	
end

truCraft.basic_crafts={}
truCraft.chops={}


truCraft.register_basic_craft({
	item1="trucraft:shaft", 
	item2="trucraft:rock_stone", 
	item3="", 
	item4="trucraft:string2",
	result="trucraft:stone_club"
})

truCraft.register_basic_craft({
	item1="trucraft:string2", 
	item2="trucraft:string2", 
	item3="trucraft:string2", 
	item4="trucraft:string2",
	result="trucraft:fabric"
})

truCraft.register_basic_craft({
	item1="trucraft:shaft", 
	item2="trucraft:fabric", 
	item3="trucraft:string2", 
	item4="trucraft:shaft",
	result="trucraft:sieve"
})

truCraft.register_basic_craft({
	item1="trucraft:rock_stone", 
	item2="trucraft:stick", 
	item3="trucraft:stick", 
	item4="trucraft:stick",
	result="trucraft:fire"
})

truCraft.register_basic_craft({
	item1="trucraft:fire", 
	item2="default:stone", 
	item3="default:stone", 
	item4="default:flint",
	result="trucraft:furnaceplate"
})

truCraft.register_basic_craft({
	item1="trucraft:rock_stone", 
	item2="trucraft:rock_stone", 
	item3="default:flint", 
	item4="default:flint",
	result="trucraft:furnacetop"
})

truCraft.register_chop({
	item="default:tree",
	result="default:wood 2"
})

truCraft.register_chop({
	item="default:acacia_tree",
	result="default:acacia_wood 2"
})

truCraft.register_chop({
	item="default:aspen_tree",
	result="default:aspen_wood 2"
})

truCraft.register_chop({
	item="default:pine_tree",
	result="default:pine_wood 2"
})

truCraft.register_chop({
	item="default:jungletree",
	result="default:junglewood 2"
})