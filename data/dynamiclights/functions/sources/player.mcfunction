##by Tschipcraft

# Mainhand
execute as @s[nbt={SelectedItem:{id:"minecraft:torch"}}] run function dynamiclights:summon_light
execute as @s[nbt={SelectedItem:{id:"minecraft:lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={SelectedItem:{id:"minecraft:glowstone"}}] run function dynamiclights:summon_light
execute as @s[nbt={SelectedItem:{id:"minecraft:lava_bucket"}}] run function dynamiclights:summon_light
execute as @s[nbt={SelectedItem:{id:"minecraft:sea_lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run function dynamiclights:summon_light
execute as @s[nbt={SelectedItem:{id:"minecraft:jack_o_lantern"}}] run function dynamiclights:summon_light
execute as @s[nbt={SelectedItem:{id:"minecraft:shroomlight"}}] run function dynamiclights:summon_light
execute as @s[nbt={SelectedItem:{id:"minecraft:end_rod"}}] run function dynamiclights:summon_light

execute as @s[nbt={SelectedItem:{id:"minecraft:soul_torch"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={SelectedItem:{id:"minecraft:soul_lantern"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={SelectedItem:{id:"minecraft:glow_ink_sac"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={SelectedItem:{id:"minecraft:glow_berries"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={SelectedItem:{id:"minecraft:glow_item_frame"}}] run function dynamiclights:summon_soul_light
execute as @s[nbt={SelectedItem:{id:"minecraft:glow_lichen"}}] run function dynamiclights:summon_soul_light

execute as @s[nbt={SelectedItem:{id:"minecraft:redstone_torch"}}] run function dynamiclights:summon_redstone_light

execute as @s[nbt={SelectedItem:{tag:{Enchantments:[{}]}}}] run function dynamiclights:summon_redstone_light

# Offhand
execute as @s[nbt={Inventory:[{id:"minecraft:torch",Slot:-106b}]}] run function dynamiclights:summon_light
execute as @s[nbt={Inventory:[{id:"minecraft:lantern",Slot:-106b}]}] run function dynamiclights:summon_light
execute as @s[nbt={Inventory:[{id:"minecraft:glowstone",Slot:-106b}]}] run function dynamiclights:summon_light
execute as @s[nbt={Inventory:[{id:"minecraft:lava_bucket",Slot:-106b}]}] run function dynamiclights:summon_light
execute as @s[nbt={Inventory:[{id:"minecraft:sea_lantern",Slot:-106b}]}] run function dynamiclights:summon_light
execute as @s[nbt={Inventory:[{id:"minecraft:glowstone_dust",Slot:-106b}]}] run function dynamiclights:summon_light
execute as @s[nbt={Inventory:[{id:"minecraft:jack_o_lantern",Slot:-106b}]}] run function dynamiclights:summon_light
execute as @s[nbt={Inventory:[{id:"minecraft:shroomlight",Slot:-106b}]}] run function dynamiclights:summon_light
execute as @s[nbt={Inventory:[{id:"minecraft:end_rod",Slot:-106b}]}] run function dynamiclights:summon_light

execute as @s[nbt={Inventory:[{id:"minecraft:soul_torch",Slot:-106b}]}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Inventory:[{id:"minecraft:soul_lantern",Slot:-106b}]}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Inventory:[{id:"minecraft:glow_ink_sac",Slot:-106b}]}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Inventory:[{id:"minecraft:glow_berries",Slot:-106b}]}] run function dynamiclights:summon_soul_light
execute as @s[nbt={Inventory:[{id:"minecraft:glow_item_frame",Slot:-106b}]}] run function dynamiclights:summon_soul_light

execute as @s[nbt={Inventory:[{id:"minecraft:redstone_torch",Slot:-106b}]}] run function dynamiclights:summon_redstone_light

execute as @s[nbt={Inventory:[{tag:{Enchantments:[{}]},Slot:-106b}]}] run function dynamiclights:summon_redstone_light
