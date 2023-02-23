##by Tschipcraft

# Light
execute as @s[nbt={Item:{id:"minecraft:torch"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:campfire"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:glowstone"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:lava_bucket"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:sea_lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:glowstone_dust"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:jack_o_lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:shroomlight"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:end_rod"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:beacon"}}] run function dynamiclights:summon_light

# Glow
execute as @s[nbt={Item:{id:"minecraft:soul_torch"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:soul_lantern"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:soul_campfire"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_ink_sac"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_berries"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_item_frame"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_lichen"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:prismarine_crystals"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:blaze_rod"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:spectral_arrow"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:end_crystal"}}] run function dynamiclights:summon_soul_light

# Flimmer
execute as @s[nbt={Item:{id:"minecraft:redstone_torch"}}] run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:fire_charge"}}] run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:nether_star"}}] run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:blaze_powder"}}] run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:amethyst_shard"}}] run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:ender_chest"}}] run function dynamiclights:summon_redstone_light

execute as @s[nbt={Item:{tag:{Enchantments:[{}]}}}] run function dynamiclights:summon_redstone_light
