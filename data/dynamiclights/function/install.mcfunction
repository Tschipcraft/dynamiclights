##by Tschipcraft

## Initalise scoreboards
scoreboard objectives add ts.dl.ghast_cool dummy
scoreboard objectives add ts.dl.in_water dummy
scoreboard objectives add ts.dl.in_rain dummy
scoreboard objectives add ts.dl.sound dummy
scoreboard objectives add ts.dl.tnt.fuse dummy
scoreboard objectives add ts.dl.shulker dummy

# Item score specification
# Type:
# 1: Light level 3
# 2: Light level 6
# 3: Light level 9
# 4: Light level 12
# 5: Light level 15
# 6: Light level 3 outside water
# 7: Light level 6 outside water
# 8: Light level 9 outside water
# 9: Light level 12 outside water
# 10: Light level 15 outside water
# 11: Light level 3 inside water
# 12: Light level 6 inside water
# 13: Light level 9 inside water
# 14: Light level 12 inside water
# 15: Light level 15 inside water
scoreboard objectives add ts.dl.i.type dummy

scoreboard objectives add ts.dl.i.is_ench dummy
scoreboard objectives add ts.dl.i.is_ameth dummy
scoreboard objectives add ts.dl.i.is_firea dummy
scoreboard objectives add ts.dl.i.is_ript dummy
scoreboard objectives add ts.dl.i.is_chann dummy

# Light level associated with marker entities
scoreboard objectives add ts.dl.l.level dummy

# Scoreboard for any temporary values
scoreboard objectives add ts.dl.temp dummy

# Settings
scoreboard objectives add ts.dl.settings dummy
function dynamiclights:settings/defaults

# Menu/Other
scoreboard objectives add tschipcraft.menu trigger
scoreboard objectives add ts.dl.toggle trigger
scoreboard players enable @a tschipcraft.menu
scoreboard players enable @a ts.dl.toggle

scoreboard objectives add tvc_ignore dummy

## Set load status
# 18 for v1.8
scoreboard players set dynamiclights load.status 18

## Reset advancements
advancement revoke @a only tschipcraft:menu
advancement revoke @a only dynamiclights:toggle_enable

## Schedule main and loop function
schedule function dynamiclights:internal/main 5t
schedule function dynamiclights:internal/loop 10s
