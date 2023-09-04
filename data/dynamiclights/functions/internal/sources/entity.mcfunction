##by Tschipcraft
# Places light, if the current entity matches any criteria for it

execute positioned ~ ~-0.32 ~ if predicate dynamiclights:entity/should_emit_light_level/15 align xyz run function dynamiclights:internal/place_light/15/summon
execute positioned ~ ~-0.32 ~ if predicate dynamiclights:entity/should_emit_light_level/9 align xyz run function dynamiclights:internal/place_light/9/summon
execute positioned ~ ~-0.32 ~ if predicate dynamiclights:entity/should_emit_light_level/6 align xyz run function dynamiclights:internal/place_light/6/summon
