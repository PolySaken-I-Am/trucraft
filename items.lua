
minetest.register_craftitem("trucraft:string", {
	description="Plant Fiber",
	inventory_image="poly_tcstring2.png",
	on_use = function(itemstack, player, pointed_thing)
		if itemstack:get_count() > 3 then
			player:get_inventory():add_item("main", "trucraft:string2")
			itemstack:take_item(4)
			return itemstack
		end
	end
})

minetest.override_item("default:grass_1", {
    on_use = function(itemstack, player, pointed_thing)
		player:get_inventory():add_item("main", "trucraft:string")
		itemstack:take_item()
		return itemstack
	end,
})

minetest.override_item("default:dry_grass_1", {
    on_use = function(itemstack, player, pointed_thing)
		player:get_inventory():add_item("main", "trucraft:string")
		itemstack:take_item()
		return itemstack
	end,
})

minetest.register_item(":", {
	type = "none",
	wield_image = "wieldhand.png",
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=10.00, [3]=5.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}
		},
		damage_groups = {fleshy=1},
	}
})

minetest.register_craftitem("trucraft:fabric", {
	description="Grassweave Mat",
	inventory_image="poly_tcstring3.png"
})

minetest.register_craftitem("trucraft:sieve", {
	description="Basic Sieve",
	inventory_image="poly_tcsieve.png",
})

minetest.register_craftitem("trucraft:shaft", {
	description="Basic Wooden Shaft",
	inventory_image="poly_tcshaft.png",
})

minetest.override_item("default:axe_stone", {
    groups={axe=1},
})

minetest.override_item("default:axe_steel", {
    groups={axe=1},
})

minetest.override_item("default:axe_bronze", {
    groups={axe=1},
})

minetest.override_item("default:axe_mese", {
    groups={axe=1},
})

minetest.register_craftitem("trucraft:copper_blade", {
	description="Crude Copper Blade",
	inventory_image="poly_tccopperb.png",
})

minetest.register_craftitem("trucraft:shaft2", {
	description="Sturdy Wooden Shaft",
	inventory_image="poly_tcshaft2.png",
})

minetest.register_craftitem("trucraft:bronze", {
	description="Bronze Mix",
	inventory_image="poly_tcbronze.png",
})

minetest.register_craftitem("trucraft:bronze_plate", {
	description="Bronze Plate",
	inventory_image="poly_tcbronzep.png",
})

minetest.register_craftitem("trucraft:bronze_wedge", {
	description="Bronze Wedge",
	inventory_image="poly_tcbronzew.png",
})

minetest.register_craftitem("trucraft:bronze_hook", {
	description="Bronze Hook-Blade",
	inventory_image="poly_tcbronzeh.png",
})

minetest.register_craftitem("trucraft:bronze_blade", {
	description="Bronze Blade",
	inventory_image="poly_tcbronzeb.png",
})

minetest.register_craftitem("trucraft:steel_plate", {
	description="Steel Plate",
	inventory_image="poly_tcbronzep.png^[colorize:#bbffff90",
})

minetest.register_craftitem("trucraft:steel_wedge", {
	description="Steel Wedge",
	inventory_image="poly_tcbronzew.png^[colorize:#bbffff90",
})

minetest.register_craftitem("trucraft:steel_hook", {
	description="Steel Hook-Blade",
	inventory_image="poly_tcbronzeh.png^[colorize:#bbffff90",
})

minetest.register_craftitem("trucraft:steel_blade", {
	description="Steel Blade",
	inventory_image="poly_tcbronzeb.png^[colorize:#bbffff90",
})


minetest.register_craftitem("trucraft:steel_rod", {
	description="Steel Rod",
	inventory_image="default_stick.png^[colorize:#bbffff90",
})

minetest.register_craftitem("trucraft:grass_lump", {
	description="Plant Mush",
	inventory_image="poly_tclump.png",
})

minetest.register_craftitem("trucraft:glue", {
	description="Plant Glue",
	inventory_image="poly_tclump2.png",
})

minetest.register_craftitem("trucraft:grit", {
	description="Diamond Grit",
	inventory_image="poly_tcdiamondd.png",
})

minetest.register_craftitem("trucraft:coal_dust", {
	description="Coal Grit",
	inventory_image="poly_tccoald.png",
})

minetest.register_craftitem("trucraft:polymer", {
	description="Plastic Substrate",
	inventory_image="poly_tclump3.png",
})

minetest.register_craftitem("trucraft:plastic", {
	description="Plastic Sheet",
	inventory_image="poly_tclump4.png",
})