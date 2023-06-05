##by Tschipcraft

execute as @e[type=minecraft:marker,tag=ts.dynamiclights.light] at @s run function dynamiclights:delete

scoreboard objectives remove ts.dl.ghast_cool
scoreboard objectives remove ts.dl.in_water

scoreboard objectives remove ts.dl.mess.welc
scoreboard objectives remove ts.dl.mess.how
scoreboard objectives remove ts.dl.settings
scoreboard objectives remove tschipcraft.menu

scoreboard objectives remove tvc_ignore

say Dynamic Lights by Tschipcraft has been uninstalled by @s! It is safe to disable and remove the data pack.

datapack disable "file/dynamiclights"
datapack disable "file/dynamiclights.zip"
datapack disable "file/dynamiclights-v1.6-mc1.19-datapack.zip"
