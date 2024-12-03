##by Tschipcraft

# Remove existing lights
execute as @e[type=minecraft:marker,tag=ts.dl.light] at @s run function dynamiclights:internal/remove_light
# Kill parser armor stand
kill @e[type=minecraft:armor_stand,tag=ts.dl.i.parser]

# Reset explosion alarm
function dynamiclights:internal/explosion_detection/reset

# Reset advancements
advancement revoke @a only tschipcraft:menu
scoreboard players enable @a tschipcraft.menu
scoreboard players reset @a tschipcraft.menu
advancement revoke @a only dynamiclights:toggle_enable
scoreboard players enable @a ts.dl.toggle
scoreboard players reset @a ts.dl.toggle

# Reset parsed data
scoreboard objectives remove ts.dl.i.type
scoreboard objectives add ts.dl.i.type dummy

# Reschedule main function
schedule function dynamiclights:internal/main 5t

say ⏏ Successfully resetted Dynamic lights!
