##by Tschipcraft

kill @s[type=minecraft:marker,tag=ts.dl.light]
scoreboard players set #light_exists ts.dl.settings 0
execute align xyz as @e[type=minecraft:marker,tag=ts.dl.light,distance=..0.1,limit=1,sort=nearest] at @s run function dynamiclights:internal/place_light/15/prev_it/check

execute if score #light_exists ts.dl.settings matches 0 run function dynamiclights:internal/place_light/15/summon_new
