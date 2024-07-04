##by Tschipcraft

scoreboard objectives add ts.dl.version dummy
execute store result score $global ts.dl.version run data get entity @r DataVersion
#execute if score $global ts.dl.version matches 3900.. run tellraw @a [{"text":"[Dynamic Lights] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.21 or above","color":"red","bold":true},{"text":" detected! This version of the data pack does not work in 1.21+! Please use a newer version.","color":"red"}]
#execute unless score $global tvc_ignore matches 1 if score $global ts.dl.version matches 3900.. run tellraw @a [{"text":"[Dynamic Lights] ","color":"gray"},{"text":"?","bold":true,"color":"gold"},{"text":" Minecraft version 1.20.6 or above detected! This data pack/mod may not work correctly anymore! Please make sure to check for updates in the menu! (","color":"gold"},{"text":"/trigger tschipcraft.menu","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger tschipcraft.menu"},"hoverEvent":{"action":"show_text","contents":"Click here"}},{"text":")","color":"gold"}]
#execute if score $global ts.dl.version matches 2976..3106 run say 1.19 detected!
#execute if score $global ts.dl.version matches 2731..2975 run say 1.18 detected!
#execute if score $global ts.dl.version matches 2587..2730 run say 1.17 detected!
execute if score $global ts.dl.version matches 2231..2586 run tellraw @a [{"text":"[Dynamic Lights] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.16","color":"red","bold":true},{"text":" detected! This data pack does not work in 1.16! Please use ","color":"red"},{"text": "1.17 or above", "color":"red","underlined":true},{"text":"!","color":"red"}]
execute if score $global ts.dl.version matches 1977..2230 run tellraw @a [{"text":"[Dynamic Lights] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.15","color":"red","bold": true},{"text":" detected! This data pack does not work in 1.15! Please use ","color":"red"},{"text": "1.17 or above", "color":"red","underlined":true},{"text":"!","color":"red"}]
execute if score $global ts.dl.version matches 1632..1976 run tellraw @a [{"text":"[Dynamic Lights] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.14","color":"red","bold": true},{"text":" detected! This data pack does not work in 1.14! Please use ","color":"red"},{"text": "1.17 or above", "color":"red","underlined":true},{"text":"!","color":"red"}]
execute if score $global ts.dl.version matches 1343..1631 run tellraw @a [{"text":"[Dynamic Lights] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.13","color":"red","bold": true},{"text":" detected! This data pack does not work in 1.13! Please use ","color":"red"},{"text": "1.17 or above", "color":"red","underlined":true},{"text":"!","color":"red"}]

execute unless score $global ts.dl.version matches 1.. run function dynamiclights:internal/version_checker/retry
