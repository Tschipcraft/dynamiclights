##by Tschipcraft

execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ts.dynamiclights.light","ts.dynamiclights.new_light","ts.dynamiclights.redstone_light","global.ignore","smithed.entity","smithed.strict"],Invulnerable:1b}

# Resolve potential problems and place the light
execute as @e[type=minecraft:marker,tag=ts.dynamiclights.new_light] at @s run function dynamiclights:light/core

#say A redstone light triggered!