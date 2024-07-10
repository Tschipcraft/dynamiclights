##by Tschipcraft
# Commands run by tnt per tick

# Set up score for fuse
execute as @s[tag=!ts.dl.tnt.setup] run function dynamiclights:internal/explosion_detection/setup/tnt

# Decrement fuse and trigger if it hits 0
scoreboard players remove @s ts.dl.tnt.fuse 1
execute if score @s ts.dl.tnt.fuse matches ..1 run scoreboard players set $global ts.dl.tnt.fuse 1
execute if score @s ts.dl.tnt.fuse matches ..1 run schedule function dynamiclights:internal/explosion_detection/reset 1t
