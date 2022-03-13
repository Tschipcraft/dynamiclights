##by Tschipcraft

execute as @e[type=minecraft:marker,tag=light] at @s run function dynamiclights:delete

scoreboard objectives remove dl_welcome
scoreboard objectives remove dl_how_to_use
scoreboard objectives remove dl_unlimited
scoreboard objectives remove menu

say Dynamic Lights has been uninstalled by @s! It is safe to disable and remove the data pack.

datapack disable "file/dynamiclights"
datapack disable "file/dynamiclights.zip"
datapack disable "file/dynamiclights-v1.3.1-mc1.18-datapack.zip"
