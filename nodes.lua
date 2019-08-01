
minetest.register_node("trucraft:rock_stone", {
	description="Rock",
	tiles={"default_stone.png"},
	is_ground_content=false,
	sunlight_propagates=true,
	drawtype="nodebox",
	paramtype="light",
	groups={cracky=3, oddly_breakable_by_hand=3, rock=1},
	sounds=default.node_sound_stone_defaults(),
	inventory_image="poly_tcpebble.png",
	selection_box={
		type="fixed",
		fixed= {-4 / 16, -0.5, -4 / 16, 4 / 16, -0.25, 4 / 16}
	},
	node_box={
		type="fixed",
		fixed= {	{-4 / 16, -0.5, -4 / 16, 4 / 16, -0.25, 4 / 16},
					{-5 / 16, -0.5, -3 / 16, 5 / 16, -0.4, 3 / 16},
					{-3 / 16, -0.5, -5 / 16, 3 / 16, -0.4, 5 / 16},}
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.012,
		scale = 0.024,
		spread = {x = 100, y = 100, z = 100},
		seed = 230,
		octaves = 3,
		persist = 0.6
	},
	y_min = -300,
	y_max = 300,
	decoration = "trucraft:rock_stone",
})

minetest.register_node("trucraft:rock_sandstone", {
	description="Sandstone Lump",
	tiles={"default_sandstone.png"},
	is_ground_content=false,
	sunlight_propagates=true,
	drawtype="nodebox",
	paramtype="light",
	groups={cracky=3, oddly_breakable_by_hand=3, rock=1},
	sounds=default.node_sound_stone_defaults(),
	inventory_image="poly_tcpebble2.png",
	selection_box={
		type="fixed",
		fixed= {-4 / 16, -0.5, -4 / 16, 4 / 16, -0.25, 4 / 16}
	},
	node_box={
		type="fixed",
		fixed= {	{-4 / 16, -0.5, -4 / 16, 4 / 16, -0.25, 4 / 16},
					{-5 / 16, -0.5, -3 / 16, 5 / 16, -0.4, 3 / 16},
					{-3 / 16, -0.5, -5 / 16, 3 / 16, -0.4, 5 / 16},}
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.012,
		scale = 0.024,
		spread = {x = 100, y = 100, z = 100},
		seed = 230,
		octaves = 3,
		persist = 0.6
	},
	y_min = -300,
	y_max = 300,
	decoration = "trucraft:rock_sandstone",
})

minetest.register_node("trucraft:rock_desert_stone", {
	description="Red Rock",
	tiles={"default_desert_stone.png"},
	is_ground_content=false,
	sunlight_propagates=true,
	drawtype="nodebox",
	paramtype="light",
	groups={cracky=3, oddly_breakable_by_hand=3, rock=1},
	sounds=default.node_sound_stone_defaults(),
	inventory_image="poly_tcpebble3.png",
	selection_box={
		type="fixed",
		fixed= {-4 / 16, -0.5, -4 / 16, 4 / 16, -0.25, 4 / 16}
	},
	node_box={
		type="fixed",
		fixed= {	{-4 / 16, -0.5, -4 / 16, 4 / 16, -0.25, 4 / 16},
					{-5 / 16, -0.5, -3 / 16, 5 / 16, -0.4, 3 / 16},
					{-3 / 16, -0.5, -5 / 16, 3 / 16, -0.4, 5 / 16},}
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.012,
		scale = 0.024,
		spread = {x = 100, y = 100, z = 100},
		seed = 230,
		octaves = 3,
		persist = 0.6
	},
	y_min = -300,
	y_max = 300,
	decoration = "trucraft:rock_desert_stone",
})

