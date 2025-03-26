##by Tschipcraft
# @overlay overlay_pre_62

# Set back water
fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:light[waterlogged=true] strict
# Set back cave_air
execute if entity @s[tag=ts.dl.cave_air] run fill ~ ~ ~ ~ ~ ~ minecraft:cave_air replace minecraft:light strict
# Set back air
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light strict

execute if entity @s[type=minecraft:marker,tag=ts.dl.light] run function dynamiclights:internal/kill_marker
