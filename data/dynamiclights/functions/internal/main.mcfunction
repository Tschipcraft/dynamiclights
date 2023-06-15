## by Tschipcraft

# Tag old lights
tag @e[type=minecraft:marker,tag=ts.dl.light] add ts.dl.remove

# Core
# TODO: Change $unlimited behavior?
execute unless score $unlimited ts.dl.settings matches 1 as @e[tag=!smithed.strict,tag=!global.ignore,tag=!global.ignore.gui] at @s if entity @a[gamemode=!spectator,distance=..65] run function dynamiclights:internal/main_exec
execute if score $unlimited ts.dl.settings matches 1 as @e[tag=!smithed.strict,tag=!global.ignore,tag=!global.ignore.gui] at @s run function dynamiclights:internal/main_exec

# Clear old lights
execute as @e[type=minecraft:marker,tag=ts.dl.remove] at @s run function dynamiclights:internal/remove_light

# Menu
function dynamiclights:internal/menu

# Repeat
schedule function dynamiclights:internal/main 1t
