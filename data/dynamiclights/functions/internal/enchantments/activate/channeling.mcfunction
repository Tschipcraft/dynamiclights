##by Tschipcraft

execute if score $enable_sound ts.dl.settings matches 1..2 run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.3
scoreboard players set @s ts.dl.sound 2
