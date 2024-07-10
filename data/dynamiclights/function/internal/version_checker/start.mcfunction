##by Tschipcraft

scoreboard objectives add ts.dl.version dummy
execute store result score $global ts.dl.version run data get entity @r DataVersion
execute unless score $global tvc_ignore matches 1 if score $global ts.dl.version matches 4000.. run tellraw @a [{"text":"[Dynamic Lights] ","color":"gray"},{"text":"?","bold":true,"color":"gold"},{"text":" Future unknown Minecraft version above 1.21 detected! This data pack/mod may not work correctly anymore! Please make sure to check for updates in the menu! (","color":"gold"},{"text":"/trigger tschipcraft.menu","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger tschipcraft.menu"},"hoverEvent":{"action":"show_text","contents":"Click here"}},{"text":")","color":"gold"}]

execute unless score $global ts.dl.version matches 1.. run function dynamiclights:internal/version_checker/retry
