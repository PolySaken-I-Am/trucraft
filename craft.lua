
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
		output="default:stick",
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
		items={"default:stick"},
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
		items={"default:steel_ingot", "trucraft:table"},
		output="trucraft:table2",
		width=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:leftclick2",
		items={"default:steel_ingot", "trucraft:station"},
		output="trucraft:station2",
		width=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:leftclick2",
		items={"trucraft:sieve", "default:gravel"},
		output="default:flint",
		width=1,
	})
	
	unified_inventory.register_craft({
		type="trucraft:leftclick2",
		items={"trucraft:copper_knife", "trucraft:string2"},
		output="trucraft:string3",
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
		table.insert(truCraft.advanced_crafts, def)
		unified_inventory.register_craft({
			type="trucraft:combo",
			items={def.item1, def.item2, def.item3, def.item4},
			output=def.result,
			width=2,
			height=2
		})
		unified_inventory.register_craft({
			type="trucraft:combo2",
			items={def.item1, def.item2, def.item3, def.item4, "", "", "", "", ""},
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
	
	unified_inventory.register_craft_type("trucraft:leftclick4", {
		description="Anvil",
		icon="default_stone.png^poly_tcmatrix3.png",
		width=1,
		height=2,
	})
	
	function truCraft.register_beat(def)
		truCraft.anvil[def.item]=def.result
		unified_inventory.register_craft({
		type="trucraft:leftclick4",
			items={"group:hammer", def.item},
			output=def.result,
			width=1,
		})
	end
	
	function truCraft.register_beat2(def)
		truCraft.anvil2[def.item]=def.result
		unified_inventory.register_craft({
		type="trucraft:leftclick4",
			items={"group:hammer2", def.item},
			output=def.result,
			width=1,
		})
	end
	
	unified_inventory.register_craft_type("trucraft:combo2", {
		description="Advanced Combination",
		icon="default_steel_block.png^poly_tcmatrix2.png",
		width=3,
		height=3,
	})
	
	function truCraft.register_advanced_craft(def)
		table.insert(truCraft.advanced_crafts, def)
		unified_inventory.register_craft({
			type="trucraft:combo2",
			items={def.item1, def.item2, def.item3, def.item4, "", def.item5, def.item6, def.item7, def.item8},
			output=def.result,
			width=3,
			height=3
		})
	end
else

	function truCraft.register_basic_craft(def)
		table.insert(truCraft.basic_crafts, def)
		table.insert(truCraft.advanced_crafts, def)
	end
	
	function truCraft.register_advanced_craft(def)
		table.insert(truCraft.advanced_crafts, def)
	end
	
	function truCraft.register_chop(def)
		truCraft.chops[def.item]=def.result
	end
	
	function truCraft.register_beat(def)
		truCraft.anvil[def.item]=def.result
	end
	
end

truCraft.basic_crafts={}
truCraft.advanced_crafts={}
truCraft.chops={}
truCraft.anvil={}
truCraft.anvil2={}


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
	item2="default:stick", 
	item3="default:stick", 
	item4="default:stick",
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
	item2="default:stone", 
	item3="default:stone", 
	item4="trucraft:rock_stone",
	result="trucraft:anvilstone"
})

truCraft.register_basic_craft({
	item1="trucraft:rock_stone", 
	item2="trucraft:rock_stone", 
	item3="default:flint", 
	item4="default:flint",
	result="trucraft:furnacetop"
})

truCraft.register_basic_craft({
	item1="", 
	item2="trucraft:shaft", 
	item3="default:flint", 
	item4="flowers:tulip",
	result="trucraft:shaft2"
})

truCraft.register_basic_craft({
	item1="trucraft:rock_stone", 
	item2="trucraft:rock_stone", 
	item3="trucraft:rock_stone", 
	item4="default:tin_ingot",
	result="trucraft:rock_reinforced"
})

truCraft.register_basic_craft({
	item1="trucraft:rock_reinforced", 
	item2="trucraft:rock_reinforced", 
	item3="trucraft:string3", 
	item4="trucraft:shaft2",
	result="trucraft:stone_mallet"
})

truCraft.register_basic_craft({
	item1="default:tin_ingot", 
	item2="default:copper_ingot", 
	item3="default:flint", 
	item4="",
	result="trucraft:bronze"
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

truCraft.register_beat({
	item="default:copper_ingot",
	result="trucraft:copper_blade"
})

truCraft.register_basic_craft({
	item1="trucraft:shaft", 
	item2="trucraft:copper_blade", 
	item3="", 
	item4="trucraft:string2",
	result="trucraft:copper_knife"
})

minetest.register_craft({
	type="cooking",
	output="default:bronze_ingot",
	recipe="trucraft:bronze"
})

truCraft.register_beat({
	item="default:bronze_ingot",
	result="trucraft:bronze_plate"
})

truCraft.register_beat({
	item="trucraft:bronze_plate",
	result="trucraft:bronze_wedge"
})

truCraft.register_beat({
	item="trucraft:bronze_wedge",
	result="trucraft:bronze_hook"
})

truCraft.register_beat({
	item="trucraft:bronze_hook",
	result="trucraft:bronze_blade"
})

truCraft.register_basic_craft({
	item1="trucraft:shaft2", 
	item2="trucraft:bronze_plate", 
	item3="", 
	item4="trucraft:string3",
	result="default:shovel_bronze"
})

truCraft.register_basic_craft({
	item1="trucraft:shaft2", 
	item2="trucraft:bronze_wedge", 
	item3="", 
	item4="trucraft:string3",
	result="default:axe_bronze"
})

truCraft.register_basic_craft({
	item1="trucraft:shaft2", 
	item2="trucraft:bronze_hook", 
	item3="trucraft:bronze_hook", 
	item4="trucraft:string3",
	result="default:pick_bronze"
})

truCraft.register_basic_craft({
	item1="trucraft:shaft2", 
	item2="trucraft:bronze_blade", 
	item3="", 
	item4="trucraft:string3",
	result="default:sword_bronze"
})

truCraft.register_advanced_craft({
	item1="trucraft:shaft2", 
	item2="trucraft:string3", 
	item3="default:steel_ingot", 
	item4="default:steel_ingot",
	item5="trucraft:rock_stone", 
	item6="trucraft:rock_stone", 
	item7="default:steel_ingot", 
	item8="default:steel_ingot",
	result="trucraft:steel_mallet"
})

truCraft.register_beat2({
	item="default:steel_ingot",
	result="trucraft:steel_plate"
})

truCraft.register_beat2({
	item="trucraft:steel_plate",
	result="trucraft:steel_wedge"
})

truCraft.register_beat2({
	item="trucraft:steel_wedge",
	result="trucraft:steel_hook"
})

truCraft.register_beat2({
	item="trucraft:steel_hook",
	result="trucraft:steel_blade"
})

truCraft.register_beat2({
	item="trucraft:steel_blade",
	result="trucraft:steel_rod"
})

truCraft.register_basic_craft({
	item1="trucraft:shaft2", 
	item2="trucraft:steel_plate", 
	item3="trucraft:glue", 
	item4="trucraft:string3",
	result="default:shovel_steel"
})

truCraft.register_basic_craft({
	item1="trucraft:shaft2", 
	item2="trucraft:steel_wedge", 
	item3="trucraft:glue", 
	item4="trucraft:string3",
	result="default:axe_steel"
})

truCraft.register_advanced_craft({
	item1="trucraft:shaft2", 
	item2="trucraft:steel_hook", 
	item3="trucraft:steel_hook", 
	item4="trucraft:string3",
	result="default:pick_steel",
	item5="trucraft:glue"
})

truCraft.register_basic_craft({
	item1="trucraft:shaft2", 
	item2="trucraft:steel_blade", 
	item3="trucraft:glue", 
	item4="trucraft:string3",
	result="default:sword_steel"
})

truCraft.register_beat({
	item="default:grass_1",
	result="trucraft:grass_lump"
})

truCraft.register_beat({
	item="default:grass_2",
	result="trucraft:grass_lump"
})

truCraft.register_beat({
	item="default:grass_3",
	result="trucraft:grass_lump"
})

truCraft.register_beat({
	item="default:grass_4",
	result="trucraft:grass_lump"
})

truCraft.register_beat({
	item="default:grass_5",
	result="trucraft:grass_lump"
})

truCraft.register_beat({
	item="default:diamond",
	result="trucraft:grit"
})

minetest.register_craft({
	type="cooking",
	output="trucraft:glue",
	recipe="trucraft:grass_lump"
})

truCraft.register_advanced_craft({
	item1="trucraft:glue", 
	item2="trucraft:glue", 
	item3="", 
	item4="default:steel_ingot",
	item5="trucraft:grit", 
	item6="trucraft:grit", 
	item7="default:steel_ingot", 
	item8="default:axe_steel",
	result="trucraft:axe_steel"
})

truCraft.register_advanced_craft({
	item1="trucraft:glue", 
	item2="trucraft:glue", 
	item3="", 
	item4="default:steel_ingot",
	item5="trucraft:grit", 
	item6="trucraft:grit", 
	item7="default:steel_ingot", 
	item8="default:pick_steel",
	result="trucraft:pick_steel"
})

truCraft.register_advanced_craft({
	item1="trucraft:glue", 
	item2="trucraft:glue", 
	item3="", 
	item4="default:steel_ingot",
	item5="trucraft:grit", 
	item6="trucraft:grit", 
	item7="default:steel_ingot", 
	item8="default:sword_steel",
	result="trucraft:sword_steel"
})


truCraft.register_advanced_craft({
	item1="default:stick", 
	item2="trucraft:string3", 
	item3="default:stick", 
	item4="trucraft:fabric",
	item5="trucraft:fabric", 
	item6="default:stick", 
	item7="trucraft:fabric", 
	item8="default:stick",
	result="trucraft:drawer"
})