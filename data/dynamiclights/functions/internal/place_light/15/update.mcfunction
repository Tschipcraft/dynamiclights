##by Tschipcraft
# Sets the light level for a dynamic light entity and updates the block

scoreboard players set @s ts.dl.l.level 15
# Update existing dynamic light block
execute if score #light_exists ts.dl.temp matches 1 run function dynamiclights:internal/place_light/15/prev_it/update
# Place new light block (checking for player placed light blocks is done in summon.mcfunction)
execute if score #light_exists ts.dl.temp matches 0 run function dynamiclights:internal/place_light/15/place_block
