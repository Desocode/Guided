RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 33-34 Thousand Needles
#next 34-35 Stranglethorn Vale I
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
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.300
.fp Theramore >> Get the Theramore Flight Path
.target Baldruc
step << Hunter
.goto Dustwallow Marsh,67.8,49.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jensen Farran|r
.vendor >> |cRXP_BUY_Restock on|r |T132382:0|t[Razor Arrows] |cRXP_BUY_if needed|r
.target Jensen Farran
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
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.goto Dustwallow Marsh,66.005,45.500
.stable >> Withdraw your pet from the Stable. Remember to use |T132162:0|t[|cRXP_FRIENDLY_Beast Training|r] to teach it |T132278:0|t[|cRXP_FRIENDLY_Bite|r (Rank 5)]
.target Michael
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Janene|r
.goto Dustwallow Marsh,66.587,45.223
.home >> Set your Hearthstone to Theramore
.target Innkeeper Janene
step << Paladin sod
.trainer >>Train your spells
.train 19752 >>Train |T136106:0|t[|cRXP_FRIENDLY_Divine Intervention|r]. You will need it for a rune later << sod
step
.goto Dustwallow Marsh,66.459,45.147
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Longears|r
.accept 1135 >> Accept Highperch Venom
.maxlevel 33 << !Hunter !Rogue
.target Fiora Longears
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
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r |cRXP_WARN_first and then to|r |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
.turnin 1324 >> Turn in The Missing Diplomat
.target +Archmage Tervosh
.turnin 1267 >> Turn in The Missing Diplomat
.target +Lady Jaina Proudmoore
step
#sticky
.abandon 1324 >> Abandon The Missing Diplomat quest if you still have it in your quest log
step
#season 0,1 << Hunter
.goto Dustwallow Marsh,35.154,38.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
.accept 1177 >> Accept Hungry!
.target Mudcrush Durtfeet
step
>>Click the |cRXP_PICK_Hoofprints|r on the ground
>>Click the |cRXP_PICK_Theramore Guard Badge|r on the wooden plank
>>Click the |cRXP_PICK_Black Shield|r hanging on the fireplace
.accept 1284 >> Accept Suspicious Hoofprints
.goto Dustwallow Marsh,29.705,47.645
.accept 1252 >> Accept Lieutenant Paval Reethe
.goto Dustwallow Marsh,29.832,48.243
.accept 1253 >> Accept The Black Shield
.goto Dustwallow Marsh,29.631,48.606
step
#completewith next
.goto The Barrens,44.213,91.217,0
.goto Thousand Needles,32.09,22.33
.zone Thousand Needles >> Travel to Thousand Needles
step
.goto Thousand Needles,30.725,24.346
>>Loot |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] from the ground next to the dwarf's corpse
.collect 5791,1 
step
#sticky
#label Journal
.use 5791 >>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] to start the quest|r
.accept 1100 >> Accept Lonebrow's Journal
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
#requires Journal
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
.target +Heralath Fallowbrook
.accept 1144 >> Accept Willix the Importer
.target +Willix the Importer
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
step
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
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> Travel to the Mirage Raceway
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
>>|cRXP_WARN_Don't accept the other quests yet|r
.accept 1110 >> Accept Rocket Car Parts
.target Kravel Koalbeard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
.accept 1104 >> Accept Salt Flat Venom
.target +Fizzle Brassbolts
.goto Thousand Needles,78.064,77.126 
.turnin 1179 >> Turn in The Brassbolts Brothers
.accept 1105 >> Accept Hardened Shells
.target +Wizzle Brassbolts
.goto Thousand Needles,78.143,77.120 
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
.mob +Salt Flats Scavenger
.mob +Salt Flats Vulture
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.mob +Sparkleshell Snapper
.mob +Sparkleshell Borer
.mob +Sparkleshell Tortoise
.goto Thousand Needles,82.6,54.8,0
.complete 1104,1 
.mob +Scorpid Reaver
.mob +Scorpid Terror
.goto Thousand Needles,71.8,73.4,0
.complete 1175,1 
.mob +Saltstone Basilisk
.goto Thousand Needles,73.5,59.9,0
.complete 1078,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1175,2 
.mob +Saltstone Crystalhide
.goto Thousand Needles,77.65,87.34,0
.complete 1175,3 
.mob +Saltstone Gazer
.goto Thousand Needles,77.65,87.34,0
.complete 1110,1 
.isOnQuest 1078
step
>>|cRXP_WARN_Run circles around The Shimmering Flats until all objectives are complete|r
>>Kill |cRXP_ENEMY_Salt Flats Scavengers|r and |cRXP_ENEMY_Salt Flats Vultures|r. Loot them for their |cRXP_LOOT_Bones|r
>>Kill |cRXP_ENEMY_Sparkleshell Tortoises|r, |cRXP_ENEMY_Sparkleshell Borers|r and |cRXP_ENEMY_Sparkleshell Snappers|r. Loot them for their |cRXP_LOOT_Shells|r
>>|cRXP_WARN_Don't go out of your way to collect all|r |cRXP_LOOT_Turtle Meat|r
>>Kill |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r and |cRXP_ENEMY_Saltstone Gazers|r
>>Open the |cRXP_PICK_Rocket Car Rubble|r. Loot it for the |cRXP_LOOT_Rocket Car Parts|r
#loop
.goto Thousand Needles,87.5,65.6,0
.goto Thousand Needles,82.6,54.8,0
.goto Thousand Needles,73.5,59.9,0
.goto Thousand Needles,71.8,73.4,0
.goto Thousand Needles,77.65,87.34,0
.complete 1176,1 
.mob +Salt Flats Scavenger
.mob +Salt Flats Vulture
.complete 1105,1 
.mob +Sparkleshell Snapper
.mob +Sparkleshell Borer
.mob +Sparkleshell Tortoise
.complete 1104,1 
.mob +Scorpid Reaver
.mob +Scorpid Terror
.complete 1175,1 
.mob +Saltstone Basilisk
.complete 1175,2 
.mob +Saltstone Crystalhide
.complete 1175,3 
.mob +Saltstone Gazer
.complete 1110,1 
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
.target +Fizzle Brassbolts
.goto Thousand Needles,78.064,77.126 
.turnin 1105 >> Turn in Hardened Shells
.target +Wizzle Brassbolts
.goto Thousand Needles,78.143,77.120 
step
#label TurninShimmering
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1110 >> Turn in Rocket Car Parts
.accept 1111 >> Accept Wharfmaster Dizzywig
.accept 5762 >> Accept Hemet Nesingwary
.target Kravel Koalbeard
step
#completewith next
.goto Tanaris,51.01,29.35,150 >> Travel to Tanaris
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,51.006,29.345
.fp Tanaris>> Get the Tanaris Flight Path
.target Bera Stonehammer
step
#completewith DWallow
.hs >> Hearth to Theramore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.isOnQuest 1135
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
.dungeon !WC
#sticky
#completewith ratchetTravel
>>Loot any |cRXP_ENEMY_Mirefin Murlocs|r you kill for |T134302:0|t[|cRXP_LOOT_Mirefin Heads|r] for a quest later
>>|cRXP_WARN_Don't aim to complete this objective now, you will finish later|r
.complete 1177,1 
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mirefin Oracle
.mob Mirefin Coastrunner
.mob Mirefin Muckdweller
.mob Mirefin Warrior
.mob Burgle Eye
step << !Warlock
#label ratchetTravel
.goto Dustwallow Marsh,54.25,9.20,80,0
.goto The Barrens,62.68,36.23
.zone The Barrens >> Travel north to The Barrens grinding your way up
.dungeon !WC
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
#xprate >1.99
.goto The Barrens,68.615,49.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc Macleod|r
.turnin 1719 >> Turn in The Affray
.target Klannoc Macleod
step << Warrior
#xprate <1.99
.goto The Barrens,68.615,49.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc Macleod|r
.turnin 1719 >> Turn in The Affray
.accept 1791 >> Accept The Windwatcher
.target Klannoc Macleod
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankdeposit 3721,3521,4521,5847 >> Deposit the following items into your bank:
>>|T133461:0|t[Farren's Report] 
>>|T134939:0|t[Cleverly Encrypted Letter] (If you found it) 
>>|T135234:0|t[Alterac Granite] 
>>|T134302:0|t[Mirefin Head] 
.target Fuzruckle
.target Zikkel
step << !Warlock
#season 0
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fp Ratchet>> Get the Ratchet Flight Path
.target Bragok
.dungeon !WC
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
#xprate <1.2
.goto The Barrens,63.352,38.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
.turnin 1111 >> Turn in Wharfmaster Dizzywig
.accept 1112 >> Accept Parts for Kravel
.turnin 1039 >> Turn in The Barrens Port
.accept 1040 >> Accept Passage to Booty Bay
.target Wharfmaster Dizzywig
.isQuestTurnedIn 1038
step
#label Wharfmaster
.goto The Barrens,63.352,38.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
.turnin 1111 >> Turn in Wharfmaster Dizzywig
.accept 1112 >> Accept Parts for Kravel
.target Wharfmaster Dizzywig
step
.goto The Barrens,63.677,38.618
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
.zone Stranglethorn Vale >> Take the boat to Booty Bay
]]);
