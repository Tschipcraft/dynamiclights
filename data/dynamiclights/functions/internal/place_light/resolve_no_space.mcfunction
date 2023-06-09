##by Tschipcraft - tries to find a place to place the light

scoreboard players set #light_moved ts.dl.settings 1
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~ ~1 ~ #dynamiclights:air run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~1 ~ ~ #dynamiclights:air run tp @s ~1 ~ ~
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~ ~ ~1 #dynamiclights:air run tp @s ~ ~ ~1
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~-1 ~ ~ #dynamiclights:air run tp @s ~-1 ~ ~
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] run tp @s ~ ~ ~-1

execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] run tp @s ~ ~2 ~1
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] run tp @s ~ ~1 ~

# No place found
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] run scoreboard players set #light_moved ts.dl.settings 2
execute if score #light_moved ts.dl.settings matches 2 run kill @s
