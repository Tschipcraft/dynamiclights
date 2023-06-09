##by Tschipcraft

execute as @e[type=minecraft:marker,tag=ts.dl.light] at @s run function dynamiclights:internal/remove_light
kill @e[type=minecraft:armor_stand,tag=ts.dl.i.parser]

scoreboard objectives remove ts.dl.ghast_cool
scoreboard objectives remove ts.dl.in_water
scoreboard objectives remove ts.dl.sound

scoreboard objectives remove ts.dl.i.type
scoreboard objectives remove ts.dl.i.is_ench
scoreboard objectives remove ts.dl.i.is_ameth
scoreboard objectives remove ts.dl.i.is_firea
scoreboard objectives remove ts.dl.i.is_ript
scoreboard objectives remove ts.dl.i.is_chann
scoreboard objectives remove ts.dl.l.level

scoreboard objectives remove ts.dl.mess.welc
scoreboard objectives remove ts.dl.mess.how
scoreboard objectives remove ts.dl.settings
scoreboard objectives remove tschipcraft.menu

scoreboard objectives remove tvc_ignore

say Dynamic Lights by Tschipcraft has been uninstalled by @s! It is safe to disable and remove the data pack.

datapack disable "file/dynamiclights"
datapack disable "file/dynamiclights.zip"
datapack disable "file/dynamiclights-v1.6-mc1.20-datapack.zip"
