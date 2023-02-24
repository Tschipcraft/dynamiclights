##by Tschipcraft

execute as @s[type=minecraft:item] run function dynamiclights:sources/item
execute as @s[type=minecraft:item_frame] run function dynamiclights:sources/item
execute as @s[type=!#dynamiclights:dyn_ignore,tag=!global.ignore,tag=!smithed.strict] positioned ~ ~1 ~ unless entity @s[type=player,gamemode=spectator] run function dynamiclights:sources/entity
