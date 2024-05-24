##by Tschipcraft

execute as @s[type=minecraft:item_display] run data modify entity c295ddee-4c15-4e5b-83ba-2fbce873a1d5 HandItems[0] set from entity @s item
execute as @s[type=minecraft:block_display] run data modify entity c295ddee-4c15-4e5b-83ba-2fbce873a1d5 HandItems[0].id set from entity @s block_state.Name
