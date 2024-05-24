##by Tschipcraft
# Dispatches dynamic light around the world
# @s - entity that may emit light

# These entities use a different NBT tag for storing the item and need special parsing (since 24w11a these are only falling blocks and block displays)
execute as @s[type=#dynamiclights:parse] unless score @s ts.dl.i.type matches 0..15 run function dynamiclights:internal/sources/parse/main

# Offsets for exploding entities
execute as @s[type=#dynamiclights:may_block_explosion] positioned ~ ~2 ~ run function dynamiclights:internal/sources/entity
execute as @s[type=minecraft:end_crystal] positioned ~ ~-0.32 ~ run function dynamiclights:internal/sources/entity
execute as @s[type=!#dynamiclights:may_block_explosion,type=!minecraft:end_crystal] anchored eyes positioned ^ ^ ^ run function dynamiclights:internal/sources/entity
