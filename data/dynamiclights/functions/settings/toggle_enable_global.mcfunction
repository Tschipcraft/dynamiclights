##by Tschipcraft

execute if score $enable ts.dl.settings matches 1 run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Dynamic Lights globally","color":"yellow"}]
execute if score $enable ts.dl.settings matches 0 run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Dynamic Lights globally","color":"yellow"}]

scoreboard players add $enable ts.dl.settings 1
execute if score $enable ts.dl.settings matches 2 run scoreboard players set $enable ts.dl.settings 0
function dynamiclights:settings