minetest.register_node("trucraft:stick", {
	description="Stick",
	tiles={"poly_tcstick.png"},
	is_ground_content=false,
	sunlight_propagates=true,
	drawtype="nodebox",
	paramtype="light",
	groups={choppy=3, oddly_breakable_by_hand=3, stick=1},
	sounds=default.node_sound_wood_defaults(),
	inventory_image="default_stick.png",
	drop="trucraft:stick",
	selection_box={
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, -0.375, 0.0625},
		}
	},
	node_box={
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, -0.375, 0.0625},
		}
	},
	on_use = function(itemstack, player, pointed_thing)
		player:get_inventory():add_item("main", "trucraft:shaft")
		itemstack:take_item()
		return itemstack
	end,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.012,
		scale = 0.024,
		spread = {x = 100, y = 100, z = 100},
		seed = 230,
		octaves = 3,
		persist = 0.6
	},
	y_min = -300,
	y_max = 300,
	decoration = "trucraft:stick",
})

minetest.register_node("trucraft:aca_stick", {
	description="Stick",
	tiles={"poly_tcstick2.png"},
	is_ground_content=false,
	sunlight_propagates=true,
	drawtype="nodebox",
	paramtype="light",
	groups={choppy=3, oddly_breakable_by_hand=3, stick=1, not_in_creative_inventory=1},
	sounds=default.node_sound_wood_defaults(),
	drop="trucraft:stick",
	selection_box={
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, -0.375, 0.0625},
		}
	},
	node_box={
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, -0.375, 0.0625},
		}
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.012,
		scale = 0.024,
		spread = {x = 100, y = 100, z = 100},
		seed = 230,
		octaves = 3,
		persist = 0.6
	},
	y_min = -300,
	y_max = 300,
	decoration = "trucraft:aca_stick",
})

minetest.register_node("trucraft:asp_stick", {
	description="Stick",
	tiles={"poly_tcstick3.png"},
	is_ground_content=false,
	sunlight_propagates=true,
	drawtype="nodebox",
	paramtype="light",
	groups={choppy=3, oddly_breakable_by_hand=3, stick=1, not_in_creative_inventory=1},
	sounds=default.node_sound_wood_defaults(),
	drop="trucraft:stick",
	selection_box={
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, -0.375, 0.0625},
		}
	},
	node_box={
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, -0.375, 0.0625},
		}
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.012,
		scale = 0.024,
		spread = {x = 100, y = 100, z = 100},
		seed = 230,
		octaves = 3,
		persist = 0.6
	},
	y_min = -300,
	y_max = 300,
	decoration = "trucraft:asp_stick",
})

minetest.register_node("trucraft:string2", {
	description="Fiber String",
	tiles={"poly_tcstick4.png"},
	is_ground_content=false,
	sunlight_propagates=true,
	drawtype="nodebox",
	paramtype="light",
	groups={snappy=3, oddly_breakable_by_hand=3, string=1},
	sounds=default.node_sound_leaves_defaults(),
	inventory_image="poly_tcstring.png",
	selection_box={
		type = "fixed",
		fixed = {
			{-0.5, -0.4375, -0.0625, 0.5, -0.5, 0.0625},
		}
	},
	node_box={
		type = "fixed",
		fixed = {
			{-0.5, -0.4375, -0.0625, 0.5, -0.5, 0.0625},
		}
	}
})

minetest.override_item("default:pine_tree", {
    groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 0, flammable = 3},
	on_punch = function(pos, node, player, pointed_thing)
		if player:get_wielded_item():get_name() == "trucraft:rock_stone" or player:get_wielded_item():get_name() == "trucraft:rock_sandstone" or player:get_wielded_item():get_name() == "trucraft:rock_desert_stone" then
			minetest.set_node(pos, {name="trucraft:table"})
		end
		if player:get_wielded_item():get_name() == "trucraft:string2" then
			minetest.set_node(pos, {name="trucraft:station"})
			local stack=player:get_wielded_item()
			stack:take_item()
			player:set_wielded_item(stack)
		end
	end
})

