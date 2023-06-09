##by Tschipcraft
# Sets the light level for a marker entity and updates it

scoreboard players set @s ts.dl.l.level 9
execute if block ~ ~ ~ minecraft:light run function dynamiclights:internal/place_light/9/prev_it/update
execute unless block ~ ~ ~ minecraft:light run function dynamiclights:internal/place_light/9/place
