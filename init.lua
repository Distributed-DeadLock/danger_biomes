local mg_name = core.get_mapgen_setting("mg_name")

if not (mg_name == "v6") then

-- Blastlands (cold-dry)

	core.register_biome({
		name = "blastlands",
		node_top = "default:permafrost",
		depth_top = 2,
		node_filler = "default:coalblock",
		depth_filler = 3,
		node_stone = "bakedclay:brown",
		node_riverbed = "default:silver_sand",
		depth_riverbed = 2,
		node_dungeon = "default:desert_stone",
		node_dungeon_stair = "stairs:stair_desert_stone",
		y_max = 60,
		y_min = -4,
		heat_point = 1,
		humidity_point = 1,
	})
	
	core.register_decoration({
		deco_type = "simple",
		place_on = {"default:permafrost"},
		sidelen = 80,
		fill_ratio = 0.2,
		biomes = {"blastlands"},
		y_max = 58,
		y_min = -3,
		decoration = "default:coalblock",
		place_offset_y = -1,
		flags = "force_placement",
	})
	
	core.register_decoration({
		deco_type = "simple",
		place_on = {"default:permafrost"},
		sidelen = 80,
		fill_ratio = 0.05,
		biomes = {"blastlands"},
		y_max = 60,
		y_min = 4,
		decoration = "default:acacia_bush_stem",
		place_offset_y = 0,
	})
	
	core.register_decoration({
		deco_type = "simple",
		place_on = {"default:permafrost", "default:coalblock"},
		sidelen = 80,
		fill_ratio = 0.01,
		biomes = {"blastlands"},
		y_max = 57,
		y_min = 1,
		decoration = "ethereal:candle_black",
		place_offset_y = 0,
	})
	
		core.register_decoration({
		name = "danger_biomes:blasttrap",
		deco_type = "schematic",
		place_on = {"default:permafrost", "default:coalblock"},
		sidelen = 80,
		fill_ratio = 0.005,
		biomes = {"blastlands"},
		y_max = 56,
		y_min = 0,
		schematic = core.get_modpath("danger_biomes") .. "/schems/blasttrap.mts",
		place_offset_y = -3,
		flags = "force_placement",
	})
	
-- Lavaflood (hot-dry)

	core.register_biome({
		name = "lavaflood",
		node_top = "default:lava_source",
		depth_top = 1,
		node_filler = "ethereal:quicksand2",
		depth_filler = 2,
		node_riverbed = "ethereal:quicksand2",
		depth_riverbed = 2,
		node_dungeon = "default:desert_stone",
		node_dungeon_stair = "stairs:stair_desert_stone",
		y_max = 60,
		y_min = 1,
		heat_point = 99,
		humidity_point = 1,
	})
	
	core.register_decoration({
		name = "danger_biomes:scorchedlog",
		deco_type = "schematic",
		place_on = {"default:lava_source"},
		sidelen = 80,
		fill_ratio = 0.2,
		biomes = {"lavaflood"},
		y_max = 60,
		y_min = 1,
		schematic = core.get_modpath("danger_biomes") .. "/schems/scorchedlog.mts",
		place_offset_y = 0,
		flags = "force_placement",
		rotation = "random",
	})
	
		core.register_decoration({
		name = "danger_biomes:scorchedpile",
		deco_type = "schematic",
		place_on = {"default:lava_source"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"lavaflood"},
		y_max = 60,
		y_min = 1,
		schematic = core.get_modpath("danger_biomes") .. "/schems/scorchedpile.mts",
		place_offset_y = -2,
		flags = "force_placement",
	})
	
	core.register_decoration({
		deco_type = "simple",
		place_on = {"default:lava_source", "ethereal:scorched_tree"},
		sidelen = 80,
		fill_ratio = 0.01,
		biomes = {"lavaflood"},
		y_max = 60,
		y_min = 1,
		decoration = "fire:permanent_flame",
		place_offset_y = 0,
	})
	
