##by Tschipcraft

execute as @s[type=#dynamiclights:parse] unless score @s ts.dl.i.type matches 0..15 run function dynamiclights:internal/sources/parse/main

execute as @s[type=!#dynamiclights:dyn_ignore,tag=!global.ignore,tag=!global.ignore.gui,tag=!smithed.strict] positioned ~ ~1 ~ unless entity @s[type=player,gamemode=spectator] unless entity @s[type=minecraft:tnt,nbt={Fuse:1s}] unless entity @s[type=minecraft:tnt,nbt={Fuse:2s}] run function dynamiclights:internal/sources/entity
