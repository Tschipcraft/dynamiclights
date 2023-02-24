##by Tschipcraft - overrides or merges existing lights

execute as @s[tag=!ts.dynamiclights.redstone_light] at @s as @e[type=marker,tag=ts.dynamiclights.redstone_light,tag=!ts.dynamiclights.new_light,distance=..0.5] at @s run function dynamiclights:delete
execute as @s[tag=!ts.dynamiclights.soul_light,tag=!redstone_light] at @s as @e[type=marker,tag=soul_light,tag=!ts.dynamiclights.new_light,distance=..0.5] at @s run function dynamiclights:delete
execute as @s[tag=ts.dynamiclights.soul_light] at @s as @e[type=marker,tag=ts.dynamiclights.redstone_light,tag=!ts.dynamiclights.new_light,distance=..0.5] at @s run function dynamiclights:delete
