##by Tschipcraft
# Summons a new marker entity

execute align xyz positioned ~ ~ ~ run summon minecraft:marker ~ ~ ~ {Tags:["ts.dl.light","ts.dl.new_light","global.ignore","global.ignore.kill","global.ignore.pos","smithed.block"],Invulnerable:1b}
execute align xyz as @e[type=minecraft:marker,tag=ts.dl.new_light,sort=nearest,limit=1] at @s run function dynamiclights:internal/place_light/6/summon_exec
