##by Tschipcraft

## Ghast
# Ghasts are excluded from the limited range, since shoot timer desynchronizes
execute if score $enable_ghast ts.dl.settings matches 1..2 if entity @s[type=minecraft:ghast] at @s run function dynamiclights:internal/ghast

## Check to avoid placing inside shulkers (#20)
execute if entity @s[type=minecraft:shulker_bullet] align xyz positioned ~0.5 ~ ~0.5 store result score @s ts.dl.shulker if entity @e[type=minecraft:shulker,distance=..0.1]

## Range limit
execute if score $unlimited ts.dl.settings matches 1..2 unless entity @s[type=minecraft:shulker_bullet,scores={ts.dl.shulker=1}] run function dynamiclights:internal/main_exec_pass
execute unless score $unlimited ts.dl.settings matches 1..2 unless entity @s[type=minecraft:shulker_bullet,scores={ts.dl.shulker=1}] if entity @p[gamemode=!spectator,distance=..65] run function dynamiclights:internal/main_exec_pass
