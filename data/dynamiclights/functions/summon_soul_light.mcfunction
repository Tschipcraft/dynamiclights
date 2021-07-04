##by Tschipcraft

execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["light","new_light","soul_light"]}

execute as @e[type=minecraft:marker,tag=new_light] at @s run function dynamiclights:find_target
