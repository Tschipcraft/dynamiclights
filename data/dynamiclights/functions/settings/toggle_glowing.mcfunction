##by Tschipcraft

execute if score $enable_glowing ts.dl.settings matches 1 run tellraw @s ["",{"text":"-> Disabled "},{"text":"Light emitting from entities with the glowing effect","color":"yellow"}]
execute if score $enable_glowing ts.dl.settings matches 0 run tellraw @s ["",{"text":"-> Enabled "},{"text":"Light emitting from entities with the glowing effect","color":"yellow"}]

scoreboard players add $enable_glowing ts.dl.settings 1
execute if score $enable_glowing ts.dl.settings matches 2 run scoreboard players set $enable_glowing ts.dl.settings 0
function dynamiclights:settings