minetest.override_item("default:acacia_tree", {
    groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 0, flammable = 3},
	on_punch = function(pos, node, player, pointed_thing)
		if player:get_wielded_item():get_name() == "trucraft:rock_stone" or player:get_wielded_item():get_name() == "trucraft:rock_sandstone" or player:get_wielded_item():get_name() == "trucraft:rock_desert_stone" then
			minetest.set_node(pos, {name="trucraft:table"})
		end
		if player:get_wielded_item():get_name() == "trucraft:string2" then
			minetest.set_node(pos, {name="trucraft:station"})
			local stack=player:get_wielded_item()
			stack:take_item()
			player:set_wielded_item(stack)
		end
	end
})

minetest.override_item("default:aspen_tree", {
    groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 0, flammable = 3},
	on_punch = function(pos, node, player, pointed_thing)
		if player:get_wielded_item():get_name() == "trucraft:rock_stone" or player:get_wielded_item():get_name() == "trucraft:rock_sandstone" or player:get_wielded_item():get_name() == "trucraft:rock_desert_stone" then
			minetest.set_node(pos, {name="trucraft:table"})
		end
		if player:get_wielded_item():get_name() == "trucraft:string2" then
			minetest.set_node(pos, {name="trucraft:station"})
			local stack=player:get_wielded_item()
			stack:take_item()
			player:set_wielded_item(stack)
		end
	end
})

minetest.override_item("default:tree", {
    groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 0, flammable = 3},
	on_punch = function(pos, node, player, pointed_thing)
		if player:get_wielded_item():get_name() == "trucraft:rock_stone" or player:get_wielded_item():get_name() == "trucraft:rock_sandstone" or player:get_wielded_item():get_name() == "trucraft:rock_desert_stone" then
			minetest.set_node(pos, {name="trucraft:table"})
		end
		if player:get_wielded_item():get_name() == "trucraft:string2" then
			minetest.set_node(pos, {name="trucraft:station"})
			local stack=player:get_wielded_item()
			stack:take_item()
			player:set_wielded_item(stack)
		end
	end
})

minetest.override_item("default:jungletree", {
    groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 0, flammable = 3},
	on_punch = function(pos, node, player, pointed_thing)
		if player:get_wielded_item():get_name() == "trucraft:rock_stone" or player:get_wielded_item():get_name() == "trucraft:rock_sandstone" or player:get_wielded_item():get_name() == "trucraft:rock_desert_stone" then
			minetest.set_node(pos, {name="trucraft:table"})
		end
		if player:get_wielded_item():get_name() == "trucraft:string2" then
			minetest.set_node(pos, {name="trucraft:station"})
			local stack=player:get_wielded_item()
			stack:take_item()
			player:set_wielded_item(stack)
		end
	end
})

minetest.override_item("default:gravel", {
    groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 0, flammable = 3},
	on_punch = function(pos, node, player, pointed_thing)
		if player:get_wielded_item():get_name() == "trucraft:sieve" then
			minetest.set_node(pos, {name="air"})
			minetest.add_item({x=pos.x,y=pos.y,z=pos.z}, "default:flint 2")
		end
	end
})



minetest.register_entity("trucraft:floater",{
	hp_max = 1,
	visual="wielditem",
	visual_size={x=.33,y=.33},
	collisionbox = {0,0,0,0,0,0},
	physical=false,
	textures={"air"},
})

local rm = function(pos)
	local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y+1,z=pos.z}, 0.5)
	if objs then
		for _, obj in ipairs(objs) do
			if obj and obj:get_luaentity() and obj:get_luaentity().name == "trucraft:floater" then
				obj:remove()
			end
		end
	end
end

local up = function(pos)
	rm(pos)
	local meta = minetest.get_meta(pos)
	if meta:get_string("item") ~= "" then
		pos.y = pos.y + 0.69
		local texture = meta:get_string("item")
		local ent=minetest.add_entity(pos, "trucraft:floater")
		ent:set_properties({textures={texture}})
	end
end


