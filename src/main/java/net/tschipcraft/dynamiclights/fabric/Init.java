package net.tschipcraft.dynamiclights.fabric;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.event.lifecycle.v1.ServerLifecycleEvents;
import net.fabricmc.loader.api.FabricLoader;
import net.minecraft.MinecraftVersion;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Init implements ModInitializer {

	public static Logger LOGGER;

	static {
		try {
			// Directly reference a slf4j logger
			LOGGER = LoggerFactory.getLogger("dynamiclights");
		} catch (NoClassDefFoundError ignored) {
		}
	}

	@Override
	public void onInitialize() {
		if (FabricLoader.getInstance().isModLoaded("midnightlib")) {
			LOGGER.info("[Dynamic Lights] MidnightLib detected!");
			// Build MidnightLib config class
			Config.init(LOGGER.getName(), Config.class);

			LOGGER.info("[Dynamic Lights] Registering server started event...");
			ServerLifecycleEvents.SERVER_STARTED.register((server) -> {
				if (FabricLoader.getInstance().isModLoaded("midnightlib")) {
					// Use MidnightLib features
					LOGGER.info("[Dynamic Lights] Sending global config to server...");
					sendConfig.sendConfig(server);
				}
			});
		}
		if (LOGGER != null) LOGGER.info("[Dynamic Lights] Loaded Dynamic Lights by Tschipcraft successfully!");
	}
}
