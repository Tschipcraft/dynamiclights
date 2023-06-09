##by Tschipcraft
# Gives an old light a new light level

execute if block ~ ~ ~ light[waterlogged=false] unless block ~ ~ ~ light[level=9] run fill ~ ~ ~ ~ ~ ~ light[level=9,waterlogged=false] replace light
execute if block ~ ~ ~ light[waterlogged=true] unless block ~ ~ ~ light[level=9] run fill ~ ~ ~ ~ ~ ~ light[level=9,waterlogged=true] replace light
