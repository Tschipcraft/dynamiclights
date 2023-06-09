##by Tschipcraft
# Resets dynamic item holders such as item frames

execute as @e[type=#dynamiclights:reparse] run scoreboard players reset @s ts.dl.i.type

schedule function dynamiclights:internal/loop 8t
