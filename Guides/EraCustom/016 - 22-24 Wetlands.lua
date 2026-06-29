RXPGuides.RegisterGuide([[
#season 1 
#version 23
#group RestedXP Alliance 20-30
#version 23
#classic
#tbc
#mop
<< Alliance
#name 22-24 Wetlands
#displayname 22-24 Wetlands << SoD
#next 24-27 Duskwood/Redridge
step
#xprate <1.5 << Rogue
#optional
#completewith next
>>Jump off the boat when it's closest to Menethil Harbor's shore
.goto Wetlands,8.509,55.697,70 >> Swim toward Menethil Harbor
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.accept 484 >> Accept Young Crocolisk Skins
.target James Halloran
step
.goto Wetlands,7.95,56.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dewin Shimmerdawn|r
.vendor 1453 >> |cRXP_WARN_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_WARN_that are available|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Dewin Shimmerdawn|r doesn't have any|r
.target Dewin Shimmerdawn
step
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.accept 279 >> Accept Claws from the Deep
.target Karl Boran
step << NightElf
#xprate <1.5 << Rogue
#optional << Rogue/Warrior
.goto Wetlands,9.49,59.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fp Wetlands>> Get the Wetlands flight path
.target Shellei Brondir
.dungeon !DM
step << NightElf
#xprate <1.5 << NightElf Rogue
#optional
.goto Wetlands,9.49,59.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fp Wetlands>> Get the Wetlands flight path
.target Shellei Brondir
.dungeon DM
step
.goto Wetlands,10.89,59.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 463 >> Accept The Greenwarden
.target First Mate Fitzsimmons
step
#xprate <1.5 << NightElf Rogue
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r inside
.home >> Set your Hearthstone to Menethil Harbor
.target Innkeeper Helbrek
step
.goto Wetlands,10.843,60.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r upstairs
.turnin 942 >> Turn in The Absent Minded Prospector
.accept 943 >> Accept The Absent Minded Prospector
.target Archaeologist Flagongut
.isOnQuest 942
step
#optional
.goto Wetlands,10.843,60.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r upstairs
.accept 943 >> Accept The Absent Minded Prospector
.target Archaeologist Flagongut
step
.goto Wetlands,11.796,57.991
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
.accept 470 >> Accept Digging Through the Ooze
.target Sida
step
.goto Wetlands,10.84,55.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harlo Barnaby|r
.accept 472 >> Accept Fall of Dun Modr
.target Harlo Barnaby
.xp <25,1
.dungeon SFK
step
.goto Wetlands,10.4,56.0,15,0
.goto Wetlands,10.1,56.9,15,0
.goto Wetlands,10.6,57.2,15,0
.goto 1437,10.760,56.721
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
.vendor 1448 >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
.target Neal Allen
.money <0.08
.bronzetube
step
.goto Wetlands,11.458,52.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.accept 305 >> Accept In Search of The Excavation Team
.target Tarrel Rockweaver
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
.complete 484,1 
.mob Young Wetlands Crocolisk
step
#sticky
#completewith GobblerHead
>>Keep all the |T134304:0|t[|cRXP_LOOT_Murloc Fins|r] you may loot. You will need them for a quest in Redridge
>>Don't go out of your way to farm them
.collect 1468,8 
step
#sticky
#label Gobbler
#completewith GobblerMurlocs
#loop
.goto 1437,14.038,42.003,0
.goto 1437,16.871,39.872,0
.goto 1437,18.443,39.750,0
.goto 1437,14.038,42.003,60,0
.goto 1437,16.871,39.872,60,0
.goto 1437,18.443,39.750,60,0
>>Kill |cRXP_ENEMY_Gobbler|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_He patrols and has 3 different spawnpoints around Bluegill Marsh|r
.complete 279,2 
.unitscan Gobbler
step
#loop
#label GobblerMurlocs
.goto 1437,20.536,41.104,0
.goto 1437,15.636,41.235,0
.goto 1437,18.174,39.649,0
.goto 1437,20.536,41.104,60,0
.goto 1437,17.665,41.331,60,0
.goto 1437,15.636,41.235,60,0
.goto 1437,13.124,41.109,60,0
.goto 1437,13.314,38.082,60,0
.goto 1437,15.286,38.732,60,0
.goto 1437,18.174,39.649,60,0
>>Kill |cRXP_ENEMY_Bluegill Murlocs|r
.complete 279,1 
.mob Bluegill Murloc
.unitscan Gobbler
step
#loop
#label GobblerHead
.goto 1437,14.038,42.003
.goto 1437,16.871,39.872,0
.goto 1437,18.443,39.750,0
.goto 1437,14.038,42.003,60,0
.goto 1437,16.871,39.872,60,0
.goto 1437,18.443,39.750,60,0
>>Kill |cRXP_ENEMY_Gobbler|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_He patrols and has 3 different spawnpoints around Bluegill Marsh|r
.complete 279,2 
.unitscan Gobbler
step
#optional
#completewith WhelgarStart
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
.complete 484,1 
.mob Young Wetlands Crocolisk
.subzoneskip 118
step
#optional
#requires Gobbler
#completewith WhelgarStart
>>Kill all |cRXP_ENEMY_Black Oozes|r you encounter as you're questing. Loot them for |cRXP_LOOT_Sida's Bag|r
>>|cRXP_WARN_Don't go out of your way to complete this quest|r
.complete 470,1 
.mob Black Ooze
step
#optional
#requires Gobbler
#label WhelgarStart
#completewith Search
.goto 1437,34.110,41.096,40,0
.goto 1437,36.893,43.703,40,0
.goto 1437,37.249,47.751,40,0
.goto 1437,38.071,50.166,20 >> Travel toward Whelgar's Excavation Site
step
#xprate <1.5 << NightElf Rogue/NightElf Warrior
#requires Gobbler
.goto 1437,38.287,50.883,10,0
.goto 1437,37.844,51.291
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.accept 294 >>Accept Ormer's Revenge
.target Ormer Ironbraid
step
#xprate <1.5 << NightElf Rogue/NightElf Warrior
#loop
.goto Wetlands,22.46,50.45,0
.goto Wetlands,29.95,44.03,0
.goto Wetlands,22.46,50.45,50,0
.goto Wetlands,23.94,52.70,50,0
.goto Wetlands,26.01,48.83,50,0
.goto Wetlands,29.95,44.03,50,0
>>Kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mottled Screechers|r cast|r |T132366:0|t[Call For Help] |cRXP_WARN_ (Aggros nearby |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r in a 75 yard radius at <50% health)|r
.complete 294,1 
.mob +Mottled Raptor
.complete 294,2 
.mob +Mottled Screecher
.complete 943,1 
.disablecheckbox
step
#xprate <1.5 << NightElf Rogue/NightElf Warrior
#loop
.goto Wetlands,22.46,50.45,0
.goto Wetlands,29.95,44.03,0
.goto Wetlands,22.46,50.45,50,0
.goto Wetlands,23.94,52.70,50,0
.goto Wetlands,26.01,48.83,50,0
.goto Wetlands,29.95,44.03,50,0
>>Kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mottled Screechers|r cast|r |T132366:0|t[Call For Help] |cRXP_WARN_ (Aggros nearby |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r in a 75 yard radius at <50% health)|r
.xp 22+12000 >> Grind to 12000+/27300xp
.complete 943,1 
.disablecheckbox
.mob Mottled Raptor
.mob Mottled Screecher
.dungeon !SFK
step
#xprate <1.5 << NightElf Rogue/NightElf Warrior
#optional
#label WhelgarStart
#completewith next
.goto 1437,34.110,41.096,40,0
.goto 1437,36.893,43.703,40,0
.goto 1437,37.249,47.751,40,0
>>Kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r en route back to |cRXP_FRIENDLY_Ormer Ironbraid|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
.goto 1437,38.071,50.166,20 >> Travel toward |cRXP_FRIENDLY_Ormer Ironbraid|r
.complete 943,1 
.disablecheckbox
step
#xprate <1.5 << NightElf Rogue/NightElf Warrior
.goto 1437,38.287,50.883,10,0
.goto 1437,37.844,51.291
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 294 >>Turn in Ormer's Revenge
.target Ormer Ironbraid
step << Priest/Hunter
#xprate >1.59
.goto 1437,37.844,51.291
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.accept 295 >>Accept in Ormer's Revenge
.target Ormer Ironbraid
step << Priest/Hunter
#xprate >1.59
#optional
#completewith SoDOrmerEnd
.goto 1437,34.110,41.096,40,0
.goto 1437,36.893,43.703,40,0
.goto 1437,37.249,47.751,40,0
>>Kill |cRXP_ENEMY_Mottled Razormaws|r and |cRXP_ENEMY_Mottled Scytheclaws|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
.complete 943,1 
.isOnQuest 943
step << Priest/Hunter
#xprate >1.59
.goto Wetlands,34.87,48.11
>>Kill |cRXP_ENEMY_Mottled Scytheclaw|r and |cRXP_ENEMY_Mottled Razormaws|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
>>|cRXP_WARN_This quest is HARD as the mobs are much higher level than you but the weapon you get as a reward is well worth the effort|r
>>|cRXP_WARN_I recommend using the spot from a video linked below to abuse mob pathing which will make doing the quest significantly easier|r
.link https://youtu.be/irmy9vPM9Lg >> Click here for a reference video
.complete 295,1 
.mob +Mottled Scytheclaw
.complete 295,2 
.mob +Mottled Razormaw
step << Priest/Hunter
#xprate >1.59
.goto 1437,37.844,51.291
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 295 >>Turn in Ormer's Revenge
.accept 296 >>Accept in Ormer's Revenge
.target Ormer Ironbraid
step << Priest/Hunter
#xprate >1.59
#label SoDOrmerEnd
.goto Wetlands,31.410,49.518,30,0
.goto Wetlands,33.25,51.50
>>Kill |cRXP_ENEMY_Sarltooth|r. Loot him for his |cRXP_LOOT_Talon|r. |cRXP_WARN_He is usually on the hill above the main excavation site but can sometimes patrol down|r
>>|cRXP_WARN_Be careful as he can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
>>|cRXP_WARN_This quest is VERY HARD as he is level 29. Use the pathing spot from the previous quest to be able to kite him indefinitely|r
.link https://youtu.be/zIOV0XrxB80 >> Click here for a reference video
.complete 296,1 
.unitscan Sarltooth
step << Priest/Hunter
#xprate >1.59
.goto 1437,37.844,51.291
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 296,1 >>Turn in Ormer's Revenge << Hunter
.turnin 296,3 >>Turn in Ormer's Revenge << Priest
.target Ormer Ironbraid
step
#xprate <1.5 << NightElf Rogue/NightElf Warrior
#sticky
#label Fossil
.goto Wetlands,38.858,52.208
>>Loot |cRXP_LOOT_Flagongut's Fossil|r on the ground
.complete 943,2 
.itemcount 5233,1 
.isOnQuest 943
step
#label Search
.goto Wetlands,38.81,52.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrin Rockweaver|r inside the cave
.turnin 305 >> Turn in In Search of The Excavation Team
.accept 306 >> Accept In Search of The Excavation Team
.target Merrin Rockweaver
step << skip 
#optional
#requires Fossil
#completewith next
.goto Wetlands,38.99,52.60
.goto Wetlands,49.47,41.49,50 >>|cRXP_WARN_Jump on top of the Mushroom in the cave. Logout Skip to central Wetlands|r
step
#requires Fossil
.goto Wetlands,49.92,39.37
>>Talk to |cRXP_FRIENDLY_Einar|r
.accept 469 >> Accept Daily Delivery
.target Einar Stonegrip
step
#xprate <1.5 << NightElf Rogue/Priest/Hunter/Warrior
#loop
.goto Wetlands,43.39,28.57,0
.goto Wetlands,46.55,24.18,0
.goto Wetlands,44.20,25.39,0
.goto Wetlands,43.39,28.57,30,0
.goto Wetlands,43.01,26.05,30,0
.goto Wetlands,43.50,24.49,30,0
.goto Wetlands,44.96,24.27,30,0
.goto Wetlands,46.55,24.18,30,0
.goto Wetlands,47.67,25.43,30,0
.goto Wetlands,46.23,26.56,30,0
.goto Wetlands,44.20,25.39,30,0
>>Kill |cRXP_ENEMY_Monstrous Oozes|r, |cRXP_ENEMY_Crimson Oozes|r, and |cRXP_ENEMY_Black Oozes|r. Loot them for |cRXP_LOOT_Sida's Bag|r
.complete 470,1 
.mob Monstrous Ooze
.mob Crimson Ooze
.mob Black Ooze
.dungeon !SFK
step << !NightElf
#optional
#completewith SFKStart
+|cRXP_WARN_Start assembling a group for Shadowfang Keep|r
.zoneskip Wetlands,1
.dungeon SFK
step
#season 0,1 << Hunter
#optional
#completewith GreenwardenEnd << !sod/Warrior/Rogue
#completewith Greenwarden << sod/!Warrior/!Rogue
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
.complete 484,1 
.mob Young Wetlands Crocolisk
step
#sticky
#label Minded
.abandon 943 >> Abandon The Absent Minded Prospector as you weren't lucky enough with the drops
.itemcount 5233,<1 
.itemcount 5234,<1 
step
#xprate <1.5 << NightElf Hunter/Priest
.goto Wetlands,56.32,40.41
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 463 >> Turn in The Greenwarden
.accept 276 >> Accept Tramping Paws
.target Rethiel the Greenwarden
.isOnQuest 463
.xp >23+18120,1 
step << NightElf Hunter/Priest
#label Greenwarden
#xprate >1.59
.goto Wetlands,56.32,40.41
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 463 >> Turn in The Greenwarden
.target Rethiel the Greenwarden
.isOnQuest 463
step
#optional
#xprate <1.5 << NightElf Hunter/Priest
.goto Wetlands,56.32,40.41
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.accept 276 >> Accept Tramping Paws
.target Rethiel the Greenwarden
.isQuestTurnedIn 463
.xp >23+19770,1 
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Black Oozes|r. Loot them for |cRXP_LOOT_Sida's Bag|r
.complete 470,1 
.subzoneskip 1019,1 
.mob Black Ooze
.dungeon SFK
step
#loop
#label Mosshide
#requires Minded
#xprate <1.5 << Nightelf Hunter/Priest
.goto Wetlands,63.96,63.47,0
.goto Wetlands,62.66,69.50,0
.goto Wetlands,55.70,75.19,0
.goto Wetlands,61.73,72.32,0
.goto Wetlands,63.96,63.47,60,0
.goto Wetlands,62.66,69.50,60,0
.goto Wetlands,55.70,75.19,60,0
.goto Wetlands,61.73,72.32,60,0
.goto Wetlands,62.66,69.50,60,0
.goto Wetlands,63.96,63.47,60,0
>>Kill |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mongrels|r
.complete 276,1 
.mob +Mosshide Gnoll
.complete 276,2 
.mob +Mosshide Mongrel
.isOnQuest 276
step << NightElf Hunter
#xprate >1.59
.goto Wetlands,54.8,35.1,0
.goto Wetlands,52.5,33.4,0
.goto Wetlands,51.0,29.3,0
.goto Wetlands,46.1,30.1,0
.goto Wetlands,47.9,35.4,0
.goto Wetlands,46.7,31.3,0
.goto Wetlands,55.3,45.6,0
.goto Wetlands,59.0,49.4,0
.goto Wetlands,61.3,53.8
>>Try to finish off killing |cRXP_ENEMY_Young Wetlands Crocolisks|r for their |cRXP_LOOT_Young Crocolisk Skin|r. There should be a lot of them north and south of the |cRXP_FRIENDLY_Greenwarden|r near bodies of water
>>Skip this step if you can't find any
.complete 484,1 
.mob Young Wetlands Crocolisk
step << NightElf Priest
#xprate >1.59
.goto Wetlands,54.8,35.1,0
.goto Wetlands,52.5,33.4,0
.goto Wetlands,51.0,29.3
.goto Wetlands,46.1,30.1,0
.goto Wetlands,47.9,35.4,0
.goto Wetlands,46.7,31.3,0
>>Try to finish off killing |cRXP_ENEMY_Young Wetlands Crocolisks|r for their |cRXP_LOOT_Young Crocolisk Skin|r. There should be a lot of them north of the |cRXP_FRIENDLY_Greenwarden|r
.complete 484,1 
.mob Young Wetlands Crocolisk
step
#xprate <1.5 << NightElf Hunter/Priest
#optional
#completewith next
>>Kill |cRXP_ENEMY_Black Oozes|r. Loot them for |cRXP_LOOT_Sida's Bag|r
.complete 470,1 
.mob Black Ooze
.dungeon SFK
step
#label GreenwardenEnd
#xprate <1.5 << NightElf Hunter/Priest
.goto Wetlands,56.32,40.41
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 276 >> Turn in Tramping Paws
.target Rethiel the Greenwarden
.isQuestComplete 276
step << NightElf Rogue/Hunter/Priest
#xprate >1.59
#sticky
#completewith next
.abandon 470 >> Abandon The Digging Through the Ooze as you weren't lucky enough with the drops
.itemcount 3349,<1 
step
#optional
#completewith WetlandsEnd
.abandon 276 >> Abandon Tramping Paws
step << !NightElf
#loop
.goto 1437,53.356,38.557,0
.goto 1437,54.115,31.010,0
.goto 1437,50.289,35.940,0
.goto 1437,53.356,38.557,60,0
.goto 1437,52.196,36.102,60,0
.goto 1437,51.865,34.860,60,0
.goto 1437,53.381,32.796,60,0
.goto 1437,54.115,31.010,60,0
.goto 1437,52.798,30.872,60,0
.goto 1437,50.262,31.756,60,0
.goto 1437,50.289,35.940,60,0
.goto 1437,55.061,45.100,60,0
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
.complete 484,1 
.dungeon SFK
step
#loop
#xprate <1.5 << NightElf Hunter/Priest
.goto 1437,56.706,47.915,0
.goto 1437,59.972,52.612,0
.goto 1437,62.595,61.606,0
.goto 1437,65.784,69.568,0
.goto 1437,62.253,75.681,0
.goto 1437,56.706,47.915,60,0
.goto 1437,58.919,48.660,60,0
.goto 1437,58.433,50.190,60,0
.goto 1437,58.520,52.021,60,0
.goto 1437,59.972,52.612,60,0
.goto 1437,61.072,53.475,60,0
.goto 1437,61.902,54.096,60,0
.goto 1437,62.189,56.721,60,0
.goto 1437,62.388,60.213,60,0
.goto 1437,62.595,61.606,60,0
.goto 1437,61.006,61.751,60,0
.goto 1437,61.914,63.463,60,0
.goto 1437,63.485,65.316,60,0
.goto 1437,64.053,65.385,60,0
.goto 1437,65.784,69.568,60,0
.goto 1437,63.933,69.759,60,0
.goto 1437,63.810,71.935,60,0
.goto 1437,64.048,73.704,60,0
.goto 1437,63.624,75.569,60,0
.goto 1437,62.253,75.681,60,0
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
.complete 484,1 
.dungeon !SFK << !NightElf
step
#season 1 << Priest/Rogue/Hunter
#loop
.goto Wetlands,43.39,28.57,0
.goto Wetlands,46.55,24.18,0
.goto Wetlands,44.20,25.39,0
.goto Wetlands,43.39,28.57,30,0
.goto Wetlands,43.01,26.05,30,0
.goto Wetlands,43.50,24.49,30,0
.goto Wetlands,44.96,24.27,30,0
.goto Wetlands,46.55,24.18,30,0
.goto Wetlands,47.67,25.43,30,0
.goto Wetlands,46.23,26.56,30,0
.goto Wetlands,44.20,25.39,30,0
>>Kill |cRXP_ENEMY_Monstrous Oozes|r, |cRXP_ENEMY_Crimson Oozes|r, and |cRXP_ENEMY_Black Oozes|r. Loot them for |cRXP_LOOT_Sida's Bag|r
.complete 470,1 
.mob Monstrous Ooze
.mob Crimson Ooze
.mob Black Ooze
.dungeon !SFK
step
#xprate <1.5 << NightElf
#loop
.goto Wetlands,63.96,63.47,0
.goto Wetlands,62.66,69.50,0
.goto Wetlands,55.70,75.19,0
.goto Wetlands,61.73,72.32,0
.goto Wetlands,63.96,63.47,60,0
.goto Wetlands,62.66,69.50,60,0
.goto Wetlands,55.70,75.19,60,0
.goto Wetlands,61.73,72.32,60,0
.goto Wetlands,62.66,69.50,60,0
.goto Wetlands,63.96,63.47,60,0
>>Kill |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mongrels|r
.xp 23+3170 >> Grind to 3170+/29400xp
.mob Mosshide Gnoll
.mob Mosshide Mongrel
.dungeon !SFK
.itemcount 5233,1 
.itemcount 5234,1 
step
#loop
#label GrindEnd
#xprate <1.5 << NightElf
.goto Wetlands,63.96,63.47,0
.goto Wetlands,62.66,69.50,0
.goto Wetlands,55.70,75.19,0
.goto Wetlands,61.73,72.32,0
.goto Wetlands,63.96,63.47,60,0
.goto Wetlands,62.66,69.50,60,0
.goto Wetlands,55.70,75.19,60,0
.goto Wetlands,61.73,72.32,60,0
.goto Wetlands,62.66,69.50,60,0
.goto Wetlands,63.96,63.47,60,0
>>Kill |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mongrels|r
.xp 23+7970 >> Grind to 7970+/29400xp
.mob Mosshide Gnoll
.mob Mosshide Mongrel
.dungeon !SFK
.itemcount 5233,<1 
.itemcount 5234,<1 
step << skip 
#xprate <1.5
#optional
#completewith next
.goto 1437,63.938,78.569
.goto 1432,32.187,46.952,30 >>|cRXP_WARN_Jump on top of the mushroom at the back of the cave. Perform a Logout Skip by logging out and back in|r
.zoneskip Loch Modan
step << NightElf
#xprate <1.5
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
.fp Loch Modan >> Get the Loch Modan flight path
.target Thorgrum Borrelson
step << NightElf
#xprate <1.5
#optional
#label IronforgeTravel1
#completewith IronforgeFP
.goto 1432,27.690,65.140,40,0
.goto 1432,22.954,70.370,40,0
.goto 1432,21.479,68.367,40,0
.goto 1432,21.380,66.295,40,0
.goto 1432,20.683,64.222,40,0
.goto 1432,16.357,58.540,40 >> Travel to Dun Morogh
.zoneskip Ironforge
step << skip 
#xprate <1.5
#optional
#requires IronforgeTravel1
#label IronforgeTravel2
#completewith IronforgeFP
.goto 1426,84.241,51.367,30,0
.goto 1426,82.249,53.385,30,0
.goto 1426,70.670,56.641,20 >> Enter the Gol'Bolar Quarry
.zoneskip Ironforge
step << skip 
#xprate <1.5
#optional
#requires IronforgeTravel2
#completewith IronforgeFP
.goto 1426,70.604,54.869
.zone Ironforge >>|cRXP_WARN_Jump on top of the shredder machine inside the cave. Perform a Logout Skip by logging out and back in|r
.link https://www.youtube.com/watch?v=kbUSo62CfAM >> CLICK HERE for reference
step << NightElf
#xprate <1.5
#label IronforgeFP
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fp Ironforge >> Get the Ironforge flight path
.target Gryth Thurden
step
#xprate <1.5 << NightElf
.goto Wetlands,10.69,60.95
.hs >> Hearth to Menethil Harbor
.subzoneskip 150
.subzoneskip 2103
.subzoneskip 2104
.zoneskip Loch Modan
.dungeon !SFK << !NightElf
step << Druid
#optional
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
#label MoongladeTrain
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 1075 >> Train your class spells
.target Loganaar
.xp <24,1
step << NightElf !Rogue
#xprate >1.59
#optional
#completewith Search
.hs >> Hearth to Menethil Harbor
step
.goto Wetlands,10.843,60.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r upstairs
.turnin 943 >> Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
.dungeon !SFK << !NightElf
.isQuestComplete 943
step
.goto Wetlands,11.796,57.991
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
.turnin 470 >> Turn in Digging Through the Ooze
.target Sida
.dungeon !SFK << !NightElf
.isQuestComplete 470
step
#label Search
.goto Wetlands,11.458,52.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.turnin 306 >> Turn in In Search of The Excavation Team
.target Tarrel Rockweaver
.dungeon !SFK
step
#xprate <1.5 << NightElf
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >> Turn in Claws from the Deep
.accept 281 >> Accept Reclaiming Goods
.target Karl Boran
.dungeon SFK
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.turnin 484 >> Turn in Young Crocolisk Skins
.turnin 469 >> Turn in Daily Delivery
.target James Halloran
.dungeon !SFK << !NightElf
step << Mage
.goto 1437,8.300,56.427
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkan Armonis|r
>>|cRXP_BUY_Buy up to 4|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from him|r
.collect 17031,4 
.target Falkan Armonis
.dungeon !SFK
step
#xprate <1.5 << NightElf
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >> Turn in Claws from the Deep
.accept 281 >> Accept Reclaiming Goods
.target Karl Boran
.xp >23+25900,1
.dungeon !SFK
step
#optional
#xprate <1.5 << NightElf
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >> Turn in Claws from the Deep
.target Karl Boran
.dungeon !SFK
step << NightElf
.goto Wetlands,11.458,52.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.turnin 306 >> Turn in In Search of The Excavation Team
.target Tarrel Rockweaver
.dungeon SFK
step << NightElf
#optional
#completewith SFKStart
+|cRXP_WARN_Start assembling a group for Shadowfang Keep|r
.zoneskip Wetlands,1
.dungeon SFK
step
.goto Wetlands,13.513,41.384
#xprate <1.5 << NightElf
>>Click the |cRXP_PICK_Damaged Crate|r on the ground
.turnin 281 >> Turn in Reclaiming Goods
.accept 284 >> Accept The Search Continues
.isOnQuest 281
.dungeon !SFK << !NightElf
step
#optional
#xprate <1.5 << NightElf
.goto Wetlands,13.513,41.384
>>Click the |cRXP_PICK_Damaged Crate|r on the ground
.accept 284 >> Accept The Search Continues
.isQuestTurnedIn 281
.dungeon !SFK << !NightElf
step
.goto Wetlands,13.608,38.214
#xprate <1.5 << NightElf
>>Click the |cRXP_PICK_Sealed Barrel|r on the ground
.turnin 284 >> Turn in The Search Continues
.accept 285 >> Accept Search More Hovels
.isOnQuest 284
.dungeon !SFK << !NightElf
step
#optional
#xprate <1.5 << NightElf
.goto Wetlands,13.608,38.214
>>Click the |cRXP_PICK_Sealed Barrel|r on the ground
.accept 285 >> Accept Search More Hovels
.isQuestTurnedIn 284
.dungeon !SFK << !NightElf
step
.goto Wetlands,13.945,34.809
#xprate <1.5 << NightElf
>>Click the |cRXP_PICK_Half-buried Barrel|r on the ground
.turnin 285 >> Turn in Search More Hovels
.accept 286 >> Accept Return the Statuette
.isOnQuest 285
.dungeon !SFK << !NightElf
step
#optional
#xprate <1.5 << NightElf
.goto Wetlands,13.945,34.809
>>Click the |cRXP_PICK_Half-buried Barrel|r on the ground
.accept 286 >> Accept Return the Statuette
.isQuestTurnedIn 285
.dungeon !SFK << !NightElf
step
#loop
#label SFKStart
.goto Wetlands,43.39,28.57,0
.goto Wetlands,46.55,24.18,0
.goto Wetlands,44.20,25.39,0
.goto Wetlands,43.39,28.57,30,0
.goto Wetlands,43.01,26.05,30,0
.goto Wetlands,43.50,24.49,30,0
.goto Wetlands,44.96,24.27,30,0
.goto Wetlands,46.55,24.18,30,0
.goto Wetlands,47.67,25.43,30,0
.goto Wetlands,46.23,26.56,30,0
.goto Wetlands,44.20,25.39,30,0
>>Kill |cRXP_ENEMY_Monstrous Oozes|r, |cRXP_ENEMY_Crimson Oozes|r, and |cRXP_ENEMY_Black Oozes|r. Loot them for |cRXP_LOOT_Sida's Bag|r
.complete 470,1 
.mob Monstrous Ooze
.mob Crimson Ooze
.mob Black Ooze
.isOnQuest 470
.dungeon SFK
step
.dungeon SFK
#completewith SFKStart
.goto Wetlands,30.8,31.0,0
.goto Wetlands,37.8,29.6,0
.goto Wetlands,43.0,33.2,0
.zone Arathi Highlands >> Grind |cRXP_ENEMY_Mosshides Gnolls|r while looking for a group for Shadowfang Keep
step
#optional
.goto Wetlands,49.803,18.257
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
.turnin 472 >>Turn in Fall of Dun Modr
.isOnQuest 472
.target Longbraid the Grim
.dungeon SFK
step
.dungeon SFK
#label SFKStart
.goto Arathi Highlands,43.01,55.00,90,0
.goto Arathi Highlands,25.45,46.95,90,0
.goto Arathi Highlands,21.29,30.24,70,0
.goto Hillsbrad Foothills,49.338,52.272
>>There are no quests for Shadowfang Keep. You will have to run from Wetlands to Silverpine Forest. Ensure you stay on the road while running through Arathi Highlands, and watchout for the |cRXP_ENEMY_Forsaken Courier|r
>>|cRXP_WARN_You don't need to get the Arathi Highlands flight path yet|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fp Southshore >> Get the Southshore Flight Path
.target Cedrik Prose
.target Darla Harris
.unitscan Forsaken Courier
step
.dungeon SFK
.goto Hillsbrad Foothills,14.77,46.72,0
.goto Silverpine Forest,44.96,67.92,0
.goto Hillsbrad Foothills,14.77,46.72,100,0
.goto Silverpine Forest,47.19,69.78,100,0
.goto Silverpine Forest,44.712,67.769
.subzone 209,2 >> Enter Shadowfang Keep
step
#season 0,1 << Warlock
#optional
#completewith StatueEnd
+There are no quests for Shadowfang Keep
>>Clear Shadowfang Keep. Leave when you are finished
.zoneskip 209,1
.dungeon SFK
step << Druid
#optional
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
#label MoongladeTrain
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 1075 >> Train your class spells
.target Loganaar
.xp <24,1
step
#xprate <1.5 << NightElf
.goto Wetlands,10.69,60.95
.hs >> Hearth to Menethil Harbor
.subzoneskip 150
.subzoneskip 2103
.subzoneskip 2104
.zoneskip Loch Modan
.dungeon SFK
step << !NightElf
.goto Wetlands,10.843,60.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r upstairs
.turnin 943 >> Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
.dungeon SFK
.isQuestComplete 943
step << !NightElf
.goto Wetlands,11.796,57.991
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
.turnin 470 >> Turn in Digging Through the Ooze
.target Sida
.dungeon SFK
step << !NightElf
.goto Wetlands,11.458,52.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.turnin 306 >> Turn in In Search of The Excavation Team
.target Tarrel Rockweaver
.dungeon SFK
step << !NightElf
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.turnin 484 >> Turn in Young Crocolisk Skins
.turnin 469 >> Turn in Daily Delivery
.target James Halloran
.dungeon SFK
step << Mage
.goto 1437,8.300,56.427
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkan Armonis|r
>>|cRXP_BUY_Buy up to 4|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from him|r
.collect 17031,4 
.target Falkan Armonis
.dungeon SFK
step << !NightElf
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >> Turn in Claws from the Deep
.accept 281 >> Accept Reclaiming Goods
.target Karl Boran
.xp >23+25900,1
.dungeon SFK
step << !NightElf
#optional
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >> Turn in Claws from the Deep
.target Karl Boran
.dungeon SFK
step << !NightElf
.goto Wetlands,13.513,41.384
>>Click the |cRXP_PICK_Damaged Crate|r on the ground
.turnin 281 >> Turn in Reclaiming Goods
.accept 284 >> Accept The Search Continues
.isOnQuest 281
.dungeon SFK
step << !NightElf
#optional
.goto Wetlands,13.513,41.384
>>Click the |cRXP_PICK_Damaged Crate|r on the ground
.accept 284 >> Accept The Search Continues
.isQuestTurnedIn 281
.dungeon SFK
step << !NightElf
.goto Wetlands,13.608,38.214
>>Click the |cRXP_PICK_Sealed Barrel|r on the ground
.turnin 284 >> Turn in The Search Continues
.accept 285 >> Accept Search More Hovels
.isOnQuest 284
.dungeon SFK
step << !NightElf
#optional
.goto Wetlands,13.608,38.214
>>Click the |cRXP_PICK_Sealed Barrel|r on the ground
.accept 285 >> Accept Search More Hovels
.isQuestTurnedIn 284
.dungeon SFK
step << !NightElf
.goto Wetlands,13.945,34.809
>>Click the |cRXP_PICK_Half-buried Barrel|r on the ground
.turnin 285 >> Turn in Search More Hovels
.accept 286 >> Accept Return the Statuette
.isOnQuest 285
.dungeon SFK
step << !NightElf
#optional
.goto Wetlands,13.945,34.809
>>Click the |cRXP_PICK_Half-buried Barrel|r on the ground
.accept 286 >> Accept Return the Statuette
.isQuestTurnedIn 285
.dungeon SFK
step
#label StatueEnd
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 286 >> Turn in Return the Statuette
.target Karl Boran
.isOnQuest 286
step
#loop
#xprate <1.5 << NightElf Priest/Hunter
#optional
.goto 1437,20.536,41.104,0
.goto 1437,15.636,41.235,0
.goto 1437,18.174,39.649,0
.goto 1437,20.536,41.104,60,0
.goto 1437,17.665,41.331,60,0
.goto 1437,15.636,41.235,60,0
.goto 1437,13.124,41.109,60,0
.goto 1437,13.314,38.082,60,0
.goto 1437,15.286,38.732,60,0
.goto 1437,18.174,39.649,60,0
.xp 24 >> Grind to level 24
step << Mage
#optional
#completewith IFTrain
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
.itemcount 17031,1 
step
#completewith IFTrain << Mage/Priest
#completewith Deeprun << !Mage !Priest
#xprate <1.5 << NightElf Priest/Hunter/Warrior
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
.itemcount 17031,<1 << Mage 
step << NightElf !Rogue
#xprate >1.59
#optional
#completewith next
.goto Wetlands,5.485,64.156,40 >> Jump off the end of the dock and swim to the waypoint
.zoneskip Elwynn Forest
.zoneskip Stormwind City
.zoneskip Ironforge
.zoneskip Westfall
.dungeon !DM
step << NightElf !Rogue
#xprate >1.59
.goto Wetlands,2.433,78.689,-1
.goto Ironforge,17.089,83.373,-1
.zone Ironforge >>Use the character unstuck self service feature to skip to Ironforge. You will have to log off at the spot, then navigate to the help menu on another character (alternatively, paste the unstuck link below into your browser), then scroll down to self service. Click on your character and move. If you can't unstuck then skip this step and swim along the mountains to Westfall
.link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Click here for video reference
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Click here for the unstuck link
.subzoneskip 809 
.subzoneskip 2257 
.zoneskip Elwynn Forest
.zoneskip Stormwind City
.zoneskip Ironforge
.zoneskip Westfall
.dungeon !DM
step << NightElf !Rogue
#xprate >1.59
#optional
.goto 1415,44.720,49.200,60,0 
.goto 1415,43.162,49.946,60,0
.goto 1415,42.564,50.884,20,0
.goto 1415,42.363,50.812,20,0
.goto 1415,41.682,50.232,20,0
.goto 1415,40.959,50.142,20,0
.goto 1415,39.818,51.078,20,0
.goto 1415,39.778,51.615,30,0
.goto 1415,39.505,52.636,30,0
.goto 1415,40.160,54.451,20,0
.goto 1415,40.505,54.507,20,0
.goto 1415,41.370,57.126,40,0
.goto 1415,41.988,59.434,30,0
.goto 1415,41.342,61.214,30,0
.goto 1415,41.309,61.938,20,0
.goto 1415,40.545,64.111,30,0
.goto 1415,41.066,65.878,20,0
.goto 1415,41.349,66.265,30,0
.goto 1415,41.363,66.995,30,0
.goto 1415,41.625,67.689,30,0
.goto StormwindClassic,4.493,29.157,20,0
.goto StormwindClassic,10.336,40.166,10,0
.goto StormwindClassic,7,45.471,10,0
.goto StormwindClassic,5.560,50.125,10,0
.goto StormwindClassic,13.669,74.499,20,0
.goto Westfall,42.024,70.980
.zone Westfall >> If the website unstuck is not available, swim to Westfall
.zoneskip Ironforge
.subzoneskip 809
.subzoneskip 2257
.zoneskip Stormwind City
.dungeon !DM
step << NightElf !Rogue
#xprate >1.59
#optional
#completewith next
.goto Westfall,54.28,9.26,100,0
.goto Westfall,56.55,52.64,100 >> Run up the shore and make your way to Sentinel Hill
.zoneskip Ironforge
.subzoneskip 809
.subzoneskip 2257
.zoneskip Stormwind City
.dungeon !DM
step << NightElf !Rogue
#xprate >1.59
#optional
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fp Sentinel Hill >> Get the Sentinel Hill flight path
.target Thor
.zoneskip Ironforge 
.subzoneskip 809
.subzoneskip 2257
.zoneskip Stormwind City
.dungeon !DM
step << NightElf !Rogue
#xprate >1.59
#optional
.goto Westfall,56.33,47.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
.accept 65 >> Accept The Defias Brotherhood
.target Gryan Stoutmantle
.zoneskip Westfall,1
.dungeon !DM
step << NightElf !Rogue
#xprate >1.59
#optional
.goto Elwynn Forest,36.809,72.429,100,0
.goto StormwindClassic,69.961,86.583
.zone Stormwind City >> Run to Stormwind
.zoneskip Ironforge
.subzoneskip 809
.subzoneskip 2257
.dungeon !DM
step
#optional
#sticky
#label Powers
>>|cRXP_WARN_Use the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] to start the quest|r
.accept 968 >> Accept The Powers Below
.zoneskip Stormwind City
.use 5352
.itemcount 5352,1
step
#optional
#requires Powers
.goto Ironforge,50.826,5.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 968 >> Turn in The Powers Below
.target Gerrig Bonegrip
.zoneskip Stormwind City
.isOnQuest 968
.dungeon DM
step
#optional << !Paladin
#requires Powers
.goto Ironforge,50.826,5.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 968 >> Turn in The Powers Below
.zoneskip Stormwind City
.target Gerrig Bonegrip
.isOnQuest 968
.dungeon !DM
step << Mage
#label IFTrain
.goto Ironforge,27.18,8.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.zoneskip Stormwind City
.target Dink
step << Priest
#label IFTrain
.goto Ironforge,25.207,10.756
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r
.trainer >> Train your class spells
.zoneskip Stormwind City
.target Toldren Deepiron
step << skip 
#optional
#completewith Deeprun
.goto 1455,27.611,8.074
.goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the pillar above |cRXP_FRIENDLY_Bink|r, then walk slightly east of her onto the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
.zoneskip Stormwind City
step << skip 
#optional
#completewith Deeprun << !Hunter !Warrior
.goto 1455,56.207,46.844
.goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the Gryphon's Head. Perform a Logout Skip by logging out and back in|r
.zoneskip Stormwind City
.train 197,3 << Hunter/Warrior 
.train 199,3 << Warrior 
.train 266,3 << Hunter 
step << NightElf Hunter/Warrior
.goto Ironforge,61.177,89.508
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buliwyf Stonehand|r inside
.train 197 >> Train 2h Axes
.train 199 >> Train 2h Maces << Warrior
.train 266 >> Train Guns << Hunter
.target Buliwyf Stonehand
.zoneskip Stormwind City
step << skip 
#optional
#completewith Deeprun
.goto 1455,60.975,90.479
.goto 1455,76.414,51.226,20 |cRXP_WARN_Walk onto the railing next to |cRXP_FRIENDLY_Buliwyf Stonehand|r on the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
.zoneskip Stormwind City
step
.goto Ironforge,67.844,42.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Gearcutter Cogspinner|r doesn't have one|r
.target Gearcutter Cogspinner
.bronzetube
.zoneskip Stormwind City
step
#optional
#label Deeprun
#completewith next
.goto Ironforge,78.00,51.40
.subzone 2257 >>Enter the Deeprun Tram
.zoneskip Stormwind City
step
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_if needed while on the Tram|r
>>|cRXP_WARN_You will need your|r |T135966:0|t[First Aid] |cRXP_WARN_to be 80+ for a quest later|r << Rogue !Dwarf
.zone Stormwind City >> Take the Deeprun Tram to Stormwind
.zoneskip Stormwind City
]]);
