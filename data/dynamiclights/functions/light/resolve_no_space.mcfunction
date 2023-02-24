##by Tschipcraft - tries to find a place to place the light

execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~ ~1 ~ #dynamiclights:air run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~1 ~ ~ #dynamiclights:air run tp @s ~1 ~ ~
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~ ~ ~1 #dynamiclights:air run tp @s ~ ~ ~1
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~-1 ~ ~ #dynamiclights:air run tp @s ~-1 ~ ~
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] run tp @s ~ ~ ~-1

execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] run tp @s ~ ~2 ~

execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] run kill @s