local d = function(pos)
	local meta = minetest.get_meta(pos)
	if meta:get_string("item") ~= "" then
		minetest.add_item({x=pos.x,y=pos.y+1,z=pos.z}, meta:get_string("item"))
		meta:set_string("item","")
	end
	rm(pos)
end

local rm2 = function(pos)
	local objs = minetest.get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 0.5)
	if objs then
		for _, obj in ipairs(objs) do
			if obj and obj:get_luaentity() and obj:get_luaentity().name == "trucraft:floater" then
				obj:remove()
			end
		end
	end
end

local up2 = function(pos)
	rm2(pos)
	local meta = minetest.get_meta(pos)
	if meta:get_string("item") ~= "" then
		pos.y = pos.y + 0.005
		local texture = meta:get_string("item")
		local ent=minetest.add_entity(pos, "trucraft:floater")
		ent:set_properties({textures={texture}})
		ent:set_properties({visual_size={x=.17,y=.17}})
	end
end


local d2 = function(pos)
	local meta = minetest.get_meta(pos)
	if meta:get_string("item") ~= "" then
		minetest.add_item({x=pos.x,y=pos.y+1,z=pos.z}, meta:get_string("item"))
		meta:set_string("item","")
	end
	rm2(pos)
end

minetest.register_node("trucraft:table", {
	description="Basic Crafting Pedestal",
	tiles={"default_tree_top.png^poly_tcmatrix.png", "default_tree_top.png", "default_tree.png"},
	is_ground_content=false,
	paramtype="light",
	sunlight_propagates=true,
	drawtype="nodebox",
	groups={cracky=3, oddly_breakable_by_hand=3},
	sounds=default.node_sound_metal_defaults(),
	selection_box={
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, -0.25, 0.375}, -- NodeBox1
			{-0.3125, -0.5, -0.3125, 0.3125, 0.375, 0.3125}, -- NodeBox2
			{-0.4375, 0.0625, -0.4375, 0.4375, 0.4375, 0.4375}, -- NodeBox3
		}
	},
	node_box={
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, -0.25, 0.375}, -- NodeBox1
			{-0.3125, -0.5, -0.3125, 0.3125, 0.375, 0.3125}, -- NodeBox2
			{-0.4375, 0.0625, -0.4375, 0.4375, 0.4375, 0.4375}, -- NodeBox3
		}
	},
	on_rightclick = function(pos, node, clicker, itemstack)
		local meta = minetest.get_meta(pos)
		if itemstack then
			d(pos)
			meta:set_string("item", itemstack:get_name())
			itemstack:take_item()
			up(pos)
		else
			d(pos)
		end
		return itemstack
	end,
	on_destruct = function(pos)
		d(pos)
	end,
	on_punch = function(pos, node, player, pointed_thing)
		if player:get_wielded_item():get_definition().groups.axe==1 then
			local meta=minetest.get_meta(pos)
			local item=meta:get_string("item")
			if item then
				if truCraft.chops[item] then
					rm(pos)
					minetest.add_item({x=pos.x,y=pos.y+1,z=pos.z}, truCraft.chops[item])
					meta:set_string("item", "")
				end
			end
		end
	end,
})

minetest.register_lbm({
	name = "trucraft:fix_ent",
	run_at_every_load=true,
	nodenames = {"trucraft:table"},
	action = function(pos, node)
		up(pos)
	end,
})

minetest.register_lbm({
	name = "trucraft:fix_ent2",
	run_at_every_load=true,
	nodenames = {"trucraft:fire"},
	action = function(pos, node)
		up2(pos)
	end,
})

