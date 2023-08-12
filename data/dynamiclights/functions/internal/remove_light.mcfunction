##by Tschipcraft

execute if block ~ ~ ~ light[waterlogged=true] run fill ~ ~ ~ ~ ~ ~ water replace light
execute if block ~ ~ ~ light[waterlogged=false] run fill ~ ~ ~ ~ ~ ~ air replace light
execute as @s[type=minecraft:marker,tag=ts.dl.light] run function dynamiclights:internal/kill_marker
