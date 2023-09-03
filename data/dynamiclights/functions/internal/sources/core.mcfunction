##by Tschipcraft
# Dispatches dynamic light around the world
# @s - entity that may emit light

# These entities use a different NBT tag for storing the item and need special parsing for detection
execute as @s[type=#dynamiclights:parse] unless score @s ts.dl.i.type matches 0..15 run function dynamiclights:internal/sources/parse/main

execute as @s[type=!#dynamiclights:dyn_ignore,tag=!global.ignore,tag=!global.ignore.gui,tag=!smithed.strict] positioned ~ ~1 ~ unless entity @s[type=player,gamemode=spectator] run function dynamiclights:internal/sources/entity
