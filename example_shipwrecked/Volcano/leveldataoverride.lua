--Change whatever settings you want to on your world here, follow the commented out lines to see what possible settings you can have per shard! Some things you should know: 
--Make sure that the spellings match exactly what the commented out lines say, do not forget quotation marks! 
--Make sure each entry has a comma after it, follow the syntax below! If any commas or quotation marks are missing, your leveldataoverride.lua will not work/load! 
--The entries under WORLD SETTINGS can be changed after the world has been generated already, but the entries under WORLD GENERATION cannot be! Check twice before you generate your world!
--The commented out world seed entry is specifically for use with the API Gem Core mod (which lets you generate worlds with world seeds!) Just add your world seed number desired to it, no quotation marks required! 
--If you made it all the way to the end, thank you for reading! Have a cookie 🍪
return {
	background_node_range={ 0, 0 },
	desc="The top of the tropical volcano",
	hideminimap=false,
	id="SURVIVAL_VOLCANO_CLASSIC",
	location="forest",
	max_playlist_position=999,
	min_playlist_position=0,
	name="Volcano",
	numrandom_set_pieces=0,
	override_level_string=false,
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
	portalresurection="always",			-- "always","none"
	ghostsanitydrain="none",			-- "always","none"
	resettime="none",				-- "none","slow","default","fast","always"
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

	-- ISLAND ANIMALS
	wildbores="default",				-- "never", "rare", "default", "often", "always"
	whalehunt="default",				-- "never", "rare", "default", "often", "always"
	crabhole="default",				-- "never", "rare", "default", "often", "always"
	ox="default",					-- "never", "rare", "default", "often", "always"
	solofish="default",				-- "never", "rare", "default", "often", "always"
	doydoy="default",				-- "never", "default"
	jellyfish="default",				-- "never", "rare", "default", "often", "always"
	lobster="default",				-- "never", "rare", "default", "often", "always"
	seagull="default",				-- "never", "rare", "default", "often", "always"
	ballphin="default",				-- "never", "rare", "default", "often", "always"
	primeape="default",				-- "never", "rare", "default", "often", "always"

	-- WORLD SETTINGS
	clocktype="tropical",				-- "default", "tropical"
	mild="default", 				-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"
	hurricane="default", 				-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"
	monsoon="default",				-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"
	dry="default", 					-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"

	-- ISLAND MONSTERS
	twister="default",				-- "never", "rare", "default", "often", "always"
	tigershark="default",				-- "never", "rare", "default", "often", "always"
	kraken="default",				-- "never", "rare", "default", "often", "always"
	flup="default",					-- "never", "rare", "default", "often", "always"
	mosquito="default",				-- "never", "rare", "default", "often", "always"
	swordfish="default",				-- "never", "rare", "default", "often", "always"
	stungray="default",				-- "never", "rare", "default", "often", "always"

	-- WORLD
	hounds="never",					-- DO NOT CHANGE OR YOU DIE -- "never", "rare", "default", "often", "always"
	winterhounds="default",				-- "never", "default"
	summerhounds="default",				-- "never", "default"
	petrification="default", 			-- "none", "few", "default", "many", "always"
    	frograin="never",				-- DO NOT CHANGE OR YOU DIE -- "never", "rare", "default", "often", "always"
	alternatehunt="default",			-- "never", "rare", "default", "often", "always"
	hunt="never",					-- DO NOT CHANGE OR YOU DIE -- "never", "rare", "default", "often", "always"
	lightning="default",				-- "never", "rare", "default", "often", "always"
	meteorshowers="default",			-- "never", "rare", "default", "often", "always"
	weather="default",				-- "never", "rare", "default", "often", "always"
	wildfires="never",				-- DO NOT CHANGE OR YOU DIE -- "never", "rare", "default", "often", "always"

	-- RESOURCE REGROWTH
   	regrowth="default",				-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	basicresource_regrowth="none",			-- "always", "none" 
	deciduoustree_regrowth="default",		-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	cactus_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	carrots_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	evergreen_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	flowers_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	moon_tree_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	palmconetree_regrowth="default",		-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	reeds_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	saltstack_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	twiggytrees_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"

	-- UNNATURAL PORTAL RESOURCES			
	bananabush_portalrate="default",		-- "never", "rare", "default", "often", "always"	
	lightcrab_portalrate="default",			-- "never", "rare", "default", "often", "always"
	monkeytail_portalrate="default",		-- "never", "rare", "default", "often", "always"
	palmcone_seed_portalrate="default",		-- "never", "rare", "default", "often", "always"
	portal_spawnrate="default",			-- "never", "rare", "default", "often", "always"
	powder_monkey_portalrate="default",		-- "never", "rare", "default", "often", "always"

	-- ANIMALS
	bees="default",					-- "never", "rare", "default", "often", "always"
	birds="never",					-- DO NOT CHANGE OR YOU DIE -- "never", "rare", "default", "often", "always"
	bunnymen_setting="default",			-- "never", "rare", "default", "often", "always"
	butterfly="never",				-- DO NOT CHANGE OR YOU DIE -- "never", "rare", "default", "often", "always"
	catcoons="default",				-- "never", "rare", "default", "often", "always"
	gnarwail="default",				-- "never", "rare", "default", "often", "always"
	perd="never",					-- "never", "rare", "default", "often", "always"
	grassgekkos="never",				-- DO NOT CHANGE OR YOU DIE -- "never", "rare", "default", "often", "always"
	moles="default",				-- "never", "rare", "default", "often", "always"
	penguins="never",				-- "never", "rare", "default", "often", "always"
	pigs="default",					-- "never", "rare", "default", "often", "always"
	rabbits="default",				-- "never", "rare", "default", "often", "always"
	fishschools="default",				-- "never", "rare", "default", "often", "always"
	wobsters="default",				-- "never", "rare", "default", "often", "always"

	-- HOSTILE CREATURES
   	bats_setting="default",				-- "never", "rare", "default", "often", "always"
	cookiecutters="default",			-- "never", "rare", "default", "often", "always"
	frogs="default",				-- "never", "rare", "default", "often", "always"
	mutated_hounds="default",			-- "never", "default"
	houndmound="default",				-- "never", "rare", "default", "often", "always"
	wasps="default",				-- "never", "rare", "default", "often", "always"
	lureplants="default",				-- "never", "rare", "default", "often", "always"
	walrus="default",				-- "never", "rare", "default", "often", "always"
	merm="default",					-- "never", "rare", "default", "often", "always"
	pirateraids="default",				-- "never", "rare", "default", "often", "always"
	penguins_moon="default",			-- "never", "default"
	mosquitos="default",				-- "never", "rare", "default", "often", "always"
	sharks="default",				-- "never", "rare", "default", "often", "always"
	moon_spiders="default",				-- "never", "rare", "default", "often", "always"
	squid="default",				-- "never", "rare", "default", "often", "always"
	spider_warriors="default",			-- "never", "default"
	spiders="default",				-- "never", "rare", "default", "often", "always"

	-- GIANTS
	antliontribute="default",			-- "never", "rare", "default", "often", "always"
	bearger="never",				-- DO NOT CHANGE OR YOU DIE-- "never", "rare", "default", "often", "always"
	beequeen="default",				-- "never", "rare", "default", "often", "always"
	crabking="default",				-- "never", "rare", "default", "often", "always"
	deerclops="never",				-- DO NOT CHANGE OR YOU DIE -- "never", "rare", "default", "often", "always"
	dragonfly="default",				-- "never", "rare", "default", "often", "always"
	eyeofterror="default",				-- "never", "rare", "default", "often", "always"
	klaus="default",				-- "never", "rare", "default", "often", "always"
	fruitfly="default",				-- "never", "rare", "default", "often", "always"
	malbatross="default",				-- "never", "rare", "default", "often", "always"
	goosemoose="default",				-- "never", "rare", "default", "often", "always"
	deciduousmonster="default",			-- "never", "rare", "default", "often", "always"
	spiderqueen="default",				-- "never", "rare", "default", "often", "always"
	liefs="default",				-- "never", "rare", "default", "often", "always"

---------------------------WORLD GENERATION---------------------------    
	-- GLOBAL
	season_start="default",				-- "default", "winter", "spring", "summer", "autumn|spring", "winter|summer", "autumn|winter|spring|summer"

	-- ISLAND WORLD
	primaryworldtype="volcanoonly",			-- "islandsonly", "volcanoonly", "default", "merged"
	islandquantity="default",			-- "small", "medium", "default", "huge"
	volcano="default",				-- "never", "default"
	dragoonegg="default",				-- "never", "rare", "default", "often", "always"
	tides="default",				-- "never", "default"
	floods="default",				-- "never", "rare", "default", "often", "always"
	oceanwaves="default",				-- "never", "veryrare", "rare", "default", "often", "always"
	poison="default",				-- "never", "default"
	bermudatriangle="default",			-- "never", "rare", "default", "often", "always"
	volcanoisland="never", 				-- "never", "default"
	
	-- ISLAND FOOD
	sweet_potato="default",				-- "never", "rare", "default", "often", "always"
	limpets="default",				-- "never", "rare", "default", "often", "always"
	mussel_farm="default",				-- "never", "rare", "default", "often", "always"

	--WORLD
	task_set="volcano",				-- "default", "cave_default", "quagmire_taskset", "classic", "lavaarena_taskset"
	start_location="VolcanoPortal",			-- DO NOT CHANGE OR YOU DIE -- "lavaarena", "plus", "darkness", "quagmire_startlocation", "caves", "default"
	world_size="small",				-- "small", "medium", "default", "huge"
	branching="default",				-- "never", "least", "default", "most", "random"
	loop="default",					-- DO NOT CHANGE OR YOU DIE -- "never", "default", "always"
	roads="never",					-- DO NOT CHANGE OR YOU DIE -- "never", "default"
	touchstone="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always"
	boons="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always"
	prefabswaps_start="classic",			-- DO NOT CHANGE OR YOU DIE -- "classic", "default", "highly random"
	moon_fissure="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always"
	terrariumchest="default",			-- "never", "default"

	-- RESOURCES
	moon_starfish="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	moon_bullkelp="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	berrybush="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	rock="default",					-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	ocean_bullkelp="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	cactus="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	carrot="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	flint="default",					-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	flowers="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	grass="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	moon_hotspring="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	moon_rock="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always"	, "insane"
	moon_sapling="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	moon_tree="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	meteorspawner="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	rock_ice="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	mushroom="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	palmconetree="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	ponds="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	reeds="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	sapling="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	ocean_seastack="ocean_default",			-- "ocean_never", "ocean_rare", "ocean_uncommon", "ocean_default", "ocean_often", "ocean_mostly", "ocean_always", "ocean_insane"
	marshbush="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	moon_berrybush="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	trees="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	tumbleweed="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"

	-- CREATURES/SPAWNERS
	bees_setting="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	beefalo="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	buzzard="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	moon_carrot="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	catcoon="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	moles_setting="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	pigs_setting="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	rabbits_setting="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	moon_fruitdragon="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	ocean_shoal="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	lightninggoat="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	ocean_wobsterden="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"

	-- HOSTILE CREATURES/SPAWNERS
	chess="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	hound_mounds="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	angrybees="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	merms="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	walrus_setting="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	ocean_waterplant="ocean_default",		-- "ocean_never", "ocean_rare", "ocean_uncommon", "ocean_default", "ocean_often", "ocean_mostly", "ocean_always", "ocean_insane"
	moon_spider="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	spiders_setting="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	tallbirds="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	tentacles="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"

	-- MISC SETTINGS	(DO NOT CHANGE ANY OF THESE EXCEPT FOR WORLD SEED, IF DESIRED)
	worldseed="",					--"World Seed Number, use Gemcore API" 
	has_ocean=false,				-- DO NOT CHANGE OR YOU DIE -- true, false
	keep_disconnected_tiles=true,			-- true, false
	layout_mode="LinkNodesByKeys",			-- "LinkNodesByKeys", "RestrictNodesByKey"
	no_joining_islands=true,			-- true, false
	no_wormholes_to_disconnected_tiles=true,	-- true, false
	poi="never",					--? Unknown 
	primarywatertype="highsea",			--? Unknown
	wormhole_prefab="wormhole",			--"wormhole", "tentacle_pillar"
	},
	
	required_prefabs={ "multiplayer_portal" },
	settings_desc="The top of the tropical volcano",
	settings_id="SURVIVAL_VOLCANO_CLASSIC",
	settings_name="Volcano",
	substitutes={  },
	version=2,
	worldgen_desc="The top of the tropical volcano",
	worldgen_id="SURVIVAL_VOLCANO_CLASSIC",
	worldgen_name="Volcano" 
}