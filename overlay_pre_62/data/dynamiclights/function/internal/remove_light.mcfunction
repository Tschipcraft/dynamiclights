##by Tschipcraft

# Set back water
fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:light[waterlogged=true]
# Set back cave_air
execute if entity @s[tag=ts.dl.cave_air] run fill ~ ~ ~ ~ ~ ~ minecraft:cave_air replace minecraft:light
# Set back air
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light

execute if entity @s[type=minecraft:marker,tag=ts.dl.light] run function dynamiclights:internal/kill_marker
