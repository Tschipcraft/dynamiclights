##by Tschipcraft

execute if predicate dynamiclights:light if predicate dynamiclights:campfire_check run function dynamiclights:summon_light
execute if predicate dynamiclights:visible if predicate dynamiclights:campfire_check if predicate dynamiclights:soul_light run function dynamiclights:summon_soul_light
execute if predicate dynamiclights:visible if predicate dynamiclights:redstone_light run function dynamiclights:summon_redstone_light
execute if predicate dynamiclights:is_on_fire run function dynamiclights:summon_light
