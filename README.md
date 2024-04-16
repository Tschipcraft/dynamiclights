<h1 align="center">
  <img alt="Icon" src="pack.png" width="96" height="96" style="image-rendering: pixelated"><br/>
  Dynamic Lights
</h1>
<p align="center">
  <a href="https://github.com/Tschipcraft/dynamiclights/stargazers"><img alt="GitHub Stars" src="https://img.shields.io/github/stars/Tschipcraft/dynamiclights?colorA=0c0906&colorB=fbc703&style=for-the-badge"></a>
  <a href="https://www.curseforge.com/minecraft/texture-packs/tschipcrafts-dynamic-lights"><img alt="CurseForge Downloads" src="https://img.shields.io/curseforge/dt/831385?logo=curseforge&label=CurseForge&colorA=0c0906&colorB=fbc703&style=for-the-badge"></a>
  <a href="https://modrinth.com/datapack/dynamic-lights"><img alt="Modrinth Downloads" src="https://img.shields.io/modrinth/dt/dynamic-lights?label=Modrinth&colorA=0c0906&colorB=fbc703&style=for-the-badge&logo=modrinth"></a>
  <a href="https://github.com/Tschipcraft/dynamiclights/releases/latest"><img alt="GitHub Downloads" src="https://img.shields.io/github/downloads/Tschipcraft/dynamiclights/total?logo=github&colorA=0c0906&colorB=fbc703&style=for-the-badge"></a>
</p>

> A server-side data pack/mod for Minecraft 1.17x-1.20x

<details>
<summary>YouTube showcase</summary>
<a href="http://www.youtube.com/watch?v=bzmqpgfQ7jo">
  <img alt="Dynamic Lights thumbnail" width=50% src="https://tschipcraft.ddns.net/mod_resources/youtube_preview.php?id=bzmqpgfQ7jo" title="Watch on YouTube">
</a>
</details>

## Features

Supported entities and items such as torches or lanterns will emit light by using the light block added in 21w13a. Because of this, the dynamic lights are limited to the block grid. (see [#9](https://github.com/Tschipcraft/dynamiclights/issues/9) for more information)

**Supported Items:** Torches, Lanterns, Campfires, Glowstone, Glowstone Dust, Blaze Rods, Blaze Powder, Spectral Arrows, Lava Buckets, Sea Lanterns, Prismarine Crystals, Froglights, Glow Ink Sacs, Glow Berries, Glow Item Frames, Glow Lichen, Jack o'Lanterns, Shroomlights, End Rods, End Crystals, Fire Charge, Amethyst Shards, Nether Stars, Ender Chests and Beacons

Additionally, all enchanted items will emit light level 6 while Fire Aspect, Riptide or Channeling enchanted items emit light level 9.

**Supported Entities:** Allays, Glow Squids, Glow Item Frames, Blazes, TNT, End Crystals, Fireballs, Spectral Arrows, Shulker Bullets, Firework Rockets and Flying Wither Skulls

Since this project is completely server-side, players joining a server with Dynamic Lights installed do not have to install anything on their end for it to work! Nontheless, you can still use the mod on
the client for singleplayer worlds only. Joining a server that has not installed Dynamic Lights will have no effect.

[➜ For available settings and planned features, take a look at the wiki](https://github.com/Tschipcraft/dynamiclights/wiki)


## Installation

Download the latest release from [here](https://github.com/Tschipcraft/dynamiclights/releases/latest) and put the datapack zip file into the `datapacks` folder of your Minecraft world.

This data pack is also available as a mod with an additional global config file and settings menu when installed alongside [MidnightLib](https://modrinth.com/mod/midnightlib). Download the latest release and put the mod .jar file into your `.minecraft/mods` folder.

Also available on Modrinth and CurseForge!

<a href="https://modrinth.com/datapack/dynamic-lights">
<picture>
  <source height="72px" media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/Tschipcraft/badges/main/assets/modrinth-badge-dark.svg">
  <source height="72px" media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/Tschipcraft/badges/main/assets/modrinth-badge-light.svg">
  <img height="72px" alt="Download on Modrinth" src="https://raw.githubusercontent.com/modrinth/art/main/Branding/Badge/badge-dark.svg">
</picture>
</a>
<a href="https://www.curseforge.com/minecraft/texture-packs/tschipcrafts-dynamic-lights">
<picture>
  <source height="72px" media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/Tschipcraft/badges/main/assets/curseforge-badge-dark.svg">
  <source height="72px" media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/Tschipcraft/badges/main/assets/curseforge-badge-light.svg">
  <img height="72px" alt="Download on CurseForge" src="https://raw.githubusercontent.com/Tschipcraft/badges/main/assets/curseforge-badge-dark.svg">
</picture>
</a>


## Manage

To open the ingame menu, execute `/trigger tschipcraft.menu` or `/function #tschipcraft:menu`. There is a **Reset** and an **Uninstall** button.