-- Sweatplane (hot-wet)

	core.register_biome({
		name = "sweatplane",
		node_top = "default:dry_dirt",
		depth_top = 2,
		node_filler = "ethereal:quicksand2",
		depth_filler = 1,
		node_stone = "default:desert_stone",
		node_riverbed = "ethereal:quicksand2",
		depth_riverbed = 1,
		node_dungeon = "default:desert_stone",
		node_dungeon_stair = "stairs:stair_desert_stone",
		y_max = 60,
		y_min = 1,
		heat_point = 99,
		humidity_point = 99,
	})

	core.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt"},
		sidelen = 80,
		fill_ratio = 0.3,
		biomes = {"sweatplane"},
		y_max = 60,
		y_min = 1,
		decoration = "default:coral_brown",
		place_offset_y = -1,
		flags = "force_placement",
	})
	
	core.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt"},
		sidelen = 80,
		fill_ratio = 0.25,
		biomes = {"sweatplane"},
		y_max = 60,
		y_min = 1,
		decoration = "default:desert_stone",
		place_offset_y = -1,
		flags = "force_placement",
	})
		
	core.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt","default:desert_stone","default:coral_brown"},
		sidelen = 80,
		fill_ratio = 0.01,
		biomes = {"sweatplane"},
		y_max = 60,
		y_min = 1,
		decoration = "flowers:tulip_black",
		place_offset_y = 0,
		flags = "force_placement",
	})
	
	core.register_decoration({
		name = "danger_biomes:puddle",
		deco_type = "schematic",
		place_on = {"default:dry_dirt","default:desert_stone","default:coral_brown"},
		sidelen = 80,
		fill_ratio = 0.02,
		biomes = {"sweatplane"},
		y_max = 60,
		y_min = 1,
		schematic = core.get_modpath("danger_biomes") .. "/schems/puddle.mts",
		place_offset_y = 0,
		flags = "force_placement",
		rotation = "random",
	})

	core.register_decoration({
		name = "danger_biomes:tptrap",
		deco_type = "schematic",
		place_on = {"default:dry_dirt","default:desert_stone","default:coral_brown"},
		sidelen = 80,
		fill_ratio = 0.005,
		biomes = {"sweatplane"},
		y_max = 60,
		y_min = 1,
		schematic = core.get_modpath("danger_biomes") .. "/schems/tptrap.mts",
		place_offset_y = -1,
		flags = "force_placement",
		rotation = "random",
	})
	
	core.register_decoration({
		name = "danger_biomes:jungle_tree_swamp",
		deco_type = "schematic",
		place_on = {"default:dry_dirt","default:desert_stone","default:coral_brown"},
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			scale = -0.1,
			spread = {x = 200, y = 200, z = 200},
			seed = 354,
			octaves = 1,
			persist = 0.5
		},
		biomes = {"sweatplane"},
		y_max = 30,
		y_min = -1,
		schematic = core.get_modpath("default") .. "/schematics/jungle_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

-- Icepoke (cold-wet)

		core.register_biome({
		name = "icepoke",
		node_top = "default:snowblock",
		depth_top = 1,
		node_filler = "default:ice",
		depth_filler = 3,
		node_stone = "default:silver_sandstone",
		node_riverbed = "default:silver_sand",
		depth_riverbed = 2,
		node_dungeon = "default:silver_sandstone",
		node_dungeon_stair = "stairs:stair_silver_sandstone",
		y_max = 45,
		y_min = -10,
		heat_point = 1,
		humidity_point = 99,
	})
	
	core.register_decoration({
		name = "danger_biomes:sandhole",
		deco_type = "schematic",
		place_on = {"default:snowblock","default:ice"},
		sidelen = 80,
		fill_ratio = 0.03,
		schematic = core.get_modpath("danger_biomes") .. "/schems/blasttrap.mts",
		biomes = {"icepoke"},
		y_max = 35,
		y_min = -10,
		schematic = core.get_modpath("danger_biomes") .. "/schems/sandhole.mts",
		flags = "force_placement",
		rotation = "random",
		place_offset_y = -2,
	})
	
	core.register_decoration({
		name = "danger_biomes:lavahole",
		deco_type = "schematic",
		place_on = {"default:snowblock","default:ice"},
		sidelen = 80,
		fill_ratio = 0.009,
		biomes = {"icepoke"},
		y_max = 30,
		y_min = -1,
		schematic = core.get_modpath("danger_biomes") .. "/schems/lavahole.mts",
		flags = "force_placement",
		rotation = "random",
		place_offset_y = -3,
	})
	
	core.register_decoration({
		deco_type = "simple",
		place_on = {"default:snowblock","default:ice"},
		sidelen = 80,
		fill_ratio = 0.2,
		biomes = {"icepoke"},
		y_max = 40,
		y_min = -10,
		decoration = "ethereal:thin_ice",
		place_offset_y = 0,
	})
	
	core.register_decoration({
		deco_type = "simple",
		place_on = {"default:snowblock","default:ice"},
		sidelen = 80,
		fill_ratio = 0.4,
		biomes = {"icepoke"},
		y_max = 40,
		y_min = -1,
		decoration = "ethereal:snowygrass",
		place_offset_y = 0,
	})
end