minetest.register_node("trucraft:station", {
	description="Basic Crafting Bench",
	tiles={"default_tree_top.png^poly_tcmatrix2.png", "default_tree_top.png", "default_tree.png^poly_tcstick5.png"},
	is_ground_content=false,
	paramtype="light",
	sunlight_propagates=true,
	drawtype="nodebox",
	groups={cracky=3, oddly_breakable_by_hand=3},
	sounds=default.node_sound_metal_defaults(),
	selection_box={
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, -0.25, 0.375},
			{-0.3125, -0.5, -0.3125, 0.3125, 0.375, 0.3125},
			{-0.4375, 0.0625, -0.4375, 0.4375, 0.4375, 0.4375},
		}
	},
	node_box={
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, -0.25, 0.375},
			{-0.3125, -0.5, -0.3125, 0.3125, 0.375, 0.3125},
			{-0.4375, 0.0625, -0.4375, 0.4375, 0.4375, 0.4375},
		}
	},
	on_rightclick = function(pos, node, clicker, itemstack)
		local advig_data={}
		local inv=minetest.get_meta(pos):get_inventory()
		inv:set_list("main", {})
		inv:set_size("main", 4)
		
		if minetest.get_node({x=pos.x, y=pos.y, z=pos.z+1}).name=="trucraft:table" then
			local meta=minetest.get_meta({x=pos.x, y=pos.y, z=pos.z+1})
			inv:add_item("main", meta:get_string("item"))
		end
		if minetest.get_node({x=pos.x, y=pos.y, z=pos.z-1}).name=="trucraft:table" then
			local meta=minetest.get_meta({x=pos.x, y=pos.y, z=pos.z-1})
			inv:add_item("main", meta:get_string("item"))
		end
		if minetest.get_node({x=pos.x+1, y=pos.y, z=pos.z}).name=="trucraft:table" then
			local meta=minetest.get_meta({x=pos.x+1, y=pos.y, z=pos.z})
			inv:add_item("main", meta:get_string("item"))
		end
		if minetest.get_node({x=pos.x-1, y=pos.y, z=pos.z}).name=="trucraft:table" then
			local meta=minetest.get_meta({x=pos.x-1, y=pos.y, z=pos.z})
			inv:add_item("main", meta:get_string("item"))    
		end
		
		for _,v in pairs(truCraft.basic_crafts) do
			if inv:contains_item("main", v.item1) then
				inv:remove_item("main", v.item1)
				if inv:contains_item("main", v.item2) then
					inv:remove_item("main", v.item2)
					if inv:contains_item("main", v.item3) then
						inv:remove_item("main", v.item3)
						if inv:contains_item("main", v.item4) then
							minetest.add_item({x=pos.x,y=pos.y+1,z=pos.z}, v.result)

							local meta=minetest.get_meta({x=pos.x, y=pos.y, z=pos.z+1})
							meta:set_string("item", "")
							rm({x=pos.x, y=pos.y, z=pos.z+1})
							
							local meta=minetest.get_meta({x=pos.x, y=pos.y, z=pos.z-1})
							meta:set_string("item", "")
							rm({x=pos.x, y=pos.y, z=pos.z-1})
							
							local meta=minetest.get_meta({x=pos.x+1, y=pos.y, z=pos.z})
							meta:set_string("item", "")
							rm({x=pos.x+1, y=pos.y, z=pos.z})
							
							local meta=minetest.get_meta({x=pos.x-1, y=pos.y, z=pos.z})
							meta:set_string("item", "")
							rm({x=pos.x-1, y=pos.y, z=pos.z})
							
							return
						end
					end
				end
			end
		end
	end,
})

