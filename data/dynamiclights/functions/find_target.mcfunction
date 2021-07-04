##by Tschipcraft

execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~ ~1 ~ #dynamiclights:air run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~1 ~ ~ #dynamiclights:air run tp @s ~1 ~ ~
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~ ~ ~1 #dynamiclights:air run tp @s ~ ~ ~1
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] if block ~-1 ~ ~ #dynamiclights:air run tp @s ~-1 ~ ~
execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] run tp @s ~ ~ ~-1

execute at @s unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] run tp @s ~ ~2 ~

execute at @s unless block ~ ~ ~ #dynamiclights:air run kill @s

execute as @s[tag=!redstone_light] at @s as @e[type=marker,tag=redstone_light,tag=!new_light,distance=..0.5] at @s run function dynamiclights:delete
execute as @s[tag=!soul_light,tag=!redstone_light] at @s as @e[type=marker,tag=soul_light,tag=!new_light,distance=..0.5] at @s run function dynamiclights:delete
execute as @s[tag=soul_light] at @s as @e[type=marker,tag=redstone_light,tag=!new_light,distance=..0.5] at @s run function dynamiclights:delete

execute as @s[tag=redstone_light] at @s if entity @e[type=marker,tag=redstone_light,tag=!new_light,distance=..0.5] run kill @e[type=marker,tag=redstone_light,tag=!new_light,distance=..0.5]
execute as @s[tag=soul_light] at @s if entity @e[type=marker,tag=soul_light,tag=!new_light,distance=..0.5] run kill @e[type=marker,tag=soul_light,tag=!new_light,distance=..0.5]
execute as @s[tag=!redstone_light,tag=!soul_light] at @s if entity @e[type=marker,tag=light,tag=!new_light,distance=..0.5] run kill @e[type=marker,tag=light,tag=!new_light,distance=..0.5]

execute as @s[tag=!redstone_light,tag=!soul_light] at @s if block ~ ~ ~ water[level=0] run fill ~ ~ ~ ~ ~ ~ light[waterlogged=true,level=15] replace water
execute as @s[tag=!redstone_light,tag=!soul_light] at @s unless block ~ ~ ~ water unless block ~ ~ ~ light run fill ~ ~ ~ ~ ~ ~ light[waterlogged=false,level=15] replace air

execute as @s[tag=redstone_light] at @s if block ~ ~ ~ water[level=0] run fill ~ ~ ~ ~ ~ ~ light[waterlogged=true,level=6] replace water
execute as @s[tag=redstone_light] at @s unless block ~ ~ ~ water unless block ~ ~ ~ light run fill ~ ~ ~ ~ ~ ~ light[waterlogged=false,level=6] replace air

execute as @s[tag=soul_light] at @s if block ~ ~ ~ water[level=0] run fill ~ ~ ~ ~ ~ ~ light[waterlogged=true,level=9] replace water
execute as @s[tag=soul_light] at @s unless block ~ ~ ~ water unless block ~ ~ ~ light run fill ~ ~ ~ ~ ~ ~ light[waterlogged=false,level=9] replace air


tag @s remove new_light
