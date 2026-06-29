RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#season 2
#classic
#tbc
#mop
<< Alliance
#name 34-36 Thousand Needles SoD
#displayname 34-36 Thousand Needles
#next 36-38 Stranglethorn Vale I SoD
step
#completewith next
.goto Wetlands,7.270,62.527,25 >> Travel to the Menethil Harbor Dock
step
.goto Wetlands,5.075,63.408
.zone Dustwallow Marsh >> Take the boat to Theramore
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
.zoneskip Tanaris
.zoneskip Thousand Needles
.zoneskip The Barrens
step
#completewith MDiplomat
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.300
.fp Theramore >> Get the Theramore Flight Path
.target Baldruc
step
#label JamesHyjal
.goto Dustwallow Marsh,67.877,48.239
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Lendry|r upstairs in the Keep
.turnin 1302 >> Turn in James Hyal
.target Clerk Lendry
.isOnQuest 1302
step
#label MDiplomat
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Samaul|r
.turnin 1264 >> Turn in The Missing Diplomat
.accept 1265 >> Accept The Missing Diplomat
.goto Dustwallow Marsh,67.923,48.540
.target Commander Samaul
step
.goto Dustwallow Marsh,66.156,46.067
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Byron|r
.accept 1282 >> Accept They Call Him Smiling Jim
.target Guard Byron
.isQuestAvailable 1302
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Janene|r
.goto Dustwallow Marsh,66.587,45.223
.home >> Set your Hearthstone to Theramore
.target Innkeeper Janene
step << Paladin
.trainer >>Train your spells
.train 19752 >>Train |T136106:0|t[|cRXP_FRIENDLY_Divine Intervention|r]. You will need it for a rune later << sod
step << Hunter/Rogue/Mage/Druid
.goto Dustwallow Marsh,66.459,45.147
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Longears|r
.accept 1135 >> Accept Highperch Venom
.target Fiora Longears
step << Warlock
#season 2
#completewith AltekFinal
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.300
.fly Auberdine >> Fly to Auberdine
.target Baldruc
.train 403938,1
.itemcount 210765,1 
.itemcount 210763,<1 
.isQuestAvailable 78680
.dungeon SFK
step << Warlock
#season 2
#label AltekFinal
.goto Darkshore,56.3,26.5
>>Loot the |cRXP_PICK_Bough of Altek|r at the top of the tower to get the |T135153:0|t[Bough of Altek]
.collect 210763,1
.train 403938,1
.itemcount 210765,1 
.isQuestAvailable 78680
.dungeon SFK
step << Warlock
#season 2
#optional
#completewith OrcReport
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Theramore >> Fly to Theramore
.target Caylais Moonfeather
.cooldown item,6948,<0
.zoneskip Darkshore,1
.dungeon SFK
step << Warlock
#season 2
#completewith OrcReport
.hs >> Hearth to Theramore
.zoneskip Dustwallow Marsh,1
.cooldown item,6948,>0,1
.dungeon SFK
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.goto Dustwallow Marsh,66.005,45.500
.stable >> Withdraw your pet from the Stable
.target Michael
step
.goto Dustwallow Marsh,66.437,51.463
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helenia Olden|r
>>|cRXP_BUY_Buy 3|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from her|r
.collect 3713,3,1218,1 
.target Helenia Olden
step
.goto Dustwallow Marsh,59.72,41.17 >> Travel to the Sentry Point Tower
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
>>|cRXP_WARN_Stay in |cRXP_FRIENDLY_Archmage Tervosh's|r Line of Sight as he will buff you with|r |T135880:0|t[Proudmoore's Defense] |cRXP_WARN_which gives 10 Stamina and 40 Armor|r
.complete 1265,1 
.goto Dustwallow Marsh,59.652,41.243
.turnin 1265 >> Turn in The Missing Diplomat
.accept 1266 >> Accept The Missing Diplomat
.goto Dustwallow Marsh,59.652,41.243
.target Archmage Tervosh
step
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1218 >> Accept Soothing Spices
.turnin 1218 >> Turn in Soothing Spices
.target "Swamp Eye" Jarl
step
#label OrcReport
.goto Dustwallow Marsh,55.442,25.917
>>Click the |cRXP_PICK_Loost Dirt|r
.accept 1219 >> Accept The Orc Report
step
#softcoreserver
#hardcore
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
>>|cRXP_WARN_IF YOU CHOOSE TO ACCEPT THE FOLLOW UP QUEST YOU WILL BE PVP FLAGGED! MEANING HORDE PLAYERS CAN KILL YOU! PROCEED AT YOUR OWN RISK!|r
>>|cRXP_WARN_You will NOT be PvP Flagged for turning in this current quest. Auto accept has been turned OFF for the follow up|r
.turnin 1266 >> Turn in The Missing Diplomat
.target Private Hendel
.isQuestTurnedIn 1264
step
#softcoreserver
#hardcore
.isQuestTurnedIn 1264
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
>>|cRXP_WARN_IF YOU CHOOSE TO ACCEPT THIS QUEST YOU WILL BE PVP FLAGGED! MEANING HORDE PLAYERS CAN KILL YOU! PROCEED AT YOUR OWN RISK!|r
.accept 1324,1 >> Accept The Missing Diplomat
.target Private Hendel
step
#hardcoreserver
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
>>|cRXP_WARN_Blizzard has adjusted this quest so it will no longer PvP Flag you on Official Hardcore Servers|r
.turnin 1266 >> Turn in The Missing Diplomat
.accept 1324,1 >> Accept The Missing Diplomat
.target Private Hendel
.isQuestTurnedIn 1264
step
#softcore
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
.turnin 1266 >> Turn in The Missing Diplomat
.accept 1324,1 >> Accept The Missing Diplomat
.target Private Hendel
.isQuestTurnedIn 1264
step
.goto Dustwallow Marsh,45.24,24.65
>>Defeat |cRXP_ENEMY_Private Hendel|r. He will attack you along with 2 |cRXP_ENEMY_Theramore Sentries|r
>>They will both reset once you subdue |cRXP_ENEMY_Private Hendel|r
.complete 1324,1 
.isOnQuest 1324
.mob Private Hendel
step
.isQuestComplete 1324
.goto Dustwallow Marsh,45.193,24.292
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
.turnin 1324 >> Turn in The Missing Diplomat
.target Archmage Tervosh
step
.isQuestTurnedIn 1324
.goto Dustwallow Marsh,45.218,24.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
.turnin 1267 >> Turn in The Missing Diplomat
.target Lady Jaina Proudmoore
step
#sticky
.abandon 1324 >> Abandon The Missing Diplomat quest if you still have it in your quest log
step
>>Click the |cRXP_PICK_Hoofprints|r on the ground
>>Click the |cRXP_PICK_Black Shield|r hanging on the fireplace
>>Click the |cRXP_PICK_Theramore Guard Badge|r on the wooden plank
.accept 1284 >> Accept Suspicious Hoofprints
.goto Dustwallow Marsh,29.705,47.645
.accept 1253 >> Accept The Black Shield
.goto Dustwallow Marsh,29.631,48.606
.accept 1252 >> Accept Lieutenant Paval Reethe
.goto Dustwallow Marsh,29.832,48.243
step << Warlock
#season 2
.goto The Barrens,49.2,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
.turnin 1740 >>Turn in The Orb of Soran'ruk
.accept 78680 >>Accept Rumors Abound
.turnin 78680 >>Turn in Rumors Abound
.accept 78681 >>Accept The Conjuring
.target Doan Karhan
.train 403938,1
.itemcount 210763,1 
.itemcount 210765,1 
.isQuestComplete 1740
.dungeon SFK
step << Warlock
#season 2
#optional
.goto The Barrens,49.2,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
.accept 78680 >>Accept Rumors Abound
.turnin 78680 >>Turn in Rumors Abound
.accept 78681 >>Accept The Conjuring
.target Doan Karhan
.train 403938,1
.itemcount 210763,1 
.itemcount 210765,1 
.isQuestTurnedIn 1740
.dungeon SFK
step << Warlock
#season 2
#optional
.goto The Barrens,49.2,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
.accept 78680 >>Accept Rumors Abound
.turnin 78680 >>Turn in Rumors Abound
.accept 78681 >>Accept The Conjuring
.target Doan Karhan
.train 403938,1
.itemcount 210763,1 
.itemcount 210765,1 
.isQuestTurnedIn 1740
.dungeon SFK
step << Warlock
#season 2
#optional
.goto The Barrens,49.2,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
.turnin 1740 >>Turn in The Orb of Soran'ruk
.target Doan Karhan
.train 403938,1
.isQuestComplete 1740
.dungeon SFK
step << Warlock
#season 2
#optional
#completewith next
.goto The Barrens,63.087,37.607
.subzone 392 >>Travel to Ratchet
.isOnQuest 78681
.train 403938,1
.dungeon SFK
step << Warlock
#season 2
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Aszhara >> Fly to Azshara
.target Bragok
.isOnQuest 78681
.train 403938,1
.dungeon SFK
step << Warlock
#season 2
#optional
#completewith next
.zone Ashenvale >>Travel to Ashenvale
.train 403938,1
.isOnQuest 78681
.dungeon SFK
step << Warlock
#season 2
.goto Ashenvale,83.07,70.56,40,0
.goto Ashenvale,84.05,76.96,30,0
.goto Ashenvale,81.29,78.14,30,0
.goto Ashenvale,79.05,81.11,30,0
.goto Ashenvale,84.2,76.4
>>Kill the |cRXP_ENEMY_Demons|r in the area. Loot them for the |cRXP_LOOT_Blood of the Legion|r
.complete 78681,1 
.mob Mannoroc Lasher
.mob Felguard
.mob Searing Infernal
.mob Legion Hound
.isOnQuest 78681
.dungeon SFK
step << Warlock
#season 2
#completewith WarlockRuneMetamorphosisB
+|cRXP_WARN_If you're in a group of warlocks then the first warlock (the one who has a debuff) who turns in the quest has to get the killing blow of the |cRXP_ENEMY_Searing Infernal|r while standing inside the rune|r
.train 403938,1
.isQuestAvailable 78702
.zoneskip Ashenvale,1
.dungeon SFK
step << Warlock
#season 2
>>Interact with the |cRXP_PICK_Dark Ritual Stone|r
.goto Ashenvale,78.92,80.29
.turnin 78681 >>Turn in The Conjuring
.target Dark Ritual Stone
.train 403938,1
.zoneskip Ashenvale,1
.dungeon SFK
step << Warlock
#season 2
#label WarlockRuneMetamorphosisB
>>Kill the spawning |cRXP_ENEMY_Demons|r. |cRXP_WARN_Kill the |cRXP_ENEMY_Searing Infernal|r WHILE CHANNELING|r |T136163:0|t[Drain Soul] |cRXP_WARN_and WHILE STANDING INSIDE THE RUNE|r
.goto Ashenvale,79.00,80.38
.accept 78684 >>Accept Mysterious Traveler
.mob Searing Infernal
.train 403938,1
.zoneskip Ashenvale,1
.dungeon SFK
step << Warlock
#season 2
#optional
#completewith next
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fly Ratchet>> Fly to Ratchet
.target Jarrodenus
.zoneskip The Barrens
.dungeon SFK
step << Warlock
#season 2
.goto The Barrens,49.2,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r to get the |T134419:0|t[|cRXP_FRIENDLY_Rune of Metamorphosis|r]
.turnin 78684 >>Turn in Mysterious Traveler
.turnin 78702 >>Turn in Raszel Ander
.collect 210980,1
.target Doan Karhan
.train 403938,1
.dungeon SFK
step << Warlock
#season 2
.use 210980
.itemcount 210980,1
.train 403938 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Metamorphosis|r] |cRXP_WARN_to train|r |T237558:0|t[Metamorphosis]
.dungeon SFK
step
#completewith next
.goto The Barrens,44.213,91.217,0
.goto Thousand Needles,32.09,22.33
.zone Thousand Needles >> Travel to Thousand Needles
step
.goto Thousand Needles,30.725,24.346
>>Loot |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] on the ground
.use 5791 >>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] to start the quest|r
.accept 1100 >> Accept Lonebrow's Journal
step << Mage
#season 2
.train 425189,1
#loop
.goto Thousand Needles,23.2,25.0,25,0
.goto Thousand Needles,20.2,22.0,25,0
.goto Thousand Needles,17.6,19.6,25,0
.goto Thousand Needles,18.6,24.6,25,0
>>Kill |cRXP_ENEMY_Galak Marauders|r, |cRXP_ENEMY_Galak Maulers|r and |cRXP_ENEMY_Galak Stormers|r. Loot them for the |cRXP_LOOT_Cougar Cage Key|r
.collect 214435,1
.mob Galak Mauler
.mob Galak Marauder
.mob Galak Stormer
.itemcount 213634,<1
.train 400640,3
.train 120,3
step << Mage
#season 2
#completewith next
.goto Thousand Needles,23.714,24.780
+Open the |cRXP_PICK_Cougar Cage|r to release the |cRXP_ENEMY_Seared Needles Cougar|r
.itemcount 214435,1
.train 400640,3
.train 120,3
step << Mage
#season 2
.train 425189,1
.train 400640,3
.train 120,3
.goto Thousand Needles,23.714,24.780
>>Kill the |cRXP_ENEMY_Seared Needles Cougar|r. Loot her for the |T134943:0|t[|cRXP_LOOT_Partial Spell Notes|r]
>>|cRXP_WARN_You need to cool it down to kill it. In order to do it by yourself you have to use this exact rotation in quick succession:|r
>>Cast |T135846:0|t[Frostbolt] > |T135848:0|t[Frost Nova] > |T135852:0|t[Cone of Cold] > |T135844:0|t[Ice Lance] |cRXP_WARN_This has to be done without any breaks between the casts|r
.mob Seared Needles Cougar
.collect 213634,1
step << Rogue
#season 2
.train 400093,1
#completewith next
.goto Thousand Needles,18.44,21.58,10 >> Enter the large tent at Camp E'thok
step << Rogue
#season 2
.train 400093,1
.goto Thousand Needles,18.686,21.126
>>Open the |cRXP_PICK_Sizable Stolen Strongbox|r. Loot it for the |T132597:0|t[|cRXP_LOOT_Large Strongbox|r]
.collect 215451,1
step << Rogue
#season 2
.train 400093,1
.cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Large Strongbox|r] |cRXP_WARN_to unlock it|r
.usespell 1804
.use 215451
step << Rogue
#season 2
.train 400093,1
.use 215451 >> Open the |T132597:0|t[|cRXP_LOOT_Large Strongbox|r]. Loot it for the |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r]
.collect 215452,1
step << Rogue
#season 2
.train 400093,1
.cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r] |cRXP_WARN_to unlock it|r
.usespell 1804
.use 215452
step << Rogue
#season 2
.train 400093,1
.use 215452 >> Open the |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r]. Loot it for the |T132597:0|t[|cRXP_LOOT_Small Strongbox|r]
.collect 215453,1
step << Rogue
#season 2
.train 400093,1
.cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Small Strongbox|r] |cRXP_WARN_to unlock it|r
.usespell 1804
.use 215453
step << Rogue
#season 2
.train 400093,1
.use 215453 >> Open the |T132597:0|t[|cRXP_LOOT_Small Strongbox|r]. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r]
.collect 213138,1
step << Rogue
#season 2
.itemcount 213138,1
.use 213138
.train 400093 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r] |cRXP_WARN_to train|r |T134919:0|t[Rolling with the Punches]
step
#completewith next
.goto Thousand Needles,8.456,17.953,0
.goto Feralas,89.50,45.85,50 >> Travel to Thalanaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
.goto Feralas,89.497,45.853
.fp Thalanaar >> Get the Thalanaar flight path
.target Thyssiana
step
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 1100 >> Turn in Lonebrow's Journal
.target Falfindel Waywarder
step
.dungeon RFK
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 1100 >> Turn in Lonebrow's Journal
.accept 1101 >> Accept The Crone of the Kraul
.target Falfindel Waywarder
step
#xprate <1.2
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 1059 >> Turn in Reclaiming the Charred Vale
.target Falfindel Waywarder
.isOnQuest 1059
step
.dungeon RFK
#completewith next
.goto Thousand Needles,10.88,33.24,0
.goto Thousand Needles,11.01,38.31,0
.goto Thousand Needles,13.27,38.47,0
.goto Thousand Needles,17.46,41.62,0
.zone The Barrens >> Grind |cRXP_ENEMY_Highperch Wyverns|r, |cRXP_ENEMY_Highperch Consorts|r and |cRXP_ENEMY_Highperch Patriarchs|r while looking for a group for Razorfen Kraul
.mob Highperch Patriarch
.mob Highperch Wyvern
.mob Highperch Consort
step
.dungeon RFK
.goto The Barrens,43.46,90.18,0
.goto The Barrens,43.46,90.18,40,0
.goto 1414,50.877,70.339
.subzone 491,2 >> Enter Razorfen Kraul
step
.dungeon RFK
>>Kill |cRXP_ENEMY_Charlga Razorflank|r. Loot her for |cRXP_LOOT_Razorflank's Heart|r
.complete 1101,1 
.isOnQuest 1101
step
.dungeon RFK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heralath Fallowbrook|r and |cRXP_FRIENDLY_Willix the Importer|r
.accept 1142 >> Accept Mortality Wanes
.accept 1144 >> Accept Willix the Importer
.target Heralath Fallowbrook
.target Willix the Importer
step
.dungeon RFK
#completewith next
>>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
>>Escort |cRXP_FRIENDLY_Willix the Importer|r through Razorfen Krual
>>|cRXP_WARN_Ensure you stay close to |cRXP_FRIENDLY_Willix|r otherwise the quest may not complete!|r
.complete 1144,1 
.isOnQuest 1144
step
.dungeon RFK
#completewith next
>>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willix the Importer|r
.turnin 1144 >> Turn in Willix the Importer
.target Willix the Importer
.isQuestComplete 1144
step
.dungeon RFK
>>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 1101 >> Turn in The Crone of the Kraul
.target Falfindel Waywarder
.isQuestComplete 1101
step
.dungeon RFK
#completewith ABump
.isQuestComplete 1142
+NOTE: It is never time efficient to go to Darnassus to turn in Mortality Wanes. Buy a portal from a Mage to Darnassus when the guide tells you to use your Hearthstone next, so you can turn it in at Darnassus then use Hearthstone to remain on track with the guide, otherwise abandon Mortality Wanes
step
#qremove 1142 
step << Mage
#season 2
#sticky
#completewith HighperchVenomSacs
.train 425189,1
.train 400640,3
.train 120,3
.goto Thousand Needles,13.598,33.854,40,0
.goto Thousand Needles,10.81,39.60
>>Kill the |cRXP_ENEMY_Singed Highperch Consort|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Partial Spell Notes|r]
>>|cRXP_WARN_You need to cool it down to kill it. In order to do it by yourself you have to use this exact rotation in quick succession:|r
>>Cast |T135846:0|t[Frostbolt] > |T135848:0|t[Frost Nova] > |T135852:0|t[Cone of Cold] > |T135844:0|t[Ice Lance] |cRXP_WARN_This has to be done without any breaks between the casts|r
.collect 213633,1
.mob Singed Highperch Consort
step << Hunter/Rogue/Druid/Mage
#label HighperchVenomSacs
.isOnQuest 1135
.goto Thousand Needles,13.136,34.221,40,0
.goto Thousand Needles,10.88,33.24,50,0
.goto Thousand Needles,11.01,38.31,50,0
.goto Thousand Needles,13.27,38.47,50,0
.goto Thousand Needles,17.46,41.62,50,0
.goto Thousand Needles,11.07,35.59
>>Kill |cRXP_ENEMY_Highperch Wyverns|r, |cRXP_ENEMY_Highperch Consorts|r and |cRXP_ENEMY_Highperch Patriarchs|r. Loot them for their |cRXP_LOOT_Venom Sacs|r
.complete 1135,1 
.mob Highperch Patriarch
.mob Highperch Wyvern
.mob Highperch Consort
step << Mage
#season 2
.train 425189,1
.train 400640,3
.train 120,3
.goto Thousand Needles,13.598,33.854,40,0
.goto Thousand Needles,10.81,39.60
>>Kill the |cRXP_ENEMY_Singed Highperch Consort|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Partial Spell Notes|r]
>>|cRXP_WARN_You need to cool it down to kill it. In order to do it by yourself you have to use this exact rotation in quick succession:|r
>>Cast |T135846:0|t[Frostbolt] > |T135848:0|t[Frost Nova] > |T135852:0|t[Cone of Cold] > |T135844:0|t[Ice Lance] |cRXP_WARN_This has to be done without any breaks between the casts|r
.collect 213633,1
.mob Singed Highperch Consort
step << Mage
#season 2
#label SpellNotes
.train 425189,1
.train 400640,3
.train 120,3
.goto Thousand Needles,26.66,46.38
>>Kill the |cRXP_ENEMY_Scorched Screeching Roguefeather|r. Loot it for the |T134937:0|t[|cRXP_LOOT_Partial Spell Notes|r]
>>|cRXP_WARN_You need to cool it down to kill it. In order to do it by yourself you have to use this exact rotation in quick succession:|r
>>Cast |T135846:0|t[Frostbolt] > |T135848:0|t[Frost Nova] > |T135852:0|t[Cone of Cold] > |T135844:0|t[Ice Lance] |cRXP_WARN_This has to be done without any breaks between the casts|r
.collect 213632,1
.mob Scorched Screeching Roguefeather
step << Mage
#season 2
.train 425189,1
.itemcount 213633,1
.itemcount 213632,1
.itemcount 213634,1
>>|cRXP_WARN_Use the|r |T134943:0|t|T134938:0|t|T134937:0|t[|cRXP_LOOT_Partial Spell Notes|r] |cRXP_WARN_to create the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Chronostatic Preservation|r]
.collect 213116,1
.use 213634
.use 213633
.use 213632
step << Mage
#season 2
.train 425189 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Chronostatic Preservation|r |cRXP_WARN_to train|r |T135729:0|t[Chronostatic Preservation]
.use 213116
.itemcount 213116,1
.train 425189,1
step << Mage
#optional
#completewith next
#season 2
.engrave 8 >> Open your character sheet and engrave your boots with |T135729:0|t[Chronostatic Preservation]
.train 1543,3
step << Druid
#season 2
.train 424760,1
.goto Thousand Needles,68.690,55.155
.aura 435081 >> |cRXP_WARN_Stand next to the |cRXP_PICK_Beastly Effigy|r statue to receive the|r |T134912:0|t[Beastly Effigy] |cRXP_WARN_buff|r
step << Druid
#season 2
#completewith next
.goto Thousand Needles,68.690,55.155
.train 424760,1
.cast 5209 >> |cRXP_WARN_Go into|r |T132276:0|t[Bear Form] |cRXP_WARN_and cast|r |T132117:0|t[Challenging Roar] |cRXP_WARN_to spawn|r |cRXP_ENEMY_Zai'enki|r |cRXP_WARN_(lvl 28 elite)|r
step << Druid
#season 2
.train 424760,1
.goto Thousand Needles,68.690,55.155
>>Kill |cRXP_ENEMY_Zai'enki|r. Loot it for the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r]
.collect 213594,1
.mob Zai'enki
step << Druid
#season 2
.train 424760,1
.equip 18,213594 >> Equip the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r]
.use 213594
step << Druid
#season 2
#title Gain 5x |T237556:0|t[Building Inspiration]
#completewith TurninShimmering
#label BerserkInspired
.itemcount 213594,1
.train 424760,1
.aura 408828 >> |cRXP_WARN_Cast|r |T132117:0|t[Challenging Roar] |cRXP_WARN_to taunt at least 2 enemies and kill one of them while they have the|r |T132117:0|t[Challenging Roar] |cRXP_WARN_debuff. This will give you a stack of the|r |T237556:0|t[Building Inspiration] |cRXP_WARN_buff. Repeat this 5 times until you gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
*|cRXP_WARN_It's recommened you fight one mob and almost kill it, then pull a 2nd and cast|r |T132117:0|t[Challenging Roar]|cRXP_WARN_, then kill the low health mob. You will lose all stacks of|r |T237556:0|t[Building Inspiration] |cRXP_WARN_if you die|r
step << Druid
#season 2
#requires BerserkInspired
#completewith TurninShimmering
.itemcount 213594,1
.use 213594
.train 424760 >> |cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r] |cRXP_WARN_to train|r |T236149:0|t[Berserk]
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> Travel to the Mirage Raceway
.xp <35,1
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1111 >> Accept Wharfmaster Dizzywig
.accept 5762 >> Accept Hemet Nesingwary
.target Kravel Koalbeard
.xp <35,1
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> Travel to the Mirage Raceway
.xp >35,1
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
>>|cRXP_WARN_Don't accept the other quests yet|r
.accept 1110 >> Accept Rocket Car Parts
.target Kravel Koalbeard
.xp >35,1,FlatsEnd
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
.accept 1104 >> Accept Salt Flat Venom
.goto Thousand Needles,78.064,77.126 
.turnin 1179 >> Turn in The Brassbolts Brothers
.accept 1105 >> Accept Hardened Shells
.goto Thousand Needles,78.143,77.120 
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.accept 1176 >> Accept Load Lightening
.target Pozzik
step
#label ABump
.goto Thousand Needles,81.635,77.953
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
.accept 1175 >> Accept A Bump in the Road
.target Trackmaster Zherin
step
#optional
>>|cRXP_WARN_Run circles around The Shimmering Flats until all objectives are complete|r
>>Kill |cRXP_ENEMY_Salt Flats Scavengers|r and |cRXP_ENEMY_Salt Flats Vultures|r. Loot them for their |cRXP_LOOT_Bones|r
>>Kill |cRXP_ENEMY_Sparkleshell Tortoises|r, |cRXP_ENEMY_Sparkleshell Borers|r and |cRXP_ENEMY_Sparkleshell Snappers|r. Loot them for their |cRXP_LOOT_Shells|r
>>|cRXP_WARN_Don't go out of your way to collect all|r |cRXP_LOOT_Turtle Meat|r
>>Kill |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r and |cRXP_ENEMY_Saltstone Gazers|r
>>Loot |cRXP_ENEMY_Saltstone Basilisks|r for their |cRXP_LOOT_Scales|r
>>Open the |cRXP_PICK_Rocket Car Rubble|r. Loot it for the |cRXP_LOOT_Rocket Car Parts|r
.complete 1176,1 
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.goto Thousand Needles,82.6,54.8,0
.complete 1104,1 
.goto Thousand Needles,71.8,73.4,0
.complete 1175,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1078,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1175,2 
.goto Thousand Needles,77.65,87.34,0
.complete 1175,3 
.goto Thousand Needles,77.65,87.34,0
.complete 1110,1 
.mob Salt Flats Scavenger
.mob Salt Flats Vulture
.mob Sparkleshell Snapper
.mob Sparkleshell Borer
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk
.mob Saltstone Crystalhide
.mob Saltstone Gazer
.mob Scorpid Reaver
.mob Scorpid Terror
.isOnQuest 1078
step
>>|cRXP_WARN_Run circles around The Shimmering Flats until all objectives are complete|r
>>Kill |cRXP_ENEMY_Salt Flats Scavengers|r and |cRXP_ENEMY_Salt Flats Vultures|r. Loot them for their |cRXP_LOOT_Bones|r
>>Kill |cRXP_ENEMY_Sparkleshell Tortoises|r, |cRXP_ENEMY_Sparkleshell Borers|r and |cRXP_ENEMY_Sparkleshell Snappers|r. Loot them for their |cRXP_LOOT_Shells|r
>>|cRXP_WARN_Don't go out of your way to collect all|r |cRXP_LOOT_Turtle Meat|r
>>Kill |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r and |cRXP_ENEMY_Saltstone Gazers|r
>>Open the |cRXP_PICK_Rocket Car Rubble|r. Loot it for the |cRXP_LOOT_Rocket Car Parts|r
.complete 1176,1 
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.goto Thousand Needles,82.6,54.8,0
.complete 1104,1 
.goto Thousand Needles,71.8,73.4,0
.complete 1175,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1175,2 
.goto Thousand Needles,77.65,87.34,0
.complete 1175,3 
.goto Thousand Needles,77.65,87.34,0
.complete 1110,1 
.mob Salt Flats Scavenger
.mob Salt Flats Vulture
.mob Sparkleshell Snapper
.mob Sparkleshell Borer
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk
.mob Saltstone Crystalhide
.mob Saltstone Gazer
.mob Scorpid Reaver
.mob Scorpid Terror
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
.goto Thousand Needles,81.635,77.953
.turnin 1175 >> Turn in A Bump in the Road
.target Trackmaster Zherin
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1176 >> Turn in Load Lightening
.accept 1178 >> Accept Goblin Sponsorship
.target Pozzik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
.turnin 1104 >> Turn in Salt Flat Venom
.goto Thousand Needles,78.064,77.126 
.turnin 1105 >> Turn in Hardened Shells
.goto Thousand Needles,78.143,77.120 
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
#label TurninShimmering
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1110 >> Turn in Rocket Car Parts
.accept 1111 >> Accept Wharfmaster Dizzywig
.accept 5762 >> Accept Hemet Nesingwary
.target Kravel Koalbeard
step << Druid
#season 2
#title Gain 5x |T237556:0|t[Building Inspiration]
.itemcount 213594,1
.train 424760,1
.aura 408828 >> |cRXP_WARN_Cast|r |T132117:0|t[Challenging Roar] |cRXP_WARN_to taunt at least 2 enemies and kill one of them while they have the|r |T132117:0|t[Challenging Roar] |cRXP_WARN_debuff. This will give you a stack of the|r |T237556:0|t[Building Inspiration] |cRXP_WARN_buff. Repeat this 5 times until you gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
*|cRXP_WARN_It's recommened you fight one mob and almost kill it, then pull a 2nd and cast|r |T132117:0|t[Challenging Roar]|cRXP_WARN_, then kill the low health mob. You will lose all stacks of|r |T237556:0|t[Building Inspiration] |cRXP_WARN_if you die|r
step << Druid
#season 2
.itemcount 213594,1
.use 213594
.train 424760 >> |cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r] |cRXP_WARN_to train|r |T236149:0|t[Berserk]
step << Warrior
#season 2
.train 403472,1
>>|cRXP_WARN_You will need a shield to get this rune. Skip the following steps if you don't have one|r
.goto Thousand Needles,67.84,89.50,100 >> Travel to the Rustmaul Digsite in |cFFfa9602Thousand Needles|r
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
#completewith next
+|cRXP_WARN_Ensure you have equiped your one-handed weapon and shield|r
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
.train 403472,1
.goto Thousand Needles,67.968,89.800
.cast 5308,20658,20660,20661,20662 >>|cRXP_WARN_Cast|r |T135358:0|t[Execute] |cRXP_WARN_on the |cRXP_ENEMY_Combat Dummy|r, then move across to the next|r |cRXP_ENEMY_Combat Dummy|r
.mob Combat Dummy
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
.train 403472,1
.goto Thousand Needles,67.845,89.511
.cast 355 >>|cRXP_WARN_Cast|r |T136080:0|t[Taunt] |cRXP_WARN_on the |cRXP_ENEMY_Combat Dummy|r, then move across to the next|r |cRXP_ENEMY_Combat Dummy|r
.mob Combat Dummy
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
.train 403472,1
.goto Thousand Needles,67.713,89.245
.cast 72,1671,1672 >>|cRXP_WARN_Cast|r |T132357:0|t[Shield Bash] |cRXP_WARN_on the|r |cRXP_ENEMY_Combat Dummy|r
.mob Combat Dummy
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
.train 403472,1
.goto Thousand Needles,67.933,89.408
>>Open the |cRXP_PICK_Warrior's Bounty|r chest. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r]
.collect 213111,1 
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
.train 403472 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r] |cRXP_WARN_to train|r |T132365:0|t[Intervene]
.use 213111
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step
#label FlatsEnd
#completewith next
.goto Tanaris,51.01,29.35,150 >> Travel to Tanaris
step
#label TanarisFP
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,51.006,29.345
.fp Tanaris>> Get the Tanaris Flight Path
.target Bera Stonehammer
step << Warrior
#label FlyTheramore
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
>>|cRXP_WARN_You need your hearthstone available to get back from your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest|r
.goto Tanaris,51.006,29.345
.fly Theramore >> Fly back to Theramore
.target Bera Stonehammer
.zoneskip Dustwallow Marsh
step << !Warrior
#label HSTheramore
#completewith DWallow
.hs >> Hearth to Theramore
>>Fly back instead if your HS is not available
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
.zoneskip Dustwallow Marsh
step << !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,51.006,29.345
.fly Theramore >> Fly to Theramore
>>|T134414:0|t|cRXP_WARN_hearthstone instead if its available|r
.target Bera Stonehammer
.zoneskip Dustwallow Marsh
.cooldown item,6948,<0
step << Hunter/Rogue/Druid
.isQuestComplete 1135
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Longears|r
.goto Dustwallow Marsh,66.459,45.147
.turnin 1135 >> Turn in Highperch Venom
.target Fiora Longears
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Theramore Lieutenant|r
.goto Dustwallow Marsh,68.125,48.201
.turnin 1219 >> Turn in The Orc Report
.accept 1220 >> Accept Captain Vimes
.target Theramore Lieutenant
step
#completewith next
.goto Dustwallow Marsh,68.23,48.82,25 >> Travel upstairs in the Keep
step
#label DWallow
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1252 >> Turn in Lieutenant Paval Reethe
.accept 1259 >> Accept Lieutenant Paval Reethe
.turnin 1253 >> Turn in The Black Shield
.accept 1319 >> Accept The Black Shield
.turnin 1284 >> Turn in Suspicious Hoofprints
.turnin 1220 >> Turn in Captain Vimes
.target Captain Garran Vimes
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1282 >> Turn in They Call Him Smiling Jim
.goto Dustwallow Marsh,68.212,48.620
.target Captain Garran Vimes
.isOnQuest 1282
step
.goto Dustwallow Marsh,68.04,48.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adjutant Tesoran|r
.turnin 1259 >> Turn in Lieutenant Paval Reethe
.accept 1285 >> Accept Daelin's Men
.target Adjutant Tesoran
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1285 >> Turn in Daelin's Men
.target Captain Garran Vimes
step
.goto Dustwallow Marsh,64.756,50.426
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caz Twosprocket|r
.turnin 1319 >> Turn in The Black Shield
.accept 1320 >> Accept The Black Shield
.target Caz Twosprocket
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1320 >> Turn in The Black Shield
.target Captain Garran Vimes
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.301
.fly Ratchet>> Fly to Ratchet
.target Baldruc
step << !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.301
.fly Ratchet>> Fly to Ratchet
.target Baldruc
.dungeon WC
step << !Warlock
#hardcore
#completewith next
.goto Dustwallow Marsh,54.25,9.20,80,0
.goto The Barrens,62.68,36.23
.zone The Barrens >> Travel north to The Barrens grinding your way up
.dungeon !WC
step << !Warlock
#softcore
.goto Dustwallow Marsh,54.25,9.20,80 >> Travel north to The Barrens grinding your way up
.dungeon !WC
step
#softcore
#completewith next
>>|cRXP_WARN_Pull a mob from Dustwallow Marsh into the Barrens to deathskip to Ratchet|r
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step << Warrior
#completewith next
.goto The Barrens,62.86,52.75,80,0
.goto The Barrens,68.34,48.84,50 >> Travel to Fray Island
step << Warrior
.goto The Barrens,68.615,49.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc Macleod|r
.turnin 1718 >> Turn in The Islander
.accept 1719 >> Accept The Affray
.target Klannoc Macleod
step << Warrior
.goto The Barrens,68.606,48.720
>>|cRXP_WARN_Start the affray by stepping on the grate|r
>>Kill |cRXP_ENEMY_Affray Challengers|r until |cRXP_ENEMY_Big Will|r appears
>>Kill |cRXP_ENEMY_Big Will|r
.complete 1719,2 
.complete 1719,1 
.mob Affray Challenger
.mob Big Will
step << Warrior
.goto The Barrens,68.615,49.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc Macleod|r
.turnin 1719 >> Turn in The Affray
.accept 1791 >> Accept The Windwatcher
.target Klannoc Macleod
step << Warrior
.goto The Barrens,62.0,39.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r |T132395:0|t[|cFF0070FFBonebiter|r]|cRXP_WARN_, you can skip this step|r
>>|cRXP_WARN_You need your hearthstone in Ratchet to get back from your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest|r
.home >> Set your Hearthstone to Ratchet
.target Innkeeper Wiley
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankdeposit 3521,5827 >> Deposit the following items into your bank:
>>|T134939:0|t[Cleverly Encrypted Letter] (If you found it) 
>>|T133469:0|t[Fizzle Brassbolts' Letter] 
.target Fuzruckle
.target Zikkel
step << !Warlock
#season 2
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fp Ratchet>> Get the Ratchet Flight Path
.fly Azshara >> Fly to Azshara << Paladin
.target Bragok
.isOnQuest 78092 << Paladin
.dungeon !WC
step << Paladin
#season 2
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Azshara >> Fly to Azshara
.target Bragok
.isOnQuest 78092
.dungeon WC
step << Paladin
#season 2
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fp Ratchet>> Get the Ratchet Flight Path
.target Bragok
.isQuestTurnedIn 78093
.dungeon !WC
step << Paladin
#season 2
#completewith next
.goto Ashenvale,84.12,72.10,200 >>Travel toward Demon Fall Canyon
.train 410014,1
.isOnQuest 78092
step << Paladin
#season 2
#loop
.goto Ashenvale,83.92,71.16,50,0
.goto Ashenvale,84.65,74.15,50,0
.goto Ashenvale,84.18,76.79,50,0
.goto Ashenvale,82.60,79.15,50,0
.goto Ashenvale,82.74,77.95,15,0
.goto Ashenvale,82.02,77.93,15,0
.goto Ashenvale,81.13,78.57,15,0
.goto Ashenvale,81.17,79.78,15,0
.goto Ashenvale,78.59,81.31,50,0
.goto Ashenvale,84.18,76.79,50,0
.goto Ashenvale,84.78,77.78,50,0
.goto Ashenvale,87.28,79.21,50,0
.goto Ashenvale,89.76,76.69,50,0
.goto Ashenvale,84.18,76.79,50,0
>>Kill |cRXP_ENEMY_Searing Infernals|r, |cRXP_ENEMY_Felguards|r, |cRXP_ENEMY_Mannoroc Lashers|r, and |cRXP_ENEMY_Legion Hounds|r. Loot them for |cRXP_LOOT_Motes of Mannoroth|r
>>|cRXP_WARN_|cRXP_LOOT_Motes of Mannoroth|r are distributed on an individual basis (each mob has a chance to drop Motes for each person in your group), so you CAN easily group with others for this quest|r
>>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Searing Infernals|r have|r |T135802:0|t[Immolation Aura] |cRXP_WARN_(Passive Melee AoE: Deals 27-28 fire damage every 3 seconds), |cRXP_ENEMY_Felguards|r cast|r |T132154:0|t[Knockdown] |cRXP_WARN_(Melee Instant: Deals around 140 damage and stuns for 2 seconds), and |cRXP_ENEMY_Mannoroc Lashers|r cast|r |T135817:0|t[Flame Lash] |cRXP_WARN_(Ranged Instant: Deals around 45 Fire damage, then 12-13 Fire damage every 3 seconds for 21 seconds) and|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(Ranged Cast: Deals about 125 Shadow damage)|r
.complete 78092,1 
.mob Searing Infernal
.mob Felguard
.mob Mannoroc Lasher
.mob Legion Hound
.train 410014,1
.isOnQuest 78092
step << Paladin
#season 2
>>Click the |cRXP_PICK_Spear of Mannoroth|r in the air, then click the |cRXP_PICK_Shattered Orb|r on the ground
.turnin 78092 >> Turn in It Must Be Destroyed
.goto Ashenvale,89.48,77.03
.accept 78093 >> Accept Return to Delgren
.goto Ashenvale,89.44,77.01
.train 410014,1
.isQuestComplete 78092
step << Paladin
#season 2
>>Click the |cRXP_PICK_Spear of Mannoroth|r in the air, then click the |cRXP_PICK_Shattered Orb|r on the ground
.accept 78093 >> Accept Return to Delgren
.goto Ashenvale,89.44,77.01
.train 410014,1
.isQuestTurnedIn 78092
step << Paladin
#season 2
.goto Ashenvale,26.19,38.69
>>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 78093 >> Turn in Return to Delgren
.train 410014 >> This will teach you |T133815:0|t[Engrave Chest - Divine Storm]
.target Delgren the Purifier
.train 410014,1
.isOnQuest 78093
step << Paladin
#season 2
#label GSponsorHS
#completewith GSponsor
.hs >> Hearth to Theramore
.cooldown item,6948,>0
step << Paladin
#season 2
#completewith GSponsor
#requires GSponsorHS
.goto Ashenvale,34.40,48.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Ratchet >> Fly to Ratchet
.target Daelyshia
.zoneskip Ashenvale,1
.cooldown item,6948,<0
step << Paladin
#season 2
#completewith next
#requires GSponsorHS
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Ratchet >> Fly to Ratchet
.target Baldruc
.zoneskip Dustwallow Marsh,1
step
#optional
#completewith Wharfmaster
#season 2
.goto The Barrens,61.8,39.4
>>|cRXP_WARN_If you have |cRXP_LOOT_3 gold|r to spare you can buy a rune from|r |cRXP_FRIENDLY_Grizzby|r |cRXP_WARN_in the Ratchet inn. Judge for yourself if you can afford it and if the rune is useful for your class. You can always buy it later|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r in the inn
.use 210822 << Priest
.use 210820 << Paladin
.use 210654 << Mage
.use 210818 << Hunter
.use 210817 << Druid
.use 210825 << Warrior
.use 210824 << Warlock
.use 210653 << Rogue
.use 210823 << Shaman
.train 415995 >>|cRXP_WARN_Buy and use the|r |T135791:0|t[|cRXP_FRIENDLY_Harmonious Epiphany|r] |cRXP_WARN_to train|r |T237549:0|t[Serendipity] << Priest
.train 410010 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sacrifice|r] |cRXP_WARN_to train|r |T134596:0|t[Engrave Pants - Divine Sacrifice] << Paladin
.train 401761 >>|cRXP_WARN_Buy and use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Rewind Time|r] |cRXP_WARN_to train|r |T237538:0|t[Rewind Time] << Mage
.train 410122 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r] |cRXP_WARN_to train|r |T132266:0|t[Lone Wolf] << Hunter
.train 416042 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Survival|r] |cRXP_WARN_to train|r |T132126:0|t[Survival of the Fittest] << Druid
.train 425445 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Warbringer|r] |cRXP_WARN_to train|r |T236319:0|t[Warbinger] << Warrior
.train 425476 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r] |cRXP_WARN_to train|r |T237562:0|t[Demonic Pact] << Warlock
.train 424990 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Main Gauche|r] |cRXP_WARN_to train|r |T237531:0|t[Main Gauche] << Rogue
.train 410096 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dual Wield Specialization|r] |cRXP_WARN_to train|r |T132686:0|t[Engrave Chest - Dual Wield Specialization] << Shaman
.target Grizzby
.train 415995,1 << Priest
.train 410010,1 << Paladin
.train 401761,1 << Mage
.train 410122,1 << Hunter
.train 416042,1 << Druid
.train 425445,1 << Warrior
.train 425476,1 << Warlock
.train 424990,1 << Rogue
.train 410096,1 << Shaman
step
#label GSponsor
.goto The Barrens,62.680,36.234
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
.turnin 1178 >> Turn in Goblin Sponsorship
.accept 1180 >> Accept Goblin Sponsorship
.target Gazlowe
step << Warlock
.isOnQuest 4736
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.goto The Barrens,62.509,35.449
.turnin 4736 >> Turn in In Search of Menara Voidrender
.target Menara Voidrender
step << Warlock
.isOnQuest 4738
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.goto The Barrens,62.509,35.449
.turnin 4738 >> Turn in In Search of Menara Voidrender
.target Menara Voidrender
step << Warlock
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 1798 >> Turn in Seeking Strahad
.accept 1758 >> Accept Tome of the Cabal
.target Strahad Farsan
step
#label Wharfmaster
.goto The Barrens,63.352,38.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
.turnin 1111 >> Turn in Wharfmaster Dizzywig
.target Wharfmaster Dizzywig
step << Warrior
#season 2
.goto The Barrens,63.084,37.163
.isOnQuest 1791
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r |T132395:0|t[|cFF0070FFBonebiter|r]|cRXP_WARN_ take the boat to Booty Bay instead|r
>>|cRXP_WARN_Flying to Theramore means you want to begin the|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Theramore >> Fly to Theramore if you want to get |T132403:0|t[|cFF0070FFWhirlwind Axe|r]. |cRXP_WARN_Otherwise take the boat to Booty Bay|r
.target Bragok
step << Warrior
.isOnQuest 1791
.zoneskip Stranglethorn Vale 
.goto Dustwallow Marsh,71.3,56.1,100 >> Travel to the end of the Theramore Dock
step << Warrior
.isOnQuest 1791
.zoneskip Stranglethorn Vale 
.goto Dustwallow Marsh,71.3,56.1
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
.zone Wetlands >> Take the boat to Menethil Harbor
step << Warrior
.isOnQuest 1791
.zoneskip Stranglethorn Vale 
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Southshore >> Fly to Southshore
step << Warrior
.isOnQuest 1791
.zoneskip Stranglethorn Vale 
.goto Hillsbrad Foothills,68.9,18.9,100 >> Run along the river north. |cRXP_WARN_Watch out for the Tarren Mill Deathguards on the west side of the river near Tarren Mill|r
step << Warrior
.isOnQuest 1791
.zoneskip Stranglethorn Vale 
.goto Alterac Mountains,80.499,66.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1791 >>Turn in The Windwatcher
.accept 1712 >>Accept Cyclonian
.target Bath'rah the Windwatcher
step << Warrior
.isOnQuest 1791
.zoneskip Stranglethorn Vale 
.hs >> Hearthstone to Ratchet
step
#completewith next
>>|cRXP_WARN_At midnight and every 3 hours thereafter a|r |cRXP_ENEMY_Blood Moon PVP event|r |cRXP_WARN_will happen in STV.
>>|cRXP_WARN_THIS WILL MAKE YOU HOSTILE TO FRIENDLY NPCS.|r
+|cRXP_WARN_To opt out of it and avoid issues while questing talk to the|r |cRXP_FRIENDLY_Zandalarian Emissary|r |cRXP_WARN_at the dock. Complete his dialogue and he will grant you a buff preventing the blood moon from taking effect|r
.unitscan Zandalarian Emissary
step
.goto The Barrens,63.677,38.618
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
.zone Stranglethorn Vale >> Take the boat to Booty Bay
]]);
