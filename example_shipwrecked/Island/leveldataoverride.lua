--Change whatever settings you want to on your world here, follow the commented out lines to see what possible settings you can have per shard! Some things you should know: 
--Make sure that the spellings match exactly what the commented out lines say, do not forget quotation marks! 
--Make sure each entry has a comma after it, follow the syntax below! If any commas or quotation marks are missing, your leveldataoverride.lua will not work/load! 
--The entries under WORLD SETTINGS can be changed after the world has been generated already, but the entries under WORLD GENERATION cannot be! Check twice before you generate your world!
--The commented out world seed entry is specifically for use with the API Gem Core mod (which lets you generate worlds with world seeds!) Just add your world seed number desired to it, no quotation marks required! 
--If you made it all the way to the end, thank you for reading! Have a cookie 🍪
return {
	background_node_range={ 0, 2 },
	desc="A tropical paradise?",
	hideminimap=false,
	id="SURVIVAL_SHIPWRECKED_CLASSIC",
	location="forest",
	max_playlist_position=999,
	min_playlist_position=0,
	name="Shipwrecked",
	numrandom_set_pieces=0,
	override_level_string=false,
	overrides={
---------------------------WORLD SETTINGS---------------------------
	-- GLOBAL
	specialevent= "default",			-- "none", "default"
	autumn="default",					-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"
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
	
	-- ISLAND GLOBAL
	clocktype="tropical",				-- "default", "tropical"
	mild="default", 				-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"
	hurricane="default", 				-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"
	monsoon="default",				-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"
	dry="default", 					-- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random"

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
	shadowcreatures="default",			-- "none", "few", "default", "many", "always"
	brightmarecreatures="default",			-- "none", "few", "default", "many", "always"

	-- WORLD
	hounds="default",				-- "never", "rare", "default", "often", "always"
	winterhounds="default",				-- "never", "default"
	summerhounds="default",				-- "never", "default"
	petrification="default", 			-- "none", "few", "default", "many", "always"
	frograin="never",				-- DO NOT CHANGE OR YOU DIE -- "none", "few", "default", "many", "always"
	alternatehunt="default",			-- "never", "rare", "default", "often", "always"
	hunt="never",					-- DO NOT CHANGE OR YOU DIE -- "none", "few", "default", "many", "always"
	lightning="default",				-- "never", "rare", "default", "often", "always"
	meteorshowers="default",			-- "never", "rare", "default", "often", "always"
	weather="default",				-- "never", "rare", "default", "often", "always"
	wildfires="never",				-- DO NOT CHANGE OR YOU DIE -- "never", "rare", "default", "often", "always"
	
	-- ISLAND WORLD 
	poison="default",				-- "never", "default" 
	dragoonegg="default",				-- "never", "rare", "default", "often", "always"
	oceanwaves="default",				-- "never", "rare", "default", "often", "always"
	whalehunt="default",				-- "never", "rare", "default", "often", "always"
	
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
	
	-- ISLAND RESOURCE REGROWTH
	jungletree_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	palmtree_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"
	sweet_potato_regrowth="default",			-- "never", "veryslow", "slow", "default", "fast", "veryfast"

	-- UNNATURAL PORTAL RESOURCES			
	bananabush_portalrate="default",		-- "never", "rare", "default", "often", "always"	
	lightcrab_portalrate="default",			-- "never", "rare", "default", "often", "always"
	monkeytail_portalrate="default",		-- "never", "rare", "default", "often", "always"
	palmcone_seed_portalrate="default",		-- "never", "rare", "default", "often", "always"
	portal_spawnrate="default",			-- "never", "rare", "default", "often", "always"
	powder_monkey_portalrate="default",		-- "never", "rare", "default", "often", "always"

	-- ANIMALS
	bees="default",					-- "never", "rare", "default", "often", "always"
	birds="default",				-- "never", "rare", "default", "often", "always"
	bunnymen_setting="default",			-- "never", "rare", "default", "often", "always"
	butterfly="default",				-- "never", "rare", "default", "often", "always"
	catcoons="default",				-- "never", "rare", "default", "often", "always"
	gnarwail="default",				-- "never", "rare", "default", "often", "always"
	perd="never",					-- "never", "rare", "default", "often", "always"
	grassgekkos="default",				-- "never", "rare", "default", "often", "always"
	moles="default",				-- "never", "rare", "default", "often", "always"
	penguins="never",				-- "never", "rare", "default", "often", "always"
	pigs="default",					-- "never", "rare", "default", "often", "always"
	rabbits="default",				-- "never", "rare", "default", "often", "always"
	fishschools="default",				-- "never", "rare", "default", "often", "always"
	wobsters="default",				-- "never", "rare", "default", "often", "always"
	
	-- ISLAND ANIMALS
	ballphin_setting="default",				-- "never", "rare", "default", "often", "always"
	crab_setting="default",				-- "never", "rare", "default", "often", "always"
	solofish_setting="default",				-- "never", "rare", "default", "often", "always"
	dragoon_setting="default",			-- "never", "rare", "default", "often", "always"
	fishermerm_setting="default",				-- "never", "rare", "default", "often", "always"
	jellyfish_setting="default",				-- "never", "rare", "default", "often", "always"
	primeape_setting="default",				-- "never", "rare", "default", "often", "always"
	sharkitten_setting="default",				-- "never", "rare", "default", "often", "always"
	wildbores_setting="default",				-- "never", "rare", "default", "often", "always"
	lobster_setting="default",				-- "never", "rare", "default", "often", "always"

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
	
	-- ISLAND HOSTILE CREATURES
	mosquito="default",					-- "never", "rare", "default", "often", "always"
	swordfish_setting="default",				-- "never", "rare", "default", "often", "always"
	stungray_setting="default",				-- "never", "rare", "default", "often", "always"

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
	
	-- ISLAND GIANTS 
	kraken="default",				-- "never", "rare", "default", "often", "always"	
	twister="default",				-- "never", "rare", "default", "often", "always"
	tigershark="default",				-- "never", "rare", "default", "often", "always"

---------------------------WORLD GENERATION---------------------------    
	-- GLOBAL
	season_start="default",				-- "default", "winter", "spring", "summer", "autumn|spring", "winter|summer", "autumn|winter|spring|summer"

	--WORLD
	task_set="shipwrecked",				-- DO NOT CHANGE OR YOU DIE -- "default", "cave_default", "quagmire_taskset", "classic", "lavaarena_taskset"
	start_location="ShipwreckedStart",		-- DO NOT CHANGE OR YOU DIE -- "lavaarena", "plus", "darkness", "quagmire_startlocation", "caves", "default"
	world_size="default",				-- "small", "medium", "default", "huge"
	branching="default",				-- "never", "least", "default", "most", "random"
	loop="never",					-- DO NOT CHANGE OR YOU DIE -- "never", "default", "always"
	roads="never",					-- DO NOT CHANGE OR YOU DIE -- "never", "default"
	touchstone="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always"
	boons="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always"
	prefabswaps_start="classic",			-- DO NOT CHANGE OR YOU DIE -- "classic", "default", "highly random"
	moon_fissure="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always"
	stageplays="default",				-- "never","default"
	terrariumchest="default",			-- "never", "default"
	
	-- ISLAND WORLD
	bermudatriangle="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	floods="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"	
	volcano="default",				-- "never", "default"
	volcanoisland="none",				-- "always","none"
	primaryworldtype="islandsonly",			-- "islandsonly", "volcanoonly", "default"
	--tides="default",				-- "never", "default"	
	islandquantity="default",			-- "small", "medium", "default", "huge"

	-- RESOURCES
	moon_starfish="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	moon_bullkelp="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	berrybush="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	rock="default",					-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	ocean_bullkelp="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	cactus="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	carrot="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	flint="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
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
	
	-- ISLAND RESOURCES
	bamboo="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	bioluminescence="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	coral_brain_rock="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	coral="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	crate="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	limpets="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	magma_rocks="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	mussel_farm="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	poisonhole="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	sandhill="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	seashell="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	seaweed="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	sweet_potato="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	tar_pool="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	tidalpool="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	bush_vine="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	
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
	
	-- ISLAND CREATURES AND SPAWNERS
	ballphin="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	crabhole="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	solofish="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	doydoy="default",				-- "never", "default"
	fishermerm="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	jellyfish="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	primeape="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	seagull="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	fishinhole="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	ox="default",					-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	wildbores="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	lobster="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	
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
	
	-- ISLAND HOSTILE CREATURES AND SPAWNERS
	flup="default",					-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	stungray="default",				-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"
	swordfish="default",			-- "never", "rare", "uncommon", "default", "often", "mostly", "always", "insane"


	-- MISC SETTINGS	(DO NOT CHANGE ANY OF THESE EXCEPT FOR WORLD SEED, IF DESIRED)
	worldseed="",					--"World Seed Number, use Gemcore API" 
	has_ocean=true,					-- true, false
	keep_disconnected_tiles=true,			-- true, false
	layout_mode="LinkNodesByKeys",			-- "LinkNodesByKeys", "RestrictNodesByKey"
	no_joining_islands=true,			-- true, false
	no_wormholes_to_disconnected_tiles=true,	-- true, false
	poi="never",					--? Unknown 
	primarywatertype="highsea",			--? Unknown
	wormhole_prefab="wormhole",			--"wormhole", "tentacle_pillar"
	},
	playstyle="survival",		--"survival","endless","wilderness","relaxed","lightsout"
	random_set_pieces={  },
	required_prefabs={ "multiplayer_portal" },
	settings_desc="A tropical paradise?",
	settings_id="SURVIVAL_SHIPWRECKED_CLASSIC",
	settings_name="Shipwrecked",
	substitutes={  },
	version=2,
	worldgen_desc="A tropical paradise?",
	worldgen_id="SURVIVAL_SHIPWRECKED_CLASSIC",
	worldgen_name="Shipwrecked" 
}