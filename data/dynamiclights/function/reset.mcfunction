##by Tschipcraft

# Remove existing lights
execute as @e[type=minecraft:marker,tag=ts.dl.light] at @s run function dynamiclights:internal/remove_light
# Kill parser armor stand
kill @e[type=minecraft:armor_stand,tag=ts.dl.i.parser]

# Reset explosion alarm
function dynamiclights:internal/explosion_detection/reset

# Reset advancement
advancement revoke @a only dynamiclights:interacted_with_item_frame

# Reschedule functions
schedule function dynamiclights:internal/main 5t
schedule function dynamiclights:internal/loop 4t

say ⏏ Successfully resetted Dynamic lights!
