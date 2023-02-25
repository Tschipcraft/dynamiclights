##by Tschipcraft

execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ts.dynamiclights.light","ts.dynamiclights.new_light","global.ignore","global.ignore.kill","global.ignore.pos","smithed.entity","smithed.strict"],Invulnerable:1b}

# Resolve potential problems and place the light
execute as @e[type=minecraft:marker,tag=ts.dynamiclights.new_light] at @s run function dynamiclights:light/core
