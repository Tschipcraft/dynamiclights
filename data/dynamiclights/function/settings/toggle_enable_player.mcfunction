##by Tschipcraft

execute as @s[tag=!ts.dl.ignore] run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Dynamic Lights for yourself","color":"yellow"}]
execute as @s[tag=ts.dl.ignore] run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Dynamic Lights for yourself","color":"yellow"}]

execute store success score #temp ts.dl.toggle run tag @s add ts.dl.ignore

execute if score #temp ts.dl.toggle matches 0 run tag @s remove ts.dl.ignore
scoreboard players reset @s ts.dl.toggle
scoreboard players enable @a ts.dl.toggle
advancement revoke @a only dynamiclights:toggle_enable
execute at @s run function dynamiclights:settings
