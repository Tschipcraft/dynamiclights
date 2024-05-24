##by Tschipcraft
# Completes the rain check started in main_exec_pass.mcfunction (mc1.19.4+)

execute if dimension minecraft:overworld unless biome ~ ~ ~ #minecraft:snow_golem_melts positioned over motion_blocking if entity @s[dy=999] run scoreboard players set @s ts.dl.in_rain 1
