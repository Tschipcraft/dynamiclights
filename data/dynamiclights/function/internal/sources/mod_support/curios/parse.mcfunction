##by Tschipcraft

summon armor_stand ~ -65 ~ {UUID:[I;-1030365714,1276464731,-2084950084,-395075115],NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ts.dl.i.parser"],HandItems:[{id:"minecraft:structure_void",Count:1b},{}],DisabledSlots:4144959}

# Copy NBT data
data modify entity c295ddee-4c15-4e5b-83ba-2fbce873a1d5 HandItems[0] set from storage dynamiclights:curios stacks[0].StacksHandler.Stacks.Items[0]
data modify entity c295ddee-4c15-4e5b-83ba-2fbce873a1d5 HandItems[1] set from storage dynamiclights:curios stacks[0].StacksHandler.Cosmetics.Items[0]

execute as c295ddee-4c15-4e5b-83ba-2fbce873a1d5 run function dynamiclights:internal/sources/parse/main_exec

# Reconstruct detected light level
scoreboard players operation #detected_level ts.dl.temp = .global ts.dl.i.type
execute if score #detected_level ts.dl.temp matches 6.. run scoreboard players remove #detected_level ts.dl.temp 5
execute if score #detected_level ts.dl.temp matches 6.. run scoreboard players remove #detected_level ts.dl.temp 5

# Reconstruct current player light level
scoreboard players operation #current_level ts.dl.temp = @s ts.dl.i.type
execute if score #current_level ts.dl.temp matches 6.. run scoreboard players remove #current_level ts.dl.temp 5
execute if score #current_level ts.dl.temp matches 6.. run scoreboard players remove #current_level ts.dl.temp 5

# Transfer item type if detected light level is greater than current
execute if score #detected_level ts.dl.temp > #current_level ts.dl.temp run scoreboard players operation @s ts.dl.i.type = .global ts.dl.i.type

# Transfer special conditionals only if detected
execute if score .global ts.dl.i.is_ench matches 1.. run scoreboard players operation @s ts.dl.i.is_ench = .global ts.dl.i.is_ench
execute if score .global ts.dl.i.is_ameth matches 1.. run scoreboard players operation @s ts.dl.i.is_ameth = .global ts.dl.i.is_ameth
execute if score .global ts.dl.i.is_firea matches 1.. run scoreboard players operation @s ts.dl.i.is_firea = .global ts.dl.i.is_firea
execute if score .global ts.dl.i.is_ript matches 1.. run scoreboard players operation @s ts.dl.i.is_ript = .global ts.dl.i.is_ript
execute if score .global ts.dl.i.is_chann matches 1.. run scoreboard players operation @s ts.dl.i.is_chann = .global ts.dl.i.is_chann
