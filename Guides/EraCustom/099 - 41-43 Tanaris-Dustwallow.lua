RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 40-50
#classic
#tbc
#mop
<< Horde
#name 41-43 Tanaris/Dustwallow
#displayname 42-44 Tanaris/Dustwallow << sod
#next 43-44 Feralas
#somname 41-42 Tanaris/Dustwallow
step << Tauren
#optional
#label TaurenMountPickedUp
.zone Thunder Bluff >>Travel to Thunder Bluff
.zoneskip Mulgore,1
step << Tauren
#requires TaurenMountPickedUp
#optional
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Tanaris >>Fly to Tanaris
.target Tal
.zoneskip Thunder Bluff,1
step << !Tauren
#optional
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Tanaris >>Fly to Tanaris
.target Tal
.zoneskip Thunder Bluff,1
step
.goto Tanaris,51.60,26.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2864 >> Turn in Tran'rek
.target Tran'rek
step
.goto Tanaris,51.84,27.02
>>Click on the |cRXP_PICK_Wanted Poster|r
.accept 2781 >> Accept WANTED: Caliph Scorpidsting
step
#label TanarisHS
.goto Tanaris,52.50,27.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r
.home >> Set your Hearthstone to Gadgetzan
.target Innkeeper Fizzgrimble
.bindlocation 976
.isQuestAvailable 1690
step
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Luglunket|r
.turnin 243 >> Turn in Into the Field
.accept 379 >> Accept Slake That Thirst
.accept 1690 >> Accept Wastewander Justice
.target +Chief Engineer Bilgewhizzle
.goto Tanaris,52.46,28.52
.accept 1707 >> Accept Water Pouch Bounty
.target +Spigot Operator Luglunket
.goto Tanaris,52.49,28.44
.isQuestTurnedIn 238 
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Luglunket|r
.accept 1690 >> Accept Wastewander Justice
.target +Chief Engineer Bilgewhizzle
.goto Tanaris,52.46,28.52
.accept 1707 >> Accept Water Pouch Bounty
.target +Spigot Operator Luglunket
.goto Tanaris,52.49,28.44
step
#softcore
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzledowser|r
.accept 992 >> Accept Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
step << Hunter
#completewith next
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laziphus|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Scorpid Hunter|r shortly
.xp <40,1
.target Laziphus
step << Hunter
.goto Tanaris,54.07,32.21
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Scorpid Hunter|r to tame it|r 
.train 2976 >>|cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 6)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.xp <40,1
.mob Scorpid Hunter
.zoneskip Tanaris,1
step << Hunter
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laziphus|r
.stable >> Abandon the |cRXP_ENEMY_Scorpid Hunter|r and retrieve your regular pet
.target Laziphus
.train 2976,3
.zoneskip Tanaris,1
step << Priest/Shaman
#season 2
#sticky
#completewith WastewanderEnd
>>Be on the lookout for |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r] that can drop from |cRXP_ENEMY_Wastewander Thieves|r
>>|cRXP_WARN_This will be needed to obtain the rune for|r |T237567:0|t[|cRXP_FRIENDLY_Pain and Suffering|r << Priest
>>|cRXP_WARN_This will be needed to obtain the rune for|r |T136055:0|t[|cRXP_FRIENDLY_Mental Dexterity|r] << Shaman
.collect 221549,1 
.train 415991,1 << Priest
.train 416055,1 << Shaman
step
#completewith ScreecherSpiritPickup
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r in the Noonshade Ruins en route to Steamwheedle Port. Loot them for their |cRXP_LOOT_Water Pouches|r
.complete 1690,1 
.mob +Wastewander Bandit
.complete 1690,2 
.mob +Wastewander Thief
.collect 8483,10 
.mob +Wastewander Bandit
.mob +Wastewander Thief
.isOnQuest 379
step
#completewith ScreecherSpiritPickup
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r in the Noonshade Ruins en route to Steamwheedle Port. Loot them for their |cRXP_LOOT_Water Pouches|r
.complete 1690,1 
.mob +Wastewander Bandit
.complete 1690,2 
.mob +Wastewander Thief
.collect 8483,5 
.mob +Wastewander Bandit
.mob +Wastewander Thief
.isNotOnQuest 379
step
#label ScreecherSpiritPickup
.goto Tanaris,67.00,22.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.accept 3520 >> Accept Screecher Spirits
.target Yeh'kinya
step << Hunter
.goto Tanaris,67.01,21.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabbey|r
>>|cRXP_BUY_Buy|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_from him|r
.collect 11285,2600,1690,1 
.target Jabbey
step
.goto Tanaris,67.10,24.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stoley|r
.turnin 2872 >> Turn in Stoley's Debt
.target Stoley
step
#loop
.goto Tanaris,64.22,29.16,0
.goto Tanaris,64.22,29.16,60,0
.goto Tanaris,63.62,31.32,60,0
.goto Tanaris,63.24,32.84,60,0
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Water Pouches|r
.complete 1690,1 
.mob +Wastewander Bandit
.complete 1690,2 
.mob +Wastewander Thief
.collect 8483,10 
.mob +Wastewander Bandit
.mob +Wastewander Thief
.isOnQuest 379
step
#label WastewanderEnd
#loop
.goto Tanaris,64.22,29.16,0
.goto Tanaris,64.22,29.16,60,0
.goto Tanaris,63.62,31.32,60,0
.goto Tanaris,63.24,32.84,60,0
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Water Pouches|r
.complete 1690,1 
.mob +Wastewander Bandit
.complete 1690,2 
.mob +Wastewander Thief
.collect 8483,5 
.mob +Wastewander Bandit
.mob +Wastewander Thief
.isNotOnQuest 379
step << Priest/Shaman
#season 2
#loop
.goto Tanaris,64.22,29.16,0
.goto Tanaris,64.22,29.16,60,0
.goto Tanaris,63.62,31.32,60,0
.goto Tanaris,63.24,32.84,60,0
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
>>Kill |cRXP_ENEMY_Wastewander Thieves|r untill you get a |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r]
>>|cRXP_WARN_This will be needed to obtain the rune for|r |T237567:0|t[|cRXP_FRIENDLY_Pain and Suffering|r << Priest
>>|cRXP_WARN_This will be needed to obtain the rune for|r |T136055:0|t[|cRXP_FRIENDLY_Mental Dexterity|r] << Shaman
.collect 221549,1 
.train 415991,1 << Priest
.train 416055,1 << Shaman
step << Shaman
.hs >> Hearth or Astral Recall to Gadgetzan
.use 6948
.bindlocation 976,1
.isQuestComplete 1690
step << Shaman
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge Quikcleave|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Dirge Quikcleave
.subzoneskip 976,1
step
#xprate <1.99
.goto Tanaris,52.46,28.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
.turnin 379 >> Turn in Slake That Thirst
.turnin 1690 >> Turn in Wastewander Justice
.accept 1691 >> Accept More Wastewander Justice
.target Chief Engineer Bilgewhizzle
.isQuestTurnedIn 238
step
#optional
.goto Tanaris,52.46,28.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
.turnin 1690 >> Turn in Wastewander Justice
.accept 1691 >> Accept More Wastewander Justice
.target Chief Engineer Bilgewhizzle
step
.goto Tanaris,52.49,28.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Luglunket|r
.turnin 1707 >> Turn in Water Pouch Bounty
.target Spigot Operator Luglunket
.itemcount 8483,5
step << !Shaman
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge Quikcleave|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Dirge Quikcleave
.subzoneskip 976,1
step
#completewith next
.goto Tanaris,50.87,23.09,30,0
.goto Thousand Needles,75.49,97.58,30,0
.zone Thousand Needles >>Travel north to the Shimmering Flats
step
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.turnin 1117 >> Turn in Rumors for Kravel
.target Kravel Koalbeard
step
.goto Thousand Needles,78.07,77.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle|r
.turnin 1137 >> Turn in News for Fizzle
.target Fizzle Brassbolts
.isQuestTurnedIn 1108
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1183 >> Turn in Goblin Sponsorship
.accept 1186 >> Accept The Eighteenth Pilot
.accept 1190 >> Accept Keeping Pace
.target Pozzik
.isQuestTurnedIn 1108
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1183 >> Turn in Goblin Sponsorship
.accept 1186 >> Accept The Eighteenth Pilot
.target Pozzik
step
#xprate <2.0
.goto Thousand Needles,80.32,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1186 >> Turn in The Eighteenth Pilot
.accept 1187 >> Accept Razzeric's Tweaking
.target Razzeric
.maxlevel 45
step
#xprate >1.99
.goto Thousand Needles,80.32,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1186 >> Turn in The Eighteenth Pilot
.target Razzeric
.maxlevel 43
step
#optional
.goto Thousand Needles,80.32,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1186 >> Turn in The Eighteenth Pilot
.target Razzeric
step
#completewith next
.goto Thousand Needles,79.81,77.02
>>Talk with |cRXP_FRIENDLY_Zamek|r to create a diversion
.turnin 1191 >> Turn in Zamek's Distraction
.target Zamek
.timer 30,Zamek's Distraction RP
step
.goto Thousand Needles,77.21,77.41
>>Click on |cRXP_PICK_Rizzle's Unguarded Plans|r inside the metal hut
.turnin 1190 >> Turn in Keeping Pace
.accept 1194 >> Accept Rizzle's Schematics
.isQuestTurnedIn 1108
step
#xprate <2.1
#era
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1118 >> Accept Back to Booty Bay
.target Kravel Koalbeard
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1194 >> Turn in Rizzle's Schematics
.target Pozzik
.isQuestTurnedIn 1108
step
#xprate <2.0
#optional
.maxlevel 45,DWM2skip
step
#xprate >1.99
#optional
.maxlevel 43,DWM2skip
step
#optional
#completewith FlyDWM1
.destroy 5866 >>|cRXP_WARN_Destroy the|r |T134575:0|t[Sample of Indurium Ore] |cRXP_WARN_as it's not needed for anything|r
.itemcount 5866,1
step
#completewith FlyDWM1
.hs >> Hearth to Gadgetzan
.use 6948
.cooldown item,6948,>0,1
.bindlocation 976,1
step
#completewith next
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >> Travel to Gadgetzan
.cooldown item,6948,<0
step
#label FlyDWM1
#completewith DWMpickups2
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Brackenwall >> Fly to Dustwallow Marsh
.target Bulkrek Ragefist
.zoneskip Dustwallow Marsh
step
.goto Dustwallow Marsh,36.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
.accept 1166 >> Accept Overlord Mok'Morokk's Concern
.target Overlord Mok'Morokk
step
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
.target Draz'Zilb
.accept 1169 >> Accept Identifying the Brood
step
#label DWMpickups2
.goto Dustwallow Marsh,37.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharg|r
.accept 1168 >> Accept Army of the Black Dragon
.target Tharg
step
#completewith MokSnuff
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
>>Find & kill |cRXP_ENEMY_Deadmire|r. Loot him for his |cRXP_LOOT_Tooth|r
>>|cRXP_WARN_He's a White Crocolisk who patrols in the water mires in the area|r
.complete 1205,1 
.unitscan Deadmire
step
.goto Dustwallow Marsh,54.10,56.50
>>Loot the |cRXP_PICK_Crate|r on the ground near the crashed Zeppelin for the |cRXP_LOOT_Seaforium Booster|r
.complete 1187,1 
.isOnQuest 1187
step
#loop
.goto Dustwallow Marsh,56.51,61.15,0
.goto Dustwallow Marsh,56.51,61.15,50,0
.goto Dustwallow Marsh,55.46,61.60,50,0
.goto Dustwallow Marsh,54.80,62.41,50,0
.goto Dustwallow Marsh,54.31,63.24,50,0
.goto Dustwallow Marsh,54.68,64.41,50,0
.goto Dustwallow Marsh,56.10,65.14,50,0
.goto Dustwallow Marsh,56.52,63.62,50,0
.goto Dustwallow Marsh,56.81,62.56,50,0
.goto Dustwallow Marsh,57.30,60.20,50,0
>>Kill |cRXP_ENEMY_Muckshell Makruras|r on the beach. Loot them for the |cRXP_LOOT_Pendant|r
.complete 1261,1 
.mob Muckshell Razorclaw
.mob Muckshell Clacker
.mob Muckshell Scrabbler
.mob Muckshell Pincer
.mob Muckshell Snapclaw
.unitscan Lord Angler
.isOnQuest 1261
step
#completewith ScalebaneCave
>>Kill |cRXP_ENEMY_Firemane Scouts|r and |cRXP_ENEMY_Firemane Ash Tails|r
.complete 1168,1 
.mob +Firemane Scout
.complete 1168,2 
.mob +Firemane Ash Tail
step
#completewith ScalebaneCave
>>Kill |cRXP_ENEMY_Searing Whelps|r and |cRXP_ENEMY_Searing Hatchlings|r. Loot them for their |cRXP_LOOT_Tongues|r and |cRXP_LOOT_Hearts|r
.complete 1169,1 
.complete 1169,2 
.mob Searing Whelp
.mob Searing Hatchling
step
#label MokSnuff
.goto Dustwallow Marsh,44.50,66.00
>>Loot the |cRXP_PICK_Barrel|r on the ground for |cRXP_LOOT_Mok'Morokk's Snuff|r
.complete 1166,1 
step
.goto Dustwallow Marsh,38.70,65.60
>>Loot the |cRXP_PICK_Vase|r on the ground for |cRXP_LOOT_Mok'Morokk's Grog|r
.complete 1166,2 
step
#label ScalebaneCave
#completewith Dragondeez
.goto Dustwallow Marsh,38.31,66.23,12 >>Enter the cave
step
#completewith next
>>Kill |cRXP_ENEMY_Firemane Scalebanes|r
>>|cRXP_WARN_They can only be found inside the cave|r
.complete 1168,3 
.mob Firemane Scalebane
step
.goto Dustwallow Marsh,36.60,69.50
>>Loot the |cRXP_PICK_Chest|r in the back of the cave for |cRXP_LOOT_Mok'Morokk's Strongbox|r
.complete 1166,3 
step
#label Dragondeez
#loop
.goto Dustwallow Marsh,37.44,68.47,0
.goto Dustwallow Marsh,37.44,68.47,15,0
.goto Dustwallow Marsh,38.59,68.10,15,0
.goto Dustwallow Marsh,38.31,66.98,15,0
.goto Dustwallow Marsh,37.27,67.39,15,0
>>Kill |cRXP_ENEMY_Firemane Scalebanes|r
>>|cRXP_WARN_They can only be found inside the cave|r
.complete 1168,3 
.mob Firemane Scalebane
step
#completewith next
>>Kill |cRXP_ENEMY_Searing Whelps|r and |cRXP_ENEMY_Searing Hatchlings|r. Loot them for their |cRXP_LOOT_Tongues|r and |cRXP_LOOT_Hearts|r
.complete 1169,1 
.complete 1169,2 
.mob Searing Whelp
.mob Searing Hatchling
step
#label Firemanemobs
#loop
.goto Dustwallow Marsh,39.08,65.92,0
.goto Dustwallow Marsh,39.08,65.92,80,0
.goto Dustwallow Marsh,42.81,66.35,80,0
.goto Dustwallow Marsh,44.63,66.16,80,0
>>Kill |cRXP_ENEMY_Firemane Scouts|r and |cRXP_ENEMY_Firemane Ash Tails|r
.complete 1168,1 
.mob +Firemane Scout
.complete 1168,2 
.mob +Firemane Ash Tail
step
#loop
.goto Dustwallow Marsh,45.60,82.28,0
.goto Dustwallow Marsh,48.10,80.85,60,0
.goto Dustwallow Marsh,47.09,82.39,60,0
.goto Dustwallow Marsh,45.60,82.28,60,0
.goto Dustwallow Marsh,43.99,81.35,60,0
.goto Dustwallow Marsh,42.31,80.73,60,0
.goto Dustwallow Marsh,42.08,78.40,60,0
.goto Dustwallow Marsh,42.45,75.89,60,0
.goto Dustwallow Marsh,45.60,82.28,60,0
>>Kill |cRXP_ENEMY_Searing Whelps|r and |cRXP_ENEMY_Searing Hatchlings|r. Loot them for their |cRXP_LOOT_Tongues|r and |cRXP_LOOT_Hearts|r
.complete 1169,1 
.complete 1169,2 
.mob Searing Whelp
.mob Searing Hatchling
step
#completewith next
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
>>Find & kill |cRXP_ENEMY_Deadmire|r. Loot him for his |cRXP_LOOT_Tooth|r
>>|cRXP_WARN_He's a White Crocolisk who patrols in the water mires in the area|r
.complete 1205,1 
.unitscan Deadmire
.dungeon ZF
step
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
.accept 2846 >> Accept Tiara of the Deep
.target Tabetha
.dungeon ZF
step
#loop
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
.goto Dustwallow Marsh,50.57,52.82,50,0
.goto Dustwallow Marsh,50.51,55.20,50,0
.goto Dustwallow Marsh,49.15,57.14,50,0
.goto Dustwallow Marsh,48.01,55.61,50,0
.goto Dustwallow Marsh,47.24,57.70,50,0
.goto Dustwallow Marsh,45.94,61.21,50,0
.goto Dustwallow Marsh,44.69,62.28,50,0
.goto Dustwallow Marsh,45.94,61.21,50,0
.goto Dustwallow Marsh,47.24,57.70,50,0
.goto Dustwallow Marsh,47.24,54.53,50,0
.goto Dustwallow Marsh,46.08,54.38,50,0
.goto Dustwallow Marsh,45.72,53.06,50,0
.goto Dustwallow Marsh,46.08,54.38,50,0
.goto Dustwallow Marsh,47.73,53.18,50,0
.goto Dustwallow Marsh,47.15,51.45,50,0
.goto Dustwallow Marsh,50.57,52.82,0
>>Find & kill |cRXP_ENEMY_Deadmire|r. Loot him for his |cRXP_LOOT_Tooth|r
>>|cRXP_WARN_He's a White Crocolisk who patrols in the water mires in the area|r
.complete 1205,1 
.unitscan Deadmire
step
#completewith next
.goto Dustwallow Marsh,36.64,31.72,120,0
.subzone 496 >> Travel to Brackenwall Village
step
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
.turnin 1169 >> Turn in Identifying the Brood
.target Draz'Zilb
step
.goto Dustwallow Marsh,36.30,31.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
.turnin 1166 >> Turn in Overlord Mok'Morokk's Concern
.target Overlord Mok'Morokk
step
.goto Dustwallow Marsh,37.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharg|r
.turnin 1168 >> Turn in Army of the Black Dragon
.target Tharg
step
.goto Dustwallow Marsh,35.30,30.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer|r
.turnin 1261 >> Turn in Marg Speaks
.accept 1262 >> Accept Report to Zor
.target Nazeer Bloodpike
.isQuestComplete 1261
step
.goto Dustwallow Marsh,35.30,30.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer|r
.accept 1262 >> Accept Report to Zor
.target Nazeer Bloodpike
.isQuestTurnedIn 1261
step
#optional
#label DWM2skip
step
#completewith TanarisEnd
.hs >> Hearth to Gadgetzan
.use 6948
.cooldown item,6948,>0
.zoneskip Tanaris
.bindlocation 976,1
step
#completewith TanarisEnd
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shardi|r
.fly Gadgetzan >> Fly to Gadgetzan
.target Shardi
.zoneskip Dustwallow Marsh,1
.cooldown item,6948,<0
step
.goto Tanaris,51.84,27.02
>>Click on the |cRXP_PICK_Wanted Poster|r
.accept 2781 >> Accept WANTED: Caliph Scorpidsting
step
#xprate <1.99
.use 8524 >>|cRXP_WARN_Use the|r |T134459:0|t[|cRXP_FRIENDLY_Model 4711-FTZ Power Source|r] |cRXP_WARN_to start the quest|r
.accept 654 >> Accept Tanaris Field Sampling
.isQuestTurnedIn 238
.itemcount 8524,1
step << Hunter
#season 2
#label Zopilote
#sticky
#completewith TanarisEnd
.goto 1446/1,-3973.700,-7372.900,0
.goto 1446/1,-3777.100,-7358.200,0
.goto 1446/1,-3290.200,-7330.700,0
.goto 1446/1,-3563.000,-7352.400,0
.goto 1446/1,-3386.400,-7337.400,0
.goto 1446/1,-3290.200,-7330.700,0
>>As you're questing you might run across |cRXP_ENEMY_Zopilote|r. A large white carrion bird. If you find it kill him and Loot for the |T134419:0|t[|cRXP_FRIENDLY_Rune of The Raptor|r].
>>|cRXP_ENEMY_Zopilote|r |cRXP_WARN_is a carrion bird that patrols east to west in a large area spanning from south of Sandsorrow Watch to Gadgetzan|r
>>|cRXP_WARN_Don't go out of your way to look for him. The rune is weak for leveling and you can find him later|r
.collect 220687,1
.unitscan Zopilote
.train 416093,1
step << Hunter
#season 2
#sticky
#requires Zopilote
#completewith TanarisEnd
.train 416093 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Raptor|r] |cRXP_WARN_to train|r |T132253:0|t[Raptor Fury]
.use 2220687
.itemcount 220687,1
.train 416093,1
step
#softcore
#xprate <1.99
#completewith next
>>Kill |cRXP_ENEMY_Basilisks|r, |cRXP_ENEMY_Hyenas|r and |cRXP_ENEMY_Scorpids|r. Loot them for their their |cRXP_LOOT_Samples|r
>>|cRXP_WARN_Use the|r |cRXP_LOOT_Samples|r |cRXP_WARN_to test them|r
>>|cRXP_WARN_Do not delete any untested samples|r
>>|cRXP_WARN_This quest has a 2-hour timer. If it runs out you'll have to obtain a new |cRXP_FRIENDLY_Model 4711-FTZ Power Source|r from|r |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.complete 654,1 
.mob +Glasshide Basilisk
.mob +Glasshide Gazer
.complete 654,2 
.mob +Starving Blisterpaw
.mob +Blisterpaw Hyena
.mob +Murderous Blisterpaw
.complete 654,3 
.mob +Scorpid Tail Lasher
.mob +Scorpid Hunter
.use 9437
.use 9439
.use 9442
.isQuestTurnedIn 238
step
#softcore
.goto Tanaris,39.10,29.30
.use 8584 >> |cRXP_WARN_Use the|r |T134867:0|t[Untapped Dowsing Widget] |cRXP_WARN_at the pool|r
>>|cRXP_WARN_Be careful! Two |cRXP_ENEMY_Centipaar Tunnelers|r (level 48) will spawn after completion. Prepare to run away from them|r
.complete 992,1 
step
#xprate <1.99
#loop
.goto Tanaris,47.99,33.20,0
.goto Tanaris,55.94,32.72,90,0
.goto Tanaris,53.75,35.37,90,0
.goto Tanaris,51.13,35.41,90,0
.goto Tanaris,50.18,32.78,90,0
.goto Tanaris,47.99,33.20,90,0
.goto Tanaris,45.47,32.72,90,0
.goto Tanaris,42.52,32.90,90,0
.goto Tanaris,41.23,33.18,90,0
.goto Tanaris,38.30,32.55,90,0
.goto Tanaris,47.99,33.20,90,0
>>Kill |cRXP_ENEMY_Basilisks|r, |cRXP_ENEMY_Hyenas|r and |cRXP_ENEMY_Scorpids|r. Loot them for their their |cRXP_LOOT_Samples|r
>>|cRXP_WARN_Use the|r |cRXP_LOOT_Samples|r |cRXP_WARN_to test them|r
>>|cRXP_WARN_Do not delete any untested samples|r
>>|cRXP_WARN_This quest has a 2-hour timer. If it runs out you'll have to obtain a new |cRXP_FRIENDLY_Model 4711-FTZ Power Source|r from|r |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.complete 654,1 
.mob +Glasshide Basilisk
.mob +Glasshide Gazer
.complete 654,2 
.mob +Starving Blisterpaw
.mob +Blisterpaw Hyena
.mob +Murderous Blisterpaw
.complete 654,3 
.mob +Scorpid Tail Lasher
.mob +Scorpid Hunter
.use 9437
.use 9439
.use 9442
.isQuestTurnedIn 238
step
#softcore
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzledowser|r
.turnin 992 >> Turn in Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
.isQuestComplete 992
step
#xprate <1.99
.goto Tanaris,52.40,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
.turnin 654 >> Turn in Tanaris Field Sampling
.target Chief Engineer Bilgewhizzle
.isQuestTurnedIn 238
step << Priest/Shaman
#season 2
#sticky
#completewith TanarisEnd
#label CodedWarlockNotes
.goto Tanaris,58.75,39.34,60,0
.goto Tanaris,58.72,36.54,60,0
.goto Tanaris,60.07,37.31,60,0
.goto Tanaris,60.76,32.67,60,0
.goto Tanaris,63.57,37.80,60,0
.goto Tanaris,63.89,39.86,60,0
.goto Tanaris,65.03,39.49,60,0
.goto Tanaris,65.41,36.62,60,0
>>Kill |cRXP_ENEMY_Wastewander Shadow Mages|r untill you loot |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r] from them
>>|cRXP_WARN_This will be needed to obtain the rune for|r |T237567:0|t[|cRXP_FRIENDLY_Pain and Suffering|r << Priest
>>|cRXP_WARN_This will be needed to obtain the rune for|r |T136055:0|t[|cRXP_FRIENDLY_Mental Dexterity|r] << Shaman
.collect 221547,1 
.train 415991,1 << Priest
.train 416055,1 << Shaman
step << Priest/Shaman
#season 2
#sticky
#requires CodedWarlockNotes
#completewith TanarisEnd
.itemcount 221547,1
.itemcount 221549,1
>>Combine the |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r] with the |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r] to receive |T237018:0|t[|cRXP_LOOT_Deciphered Warlock Notes|r]
.collect 221545,1
.use 221547
.use 221549
.train 415991,1 << Priest
.train 416055,1 << Shaman
step
#completewith next
.line Tanaris,61.91,35.57,61.91,34.80,62.93,33.28,63.92,31.73,63.93,33.36,63.43,34.33,62.47,35.20,61.91,35.57,60.95,36.69,60.33,37.27,59.56,38.41,58.86,39.41,59.56,38.41,60.33,37.27,60.95,36.69,61.91,35.57,62.47,35.20,63.35,37.42,62.21,37.99,60.84,38.59,62.21,37.99,63.35,37.42,64.21,36.43,64.64,35.28,64.30,33.66,64.18,32.42,63.94,31.73
>>Kill |cRXP_ENEMY_Caliph Scorpidsting|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Be careful; he has two stealthed adds with him|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
#loop
.goto Tanaris,61.04,32.76,0
.goto Tanaris,58.75,36.42,80,0
.goto Tanaris,60.10,37.07,80,0
.goto Tanaris,60.84,38.91,80,0
.goto Tanaris,61.04,32.76,80,0
.goto Tanaris,61.84,34.95,80,0
.goto Tanaris,63.48,37.90,80,0
.goto Tanaris,63.80,39.94,80,0
.goto Tanaris,65.10,39.50,80,0
.goto Tanaris,65.36,36.67,80,0
.goto Tanaris,61.04,32.76,80,0
>>Kill |cRXP_ENEMY_Wastewander Rogues|r, |cRXP_ENEMY_Assassins|r and |cRXP_ENEMY_Shadow Mages|r
.complete 1691,1 
.mob +Wastewander Rogue
.complete 1691,2 
.mob +Wastewander Assassin
.complete 1691,3 
.mob +Wastewander Shadow Mage
step
#label TanarisEnd
#loop
.line Tanaris,61.91,35.57,61.91,34.80,62.93,33.28,63.92,31.73,63.93,33.36,63.43,34.33,62.47,35.20,61.91,35.57,60.95,36.69,60.33,37.27,59.56,38.41,58.86,39.41,59.56,38.41,60.33,37.27,60.95,36.69,61.91,35.57,62.47,35.20,63.35,37.42,62.21,37.99,60.84,38.59,62.21,37.99,63.35,37.42,64.21,36.43,64.64,35.28,64.30,33.66,64.18,32.42,63.94,31.73
.goto Tanaris,61.09,35.99,60,0
.goto Tanaris,61.91,34.80,60,0
.goto Tanaris,62.93,33.28,60,0
.goto Tanaris,63.92,31.73,60,0
.goto Tanaris,63.93,33.36,60,0
.goto Tanaris,63.43,34.33,60,0
.goto Tanaris,62.47,35.20,60,0
.goto Tanaris,61.91,35.57,60,0
.goto Tanaris,60.95,36.69,60,0
.goto Tanaris,60.33,37.27,60,0
.goto Tanaris,59.56,38.41,60,0
.goto Tanaris,58.86,39.41,60,0
.goto Tanaris,59.56,38.41,60,0
.goto Tanaris,60.33,37.27,60,0
.goto Tanaris,60.95,36.69,60,0
.goto Tanaris,61.91,35.57,60,0
.goto Tanaris,62.47,35.20,60,0
.goto Tanaris,63.35,37.42,60,0
.goto Tanaris,62.21,37.99,60,0
.goto Tanaris,60.84,38.59,60,0
.goto Tanaris,62.21,37.99,60,0
.goto Tanaris,63.35,37.42,60,0
.goto Tanaris,64.21,36.43,60,0
.goto Tanaris,64.64,35.28,60,0
.goto Tanaris,64.30,33.66,60,0
.goto Tanaris,64.18,32.42,60,0
.goto Tanaris,63.94,31.73,60,0
.goto Tanaris,63.94,31.73,0
>>Kill |cRXP_ENEMY_Caliph Scorpidsting|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Be careful; he has two stealthed adds with him|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step << Priest/Shaman
#season 2
#loop
.goto Tanaris,65.41,36.62,0
.goto Tanaris,58.75,39.34,60,0
.goto Tanaris,58.72,36.54,60,0
.goto Tanaris,60.07,37.31,60,0
.goto Tanaris,60.76,32.67,60,0
.goto Tanaris,63.57,37.80,60,0
.goto Tanaris,63.89,39.86,60,0
.goto Tanaris,65.03,39.49,60,0
.goto Tanaris,65.41,36.62,60,0
>>Kill |cRXP_ENEMY_Wastewander Shadow Mages|r untill you loot |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r] from them
>>|cRXP_WARN_This will be needed to obtain the rune for|r |T237567:0|t[|cRXP_FRIENDLY_Pain and Suffering|r << Priest
>>|cRXP_WARN_This will be needed to obtain the rune for|r |T136055:0|t[|cRXP_FRIENDLY_Mental Dexterity|r] << Shaman
.collect 221547,1 
.mob Wastewander Shadow Mage
.train 415991,1 << Priest
.train 416055,1 << Shaman
step << Priest/Shaman
#season 2
.itemcount 221547,1
.itemcount 221549,1
>>Combine the |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r] with the |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r] to receive |T237018:0|t[|cRXP_LOOT_Deciphered Warlock Notes|r]
.collect 221545,1
.use 221547
.use 221549
.train 415991,1 << Priest
.train 416055,1 << Shaman
step << Priest/Shaman
#season 2
.goto Tanaris,58.0,36.0
>>Look for a |cRXP_PICK_Cryptic Scroll of Summoning|r on the ground. Walk on top of it and use the |T237018:0|t[|cRXP_LOOT_Deciphered Warlock Notes|r]. This will spawn an |cRXP_ENEMY_Enraged Voidwalker|r a level 43 elite. Kill it and loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Verdant Winter|r] << Priest
>>Look for a |cRXP_PICK_Cryptic Scroll of Summoning|r on the ground. Walk on top of it and use the |T237018:0|t[|cRXP_LOOT_Deciphered Warlock Notes|r]. This will spawn an |cRXP_ENEMY_Enraged Voidwalker|r a level 43 elite. Kill it and loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Mental Dexterity|r] << Shaman
.collect 221979,1 << Priest 
.collect 220610,1 << Shaman 
.mob Enraged Voidwalker
.use 221545
.itemcount 221545,1
.train 415991,1 << Priest
.train 416055,1 << Shaman
step << Priest/Shaman
#season 2
>>Use |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Verdant Winter|r] to learn |T237567:0|t[|cRXP_FRIENDLY_Pain and Suffering|r] << Priest
>>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of Mental Dexterity|r] to learn |T136055:0|t[|cRXP_FRIENDLY_Mental Dexterity|r] << Shaman
.use 221979 << Priest
.use 220610 << Shaman
.itemcount 220610,1 << Shaman
.itemcount 221979,1 << Priest
.train 415991,1 << Priest
.train 416055,1 << Shaman
step << Hunter
#optional
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon|r
.accept 3161 >>Accept Gahz'ridian
.target Marvon Rivetseeker
.xp <43,1
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<37.2
step << Hunter
#optional
.goto Tanaris,39.86,73.23,0
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23,80,0
.use 9978 >>Equip your |T133151:0|t[Gahz'ridian Detector]
>>Loot the |cRXP_PICK_Piles of Sand|r for |cRXP_LOOT_Gahz'ridian Ornaments|r
>>|cRXP_WARN_Gahz'ridian will appear on your minimap. Many can be found in and around the Eastmoon and Southmoon ruins|r
.complete 3161,1 
.use 9978
.isOnQuest 3161
step << Hunter
#optional
.goto Tanaris,52.70,45.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon|r
>>|cRXP_WARN_Re-equip your normal Helmet|r
.turnin 3161 >>Turn in Gahz'ridian
.target Marvon Rivetseeker
.isOnQuest 3161
step
.goto Tanaris,52.40,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
.turnin 1691 >> Turn in More Wastewander Justice
.turnin 2781 >> Turn in WANTED: Caliph Scorpidsting
.target Chief Engineer Bilgewhizzle
step
#sticky
#completewith EnterUldaman
.subzone 1337 >> Now you should be looking for a group to Uldaman
.dungeon ULDA
step << !Mage
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Bulkrek Ragefist
.zoneskip Orgrimmar
.dungeon ULDA
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10927 >> Train your class spells
.target Ur'kyo
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10945 >> Train your class spells
.target Ur'kyo
.xp <46,1
.dungeon ULDA
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 16315 >> Train your class spells
.target Kardris Dreamseeker
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10472 >> Train your class spells
.target Kardris Dreamseeker
.xp <46,1
.dungeon ULDA
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
.dungeon ULDA
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14285 >> Train your class spells
.target Ormak Grimshot
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14304 >> Train your class spells
.target Ormak Grimshot
.xp <46,1
.dungeon ULDA
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11584 >> Train your class spells
.target Grezz Ragefist
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11578 >> Train your class spells
.target Grezz Ragefist
.xp <46,1
.dungeon ULDA
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 11341 >> Train your class spells
.target Ormok
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 11293 >> Train your class spells
.target Ormok
.xp <46,1
.dungeon ULDA
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r
.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
.target Rekkul
.zoneskip Orgrimmar,1
.dungeon ULDA
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11671 >> Train your class spells
.target Mirket
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11699 >> Train your class spells
.target Mirket
.xp <46,1
.dungeon ULDA
step << !Mage
#completewith next
.zone Durotar >> Leave Orgrimmar
.zoneskip Orgrimmar,1
.dungeon ULDA
step << !Mage
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Tirisfal Glades >>Take the Zeppelin to Undercity
.zoneskip Tirisfal Glades
.dungeon ULDA
step << Mage
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
.zoneskip Undercity
.dungeon ULDA
step << Mage
.goto Undercity,85.13,10.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
.train 10185 >> Train your class spells
.target Anastasia Hartwell
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Mage
#optional
.goto Undercity,85.13,10.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
.train 10197 >> Train your class spells
.target Anastasia Hartwell
.xp <46,1
.dungeon ULDA
step
.goto Undercity,62.31,48.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patrick|r
.accept 2342 >> Accept Reclaimed Treasures
.target Patrick Garrett
.dungeon ULDA
step
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly Badlands >> Fly to Badlands
.target Michael Garrett
.zoneskip Badlands
.dungeon ULDA
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarkal Mossmeld|r
.accept 2202 >> Accept Uldaman Reagent Run
.target Jarkal Mossmeld
.isQuestTurnedIn 2258
.dungeon ULDA
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.accept 709 >> Accept Solution to Doom
.target Theldurin the Lost
.dungeon ULDA
step
.goto Eastern Kingdoms,54.49,57.77
.zone 1415 >> Travel to Uldaman
.dungeon ULDA
step
#completewith EnterUldaman
>>If you loot the |T133289:0|t[|cRXP_LOOT_Shattered Necklace|r], save it in your inventory
>>|cRXP_WARN_Do not accept the quest yet as it can cause questlog issues|r
.collect 7666,1,2283,1 
.dungeon ULDA
step
#hardcore
#completewith Treasure
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Uldaman.|r
>>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Magenta Fungus Caps|rr |cRXP_WARN_for everybody|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
#softcore
#completewith Treasure
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Uldaman.|r
>>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Magenta Fungus Caps|rr |cRXP_WARN_for everybody|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
.goto Eastern Kingdoms,53.99,57.90,25,0
.goto Eastern Kingdoms,54.14,58.24
>>Open the |cRXP_PICK_Ancient Chest|r. Loot it for the |cRXP_LOOT_Tablet of Ryun'eh|r
>>|cRXP_WARN_This is completed OUTSIDE of the instance portal|r
.complete 709,1 
.isOnQuest 709
.dungeon ULDA
step
#label Treasure
.goto Eastern Kingdoms,53.81,57.94,20,0
.goto Eastern Kingdoms,53.69,57.94,12,0
.goto Eastern Kingdoms,53.78,58.23
>>Loot the |cRXP_PICK_Garret Family Chest|r in the southern corner of the South Common Hall for the |cRXP_LOOT_Garrett Family Treasure|r
>>|cRXP_WARN_The South Common Hall is southwest of the Uldaman instance portal|r
.complete 2342,1 
.isOnQuest 2342
.dungeon ULDA
step
#hardcore
#completewith next
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Uldaman|r
>>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Magenta Fungus Caps|rr |cRXP_WARN_for everybody|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
#softcore
#completewith next
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Uldaman|r
>>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Magenta Fungus Caps|rr |cRXP_WARN_for everybody|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
#label EnterUldaman
.goto Eastern Kingdoms,53.85,57.68
.subzone 1337,2 >> Zone into Uldaman
.dungeon ULDA
step
#hardcore
#completewith next
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Uldaman|r
>>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Magenta Fungus Caps|rr |cRXP_WARN_for everybody|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
#softcore
#completewith next
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Uldaman|r
>>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Magenta Fungus Caps|rr |cRXP_WARN_for everybody|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
>>Kill |cRXP_ENEMY_Archaedas|r
>>Click |cRXP_PICK_The Discs of Norgannon|r
.accept 2278 >> Accept The Platinum Discs
.mob Archaedas
.dungeon ULDA
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lore Keeper of Norgannon|r
.complete 2278,1 
.skipgossip
.target Lore Keeper of Norgannon
.dungeon ULDA
step
>>Click |cRXP_PICK_The Discs of Norgannon|r
.turnin 2278 >> Turn in The Platinum Discs
.accept 2280 >> Accept The Platinum Discs
.dungeon ULDA
step
.zone Badlands >>Leave Uldaman
.dungeon ULDA
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.turnin 709 >> Turn in Solution to Doom
.accept 728 >> Accept To the Undercity for Yagyin's Digest
.target Theldurin the Lost
.isQuestComplete 709
.dungeon ULDA
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarkal Mossmeld|r
.turnin 2202 >> Turn in Uldaman Reagent Run
.target Jarkal Mossmeld
.isQuestComplete 2202
.dungeon ULDA
step
.hs >> Hearth to Gadgetzan
.use 6948
.cooldown item,6948,>0
.bindlocation 976,1
.dungeon ULDA
.zoneskip Tanaris
step
#optional
.abandon 2202,709
.dungeon ULDA
]]);
