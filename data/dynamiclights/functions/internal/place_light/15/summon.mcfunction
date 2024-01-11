##by Tschipcraft
# Places a dynamic light block with light level 15 in the world

scoreboard players set #check_passed ts.dl.temp 1
# Kill marker if the dynamic light needed position adjustments
execute if entity @s[type=minecraft:marker,tag=ts.dl.light] run function dynamiclights:internal/kill_marker
# Check if a dynamic light already exists here
scoreboard players set #light_exists ts.dl.settings 0
execute align xyz if block ~ ~ ~ light as @e[type=minecraft:marker,tag=ts.dl.light,distance=..0.1,limit=1,sort=nearest] at @s run function dynamiclights:internal/place_light/15/prev_it/check

execute if score #light_exists ts.dl.settings matches 0 run function dynamiclights:internal/place_light/15/summon_new
