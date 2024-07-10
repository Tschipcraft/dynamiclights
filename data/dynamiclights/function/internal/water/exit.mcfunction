##by Tschipcraft
# Any entity that is in water will run this function

# Test if a sound should be played
execute if score $enable_sound ts.dl.settings matches 1..2 unless predicate dynamiclights:entity/water_check/no_water_immersion_extinguish_items run playsound item.flintandsteel.use player @a ~ ~ ~ 0.3
execute if score $enable_sound ts.dl.settings matches 1..2 unless predicate dynamiclights:entity/water_check/no_water_immersion_illuminate_items run playsound block.beacon.deactivate player @a ~ ~ ~ 0.3

scoreboard players set @s ts.dl.in_water 0
