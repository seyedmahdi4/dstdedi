--Change whatever settings you want to on your world here, follow the commented out lines to see what possible settings you can have per shard! Some things you should know: 
--Make sure that the spellings match exactly what the commented out lines say, do not forget quotation marks! 
--Make sure each entry has a comma after it, follow the syntax below! If any commas or quotation marks are missing, your worldgenoverride.lua will not work/load! 
--The entries under WORLD SETTINGS can be changed after the world has been generated already, but the entries under WORLD GENERATION cannot be! Check twice before you generate your world!
--The commented out world seed entry is specifically for use with the API Gem Core mod (which lets you generate worlds with world seeds!) Just add your world seed number desired to it, no quotation marks required! 
--If you made it all the way to the end, thank you for reading! Have a cookie 🍪
return {
	override_enabled = true,	
	settings_preset = "DST_CAVE", 			-- "SURVIVAL_TOGETHER", "MOD_MISSING", "SURVIVAL_TOGETHER_CLASSIC", "SURVIVAL_DEFAULT_PLUS", "COMPLETE_DARKNESS", "DST_CAVE", "DST_CAVE_PLUS"
	worldgen_preset = "DST_CAVE", 			-- "SURVIVAL_TOGETHER", "MOD_MISSING", "SURVIVAL_TOGETHER_CLASSIC", "SURVIVAL_DEFAULT_PLUS", "COMPLETE_DARKNESS", "DST_CAVE", "DST_CAVE_PLUS"
	overrides={
---------------------------WORLD SETTINGS---------------------------
	-- GLOBAL 
	specialevent= "default",			-- "none", "default"
	autumn="default",				-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"
    	winter="default",				-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"
	spring="default",				-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"
	summer="default",				-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"
    	day="default",					-- "default", "longday", "longdusk", "longnight", "noday", "nodusk", "nonight", "onlyday", "onlydusk", "onlynight"
	spawnmode="fixed",				-- "fixed","scatter"
	ghostenabled="always",				-- "always","none"
	portalresurection="none",			-- "always","none"
	ghostsanitydrain="always",			-- "always","none"
	resettime="default",				-- "none","slow","default","fast","always"
	beefaloheat="default",				-- "never", "rare", "default", "often", "always"
	krampus="default",				-- "never", "rare", "default", "often", "always"

	-- EVENTS
	crow_carnival="default",			-- "default", "enabled"
	hallowed_nights="default",			-- "default", "enabled"
	winters_feast="default",			-- "default", "enabled"
	year_of_the_gobbler="default",			-- "default", "enabled"
	year_of_the_varg="default", 			-- "default", "enabled"
	year_of_the_pig="default",			-- "default", "enabled"
	year_of_the_carrat="default",			-- "default", "enabled"
	year_of_the_beefalo="default",			-- "default", "enabled"
	year_of_the_catcoon="default",			-- "default", "enabled"

	-- SURVIVORS 
	extrastartingitems="default",			-- "0", "5", "default", "15", "20", "none"
	seasonalstartingitems="default",		-- "none", "default",
	spawnprotection="default",			-- "none", "default", "always"
	dropeverythingondespawn="default",		-- "default", "always",
	healthpenalty="always",				-- "always","none"
	lessdamagetaken="none",				-- "always","none","more"
	temperaturedamage="default",			-- "default","nonlethal"
	hunger="default",				-- "default","nonlethal"
	darkness="default",				-- "default","nonlethal"
	brightmarecreatures="default",			-- "none", "few", "default", "many", "always"
	shadowcreatures="default",			-- "none", "few", "default", "many", "always"

	-- WORLD
	atriumgate="default",				-- "veryslow", "slow", "default", "fast", "veryfast"
	wormattacks="default",				-- "never", "rare", "default", "often", "always"
	earthquakes="default", 				-- "never", "rare", "default", "often", "always"
	weather="default",				-- "never", "rare", "default", "often", "always"

	-- RESOURCE REGROWTH
	regrowth="default",				-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	basicresource_regrowth="none",			-- "always", "none" 
	flower_cave_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	lightflier_flower_regrowth="default",		-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	mushtree_moon_regrowth="default",		-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	mushtree_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"

	-- ANIMALS
	lightfliers="default",				-- "never", "rare", "default", "often", "always"
	bunnymen="default", 				-- "never", "rare", "default", "often", "always"
	dustmoths="default",				-- "never", "rare", "default", "often", "always"
	grassgekkos="default",				-- "never", "rare", "default", "often", "always"
	moles_setting="default",			-- "never", "rare", "default", "often", "always"
	mushgnome="default",				-- "never", "rare", "default", "often", "always"
	pigs_setting="default",				-- "never", "rare", "default", "often", "always"	
	rocky="default", 				-- "never", "rare", "default", "often", "always"
	slurtles="default", 				-- "never", "rare", "default", "often", "always"
	snurtles="default",				-- "never", "rare", "default", "often", "always"
	monkey="default", 				-- "never", "rare", "default", "often", "always"
	
	-- HOSTILE CREATURES
	bats_setting="default",				-- "never", "rare", "default", "often", "always"
	spider_hider="default",				-- "never", "rare", "default", "often", "always"
	spider_dropper="default",			-- "never", "rare", "default", "often", "always"
	merms="default",				-- "never", "rare", "default", "often", "always"
	molebats="default",				-- "never", "rare", "default", "often", "always"
	nightmarecreatures="default",			-- "never", "rare", "default", "often", "always"
	spider_warriors="default",			-- "never", "rare", "default", "often", "always"
	spiders="default",				-- "never", "rare", "default", "often", "always"
	spider_spitter="default",			-- "never", "rare", "default", "often", "always"

	-- GIANTS
	fruitfly="default",				-- "never", "rare", "default", "often", "always"
	spiderqueen="default",				-- "never", "rare", "default", "often", "always"
	toadstool="default",				-- "never", "rare", "default", "often", "always"
	liefs="default",				-- "never", "rare", "default", "often", "always"
	
---------------------------WORLD GENERATION---------------------------
	-- GLOBAL (extra)
	season_start="default",

	-- WORLD
	task_set="cave_default",			-- "classic", "default", "cave_default"
	start_location="caves",				-- "caves", "default", "plus", "darkness"
	world_size="default",				-- "small", "medium", "default", "huge"
	branching="default",				-- "never", "least", "default", "most", "random"
	loop="default",					-- "never", "default", "always"
	touchstone="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always"
	boons="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always"
	cavelight="default", 				-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	prefabswaps_start="default",			-- "classic", "default", "highly random"

	-- RESOURCES
	banana="default", 				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	berrybush="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	rock="default",					-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	fern="default", 				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	flint="often",					-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	wormlights="default", 				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	grass="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	lichen="default", 				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	flower_cave="default", 				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	mushtree="default", 				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	mushroom="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	cave_ponds="default", 				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	reeds="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	sapling="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	marshbush="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	trees="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	
	-- CREATURES/SPAWNERS
	bunnymen_setting="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	rocky_setting="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	slurper="default", 				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	slurtles_setting="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	monkey_setting="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"

	-- HOSTILE CREATURES/SPAWNER
	bats="default", 				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	worms="default", 				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	chess="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	fissure="default", 				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	spiders_setting="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	cave_spiders="default", 			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	tentacles="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"

	-- MISC
	--worldseed=,                     	        -- world seed #
	},
}