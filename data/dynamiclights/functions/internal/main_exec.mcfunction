##by Tschipcraft

## Ghast
# Ghasts are excluded from the limited range, since shoot timer desynchronizes
execute if entity @s[type=minecraft:ghast] at @s run function dynamiclights:internal/ghast

## Range limit
execute if score $unlimited ts.dl.settings matches 1..2 unless entity @e[type=minecraft:area_effect_cloud,tag=ts.dl.explosion,distance=..20] unless entity @s[type=player,gamemode=spectator] run function dynamiclights:internal/main_exec_pass
execute unless score $unlimited ts.dl.settings matches 1..2 if entity @a[gamemode=!spectator,distance=..65] unless entity @e[type=minecraft:area_effect_cloud,tag=ts.dl.explosion,distance=..20] unless entity @s[type=player,gamemode=spectator] run function dynamiclights:internal/main_exec_pass
