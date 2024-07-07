##by Tschipcraft

execute if score $enable_ghast ts.dl.settings matches 1 run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Light emitting from ghasts about to shoot a fireball","color":"yellow"}]
execute if score $enable_ghast ts.dl.settings matches 0 run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Light emitting from ghasts about to shoot a fireball","color":"yellow"}]

scoreboard players add $enable_ghast ts.dl.settings 1
execute if score $enable_ghast ts.dl.settings matches 2 run scoreboard players set $enable_ghast ts.dl.settings 0
function dynamiclights:settings
