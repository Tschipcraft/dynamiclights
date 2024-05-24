##by Tschipcraft
# Finds a location to place a dynamic light

execute positioned ~ ~1 ~ if predicate dynamiclights:world/place_light/valid_pos run function dynamiclights:internal/place_light/6/summon

execute unless score #block_placed ts.dl.temp matches 1 positioned ~1 ~ ~ if predicate dynamiclights:world/place_light/valid_pos run function dynamiclights:internal/place_light/6/summon
execute unless score #block_placed ts.dl.temp matches 1 positioned ~-1 ~ ~ if predicate dynamiclights:world/place_light/valid_pos run function dynamiclights:internal/place_light/6/summon

execute unless score #block_placed ts.dl.temp matches 1 positioned ~ ~ ~1 if predicate dynamiclights:world/place_light/valid_pos run function dynamiclights:internal/place_light/6/summon
execute unless score #block_placed ts.dl.temp matches 1 positioned ~ ~ ~-1 if predicate dynamiclights:world/place_light/valid_pos run function dynamiclights:internal/place_light/6/summon

# Try deeper layer
execute unless score #block_placed ts.dl.temp matches 1 run function dynamiclights:internal/place_light/6/find_place/layer_2
