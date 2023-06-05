##by Tschipcraft

scoreboard objectives add ts.dl.ghast_cool dummy
scoreboard objectives add ts.dl.in_water dummy

scoreboard objectives add ts.dl.mess.welc dummy
scoreboard objectives add ts.dl.mess.how trigger
scoreboard objectives add ts.dl.settings dummy


# defaults
execute unless score $enable_on_fire ts.dl.settings matches 0..1 run scoreboard players set $enable_on_fire ts.dl.settings 1
execute unless score $enable_glowing ts.dl.settings matches 0..1 run scoreboard players set $enable_glowing ts.dl.settings 0
execute unless score $enable_ghast ts.dl.settings matches 0..1 run scoreboard players set $enable_ghast ts.dl.settings 1
execute unless score $fire_aspect ts.dl.settings matches 0..1 run scoreboard players set $fire_aspect ts.dl.settings 1
execute unless score $enchanted_items ts.dl.settings matches 0..1 run scoreboard players set $enchanted_items ts.dl.settings 1
execute unless score $amethyst_trimmed ts.dl.settings matches 0..1 run scoreboard players set $amethyst_trimmed ts.dl.settings 1


scoreboard objectives add tschipcraft.menu trigger

scoreboard objectives add tvc_ignore dummy

schedule function dynamiclights:main 5t

# Break for any version below Minecraft 1.17
execute if entity @e[type=minecraft:marker]
