##by Tschipcraft
# Places the light block

execute if block ~ ~ ~ water[level=0] run fill ~ ~ ~ ~ ~ ~ light[waterlogged=true,level=6] replace water
execute unless block ~ ~ ~ water unless block ~ ~ ~ light run fill ~ ~ ~ ~ ~ ~ light[waterlogged=false,level=6] replace #dynamiclights:air
