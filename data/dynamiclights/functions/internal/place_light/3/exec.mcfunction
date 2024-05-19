##by Tschipcraft
# Initiates finding a valid location to place the dynamic light

# Reset check score
scoreboard players set #block_placed ts.dl.temp 0

# Try current location
execute if predicate dynamiclights:world/place_light/valid_pos run function dynamiclights:internal/place_light/3/summon

# If not valid, try deeper layer
execute unless score #block_placed ts.dl.temp matches 1 run function dynamiclights:internal/place_light/3/find_place/layer_1
