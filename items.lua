
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