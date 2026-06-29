RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 30-40
#classic
#tbc
#mop
<< Horde
#name 37-38 Dustwallow Marsh
#displayname 38-40 Dustwallow Marsh << sod
#next RestedXP Horde 30-40\38-39 Alterac/Arathi;RestedXP Horde 40-50\40-41 Stranglethorn Vale
step
#xprate <2.0
#optional
.maxlevel 40,dustwallowskip1
step
#xprate >1.99
#optional
.maxlevel 39,dustwallowskip1
step
#completewith DWMstart
.goto Orgrimmar,45.120,63.889
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
.fly Brackenwall Village >>Fly to Brackenwall Village
.target Doras
.zoneskip Dustwallow Marsh
step
#label Hoofprints
.goto Dustwallow Marsh,29.71,47.65
>>Click the |cRXP_PICK_Hoofprints|r on the ground
.accept 1268 >> Accept Suspicious Hoofprints
step
#label Badge
.goto Dustwallow Marsh,29.83,48.24
>>Click the |cRXP_PICK_Theramore Guard Badge|r on the plank of wood
.accept 1269 >> Accept Lieutenant Paval Reethe
step
.goto Dustwallow Marsh,29.63,48.60
>>Click the |cRXP_PICK_Black Shield|r above the fireplace
.accept 1251 >> Accept The Black Shield
step
#requires Badge
.goto Dustwallow Marsh,35.15,38.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush|r
.accept 1177 >> Accept Hungry!
.target Mudcrush Durtfeet
step
.goto Dustwallow Marsh,35.21,30.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer|r
.accept 1201 >> Accept Theramore Spies
.target Nazeer Bloodpike
step << Hunter
.goto Dustwallow Marsh,35.51,30.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zanara|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
.collect 3030,2600,1322,1 << Hunter 
.target Zanara
step
.goto Dustwallow Marsh,36.41,31.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
.turnin 1268 >> Turn in Suspicious Hoofprints
.turnin 1269 >> Turn in Lieutenant Paval Reethe
.turnin 1251 >> Turn in The Black Shield
.accept 1321 >> Accept The Black Shield
.target Krog
step
#label DWMstart
.goto Dustwallow Marsh,36.50,30.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Do'gol|r
.turnin 1321 >> Turn in The Black Shield
.accept 1322 >> Accept The Black Shield
.target Do'gol
step
#completewith Infiltrator
>>Kill |cRXP_ENEMY_Darkfang Spiders|r. Loot them for their |cRXP_LOOT_Venom Sacs|r
>>|cRXP_ENEMY_Bloodfen Raptors|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Darkfang spiders|r, so kill them too if needed|r
.complete 1322,1 
.mob Darkfang Lurker
.mob Darkfang Creeper
.mob Darkfang Spider
.mob Darkfang Venomspitter
step
.goto Dustwallow Marsh,40.96,36.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogron|r
>>|cRXP_WARN_This starts an escort quest!|r
>>|cRXP_WARN_Be careful, this quest is hard as you must kill four mobs simultaneously. Find a group if needed, or skip this quest|r
.accept 1273 >> Accept Questioning Reethe
.target Ogron
step
.goto Dustwallow Marsh,42.50,38.00
>>Four mobs will spawn when you reach the camp. They will attack after their roleplay
>>|cRXP_WARN_Let|r |cRXP_FRIENDLY_Ogron|r |cRXP_WARN_aggro one and use your cooldowns to kill the other three|r
.complete 1273,1 
.target Ogron
.isOnQuest 1273
step
#completewith next
.goto Dustwallow Marsh,42.06,26.03,0
.goto Dustwallow Marsh,39.63,23.85,0
.goto Dustwallow Marsh,38.94,22.44,0
.goto Dustwallow Marsh,38.01,25.50,0
.goto Dustwallow Marsh,37.63,27.60,0
.goto Dustwallow Marsh,38.03,33.99,0
.goto Dustwallow Marsh,38.02,37.40,0
.goto Dustwallow Marsh,40.67,35.22,0
>>Kill any |cRXP_ENEMY_Theramore Infiltrator|r you encounter
>>|cRXP_WARN_They are stealthed|r << !Hunter
>>|cRXP_WARN_They are stealthed! Cast|r |T132320:0|t[Track Hidden] |cRXP_WARN_to find them more easily|r << Hunter
.complete 1201,1 
.unitscan Theramore Infiltrator
step
.goto Dustwallow Marsh,46.90,17.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Stinky" Ignatz|r, then start his escort
.accept 1270,1 >> Accept Stinky's Escape
.target "Stinky" Ignatz
step
>>Escort |cRXP_FRIENDLY_Stinky|r
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Bloodfen Screechers|r |cRXP_WARN_call for help at 33% health|r
.complete 1270,1 
.target "Stinky" Ignatz
.mob Bloodfen Screecher
step
.goto Dustwallow Marsh,55.43,26.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1218 >> Accept Soothing Spices
.turnin 1218 >> Turn in Soothing Spices
.accept 1206 >> Accept Jarl Needs Eyes
.target "Swamp Eye" Jarl
step
.goto Dustwallow Marsh,55.44,25.93
>>Click the |cRXP_PICK_Loose Dirt|r West of |cRXP_FRIENDLY_"Swamp Eye" Jarl's|r house
.accept 1238 >> Accept The Lost Report
step
#loop
.goto Dustwallow Marsh,57.80,21.30,0
.goto Dustwallow Marsh,56.82,22.42,50,0
.goto Dustwallow Marsh,57.80,21.30,50,0
.goto Dustwallow Marsh,57.49,16.80,50,0
.goto Dustwallow Marsh,58.29,15.47,50,0
>>Kill |cRXP_ENEMY_Mirefin Murlocs|r. Loot them for their |cRXP_LOOT_Heads|r
.complete 1177,1 
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mirefin Coastrunner
.mob Mirefin Muckdweller
step
#completewith next
>>Kill any |cRXP_ENEMY_Theramore Infiltrator|r you encounter
>>|cRXP_WARN_They are stealthed|r << !Hunter
>>|cRXP_WARN_They are stealthed! Cast|r |T132320:0|t[Track Hidden] |cRXP_WARN_to find them more easily|r << Hunter
.complete 1201,1 
.unitscan Theramore Infiltrator
step
#loop
.goto Dustwallow Marsh,35.9,20.7,90,0
.goto Dustwallow Marsh,32.8,21.4,90,0
.goto Dustwallow Marsh,34.40,25.20,40,0
.goto Dustwallow Marsh,35.90,20.70,40,0
.goto Dustwallow Marsh,32.80,21.40,40,0
.goto Dustwallow Marsh,34.40,25.20,40,0
>>Kill |cRXP_ENEMY_all Darkmist Spiders|r. Loot them for their |cRXP_LOOT_Eyes|r
.complete 1206,1 
.mob Darkmist Recluse
.mob Darkmist Spider
.mob Darkmist Spider
.mob Darkmist Lurker
.unitscan Darkmist Widow
step
#label Infiltrator
#loop
.goto Dustwallow Marsh,42.06,26.03,0
.goto Dustwallow Marsh,39.63,23.85,0
.goto Dustwallow Marsh,38.94,22.44,0
.goto Dustwallow Marsh,38.01,25.50,0
.goto Dustwallow Marsh,37.63,27.60,0
.goto Dustwallow Marsh,38.03,33.99,0
.goto Dustwallow Marsh,38.02,37.40,0
.goto Dustwallow Marsh,40.67,35.22,0
.goto Dustwallow Marsh,42.06,26.03,40,0
.goto Dustwallow Marsh,39.63,23.85,40,0
.goto Dustwallow Marsh,38.94,22.44,40,0
.goto Dustwallow Marsh,38.01,25.50,40,0
.goto Dustwallow Marsh,37.63,27.60,40,0
.goto Dustwallow Marsh,38.03,33.99,40,0
.goto Dustwallow Marsh,38.02,37.40,40,0
.goto Dustwallow Marsh,40.67,35.22,40,0
.goto Dustwallow Marsh,40.50,33.48,40,0
>>Finish killing |cRXP_ENEMY_Theramore Infiltrators|r
>>|cRXP_WARN_They are stealthed|r << !Hunter
>>|cRXP_WARN_They are stealthed! Cast|r |T132320:0|t[Track Hidden] |cRXP_WARN_to find them more easily|r << Hunter
.complete 1201,1 
.unitscan Theramore Infiltrator
step
#loop
.goto Dustwallow Marsh,37.79,27.07,0
.goto Dustwallow Marsh,40.99,25.49,0
.goto Dustwallow Marsh,35.45,40.88,0
.goto Dustwallow Marsh,40.21,47.43,0
.goto Dustwallow Marsh,38.52,51.31,0
.goto Dustwallow Marsh,37.79,27.07,50,0
.goto Dustwallow Marsh,38.75,25.98,50,0
.goto Dustwallow Marsh,40.99,25.49,50,0
.goto Dustwallow Marsh,38.26,36.91,50,0
.goto Dustwallow Marsh,35.45,40.88,50,0
.goto Dustwallow Marsh,38.11,43.09,50,0
.goto Dustwallow Marsh,40.21,47.43,50,0
.goto Dustwallow Marsh,38.52,51.31,50,0
.goto Dustwallow Marsh,36.99,52.10,50,0
>>Kill |cRXP_ENEMY_Darkfang Spiders|r. Loot them for their |cRXP_LOOT_Venom Sacs|r
>>|cRXP_ENEMY_Bloodfen Raptors|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Darkfang spiders|r, so kill them too if needed|r
.complete 1322,1 
.mob Darkfang Lurker
.mob Darkfang Creeper
.mob Darkfang Spider
.mob Darkfang Venomspitter
step
#completewith next
.subzone 496 >> Travel back to Brackenwall Village
step
#xprate <2.1
#softcore
.goto Dustwallow Marsh,35.21,30.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer|r
.turnin 1201 >> Turn in Theramore Spies
.turnin 1238 >> Turn in The Lost Report
.accept 1202 >> Accept The Theramore Docks
.target Nazeer Bloodpike
step
#xprate >2.09
#softcore
.goto Dustwallow Marsh,35.21,30.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer|r
.turnin 1201 >> Turn in Theramore Spies
.turnin 1238 >> Turn in The Lost Report
.target Nazeer Bloodpike
step
#hardcore
.goto Dustwallow Marsh,35.21,30.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer|r
.turnin 1201 >> Turn in Theramore Spies
.turnin 1238 >> Turn in The Lost Report
.target Nazeer Bloodpike
step
.goto Dustwallow Marsh,36.50,30.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Do'gol|r
.turnin 1322 >> Turn in The Black Shield
.accept 1323 >> Accept The Black Shield
.target Do'gol
step
.goto Dustwallow Marsh,36.50,31.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
.turnin 1323 >> Turn in The Black Shield
.turnin 1273 >> Turn in Questioning Reethe
.accept 1276 >> Accept The Black Shield
.target Krog
.isQuestComplete 1273
step
.goto Dustwallow Marsh,36.50,31.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
.turnin 1323 >> Turn in The Black Shield
.accept 1276 >> Accept The Black Shield
.target Krog
step
.goto Dustwallow Marsh,35.20,38.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush|r
.turnin 1177 >> Turn in Hungry!
.target Mudcrush Durtfeet
step
.goto Dustwallow Marsh,55.44,25.93
>>Click the |cRXP_PICK_Loose Dirt|r West of |cRXP_FRIENDLY_"Swamp Eye" Jarl's|r house
.accept 1239 >> Accept The Severed Head
step
.goto Dustwallow Marsh,55.43,26.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.turnin 1206 >> Turn in Jarl Needs Eyes
.target "Swamp Eye" Jarl
step
#ah
#optional
.goto Dustwallow Marsh,55.43,26.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1203 >> Accept Jarl Needs a Blade << !sod
.turnin 1203 >> Turn in Jarl Needs a Blade << !sod
.accept 81570 >> Accept Jarl Needs a Blade << sod
.turnin 81570 >> Turn in Jarl Needs a Blade << sod
.target "Swamp Eye" Jarl
.itemcount 3853,1 << !sod
.itemcount 217281,1 << sod
.isQuestTurnedIn 1206
step
#optional
#completewith NazeerB
.destroy 5884 >> |cRXP_WARN_Delete any extra|r |T133884:0|t[Unpopped Darkmist Eyes] |cRXP_WARN_you still have|r
step
#sticky
#completewith EnterRFD
.subzone 722,2 >> Now you should be looking for a group to Razorfen Downs
.dungeon RFD
step
#xprate <1.5
#era
#softcore
#loop
.goto Dustwallow Marsh,57.19,20.98,0
.goto Dustwallow Marsh,57.77,16.19,0
.goto Dustwallow Marsh,54.18,15.10,0
.goto Dustwallow Marsh,57.19,20.98,60,0
.goto Dustwallow Marsh,57.77,16.19,60,0
.goto Dustwallow Marsh,54.18,15.10,60,0
.xp 37+71300 >> Grind |cRXP_ENEMY_Murlocs|r until you are at least 71300+/76100xp
step
#xprate <1.5
#era
#hardcore
#loop
.goto Dustwallow Marsh,57.19,20.98,0
.goto Dustwallow Marsh,57.77,16.19,0
.goto Dustwallow Marsh,54.18,15.10,0
.goto Dustwallow Marsh,57.19,20.98,60,0
.goto Dustwallow Marsh,57.77,16.19,60,0
.goto Dustwallow Marsh,54.18,15.10,60,0
.xp 37+74000 >> Grind |cRXP_ENEMY_Murlocs|r until you are at least 74000+/76100xp
step
#xprate <2.1
#softcore
#loop
.goto Dustwallow Marsh,57.19,20.98,0
.goto Dustwallow Marsh,57.77,16.19,0
.goto Dustwallow Marsh,54.18,15.10,0
.goto Dustwallow Marsh,57.19,20.98,60,0
.goto Dustwallow Marsh,57.77,16.19,60,0
.goto Dustwallow Marsh,54.18,15.10,60,0
.xp 37+64130 >> Grind |cRXP_ENEMY_Murlocs|r until you are at least 66500+/76100xp
step
#xprate <2.1
#hardcore
#loop
.goto Dustwallow Marsh,57.19,20.98,0
.goto Dustwallow Marsh,57.77,16.19,0
.goto Dustwallow Marsh,54.18,15.10,0
.goto Dustwallow Marsh,57.19,20.98,60,0
.goto Dustwallow Marsh,57.77,16.19,60,0
.goto Dustwallow Marsh,54.18,15.10,60,0
.xp 37+67980 >> Grind |cRXP_ENEMY_Murlocs|r until you are at least 71900+/76100xp
step
#xprate <2.1
#loop
.goto Dustwallow Marsh,57.19,20.98,0
.goto Dustwallow Marsh,57.77,16.19,0
.goto Dustwallow Marsh,54.18,15.10,0
.goto Dustwallow Marsh,57.19,20.98,60,0
.goto Dustwallow Marsh,57.77,16.19,60,0
.goto Dustwallow Marsh,54.18,15.10,60,0
+Grind |cRXP_ENEMY_Murlocs|r until your hearthstone cooldown is <5 minutes
.cooldown item,6948,<0
.dungeon !RFD
step
#xprate >2.09
#loop
.goto Dustwallow Marsh,57.19,20.98,0
.goto Dustwallow Marsh,57.77,16.19,0
.goto Dustwallow Marsh,54.18,15.10,0
.goto Dustwallow Marsh,57.19,20.98,60,0
.goto Dustwallow Marsh,57.77,16.19,60,0
.goto Dustwallow Marsh,54.18,15.10,60,0
.xp 39+80575 >>Grind |cRXP_ENEMY_Murlocs|r until you are at least 80575+/85700xp
.cooldown item,6948,<0
.dungeon !RFD
step
#xprate <2.1
#softcore
.goto Dustwallow Marsh,71.50,51.30
>>Swim along the eastern side of Theramore. Open the |cRXP_PICK_Captain's Footlocker|r for the |cRXP_LOOT_Captain's Documents|r
>>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Coral Shark|r |cRXP_WARN_(level 47 elite) that patrols around the Footlocker|r
>>|cRXP_WARN_Be VERY careful of|r |cRXP_ENEMY_Theramore Guards|r|cRXP_WARN_! They have a huge agro range|r
.complete 1202,1 
.unitscan Theramore Guard
step
#xprate <2.1
#softcore
#completewith next
.goto Dustwallow Marsh,69.60,49.96
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
#xprate >2.09
#softcore
#completewith next
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
#xprate <2.1
#softcore
.goto Dustwallow Marsh,35.30,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer|r
.turnin 1239 >> Turn in The Severed Head
.accept 1240 >> Accept The Troll Witchdoctor
.turnin 1202 >> Turn in The Theramore Docks
.target Nazeer Bloodpike
.isQuestTurnedIn 1238
step
#xprate <2.1
#softcore
.goto Dustwallow Marsh,35.30,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer|r
.turnin 1202 >> Turn in The Theramore Docks
.target Nazeer Bloodpike
step
#xprate >2.09
#softcore
.goto Dustwallow Marsh,35.30,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer|r
.turnin 1239 >> Turn in The Severed Head
.accept 1240 >> Accept The Troll Witchdoctor
.target Nazeer Bloodpike
.isQuestTurnedIn 1238
step
#label NazeerB
#hardcore
.goto Dustwallow Marsh,35.30,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer|r
.turnin 1239 >> Turn in The Severed Head
.accept 1240 >> Accept The Troll Witchdoctor
.target Nazeer Bloodpike
.isQuestTurnedIn 1238
step
#optional
#label dustwallowskip1
step
#optional
#completewith next
.goto Orgrimmar,45.120,63.889
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
.fly Camp Taurajo >>Fly to Camp Taurajo
.target Doras
.zoneskip Orgrimmar,1
.dungeon RFD
step
#completewith EnterRFD
.goto The Barrens,46.30,90.27,200 >> Travel to Razorfen Downs
.dungeon RFD
step
#completewith EnterRFD
>>|cRXP_WARN_Have somebody in your group share the following quests if possible. Alternatively, go to Undercity to pick them up yourself|r
.accept 3341 >> Accept Bring the End
.accept 6521 >> Accept An Unholy Alliance
.target Andrew Brownell
.target Varimathras
.isQuestTurnedIn 6522
.dungeon RFD
step
#optional
#completewith EnterRFD
>>|cRXP_WARN_Have somebody in your group share the following quest if possible. Alternatively, go to Undercity to pick it up yourself|r
.accept 3341 >> Accept Bring the End
.target Andrew Brownell
.isQuestAvailable 6522
.dungeon RFD
step
#completewith next
.goto The Barrens,46.30,90.27,50,0
.goto The Barrens,46.92,91.84,50,0
.goto The Barrens,48.20,92.66,50,0
>>Kill |cRXP_ENEMY_Ambassador Malcin|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_He can spawn at 4 different tents outside the instance|r
.complete 6521,1 
.unitscan Ambassador Malcin
.isOnQuest 6521
.dungeon RFD
step
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Moonsinger|r
.accept 6626 >> Accept A Host of Evil
.target Myriam Moonsinger
.dungeon RFD
step
#completewith next
>>Kill |cRXP_ENEMY_Razorfen Battleguards|r, |cRXP_ENEMY_Razorfen Thornweavers|r and |cRXP_ENEMY_Death's Head Cultists|r
>>|cRXP_WARN_This quest is completed outside of the Instance|r
.complete 6626,1 
.mob +Razorfen Battleguard
.complete 6626,2 
.mob +Razorfen Thornweaver
.complete 6626,3 
.mob +Death's Head Cultist
.isOnQuest 6626
.dungeon RFD
step
#loop
.goto The Barrens,48.57,95.69,0
.goto The Barrens,48.20,92.66,0
.goto The Barrens,46.92,91.84,0
.goto The Barrens,46.30,90.27,0
.goto The Barrens,48.57,95.69,50,0
.goto The Barrens,48.20,92.66,50,0
.goto The Barrens,46.92,91.84,50,0
.goto The Barrens,46.30,90.27,50,0
>>Kill |cRXP_ENEMY_Ambassador Malcin|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_He can spawn at 4 different tents outside the instance|r
.complete 6521,1 
.unitscan Ambassador Malcin
.isOnQuest 6521
.dungeon RFD
step
#loop
.goto The Barrens,48.23,92.31,0
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
>>Kill |cRXP_ENEMY_Razorfen Battleguards|r, |cRXP_ENEMY_Razorfen Thornweavers|r and |cRXP_ENEMY_Death's Head Cultists|r
>>|cRXP_WARN_This quest is completed outside of the Instance|r
.complete 6626,1 
.mob +Razorfen Battleguard
.complete 6626,2 
.mob +Razorfen Thornweaver
.complete 6626,3 
.mob +Death's Head Cultist
.isOnQuest 6626
.dungeon RFD
step
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Moonsinger|r
.turnin 6626 >> Turn in A Host of Evil
.target Myriam Moonsinger
.isQuestComplete 6626
.dungeon RFD
step
#label EnterRFD
.goto The Barrens,49.255,93.077,0
.goto The Barrens,49.255,93.077,30,0
.goto 1414,53.26,71.18
.subzone 722,2 >> Enter Razorfen Downs
.dungeon RFD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belnistrasz|r
>>|cRXP_WARN_Take the left path and stick left the entire way until you reach The Murder Pens to get to|r |cRXP_FRIENDLY_Belnistrasz|r
>>|cRXP_WARN_Do not accept Extinguishing the Idol until the rest of your party is ready as this begins the escort. Auto accept has been turned off for this step|r
.accept 3523 >> Accept Scourge of the Downs
.turnin 3523 >> Turn in Scourge of the Downs
.accept 3525,1 >> Accept Extinguishing the Idol
.target Belnistrasz
.dungeon RFD
step
>>Follow and protect |cRXP_FRIENDLY_Belnistrasz|r during his ritual
.complete 3525,1 
.target Belnistrasz
.isOnQuest 3525
.dungeon RFD
step
>>Click |cRXP_PICK_Belnistrasz's Brazier|r
.turnin 3525 >> Turn in Extinguishing the Idol
.isQuestComplete 3525
.dungeon RFD
step
>>Kill |cRXP_ENEMY_Amnennar the Coldbringer|r. Loot him for his |cRXP_LOOT_Skull|r
.complete 3341,1 
.mob Amnennar the Coldbringer
.isOnQuest 3341
.dungeon RFD
step << Druid
#completewith DruidTraining6
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 5201 >> Train your class spells
.target Loganaar
.xp <38,1
.xp >40,1
step << Druid
#label DruidTraining6
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9634 >> Train your class spells
.target Loganaar
.xp <40,1
step << Druid
.hs >>Hearth to Orgrimmar
.use 6948
.bindlocation 1637,1
.zoneskip Orgrimmar
step << !Mage !Druid
.hs >>Hearth to Orgrimmar
.use 6948
.cooldown item,6948,>0
.bindlocation 1637,1
.zoneskip Orgrimmar
step << Mage
#xprate >1.99
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
step << Mage
#xprate >1.99
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 8413 >> Train your class spells
.target Pephredo
.xp <38,1
.xp >40,1
step << Mage
#xprate >1.99
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 8423 >> Train your class spells
.target Pephredo
.xp <40,1
step << !Mage !Druid
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shardi|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Shardi
.zoneskip Dustwallow Marsh,1
.cooldown item,6948,<0
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10391 >> Train your class spells
.target Kardris Dreamseeker
.xp <38,1
.xp >40,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 8134 >> Train your class spells
.target Kardris Dreamseeker
.xp <40,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 8621 >> Train your class spells
.target Ormok
.xp <38,1
.xp >40,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 8624 >> Train your class spells
.target Ormok
.xp <40,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r
.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
.target Rekkul
.zoneskip Orgrimmar,1
.dungeon RFD
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 8820 >> Train your class spells
.target Grezz Ragefist
.xp <38,1
.xp >40,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20660 >> Train your class spells
.target Grezz Ragefist
.xp <40,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14320 >> Train your class spells
.target Ormak Grimshot
.xp <38,1
.xp >40,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14324 >> Train your class spells
.target Ormak Grimshot
.xp <40,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
.train 14925 >> Train your pet spells
.target Xao'tsu
.xp <40,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 6078 >> Train your class spells
.target Ur'kyo
.xp <38,1
.xp >40,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 8106 >> Train your class spells
.target Ur'kyo
.xp <40,1
step
#xprate >1.99
.goto Orgrimmar,75.18,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belgrom Rockmaul|r
.accept 2981 >> Accept A Threat in Feralas
.target Belgrom Rockmaul
step << Hunter
.goto Orgrimmar,78.11,38.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Jin'sora|r
.vendor >> |cRXP_BUY_Buy a|r |T135489:0|t[|cRXP_FRIENDLY_Massive Longbow|r] |cRXP_BUY_from him if it's available|r
.target Jin'sora
.money <6.7952
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
.itemcount 11307,<1
.zoneskip Orgrimmar,1
step << Hunter
.goto Orgrimmar,48.13,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trak'gen|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,2600,232 
.target Trak'gen
.xp >40,1
.zoneskip Orgrimmar,1
step << Hunter
.goto Orgrimmar,48.13,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trak'gen|r
>>|cRXP_BUY_Buy|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_from him|r
.collect 11285,2600,232 
.target Trak'gen
.xp <40,1
.zoneskip Orgrimmar,1
step << Orc !Warlock
#season 0
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kildar|r and |cRXP_FRIENDLY_Ogunaro|r
.train 825 >>Train |T136103:0|t[Wolf Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro Wolfrunner
step << Orc !Warlock
#season 2
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kildar|r and |cRXP_FRIENDLY_Ogunaro|r
.train 825 >>Train |T136103:0|t[Wolf Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <45
.skill riding,75,1
.target Kildar
.target Ogunaro Wolfrunner
step << Troll Mage
#season 0
#optional
#completewith next
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
.xp <40,1
.money <90
.skill riding,75,1
step << Troll
#season 0
#optional
#completewith next
.subzone 367 >> Travel to Sen'Jin Village
.xp <40,1
.money <90
.skill riding,75,1
step << Troll
#season 0
#optional
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r and |cRXP_FRIENDLY_Zjolnir|r
.train 10861 >>Train |T136103:0|t[Raptor Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFRaptor|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step << Troll Mage
#season 2
#optional
#completewith next
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
.xp <40,1
.money <45
.skill riding,75,1
step << Troll
#season 2
#optional
#completewith next
.subzone 367 >> Travel to Sen'Jin Village
.xp <40,1
.money <45
.skill riding,75,1
step << Troll
#season 2
#optional
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r and |cRXP_FRIENDLY_Zjolnir|r
.train 10861 >>Train |T136103:0|t[Raptor Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFRaptor|r]
.xp <40,1
.money <45
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11711 >> Train your class spells
.target Mirket
.xp <38,1
.xp >40,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.trainer >> Train your class spells
.accept 3631 >> Accept Summon Felsteed
.target Mirket
.xp <40,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
.vendor >>Buy any pet upgrades you can afford
.target Kurgul
.zoneskip Orgrimmar,1
step << Warlock
#completewith next
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Ratchet >> Fly to Ratchet
.zoneskip The Barrens
.target Doras
.isOnQuest 3631
step << Warlock
.goto The Barrens,62.63,35.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 3631 >> Turn in Summon Felsteed
.target Strahad Farsan
.isOnQuest 3631
step << Warlock
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Bragok
.isQuestTurnedIn 3631
.zoneskip Orgrimmar
step << Tauren
#season 0
#optional
#completewith KodoRiding
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.zoneskip Thunder Bluff
.target Doras
.xp <40,1
.money <90
.skill riding,75,1
step << Tauren
#season 0
#optional
#completewith next
.subzone 222 >> Travel to Bloodhoof Village
.xp <40,1
.money <90
.skill riding,75,1
step << Tauren
#season 0
#optional
#label KodoRiding
.goto Mulgore,47.64,58.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r and |cRXP_FRIENDLY_Zjolnir|r
.train 132245 >>Train |T136103:0|t[Kodo Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFKodo|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kar Stormsinger
.target Harb Clawhoof
step << Tauren
#season 2
#optional
#completewith KodoRiding
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.zoneskip Thunder Bluff
.target Doras
.xp <40,1
.money <45
.skill riding,75,1
step << Tauren
#season 2
#optional
#completewith next
.subzone 222 >> Travel to Bloodhoof Village
.xp <40,1
.money <45
.skill riding,75,1
step << Tauren
#season 2
#optional
#label KodoRiding
.goto Mulgore,47.64,58.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r and |cRXP_FRIENDLY_Zjolnir|r
.train 132245 >>Train |T136103:0|t[Kodo Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFKodo|r]
.xp <40,1
.money <45
.skill riding,75,1
.target Kar Stormsinger
.target Harb Clawhoof
step << Tauren
#optional
.hs >>Hearth to Orgrimmar
.use 6948
.cooldown item,6948,>0
.zoneskip Orgrimmar
.bindlocation 1637,1
step << Tauren
#optional
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Tal
.cooldown item,6948,<0
.zoneskip Orgrimmar
step
#sticky
#completewith EnterSM
.subzone 796,2 >> Now you should be looking for a group to Scarlet Monastery
.dungeon SM
step << !Mage
#xprate <1.99
#completewith next
.zone Durotar >> Leave Orgrimmar
.zoneskip Orgrimmar,1
step << !Mage
#xprate >1.99
#completewith next
.zone Durotar >> Leave Orgrimmar
.zoneskip Orgrimmar,1
.dungeon SM
step << !Mage
#xprate <1.99
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Tirisfal Glades >>Take the Zeppelin to Undercity
.zoneskip Tirisfal Glades
step << !Mage
#xprate >1.99
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Tirisfal Glades >>Take the Zeppelin to Undercity
.zoneskip Tirisfal Glades
.dungeon SM
step << Mage
#xprate <1.99
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
.zoneskip Undercity
step << Mage
#xprate >1.99
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
.zoneskip Undercity
.dungeon SM
step << Mage
#xprate <1.99
.goto Undercity,85.13,10.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
.train 8413 >> Train your class spells
.target Anastasia Hartwell
.xp <38,1
.xp >40,1
step << Mage
#xprate <1.99
#optional
.goto Undercity,85.13,10.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
.train 8423 >> Train your class spells
.target Anastasia Hartwell
.xp <40,1
step << Mage
#xprate <1.99
.goto Undercity,84.20,15.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Lexington|r
.train 11418 >> Train |T135751:0|t[Portal: Undercity]
.target Lexington Mortaim
.xp <40,1
step << Mage
#xprate <1.99
.goto Undercity,74.05,33.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew|r
.turnin 3341 >>Turn in Bring the End
.target Andrew Brownell
.isQuestComplete 3341
.dungeon RFD
step << Mage
#xprate <1.99
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Hannah|r
>>|cRXP_BUY_Buy two or more|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from him|r
.collect 17031,2 
.target Hannah Akeley
.zoneskip Undercity,1
step
#completewith IntoSM
.goto Undercity,51.92,64.68,15 >>Travel toward |cRXP_FRIENDLY_Varimathras|r
.dungeon SM
step
#optional
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
.turnin 6521 >>Turn in An Unholy Alliance
.target Varimathras
.isQuestComplete 6521
.dungeon SM
step
#label IntoSM
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
.accept 1048 >>Accept Into The Scarlet Monastery
.target Varimathras
.dungeon SM
step
#completewith next
.goto Undercity,47.20,59.69,0
.goto Undercity,47.20,59.69,12,0
.goto Undercity,43.55,68.11,12,0
.goto Undercity,45.20,71.67,12 >>Travel toward |cRXP_FRIENDLY_Faranell|r
.isQuestTurnedIn 1109 
.dungeon SM
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faranell|r
.accept 1113 >> Accept Hearts of Zeal
.target Master Apothecary Faranell
.isQuestTurnedIn 1109 
.dungeon SM
step << Undead !Warlock
#season 0
#xprate <1.99
#optional
#completewith next
.subzone 159 >> Travel to Brill
.xp <40,1
.money <90
.skill riding,75,1
step << Undead !Warlock
#season 0
#xprate <1.99
#optional
.goto Tirisfal Glades,60.09,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velma|r and |cRXP_FRIENDLY_Zachariah|r
.train 10906 >>Train |T136103:0|t[Undead Horsemanship]
.vendor >>|cRXP_BUY_Buy a|r |T132264:0|t[|cFF0070FFSkeletal Horse|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step << Undead !Warlock
#season 2
#xprate <1.99
#optional
#completewith next
.subzone 159 >> Travel to Brill
.xp <40,1
.money <45
.skill riding,75,1
step << Undead !Warlock
#season 2
#xprate <1.99
#optional
.goto Tirisfal Glades,60.09,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velma|r and |cRXP_FRIENDLY_Zachariah|r
.train 10906 >>Train |T136103:0|t[Undead Horsemanship]
.vendor >>|cRXP_BUY_Buy a|r |T132264:0|t[|cFF0070FFSkeletal Horse|r]
.xp <40,1
.money <45
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step
#label EnterSM
.goto Eastern Kingdoms,47.43,19.71,30,0
.goto Eastern Kingdoms,47.76,19.49
.subzone 796,2 >> Enter Scarlet Monastery. Start with Library so you can loot the [|cRXP_FRIENDLY_The Scarlet Key|r] at the end
.zoneskip 304
.zoneskip 305
.dungeon SM
step << !Undead
#completewith Bosses
>>Loot the |cRXP_LOOT_Compendium of the Fallen|r
>>|cRXP_WARN_It's located in a bookshelf on the left in the last corner of the dungeon|r
.complete 1049,1 
.dungeon SM
step
#completewith Compendium
>>Kill |cRXP_LOOT_Scarlet|r mobs. Loot them for their |cRXP_LOOT_Hearts of Zeal|r
.complete 1113,1 
.isOnQuest 1113
.dungeon SM
step
#label Bosses
>>Kill |cRXP_ENEMY_Houndmaster Loksey|r, |cRXP_ENEMY_Herod|r, |cRXP_ENEMY_High Inquisitor Whitemane|r and |cRXP_ENEMY_Scarlet Commander Mograine|r
>>|cRXP_ENEMY_Houndmaster Loksey|r |cRXP_WARN_is located in the Library|r
>>|cRXP_ENEMY_Herod|r |cRXP_WARN_is located in the Armory|r
>>|cRXP_ENEMY_High Inquisitor Whitemane|r |cRXP_WARN_and |cRXP_ENEMY_Scarlet Commander Mograine|r are located in the Cathedral|r
.complete 1048,4 
.complete 1048,3 
.complete 1048,1 
.complete 1048,2 
.isOnQuest 1048
.mob Houndmaster Loksey
.mob Herod
.mob High Inquisitor Whitemane
.mob Scarlet Commander Mograine
.dungeon SM
step << !Undead
#label Compendium
>>Loot the |cRXP_LOOT_Compendium of the Fallen|r
>>|cRXP_WARN_It's located in a bookshelf on the left in the last corner of the dungeon|r
.complete 1049,1 
.isOnQuest 1049
.dungeon SM
step << Mage
#completewith SMturnin
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
.zoneskip Undercity
.dungeon SM
step << !Mage
#completewith next
.goto Undercity,66.07,9.18,150 >> Travel to Undercity
.zoneskip Undercity
.dungeon SM
step
#completewith next
.goto Undercity,51.92,64.68,15 >>Travel toward |cRXP_FRIENDLY_Varimathras|r
.isQuestComplete 1048
.dungeon SM
step
#label SMturnin
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
.turnin 1048 >>Turn in Into The Scarlet Monastery
.isQuestComplete 1048
.target Varimathras
.dungeon SM
step
#completewith next
.goto Undercity,47.20,59.69,0
.goto Undercity,47.20,59.69,12,0
.goto Undercity,43.55,68.11,12,0
.goto Undercity,45.20,71.67,12 >>Travel toward |cRXP_FRIENDLY_Faranell|r
.isQuestComplete 1113
.dungeon SM
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faranell|r
.turnin 1113 >> Turn in Hearts of Zeal
.target Master Apothecary Faranell
.isQuestComplete 1113
.dungeon SM
]]);
