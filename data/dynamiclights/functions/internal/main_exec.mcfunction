##by Tschipcraft

## In water?
scoreboard players add @s ts.dl.in_water 0
execute as @s[scores={ts.dl.in_water=0}] anchored eyes positioned ^ ^ ^ if predicate dynamiclights:in_water run function dynamiclights:internal/water/enter
execute as @s[scores={ts.dl.in_water=1}] anchored eyes positioned ^ ^ ^ unless predicate dynamiclights:in_water run function dynamiclights:internal/water/exit

## Sound cues for trident enchants
scoreboard players add @s ts.dl.sound 0
execute as @s[scores={ts.dl.sound=0},predicate=dynamiclights:entity/has_riptide_trident] run function dynamiclights:internal/enchantments/activate/riptide
execute as @s[scores={ts.dl.sound=1},predicate=!dynamiclights:entity/has_riptide_trident] run function dynamiclights:internal/enchantments/deactivate/riptide

execute as @s[scores={ts.dl.sound=0},predicate=dynamiclights:entity/has_channeling_trident] run function dynamiclights:internal/enchantments/activate/channeling
execute as @s[scores={ts.dl.sound=2},predicate=!dynamiclights:entity/has_channeling_trident] run function dynamiclights:internal/enchantments/deactivate/channeling

## Dispatch light
function dynamiclights:internal/sources/core


# Light block sadly blocks explosion damage
#execute as @s[type=minecraft:creeper,nbt={ignited:1b},tag=!global.ignore,tag=!smithed.strict] at @s run function dynamiclights:summon_light

## Ghast
execute as @s[type=minecraft:ghast] at @s run function dynamiclights:internal/ghast

## Extension for More Mobs
execute as @s[type=minecraft:wither_skeleton,tag=ts.mm.magma_1] at @s run function dynamiclights:summon_redstone_light
execute as @s[type=minecraft:wither_skeleton,tag=ts.mm.magma_2] at @s run function dynamiclights:summon_soul_light
