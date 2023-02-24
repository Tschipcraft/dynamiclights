## by Tschipcraft

# Marking old lights
tag @e[type=minecraft:marker,tag=ts.dynamiclights.light] add ts.dynamiclights.old_light

# Core
execute unless score global ts.dl.unlimited matches 1 as @e at @s if entity @a[gamemode=!spectator,distance=..65] run function dynamiclights:core
execute if score global ts.dl.unlimited matches 1 as @e at @s run function dynamiclights:core
#execute as @e at @s run function dynamiclights:core

# Clearing old lights and repeat
execute unless score global ts.dl.unlimited matches 1 as @e[type=minecraft:marker,tag=ts.dynamiclights.old_light] at @s if entity @a[gamemode=!spectator,distance=..65] run function dynamiclights:delete
execute if score global ts.dl.unlimited matches 1 as @e[type=minecraft:marker,tag=ts.dynamiclights.old_light] at @s run function dynamiclights:delete

# Menu
function dynamiclights:menu

schedule function dynamiclights:main 1t
