package net.tschipcraft.dynamiclights.fabric;

import com.mojang.brigadier.exceptions.CommandSyntaxException;
import net.minecraft.server.MinecraftServer;
import net.minecraft.server.command.ServerCommandSource;

public class sendConfig {

    public static void sendConfig(MinecraftServer server) {
        sendCommand("scoreboard objectives add ts.dl.settings dummy", server);
        if (Config.enable_on_fire == Config.bool.YES) {
            sendCommand("scoreboard players set $enable_on_fire ts.dl.settings 2", server);
        } else if (Config.enable_on_fire == Config.bool.NO) {
            sendCommand("scoreboard players set $enable_on_fire ts.dl.settings -1", server);
        } else {
            sendCommand("execute if score $enable_on_fire ts.dl.settings matches -1 run scoreboard players set $enable_on_fire ts.dl.settings 0", server);
            sendCommand("execute if score $enable_on_fire ts.dl.settings matches 2 run scoreboard players set $enable_on_fire ts.dl.settings 1", server);
        }

        if (Config.enable_glowing == Config.bool.YES) {
            sendCommand("scoreboard players set $enable_glowing ts.dl.settings 2", server);
        } else if (Config.enable_glowing == Config.bool.NO) {
            sendCommand("scoreboard players set $enable_glowing ts.dl.settings -1", server);
        } else {
            sendCommand("execute if score $enable_glowing ts.dl.settings matches -1 run scoreboard players set $enable_glowing ts.dl.settings 0", server);
            sendCommand("execute if score $enable_glowing ts.dl.settings matches 2 run scoreboard players set $enable_glowing ts.dl.settings 1", server);
        }

        if (Config.enable_ghast == Config.bool.YES) {
            sendCommand("scoreboard players set $enable_ghast ts.dl.settings 2", server);
        } else if (Config.enable_ghast == Config.bool.NO) {
            sendCommand("scoreboard players set $enable_ghast ts.dl.settings -1", server);
        } else {
            sendCommand("execute if score $enable_ghast ts.dl.settings matches -1 run scoreboard players set $enable_ghast ts.dl.settings 0", server);
            sendCommand("execute if score $enable_ghast ts.dl.settings matches 2 run scoreboard players set $enable_ghast ts.dl.settings 1", server);
        }

        if (Config.enable_enchanted_items == Config.bool.YES) {
            sendCommand("scoreboard players set $enchanted_items ts.dl.settings 2", server);
        } else if (Config.enable_enchanted_items == Config.bool.NO) {
            sendCommand("scoreboard players set $enchanted_items ts.dl.settings -1", server);
        } else {
            sendCommand("execute if score $enchanted_items ts.dl.settings matches -1 run scoreboard players set $enchanted_items ts.dl.settings 0", server);
            sendCommand("execute if score $enchanted_items ts.dl.settings matches 2 run scoreboard players set $enchanted_items ts.dl.settings 1", server);
        }

        if (Config.enable_amethyst_trimmed == Config.bool.YES) {
            sendCommand("scoreboard players set $amethyst_trimmed ts.dl.settings 2", server);
        } else if (Config.enable_amethyst_trimmed == Config.bool.NO) {
            sendCommand("scoreboard players set $amethyst_trimmed ts.dl.settings -1", server);
        } else {
            sendCommand("execute if score $amethyst_trimmed ts.dl.settings matches -1 run scoreboard players set $amethyst_trimmed ts.dl.settings 0", server);
            sendCommand("execute if score $amethyst_trimmed ts.dl.settings matches 2 run scoreboard players set $amethyst_trimmed ts.dl.settings 1", server);
        }

        if (Config.enable_fire_aspect == Config.bool.YES) {
            sendCommand("scoreboard players set $fire_aspect ts.dl.settings 2", server);
        } else if (Config.enable_fire_aspect == Config.bool.NO) {
            sendCommand("scoreboard players set $fire_aspect ts.dl.settings -1", server);
        } else {
            sendCommand("execute if score $fire_aspect ts.dl.settings matches -1 run scoreboard players set $fire_aspect ts.dl.settings 0", server);
            sendCommand("execute if score $fire_aspect ts.dl.settings matches 2 run scoreboard players set $fire_aspect ts.dl.settings 1", server);
        }

        if (Config.enable_riptide == Config.bool.YES) {
            sendCommand("scoreboard players set $riptide ts.dl.settings 2", server);
        } else if (Config.enable_riptide == Config.bool.NO) {
            sendCommand("scoreboard players set $riptide ts.dl.settings -1", server);
        } else {
            sendCommand("execute if score $riptide ts.dl.settings matches -1 run scoreboard players set $riptide ts.dl.settings 0", server);
            sendCommand("execute if score $riptide ts.dl.settings matches 2 run scoreboard players set $riptide ts.dl.settings 1", server);
        }

        if (Config.enable_channeling == Config.bool.YES) {
            sendCommand("scoreboard players set $channeling ts.dl.settings 2", server);
        } else if (Config.enable_channeling == Config.bool.NO) {
            sendCommand("scoreboard players set $channeling ts.dl.settings -1", server);
        } else {
            sendCommand("execute if score $channeling ts.dl.settings matches -1 run scoreboard players set $channeling ts.dl.settings 0", server);
            sendCommand("execute if score $channeling ts.dl.settings matches 2 run scoreboard players set $channeling ts.dl.settings 1", server);
        }

        if (Config.enable_water_sensitive == Config.bool.YES) {
            sendCommand("scoreboard players set $water_sensitive ts.dl.settings 2", server);
        } else if (Config.enable_water_sensitive == Config.bool.NO) {
            sendCommand("scoreboard players set $water_sensitive ts.dl.settings -1", server);
        } else {
            sendCommand("execute if score $water_sensitive ts.dl.settings matches -1 run scoreboard players set $water_sensitive ts.dl.settings 0", server);
            sendCommand("execute if score $water_sensitive ts.dl.settings matches 2 run scoreboard players set $water_sensitive ts.dl.settings 1", server);
        }

        if (Config.enable_sound == Config.bool.YES) {
            sendCommand("scoreboard players set $enable_sound ts.dl.settings 2", server);
        } else if (Config.enable_sound == Config.bool.NO) {
            sendCommand("scoreboard players set $enable_sound ts.dl.settings -1", server);
        } else {
            sendCommand("execute if score $enable_sound ts.dl.settings matches -1 run scoreboard players set $enable_sound ts.dl.settings 0", server);
            sendCommand("execute if score $enable_sound ts.dl.settings matches 2 run scoreboard players set $enable_sound ts.dl.settings 1", server);
        }

        if (Config.enable_rain_sensitive == Config.bool.YES) {
            sendCommand("scoreboard players set $rain_sensitive ts.dl.settings 2", server);
        } else if (Config.enable_rain_sensitive == Config.bool.NO) {
            sendCommand("scoreboard players set $rain_sensitive ts.dl.settings -1", server);
        } else {
            sendCommand("execute if score $rain_sensitive ts.dl.settings matches -1 run scoreboard players set $rain_sensitive ts.dl.settings 0", server);
            sendCommand("execute if score $rain_sensitive ts.dl.settings matches 2 run scoreboard players set $rain_sensitive ts.dl.settings 1", server);
        }
    }

    public static void sendCommand(String command, MinecraftServer server) {
        ServerCommandSource commandSource = server.getCommandSource();
        try {
            server.getCommandManager().getDispatcher().execute(command, commandSource);
        } catch (CommandSyntaxException ignored) {
        }
    }
}
