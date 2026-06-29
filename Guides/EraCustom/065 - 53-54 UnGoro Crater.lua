RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 50-60
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 53-54 UnGoro Crater
#next 54-55 Felwood/Winterspring
step
#som
#phase 3-6
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 4504 >> Accept Super Sticky
.target Tran'rek
step
.goto Tanaris,51.059,26.873
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2641 >> Turn in Sprinkle's Secret Ingredient
.accept 2661 >> Accept Delivery for Marin
.target Sprinkle
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4493 >> Turn in March of the Silithid
.accept 4496 >> Accept Bungle in the Jungle
.target Alchemist Pestlezugg
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2661 >> Turn in Delivery for Marin
.accept 2662 >> Accept Noggenfogger Elixir
.turnin 2662 >> Turn in Noggenfogger Elixir
.target Marin Noggenfogger
step
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3444 >> Turn in The Stone Circle
.target Marvon Rivetseeker
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Un'Goro>> Fly to Un'Goro
.target Bera Stonehammer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r and |cRXP_FRIENDLY_Hol'anyee Marshal|r
.accept 3881 >> Accept Expedition Salvation
.target +Williden Marshal
.goto Un'Goro Crater,43.947,7.137
.accept 3883 >> Accept Alien Ecology
.goto Un'Goro Crater,43.889,7.240
.target +Hol'anyee Marshal
step
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 4284 >> Accept Crystals of Power
.turnin 4284 >> Turn in Crystals of Power
.itemcount 11186,7 
.itemcount 11185,7 
.itemcount 11184,7 
.itemcount 11188,7 
.target J.D. Collie
step
.isQuestTurnedIn 4284
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 4285 >> Accept The Northern Pylon
.accept 4287 >> Accept The Eastern Pylon
.accept 4288 >> Accept The Western Pylon
.target J.D. Collie
step
.goto Un'Goro Crater,43.5,7.5
.target Spark Nilminer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
.accept 3882 >> Accept Roll the Bones
step
.goto Un'Goro Crater,43.533,8.436
>>Click the |cRXP_PICK_Wanted Poster|r
.accept 4501 >> Accept Beware of Pterrordax
step
.goto Un'Goro Crater,43.615,8.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
.accept 4492 >> Accept Lost!
.target Spraggle Frock
step
#qremove 5159
step
.goto Un'Goro Crater,44.232,11.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
>>If your quest log is full, abandon Moontouched Wildkin if you have not finished the quest. If you have finished it, abandon Cleansed Water Returns to Felwood and you will pick it up again shortly
.accept 4503 >> Accept Shizzle's Flyer
.target Shizzle
step
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>Loot |cRXP_LOOT_Power Crystals|r on the ground
>>|cRXP_WARN_Complete this now if you havn't done so already. They are scattered on the ground throughout Un'Goro|r
.collect 11186,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
.collect 11188,7,4284,1 
step
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 4284 >> Accept Crystals of Power
.turnin 4284 >> Turn in Crystals of Power
.itemcount 11186,7 
.itemcount 11185,7 
.itemcount 11184,7 
.itemcount 11188,7 
.target J.D. Collie
step
.isQuestTurnedIn 4284
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 4285 >> Accept The Northern Pylon
.accept 4287 >> Accept The Eastern Pylon
.accept 4288 >> Accept The Western Pylon
.target J.D. Collie
step
#completewith NorthPylon
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Young Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
#completewith NorthPylon
>>Kill |cRXP_ENEMY_Pterrordaxes|r and |cRXP_ENEMY_Fledgling Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
.complete 4503,2 
.mob Fledgling Pterrordax
.mob Pterrordax
step
#label NorthPylon
.goto Un'Goro Crater,56.503,12.492
>>Click the |cRXP_PICK_Northern Crystal Pylon|r
.complete 4285,1 
.skipgossip
step
.goto Un'Goro Crater,63.66,16.56,70,0
.goto Un'Goro Crater,65.47,16.48
>>Kill |cRXP_ENEMY_Un'Goro Gorillas|r, |cRXP_ENEMY_Un'Goro Stompers|r and |cRXP_ENEMY_Un'Goro Thunderer|r. Loot them for their |cRXP_LOOT_Pelts|r
.complete 4289,1 
.mob +Un'Goro Gorilla
.complete 4289,2 
.mob +Un'Goro Stomper
.complete 4289,3 
.mob +Un'Goro Thunderer
step << skip
#requires chasingame
.goto Un'Goro Crater,67.8,26.3
>>Kill lashers in northeastern Un'Goro
.complete 4141,1 
step
#completewith FinishBait
>>Kill |cRXP_ENEMY_Pterrordaxes|r and |cRXP_ENEMY_Fledgling Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
.complete 4503,2 
.mob Fledgling Pterrordax
.mob Pterrordax
step
#completewith FinishBait
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Young Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
#optional
.isOnQuest 4513
#completewith FinishBait
>>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,68.541,36.539
>>Loot the |cRXP_LOOT_Crate of Foodstuffs|r on the ground
.complete 3881,1 
step
.goto Un'Goro Crater,77.225,49.980
>>Click the |cRXP_PICK_Eastern Crystal Pylon|r
.complete 4287,1 
.skipgossip
step
.use 11568 >> |cRXP_WARN_Open|r |T133635:0|t[Torwa's Pouch] |cRXP_WARN_for the|r |T133970:0|t[Preserved Threshadon Meat] |cRXP_WARN_and|r |T134743:0|t[Preserved Pheromone Mixture]
.collect 11569,1,4292,1 
.collect 11570,1,4292,1 
step
.goto Un'Goro Crater,79.929,49.896
>>|cRXP_WARN_Use the|r |T133970:0|t[Preserved Threshadon Meat] |cRXP_WARN_on the stone-slab, then use the|r |T134743:0|t[Preserved Pheromone Mixture] |cRXP_WARN_on it to summon|r |cRXP_ENEMY_Lar'korwi|r
>>Kill |cRXP_ENEMY_Lar'korwi|r. Loot him for his |cRXP_LOOT_Head|r
.use 11568 
.use 11569 
.use 11570 
.complete 4292,1 
.mob Lar'korwi
step
#label FinishBait
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4289 >> Turn in The Apes of Un'Goro
.accept 4301 >> Accept The Mighty U'cha
.turnin 4292 >> Turn in The Bait for Lar'korwi
.target Torwa Pathfinder
step
#completewith GlandWallSample
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Young Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
.goto Un'Goro Crater,56.3,90.6,40,0
.goto Un'Goro Crater,44.3,90.4,40,0
.goto Un'Goro Crater,56.3,90.6,40,0
.goto Un'Goro Crater,44.1,66.2,70,0
.goto Un'Goro Crater,53.5,62.9,70,0
.goto Un'Goro Crater,52.3,69.8,70,0
.goto Un'Goro Crater,44.3,90.4
>>Kill |cRXP_ENEMY_Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
>>|cRXP_WARN_You don't need to collect all |cRXP_LOOT_Webbed Pterrordax Scales|r right now|r
.complete 4501,1 
.complete 4503,2 
.disablecheckbox
.mob Pterrordax
step
#label GlandWallSample
.goto Un'Goro Crater,49.93,81.70,70 >> Enter The Slithering Scar Hive
.isOnQuest 4496,3883
step << Druid
.dungeon ST
#phase 4-6
.isOnQuest 9052
#completewith ScentGland
>>Kill |cRXP_ENEMY_Gorishi Stingers|r and |cRXP_ENEMY_Gorishi Wasps|r. Loot them for their |cRXP_LOOT_Gorishi Stings|r
.complete 9052,1 
.mob Gorishi Wasp
.mob Gorishi Stinger
step
#completewith next
>>Kill the |cRXP_ENEMY_Gorishi|r. Loot them for their |cRXP_LOOT_Gorishi Scent Gland|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
step
.goto Un'Goro Crater,48.671,85.322
>>|cRXP_WARN_Enter The Slithering Scar Hive|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Unused Scraping Vial] |cRXP_WARN_in the centre of the circular room|r
.complete 3883,1 
step
#label ScentGland
.goto Un'Goro Crater,44.8,75.6,70,0
.goto Un'Goro Crater,45.0,83.6,70,0
.goto Un'Goro Crater,55.0,83.6,70,0
.goto Un'Goro Crater,54.4,76.4,70,0
.goto Un'Goro Crater,48.8,85.3
>>Kill the |cRXP_ENEMY_Gorishi|r. Loot them for their |cRXP_LOOT_Gorishi Scent Gland|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
step << Druid
.dungeon ST
#phase 4-6
.isOnQuest 9052
.goto Un'Goro Crater,44.8,75.6,70,0
.goto Un'Goro Crater,45.0,83.6,70,0
.goto Un'Goro Crater,55.0,83.6,70,0
.goto Un'Goro Crater,54.4,76.4,70,0
.goto Un'Goro Crater,48.8,85.3
>>Kill |cRXP_ENEMY_Gorishi Stingers|r and |cRXP_ENEMY_Gorishi Wasps|r. Loot them for their |cRXP_LOOT_Gorishi Stings|r
.complete 9052,1 
.mob Gorishi Wasp
.mob Gorishi Stinger
step
#completewith WesternPylon
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#completewith WesternPylon
>>Kill |cRXP_ENEMY_Frenzied Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#optional
.isOnQuest 4513
#completewith WesternPylon
>>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,38.457,66.066
>>Loot the |cRXP_LOOT_Research Equipment|r on the ground
.complete 3881,2 
step
.goto Un'Goro Crater,30.928,50.438
.target Krakle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
.accept 974 >> Accept Finding the Source
step
#label WesternPylon
.goto Un'Goro Crater,23.827,59.201
>>Click the |cRXP_PICK_Western Crystal Pylon|r
.complete 4288,1 
.skipgossip
step
#completewith CompletePterro
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#optional
.isOnQuest 4513
#completewith CompletePterro
>>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
#label CompletePterro
.goto Un'Goro Crater,20.6,60,40,70,0
.goto Un'Goro Crater,22.4,50.0,70,0
.goto Un'Goro Crater,22.2,41,0,70,0
.goto Un'Goro Crater,34.8,29.4,70,0
.goto Un'Goro Crater,39.6,42.2,70,0
.goto Un'Goro Crater,36.8,76.6,70,0
.goto Un'Goro Crater,24.6,61.6
>>Kill |cRXP_ENEMY_Frenzied Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#completewith next
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#optional
.isOnQuest 4513
.goto Un'Goro Crater,27.0,44.8,70,0
.goto Un'Goro Crater,34.6,28.6,70,0
.goto Un'Goro Crater,42.8,54.6,70,0
.goto Un'Goro Crater,37.0,73.4,70,0
.goto Un'Goro Crater,28.4,60.8
>>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,27.0,44.8,70,0
.goto Un'Goro Crater,34.6,28.6,70,0
.goto Un'Goro Crater,42.8,54.6,70,0
.goto Un'Goro Crater,37.0,73.4,70,0
.goto Un'Goro Crater,28.4,60.8
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
>>|cRXP_LOOT_Dinosaur Bones|r |cRXP_WARN_may also be looted from the ground. The location is marked on your map to the southwest|r
.complete 3882,1 
.goto Un'Goro Crater,31.04,77.70,0
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#completewith next
.goto Un'Goro Crater,47.1,47.1,10,0
.goto Un'Goro Crater,47.7,48.3,10,0
.goto Un'Goro Crater,48.2,50.1,10,0
.goto Un'Goro Crater,48.67,49.33,15,0
.goto Un'Goro Crater,48.02,47.05,10,0
.goto Un'Goro Crater,48.81,45.94,10 >> |cRXP_WARN_Travel up the Lava Path of Fire Plume Ridge for a shortcut to the top. Follow the Arrow precisely|r
step
.goto Un'Goro Crater,49.631,45.694
.use 12472 >>|cRXP_WARN_Use|r |T132995:0|t[Krakle's Thermometer] |cRXP_WARN_atop Fire Plume Ridge at the Hot Spot|r
.complete 974,1 
step
.goto Un'Goro Crater,30.928,50.438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
.turnin 974 >> Turn in Finding the Source
.accept 980 >> Accept The New Springs
.target Krakle
step
#era/som
#label UngoroAsh
.goto Un'Goro Crater,45.4,45.2,70,0
.goto Un'Goro Crater,46,0,56.6,70,0
.goto Un'Goro Crater,56.6,55.6,70,0
.goto Un'Goro Crater,53.8,41.6,70,0
.goto Un'Goro Crater,49.8,53.4
>>Kill |cRXP_ENEMY_Scorching Elementals|r and |cRXP_ENEMY_Living Blazes|r. Loot them for their |cRXP_LOOT_Ash|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
step
.goto Un'Goro Crater,51.909,49.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ringo|r
.turnin 4492 >> Turn in Lost!
.accept 4491,1 >> Accept A Little Help From My Friends
>>|cRXP_WARN_This will start an escort quest|r
.target Ringo
step
.goto Un'Goro Crater,43.617,8.497
>>Escort |cRXP_FRIENDLY_Ringo|r to Marshal's Refuge
.use 11804 >> |cRXP_WARN_Use|r |T132805:0|t[Spraggle's Canteen] |cRXP_WARN_on him when he faints and stops following you|r
.complete 4491,1 
.target Ringo
step
.goto Un'Goro Crater,43.617,8.497
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
.turnin 4491 >> Turn in A Little Help From My Friends
.turnin 4501 >> Turn in Beware of Pterrordax
.target Spraggle Frock
step
.goto Un'Goro Crater,43.497,7.420
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
.turnin 3882 >> Turn in Roll the Bones
.target Spark Nilminer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r and |cRXP_FRIENDLY_Hol'anyee Marshal|r
.turnin 3883 >> Turn in Alien Ecology
.target +Hol'anyee Marshal
.goto Un'Goro Crater,43.889,7.240
.turnin 3881 >> Turn in Expedition Salvation
.goto Un'Goro Crater,43.947,7.137
.target +Williden Marshal
step
.goto Un'Goro Crater,43.947,7.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
>>|cRXP_WARN_Use |T133743:0|t[A Mangled Journal] to start the quest|r
.collect 11116,1,3884,1 
.accept 3884 >> Accept Williden's Journal
.turnin 3884 >> Turn in Williden's Journal
.use 11116
.itemcount 11116,1
.target Williden Marshal
step
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 4285 >> Turn in The Northern Pylon
.turnin 4287 >> Turn in The Eastern Pylon
.turnin 4288 >> Turn in The Western Pylon
.accept 4321 >> Accept Making Sense of It
.turnin 4321 >> Turn in Making Sense of It
.target J.D. Collie
step
.goto Un'Goro Crater,44.232,11.586
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
.turnin 4503 >> Turn in Shizzle's Flyer
.target Shizzle
step
#completewith BungleJungle
.destroy 11482 >> Destroy the |T133740:0|t[Crystal Pylon User's Manual]
step
.goto Un'Goro Crater,46.378,13.444
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna Remtravel|r
.accept 4243 >> Accept Chasing A-Me 01
.target Karna Remtravel
step
#som
#phase 3-6
.goto Un'Goro Crater,46.2,19.6,70,0
.goto Un'Goro Crater,50.6,26.6,70,0
.goto Un'Goro Crater,48.4,32.8,70,0
.goto Un'Goro Crater,59.6,32.4,70,0
.goto Un'Goro Crater,63.4,23.6,70,0
.goto Un'Goro Crater,59.4,24.6,70,0
.goto Un'Goro Crater,51.6,24.8
>>Kill |cRXP_ENEMY_Tar Beasts|r, |cRXP_ENEMY_Tar Creepers|r, |cRXP_ENEMY_Tar Lurkers|r and |cRXP_ENEMY_Tar Lords|r. Loot them for their |cRXP_LOOT_Super Sticky Tar|r
.complete 4504,1 
.mob Tar Beast
.mob Tar Creeper
.mob Tar Lurker
.mob Tar Lord
step
#completewith AMe
.goto Un'Goro Crater,63.66,16.56
.subzone 542 >> Travel to Fungal Rock
step
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
.turnin 4243 >> Turn in Chasing A-Me 01
.itemcount 10561,<1 
.target A-Me 01
step
#label AMe
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
>>|cRXP_WARN_Don't accept the follow up yet|r
.turnin 4243 >> Turn in Chasing A-Me 01
.itemcount 10561,1 
.target A-Me 01
step
.goto Un'Goro Crater,68.49,12.18
>>Kill |cRXP_ENEMY_U'cha|r. Loot him for his |cRXP_LOOT_Pelt|r
.complete 4301,1 
.mob U'cha
step
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
.accept 4244 >> Accept Chasing A-Me 01
.turnin 4244 >> Turn in Chasing A-Me 01
.accept 4245 >> Accept Chasing A-Me 01
.itemcount 10561,1 
.target A-Me 01
step
.isQuestTurnedIn 4244
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
.accept 4245 >> Accept Chasing A-Me 01
.target A-Me 01
step
.isOnQuest 4245
.goto Un'Goro Crater,46.378,13.444
>>Escort |cRXP_FRIENDLY_A-Me 01|r to |cRXP_FRIENDLY_Karna Remtravel|r at Marshal's Refuge
.complete 4245,1 
.target A-Me 01
step
.isQuestComplete 4245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna Remtravel|r
.turnin 4245 >>Turn in Chasing A-Me 01
.target Karna Remtravel
step << Druid
.dungeon ST
#phase 4-6
#completewith SoilsFinished
.isOnQuest 9052
>>Open the |cRXP_PICK_Bloodpetal Sprouts|r on the ground. Loot them for |cRXP_LOOT_Bloodcaps|r
.complete 9052,2 
step
.isQuestTurnedIn 3764 
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>Loot |cRXP_LOOT_Un'Goro Soil|r on the ground
.collect 11018,5,4496,1 
step
#label SoilsFinished
.isQuestAvailable 3764 
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>Loot |cRXP_LOOT_Un'Goro Soil|r on the ground
.collect 11018,25,4496,1
step << Druid
.dungeon ST
#phase 4-6
.isOnQuest 9052
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>Open the |cRXP_PICK_Bloodpetal Sprouts|r on the ground. Loot them for |cRXP_LOOT_Bloodcaps|r
.complete 9052,2 
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4301 >> Turn in The Mighty U'cha
.target Torwa Pathfinder
step << Druid
.dungeon ST
#phase 4-6
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 9052 >> Turn in Bloodpetal Poison
.accept 9051 >> Accept Toxic Test
.target Torwa Pathfinder
step << Druid
.dungeon ST
#phase 4-6
>>Look for a |cRXP_ENEMY_Devilsaur|r or |cRXP_ENEMY_Ironhide Devilsaur|r. Avoid |cRXP_ENEMY_Tyrant Devilsaurs|r
>>|cRXP_WARN_You should be able to see their patrols on your map|r
>>|cRXP_WARN_The way you do this is spamming|r |T136090:0|t[Hibernate]|cRXP_WARN_. You should only spam|r |T136090:0|t[Hibernate] |cRXP_WARN_and nothing else. If it breaks early start spamming|r |T136090:0|t[Hibernate] |cRXP_WARN_again, they run with 170% movement speed so you can't outrun a|r |cRXP_ENEMY_Devilsaur|r
>>|cRXP_WARN_Use the|r |T135125:0|t[Devilsaur Barb] |cRXP_WARN_on it once it has been|r |T136090:0|t[Hibernated]
>>|cRXP_WARN_Shift into|r |T132144:0|t[Travel Form] |cRXP_WARN_and run away to reset it after|r
.complete 9051,1 
.use 22432 
.unitscan Devilsaur
.unitscan Ironhide Devilsaur
step << Druid
.dungeon ST
#phase 4-6
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 9051 >> Turn in Toxic Test
.accept 9053 >> Accept A Better Ingredient
.target Torwa Pathfinder
step
#completewith BungleJungle
.subzone 976 >> Run back to Gadgetzan in Tanaris
step
#softcore
#completewith next
.deathskip >> Die and respawn at the Gadgetzan Spirit Healer once you are in Tanaris
.target Spirit Healer
step
#label BungleJungle
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4496 >> Turn in Bungle in the Jungle
.target Alchemist Pestlezugg
step
#som
#phase 3-6
#label GadgetzanTurnins
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 4504 >> Turn in Super Sticky
.target Tran'rek
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 11682,12906,11511,12383 >> Withdraw the following items from your bank:
>>|T134870:0|t[Eridan's Vial] 
>>|T134249:0|t[Cenarion Beacon] 
>>|T134754:0|t[Purified Moonwell Water] 
>>|T132926:0|t[Moontouched Feathers] (If you have them) 
.target Gimblethorn
step
#era/som
.hs >> Hearth to Ratchet
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#era/som
.goto The Barrens,62.448,38.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv Rizzlefix|r
.turnin 4502 >> Turn in Volcanic Activity
.target Liv Rizzlefix
step 
.isQuestTurnedIn 5158
.goto The Barrens,65.827,43.776
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen Waterseer|r
.accept 5159 >> Accept Cleansed Water Returns to Felwood
.target Islen Waterseer
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << Druid
#completewith next
#season 0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
.goto Moonglade,44.147,45.225
.fly Teldrassil>> Fly to Teldrassil
.target Silva Fil'naveth
step
#som
#phase 3-6
.hs >> Hearth to Darnassus << !Mage
+Teleport to Darnassus << Mage
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip Darnassus
step << Mage
#era/som
#completewith Morrowgrain
.zone Darnassus >> Teleport to Darnassus
step << !Mage !Druid
#era/som
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Teldrassil>> Fly to Teldrassil
.target Bragok
step
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus. Don't turn in the Rut'theran Village quests yet
step
#completewith AADS
.line Darnassus,36.6,42.4,37.6,16.2,52.6,19.2,56.6,8.8,65.4,15.8,60.8,23.4,62.4,55.6,68.0,59.2,63.8,72.2,60.2,67.8,49.2,80.8,39.6,74.6,38.6,47.0,61.6,40.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herald Moonstalker|r
>>|cRXP_FRIENDLY_Herald Moonstalker|r |cRXP_WARN_patrols throughout Darnassus|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find her faster|r << Hunter
.accept 1047 >> Accept The New Frontier
.unitscan Herald Moonstalker
step
#completewith end
.goto Darnassus,64.021,23.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raedon Duskstriker|r
>>Do the Darnassus cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7792 >> Turn in A Donation of Wool
.turnin 7798 >> Turn in A Donation of Silk
.turnin 7799 >> Turn in A Donation of Mageweave
.turnin 7800 >> Turn in A Donation of Runecloth
.target Raedon Duskstriker
step
.goto Darnassus,39.31,84.67
.use 11682 >>|cRXP_WARN_Use|r |T134870:0|t[Eridan's Vial] |cRXP_WARN_at the moonwell inside the Temple of the Moon|r
.complete 4441,1 
step << Priest
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.goto Darnassus,58.718,34.905
.trainer >> Train your class spells
.target Arias'ta Bladesinger
step
#label AADS
.goto Darnassus,67.427,15.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Saelienne|r
.accept 3763 >> Accept Assisting Arch Druid Staghelm
.target Innkeeper Saelienne
step
.line Darnassus,36.6,42.4,37.6,16.2,52.6,19.2,56.6,8.8,65.4,15.8,60.8,23.4,62.4,55.6,68.0,59.2,63.8,72.2,60.2,67.8,49.2,80.8,39.6,74.6,38.6,47.0,61.6,40.6
.goto Darnassus,36.6,42.4,60,0
.goto Darnassus,37.6,16.2,60,0
.goto Darnassus,52.6,19.2,60,0
.goto Darnassus,56.6,8.8,50,0
.goto Darnassus,65.4,15.8,50,0
.goto Darnassus,60.8,23.4,50,0
.goto Darnassus,62.4,55.6,50,0
.goto Darnassus,68.0,59.2,50,0
.goto Darnassus,63.8,72.2,50,0
.goto Darnassus,60.2,67.8,50,0
.goto Darnassus,49.2,80.8,50,0
.goto Darnassus,39.6,74.6,50,0
.goto Darnassus,38.6,47.0,50,0
.goto Darnassus,61.6,40.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herald Moonstalker|r
>>|cRXP_FRIENDLY_Herald Moonstalker|r |cRXP_WARN_patrols throughout Darnassus|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find her faster|r << Hunter
.accept 1047 >> Accept The New Frontier
.unitscan Herald Moonstalker
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 3763 >> Turn in Assisting Arch Druid Staghelm
.accept 3764 >> Accept Un'Goro Soil
.turnin 1047 >> Turn in The New Frontier
.accept 6761 >> Accept The New Frontier
.target Arch Druid Fandral Staghelm
step
.goto Darnassus,31.485,8.237
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenal|r
.turnin 3764 >> Turn in Un'Goro Soil
.target Jenal
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.accept 3781 >> Accept Morrowgrain Research
.target Arch Druid Fandral Staghelm
step
#label Morrowgrain
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r on the middle floor
.turnin 3781 >> Turn in Morrowgrain Research
.turnin 6761 >> Turn in The New Frontier
.accept 6762 >> Accept Rabine Saturna
.target Mathrengyl Bearwalker
step << Druid
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.trainer >> Train your class spells
.target Mathrengyl Bearwalker
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.trainer >> Train your class spells
.target Syurna
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
step
#label end
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.target Erelas Ambersky
step
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 978 >> Accept Moontouched Wildkin
.target Erelas Ambersky
step
.isQuestTurnedIn 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 979 >> Accept Find Ranshalla
.target Erelas Ambersky
step
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r up stairs
.accept 5250 >> Accept Starfall
.target Daryn Lightwind
step
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Felwood >> Fly to Felwood
.target Vesprystus
]]);
