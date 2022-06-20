##by Tschipcraft


execute if predicate dynamiclights:light run function dynamiclights:summon_light
execute if predicate dynamiclights:soul_light run function dynamiclights:summon_soul_light
execute if predicate dynamiclights:redstone_light run function dynamiclights:summon_redstone_light


## Enchantments

# Mainhand
execute as @s[nbt={SelectedItem:{tag:{Enchantments:[{}]}}}] run function dynamiclights:summon_redstone_light

# Offhand
execute as @s[nbt={Inventory:[{tag:{Enchantments:[{}]},Slot:-106b}]}] run function dynamiclights:summon_redstone_light
