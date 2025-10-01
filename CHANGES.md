- **Added support for Minecraft 1.21.9** 🥉
  - Added Copper Torches and Copper Lanterns to light level 15 items
  - Updated to work with the new pack.mcmeta syntax
- **Expanded the search area for dynamic light placement**  
  This fixes dynamic lights not searching for space under their eye level, and generally improves the checking order including short-circuiting opportunities
- Improved piston detection to search for slime or honey blocks in corners and behind other blocks  
  This resolves an issue when using [Gnembon's Gold Farm](https://www.youtube.com/watch?v=DLe5-THpQ6I) (closes [#75](https://github.com/Tschipcraft/dynamiclights/issues/75))
- Fixed Curios slot parsing issues (closes [#76](https://github.com/Tschipcraft/dynamiclights/issues/76))
- Added Firefly Bushes to light level 3 items
- Added mod support for [TerraFirmaCraft](https://modrinth.com/project/JaCEZUhg) (closes [#72](https://github.com/Tschipcraft/dynamiclights/issues/72)), [Bone Torch](https://www.curseforge.com/minecraft/mc-mods/sbm-bone-torch), and [Aquatic Torches](https://modrinth.com/project/yJR377od) (closes [#38](https://github.com/Tschipcraft/dynamiclights/issues/38))
