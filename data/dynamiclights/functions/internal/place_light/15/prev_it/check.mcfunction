##by Tschipcraft
# Checks if the light level from the previous iteration marker is lower than 15
# Renews the previous iteration marker

scoreboard players set #light_exists ts.dl.temp 1
execute if score @s ts.dl.l.level matches ..14 run function dynamiclights:internal/place_light/15/update
tag @s remove ts.dl.remove
