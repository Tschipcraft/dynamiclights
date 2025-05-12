##by Tschipcraft
# Selects the dynamic light entity from this block

execute as @e[type=minecraft:marker,tag=ts.dl.light,distance=..0.1,limit=1] at @s run function dynamiclights:internal/place_light/6/prev_it/check
