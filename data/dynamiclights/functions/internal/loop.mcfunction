##by Tschipcraft

schedule function dynamiclights:internal/loop 4s

# Reset dynamic item holders such as item frames
scoreboard players reset @e[type=#dynamiclights:reparse] ts.dl.i.type

# Ensure all new players can run the triggers
scoreboard players enable @a ts.dl.toggle
scoreboard players enable @a tschipcraft.menu
