##by Tschipcraft

execute store result score $gamerule.send_feedback ts.dl.settings run gamerule sendCommandFeedback

execute if score $gamerule.send_feedback ts.dl.settings matches 1 run function dynamiclights:settings/hide_feedback/hide
