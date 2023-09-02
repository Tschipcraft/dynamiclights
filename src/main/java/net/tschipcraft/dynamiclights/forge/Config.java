package net.tschipcraft.dynamiclights.forge;

import eu.midnightdust.lib.config.MidnightConfig;

public class Config extends MidnightConfig {

    public enum bool {
        WORLD, YES, NO
    }

    @Comment(centered = true)
    public static Comment configure_ingame;
    @Comment(centered = true)
    public static Comment configure_ingame2;
    @Comment(centered = true)
    public static Comment empty;

    @Comment(centered = true)
    public static Comment global_settings;
    @Comment(centered = true)
    public static Comment info;
    @Comment(centered = true)
    public static Comment info2;

    @Comment
    public static Comment light;

    @Entry
    public static bool enable_on_fire = bool.WORLD;
    @Entry
    public static bool enable_glowing = bool.WORLD;
    @Entry
    public static bool enable_ghast = bool.WORLD;
    @Entry
    public static bool enable_enchanted_items = bool.WORLD;
    @Entry
    public static bool enable_amethyst_trimmed = bool.WORLD;

    @Comment
    public static Comment empty2;
    @Comment
    public static Comment additional_light;

    @Entry
    public static bool enable_fire_aspect = bool.WORLD;
    @Entry
    public static bool enable_riptide = bool.WORLD;
    @Entry
    public static bool enable_channeling = bool.WORLD;

    @Comment
    public static Comment empty3;
    @Comment
    public static Comment other;

    @Entry
    public static bool enable_water_sensitive = bool.WORLD;
    @Entry
    public static bool enable_sound = bool.WORLD;
    @Entry
    public static bool enable_rain_sensitive = bool.WORLD;
}
