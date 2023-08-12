##by Tschipcraft
# Sets the light level for a marker entity and updates it

scoreboard players set @s ts.dl.l.level 6
# Update exising dynamic light block
execute if block ~ ~ ~ minecraft:light if score #light_exists ts.dl.settings matches 1 run function dynamiclights:internal/place_light/6/prev_it/update
# Keep player placed light blocks
execute if block ~ ~ ~ minecraft:light if score #light_exists ts.dl.settings matches 0 run function dynamiclights:internal/kill_marker
# Place new light block
execute unless block ~ ~ ~ minecraft:light run function dynamiclights:internal/place_light/6/place
