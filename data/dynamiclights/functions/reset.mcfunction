##by Tschipcraft

execute as @e[type=minecraft:marker,tag=ts.dl.light] at @s run function dynamiclights:internal/remove_light
kill @e[type=minecraft:armor_stand,tag=ts.dl.i.parser]

say ⏏ Successfully resetted Dynamic lights!
