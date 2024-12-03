##by Tschipcraft
# Sets default settings during installation or if entry is incorrect
# Called by install.mcfunction

execute unless score $enable ts.dl.settings matches -1..2 run scoreboard players set $enable ts.dl.settings 1
execute unless score $enable_on_fire ts.dl.settings matches -1..2 run scoreboard players set $enable_on_fire ts.dl.settings 1
execute unless score $enable_glowing ts.dl.settings matches -1..2 run scoreboard players set $enable_glowing ts.dl.settings 0
execute unless score $fire_aspect ts.dl.settings matches -1..2 run scoreboard players set $fire_aspect ts.dl.settings 1
execute unless score $riptide ts.dl.settings matches -1..2 run scoreboard players set $riptide ts.dl.settings 1
execute unless score $channeling ts.dl.settings matches -1..2 run scoreboard players set $channeling ts.dl.settings 1
execute unless score $enchanted_items ts.dl.settings matches -1..2 run scoreboard players set $enchanted_items ts.dl.settings 1
execute unless score $amethyst_trimmed ts.dl.settings matches -1..2 run scoreboard players set $amethyst_trimmed ts.dl.settings 1
execute unless score $enable_ghast ts.dl.settings matches -1..2 run scoreboard players set $enable_ghast ts.dl.settings 1

execute unless score $water_sensitive ts.dl.settings matches -1..2 run scoreboard players set $water_sensitive ts.dl.settings 1
execute unless score $enable_sound ts.dl.settings matches -1..2 run scoreboard players set $enable_sound ts.dl.settings 1
execute unless score $rain_sensitive ts.dl.settings matches -1..2 run scoreboard players set $rain_sensitive ts.dl.settings 1

# Hidden
execute unless score $unlimited ts.dl.settings matches -1..2 run scoreboard players set $unlimited ts.dl.settings 0
