##by Tschipcraft

execute if score $enable_sound ts.dl.settings matches 1 run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Sound Cues","color":"yellow"}]
execute if score $enable_sound ts.dl.settings matches 0 run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Sound Cues","color":"yellow"}]

scoreboard players add $enable_sound ts.dl.settings 1
execute if score $enable_sound ts.dl.settings matches 2 run scoreboard players set $enable_sound ts.dl.settings 0
function dynamiclights:settings
