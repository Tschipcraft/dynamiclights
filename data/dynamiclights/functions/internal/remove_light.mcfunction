##by Tschipcraft
# TODO: Add support for cave_air?

execute if block ~ ~ ~ minecraft:light[waterlogged=true] run fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:light
execute if block ~ ~ ~ minecraft:light[waterlogged=false] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light
execute if entity @s[type=minecraft:marker,tag=ts.dl.light] run function dynamiclights:internal/kill_marker
