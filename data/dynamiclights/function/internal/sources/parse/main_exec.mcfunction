##by Tschipcraft

# Restore defaults
scoreboard players set .global ts.dl.i.type 0
scoreboard players set .global ts.dl.i.is_ench 0
scoreboard players set .global ts.dl.i.is_ameth 0
scoreboard players set .global ts.dl.i.is_firea 0
scoreboard players set .global ts.dl.i.is_ript 0
scoreboard players set .global ts.dl.i.is_chann 0

# Light Level
execute if predicate dynamiclights:entity/light_level/3/has_mainhand_item run scoreboard players set .global ts.dl.i.type 1
execute if predicate dynamiclights:entity/light_level/6/has_mainhand_item run scoreboard players set .global ts.dl.i.type 2
execute if predicate dynamiclights:entity/light_level/9/has_mainhand_item run scoreboard players set .global ts.dl.i.type 3
execute if predicate dynamiclights:entity/light_level/12/has_mainhand_item run scoreboard players set .global ts.dl.i.type 4
execute if predicate dynamiclights:entity/light_level/15/has_mainhand_item run scoreboard players set .global ts.dl.i.type 5

# Water Check
execute unless score .global ts.dl.i.type matches 0 unless predicate dynamiclights:entity/water_check/no_water_immersion_extinguish_items run scoreboard players add .global ts.dl.i.type 5
execute unless score .global ts.dl.i.type matches 0 unless predicate dynamiclights:entity/water_check/no_water_immersion_illuminate_items run scoreboard players add .global ts.dl.i.type 10

# Additional item glow sources
execute unless predicate dynamiclights:entity/additional_item_tests/enchanted_items run scoreboard players set .global ts.dl.i.is_ench 1
execute unless predicate dynamiclights:entity/additional_item_tests/amethyst_trimmed_items run scoreboard players set .global ts.dl.i.is_ameth 1
execute unless predicate dynamiclights:entity/additional_item_tests/fire_aspect_items run scoreboard players set .global ts.dl.i.is_firea 1
execute unless predicate dynamiclights:entity/additional_item_tests/riptide_trident run scoreboard players set .global ts.dl.i.is_ript 1
execute unless predicate dynamiclights:entity/additional_item_tests/channeling_trident run scoreboard players set .global ts.dl.i.is_chann 1

# Kill armor stand (@s)
function dynamiclights:internal/kill_marker
