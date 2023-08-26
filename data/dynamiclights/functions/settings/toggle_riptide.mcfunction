##by Tschipcraft

execute if score $riptide ts.dl.settings matches 1 run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Light emitting from tridents enchanted with riptide underwater","color":"yellow"}]
execute if score $riptide ts.dl.settings matches 0 run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Light emitting from tridents enchanted with riptide underwater","color":"yellow"}]

scoreboard players add $riptide ts.dl.settings 1
execute if score $riptide ts.dl.settings matches 2 run scoreboard players set $riptide ts.dl.settings 0
function dynamiclights:settings
