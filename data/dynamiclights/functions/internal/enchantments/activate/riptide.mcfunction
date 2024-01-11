##by Tschipcraft

execute if score $enable_sound ts.dl.settings matches 1..2 run playsound minecraft:block.conduit.activate player @a ~ ~ ~ 0.8
scoreboard players set @s ts.dl.sound 1
