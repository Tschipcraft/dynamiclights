##by Tschipcraft

# Remove existing lights
execute as @e[type=minecraft:marker,tag=ts.dl.light] at @s run function dynamiclights:internal/remove_light
# Kill parser armor stand
kill @e[type=minecraft:armor_stand,tag=ts.dl.i.parser]

# Remove scores
scoreboard objectives remove ts.dl.ghast_cool
scoreboard objectives remove ts.dl.in_water
scoreboard objectives remove ts.dl.in_rain
scoreboard objectives remove ts.dl.sound
scoreboard objectives remove ts.dl.tnt.fuse
scoreboard objectives remove ts.dl.shulker

scoreboard objectives remove ts.dl.i.type
scoreboard objectives remove ts.dl.i.is_ench
scoreboard objectives remove ts.dl.i.is_ameth
scoreboard objectives remove ts.dl.i.is_firea
scoreboard objectives remove ts.dl.i.is_ript
scoreboard objectives remove ts.dl.i.is_chann
scoreboard objectives remove ts.dl.l.level

scoreboard objectives remove ts.dl.temp

scoreboard objectives remove ts.dl.mess.welc
scoreboard objectives remove ts.dl.settings
scoreboard objectives remove ts.dl.toggle
scoreboard objectives remove tschipcraft.menu

scoreboard objectives remove ts.dl.version
scoreboard objectives remove tvc_ignore

# Clear storage
data remove storage dynamiclights:curios stacks

# Clear schedules
schedule clear dynamiclights:internal/main
schedule clear dynamiclights:internal/loop

# Disable data pack
datapack disable "file/dynamiclights"
datapack disable "file/dynamiclights.zip"
datapack disable "mod:dynamiclights"
datapack disable "file/${file_name}"

say ⏻ Dynamic Lights v${version} by Tschipcraft has been uninstalled by @s! It is safe to disable and remove the data pack/mod.
