RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 22-30
#xprate <1.99
#classic
#tbc
#mop
<< Horde
#name 26-28 Ashenvale
#next 28-30 Thousand Needles
step
#optional
.abandon 1058,1068,1095
step << !Hunter
#ssf
.goto Ashenvale,68.34,75.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torek|r to start the escort
>>|cRXP_FRIENDLY_Torek|r |cRXP_WARN_has a 5 minute respawn time|r
.accept 6544 >> Accept Torek's Assault
.target Torek
step << !Hunter
#ssf
.goto Ashenvale,66.08,74.50,60,0
.goto Ashenvale,65.07,75.36,20,0
.goto Ashenvale,64.28,75.33,10,0
.goto Ashenvale,64.81,75.34
>>Follow |cRXP_FRIENDLY_Torek|r
>>Let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r tank the |cRXP_ENEMY_Silverwing Warriors|r and |cRXP_ENEMY_Silverwing Sentinels|r
>>|cRXP_WARN_When you clear the building, run toward the Balcony. When |cRXP_ENEMY_Duriel Moonfire|r comes, let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r take aggro before you deal damage|r
.complete 6544,1 
.mob Silverwing Warrior
.mob Silverwing Sentinel
.unitscan Duriel Moonfire
step << !Hunter
#ssf
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
.accept 6503 >> Accept Ashenvale Outrunners
.target Kuray'bin
step << !Hunter
#ssf
.goto Ashenvale,73.04,62.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ertog|r
.turnin 6544 >> Turn in Torek's Assault
.target Ertog Ragetusk
.isQuestComplete 6544
step << !Hunter
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r
.dailyturnin 235,742,6382 >> Turn in The Ashenvale Hunt
.turnin 6383 >> Turn in The Ashenvale Hunt
.target Senani Thunderheart
step << Rogue
.goto Ashenvale,74.00,60.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kaylisk|r
.home >>Set your Hearthstone to Splintertree Post
.target Innkeeper Kaylisk
.bindlocation 431
.dungeon !BFD
step
#season 0,1
.goto Ashenvale,74.00,60.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kaylisk|r
.home >>Set your Hearthstone to Splintertree Post
.target Innkeeper Kaylisk
.bindlocation 431
.isQuestAvailable 25
.dungeon BFD
step
.goto Ashenvale,73.67,60.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mastok|r
.accept 25 >> Accept Stonetalon Standstill
.target Mastok Wrilehiss
step
.goto Ashenvale,73.06,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
.accept 6441 >> Accept Satyr Horns
.target Pixel
.maxlevel 28
step << !Hunter
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fp Splintertree Post >> Get the Splintertree Post flight path
.target Vhulgra
.isQuestAvailable 25
step << Hunter
#completewith ClawBiteAshenvale1
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Qeeju|r
.stable >> Stable your pet. You will tame an |cRXP_ENEMY_Elder Ashenvale Bear|r and a |cRXP_ENEMY_Ghostpaw Alpha|r shortly
.target Qeeju
step << Hunter
#loop
.goto Ashenvale,65.31,64.65,0
.goto Ashenvale,69.12,64.45,0
.goto Ashenvale,69.12,64.45,50,0
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65,50,0
.train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
.mob +Elder Ashenvale Bear
.train 17264 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Ghostpaw Alpha|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
.mob +Ghostpaw Alpha
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.xp <27,1 
step << Hunter
#label ClawBiteAshenvale1
#optional
#loop
.goto Ashenvale,65.31,64.65,0
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65,50,0
.train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
.mob Elder Ashenvale Bear
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.xp >26,1 
step << Hunter
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Qeeju|r
.stable >> Abandon the |cRXP_ENEMY_Elder Ashenvale Bear|r or |cRXP_ENEMY_Ghostpaw Alpha|r and retrieve your regular pet
.target Qeeju
.zoneskip Ashenvale,1
step
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
.accept 6503 >> Accept Ashenvale Outrunners
.target Kuray'bin
step
#ah
#completewith Outrunners
.goto Ashenvale,70.01,71.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurda|r
>>|cRXP_WARN_Skip this step if you do not have (all the) pages|r
.accept 6504 >> Accept The Lost Pages
.turnin 6504 >> Turn in The Lost Pages
.target Gurda Ragescar
step
#completewith Outrunners
.goto Ashenvale,75.25,71.86,0
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Sharptalon|r |cRXP_WARN_is level 31 and patrols around. You can kite him back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit. You can also do this quest later|r
.collect 16305,1,2 
.accept 2 >> Accept Sharptalon's Claw
.unitscan Sharptalon
.use 16305
step << Hunter
#completewith next
.cast 19885 >>Cast |T132320:0|t[Track Hidden] to find the |cRXP_ENEMY_Ashenvale Outrunners|r more easily
.train 19885,3
step
#label Outrunners
#loop
.goto Ashenvale,76.15,67.60,0
.goto Ashenvale,76.15,67.60,15,0
.goto Ashenvale,76.03,69.02,15,0
.goto Ashenvale,76.25,70.62,15,0
.goto Ashenvale,75.76,71.61,15,0
.goto Ashenvale,75.57,70.33,15,0
.goto Ashenvale,75.20,70.62,15,0
.goto Ashenvale,74.37,69.31,15,0
.goto Ashenvale,73.61,70.91,15,0
.goto Ashenvale,72.96,70.34,15,0
.goto Ashenvale,72.66,69.46,15,0
.goto Ashenvale,72.09,70.17,15,0
.goto Ashenvale,71.07,72.60,15,0
.goto Ashenvale,71.92,73.64,15,0
.goto Ashenvale,72.53,72.58,15,0
.goto Ashenvale,72.32,74.64,15,0
.goto Ashenvale,73.36,74.43,15,0
.goto Ashenvale,73.85,75.03,15,0
>>Kill |cRXP_ENEMY_Ashenvale Outrunners|r
>>|cRXP_WARN_They are stealthed|r
.complete 6503,1 
.mob Ashenvale Outrunner
step
#loop
.goto Ashenvale,78.24,65.72,0
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Sharptalon|r |cRXP_WARN_is level 31 and patrols around. You can kite him back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit. You can also do this quest later|r
.collect 16305,1,2 
.accept 2 >> Accept Sharptalon's Claw
.unitscan Sharptalon
.use 16305
step << !Hunter
#ah
.goto Ashenvale,68.34,75.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torek|r to start the escort
>>|cRXP_FRIENDLY_Torek|r |cRXP_WARN_has a 5 minute respawn time|r
.accept 6544 >> Accept Torek's Assault
.target Torek
step << !Hunter
#ah
.goto Ashenvale,66.08,74.50,60,0
.goto Ashenvale,65.07,75.36,20,0
.goto Ashenvale,64.28,75.33,10,0
.goto Ashenvale,64.81,75.34
>>Follow |cRXP_FRIENDLY_Torek|r
>>Let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r tank the |cRXP_ENEMY_Silverwing Warriors|r and |cRXP_ENEMY_Silverwing Sentinels|r
>>|cRXP_WARN_When you clear the building, run toward the Balcony. When |cRXP_ENEMY_Duriel Moonfire|r comes, let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r take aggro before you deal damage|r
.complete 6544,1 
.mob Silverwing Warrior
.mob Silverwing Sentinel
.unitscan Duriel Moonfire
step
#completewith Tideress
.subzone 421 >> Travel to Mystral Lake
.isOnQuest 25
step
#completewith Tideress
>>Kill |cRXP_ENEMY_Befouled Water Elementals|r
.complete 25,1 
.mob Befouled Water Elemental
step
#completewith next
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
>>Kill |cRXP_ENEMY_Tideress|r. Loot her for the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r]. Use it to start the quest
>>|cRXP_ENEMY_Tideress|r |cRXP_WARN_patrols around the island and underwater|r
.collect 16408,1,1918,1 
.accept 1918 >>Accept The Befouled Element
.use 16408
.unitscan Tideress
step
.goto Ashenvale,48.93,69.56
>>|cRXP_WARN_Move onto the Gazebo in the center of Mystral Lake|r
.complete 25,2 
step
#label Tideress
#loop
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
.goto Ashenvale,48.71,69.54,40,0
.goto Ashenvale,48.04,69.67,40,0
.goto Ashenvale,47.79,69.90,40,0
.goto Ashenvale,47.57,70.42,40,0
.goto Ashenvale,47.22,70.44,40,0
.goto Ashenvale,46.72,70.63,40,0
.goto Ashenvale,46.53,70.80,40,0
.goto Ashenvale,46.07,70.83,40,0
.goto Ashenvale,45.84,70.67,40,0
.goto Ashenvale,45.84,70.67,0
>>Kill |cRXP_ENEMY_Tideress|r. Loot her for the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r]. Use it to start the quest
>>|cRXP_ENEMY_Tideress|r |cRXP_WARN_patrols around the island and underwater|r
.collect 16408,1,1918,1 
.accept 1918 >>Accept The Befouled Element
.use 16408
.unitscan Tideress
step
#loop
.goto Ashenvale,48.36,69.74,0
.goto Ashenvale,48.36,69.74,50,0
.goto Ashenvale,48.43,70.14,50,0
.goto Ashenvale,48.93,70.82,50,0
.goto Ashenvale,49.49,70.76,50,0
.goto Ashenvale,50.21,70.36,50,0
.goto Ashenvale,50.47,70.43,50,0
.goto Ashenvale,50.54,71.08,50,0
.goto Ashenvale,50.74,71.31,50,0
.goto Ashenvale,51.42,70.86,50,0
.goto Ashenvale,52.13,71.14,50,0
.goto Ashenvale,52.18,71.60,50,0
.goto Ashenvale,52.08,72.10,50,0
.goto Ashenvale,45.84,70.67,50,0
>>Kill |cRXP_ENEMY_Befouled Water Elementals|r
.complete 25,1 
.mob Befouled Water Elemental
step
#loop
.line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
.goto Ashenvale,43.78,68.86,0
.goto Ashenvale,43.78,68.86,40,0
.goto Ashenvale,43.33,68.09,40,0
.goto Ashenvale,42.46,68.39,40,0
.goto Ashenvale,42.08,68.71,40,0
.goto Ashenvale,41.79,68.28,40,0
.goto Ashenvale,41.55,67.71,40,0
.goto Ashenvale,41.46,67.44,40,0
.goto Ashenvale,41.41,66.56,40,0
.goto Ashenvale,40.22,66.23,40,0
.goto Ashenvale,39.77,65.40,40,0
.goto Ashenvale,39.65,63.74,40,0
.goto Ashenvale,39.81,62.94,40,0
>>Kill |cRXP_ENEMY_Ursangous|r. Loot him for |T132941:0|t[|cRXP_LOOT_Ursangous's Paw|r] and use it to start the quest
>>|cRXP_WARN_He patrols around slightly|r
.collect 16303,1,23 
.accept 23 >> Accept Ursangous's Paw
.unitscan Ursangous
.use 16303
step
#completewith ThistlefurVillageArrive
.goto Ashenvale,35.58,56.31,70,0
.goto Ashenvale,34.14,53.51,40,0
.goto Ashenvale,31.73,51.69,100 >>|cRXP_WARN_Be careful of running into Astranaar (Alliance town), |cRXP_ENEMY_Alliance Guards|r can kill you. Follow the waypoint arrow for safety|r
.subzoneskip 2301
.unitscan Astranaar Sentinel
step << Shaman
.goto Ashenvale,33.55,67.47
>>|cRXP_WARN_Use the|r |T132821:0|t[Empty Blue Waterskin] |cRXP_WARN_under the Gazebo|r
.complete 1534,1 
.use 7767
step
#completewith VorshaLasher2
.goto Ashenvale,12.24,33.80,100 >>Travel to Zoram Strand
step
#completewith next
.goto Ashenvale,12.24,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
.fp Zoram'gar Outpost >> Get the Zoram'gar Outpost flight path
.target Andruk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r and |cRXP_FRIENDLY_Mitsuwa|r
.turnin 6562 >> Turn in Trouble in the Deeps
.target +Je'neu Sancrea
.goto Ashenvale,11.56,34.29
.accept 216 >> Accept Between a Rock and a Thistlefur
.target +Karang Amakkar
.goto Ashenvale,11.90,34.53
.accept 6462 >> Accept Troll Charm
.target +Mitsuwa
.goto Ashenvale,11.65,34.85
step
#label VorshaLasher2
.goto Ashenvale,12.06,34.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muglash|r
>>|cRXP_WARN_This will start an escort quest. Be careful as it's difficult|r
.accept 6641,1 >> Accept Vorsha the Lasher
.target Muglash
.maxlevel 26
step
.goto Ashenvale,9.63,27.63
>>Click the |cRXP_PICK_Brazier|r when you get there
>>|cRXP_WARN_There will be waves of|r |cRXP_ENEMY_Naga|r |cRXP_WARN_that spawn first|r
.complete 6641,1 
.mob Vorsha the Lasher
.isOnQuest 6641
step
.goto Ashenvale,12.22,34.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warsong Runner|r
.turnin 6641 >> Turn in Vorsha the Lasher
.target Warsong Runner
.isQuestComplete 6641
step
#label ThistlefurVillageArrive
.goto Ashenvale,36.81,33.48,200 >> Travel to Thistlefur Village
>>|cRXP_WARN_Make sure to avoid Astranaar guards en route|r
.unitscan Astranaar Sentinel
.subzoneskip 2301
.isOnQuest 216
step
#completewith next
>>Kill |cRXP_ENEMY_Thistlefur Shamans|r and |cRXP_ENEMY_Thistlefur Avengers|r en route to the cave
.complete 216,2 
.mob +Thistlefur Shaman
.complete 216,1 
.mob +Thistlefur Avenger
step
#label EntertheHold
.goto Ashenvale,38.67,30.62,40 >>Enter Thistlefur Hold
.isOnQuest 6462
step
#loop
.goto Ashenvale,40.39,33.22,0
.goto Ashenvale,40.39,33.22,20,0
.goto Ashenvale,40.77,32.81,20,0
.goto Ashenvale,41.36,32.19,20,0
.goto Ashenvale,41.75,32.94,20,0
.goto Ashenvale,41.77,33.68,20,0
.goto Ashenvale,42.37,33.61,20,0
.goto Ashenvale,42.82,34.11,20,0
.goto Ashenvale,41.73,34.47,20,0
.goto Ashenvale,41.66,35.70,20,0
>>Loot the |cRXP_PICK_Troll Chests|r on the ground for |cRXP_LOOT_Troll Charms|r
.complete 6462,1 
step
.goto Ashenvale,41.49,34.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r in the back of the cave. This will start an escort
.accept 6482 >> Accept Freedom to Ruul
.target Ruul Snowhoof
step
.goto Ashenvale,38.73,36.86,0
.goto Ashenvale,40.68,33.21,20,0
.goto Ashenvale,40.29,32.25,20,0
.goto Ashenvale,39.41,31.00,20,0
.goto Ashenvale,38.28,30.68,20,0
.goto Ashenvale,37.39,32.74,30,0
.goto Ashenvale,37.30,34.49,30,0
.goto Ashenvale,38.73,36.86
>>Escort |cRXP_FRIENDLY_Ruul|r out of Thistlefur Village
>>|cRXP_WARN_Be careful! 3|r |cRXP_ENEMY_Thistlefurs|r |cRXP_WARN_will spawn once you are halfway through the cave and another 3 outside the gate of Thistlefur Village|r
.complete 6482,1 
.target Ruul Snowhoof
step
#loop
.goto Ashenvale,35.75,32.01,0
.goto Ashenvale,37.91,34.49,40,0
.goto Ashenvale,35.89,36.65,40,0
.goto Ashenvale,35.75,32.01,40,0
.goto Ashenvale,34.09,38.48,40,0
.goto Ashenvale,31.86,39.25,40,0
.goto Ashenvale,32.57,42.78,40,0
.goto Ashenvale,30.98,44.40,40,0
.goto Ashenvale,35.75,32.01,40,0
>>Finish killing |cRXP_ENEMY_Thistlefur Shamans|r and |cRXP_ENEMY_Thistlefur Avengers|r
.complete 216,2 
.mob +Thistlefur Shaman
.complete 216,1 
.mob +Thistlefur Avenger
step
#completewith next
.goto Ashenvale,58.03,55.87,100 >> Travel east toward Raynewood Retreat
.isOnQuest 1195
step
#completewith next
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,52.24,54.38,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,60.94,51.53,40,0
>>Kill |cRXP_ENEMY_Shadumbra|r. Loot her for |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r] and use it to start the quest
>>|cRXP_ENEMY_Shadumbra|r |cRXP_WARN_patrols around slightly|r
>>|cRXP_WARN_She does not spawn during the Ashenvale PVP event!|r << sod
.collect 16304,1,24 
.accept 24 >> Accept Shadumbra's Head
.unitscan Shadumbra
.use 16304
step
#loop
.goto Ashenvale,58.08,56.06,0
.goto Ashenvale,58.08,56.06,40,0
.goto Ashenvale,58.69,55.18,40,0
.goto Ashenvale,59.27,54.47,40,0
.goto Ashenvale,59.83,53.26,40,0
.goto Ashenvale,60.40,52.83,40,0
.goto Ashenvale,61.03,51.96,40,0
.goto Ashenvale,60.99,49.19,40,0
.goto Ashenvale,62.51,50.16,40,0
>>Kill |cRXP_ENEMY_Laughing Sisters|r. Loot them for an |T134776:0|t[|cRXP_LOOT_Etched Phial|r]
.collect 5867,1,1195,1 
.mob Laughing Sister
step
#label Shadumbra
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,60.94,51.53,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,52.24,54.38,40,0
.goto Ashenvale,62.39,49.80,40,0
.goto Ashenvale,62.39,49.80,0
>>Kill |cRXP_ENEMY_Shadumbra|r. Loot her for |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r] and use it to start the quest
>>|cRXP_ENEMY_Shadumbra|r |cRXP_WARN_patrols around slightly|r
>>|cRXP_WARN_She does not spawn during the Ashenvale PVP event!|r << sod
.collect 16304,1,24 
.accept 24 >> Accept Shadumbra's Head
.unitscan Shadumbra
.use 16304
step
.goto Ashenvale,62.07,51.32
>>Kill |cRXP_ENEMY_Keeper Ordanus|r at the top of the building. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Be careful! He has two|r |cRXP_ENEMY_Cenarion Vindicators|r |cRXP_WARN_defending him. They can cast|r |T136036:0|t[Force of Nature] |cRXP_WARN_(summon 3 |cRXP_ENEMY_Treants|r)|r
>>|cRXP_ENEMY_Ordanus|r |cRXP_WARN_can cast|r |T136100:0|t[Entangling Roots] |cRXP_WARN_and|r |T136048:0|t[Lightning Bolt]
.complete 1088,1 
.target Keeper Ordanus
.isOnQuest 1088
step
.goto Ashenvale,62.99,44.16,50 >> Travel toward the western entrance point into Night Run
>>|cRXP_WARN_Be careful! A level 35|r |cRXP_ENEMY_Wandering Protector|r |cRXP_WARN_(PVP elite) might patrol the area!|r
.isOnQuest 6441
step
#completewith next
.goto Ashenvale,64.88,43.81,50,0
.goto Ashenvale,67.04,50.73,80 >> Travel to Night Run
step
#loop
.goto Ashenvale,67.85,51.34,0
.goto Ashenvale,66.78,51.71,50,0
.goto Ashenvale,66.19,53.44,50,0
.goto Ashenvale,66.17,54.40,50,0
.goto Ashenvale,66.22,55.27,50,0
.goto Ashenvale,66.20,56.37,50,0
.goto Ashenvale,66.77,57.14,50,0
.goto Ashenvale,67.11,56.39,50,0
.goto Ashenvale,67.35,55.53,50,0
.goto Ashenvale,67.92,54.42,50,0
.goto Ashenvale,68.92,53.44,50,0
.goto Ashenvale,68.63,52.69,50,0
.goto Ashenvale,67.85,51.34,50,0
>>Kill |cRXP_ENEMY_Felmusk Shadowstalkers|r, |cRXP_ENEMY_Felmusk Satyrs|r, and |cRXP_ENEMY_Felmusk Felsworns|r. Loot them for their |cRXP_LOOT_Satyr Horns|r
>>|cRXP_WARN_Be careful! All the Felmusk cast|r |T136119:0|t[Overwhelming Stench]|cRXP_WARN_, an instant-cast 6 second silence|r << Mage/Warlock/Priest/Druid/Shaman
.complete 6441,1 
.mob Felmusk Shadowstalker
.mob Felmusk Felsworn
.mob Felmusk Satyr
.isOnQuest 6441
step
.goto Ashenvale,60.20,72.90
>>|cRXP_WARN_Use the|r |T134776:0|t[|cRXP_LOOT_Etched Phial|r] |cRXP_WARN_in the Moonwell|r
.complete 1195,1 
.use 5867
step
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
.turnin 6503 >> Turn in Ashenvale Outrunners
.target Kuray'bin
step
#season 0,1
#sticky
#completewith EnterBFD
.subzone 2797,2 >> Now you should be looking for a group to BlackFathom Deeps
.dungeon BFD
step
#loop
.goto Ashenvale,78.24,65.72,0
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Sharptalon|r |cRXP_WARN_is level 31 and patrols around. You can kite him back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit|r
.collect 16305,1,2 
.accept 2 >> Accept Sharptalon's Claw
.unitscan Sharptalon
.use 16305
step << !Hunter
#ah
.goto Ashenvale,73.04,62.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ertog|r
.turnin 6544 >> Turn in Torek's Assault
.target Ertog Ragetusk
.isQuestComplete 6544
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r
.turnin 2 >> Turn in Sharptalon's Claw
.turnin 24 >> Turn in Shadumbra's Head
.turnin 23 >> Turn in Ursangous's Paw
.turnin 247 >> Turn in The Hunt Completed
.target Senani Thunderheart
.isOnQuest 2
step
#optional
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r
.turnin 24 >> Turn in Shadumbra's Head
.turnin 23 >> Turn in Ursangous's Paw
.turnin 247 >> Turn in The Hunt Completed
.target Senani Thunderheart
.isQuestTurnedIn 2
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r
.turnin 24 >> Turn in Shadumbra's Head
.turnin 23 >> Turn in Ursangous's Paw
.target Senani Thunderheart
step
.goto Ashenvale,73.06,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
.turnin 6441 >> Turn in Satyr Horns
.target Pixel
.isQuestComplete 6441
step
.goto Ashenvale,73.67,60.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mastok|r
.turnin 25 >> Turn in Stonetalon Standstill
.turnin 1918 >> Turn in The Befouled Element
.accept 824 >> Accept Je'neu of the Earthen Ring
.target Mastok Wrilehiss
step
.goto Ashenvale,74.11,60.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yama|r
.turnin 6482 >> Turn in Freedom to Ruul
.target Yama Snowhoof
step << Hunter
#optional
#completewith ClawBiteAshenvale2
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Qeeju|r
.stable >> Stable your pet. You will tame an |cRXP_ENEMY_Elder Ashenvale Bear|r and a |cRXP_ENEMY_Ghostpaw Alpha|r shortly
.target Qeeju
step << Hunter
#optional
#loop
.goto Ashenvale,65.31,64.65,0
.goto Ashenvale,69.12,64.45,0
.goto Ashenvale,69.12,64.45,50,0
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65,50,0
.train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
.mob +Elder Ashenvale Bear
.train 17264 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Ghostpaw Alpha|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
.mob +Ghostpaw Alpha
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.xp <27,1 
step << Hunter
#label ClawBiteAshenvale2
#optional
#loop
.goto Ashenvale,65.31,64.65,0
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65,50,0
.train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
.mob Elder Ashenvale Bear
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.xp >26,1 
step
#completewith ZoramVisit2
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fly Zoram'gar >> Fly to Zoram'gar Outpost
.target Vhulgra
.subzoneskip 2897
step
.goto Ashenvale,11.90,34.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karang|r
.turnin 216 >> Turn in Between a Rock and a Thistlefur
.target Karang Amakkar
step
.goto Ashenvale,11.65,34.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mitsuwa|r
.turnin 6462 >> Turn in Troll Charm
.target Mitsuwa
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 824 >> Turn in Je'neu of the Earthen Ring
.accept 6563 >> Accept The Essence of Aku'Mai
.accept 6921 >> Accept Amongst The Ruins
.accept 6565 >> Accept Allegiance to the Old Gods
.target Je'neu Sancrea
.dungeon BFD
.isQuestTurnedIn 6564
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 824 >> Turn in Je'neu of the Earthen Ring
.accept 6563 >> Accept The Essence of Aku'Mai
.accept 6921 >> Accept Amongst The Ruins
.target Je'neu Sancrea
.dungeon BFD
step << !Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 824 >> Turn in Je'neu of the Earthen Ring
.target Je'neu Sancrea
.dungeon !BFD
step
#season 2
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 824 >> Turn in Je'neu of the Earthen Ring
.target Je'neu Sancrea
step << Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 824 >> Turn in Je'neu of the Earthen Ring
.accept 6563 >> Accept The Essence of Aku'Mai
.accept 6921 >> Accept Amongst The Ruins
.target Je'neu Sancrea
.dungeon !BFD
step
#optional
#label ZoramVisit2
step
#season 0,1
.goto Kalimdor,43.89,35.23,100 >> Travel to the entrance of Blackfathom Deeps
.dungeon BFD
step
#season 0,1
#completewith next
>>Loot |cRXP_LOOT_Sapphire of Aku'Mai|r from the wall
.complete 6563,1 
.dungeon BFD
.isOnQuest 6563
step
#season 0,1
#loop
.goto Kalimdor,43.94,34.86,0
.goto Kalimdor,43.81,35.16,20,0
.goto Kalimdor,43.94,34.86,20,0
.goto Kalimdor,43.90,34.59,20,0
.goto Kalimdor,44.00,34.57,20,0
.goto Kalimdor,44.16,34.85,20,0
.goto Kalimdor,44.35,34.97,20,0
.goto Kalimdor,44.53,34.86,20,0
>>Kill |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Loot them for a |T134332:0|t[|cRXP_LOOT_Damp Note|r] and use it to start the quest
.collect 16790,1,6564 
.accept 6564 >> Accept Allegiance to the Old Gods
.mob Blackfathom Tide Priestess
.use 16790
.dungeon BFD
step
#season 0,1
#loop
.goto Kalimdor,44.34,35.11,0
.goto Kalimdor,44.53,34.86,20,0
.goto Kalimdor,44.35,34.97,20,0
.goto Kalimdor,44.16,34.85,20,0
.goto Kalimdor,44.00,34.57,20,0
.goto Kalimdor,43.90,34.59,20,0
.goto Kalimdor,43.94,34.86,20,0
.goto Kalimdor,43.81,35.16,20,0
.goto Kalimdor,44.34,35.11,20,0
>>Loot |cRXP_LOOT_Sapphire of Aku'Mai|r from the wall
.complete 6563,1 
.dungeon BFD
.isOnQuest 6563
step
#season 0,1
#label EnterBFD
.goto Kalimdor,44.36,34.86
.subzone 2797,2 >> Make your way to the BFD Instance Portal. Zone in
.dungeon BFD
step
#season 0,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Thaelrid|r
.accept 6561 >>Accept Blackfathom Villainy
.target Argent Guard Thaelrid
.dungeon BFD
step
#season 0,1
>>Kill |cRXP_ENEMY_Lorguss Jett |r
.complete 6565,1 
.mob Lorguss Jett
.isOnQuest 6565
.dungeon BFD
step
#season 0,1
#completewith next
>>Loot the |cRXP_PICK_Fathom Stone|r in the water on the ground for the |cRXP_LOOT_Fathom Core|r
>>|cRXP_WARN_Looting this will spawn|r |cRXP_ENEMY_Baron Aquanis|r
.complete 6921,1 
.isOnQuest 6921
.dungeon BFD
step
#season 0,1
>>Kill |cRXP_ENEMY_Baron Aquanis|r. Loot him for a |T136222:0|t[|cRXP_LOOT_Strange Water Globe|r]. Use it to accept the quest
.collect 16782,1,6782 
.accept 6922 >>Accept Baron Aquanis
.mob Baron Aquanis
.use 16782
.dungeon BFD
step
#season 0,1
>>Loot the |cRXP_PICK_Fathom Stone|r in the water on the ground for the |cRXP_LOOT_Fathom Core|r
.complete 6921,1 
.isOnQuest 6921
.dungeon BFD
step
#season 0,1
>>Kill |cRXP_ENEMY_Twilight Lord Kelris|r. Loot him for his |cRXP_LOOT_Head|r
.complete 6561,1 
.mob Twilight Lord Kelris
.isOnQuest 6561
.dungeon BFD
step
#season 0,1
#completewith FlyZoramS2
.hs >> Hearth to Splintertree Post
>>|cRXP_WARN_Kill|r |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_first if you wish. This is the last boss of the dungeon|r
.cooldown item,6948,>2,1
.use 6948
.bindlocation 431,1
.subzoneskip 431
.dungeon BFD
step
#season 0,1
#optional
#completewith FlyZoramS2
.subzone 431 >>|cRXP_WARN_Perform a 'Ghetto Hearth' in Blackfathom Deeps|r
.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Copy paste this macro inside Blackfathrom Deeps to ghetto Hearth back to Splintertree Post|r
.cooldown item,6948,<0,1
.bindlocation 431,1
.dungeon BFD
step
#season 0,1
#label FlyZoramS2
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fly Zoram'gar >> Fly to Zoram'gar Outpost
.target Vhulgr
.subzoneskip 2897
.dungeon BFD
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 6564 >>Turn in Allegiance to the Old Gods
.target Je'neu Sancrea
.dungeon BFD
.isOnQuest 6564
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 6565 >>Turn in Allegiance to the Old Gods
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6565
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 6563 >>Turn in The Essence of Aku'Mai
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6563
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 6921 >>Turn in Amongst The Ruins
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6521
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 6922 >>Turn in Baron Aquanis
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6922
step << Rogue
#season 0,1
.goto Kalimdor,43.89,35.23,100 >> Travel to the entrance of Blackfathom Deeps
.dungeon !BFD
step << Rogue
#season 0,1
#completewith next
>>Loot |cRXP_LOOT_Sapphire of Aku'Mai|r from the wall
.complete 6563,1 
.isOnQuest 6563
.dungeon !BFD
step << Rogue
#season 0,1
#loop
.goto Kalimdor,43.94,34.86,0
.goto Kalimdor,43.81,35.16,20,0
.goto Kalimdor,43.94,34.86,20,0
.goto Kalimdor,43.90,34.59,20,0
.goto Kalimdor,44.00,34.57,20,0
.goto Kalimdor,44.16,34.85,20,0
.goto Kalimdor,44.35,34.97,20,0
.goto Kalimdor,44.53,34.86,20,0
>>Kill |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Loot them for a |T134332:0|t[|cRXP_LOOT_Damp Note|r] and use it to start the quest
.collect 16790,1,6564 
.accept 6564 >> Accept Allegiance to the Old Gods
.mob Blackfathom Tide Priestess
.use 16790
.dungeon !BFD
step << Rogue
#season 0,1
#loop
.goto Kalimdor,44.34,35.11,0
.goto Kalimdor,44.53,34.86,20,0
.goto Kalimdor,44.35,34.97,20,0
.goto Kalimdor,44.16,34.85,20,0
.goto Kalimdor,44.00,34.57,20,0
.goto Kalimdor,43.90,34.59,20,0
.goto Kalimdor,43.94,34.86,20,0
.goto Kalimdor,43.81,35.16,20,0
.goto Kalimdor,44.34,35.11,20,0
>>Loot |cRXP_LOOT_Sapphire of Aku'Mai|r from the wall
.complete 6563,1 
.isOnQuest 6563
.dungeon !BFD
step << Rogue
#season 0,1
.goto Kalimdor,44.36,34.86
.subzone 2797,2 >> Make your way to the BFD Instance Portal. Zone in
.dungeon !BFD
step << Rogue
#season 0,1
#completewith Baron
+To solo this quest you need to play correctly in 2 ways. First of all you need to not die to breath, that means before you aggro the boss you should have full breath. The second thing to be aware of is that you need to kick EVERY frostbolt you can and use evasion after a kick. Most of his damage will be from frostbolts. Remember you can vanish and try again 5 mins later, as long as you don't die to breath.
.link https://youtu.be/ehXV0stmDrM?t=202 >> CLICK HERE for a guide on this section
.dungeon !BFD
step << Rogue
#season 0,1
#completewith next
>>Loot the |cRXP_PICK_Fathom Stone|r in the water on the ground for the |cRXP_LOOT_Fathom Core|r. This will spawn |cRXP_ENEMY_Baron Aquanis|r
.complete 6921,1 
.isOnQuest 6921
.dungeon !BFD
step << Rogue
#season 0,1
#label Baron
>>Kill |cRXP_ENEMY_Baron Aquanis|r. Loot him for a |T136222:0|t[|cRXP_LOOT_Strange Water Globe|r]. Use it to accept the quest
.collect 16782,1,6782 
.accept 6922 >>Accept Baron Aquanis
.mob Baron Aquanis
.use 16782
.dungeon !BFD
step << Rogue
#season 0,1
>>Loot the |cRXP_PICK_Fathom Stone|r in the water on the ground for the |cRXP_LOOT_Fathom Core|r
.complete 6921,1 
.isOnQuest 6921
step << Rogue
#season 0,1
#completewith FlyZorams3
.hs >> Hearth to Splintertree Post
>>|cRXP_WARN_Kill|r |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_first if you wish. This is the last boss of the dungeon|r
.cooldown item,6948,>2,1
.use 6948
.bindlocation 431,1
.subzoneskip 431
.dungeon !BFD
step << Rogue
#season 0,1
#optional
#completewith FlyZorams3
.subzone 431 >>|cRXP_WARN_Perform a 'Ghetto Hearth' in Blackfathom Deeps|r
.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Copy paste this macro inside Blackfathrom Deeps to ghetto Hearth back to Splintertree Post|r
.cooldown item,6948,<0
.bindlocation 431,1
.dungeon !BFD
step << Rogue
#label FlyZorams3
#season 0,1
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fly Zoram'gar >> Fly to Zoram'gar Outpost
.target Vhulgra
.subzoneskip 2897
.dungeon !BFD
step << Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 6564 >>Turn in Allegiance to the Old Gods
.target Je'neu Sancrea
.isOnQuest 6564
.dungeon !BFD
step << Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 6563 >>Turn in The Essence of Aku'Mai
.target Je'neu Sancrea
.isQuestComplete 6563
.dungeon !BFD
step << Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 6921 >>Turn in Amongst The Ruins
.target Je'neu Sancrea
.isQuestComplete 6521
.dungeon !BFD
step << Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
.turnin 6922 >>Turn in Baron Aquanis
.target Je'neu Sancrea
.isQuestComplete 6922
.dungeon !BFD
step << Rogue/Warlock
#completewith OrgSkip
.goto Ashenvale,12.24,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Andruk
.zoneskip Orgrimmar
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 1833 >> Train your class spells
.target Ormok
.xp <26,1
.xp >28,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 8687 >> Train your class spells
>>|T132273:0|t[Instant Poison Rank 2] |cRXP_WARN_requires 120 skill in Poisons!|r
.target Ormok
.xp <28,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 1456 >> Train your class spells
.target Mirket
.xp <26,1
.xp >28,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 6217 >> Train your class spells
.target Mirket
.xp <28,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
.vendor >>Buy any pet upgrades you can afford
.target Kurgul
.zoneskip Orgrimmar,1
step << Warlock
.goto Orgrimmar,44.16,48.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r
.collect 5347,1 
.money <1.5713
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
.target Katis
.zoneskip Orgrimmar,1
step << Rogue
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.target Doras
.zoneskip Orgrimmar,1
step << Rogue/Warlock
#optional
#label OrgSkip
step << Druid
#completewith DruidTraining3
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 1850 >> Train your class spells
.target Loganaar
.xp <26,1
.xp >28,1
step << Druid
#label DruidTraining3
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 3029 >> Train your class spells
.target Loganaar
.xp <28,1
step << !Rogue
.hs >> Hearth to the Crossroads
.bindlocation 380,1
.subzoneskip 380
.use 6948
.dungeon !BFD
step << !Rogue
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.zoneskip Thunder Bluff
.target Devrak
.subzoneskip 380,1
.dungeon !BFD
step << !Rogue
.goto Ashenvale,12.24,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.target Andruks
.dungeon BFD
.zoneskip Ashenvale,1
step
.goto Thunder Bluff,71.04,34.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bashana|r
.turnin 6561 >>Turn in Blackfathom Villainy
.target Bashana Runetotem
.isQuestComplete 6561
.dungeon BFD
]]);
