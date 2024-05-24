##by Tschipcraft

summon armor_stand ~ ~ ~ {UUID:[I;-1030365714,1276464731,-2084950084,-395075115],NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ts.dl.i.parser"],HandItems:[{id:"minecraft:structure_void",Count:1b},{}],DisabledSlots:4144959}

# Copy NBT data
execute as @s[type=minecraft:item] run data modify entity c295ddee-4c15-4e5b-83ba-2fbce873a1d5 HandItems[0] set from entity @s Item
execute as @s[type=minecraft:item_frame] run data modify entity c295ddee-4c15-4e5b-83ba-2fbce873a1d5 HandItems[0] set from entity @s Item
execute as @s[type=minecraft:glow_item_frame] run data modify entity c295ddee-4c15-4e5b-83ba-2fbce873a1d5 HandItems[0] set from entity @s Item
execute as @s[type=minecraft:falling_block] run data modify entity c295ddee-4c15-4e5b-83ba-2fbce873a1d5 HandItems[0].id set from entity @s BlockState.Name
# Extra cases for item and block display entities
function dynamiclights:internal/sources/parse/extension_1194

execute as c295ddee-4c15-4e5b-83ba-2fbce873a1d5 run function dynamiclights:internal/sources/parse/main_exec

# Transfer scores
scoreboard players operation @s ts.dl.i.type = .global ts.dl.i.type
scoreboard players operation @s ts.dl.i.is_ench = .global ts.dl.i.is_ench
scoreboard players operation @s ts.dl.i.is_ameth = .global ts.dl.i.is_ameth
scoreboard players operation @s ts.dl.i.is_firea = .global ts.dl.i.is_firea
scoreboard players operation @s ts.dl.i.is_ript = .global ts.dl.i.is_ript
scoreboard players operation @s ts.dl.i.is_chann = .global ts.dl.i.is_chann

# Check for nearby item frames to reparse
execute if score @s ts.dl.i.type matches 1.. as @s[type=minecraft:item] run scoreboard players reset @e[type=#dynamiclights:reparse_interactible,distance=..2] ts.dl.i.type
