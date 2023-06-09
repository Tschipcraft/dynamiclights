##by Tschipcraft
# Gives an old light a new light level

execute if block ~ ~ ~ light[waterlogged=false] unless block ~ ~ ~ light[level=15] run fill ~ ~ ~ ~ ~ ~ light[level=15,waterlogged=false] replace light
execute if block ~ ~ ~ light[waterlogged=true] unless block ~ ~ ~ light[level=15] run fill ~ ~ ~ ~ ~ ~ light[level=15,waterlogged=true] replace light
