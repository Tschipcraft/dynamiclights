##by Tschipcraft
# Checks if the light level from the previous iteration marker is lower than 6
# Renews the previous iteration marker

scoreboard players set #light_exists ts.dl.settings 1
execute if score @s ts.dl.l.level matches ..6 run function dynamiclights:internal/place_light/6/update
execute as @s[tag=ts.dl.remove] run function dynamiclights:internal/place_light/6/update
tag @s remove ts.dl.remove
