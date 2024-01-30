##by Tschipcraft
# Places the light block

execute if block ~ ~ ~ minecraft:water[level=0] run fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=true,level=6] replace minecraft:water
execute unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:light run fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=false,level=6] replace #dynamiclights:air
