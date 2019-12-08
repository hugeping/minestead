recipes = {
-- here
 	{ nam = "basic_materials:steel_strip 12", recipe = { { "", "default:steel_ingot", "" }, { "default:steel_ingot", "", "" } } },
 	{ nam = "basic_materials:copper_strip 12", recipe = { { "", "default:copper_ingot", "" }, { "default:copper_ingot", "", "" } } },
 	{ nam = "basic_materials:steel_bar 6", recipe = { { "", "", "default:steel_ingot" }, { "", "default:steel_ingot", "" }, { "default:steel_ingot", "", "" } } },
 	{ nam = "basic_materials:padlock 2", recipe = { { "basic_materials:steel_bar" }, { "default:steel_ingot" }, { "default:steel_ingot" } } },
 	{ nam = "basic_materials:chainlink_steel 12", recipe = { { "", "default:steel_ingot", "default:steel_ingot" }, { "default:steel_ingot", "", "default:steel_ingot" }, { "default:steel_ingot", "default:steel_ingot", "" } } },
 	{ nam = "basic_materials:chainlink_brass 12", recipe = { { "", "basic_materials:brass_ingot", "basic_materials:brass_ingot" }, { "basic_materials:brass_ingot", "", "basic_materials:brass_ingot" }, { "basic_materials:brass_ingot", "basic_materials:brass_ingot", "" } } },
 	{ nam = "basic_materials:chain_steel 2", recipe = { { "basic_materials:chainlink_steel" }, { "basic_materials:chainlink_steel" }, { "basic_materials:chainlink_steel" } } },
 	{ nam = "basic_materials:chain_brass 2", recipe = { { "basic_materials:chainlink_brass" }, { "basic_materials:chainlink_brass" }, { "basic_materials:chainlink_brass" } } },
 	{ nam = "basic_materials:gear_steel 6", recipe = { { "", "default:steel_ingot", "" }, { "default:steel_ingot", "basic_materials:chainlink_steel", "default:steel_ingot" }, { "", "default:steel_ingot", "" } } },
 	{ nam = "basic_materials:brass_block", recipe = { { "basic_materials:brass_ingot", "basic_materials:brass_ingot", "basic_materials:brass_ingot" }, { "basic_materials:brass_ingot", "basic_materials:brass_ingot", "basic_materials:brass_ingot" }, { "basic_materials:brass_ingot", "basic_materials:brass_ingot", "basic_materials:brass_ingot" } } },
 	{ nam = "mesecons_materials:silicon 4", recipe = { { "default:sand", "default:sand" }, { "default:sand", "default:steel_ingot" } } },
 	{ nam = "basic_materials:ic 4", recipe = { { "mesecons_materials:silicon", "mesecons_materials:silicon" }, { "mesecons_materials:silicon", "default:copper_ingot" } } },
 	{ nam = "basic_materials:motor 2", recipe = { { "default:mese_crystal_fragment", "basic_materials:copper_wire", "basic_materials:plastic_sheet" }, { "default:copper_ingot", "default:steel_ingot", "default:steel_ingot" }, { "default:mese_crystal_fragment", "basic_materials:copper_wire", "basic_materials:plastic_sheet" } } },
 	{ nam = "basic_materials:heating_element 2", recipe = { { "default:copper_ingot", "default:mese_crystal_fragment", "default:copper_ingot" } } },
 	{ nam = "basic_materials:energy_crystal_simple 2", recipe = { { "default:mese_crystal_fragment", "default:torch", "default:mese_crystal_fragment" }, { "default:diamond", "default:gold_ingot", "default:diamond" } } },
 	{ nam = "basic_materials:plastic_strip 9", recipe = { { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" } } },
 	{ nam = "basic_materials:empty_spool 3", recipe = { { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" }, { "", "basic_materials:plastic_sheet", "" }, { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" } } },
 	{ recipe = { { "default:obsidian_glass", "", "default:obsidian_glass" }, { "default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot" }, { "default:obsidian_glass", "", "default:obsidian_glass" } }, nam = "binoculars:binoculars" },
 	{ recipe = { { "default:brick", "default:cobble", "default:brick" } }, nam = "building_blocks:brobble_spread 4" },
 	{ recipe = { { "default:leaves" }, { "default:dirt" } }, nam = "building_blocks:fakegrass 2" },
 	{ recipe = { { "default:steel_ingot", "building_blocks:sticks", "default:steel_ingot" } }, nam = "building_blocks:Fireplace 1" },
 	{ recipe = { { "default:steel_ingot", "default:steel_ingot" }, { "default:glass", "default:glass" } }, nam = "building_blocks:grate 1" },
 	{ recipe = { { "default:gravel", "default:gravel", "default:gravel" } }, nam = "building_blocks:gravel_spread 4" },
 	{ recipe = { { "default:junglewood", "default:wood" }, { "default:wood", "default:junglewood" } }, nam = "building_blocks:hardwood 2" },
 	{ recipe = { { "default:junglewood", "default:wood" }, { "default:wood", "default:junglewood" } }, nam = "building_blocks:hardwood 2" },
 	{ recipe = { { "building_blocks:Adobe", "building_blocks:Adobe" }, { "building_blocks:Adobe", "building_blocks:Adobe" } }, nam = "building_blocks:Roofing 10" },
 	{ recipe = { { "building_blocks:sticks" } }, nam = "default:stick 4" },
 	{ recipe = { { "default:gravel", "default:coal_lump" }, { "default:coal_lump", "default:gravel" } }, nam = "building_blocks:tar_base 4" },
 	{ recipe = { { "default:gravel", "default:coal_lump" }, { "default:coal_lump", "default:gravel" } }, nam = "building_blocks:tar_base 4" },
 	{ recipe = { { "farming:string", "farming:string", "farming:string" } }, nam = "building_blocks:terrycloth_towel 2" },
 	{ recipe = { { "default:wood" }, { "default:glass" } }, nam = "building_blocks:woodglass 1" },
 	{ nam = "default:wood 4", recipe = { { "default:tree" } } },
 	{ nam = "default:junglewood 4", recipe = { { "default:jungletree" } } },
 	{ nam = "default:pine_wood 4", recipe = { { "default:pine_tree" } } },
 	{ nam = "default:acacia_wood 4", recipe = { { "default:acacia_tree" } } },
 	{ nam = "default:aspen_wood 4", recipe = { { "default:aspen_tree" } } },
 	{ nam = "default:wood", recipe = { { "default:bush_stem" } } },
 	{ nam = "default:acacia_wood", recipe = { { "default:acacia_bush_stem" } } },
 	{ nam = "default:pine_wood", recipe = { { "default:pine_bush_stem" } } },
 	{ nam = "default:skeleton_key", recipe = { { "default:gold_ingot" } } },
 	{ nam = "default:coalblock", recipe = { { "default:coal_lump", "default:coal_lump", "default:coal_lump" }, { "default:coal_lump", "default:coal_lump", "default:coal_lump" }, { "default:coal_lump", "default:coal_lump", "default:coal_lump" } } },
 	{ nam = "default:coal_lump 9", recipe = { { "default:coalblock" } } },
 	{ nam = "default:steelblock", recipe = { { "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" }, { "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" }, { "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" } } },
 	{ nam = "default:steel_ingot 9", recipe = { { "default:steelblock" } } },
 	{ nam = "default:copperblock", recipe = { { "default:copper_ingot", "default:copper_ingot", "default:copper_ingot" }, { "default:copper_ingot", "default:copper_ingot", "default:copper_ingot" }, { "default:copper_ingot", "default:copper_ingot", "default:copper_ingot" } } },
 	{ nam = "default:copper_ingot 9", recipe = { { "default:copperblock" } } },
 	{ nam = "default:tinblock", recipe = { { "default:tin_ingot", "default:tin_ingot", "default:tin_ingot" }, { "default:tin_ingot", "default:tin_ingot", "default:tin_ingot" }, { "default:tin_ingot", "default:tin_ingot", "default:tin_ingot" } } },
 	{ nam = "default:tin_ingot 9", recipe = { { "default:tinblock" } } },
 	{ nam = "default:bronze_ingot 9", recipe = { { "default:bronzeblock" } } },
 	{ nam = "default:bronzeblock", recipe = { { "default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot" }, { "default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot" }, { "default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot" } } },
 	{ nam = "default:bronze_ingot 9", recipe = { { "default:bronzeblock" } } },
 	{ nam = "default:goldblock", recipe = { { "default:gold_ingot", "default:gold_ingot", "default:gold_ingot" }, { "default:gold_ingot", "default:gold_ingot", "default:gold_ingot" }, { "default:gold_ingot", "default:gold_ingot", "default:gold_ingot" } } },
 	{ nam = "default:gold_ingot 9", recipe = { { "default:goldblock" } } },
 	{ nam = "default:diamondblock", recipe = { { "default:diamond", "default:diamond", "default:diamond" }, { "default:diamond", "default:diamond", "default:diamond" }, { "default:diamond", "default:diamond", "default:diamond" } } },
 	{ nam = "default:diamond 9", recipe = { { "default:diamondblock" } } },
 	{ nam = "default:sandstone", recipe = { { "default:sand", "default:sand" }, { "default:sand", "default:sand" } } },
 	{ nam = "default:sand 4", recipe = { { "default:sandstone" } } },
 	{ nam = "default:sandstonebrick 4", recipe = { { "default:sandstone", "default:sandstone" }, { "default:sandstone", "default:sandstone" } } },
 	{ nam = "default:sandstone_block 9", recipe = { { "default:sandstone", "default:sandstone", "default:sandstone" }, { "default:sandstone", "default:sandstone", "default:sandstone" }, { "default:sandstone", "default:sandstone", "default:sandstone" } } },
 	{ nam = "default:desert_sandstone", recipe = { { "default:desert_sand", "default:desert_sand" }, { "default:desert_sand", "default:desert_sand" } } },
 	{ nam = "default:desert_sand 4", recipe = { { "default:desert_sandstone" } } },
 	{ nam = "default:desert_sandstone_brick 4", recipe = { { "default:desert_sandstone", "default:desert_sandstone" }, { "default:desert_sandstone", "default:desert_sandstone" } } },
 	{ nam = "default:desert_sandstone_block 9", recipe = { { "default:desert_sandstone", "default:desert_sandstone", "default:desert_sandstone" }, { "default:desert_sandstone", "default:desert_sandstone", "default:desert_sandstone" }, { "default:desert_sandstone", "default:desert_sandstone", "default:desert_sandstone" } } },
 	{ nam = "default:silver_sandstone", recipe = { { "default:silver_sand", "default:silver_sand" }, { "default:silver_sand", "default:silver_sand" } } },
 	{ nam = "default:silver_sand 4", recipe = { { "default:silver_sandstone" } } },
 	{ nam = "default:silver_sandstone_brick 4", recipe = { { "default:silver_sandstone", "default:silver_sandstone" }, { "default:silver_sandstone", "default:silver_sandstone" } } },
 	{ nam = "default:silver_sandstone_block 9", recipe = { { "default:silver_sandstone", "default:silver_sandstone", "default:silver_sandstone" }, { "default:silver_sandstone", "default:silver_sandstone", "default:silver_sandstone" }, { "default:silver_sandstone", "default:silver_sandstone", "default:silver_sandstone" } } },
 	{ nam = "default:clay", recipe = { { "default:clay_lump", "default:clay_lump" }, { "default:clay_lump", "default:clay_lump" } } },
 	{ nam = "default:clay_lump 4", recipe = { { "default:clay" } } },
 	{ nam = "default:brick", recipe = { { "default:clay_brick", "default:clay_brick" }, { "default:clay_brick", "default:clay_brick" } } },
 	{ nam = "default:clay_brick 4", recipe = { { "default:brick" } } },
 	{ nam = "default:paper", recipe = { { "default:papyrus", "default:papyrus", "default:papyrus" } } },
 	{ nam = "default:book", recipe = { { "default:paper" }, { "default:paper" }, { "default:paper" } } },
 	{ nam = "default:ladder_steel 15", recipe = { { "default:steel_ingot", "", "default:steel_ingot" }, { "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" }, { "default:steel_ingot", "", "default:steel_ingot" } } },
 	{ nam = "default:mese", recipe = { { "default:mese_crystal", "default:mese_crystal", "default:mese_crystal" }, { "default:mese_crystal", "default:mese_crystal", "default:mese_crystal" }, { "default:mese_crystal", "default:mese_crystal", "default:mese_crystal" } } },
 	{ nam = "default:mese_crystal 9", recipe = { { "default:mese" } } },
 	{ nam = "default:mese_crystal_fragment 9", recipe = { { "default:mese_crystal" } } },
 	{ nam = "default:mese_crystal", recipe = { { "default:mese_crystal_fragment", "default:mese_crystal_fragment", "default:mese_crystal_fragment" }, { "default:mese_crystal_fragment", "default:mese_crystal_fragment", "default:mese_crystal_fragment" }, { "default:mese_crystal_fragment", "default:mese_crystal_fragment", "default:mese_crystal_fragment" } } },
 	{ nam = "default:meselamp", recipe = { { "default:glass" }, { "default:mese_crystal" } } },
 	{ nam = "default:obsidian_shard 9", recipe = { { "default:obsidian" } } },
 	{ nam = "default:obsidian", recipe = { { "default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard" }, { "default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard" }, { "default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard" } } },
 	{ nam = "default:obsidianbrick 4", recipe = { { "default:obsidian", "default:obsidian" }, { "default:obsidian", "default:obsidian" } } },
 	{ nam = "default:obsidian_block 9", recipe = { { "default:obsidian", "default:obsidian", "default:obsidian" }, { "default:obsidian", "default:obsidian", "default:obsidian" }, { "default:obsidian", "default:obsidian", "default:obsidian" } } },
 	{ nam = "default:stonebrick 4", recipe = { { "default:stone", "default:stone" }, { "default:stone", "default:stone" } } },
 	{ nam = "default:stone_block 9", recipe = { { "default:stone", "default:stone", "default:stone" }, { "default:stone", "default:stone", "default:stone" }, { "default:stone", "default:stone", "default:stone" } } },
 	{ nam = "default:desert_stonebrick 4", recipe = { { "default:desert_stone", "default:desert_stone" }, { "default:desert_stone", "default:desert_stone" } } },
 	{ nam = "default:desert_stone_block 9", recipe = { { "default:desert_stone", "default:desert_stone", "default:desert_stone" }, { "default:desert_stone", "default:desert_stone", "default:desert_stone" }, { "default:desert_stone", "default:desert_stone", "default:desert_stone" } } },
 	{ nam = "default:snowblock", recipe = { { "default:snow", "default:snow", "default:snow" }, { "default:snow", "default:snow", "default:snow" }, { "default:snow", "default:snow", "default:snow" } } },
 	{ nam = "default:snow 9", recipe = { { "default:snowblock" } } },
 	{ nam = "default:emergent_jungle_sapling", recipe = { { "default:junglesapling", "default:junglesapling", "default:junglesapling" }, { "default:junglesapling", "default:junglesapling", "default:junglesapling" }, { "default:junglesapling", "default:junglesapling", "default:junglesapling" } } },
 	{ nam = "default:large_cactus_seedling", recipe = { { "", "default:cactus", "" }, { "default:cactus", "default:cactus", "default:cactus" }, { "", "default:cactus", "" } } },
 	{ nam = "digilines:wire_std_00000000 2", recipe = { { "mesecons_materials:fiber", "mesecons_materials:fiber", "mesecons_materials:fiber" }, { "mesecons_insulated:insulated_off", "mesecons_insulated:insulated_off", "default:gold_ingot" }, { "mesecons_materials:fiber", "mesecons_materials:fiber", "mesecons_materials:fiber" } } },
 	{ nam = "digilines:lcd 2", recipe = { { "default:steel_ingot", "digilines:wire_std_00000000", "default:steel_ingot" }, { "mesecons_lightstone:lightstone_green_off", "mesecons_lightstone:lightstone_green_off", "mesecons_lightstone:lightstone_green_off" }, { "default:glass", "default:glass", "default:glass" } } },
 	{ nam = "dye:violet 2", recipe = { { "default:blueberries" } } },
 	{ nam = "elevator:elevator", recipe = { { "default:steel_ingot", "farming:cotton", "default:steel_ingot" }, { "default:steel_ingot", "default:mese_crystal", "default:steel_ingot" }, { "xpanes:pane_flat", "default:glass", "xpanes:pane_flat" } } },
 	{ nam = "elevator:shaft", recipe = { { "default:steel_ingot", "default:obsidian_glass" }, { "default:obsidian_glass", "default:steel_ingot" } } },
 	{ nam = "elevator:motor", recipe = { { "default:diamond", "default:copper_ingot", "default:diamond" }, { "default:steelblock", "default:furnace", "default:steelblock" }, { "farming:cotton", "default:diamond", "farming:cotton" } } },
 	{ nam = "elevator:elevator", recipe = { { "default:steel_ingot", "farming:cotton", "default:steel_ingot" }, { "default:steel_ingot", "default:mese_crystal", "default:steel_ingot" }, { "xpanes:pane_flat", "default:glass", "xpanes:pane_flat" } } },
 	{ nam = "elevator:shaft", recipe = { { "default:steel_ingot", "default:obsidian_glass" }, { "default:obsidian_glass", "default:steel_ingot" } } },
 	{ nam = "elevator:motor", recipe = { { "default:diamond", "default:copper_ingot", "default:diamond" }, { "default:steelblock", "default:furnace", "default:steelblock" }, { "farming:cotton", "default:diamond", "farming:cotton" } } },
 	{ nam = "elevator:elevator", recipe = { { "default:steel_ingot", "farming:cotton", "default:steel_ingot" }, { "default:steel_ingot", "default:mese_crystal", "default:steel_ingot" }, { "xpanes:pane_flat", "default:glass", "xpanes:pane_flat" } } },
 	{ nam = "elevator:shaft", recipe = { { "default:steel_ingot", "default:obsidian_glass" }, { "default:obsidian_glass", "default:steel_ingot" } } },
 	{ nam = "elevator:motor", recipe = { { "default:diamond", "default:copper_ingot", "default:diamond" }, { "default:steelblock", "default:furnace", "default:steelblock" }, { "farming:cotton", "default:diamond", "farming:cotton" } } },
 	{ nam = "mesecons_pistons:piston_sticky_off", recipe = { { "mesecons_materials:glue" }, { "mesecons_pistons:piston_normal_off" } } },
 	{ recipe = { { "mesecons_materials:fiber", "mesecons_materials:fiber", "mesecons_materials:fiber" }, { "mesecons:wire_00000000_off", "mesecons:wire_00000000_off", "mesecons:wire_00000000_off" }, { "mesecons_materials:fiber", "mesecons_materials:fiber", "mesecons_materials:fiber" } }, nam = "mesecons_insulated:insulated_off 3" },
 	{ nam = "mesecons_hydroturbine:hydro_turbine_off 2", recipe = { { "", "default:stick", "" }, { "default:stick", "default:steel_ingot", "default:stick" }, { "", "default:stick", "" } } },
 	{ nam = "mesecons_solarpanel:solar_panel_off 1", recipe = { { "mesecons_materials:silicon", "mesecons_materials:silicon" }, { "mesecons_materials:silicon", "mesecons_materials:silicon" } } },
 	{ nam = "mesecons_extrawires:vertical_off 3", recipe = { { "mesecons:wire_00000000_off" }, { "mesecons:wire_00000000_off" }, { "mesecons:wire_00000000_off" } } },
 	{ nam = "mesecons:wire_00000000_off", recipe = { { "mesecons_extrawires:vertical_off" } } },
 	{ nam = "mesecons_extrawires:tjunction_off 3", recipe = { { "", "", "" }, { "mesecons_insulated:insulated_off", "mesecons_insulated:insulated_off", "mesecons_insulated:insulated_off" }, { "", "mesecons_insulated:insulated_off", "" } } },
 	{ recipe = { { "", "", "" }, { "mesecons_insulated:insulated_off", "mesecons_insulated:insulated_off", "" }, { "", "mesecons_insulated:insulated_off", "" } }, nam = "mesecons_extrawires:corner_off 3" },
 	{ nam = "mesecons_movestones:sticky_movestone", recipe = { { "mesecons_materials:glue", "mesecons_movestones:movestone", "mesecons_materials:glue" } } },
 	{ nam = "mesecons_movestones:sticky_movestone_vertical", recipe = { { "mesecons_materials:glue" }, { "mesecons_movestones:movestone_vertical" }, { "mesecons_materials:glue" } } },
 	{ nam = "default:chest_locked", recipe = { {  }, { "default:chest" } } },
 	{ nam = "pipeworks:pipe_1_empty 12", recipe = { { "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" }, { "", "", "" }, { "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" } } },
 	{ nam = "pipeworks:straight_pipe_empty 3", recipe = { { "pipeworks:pipe_1_empty", "pipeworks:pipe_1_empty", "pipeworks:pipe_1_empty" } } },
 	{ nam = "pipeworks:spigot 3", recipe = { { "pipeworks:pipe_1_empty", "" }, { "", "pipeworks:pipe_1_empty" } } },
 	{ nam = "pipeworks:entry_panel_empty 2", recipe = { { "", "default:steel_ingot", "" }, { "", "pipeworks:pipe_1_empty", "" }, { "", "default:steel_ingot", "" } } },
 	{ nam = "pipeworks:pump_off 2", recipe = { { "default:stone", "default:steel_ingot", "default:stone" }, { "default:copper_ingot", "default:mese_crystal_fragment", "default:copper_ingot" }, { "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" } } },
 	{ nam = "pipeworks:storage_tank_0 2", recipe = { { "", "default:steel_ingot", "default:steel_ingot" }, { "default:steel_ingot", "default:glass", "default:steel_ingot" }, { "default:steel_ingot", "default:steel_ingot", "" } } },
 	{ nam = "pipeworks:grating 2", recipe = { { "default:steel_ingot", "", "default:steel_ingot" }, { "", "pipeworks:pipe_1_empty", "" }, { "default:steel_ingot", "", "default:steel_ingot" } } },
 	{ nam = "pipeworks:flow_sensor_empty 2", recipe = { { "pipeworks:pipe_1_empty", "mesecons:mesecon", "pipeworks:pipe_1_empty" } } },
 	{ nam = "pipeworks:fountainhead 2", recipe = { { "pipeworks:pipe_1_empty" }, { "pipeworks:pipe_1_empty" } } },
 	{ nam = "pipeworks:trashcan", recipe = { { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" }, { "default:steel_ingot", "", "default:steel_ingot" }, { "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" } } },
 	{ nam = "pipeworks:tube_1 6", recipe = { { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" }, { "", "", "" }, { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" } } },
 	{ nam = "pipeworks:priority_tube_1 6", recipe = { { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" }, { "default:gold_ingot", "", "default:gold_ingot" }, { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" } } },
 	{ nam = "pipeworks:accelerator_tube_1 2", recipe = { { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" }, { "default:mese_crystal_fragment", "default:steel_ingot", "default:mese_crystal_fragment" }, { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" } } },
 	{ nam = "pipeworks:crossing_tube_1 5", recipe = { { "", "pipeworks:tube_1", "" }, { "pipeworks:tube_1", "pipeworks:tube_1", "pipeworks:tube_1" }, { "", "pipeworks:tube_1", "" } } },
 	{ nam = "pipeworks:teleport_tube_1 2", recipe = { { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" }, { "default:desert_stone", "default:mese", "default:desert_stone" }, { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" } } },
 	{ recipe = { { "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" }, { "default:steel_ingot", "pipeworks:tube_1", "default:steel_ingot" }, { "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" } }, nam = "pipeworks:steel_block_embedded_tube 1" },
 	{ recipe = { { "", "default:steel_ingot", "" }, { "", "pipeworks:tube_1", "" }, { "", "default:steel_ingot", "" } }, nam = "pipeworks:steel_pane_embedded_tube 1" },
 	{ recipe = { { "default:desert_sand", "default:chest", "default:desert_sand" }, { "default:stone", "mesecons:piston", "default:stone" }, { "default:stone", "mesecons:mesecon", "default:stone" } }, nam = "pipeworks:dispenser_off" },
 	{ recipe = { { "default:steel_ingot", "default:mese_crystal", "default:steel_ingot" }, { "basic_materials:plastic_sheet", "default:steel_ingot", "basic_materials:plastic_sheet" }, { "default:steel_ingot", "default:mese_crystal", "default:steel_ingot" } }, nam = "pipeworks:autocrafter 2" },
 	{ nam = "pipeworks:detector_tube_off_1 2", recipe = { { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" }, { "mesecons:mesecon", "mesecons_materials:silicon", "mesecons:mesecon" }, { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" } } },
 	{ nam = "pipeworks:digiline_detector_tube_1 2", recipe = { { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" }, { "digilines:wire_std_00000000", "mesecons_materials:silicon", "digilines:wire_std_00000000" }, { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" } } },
 	{ nam = "pipeworks:mese_tube_000000 2", recipe = { { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" }, { "", "default:mese_crystal", "" }, { "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" } } },
 	{ recipe = { { "cottages:rope" }, { "cottages:rope" } }, nam = "ropes:ropesegment" },
 	{ recipe = { { "cottages:rope" }, { "cottages:rope" } }, nam = "ropes:ropesegment" },
 	{ recipe = { { "technic:marble", "technic:marble" }, { "technic:marble", "technic:marble" } }, nam = "technic:marble_bricks 4" },
 	{ recipe = { { "technic:concrete", "technic:concrete_post", "technic:concrete" } }, nam = "technic:concrete_post_platform 6" },
 	{ recipe = { { "default:stone", "basic_materials:steel_bar", "default:stone" }, { "default:stone", "basic_materials:steel_bar", "default:stone" }, { "default:stone", "basic_materials:steel_bar", "default:stone" } }, nam = "technic:concrete_post 12" },
 	{ recipe = { { "technic:concrete", "technic:composite_plate", "technic:concrete" }, { "technic:composite_plate", "technic:concrete", "technic:composite_plate" }, { "technic:concrete", "technic:composite_plate", "technic:concrete" } }, nam = "technic:blast_resistant_concrete 5" },
 	{ nam = "pipeworks:accelerator_tube_1", recipe = { { "technic:copper_coil", "pipeworks:tube_1", "technic:copper_coil" } } },
 	{ nam = "pipeworks:teleport_tube_1", recipe = { { "default:mese_crystal", "technic:copper_coil", "default:mese_crystal" }, { "pipeworks:tube_1", "technic:control_logic_unit", "pipeworks:tube_1" }, { "default:mese_crystal", "technic:copper_coil", "default:mese_crystal" } } },
 	{ nam = "technic:diamond_drill_head", recipe = { { "technic:stainless_steel_ingot", "default:diamond", "technic:stainless_steel_ingot" }, { "default:diamond", "", "default:diamond" }, { "technic:stainless_steel_ingot", "default:diamond", "technic:stainless_steel_ingot" } } },
 	{ nam = "technic:green_energy_crystal", recipe = { { "default:gold_ingot", "technic:battery", "dye:green" }, { "technic:battery", "technic:red_energy_crystal", "technic:battery" }, { "dye:green", "technic:battery", "default:gold_ingot" } } },
 	{ nam = "technic:blue_energy_crystal", recipe = { { "moreores:mithril_ingot", "technic:battery", "dye:blue" }, { "technic:battery", "technic:green_energy_crystal", "technic:battery" }, { "dye:blue", "technic:battery", "moreores:mithril_ingot" } } },
 	{ nam = "technic:red_energy_crystal", recipe = { { "moreores:silver_ingot", "technic:battery", "dye:red" }, { "technic:battery", "basic_materials:energy_crystal_simple", "technic:battery" }, { "dye:red", "technic:battery", "moreores:silver_ingot" } } },
 	{ nam = "technic:copper_coil 1", recipe = { { "basic_materials:copper_wire", "technic:wrought_iron_ingot", "basic_materials:copper_wire" }, { "technic:wrought_iron_ingot", "", "technic:wrought_iron_ingot" }, { "basic_materials:copper_wire", "technic:wrought_iron_ingot", "basic_materials:copper_wire" } } },
 	{ nam = "technic:lv_transformer", recipe = { { [2] = "technic:wrought_iron_ingot" }, { "technic:copper_coil", "technic:wrought_iron_ingot", "technic:copper_coil" }, { "technic:wrought_iron_ingot", "technic:wrought_iron_ingot", "technic:wrought_iron_ingot" } } },
 	{ nam = "technic:mv_transformer", recipe = { { [2] = "technic:carbon_steel_ingot" }, { "technic:copper_coil", "technic:carbon_steel_ingot", "technic:copper_coil" }, { "technic:carbon_steel_ingot", "technic:carbon_steel_ingot", "technic:carbon_steel_ingot" } } },
 	{ nam = "technic:hv_transformer", recipe = { { [2] = "technic:stainless_steel_ingot" }, { "technic:copper_coil", "technic:stainless_steel_ingot", "technic:copper_coil" }, { "technic:stainless_steel_ingot", "technic:stainless_steel_ingot", "technic:stainless_steel_ingot" } } },
 	{ nam = "technic:control_logic_unit", recipe = { { "", "basic_materials:gold_wire", "" }, { "default:copper_ingot", "technic:silicon_wafer", "default:copper_ingot" }, { "", "technic:chromium_ingot", "" } } },
 	{ nam = "technic:mixed_metal_ingot 9", recipe = { { "technic:stainless_steel_ingot", "technic:stainless_steel_ingot", "technic:stainless_steel_ingot" }, { "default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot" }, { "default:tin_ingot", "default:tin_ingot", "default:tin_ingot" } } },
 	{ nam = "technic:carbon_cloth", recipe = { { "technic:graphite", "technic:graphite", "technic:graphite" } } },
 	{ nam = "technic:machine_casing", recipe = { { "technic:cast_iron_ingot", "technic:cast_iron_ingot", "technic:cast_iron_ingot" }, { "technic:cast_iron_ingot", "basic_materials:brass_ingot", "technic:cast_iron_ingot" }, { "technic:cast_iron_ingot", "technic:cast_iron_ingot", "technic:cast_iron_ingot" } } },
 	{ nam = "technic:lv_alloy_furnace", recipe = { { "default:brick", "default:brick", "default:brick" }, { "default:brick", "technic:machine_casing", "default:brick" }, { "default:brick", "technic:lv_cable", "default:brick" } } },
 	{ recipe = { { "default:cobble", "default:cobble", "default:cobble" }, { "default:cobble", "technic:machine_casing", "default:cobble" }, { "default:cobble", "technic:lv_cable", "default:cobble" } }, nam = "technic:electric_furnace" },
 	{ nam = "technic:lv_compressor", recipe = { { "default:stone", "basic_materials:motor", "default:stone" }, { "mesecons:piston", "technic:machine_casing", "mesecons:piston" }, { "basic_materials:silver_wire", "technic:lv_cable", "basic_materials:silver_wire" } } },
 	{ recipe = { { "default:paper", "default:paper", "default:paper" }, { "default:copper_ingot", "default:copper_ingot", "default:copper_ingot" }, { "default:paper", "default:paper", "default:paper" } }, nam = "technic:lv_cable 6" },
 	{ nam = "technic:solar_panel", recipe = { { "technic:doped_silicon_wafer", "technic:doped_silicon_wafer", "technic:doped_silicon_wafer" }, { "basic_materials:silver_wire", "technic:lv_cable", "mesecons_materials:glue" } } },
 	{ recipe = { { "technic:granite", "default:diamond", "technic:granite" }, { "basic_materials:copper_wire", "technic:machine_casing", "basic_materials:copper_wire" }, { "technic:granite", "technic:lv_cable", "technic:granite" } }, nam = "technic:geothermal" },
 	{ nam = "technic:solar_array_lv 1", recipe = { { "technic:solar_panel", "technic:solar_panel", "technic:solar_panel" }, { "technic:carbon_steel_ingot", "technic:lv_transformer", "technic:carbon_steel_ingot" }, { "", "technic:lv_cable", "" } } },
 	{ nam = "technic:music_player", recipe = { { "technic:chromium_ingot", "default:diamond", "technic:chromium_ingot" }, { "default:diamond", "technic:machine_casing", "default:diamond" }, { "default:mossycobble", "technic:lv_cable", "default:mossycobble" } } },
 	{ nam = "technic:lv_generator", recipe = { { "default:stone", "default:furnace", "default:stone" }, { "default:stone", "technic:machine_casing", "default:stone" }, { "default:stone", "technic:lv_cable", "default:stone" } } },
 	{ nam = "technic:lv_extractor", recipe = { { "technic:treetap", "basic_materials:motor", "technic:treetap" }, { "technic:treetap", "technic:machine_casing", "technic:treetap" }, { "", "technic:lv_cable", "" } } },
 	{ recipe = { { "default:desert_stone", "default:diamond", "default:desert_stone" }, { "default:desert_stone", "technic:machine_casing", "default:desert_stone" }, { "technic:granite", "technic:lv_cable", "technic:granite" } }, nam = "technic:lv_grinder" },
 	{ nam = "technic:supply_converter 1", recipe = { { "basic_materials:gold_wire", "technic:rubber", "technic:doped_silicon_wafer" }, { "technic:mv_transformer", "technic:machine_casing", "technic:lv_transformer" }, { "technic:mv_cable", "technic:rubber", "technic:lv_cable" } } },
 	{ nam = "technic:mv_alloy_furnace", recipe = { { "technic:stainless_steel_ingot", "technic:lv_alloy_furnace", "technic:stainless_steel_ingot" }, { "pipeworks:tube_1", "technic:mv_transformer", "pipeworks:tube_1" }, { "technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot" } } },
 	{ recipe = { { "technic:stainless_steel_ingot", "technic:lv_electric_furnace", "technic:stainless_steel_ingot" }, { "pipeworks:tube_1", "technic:mv_transformer", "pipeworks:tube_1" }, { "technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot" } }, nam = "technic:mv_electric_furnace" },
 	{ recipe = { { "technic:stainless_steel_ingot", "technic:motor", "technic:stainless_steel_ingot" }, { "pipeworks:pipe_1_empty", "technic:mv_transformer", "pipeworks:pipe_1_empty" }, { "technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot" } }, nam = "technic:mv_freezer" },
 	{ recipe = { { "technic:stainless_steel_ingot", "technic:mv_transformer", "technic:stainless_steel_ingot" }, { "technic:copper_coil", "technic:machine_casing", "technic:copper_coil" }, { "technic:rubber", "technic:mv_cable", "technic:rubber" } }, nam = "technic:power_radiator 1" },
 	{ recipe = { { "technic:stainless_steel_ingot", "technic:lv_compressor", "technic:stainless_steel_ingot" }, { "pipeworks:tube_1", "technic:mv_transformer", "pipeworks:tube_1" }, { "technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot" } }, nam = "technic:mv_compressor" },
 	{ nam = "technic:hydro_turbine", recipe = { { "technic:stainless_steel_ingot", "technic:water_mill", "technic:stainless_steel_ingot" }, { "technic:water_mill", "technic:mv_transformer", "technic:water_mill" }, { "technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot" } } },
 	{ nam = "technic:mv_cable 3", recipe = { { "technic:rubber", "technic:rubber", "technic:rubber" }, { "technic:lv_cable", "technic:lv_cable", "technic:lv_cable" }, { "technic:rubber", "technic:rubber", "technic:rubber" } } },
 	{ nam = "technic:mv_distiller", recipe = { { "technic:stainless_steel_ingot", "basic_materials:heating_element", "technic:stainless_steel_ingot" }, { "pipeworks:tube_1", "technic:mv_transformer", "pipeworks:tube_1" }, { "technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot" } } },
 	{ recipe = { { "technic:lv_battery_box0", "technic:lv_battery_box0", "technic:lv_battery_box0" }, { "technic:lv_battery_box0", "technic:mv_transformer", "technic:lv_battery_box0" }, { "", "technic:mv_cable", "" } }, nam = "technic:mv_battery_box0" },
 	{ recipe = { { "technic:solar_array_lv", "technic:solar_array_lv", "technic:solar_array_lv" }, { "technic:carbon_steel_ingot", "technic:mv_transformer", "technic:carbon_steel_ingot" }, { "", "technic:mv_cable", "" } }, nam = "technic:solar_array_mv 1" },
 	{ recipe = { { "technic:stainless_steel_ingot", "technic:lv_generator", "technic:stainless_steel_ingot" }, { "pipeworks:tube_1", "technic:mv_transformer", "pipeworks:tube_1" }, { "technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot" } }, nam = "technic:mv_generator" },
 	{ nam = "technic:mv_extractor", recipe = { { "technic:stainless_steel_ingot", "technic:lv_extractor", "technic:stainless_steel_ingot" }, { "pipeworks:tube_1", "technic:mv_transformer", "pipeworks:tube_1" }, { "technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot" } } },
 	{ recipe = { { "technic:carbon_steel_ingot", "", "technic:carbon_steel_ingot" }, { "", "technic:carbon_steel_ingot", "" }, { "technic:carbon_steel_ingot", "", "technic:carbon_steel_ingot" } }, nam = "technic:wind_mill_frame 5" },
 	{ recipe = { { "", "basic_materials:motor", "" }, { "technic:carbon_steel_ingot", "technic:carbon_steel_block", "technic:carbon_steel_ingot" }, { "", "technic:mv_cable", "" } }, nam = "technic:wind_mill" },
 	{ recipe = { { "technic:stainless_steel_ingot", "technic:lv_grinder", "technic:stainless_steel_ingot" }, { "pipeworks:tube_1", "technic:mv_transformer", "pipeworks:tube_1" }, { "technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot" } }, nam = "technic:mv_grinder" },
 	{ recipe = { { "basic_materials:motor", "technic:copper_plate", "technic:diamond_drill_head" }, { "technic:copper_plate", "technic:machine_casing", "technic:copper_plate" }, { "pipeworks:one_way_tube", "technic:mv_cable", "pipeworks:mese_filter" } }, nam = "technic:mv_centrifuge" },
 	{ recipe = { { "technic:carbon_plate", "default:obsidian_glass", "technic:carbon_plate" }, { "technic:composite_plate", "technic:machine_casing", "technic:composite_plate" }, { "technic:stainless_steel_ingot", "technic:hv_cable", "technic:stainless_steel_ingot" } }, nam = "technic:hv_nuclear_reactor_core" },
 	{ nam = "technic:quarry", recipe = { { "technic:carbon_plate", "pipeworks:filter", "technic:composite_plate" }, { "basic_materials:motor", "technic:machine_casing", "technic:diamond_drill_head" }, { "technic:carbon_steel_block", "technic:hv_cable", "technic:carbon_steel_block" } } },
 	{ nam = "technic:forcefield_emitter_off", recipe = { { "default:mese", "basic_materials:motor", "default:mese" }, { "technic:deployer_off", "technic:machine_casing", "technic:deployer_off" }, { "default:mese", "technic:hv_cable", "default:mese" } } },
 	{ recipe = { { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }, { "technic:mv_cable", "technic:mv_cable", "technic:mv_cable" }, { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" } }, nam = "technic:hv_cable 3" },
 	{ recipe = { { "technic:mv_battery_box0", "technic:mv_battery_box0", "technic:mv_battery_box0" }, { "technic:mv_battery_box0", "technic:hv_transformer", "technic:mv_battery_box0" }, { "", "technic:hv_cable", "" } }, nam = "technic:hv_battery_box0" },
 	{ nam = "technic:hv_transmutator", recipe = { { "technic:stainless_steel_block", "technic:power_monitor", "technic:stainless_steel_block" }, { "technic:hv_transformer", "technic:mv_centrifuge", "technic:hv_transformer" }, { "technic:lead_block", "technic:hv_cable", "technic:lead_block" } } },
 	{ recipe = { { "technic:solar_array_mv", "technic:solar_array_mv", "technic:solar_array_mv" }, { "technic:carbon_plate", "technic:hv_transformer", "technic:composite_plate" }, { "", "technic:hv_cable", "" } }, nam = "technic:solar_array_hv 1" },
 	{ recipe = { { "technic:carbon_plate", "technic:mv_generator", "technic:composite_plate" }, { "pipeworks:tube_1", "technic:hv_transformer", "pipeworks:tube_1" }, { "technic:stainless_steel_ingot", "technic:hv_cable", "technic:stainless_steel_ingot" } }, nam = "technic:hv_generator" },
 	{ recipe = { { "", "", "" }, { "", "technic:machine_casing", "default:copper_ingot" }, { "technic:lv_cable", "technic:lv_cable", "technic:lv_cable" } }, nam = "technic:power_monitor" },
 	{ recipe = { { "", "default:stick", "" }, { "default:stick", "basic_materials:brass_ingot", "default:stick" }, { "", "default:stick", "" } }, nam = "technic:frame_111111" },
 	{ recipe = { { "", "basic_materials:brass_ingot", "" }, { "basic_materials:brass_ingot", "default:mese_crystal", "basic_materials:brass_ingot" }, { "", "basic_materials:brass_ingot", "" } }, nam = "technic:template 10" },
 	{ recipe = { { "technic:template" } }, nam = "technic:template_replacer" },
 	{ recipe = { { "technic:template_replacer" } }, nam = "technic:template" },
 	{ recipe = { { "", "technic:template", "" }, { "default:mese_crystal", "default:stick", "default:mese_crystal" }, { "", "default:stick", "" } }, nam = "technic:template_tool" },
 	{ nam = "technic:injector 1", recipe = { { "", "technic:control_logic_unit", "" }, { "", "default:chest", "" }, { "", "pipeworks:tube_1", "" } } },
 	{ nam = "technic:coal_alloy_furnace", recipe = { { "default:brick", "default:brick", "default:brick" }, { "default:brick", "", "default:brick" }, { "default:brick", "default:brick", "default:brick" } } },
 	{ nam = "technic:switching_station", recipe = { { "", "technic:lv_transformer", "" }, { "default:copper_ingot", "technic:machine_casing", "default:copper_ingot" }, { "technic:lv_cable", "technic:lv_cable", "technic:lv_cable" } } },
 	{ nam = "technic:prospector", recipe = { { "moreores:pick_silver", "moreores:mithril_block", "pipeworks:teleport_tube_1" }, { "basic_materials:brass_ingot", "technic:control_logic_unit", "basic_materials:brass_ingot" }, { "", "technic:blue_energy_crystal", "" } } },
 	{ recipe = { { "default:diamond", "basic_materials:brass_ingot", "default:obsidian_glass" }, { "", "basic_materials:brass_ingot", "technic:red_energy_crystal" }, { "", "", "default:copper_ingot" } }, nam = "technic:laser_mk1" },
 	{ recipe = { { "default:diamond", "technic:carbon_steel_ingot", "technic:laser_mk1" }, { "", "technic:carbon_steel_ingot", "technic:green_energy_crystal" }, { "", "", "default:copper_ingot" } }, nam = "technic:laser_mk2" },
 	{ recipe = { { "default:diamond", "technic:carbon_steel_ingot", "technic:laser_mk2" }, { "", "technic:carbon_steel_ingot", "technic:blue_energy_crystal" }, { "", "", "default:copper_ingot" } }, nam = "technic:laser_mk3" },
 	{ recipe = { { "pipeworks:tube_1", "pipeworks:filter", "technic:battery" }, { "pipeworks:tube_1", "basic_materials:motor", "technic:battery" }, { "technic:stainless_steel_ingot", "", "" } }, nam = "technic:vacuum" },
 	{ recipe = { { "default:tin_ingot", "technic:diamond_drill_head", "default:tin_ingot" }, { "technic:stainless_steel_ingot", "basic_materials:motor", "technic:stainless_steel_ingot" }, { "", "technic:red_energy_crystal", "default:copper_ingot" } }, nam = "technic:mining_drill" },
 	{ recipe = { { "technic:diamond_drill_head", "technic:diamond_drill_head", "technic:diamond_drill_head" }, { "technic:stainless_steel_ingot", "technic:mining_drill", "technic:stainless_steel_ingot" }, { "", "technic:green_energy_crystal", "" } }, nam = "technic:mining_drill_mk2" },
 	{ recipe = { { "technic:diamond_drill_head", "technic:diamond_drill_head", "technic:diamond_drill_head" }, { "technic:stainless_steel_ingot", "technic:mining_drill_mk2", "technic:stainless_steel_ingot" }, { "", "technic:blue_energy_crystal", "" } }, nam = "technic:mining_drill_mk3" },
 	{ nam = "technic:water_can 1", recipe = { { "technic:zinc_ingot", "technic:rubber", "technic:zinc_ingot" }, { "technic:carbon_steel_ingot", "", "technic:carbon_steel_ingot" }, { "technic:zinc_ingot", "technic:carbon_steel_ingot", "technic:zinc_ingot" } } },
 	{ nam = "technic:lava_can 1", recipe = { { "technic:zinc_ingot", "technic:stainless_steel_ingot", "technic:zinc_ingot" }, { "technic:stainless_steel_ingot", "", "technic:stainless_steel_ingot" }, { "technic:zinc_ingot", "technic:stainless_steel_ingot", "technic:zinc_ingot" } } },
 	{ nam = "technic:chainsaw", recipe = { { "technic:stainless_steel_ingot", [3] = "technic:battery" }, { "basic_materials:copper_wire", "basic_materials:motor", "technic:battery" }, { "", "", "technic:stainless_steel_ingot" } } },
 	{ nam = "technic:flashlight", recipe = { { "technic:rubber", "default:glass", "technic:rubber" }, { "technic:stainless_steel_ingot", "technic:battery", "technic:stainless_steel_ingot" }, { "", "technic:battery", "" } } },
 	{ recipe = { { "", "default:diamond", "" }, { "mesecons_materials:fiber", "technic:battery", "mesecons_materials:fiber" }, { "mesecons_materials:fiber", "moreores:mithril_ingot", "mesecons_materials:fiber" } }, nam = "technic:sonic_screwdriver" },
 	{ recipe = { { "default:glass", "default:diamond", "default:glass" }, { "basic_materials:ic", "default:steelblock", "basic_materials:motor" }, { "default:steel_ingot", "default:mese", "default:steel_ingot" } }, nam = "technic:cnc" },
 	{ recipe = { { "default:glass", "default:diamond", "default:glass" }, { "basic_materials:ic", "default:steelblock", "basic_materials:motor" }, { "default:steel_ingot", "default:mese", "default:steel_ingot" } }, nam = "technic:cnc" },
 	{ nam = "technic:insulator_clip", recipe = { { "", "dye:white", "" }, { "", "technic:raw_latex", "" }, { "technic:raw_latex", "default:stone", "technic:raw_latex" } } },
 	{ nam = "technic:insulator_clip_fencepost 2", recipe = { { "", "dye:white", "" }, { "", "technic:raw_latex", "" }, { "technic:raw_latex", "default:fence_wood", "technic:raw_latex" } } },
 	{ nam = "technic:steel_strut_with_insulator_clip", recipe = { { "technic:insulator_clip_fencepost", "" }, { "streets:steel_support", "default:steel_ingot" } } },
 	{ nam = "technic:steel_strut_with_insulator_clip", recipe = { { "technic:insulator_clip_fencepost", "" }, { "streets:steel_support", "default:steel_ingot" } } },
 	{ nam = "technic:steel_strut_with_insulator_clip", recipe = { { "technic:insulator_clip_fencepost", "" }, { "streets:steel_support", "default:steel_ingot" } } },
 	{ nam = "technic:copper_chest 1", recipe = { { "default:copper_ingot", "default:copper_ingot", "default:copper_ingot" }, { "default:copper_ingot", "technic:iron_chest", "default:copper_ingot" }, { "default:copper_ingot", "default:copper_ingot", "default:copper_ingot" } } },
 	{ nam = "technic:copper_locked_chest 1", recipe = { { "basic_materials:padlock" }, { "technic:copper_chest" } } },
 	{ nam = "technic:copper_locked_chest 1", recipe = { { "basic_materials:padlock" }, { "technic:copper_chest" } } },
 	{ recipe = { { "moreores:mithril_ingot", "moreores:mithril_ingot", "moreores:mithril_ingot" }, { "moreores:mithril_ingot", "technic:gold_chest", "moreores:mithril_ingot" }, { "moreores:mithril_ingot", "moreores:mithril_ingot", "moreores:mithril_ingot" } }, nam = "technic:mithril_chest 1" },
 	{ recipe = { { "basic_materials:padlock" }, { "technic:mithril_chest" } }, nam = "technic:mithril_locked_chest 1" },
 	{ recipe = { { "basic_materials:padlock" }, { "technic:mithril_chest" } }, nam = "technic:mithril_locked_chest 1" },
 	{ recipe = { {  }, { [2] = "default:chest" }, {  } }, nam = "technic:iron_chest 1" },
 	{ recipe = { { "basic_materials:padlock" }, { "technic:iron_chest" } }, nam = "technic:iron_locked_chest 1" },
 	{ recipe = { { "basic_materials:padlock" }, { "technic:iron_chest" } }, nam = "technic:iron_locked_chest 1" },
 	{ recipe = { { "moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot" }, { "moreores:silver_ingot", "technic:copper_chest", "moreores:silver_ingot" }, { "moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot" } }, nam = "technic:silver_chest" },
 	{ recipe = { { "basic_materials:padlock" }, { "technic:silver_chest" } }, nam = "technic:silver_locked_chest" },
 	{ recipe = { { "basic_materials:padlock" }, { "technic:silver_chest" } }, nam = "technic:silver_locked_chest" },
 	{ recipe = { { "basic_materials:padlock" }, { "technic:gold_chest" } }, nam = "technic:gold_locked_chest" },

}

local msg = event.msg or {}
mem.filter = mem.filter or ""

local X, Y = 1, 1

function draw_touch(msg)
	digiline_send("touch", { command = "clear" })
	local r = {}
	local idx = {}
	local top = 1
	for _, v in ipairs(recipes) do
		if v.nam:find(mem.filter, 1, true) then
			table.insert(r, v.nam)
			idx[v.nam] = v
			top = top + 1
			if top >= 100 then
				break
			end
		end
	end

	mem.list = r
	mem.index = idx

	digiline_send("touch",
		      { command = "addtextlist",
			X = X - 1, Y = Y - 1,  W = 4, H = 8,
			name = "list", label = "Recipes",
			selected_id = mem.select_id or 1,
			transparent = true,
			listelements = r});
	digiline_send("touch", { command = "addbutton_exit",
				X = X + 4, Y = Y - 1, W = 2, H = 1,
				name = "enter", label = "Load" });
	digiline_send("touch", { command = "addfield",
			X = X + 4, Y = Y + 1, W = 3, H = 1,
			label = "Search", name = "search",
			default = mem.filter })
	digiline_send("touch", { command = "addbutton",
			X = X + 7, Y = Y + 1 - 0.3, W = 2, H = 1,
			label = "Submit", name = "submit"})
	local r = mem.index[mem.list[mem.select_id or 1]]
	local inf = ""
	for _, v in ipairs(r.recipe) do
		for _, vv in ipairs(v) do
			local s, e = vv:find(":", 1, true)
			if s then
				vv = vv:sub(e + 1)
			end
			inf = inf .. vv .. " "
		end
		inf = inf .. "\n"
	end
	digiline_send("touch", { command = "addlabel",
		X = X + 3.5, Y = Y + 3, W = 4, H = 3,
		label = inf })
end

if event.type == "program" or msg.submit then
	if msg.search then
		mem.filter = msg.search
	end
	draw_touch()
elseif msg.list then
	if msg.list:find("CHG:", 1, true) == 1 then
		local num = tonumber(msg.list:sub(5))
		mem.select_id = num
		draw_touch()
	end
elseif msg.enter then
	local num = mem.select_id or 1
	local r = mem.index[mem.list[num]]
	while #r.recipe < 3 do
		table.insert(r.recipe, {})
	end
	digiline_send("crafter", r.recipe)
end
