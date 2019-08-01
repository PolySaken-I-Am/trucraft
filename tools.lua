
minetest.register_tool("trucraft:stone_club", {
	description = "Stone Tool",
	inventory_image = "poly_tcclub.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[3]=30.60}, uses=10, maxlevel=1},
			choppy = {times={[3]=10.00, [2]=5.00, [1]=5.00}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	groups = {axe=1},
	sound = {breaks = "default_tool_breaks"},
})