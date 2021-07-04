##by Tschipcraft

execute as @e[type=minecraft:marker,tag=light] at @s run function dynamiclights:delete

scoreboard objectives remove dl_welcome
scoreboard objectives remove dl_how_to_use
scoreboard objectives remove dl_unlimited
scoreboard objectives remove menu

datapack disable "file/dynamiclights"
datapack disable "file/dynamiclights.zip"
