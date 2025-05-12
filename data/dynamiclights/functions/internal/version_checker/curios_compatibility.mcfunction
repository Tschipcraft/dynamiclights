##by Tschipcraft
# Checks if Curios is installed

scoreboard players reset $curios_install ts.dl.version
execute if data entity @r ForgeCaps.curios:inventory.Curios run scoreboard players set $curios_install ts.dl.version 1
