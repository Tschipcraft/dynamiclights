##by Tschipcraft
# Loop to ensure all new players can run the triggers

schedule function dynamiclights:internal/loop 4s

scoreboard players enable @a ts.dl.toggle
scoreboard players enable @a tschipcraft.menu
advancement revoke @a only tschipcraft:menu
advancement revoke @a only dynamiclights:toggle_enable
