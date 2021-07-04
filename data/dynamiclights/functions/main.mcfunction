## by Tschipcraft

tag @e[type=minecraft:marker,tag=light] add old_light

# Items
execute as @a[gamemode=!spectator] at @s positioned ~ ~1 ~ run function dynamiclights:sources/player

execute as @e[type=minecraft:item] at @s run function dynamiclights:sources/item


# Entities
execute as @e[type=#dynamiclights:always_glow] at @s run function dynamiclights:summon_soul_light
execute as @e[type=#dynamiclights:always_burn] at @s unless entity @s[type=tnt,nbt={Fuse:1s}] unless entity @s[type=tnt,nbt={Fuse:2s}] run function dynamiclights:summon_light

#execute as @e[type=creeper,nbt={ignited:1b}] at @s if entity @a[gamemode=!spectator,distance=..30] run function dynamiclights:summon_light

#Extension for More Mobs
execute as @e[type=minecraft:wither_skeleton,tag=magma_1] at @s run function dynamiclights:summon_redstone_light
execute as @e[type=minecraft:wither_skeleton,tag=magma_2] at @s run function dynamiclights:summon_soul_light

# OnFire
execute unless score global dl_unlimited matches 1 as @e[type=!#dynamiclights:dl_exclude] at @s if entity @a[gamemode=!spectator,distance=..30] if predicate dynamiclights:is_on_fire run function dynamiclights:summon_light
execute if score global dl_unlimited matches 1 as @e[type=!#dynamiclights:dl_exclude] at @s if predicate dynamiclights:is_on_fire run function dynamiclights:summon_light


# Clearing old lights and repeat
execute as @e[type=minecraft:marker,tag=old_light] at @s run function dynamiclights:delete

schedule function dynamiclights:main 2t
