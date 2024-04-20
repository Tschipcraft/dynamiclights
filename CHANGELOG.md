- **Update to Minecraft 1.20.5**  
  These changes utilize overlays and therefore don't break backwards compatibility:
  - Switched to testing components rather than NBT  in predicates
  - Added support for the newly added contents slot in predicates
  - Fixed some item slot locations triggering light when they shouldn't
- **Implemented a new system for finding valid locations for dynamic lights.**  
Checks now actively avoid blocking paths of fluids and pistons (closes [#15](https://github.com/Tschipcraft/dynamiclights/issues/15)), interfering with other redstone components and triggering certain block updates (closes [#12](https://github.com/Tschipcraft/dynamiclights/issues/12))  
- **Added support for parsing item displays, block displays and falling blocks**
- **Added support for parsing tridents, arrows and ominous item spawners in versions 1.20.5 and up**
- Improved performance of explosion avoidance for dynamic lights by checking a global score instead of scanning for nearby area effect clouds
- Simplified light block placement and removal
- Fixed shulkers teleporting away when shooting (closes [#20](https://github.com/Tschipcraft/dynamiclights/issues/20))
- Fixed dynamic lights overwriting cave_air with air
- Eventified item frame reparsing in versions before 1.20.5  
  Item frame reparse now triggers when a player right-clicks on an item frame or when an item drops nearby in versions before 24w11a.  
  This should improve performance in regions with a high number of item frames while also improving responsiveness (first steps for [#13](https://github.com/Tschipcraft/dynamiclights/issues/13))
- Gave dynamic light marker entities a custom name ([#19](https://github.com/Tschipcraft/dynamiclights/issues/19))
- Fixed dynamic light position offset for item entities
- Added separate mod support tag lists for modded items
