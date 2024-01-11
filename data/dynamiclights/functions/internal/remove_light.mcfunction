##by Tschipcraft
# TODO: Add support for cave_air?

execute if block ~ ~ ~ minecraft:light[waterlogged=true] run fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:light
execute if block ~ ~ ~ minecraft:light[waterlogged=false] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light
execute as @s[type=minecraft:marker,tag=ts.dl.light] at @s unless block ~ ~ ~ minecraft:light run function dynamiclights:internal/kill_marker
