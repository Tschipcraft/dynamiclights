##by Tschipcraft

execute as @s[predicate=dynamiclights:ghast_targeting] run scoreboard players add @s ts.dl.ghast_cool 1
execute as @s[predicate=!dynamiclights:ghast_targeting] run scoreboard players reset @s ts.dl.ghast_cool
execute as @s[scores={ts.dl.ghast_cool=10..20}] at @s run function dynamiclights:api/place_light/15
execute as @s[scores={ts.dl.ghast_cool=60..}] run scoreboard players reset @s ts.dl.ghast_cool
