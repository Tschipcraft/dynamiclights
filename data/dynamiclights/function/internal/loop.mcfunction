##by Tschipcraft
# Resets dynamic item holders such as item frames

scoreboard players reset @e[type=#dynamiclights:reparse] ts.dl.i.type

schedule function dynamiclights:internal/loop 4s
