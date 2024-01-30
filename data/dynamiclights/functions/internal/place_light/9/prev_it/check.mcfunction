##by Tschipcraft
# Checks if the light level from the previous iteration marker is lower or higher and about to be removed
# Renews the previous iteration marker

scoreboard players set #light_exists ts.dl.temp 1
execute if score @s ts.dl.l.level matches ..8 run function dynamiclights:internal/place_light/9/update
execute if score @s[tag=ts.dl.remove] ts.dl.l.level matches 10.. run function dynamiclights:internal/place_light/9/update
tag @s remove ts.dl.remove
