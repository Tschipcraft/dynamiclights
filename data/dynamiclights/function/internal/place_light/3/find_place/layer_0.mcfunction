##by Tschipcraft
# Finds a location to place a dynamic light
#
# Order of checks (S = source, numbers = order of checks):
#
#     [4]
# [5] [1] [5]
# [2] <S> [2]
# [6] [3] [6]
#
# <-> is x/z; up/down is y

# 1 above
execute positioned ~ ~1 ~ if predicate dynamiclights:world/place_light/valid_pos run function dynamiclights:internal/place_light/3/summon

# Current y area
execute unless score #block_placed ts.dl.temp matches 1 positioned ~ ~ ~ run function dynamiclights:internal/place_light/3/find_place/layer_1

# 1 below
execute unless score #block_placed ts.dl.temp matches 1 positioned ~ ~-1 ~ if predicate dynamiclights:world/place_light/valid_pos run function dynamiclights:internal/place_light/3/summon

# 2 above
execute unless score #block_placed ts.dl.temp matches 1 positioned ~ ~2 ~ if predicate dynamiclights:world/place_light/valid_pos run function dynamiclights:internal/place_light/3/summon

# -1 and +1 y area
execute unless score #block_placed ts.dl.temp matches 1 positioned ~ ~1 ~ run function dynamiclights:internal/place_light/3/find_place/layer_1
execute unless score #block_placed ts.dl.temp matches 1 positioned ~ ~-1 ~ run function dynamiclights:internal/place_light/3/find_place/layer_1
