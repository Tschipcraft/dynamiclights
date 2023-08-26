##by Tschipcraft

execute if score $water_sensitive ts.dl.settings matches 1 run tellraw @s ["",{"text":"\n-> Disabled "},{"text":"Water sensitive items","color":"yellow"}]
execute if score $water_sensitive ts.dl.settings matches 0 run tellraw @s ["",{"text":"\n-> Enabled "},{"text":"Water sensitive items","color":"yellow"}]

scoreboard players add $water_sensitive ts.dl.settings 1
execute if score $water_sensitive ts.dl.settings matches 2 run scoreboard players set $water_sensitive ts.dl.settings 0
execute if score $water_sensitive ts.dl.settings matches 0 run scoreboard players set @e[type=!#dynamiclights:dyn_ignore,scores={ts.dl.in_water=1},tag=!smithed.strict,tag=!global.ignore,tag=!global.ignore.gui] ts.dl.in_water 0
function dynamiclights:settings
