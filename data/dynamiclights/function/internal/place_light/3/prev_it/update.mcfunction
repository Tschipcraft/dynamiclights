##by Tschipcraft
# Gives an old light a new light level
# @overlay overlay_pre_62

fill ~ ~ ~ ~ ~ ~ minecraft:light[level=3,waterlogged=false] replace minecraft:light[waterlogged=false] strict
fill ~ ~ ~ ~ ~ ~ minecraft:light[level=3,waterlogged=true] replace minecraft:light[waterlogged=true] strict
