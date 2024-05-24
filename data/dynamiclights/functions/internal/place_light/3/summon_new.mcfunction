##by Tschipcraft
# Summons a new dynamic light entity

execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:["ts.dl.light","ts.dl.new_light","global.ignore","global.ignore.kill","global.ignore.pos","smithed.block"],Invulnerable:1b,Silent:1b,CustomName:'{"text":"Dynamic Light [3]"}'}
execute align xyz as @e[type=minecraft:marker,tag=ts.dl.new_light,distance=..0.1,sort=nearest,limit=1] at @s run function dynamiclights:internal/place_light/3/summon_exec
