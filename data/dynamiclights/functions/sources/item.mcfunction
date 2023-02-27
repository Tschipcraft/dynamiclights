##by Tschipcraft
## Support for item entities and item frames is sadly hardcoded, since the item inside item entities and item frames can't be tested with predicates

## Light level 15
execute as @s[nbt={Item:{id:"minecraft:torch"}}] unless predicate dynamiclights:in_water run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:campfire"}}] unless predicate dynamiclights:in_water unless entity @s[nbt={Item:{tag:{BlockStateTag:{lit:"false"}}}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:lava_bucket"}}] unless predicate dynamiclights:in_water run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:glowstone"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:sea_lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:glowstone_dust"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:jack_o_lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:shroomlight"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:end_rod"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:beacon"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:ochre_froglight"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:pearlescent_froglight"}}] run function dynamiclights:summon_light
execute as @s[nbt={Item:{id:"minecraft:verdant_froglight"}}] run function dynamiclights:summon_light

## Light level 9
execute as @s[nbt={Item:{id:"minecraft:soul_torch"}}] unless predicate dynamiclights:in_water if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:soul_lantern"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:soul_campfire"}}] unless predicate dynamiclights:in_water if predicate dynamiclights:visible unless entity @s[nbt={Item:{tag:{BlockStateTag:{lit:"false"}}}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_ink_sac"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_berries"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_item_frame"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:glow_lichen"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:prismarine_crystals"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:blaze_rod"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:spectral_arrow"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light
execute as @s[nbt={Item:{id:"minecraft:end_crystal"}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light

# Sea Pickle (only inside water)
execute as @s[nbt={Item:{id:"minecraft:sea_pickle"}}] if predicate dynamiclights:in_water if predicate dynamiclights:visible run function dynamiclights:summon_soul_light

# Fire Aspect
execute as @s[nbt={Item:{tag:{Enchantments:[{id:"minecraft:fire_aspect"}]}}}] if predicate dynamiclights:visible run function dynamiclights:summon_soul_light

## Light Level 6
execute as @s[nbt={Item:{id:"minecraft:redstone_torch"}}] unless predicate dynamiclights:in_water if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:fire_charge"}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:nether_star"}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:blaze_powder"}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:amethyst_shard"}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
execute as @s[nbt={Item:{id:"minecraft:ender_chest"}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light

# Any other enchantments
execute as @s[nbt={Item:{tag:{Enchantments:[{}]}}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light

# Amethyst Trim
execute as @s[nbt={Item:{tag:{Trim:{material:"minecraft:amethyst"}}}}] if predicate dynamiclights:visible run function dynamiclights:summon_redstone_light
