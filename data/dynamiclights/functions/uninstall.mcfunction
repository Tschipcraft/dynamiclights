##by Tschipcraft

execute as @e[type=minecraft:marker,tag=light] at @s run function dynamiclights:delete

scoreboard objectives remove dl_welcome
scoreboard objectives remove dl_how_to_use
scoreboard objectives remove dl_unlimited
scoreboard objectives remove menu

scoreboard objectives remove tvc_ignore

say Dynamic Lights has been uninstalled by @s! It is safe to disable and remove the data pack.

datapack disable "file/dynamiclights"
datapack disable "file/dynamiclights.zip"
datapack disable "file/dynamiclights-v1.5-mc1.19-datapack.zip"
