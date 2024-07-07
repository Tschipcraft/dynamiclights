##by Tschipcraft

execute if score $rain_sensitive ts.dl.settings matches 1 run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Rain counts as water","color":"yellow"}]
execute if score $rain_sensitive ts.dl.settings matches 0 run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Rain counts as water","color":"yellow"}]

scoreboard players add $rain_sensitive ts.dl.settings 1
execute if score $rain_sensitive ts.dl.settings matches 2 run scoreboard players set $rain_sensitive ts.dl.settings 0
function dynamiclights:settings
