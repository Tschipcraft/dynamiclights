## by Tschipcraft

# Marking old lights
tag @e[type=minecraft:marker,tag=ts.dynamiclights.light] add ts.dynamiclights.old_light

# Core
execute unless score $global ts.dl.unlimited matches 1 as @e at @s if entity @a[gamemode=!spectator,distance=..65] run function dynamiclights:core
execute if score $global ts.dl.unlimited matches 1 as @e at @s run function dynamiclights:core

# Clearing old lights
execute as @e[type=minecraft:marker,tag=ts.dynamiclights.old_light] at @s run function dynamiclights:delete
# Not cleaning lights farther than 65 blocks (code below) looks better, but leaves light blocks behind, that could remain after uninstall - maybe add option to enable
#execute unless score $global ts.dl.unlimited matches 1 as @e[type=minecraft:marker,tag=ts.dynamiclights.old_light] at @s if entity @a[gamemode=!spectator,distance=..65] run function dynamiclights:delete
#execute if score $global ts.dl.unlimited matches 1 as @e[type=minecraft:marker,tag=ts.dynamiclights.old_light] at @s run function dynamiclights:delete

# Menu
function dynamiclights:menu

# Repeat
schedule function dynamiclights:main 1t
