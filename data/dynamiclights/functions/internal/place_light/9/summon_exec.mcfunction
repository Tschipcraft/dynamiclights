##by Tschipcraft

tag @s remove ts.dl.new_light
scoreboard players set #light_moved ts.dl.settings 0
execute unless block ~ ~ ~ #dynamiclights:air unless block ~ ~ ~ water[level=0] run function dynamiclights:internal/place_light/resolve_no_space

execute if score #light_moved ts.dl.settings matches 0 run function dynamiclights:internal/place_light/9/update
execute if score #light_moved ts.dl.settings matches 1 at @s align xyz run function dynamiclights:internal/place_light/9/summon
