Hotfix for v1.8 - the data pack now actually includes the overlays for compatibility with 1.20.6 (closes [#34](https://github.com/Tschipcraft/dynamiclights/issues/34))

- **Update to Minecraft 1.20.6 🐺**  
  These changes utilize overlays to maintain backwards compatibility  
  - Switched to testing components rather than NBT  in predicates
  - Added support for the newly added contents slot in predicates
- **Added intermediate light levels 3 and 12** ([#14](https://github.com/Tschipcraft/dynamiclights/issues/14))
  - Magma cubes, magma blocks, magma cream, all remaining amethyst buds, heart of the sea and totem of undying (closes [#23](https://github.com/Tschipcraft/dynamiclights/issues/23)) now emit light level 3
  - Dragon fireballs now emit light level 12 instead of 15
- **Implemented a new system for finding valid locations for dynamic lights.**  
Checks now actively avoid blocking paths of fluids and pistons (closes [#15](https://github.com/Tschipcraft/dynamiclights/issues/15)), interfering with other redstone components and triggering certain block updates (closes [#12](https://github.com/Tschipcraft/dynamiclights/issues/12))  
- **Added support for parsing item displays, block displays and falling blocks**
- **Added support for parsing tridents, arrows and ominous item spawners in versions 1.20.5 and up**
- Simplified light block placement and removal
- Fixed shulkers teleporting away when shooting (closes [#20](https://github.com/Tschipcraft/dynamiclights/issues/20))
- Eventified item frame reparsing in versions before 1.20.5  
  Item frame reparsing is now triggered when a player right-clicks on an item frame or when an item drops nearby in versions prior to 24w11a  
  This should improve performance in regions with a high number of item frames while also improving responsiveness (first steps for [#13](https://github.com/Tschipcraft/dynamiclights/issues/13))
- Improved dynamic light explosion avoidance performance by checking a global score instead of scanning for nearby area effect clouds
- Fixed dynamic lights overwriting cave_air with air
- Fixed dynamic light position offset for item entities
- Added separate mod support tag lists for modded items
- Added additional overlay that should slightly improve performance when placing dynamic lights in 1.20.2 and above
- Gave dynamic light marker entities a custom name ([#19](https://github.com/Tschipcraft/dynamiclights/issues/19))
- Some light level changes
  - Added conduit to light level 15 items
  - Moved glowstone dust from light level 15 to light level 9
  - Added crying obsidian to light level 9 items
  - Added small_fireball to light level 9 entities
  - Moved allay from 9 to light level 6 entities
  - Added enchanted golden apple, enchanting table, enchanted book, sculk catalyst and the upcoming vault to light level 6 items
- Added paintings to the ignore tag list
- Added tnt minecarts to the may_block_explosion_damage tag list
