##by Tschipcraft
# Any entity that is in water will run this function

# Test if a sound should be played
execute unless predicate dynamiclights:entity/water_check/no_water_immersion_illuminate_items run playsound block.beacon.activate player @a ~ ~ ~ 0.3
execute unless predicate dynamiclights:entity/water_check/no_water_immersion_extinguish_items run playsound block.fire.extinguish player @a ~ ~ ~ 0.3

scoreboard players set @s ts.dl.in_water 1
