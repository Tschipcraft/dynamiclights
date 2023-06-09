##by Tschipcraft

scoreboard objectives add ts.dl.ghast_cool dummy
scoreboard objectives add ts.dl.in_water dummy
scoreboard objectives add ts.dl.sound dummy

# Item score specification
# Type:
# 1: Light level 3 (unused)
# 2: Light level 6
# 3: Light level 9
# 4: Light level 12 (unused)
# 5: Light level 15
# 6: Light level 3 (unused) outside water
# 7: Light level 6 outside water
# 8: Light level 9 outside water
# 9: Light level 12 (unused) outside water
# 10: Light level 15 outside water
# 11: Light level 3 (unused) inside water
# 12: Light level 6 inside water
# 13: Light level 9 inside water
# 14: Light level 12 (unused) inside water
# 15: Light level 15 inside water
scoreboard objectives add ts.dl.i.type dummy

scoreboard objectives add ts.dl.i.is_ench dummy
scoreboard objectives add ts.dl.i.is_ameth dummy
scoreboard objectives add ts.dl.i.is_firea dummy
scoreboard objectives add ts.dl.i.is_ript dummy
scoreboard objectives add ts.dl.i.is_chann dummy

scoreboard objectives add ts.dl.l.level dummy


# TODO:
# Add setting for cues for riptide + channeling
# Add Light Level 3 (Magma Blocks + standard enchants)
# Finish #3
# Add rain check to water sensitivity?


scoreboard objectives add ts.dl.mess.welc dummy
scoreboard objectives add ts.dl.mess.how trigger
scoreboard objectives add ts.dl.settings dummy


# defaults
execute unless score $enable_on_fire ts.dl.settings matches 0..1 run scoreboard players set $enable_on_fire ts.dl.settings 1
execute unless score $enable_glowing ts.dl.settings matches 0..1 run scoreboard players set $enable_glowing ts.dl.settings 0
execute unless score $enable_ghast ts.dl.settings matches 0..1 run scoreboard players set $enable_ghast ts.dl.settings 1
execute unless score $fire_aspect ts.dl.settings matches 0..1 run scoreboard players set $fire_aspect ts.dl.settings 1
execute unless score $riptide ts.dl.settings matches 0..1 run scoreboard players set $riptide ts.dl.settings 1
execute unless score $channeling ts.dl.settings matches 0..1 run scoreboard players set $channeling ts.dl.settings 1
execute unless score $enchanted_items ts.dl.settings matches 0..1 run scoreboard players set $enchanted_items ts.dl.settings 1
execute unless score $amethyst_trimmed ts.dl.settings matches 0..1 run scoreboard players set $amethyst_trimmed ts.dl.settings 1


scoreboard objectives add tschipcraft.menu trigger

scoreboard objectives add tvc_ignore dummy

schedule function dynamiclights:internal/main 5t
schedule function dynamiclights:internal/loop 4t

# Break for any version below Minecraft 1.17
execute if entity @e[type=minecraft:marker]
