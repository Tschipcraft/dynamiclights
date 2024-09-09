## by Tschipcraft

# Schedule for next tick
schedule function dynamiclights:internal/main 1t

# Tag old lights
tag @e[type=minecraft:marker,tag=ts.dl.light] add ts.dl.remove

# Detect explosions
execute as @e[type=minecraft:tnt] at @s run function dynamiclights:internal/explosion_detection/tnt

# Core
execute if score $enable ts.dl.settings matches 1..2 unless score $global ts.dl.tnt.fuse matches 1 as @e[type=!#dynamiclights:dyn_ignore,tag=!smithed.strict,tag=!global.ignore,tag=!global.ignore.gui,tag=!ts.dl.ignore] unless entity @s[type=minecraft:player,gamemode=spectator] at @s run function dynamiclights:internal/main_exec

# Clear old lights
execute as @e[type=minecraft:marker,tag=ts.dl.remove] at @s run function dynamiclights:internal/remove_light
