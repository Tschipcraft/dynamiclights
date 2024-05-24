##by Tschipcraft
# Places a dynamic light block with light level 9 in the world

# Check if a dynamic light already exists here
scoreboard players set #light_exists ts.dl.temp 0
execute align xyz if block ~ ~ ~ minecraft:light as @e[type=minecraft:marker,tag=ts.dl.light,distance=..0.1,limit=1,sort=nearest] at @s run function dynamiclights:internal/place_light/9/prev_it/check

# Summon a new dynamic light
execute if score #light_exists ts.dl.temp matches 0 unless block ~ ~ ~ minecraft:light run function dynamiclights:internal/place_light/9/summon_new

scoreboard players set #block_placed ts.dl.temp 1
