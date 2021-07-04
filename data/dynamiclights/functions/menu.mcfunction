##by Tschipcraft

## menu message
scoreboard players enable @a menu
scoreboard players add @a dl_welcome 0
execute as @a[scores={menu=1..60,dl_welcome=1}] run scoreboard players set @s dl_welcome 0
execute as @a[scores={dl_welcome=0}] run function dynamiclights:messages/welcome
execute as @a[scores={dl_how_to_use=1}] run function dynamiclights:messages/how_to_use

execute as @a[scores={menu=1..60,dl_welcome=1}] run scoreboard players set @s dl_welcome 2
execute as @a[scores={menu=61..}] run scoreboard players set @s dl_welcome 1
scoreboard players reset @a[scores={menu=122..}] menu
scoreboard players add @a[scores={menu=1..}] menu 1
