##by Tschipcraft
# Places light, if the current entity matches any criteria for it

scoreboard players set #check_passed ts.dl.temp 0

execute positioned ~ ~-0.32 ~ if predicate dynamiclights:entity/should_emit_light_level/15 align xyz run function dynamiclights:api/place_light/15
execute unless score #check_passed ts.dl.temp matches 1 positioned ~ ~-0.32 ~ if predicate dynamiclights:entity/should_emit_light_level/9 align xyz run function dynamiclights:api/place_light/9
execute unless score #check_passed ts.dl.temp matches 1 positioned ~ ~-0.32 ~ if predicate dynamiclights:entity/should_emit_light_level/6 align xyz run function dynamiclights:api/place_light/6
