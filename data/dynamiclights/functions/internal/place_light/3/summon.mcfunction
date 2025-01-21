##by Tschipcraft
# Places a dynamic light block with light level 3 in the world

# Check if a dynamic light already exists here
scoreboard players set #light_exists ts.dl.temp 0
execute align xyz if block ~ ~ ~ minecraft:light run function dynamiclights:internal/place_light/3/prev_it/find

# Summon a new dynamic light
execute if score #light_exists ts.dl.temp matches 0 unless block ~ ~ ~ minecraft:light run function dynamiclights:internal/place_light/3/summon_new

scoreboard players set #block_placed ts.dl.temp 1
