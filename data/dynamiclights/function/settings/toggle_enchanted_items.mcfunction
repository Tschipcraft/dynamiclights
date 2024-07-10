##by Tschipcraft

execute if score $enchanted_items ts.dl.settings matches 1 run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Light emitting from enchanted items","color":"yellow"}]
execute if score $enchanted_items ts.dl.settings matches 0 run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Light emitting from enchanted items","color":"yellow"}]

scoreboard players add $enchanted_items ts.dl.settings 1
execute if score $enchanted_items ts.dl.settings matches 2 run scoreboard players set $enchanted_items ts.dl.settings 0
function dynamiclights:settings
