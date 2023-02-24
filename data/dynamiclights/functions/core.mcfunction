## by Tschipcraft

# Items
function dynamiclights:sources/core

# Debug
#execute as @e[type=minecraft:marker] at @s run particle minecraft:dust 0 90 90 1

# Entities
execute as @s[type=#dynamiclights:always_glow] at @s run function dynamiclights:summon_soul_light
execute as @s[type=#dynamiclights:always_burn] at @s unless entity @s[type=minecraft:tnt,nbt={Fuse:1s}] unless entity @s[type=minecraft:tnt,nbt={Fuse:2s}] run function dynamiclights:summon_light

# Light block sadly blocks explosion
#execute as @s[type=minecraft:creeper,nbt={ignited:1b},tag=!global.ignore,tag=!smithed.strict] at @s run function dynamiclights:summon_light

# Extension for More Mobs
execute as @s[type=minecraft:wither_skeleton,tag=mm_magma_1] at @s run function dynamiclights:summon_redstone_light
execute as @s[type=minecraft:wither_skeleton,tag=mm_magma_2] at @s run function dynamiclights:summon_soul_light
