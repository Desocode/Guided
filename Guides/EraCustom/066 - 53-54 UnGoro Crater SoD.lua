RXPGuides.RegisterGuide([[
#version 23
#season 2
#group RestedXP Alliance 50-60
#classic
#tbc
#mop
<< Alliance
#name 53-54 UnGoro Crater SoD
#displayname 53-54 UnGoro Crater
#next 54-55 Felwood/Winterspring SoD;57-58 Burning Steppes SoD
step
.goto Wetlands,5.075,63.408
.zone Dustwallow Marsh >> Take the boat to Theramore
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
.zoneskip Tanaris
.zoneskip Thousand Needles
.zoneskip The Barrens
step
.goto Dustwallow Marsh,67.6,51.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Tanaris>> Fly to Tanaris
.target Baldruc
step
.goto Tanaris,52.4,28.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Qizzik|r
.bankwithdraw 11568,11569,11570,11830,11018,11114,11831,11116,11184,11185,11186,11188 >> Withdraw the follwing items from your bank:
>>|T133635:0|t[Torwa's Pouch] 
>>|T133743:0|t[A Mangled Journal]
>>All the |T134133:0|t[Power Crystals] if you have any 
.target Qizzik
step
#completewith FlyUngoro
>>Use the |T133743:0|t[Mangled Journal] in your bags to accept the quest
.accept 3884 >> Accept Williden's Journal
.itemcount 11116,1
.use 11116
step
.goto Tanaris,51.059,26.873
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2641 >> Turn in Sprinkle's Secret Ingredient
.accept 2661 >> Accept Delivery for Marin
.target Sprinkle
.isQuestComplete 2641
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4493 >> Turn in March of the Silithid
.accept 4496 >> Accept Bungle in the Jungle
.target Alchemist Pestlezugg
.isQuestComplete 2641
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2661 >> Turn in Delivery for Marin
.accept 2662 >> Accept Noggenfogger Elixir
.turnin 2662 >> Turn in Noggenfogger Elixir
.target Marin Noggenfogger
.isOnQuest 2661
step
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3444 >> Turn in The Stone Circle
.target Marvon Rivetseeker
.isQuestComplete 3444
step
#label FlyUngoro
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Un'Goro>> Fly to Un'Goro
.target Bera Stonehammer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r and |cRXP_FRIENDLY_Hol'anyee Marshal|r
.turnin 3884 >> Turn in Williden's Journal
.accept 3881 >> Accept Expedition Salvation
.goto Un'Goro Crater,43.947,7.137
.accept 3883 >> Accept Alien Ecology
.goto Un'Goro Crater,43.889,7.240
.target Williden Marshal
.target Hol'anyee Marshal
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
.complete 4289,2 
.complete 4289,3 
.mob Un'Goro Gorilla
.mob Un'Goro Stomper
.mob Un'Goro Thunderer
.isOnQuest 4289
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
.goto Un'Goro Crater,63.02,68.60
>>Click on the |cRXP_PICK_Wrecked Raft|r
.accept 3844 >> Accept It's a Secret to Everybody
.isQuestAvailable 3844
step
.goto Un'Goro Crater,63.107,69.057
>>Click the |cRXP_PICK_Small Pack|r underwater
.turnin 3844 >> Turn in It's a Secret to Everybody
.accept 3845 >> Accept It's a Secret to Everybody
.isOnQuest 3844
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 4290 >> Accept The Fare of Lar'korwi
.target Torwa Pathfinder
.isQuestAvailable 4290
step
.goto Un'Goro Crater,68.73,56.70
>>Loot the |cRXP_LOOT_Piece of Threshadon Carcass|r
.complete 4290,1 
.isOnQuest 4290
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4290 >> Turn in The Fare of Lar'korwi
.accept 4291 >> Accept The Scent of Lar'korwi
.target Torwa Pathfinder
.isQuestComplete 4290
step
.goto Un'Goro Crater,67.324,73.041,8,0
.goto Un'Goro Crater,66.601,66.727,8,0
.goto Un'Goro Crater,60.926,72.234,8,0
.goto Un'Goro Crater,62.285,65.985,8,0
.goto Un'Goro Crater,63.240,77.350,8,0
.goto Un'Goro Crater,67.324,73.041,8,0
.goto Un'Goro Crater,66.601,66.727
.goto Un'Goro Crater,67.324,73.041,0
.goto Un'Goro Crater,60.926,72.234,0
.goto Un'Goro Crater,62.285,65.985,0
.goto Un'Goro Crater,63.240,77.350,0
>>Kill |cRXP_ENEMY_Lar'korwi Mates|r. Loot them for their |cRXP_LOOT_Ravasaur Pheromone Glands|r
>>|cRXP_WARN_Walking over |cRXP_PICK_Raptor Nests|r on the ground will trigger a |cRXP_ENEMY_Lar'korwi Mate|r to spawn|r
.complete 4291,1 
.mob Lar'korwi Mate
.isOnQuest 4291
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4291 >> Turn in The Scent of Lar'korwi
.accept 4292 >> Accept The Bait for Lar'korwi
.target Torwa Pathfinder
.isQuestComplete 4291
step
.use 11568 >> |cRXP_WARN_Open|r |T133635:0|t[Torwa's Pouch] |cRXP_WARN_for the|r |T133970:0|t[Preserved Threshadon Meat] |cRXP_WARN_and|r |T134743:0|t[Preserved Pheromone Mixture]
.collect 11569,1,4292,1 
.collect 11570,1,4292,1 
.isOnQuest 4292
step
.goto Un'Goro Crater,79.929,49.896
>>|cRXP_WARN_Use the|r |T133970:0|t[Preserved Threshadon Meat] |cRXP_WARN_on the stone-slab, then use the|r |T134743:0|t[Preserved Pheromone Mixture] |cRXP_WARN_on it to summon|r |cRXP_ENEMY_Lar'korwi|r
>>Kill |cRXP_ENEMY_Lar'korwi|r. Loot him for his |cRXP_LOOT_Head|r
.use 11568 
.use 11569 
.use 11570 
.complete 4292,1 
.mob Lar'korwi
.isOnQuest 4292
step << Druid
#season 2
#label HuntressIdol
.train 439765,1
>>Kill |cRXP_ENEMY_Ravasaurs|r, |cRXP_ENEMY_Ravasaur Hunters|r and |cRXP_ENEMY_Venomhide Ravasaurs|r. Loot them for the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r]
.collect 227444,1
.mob Venomhide Ravasaur
.mob Ravasaur Hunter
.mob Ravasaur
step << Druid
#season 2
#completewith RaptorEnd
#requires HuntressIdol
#label HuntressIdolEquip
.train 439765,1
.equip 18,227444 >> Equip the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r]
.use 227444
step << Druid
#sticky
#season 2
#completewith RaptorEnd
#requires HuntressIdolEquip
#label HuntressIdolStack
.goto Un'Goro Crater,68.0,51.4
#title Gain 5x |T237556:0|t[Building Inspiration]
.itemcount 227444,1
.train 439765,1
.aura 408828 >> |cRXP_WARN_Attack a |cRXP_ENEMY_Ravasaurs|r until they are down to roughly 5-10% HP and ensure you have 5 combo points on them|r
>>|cRXP_WARN_Once they are 5-10% HP, cast|r |T136090:0|t[Hibernate] |cRXP_WARN_then switch into|r |T132115:0|t[Cat Form] |cRXP_WARN_and cast|r |T132127:0|t[Ferocious Bite] |cRXP_WARN_to kill them to gain a stack of|r |T237556:0|t[Building Inspiration]
>>|cRXP_WARN_Repeat this process 5 times|r
.mob Venomhide Ravasaur
.mob Ravasaur Hunter
.mob Ravasaur
step << Druid
#sticky
#season 2
#completewith RaptorEnd
#requires HuntressIdolStack
.itemcount 227444,1
.use 227444
.train 439765 >> |cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r] |cRXP_WARN_to train|r |T134296:0|t[Improved Swipe]
step
#label FinishBait
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4292 >> Turn in The Bait for Lar'korwi
.target Torwa Pathfinder
.isQuestComplete 4289
step
#label FinishBait
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4289 >> Turn in The Apes of Un'Goro
.accept 4301 >> Accept The Mighty U'cha
.isQuestComplete 4289
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
step
#completewith next
>>Kill the |cRXP_ENEMY_Gorishi|r. Loot them for their |cRXP_LOOT_Gorishi Scent Gland|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.isOnQuest 4496
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
.isOnQuest 4496
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
#xprate <2.5
.goto Un'Goro Crater,30.928,50.438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
.turnin 974 >> Turn in Finding the Source
.accept 980 >> Accept The New Springs
.target Krakle
step
#xprate >2.49
.goto Un'Goro Crater,30.928,50.438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
.turnin 974 >> Turn in Finding the Source
.target Krakle
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
.goto Un'Goro Crater,43.889,7.240
.turnin 3881 >> Turn in Expedition Salvation
.goto Un'Goro Crater,43.947,7.137
.target Hol'anyee Marshal
.target Williden Marshal
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
.isOnQuest 4301
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
step
#xprate <2.5
.isQuestTurnedIn 3764 
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>Loot |cRXP_LOOT_Un'Goro Soil|r on the ground
.collect 11018,5,4496,1 
step
#xprate <2.5
#label SoilsFinished
.isQuestAvailable 3764 
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>Loot |cRXP_LOOT_Un'Goro Soil|r on the ground
.collect 11018,25,4496,1
step
#label RaptorEnd
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4301 >> Turn in The Mighty U'cha
.target Torwa Pathfinder
.isQuestComplete 4301
step
#completewith BungleJungle
.subzone 976 >> Run back to Gadgetzan in Tanaris
.isQuestTurnedIn 4301
step
#softcore
#completewith next
.deathskip >> Die and respawn at the Gadgetzan Spirit Healer once you are in Tanaris
.target Spirit Healer
.isQuestTurnedIn 4301
step
#label BungleJungle
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4496 >> Turn in Bungle in the Jungle
.target Alchemist Pestlezugg
.isOnQuest 4496
step << Druid
#xprate >2.49
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
#xprate >2.49
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << !Mage
#xprate >2.49
.hs >> Hearth to Ironforge
>>|cRXP_BUY_Buy food/water if needed|r
.zoneskip Ironforge
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step
#xprate <2.5
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 11682,12906,11511,12383 >> Withdraw the following items from your bank:
>>|T134870:0|t[Eridan's Vial] 
>>|T134249:0|t[Cenarion Beacon] 
>>|T134754:0|t[Purified Moonwell Water] 
>>|T132926:0|t[Moontouched Feathers] (If you have them) 
.target Gimblethorn
step
#xprate <2.5
.hs >> Hearth to Darnassus << !Mage
+Teleport to Darnassus << Mage
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip Darnassus
step
#xprate <2.5
#completewith AADS
.line Darnassus,36.6,42.4,37.6,16.2,52.6,19.2,56.6,8.8,65.4,15.8,60.8,23.4,62.4,55.6,68.0,59.2,63.8,72.2,60.2,67.8,49.2,80.8,39.6,74.6,38.6,47.0,61.6,40.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herald Moonstalker|r
>>|cRXP_FRIENDLY_Herald Moonstalker|r |cRXP_WARN_patrols throughout Darnassus|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find her faster|r << Hunter
.accept 1047 >> Accept The New Frontier
.unitscan Herald Moonstalker
step
#xprate <2.5
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
#xprate <2.5
.goto Darnassus,39.31,84.67
.use 11682 >>|cRXP_WARN_Use|r |T134870:0|t[Eridan's Vial] |cRXP_WARN_at the moonwell inside the Temple of the Moon|r
.complete 4441,1 
step << Priest
#xprate <2.5
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
step << Warrior
#xprate <2.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.goto Darnassus,58.718,34.905
.trainer >> Train your class spells
.target Arias'ta Bladesinger
step
#label AADS
#xprate <2.5
.goto Darnassus,67.427,15.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Saelienne|r
.accept 3763 >> Accept Assisting Arch Druid Staghelm
.target Innkeeper Saelienne
step
#xprate <2.5
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
#xprate <2.5
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 3763 >> Turn in Assisting Arch Druid Staghelm
.accept 3764 >> Accept Un'Goro Soil
.turnin 1047 >> Turn in The New Frontier
.accept 6761 >> Accept The New Frontier
.target Arch Druid Fandral Staghelm
step
#xprate <2.5
.goto Darnassus,31.485,8.237
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenal|r
.turnin 3764 >> Turn in Un'Goro Soil
.target Jenal
step
#xprate <2.5
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.accept 3781 >> Accept Morrowgrain Research
.target Arch Druid Fandral Staghelm
step
#xprate <2.5
#label Morrowgrain
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r on the middle floor
.turnin 3781 >> Turn in Morrowgrain Research
.turnin 6761 >> Turn in The New Frontier
.target Mathrengyl Bearwalker
step << Druid
#xprate <2.5
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.trainer >> Train your class spells
.target Mathrengyl Bearwalker
step << Rogue
#xprate <2.5
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.trainer >> Train your class spells
.target Syurna
step << Hunter
#xprate <2.5
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
step
#xprate <2.5
#label end
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step
#xprate <2.5
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.target Erelas Ambersky
step
#xprate <2.5
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 978 >> Accept Moontouched Wildkin
.target Erelas Ambersky
step
#xprate <2.5
.isQuestTurnedIn 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 979 >> Accept Find Ranshalla
.target Erelas Ambersky
step
#xprate <2.5
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r up stairs
.accept 5250 >> Accept Starfall
.target Daryn Lightwind
step
#xprate <2.5
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Felwood >> Fly to Felwood
.target Vesprystus
]]);
