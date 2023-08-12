##by Tschipcraft
# Checks if the light level from the previous iteration marker is lower than 9
# Renews the previous iteration marker

scoreboard players set #light_exists ts.dl.settings 1
execute if score @s ts.dl.l.level matches ..9 run function dynamiclights:internal/place_light/9/update
execute as @s[tag=ts.dl.remove] run function dynamiclights:internal/place_light/9/update
tag @s remove ts.dl.remove
