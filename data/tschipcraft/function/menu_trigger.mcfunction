##by Tschipcraft

# Make sure the advancement wasn't triggered by something else
execute if score @s tschipcraft.menu matches 1.. run function tschipcraft:menu

advancement revoke @s only tschipcraft:menu
