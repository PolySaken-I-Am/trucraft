
minetest.register_tool("trucraft:stone_club", {
	description = "Stone Tool",
	inventory_image = "poly_tcclub.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[3]=20.60}, uses=10, maxlevel=1},
			choppy = {times={[3]=10.00, [2]=5.00, [1]=5.00}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	groups = {axe=1, hammer=1},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("trucraft:copper_knife", {
	description = "Copper Workblade",
	inventory_image = "poly_tccopperk.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy = {times={[3]=3.00, [2]=2.00, [1]=2.00}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=5},
	},
	groups = {knife=1},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("trucraft:stone_mallet", {
	description = "Reinforced Stone Mallet",
	inventory_image = "poly_tchammer.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[3]=10.60}, times={[4]=20.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	groups = {hammer=5},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("trucraft:steel_mallet", {
	description = "Steel Mallet",
	inventory_image = "poly_tchammer2.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[3]=4.60}, times={[4]=8.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	groups = {hammer2=10, hammer=20},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("trucraft:pick_steel", {
	description = "Enhanced Steel Pickaxe",
	inventory_image = "default_tool_steelpick.png^poly_tcpickd.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=2.50, [2]=0.80, [3]=0.40}, uses=35, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("trucraft:axe_steel", {
	description = "Enhanced Steel Axe",
	inventory_image = "default_tool_steelaxe.png^poly_tcaxed.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.25, [2]=0.70, [3]=0.50}, uses=35, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("trucraft:sword_steel", {
	description = "Enhanced Steel Sword",
	inventory_image = "default_tool_steelsword.png^poly_tcswordd.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.5, [2]=0.10, [3]=0.5}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("trucraft:knife", {
	description = "Steel Flip Knife",
	inventory_image = "poly_tcknife.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.5, [2]=0.10, [3]=0.5}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
})