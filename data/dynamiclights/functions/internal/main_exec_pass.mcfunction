##by Tschipcraft

## In Rain? (exclusive 1.19.4+ feature)
scoreboard players reset @s ts.dl.in_rain
execute if score $global ts.dl.version matches 3337.. if score $rain_sensitive ts.dl.settings matches 1..2 if predicate dynamiclights:world/is_raining run function dynamiclights:internal/water/rain_check_1194

## In water?
scoreboard players add @s ts.dl.in_water 0
execute if score $water_sensitive ts.dl.settings matches 1..2 as @s[scores={ts.dl.in_water=0}] anchored eyes positioned ^ ^ ^ if predicate dynamiclights:entity/is_in_water run function dynamiclights:internal/water/enter
execute as @s[type=!minecraft:item,scores={ts.dl.in_water=1}] anchored eyes positioned ^ ^ ^ unless predicate dynamiclights:entity/is_in_water run function dynamiclights:internal/water/exit
execute as @s[type=minecraft:item,scores={ts.dl.in_water=1}] anchored eyes positioned ^ ^ ^ positioned ~ ~-0.1 ~ unless predicate dynamiclights:entity/is_in_water run function dynamiclights:internal/water/exit

## Sound cues for trident enchants
scoreboard players add @s ts.dl.sound 0
execute if score $enable_sound ts.dl.settings matches 1..2 as @s[scores={ts.dl.sound=0},predicate=dynamiclights:entity/has_riptide_trident] run function dynamiclights:internal/enchantments/activate/riptide
execute if score $enable_sound ts.dl.settings matches 1..2 as @s[scores={ts.dl.sound=1},predicate=!dynamiclights:entity/has_riptide_trident] run function dynamiclights:internal/enchantments/deactivate/riptide

execute if score $enable_sound ts.dl.settings matches 1..2 as @s[scores={ts.dl.sound=0},predicate=dynamiclights:entity/has_channeling_trident] run function dynamiclights:internal/enchantments/activate/channeling
execute if score $enable_sound ts.dl.settings matches 1..2 as @s[scores={ts.dl.sound=2},predicate=!dynamiclights:entity/has_channeling_trident] run function dynamiclights:internal/enchantments/deactivate/channeling

## Dispatch light
function dynamiclights:internal/sources/core

# Light block sadly blocks explosion damage
#execute as @s[type=minecraft:creeper,nbt={ignited:1b},tag=!global.ignore,tag=!smithed.strict] at @s run function dynamiclights:api/place_light/15

## Extension for More Mobs
execute as @s[type=minecraft:wither_skeleton,tag=ts.mm.magma_1] at @s run function dynamiclights:api/place_light/6
execute as @s[type=minecraft:wither_skeleton,tag=ts.mm.magma_2] at @s run function dynamiclights:api/place_light/9
