##by Tschipcraft
# Summons a new marker entity

execute align xyz positioned ~ ~ ~ run summon minecraft:marker ~ ~ ~ {Tags:["ts.dl.light","global.ignore","global.ignore.kill","global.ignore.pos","smithed.block"],Invulnerable:1b}
execute as @e[type=minecraft:marker,tag=ts.dl.light,sort=nearest,limit=1] at @s run function dynamiclights:internal/place_light/9/summon_exec
