##by Tschipcraft

execute if score $amethyst_trimmed ts.dl.settings matches 1 run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Light emitting from armor trimmed with amethyst","color":"yellow"}]
execute if score $amethyst_trimmed ts.dl.settings matches 0 run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Light emitting from armor trimmed with amethyst","color":"yellow"}]

scoreboard players add $amethyst_trimmed ts.dl.settings 1
execute if score $amethyst_trimmed ts.dl.settings matches 2 run scoreboard players set $amethyst_trimmed ts.dl.settings 0
function dynamiclights:settings
