##by Tschipcraft

# Light
execute as @s[nbt={Item:{id:"minecraft:torch"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:campfire"}}] unless entity @s[nbt={Item:{tag:{BlockStateTag:{lit:"false"}}}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:glowstone"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:lava_bucket"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:sea_lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:glowstone_dust"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:jack_o_lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:shroomlight"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:end_rod"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:beacon"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:ochre_froglight"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:pearlescent_froglight"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:verdant_froglight"}}] run function dynamiclights:summon_light

# Glow
execute as @s[nbt={Item:{id:"minecraft:soul_torch"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:soul_lantern"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:soul_campfire"}}] if predicate dynamiclights:visible unless entity @s[nbt={Item:{tag:{BlockStateTag:{lit:"false"}}}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_ink_sac"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_berries"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_item_frame"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_lichen"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:prismarine_crystals"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:blaze_rod"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:spectral_arrow"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:end_crystal"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light

# Flimmer
execute as @s[nbt={Item:{id:"minecraft:redstone_torch"}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:fire_charge"}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:nether_star"}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:blaze_powder"}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:amethyst_shard"}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:ender_chest"}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light

execute as @s[nbt={Item:{tag:{Enchantments:[{}]}}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
