##by Tschipcraft

# Find target
execute at @s unless block ~ ~ ~ #dynamiclights:air run function dynamiclights:light/resolve_no_space

# Clean already placed lights
execute as @s[tag=ts.dynamiclights.redstone_light] at @s as @e[type=marker,tag=ts.dynamiclights.redstone_light,tag=!ts.dynamiclights.new_light,distance=..0.5] run kill @s
execute as @s[tag=ts.dynamiclights.soul_light] at @s as @e[type=marker,tag=ts.dynamiclights.soul_light,tag=!ts.dynamiclights.new_light,distance=..0.5] run kill @s
execute as @s[tag=!ts.dynamiclights.redstone_light,tag=!ts.dynamiclights.soul_light] at @s as @e[type=marker,tag=ts.dynamiclights.light,tag=!ts.dynamiclights.new_light,distance=..0.5] run kill @s

# Override light levels
execute as @s at @s if entity @e[type=marker,tag=ts.dynamiclights.light,tag=!ts.dynamiclights.new_light,distance=..0.5] at @s run function dynamiclights:light/resolve_light_override

# Place light
execute as @s[tag=!ts.dynamiclights.redstone_light,tag=!ts.dynamiclights.soul_light] at @s if block ~ ~ ~ water[level=0] run fill ~ ~ ~ ~ ~ ~ light[waterlogged=true,level=15] replace water
execute as @s[tag=!ts.dynamiclights.redstone_light,tag=!ts.dynamiclights.soul_light] at @s unless block ~ ~ ~ water unless block ~ ~ ~ light run fill ~ ~ ~ ~ ~ ~ light[waterlogged=false,level=15] replace #dynamiclights:air

execute as @s[tag=ts.dynamiclights.redstone_light] at @s if block ~ ~ ~ water[level=0] run fill ~ ~ ~ ~ ~ ~ light[waterlogged=true,level=6] replace water
execute as @s[tag=ts.dynamiclights.redstone_light] at @s unless block ~ ~ ~ water unless block ~ ~ ~ light run fill ~ ~ ~ ~ ~ ~ light[waterlogged=false,level=6] replace #dynamiclights:air

execute as @s[tag=ts.dynamiclights.soul_light] at @s if block ~ ~ ~ water[level=0] run fill ~ ~ ~ ~ ~ ~ light[waterlogged=true,level=9] replace water
execute as @s[tag=ts.dynamiclights.soul_light] at @s unless block ~ ~ ~ water unless block ~ ~ ~ light run fill ~ ~ ~ ~ ~ ~ light[waterlogged=false,level=9] replace #dynamiclights:air


tag @s remove ts.dynamiclights.new_light