minetest.register_node("trucraft:fire", {
	description="Campfire",
	tiles={"default_cobble.png^poly_tcampfire_top.png", "default_cobble.png", "default_cobble.png^poly_tcampfire.png"},
	is_ground_content=false,
	paramtype="light",
	sunlight_propagates=true,
	drawtype="nodebox",
	groups={cracky=3, oddly_breakable_by_hand=3},
	sounds=default.node_sound_metal_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.25, -0.5, -0.25, -0.0625, 0.5}, -- NodeBox4
			{0.25, -0.25, -0.5, 0.4375, -0.0625, 0.5}, -- NodeBox5
			{-0.5, -0.25, 0.25, 0.5, -0.0625, 0.4375}, -- NodeBox6
			{-0.5, -0.25, -0.4375, 0.5, -0.0625, -0.25}, -- NodeBox7
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox8
		}
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.25, -0.5, -0.25, -0.0625, 0.5}, -- NodeBox4
			{0.25, -0.25, -0.5, 0.4375, -0.0625, 0.5}, -- NodeBox5
			{-0.5, -0.25, 0.25, 0.5, -0.0625, 0.4375}, -- NodeBox6
			{-0.5, -0.25, -0.4375, 0.5, -0.0625, -0.25}, -- NodeBox7
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox8
		}
	},
	on_rightclick = function(pos, node, clicker, itemstack)
		local meta = minetest.get_meta(pos)
		if itemstack then
			local result,dec=minetest.get_craft_result({method="cooking", width=1, items={itemstack:get_name()}})
			if result.item and result.item:get_name() then
				meta:set_string("result", ItemStack(result.item):get_name())
				meta:set_string("cooking", "true")
				meta:set_int("cooktime", (tonumber(result.time)*10)*30)
				meta:set_int("cooktime_elapsed", 0.1)
			end
			d2(pos)
			meta:set_string("item", itemstack:get_name())
			itemstack:take_item()
			up2(pos)
		else
			d2(pos)
			meta:set_string("cooking", "false")
			meta:set_int("cooktime", 0)
			meta:set_int("cooktime_elapsed", 0)
			meta:set_string("result", "")
		end
		return itemstack
	end,
	on_destruct = function(pos)
		d2(pos)
	end,
	on_construct = function(pos)
		local meta=minetest.get_meta(pos)
		meta:set_string("fire", "false")
		meta:set_int("looptime", 0)
		meta:set_int("calltime", 0)
		local timer=minetest.get_node_timer(pos)
		timer:set(0.1, 0)
	end,
	on_punch = function(pos, node, player, pointed_thing)
		if player:get_wielded_item():get_name() == "default:coal_lump" then
			local meta=minetest.get_meta(pos)
			meta:set_string("fire", "true")
			meta:set_int("calltime", meta:get_int("calltime")+600)
			local stack=player:get_wielded_item()
			stack:take_item()
			player:set_wielded_item(stack)
		end
	end,
	on_timer = function(pos, elapsed)
		local meta=minetest.get_meta(pos)
		meta:set_int("looptime", meta:get_int("looptime")+1)
		if meta:get_int("looptime") > meta:get_int("calltime") then
			meta:set_string("fire", "false")
			meta:set_int("looptime", 0)
			meta:set_int("calltime", 0)
		end
		if meta:get_string("fire")=="true" then
			minetest.add_particle({
				pos = pos,
				velocity = {x=0, y=0, z=0},
				acceleration = {x=0, y=0, z=0},
				expirationtime = 1,
				size = 5,
				collisiondetection = false,
				vertical = true,
				texture = "default_furnace_fire_fg.png"
			})
			minetest.add_particle({
				pos = pos,
				velocity = {x=0.05, y=0.3, z=0.05},
				acceleration = {x=0.05, y=0.3, z=0.05},
				expirationtime = 5,
				size = 3,
				collisiondetection = false,
				vertical = false,
				texture = "poly_tcsmoke.png"
			})
			if meta:get_string("cooking")=="true" then
				meta:set_string("infotext", "Progress: "..meta:get_int("cooktime_elapsed").."/"..meta:get_int("cooktime"))
				meta:set_int("cooktime_elapsed", meta:get_int("cooktime_elapsed")+1)
				if meta:get_int("cooktime_elapsed")>meta:get_int("cooktime") then
					meta:set_string("item", meta:get_string("result"))
					up2(pos)
					meta:set_string("cooking", "false")
					meta:set_int("cooktime", 0)
					meta:set_int("cooktime_elapsed", 0)
					meta:set_string("result", "")
				end
			end
		end
		local timer=minetest.get_node_timer(pos)
		timer:set(0.1, 0)
	end
})
