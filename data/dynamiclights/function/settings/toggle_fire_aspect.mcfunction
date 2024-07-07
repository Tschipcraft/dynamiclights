##by Tschipcraft

execute if score $fire_aspect ts.dl.settings matches 1 run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Light emitting from items enchanted with Fire Aspect","color":"yellow"}]
execute if score $fire_aspect ts.dl.settings matches 0 run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Light emitting from items enchanted with Fire Aspect","color":"yellow"}]

scoreboard players add $fire_aspect ts.dl.settings 1
execute if score $fire_aspect ts.dl.settings matches 2 run scoreboard players set $fire_aspect ts.dl.settings 0
function dynamiclights:settings
