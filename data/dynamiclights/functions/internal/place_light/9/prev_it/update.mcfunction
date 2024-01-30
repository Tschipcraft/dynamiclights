##by Tschipcraft
# Gives an old light a new light level

execute if block ~ ~ ~ minecraft:light[waterlogged=false] unless block ~ ~ ~ minecraft:light[level=9] run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=9,waterlogged=false] replace minecraft:light
execute if block ~ ~ ~ minecraft:light[waterlogged=true] unless block ~ ~ ~ minecraft:light[level=9] run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=9,waterlogged=true] replace minecraft:light
