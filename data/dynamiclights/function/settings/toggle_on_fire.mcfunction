##by Tschipcraft

execute if score $enable_on_fire ts.dl.settings matches 1 run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Light emitting from entities on fire","color":"yellow"}]
execute if score $enable_on_fire ts.dl.settings matches 0 run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Light emitting from entities on fire","color":"yellow"}]

scoreboard players add $enable_on_fire ts.dl.settings 1
execute if score $enable_on_fire ts.dl.settings matches 2 run scoreboard players set $enable_on_fire ts.dl.settings 0
function dynamiclights:settings
