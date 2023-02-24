##by Tschipcraft

## Menu message
scoreboard players enable @a tschipcraft.menu
#scoreboard players add @a ts.dl.mess.welcome 0 - don't show menu on first boot
execute as @a[scores={tschipcraft.menu=1..}] run scoreboard players set @s ts.dl.mess.welc 0
execute as @a[scores={ts.dl.mess.welc=0}] run function dynamiclights:messages/welcome
execute as @a[scores={ts.dl.mess.how=1}] run function dynamiclights:messages/how_to_use

execute as @a[scores={tschipcraft.menu=1..}] run schedule function dynamiclights:menu_reset 1t
