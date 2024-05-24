##by Tschipcraft
# This function triggers whenever a player interacts with an item frame. It schedules a reparse of all near item frames for changed items.

scoreboard players reset @e[type=#dynamiclights:reparse_interactible,distance=..7] ts.dl.i.type

advancement revoke @s only dynamiclights:interacted_with_item_frame
