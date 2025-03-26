##by Tschipcraft
# Places the light block
# @overlay overlay_pre_62

fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=true,level=3] replace minecraft:water[level=0] strict
execute if block ~ ~ ~ minecraft:cave_air run tag @s add ts.dl.cave_air
execute unless block ~ ~ ~ minecraft:light run fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=false,level=3] replace #dynamiclights:air strict
