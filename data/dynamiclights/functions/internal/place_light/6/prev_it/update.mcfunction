##by Tschipcraft
# Gives an old light a new light level

execute if block ~ ~ ~ light[waterlogged=false] unless block ~ ~ ~ light[level=6] run fill ~ ~ ~ ~ ~ ~ light[level=6,waterlogged=false] replace light
execute if block ~ ~ ~ light[waterlogged=true] unless block ~ ~ ~ light[level=6] run fill ~ ~ ~ ~ ~ ~ light[level=6,waterlogged=true] replace light
