##by Tschipcraft

execute if score $channeling ts.dl.settings matches 1 run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Light emitting from tridents enchanted with channeling during a thunderstorm","color":"yellow"}]
execute if score $channeling ts.dl.settings matches 0 run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Light emitting from tridents enchanted with channeling during a thunderstorm","color":"yellow"}]

scoreboard players add $channeling ts.dl.settings 1
execute if score $channeling ts.dl.settings matches 2 run scoreboard players set $channeling ts.dl.settings 0
function dynamiclights:settings
