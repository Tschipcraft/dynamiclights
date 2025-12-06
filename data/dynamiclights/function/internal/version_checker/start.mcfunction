##by Tschipcraft

scoreboard objectives add ts.dl.version dummy
execute store result score $global ts.dl.version run data get entity @r DataVersion
execute unless score $global tvc_ignore matches 1 if score $global ts.dl.version matches 4700.. run tellraw @a [{"text":"[Dynamic Lights] ","color":"gray"},{"text":"?","bold":true,"color":"gold"},{"text":" Future unknown Minecraft version above 1.21.11 detected! This data pack/mod may not work correctly anymore! Please make sure to check for updates in the menu! (","color":"gold"},{"text":"/trigger tschipcraft.menu","underlined":true,"color":"gold","click_event":{"action":"run_command","command":"trigger tschipcraft.menu"},"hover_event":{"action":"show_text","value":"Click here","text":"Click here"}},{"text":")","color":"gold"}]
# Note: 1.17x-1.20x uses the old folder names (function -> functions)

# Announce escape sequence handling changes
execute unless score $global tvc_ignore matches 1 if score $global ts.dl.version matches 4298..4316 run tellraw @a [{"text":"[Dynamic Lights] ","color":"gray"},{"text":"!","bold":true,"color":"gold"},{"text":" Due to changes in escape sequence handling, all text menus (including the settings menu) are unavailable from 25w02a through 25w08a.","color":"gold"}]

# Curios Compatibility
scoreboard players reset $curios_install ts.dl.version
execute if data entity @r ForgeCaps.curios:inventory.Curios run scoreboard players set $curios_install ts.dl.version 1
execute if data entity @r neoforge:attachments.curios:inventory.Curios run scoreboard players set $curios_install ts.dl.version 1

# Retry if version retrieval failed
execute unless score $global ts.dl.version matches 1.. run function dynamiclights:internal/version_checker/retry
