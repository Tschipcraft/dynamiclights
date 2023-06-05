## by Tschipcraft

# Marking old lights
tag @e[type=minecraft:marker,tag=ts.dynamiclights.light] add ts.dynamiclights.old_light

# Core
execute unless score $unlimited ts.dl.settings matches 1 as @e[tag=!smithed.strict,tag=!global.ignore,tag=!global.ignore.gui] at @s if entity @a[gamemode=!spectator,distance=..65] run function dynamiclights:internal/main_exec
execute if score $unlimited ts.dl.settings matches 1 as @e[tag=!smithed.strict,tag=!global.ignore,tag=!global.ignore.gui] at @s run function dynamiclights:internal/main_exec

# Clearing old lights
execute as @e[type=minecraft:marker,tag=ts.dynamiclights.old_light] at @s run function dynamiclights:delete
# Not clearing lights farther than 65 blocks (code below) looks better, but leaves light blocks behind, that could remain after uninstall - maybe add option to enable
#execute unless score $unlimited ts.dl.settings matches 1 as @e[type=minecraft:marker,tag=ts.dynamiclights.old_light] at @s if entity @a[gamemode=!spectator,distance=..65] run function dynamiclights:delete
#execute if score $unlimited ts.dl.settings matches 1 as @e[type=minecraft:marker,tag=ts.dynamiclights.old_light] at @s run function dynamiclights:delete

# Menu
function dynamiclights:menu

# Repeat
schedule function dynamiclights:main 1t
