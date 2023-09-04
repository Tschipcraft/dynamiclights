##by Tschipcraft

# Remove existing lights
execute as @e[type=minecraft:marker,tag=ts.dl.light] at @s run function dynamiclights:internal/remove_light
# Kill parser armor stand
kill @e[type=minecraft:armor_stand,tag=ts.dl.i.parser]
# Kill area effect clouds
kill @e[type=minecraft:area_effect_cloud,tag=ts.dl.explosion]

# Reschedule functions
schedule function dynamiclights:internal/main 5t
schedule function dynamiclights:internal/loop 4t

say ⏏ Successfully resetted Dynamic lights!
