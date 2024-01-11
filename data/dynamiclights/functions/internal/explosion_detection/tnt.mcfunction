##by Tschipcraft
# Commands run by tnt per tick

# Set up score for fuse
execute as @s[tag=!ts.dl.tnt.setup] run function dynamiclights:internal/explosion_detection/setup/tnt

# Decrement fuse and trigger if it hits 0
scoreboard players remove @s ts.dl.tnt.fuse 1
execute if score @s ts.dl.tnt.fuse matches ..1 at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,DurationOnUse:0,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","smithed.block","ts.dl.explosion"]}

# Detect other TNTs and Observers
execute if block ~1 ~ ~ #dynamiclights:tnt_exclude unless entity @e[type=minecraft:area_effect_cloud,tag=ts.dl.explosion,distance=..1] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","smithed.block","ts.dl.explosion"]}
execute if block ~-1 ~ ~ #dynamiclights:tnt_exclude unless entity @e[type=minecraft:area_effect_cloud,tag=ts.dl.explosion,distance=..1] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","smithed.block","ts.dl.explosion"]}
execute if block ~ ~ ~1 #dynamiclights:tnt_exclude unless entity @e[type=minecraft:area_effect_cloud,tag=ts.dl.explosion,distance=..1] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","smithed.block","ts.dl.explosion"]}
execute if block ~ ~ ~-1 #dynamiclights:tnt_exclude unless entity @e[type=minecraft:area_effect_cloud,tag=ts.dl.explosion,distance=..1] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","smithed.block","ts.dl.explosion"]}
execute if block ~ ~1 ~ #dynamiclights:tnt_exclude unless entity @e[type=minecraft:area_effect_cloud,tag=ts.dl.explosion,distance=..1] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","smithed.block","ts.dl.explosion"]}
execute if block ~ ~-1 ~ #dynamiclights:tnt_exclude unless entity @e[type=minecraft:area_effect_cloud,tag=ts.dl.explosion,distance=..1] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","smithed.block","ts.dl.explosion"]}
