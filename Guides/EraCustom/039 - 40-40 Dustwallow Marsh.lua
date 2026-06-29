RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 40-50
#season 0,1
#classic
#tbc
#mop
<< Alliance
#xprate >1.99 << !Hunter
#name 40-40 Dustwallow Marsh
#next 41-41 Badlands
step
.dungeon RFD
#completewith HostEvil
.subzone 722 >> You will now run Razorfen Downs. Start looking for a group for it while you travel to the dungeon
step
.dungeon !RFD
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
.home >> Set your Hearthstone to Wetlands
.target Innkeeper Helbrek
step
#completewith next
.goto Wetlands,7.270,62.527,25 >> Travel to the Menethil Harbor Dock
step
.goto Wetlands,5.075,63.408
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
.zone Dustwallow Marsh >> Take the boat to Theramore
step << Warlock
#optional
.isOnQuest 4965
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.turnin 4965 >> Turn in Knowledge of the Orb of Orahil
.target Menara Voidrender
step << Warlock
#optional
.isOnQuest 4968
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.turnin 4968 >> Turn in Knowledge of the Orb of Orahil
.target Menara Voidrender
step << Warlock
#optional
.isQuestTurnedIn 4965
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.accept 1799 >> Accept Fragments of the Orb of Orahil
.target Menara Voidrender
step << Warlock
.isQuestTurnedIn 4968
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.accept 1799 >> Accept Fragments of the Orb of Orahil
.target Menara Voidrender
step << Warlock
.isOnQuest 4488
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 4488 >> Turn in Summon Felsteed
.target Strahad Farsan
step << Warlock
.isOnQuest 4487
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 4487 >> Turn in Summon Felsteed
.target Strahad Farsan
step << Warlock
.isQuestTurnedIn 4487,4488
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.accept 4490 >> Accept Summon Felsteed
.turnin 4490 >> Turn in Summon Felsteed
.target Strahad Farsan
step << Warlock
#xprate <1.99
#optional
.isQuestTurnedIn 4965
.goto The Barrens,62.641,35.304
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Wytula|r
.accept 4962 >> Accept Shard of a Felhound
.target Acolyte Wytula
step << Warlock
#xprate <1.99
.isQuestTurnedIn 4968
.goto The Barrens,62.641,35.304
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Wytula|r
.accept 4962 >> Accept Shard of a Felhound
.target Acolyte Wytula
step << Warlock
.dungeon !RFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.goto The Barrens,63.084,37.163
.fly Theramore>> Fly to Theramore
.target Bragok
step << Warlock
.dungeon RFD
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Thalanaar >> Fly to Thalanaar
.target Bragok
step << !Warlock
.dungeon RFD
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Thalanaar >> Fly to Thalanaar
.target Baldruc
step
.dungeon RFD
#label HostEvil
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Moonsinger|r
.accept 6626 >> Accept A Host of Evil
.target Myriam Moonsinger
step
.dungeon RFD
>>Kill |cRXP_ENEMY_Razorfen Battleguards|r, |cRXP_ENEMY_Razorfen Thornweavers|r and |cRXP_ENEMY_Death's Head Cultists|r
>>|cRXP_WARN_This quest is completed outside of the Instance|r
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31
.complete 6626,1 
.mob +Razorfen Battleguard
.complete 6626,2 
.mob +Razorfen Thornweaver
.complete 6626,3 
.mob +Death's Head Cultist
.isOnQuest 6626
step
.dungeon RFD
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Moonsinger|r
.turnin 6626 >> Turn in A Host of Evil
.target Myriam Moonsinger
.isQuestComplete 6626
step
.dungeon RFD
.goto The Barrens,49.255,93.077,0
.goto The Barrens,49.255,93.077,30,0
.goto 1414,53.26,71.18
.subzone 722,2 >> Enter Razorfen Downs
step
.dungeon RFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belnistrasz|r
>>|cRXP_WARN_Take the left path and stick left the entire way until you reach The Murder Pens to get to|r |cRXP_FRIENDLY_Belnistrasz|r
>>|cRXP_WARN_Do not accept Extinguishing the Idol until the rest of your party is ready as this begins the escort. Auto accept has been turned off for this step|r
.accept 3523 >> Accept Scourge of the Downs
.turnin 3523 >> Turn in Scourge of the Downs
.accept 3525,1 >> Accept Extinguishing the Idol
.target Belnistrasz
step
.dungeon RFD
>>Follow and protect |cRXP_FRIENDLY_Belnistrasz|r during his ritual
.complete 3525,1 
.target Belnistrasz
.isOnQuest 3525
step
.dungeon RFD
>>Click |cRXP_PICK_Belnistrasz's Brazier|r
.turnin 3525 >> Turn in Extinguishing the Idol
.isQuestComplete 3525
step
.dungeon RFD
>>Kill |cRXP_ENEMY_Amnennar the Coldbringer|r
.complete 3636,1 
.isOnQuest 3636
step
#completewith next
.dungeon RFD
.zone Wetlands >> Once you have completed RFD, leave your group and ghetto hearth to Wetlands
step
.dungeon RFD
#completewith next
.goto Wetlands,7.270,62.527,25 >> Travel to the Menethil Harbor Dock
step
.dungeon RFD
.goto Wetlands,5.075,63.408
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
.zone Dustwallow Marsh >> Take the boat to Theramore
step << Hunter
#optional
.goto Dustwallow Marsh,67.8,49.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jensen Farran|r
.vendor >> |cRXP_BUY_Delete all|r |T132382:0|t[Razor Arrows] |cRXP_BUY_you have and fill your quiver with|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_instead|r
.target Jensen Farran
.xp <40,1
step << Hunter
#optional
.goto Dustwallow Marsh,67.8,49.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jensen Farran|r
.vendor >> |cRXP_BUY_Restock on|r |T132382:0|t[Razor Arrows] |cRXP_BUY_if needed. Buy a couple stacks of|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_if you're close to level 40|r
.target Jensen Farran
.xp >40,1
step
.skill firstaid,<225,1
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.accept 6624 >> Accept Triage
.target Doctor Gustaf VanHowzen
step
.isOnQuest 6624
.goto Dustwallow Marsh,67.756,48.968
.use 16991 >> |cRXP_WARN_Channel the|r |T133682:0|t[Triage Bandage] |cRXP_WARN_on the |cRXP_FRIENDLY_Alliance Soldiers|r. Prioritize |cRXP_FRIENDLY_Critically Injured Soldiers|r first|r
.complete 6624,1 
.target Critically Injured Alliance Soldier
.target Badly Injured Alliance Soldier
.target Injured Alliance Soldier
step
.isQuestComplete 6624
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.turnin 6624 >> Turn in Triage
.target Doctor Gustaf VanHowzen
step
.isQuestTurnedIn 6624
.destroy 16991 >> Delete the |T133682:0|t[Triage Bandage]. You no longer need it
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.accept 1286 >> Accept The Deserters
.target Captain Garran Vimes
step
#label start
.isOnQuest 1260
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1260 >> Turn in Morgan Stern
.target Morgan Stern
step
#era/som
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.accept 1204 >> Accept Mudrock Soup and Bugs
.target Morgan Stern
step
#era/som
#completewith next
.isOnQuest 1204
.goto Dustwallow Marsh,64.89,42.25,0
.goto Dustwallow Marsh,63.14,36.98,0
.goto Dustwallow Marsh,61.02,19.41,0
.goto Dustwallow Marsh,59.67,17.69,0
>>Kill |cRXP_ENEMY_Mudrock Spikeshells|r and |cRXP_ENEMY_Mudrock Tortoises|r. Loot them for their |cRXP_LOOT_Tongues|r
.complete 1204,1 
.mob Mudrock Spikeshell
.mob Mudrock Tortoise
step
#season 0,1
#era/som
.isOnQuest 1177
.maxlevel 41
.goto Dustwallow Marsh,64.2,28.0,0
.goto Dustwallow Marsh,62.8,18.8,0
.goto Dustwallow Marsh,57.6,16.4,0
.goto Dustwallow Marsh,54.6,16.2,0
.goto Dustwallow Marsh,64.2,28.0,75,0
.goto Dustwallow Marsh,62.8,18.8,75,0
.goto Dustwallow Marsh,57.6,16.4,75,0
.goto Dustwallow Marsh,54.6,16.2,75,0
.goto Dustwallow Marsh,57.6,21.6,75,0
.goto Dustwallow Marsh,62.8,18.8,75,0
.goto Dustwallow Marsh,57.6,16.4,75,0
.goto Dustwallow Marsh,54.6,16.2,75,0
.goto Dustwallow Marsh,57.6,21.6
>>Kill the |cRXP_ENEMY_Mirefins|r. Loot them for their |cRXP_LOOT_Heads|r
>>|cRXP_WARN_Be careful not to swim into a |cRXP_ENEMY_Coral Shark|r that patrols the waters in the area. It can|r |T132152:0|t[Thrash] |cRXP_WARN_you for upwards of 1200 damage instantly|r
.complete 1177,1 
.mob Mirefin Coastrunner
.mob Mirefin Muckdweller
.mob Mirefin Murloc
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mirefin Warrior
.mob Mirefin Oracle
.unitscan Coral Shark
step
#era/som
.isOnQuest 1204
.goto Dustwallow Marsh,64.6,40.0,70,0
.goto Dustwallow Marsh,62.6,33.6,70,0
.goto Dustwallow Marsh,61.8,26.4,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
.goto Dustwallow Marsh,55.2,16.6,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
.goto Dustwallow Marsh,61.8,26.4,70,0
.goto Dustwallow Marsh,62.6,33.6,70,0
.goto Dustwallow Marsh,64.6,40.0,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
>>Kill |cRXP_ENEMY_Mudrock Spikeshells|r and |cRXP_ENEMY_Mudrock Tortoises|r. Loot them for their |cRXP_LOOT_Tongues|r
.complete 1204,1 
.mob Mudrock Spikeshell
.mob Mudrock Tortoise
step
.maxlevel 41
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1206 >> Accept Jarl Needs Eyes
.target "Swamp Eye" Jarl
step
.isOnQuest 1206
.goto Dustwallow Marsh,35.43,21.98,70,0
.goto Dustwallow Marsh,33.58,21.32,70,0
.goto Dustwallow Marsh,35.05,24.71,70,0
.goto Dustwallow Marsh,34.49,22.06
>>Kill |cRXP_ENEMY_Darkmist Spiders|r, |cRXP_ENEMY_Darkmist Silkspinners|r, |cRXP_ENEMY_Darkmist Lurkers|r and |cRXP_ENEMY_Darkmist Recluses|r. Loot them for their |cRXP_LOOT_Eyes|r
>>Be careful as all the spiders |T136016:0|t[Poison] and there are |T132320:0|t[Stealthed] Darkmist Lurkers inside the mine
.complete 1206,1 
.mob Darkmist Recluse
.mob Darkmist Spider
.mob Darkmist Silkspinner
.mob Darkmist Lurker
step
.maxlevel 41
.goto Dustwallow Marsh,46.881,17.518
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
>>|cRXP_WARN_This will start an escort quest|r
.accept 1222 >> Accept Stinky's Escape
.target "Stinky" Ignatz
step
.isOnQuest 1222
.goto Dustwallow Marsh,48.76,24.49,0
>>Follow |cRXP_FRIENDLY_"Stinky" Ignatz|r through the Marshlands
.complete 1222,1 
.target "Stinky" Ignatz
step
.isQuestComplete 1206
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.turnin 1206 >> Turn in Jarl Needs Eyes
.target "Swamp Eye" Jarl
step
#optional
.isQuestTurnedIn 1206
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1203 >> Accept Jarl Needs a Blade
.turnin 1203 >> Turn in Jarl Needs a Blade
.target "Swamp Eye" Jarl
.itemcount 3853,1
step
#completewith end
.destroy 5884 >> Delete any extra |T133884:0|t[Unpopped Darkmist Eyes] you still have
step
#softcoreserver
#hardcore
.isQuestTurnedIn 1264
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
>>|cRXP_WARN_IF YOU CHOOSE TO ACCEPT THE FOLLOW UP QUEST YOU WILL BE PVP FLAGGED! MEANING HORDE PLAYERS CAN KILL YOU! PROCEED AT YOUR OWN RISK!|r
>>|cRXP_WARN_You will NOT be PvP Flagged for turning in this current quest. Auto accept has been turned OFF for the follow up. Skip the follow up if you wish to not complete it|r
.turnin 1266 >> Turn in The Missing Diplomat
.accept 1324,1 >> Accept The Missing Diplomat
.target Private Hendel
step
#softcoreserver
#softcore
.isQuestTurnedIn 1264
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
.turnin 1266 >> Turn in The Missing Diplomat
.accept 1324,1 >> Accept The Missing Diplomat
.target Private Hendel
step
#hardcoreserver
.isQuestTurnedIn 1264
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
>>|cRXP_WARN_Blizzard has adjusted this quest so it will no longer PvP Flag you on Official Hardcore Servers|r
.turnin 1266 >> Turn in The Missing Diplomat
.accept 1324,1 >> Accept The Missing Diplomat
.target Private Hendel
step
.isOnQuest 1324
.goto Dustwallow Marsh,45.24,24.65
>>Defeat |cRXP_ENEMY_Private Hendel|r. He will attack you along with 2 |cRXP_ENEMY_Theramore Sentries|r
>>They will both reset once you subdue |cRXP_ENEMY_Private Hendel|r
.complete 1324,1 
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
.isQuestComplete 1177
.goto Dustwallow Marsh,35.154,38.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
.turnin 1177 >> Turn in Hungry
.target Mudcrush Durtfeet
step
#season 0,1
.abandon 1177 >> Abandon Hungry if you haven't completed this quest
step
#completewith BalosJacken
.goto Dustwallow Marsh,35.74,53.99,45 >> Travel to Lost Point tower
step
#completewith next
.goto Dustwallow Marsh,36.09,54.30
+Attack |cRXP_ENEMY_Balos Jacken|r to 10% health to make him submit
step
#label BalosJacken
.goto Dustwallow Marsh,36.09,54.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balos Jacken|r
.turnin 1286 >> Turn in The Deserters
.accept 1287 >> Accept The Deserters
.target Balos Jacken
step
.isOnQuest 1187
.goto Dustwallow Marsh,54.071,56.490
>>Open the |cRXP_PICK_Gizmorium Shipping Crate|r. Loot it for the |cRXP_LOOT_Seaforium Booster|r
.complete 1187,1 
step
#softcore
+Grind until your Hearthstone is <10min
.cooldown item,6948,<600
step
#softcore
#completewith 513
.goto Dustwallow Marsh,66.336,45.469
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
#hardcore
#completewith 513
.goto Dustwallow Marsh,66.336,45.469
.subzone 513 >> Grind your way back to Theramore Isle
step
.isQuestComplete 1222
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1222 >> Turn in Stinky's Escape
.target Morgan Stern
step
#era/som
.isQuestComplete 1204
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1204 >> Turn in Mudrock Soup and Bugs
.accept 1258 >> Accept ... and Bugs
.target Morgan Stern
step
#era/som
.isQuestTurnedIn 1204
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.accept 1258 >> Accept ... and Bugs
.target Morgan Stern
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.goto Dustwallow Marsh,66.00,45.50
.stable >> Stable your pet
.target Michael
step
.goto Dustwallow Marsh,68.212,48.620
.target Captain Garran Vimes
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1287 >> Turn in The Deserters
step
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Gadgetzan >> Fly to Tanaris
.target Baldruc
step << Hunter
.goto Tanaris,54.07,32.21
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Scorpid Hunter|r to tame it|r 
.train 2976 >>|cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 6)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Scorpid Hunter
step << Hunter
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laziphus|r
>>Abandon the |cRXP_ENEMY_Scorpid Hunter|r
.stable >> Withdraw your main pet
.target Laziphus
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> Travel to The Shimmering Flats
step
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.accept 1106 >> Accept Martek the Exiled
.target Fizzle Brassbolts
step
#xprate >1.99
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1112 >> Turn in Parts for Kravel
.timer 15,Parts for Kravel RP
.target Kravel Koalbeard
.isOnQuest 1112
step
#xprate >1.99
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1183 >> Turn in Goblin Sponsorship
.accept 1186 >> Accept The Eighteenth Pilot
.target Pozzik
step
#xprate >1.99
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1186 >> Turn in The Eighteenth Pilot
.accept 1187 >> Accept Razzeric's Tweaking
.target Razzeric
step
#xprate >1.99
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1114 >> Accept Delivery to the Gnomes
.target Kravel Koalbeard
step
#xprate >1.99
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.turnin 1114 >> Turn in Delivery to the Gnomes
.target Fizzle Brassbolts
step << Hunter
#era/som
.isQuestComplete 1107
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.turnin 1107 >> Turn in Encrusted Tail Fins
.target Wizzle Brassbolts
step
.isOnQuest 1117
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1117 >> Turn in Rumors for Kravel
.timer 10,Rumors for Kravel RP
.accept 1118 >> Accept Back to Booty Bay
.target Kravel Koalbeard
step
.isQuestTurnedIn 1117
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1118 >> Accept Back to Booty Bay
.target Kravel Koalbeard
step
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.target Razzeric
.turnin 1187 >> Turn in Razzeric's Tweaking
.isQuestComplete 1187
step
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.target Razzeric
.accept 1188 >> Accept Safety First
.isQuestTurnedIn 1187
step
#completewith next
.hs >> Hearth to Menethil
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#label end
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
]]);
