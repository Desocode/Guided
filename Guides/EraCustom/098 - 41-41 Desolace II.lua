RXPGuides.RegisterGuide([[
#version 23
#xprate <1.5
#group RestedXP Horde 40-50
#classic
#tbc
#mop
<< Horde
#name 41-41 Desolace II
#next 41-43 Tanaris/Dustwallow
#somname 41-41 Thunder Bluff
step
#era
#completewith next
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Shadowprey Village >>Fly to Shadowprey Village
.target Tal
.zoneskip Desolace
step
#era
.goto Desolace,25.80,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Taiga|r
.accept 5581 >> Accept Portals of the Legion
.target Taiga Wisemane
step
#era
.goto Desolace,36.30,79.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1373 >> Turn in Ongeku
.accept 1374 >> Accept Khan Jehn
.target Uthek the Wise
.isQuestComplete 1373
step
#optional
#era
.goto Desolace,36.30,79.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.accept 1374 >> Accept Khan Jehn
.target Uthek the Wise
.isQuestTurnedIn 1373
step
#era
.goto Desolace,47.80,61.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
.accept 6134 >> Accept Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
step
#era
.goto Desolace,52.20,53.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
.accept 1484 >> Accept The Corrupter
.target Maurin Bonesplitter
step
#era
.goto Desolace,52.60,54.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
.turnin 1484 >> Turn in The Corrupter
.accept 1488 >> Accept The Corrupter
.target Takata Steelblade
step
#era
#completewith KhanJ
.goto Desolace,53.36,79.47,0
>>Click |cRXP_PICK_Demon Portals|r, then kill the |cRXP_ENEMY_Demon Portal Guardians|r
>>|cRXP_WARN_Don't focus on this step; you can finish it later|r
.complete 5581,1 
.mob Demon Portal Guardian
step
#era
#completewith next
>>Kill |cRXP_ENEMY_Jugkar Grim'rod|r
.complete 1488,2 
.unitscan Jugkar Grim'rod
step
#era
.goto Desolace,55.90,77.80
>>Kill |cRXP_ENEMY_Lord Azrethoc|r. He patrols a little on the eastern side of Mannoroc Coven
>>|cRXP_WARN_He uses|r |T132355:0|t[Mortal Strike] |cRXP_WARN_(-50% healing debuff) and has high melee damage|r
>>|cRXP_WARN_Kite him with|r |T135849:0|t[Frost Shock] |cRXP_WARN_if needed|r << Shaman
>>|cRXP_WARN_Use|r |T132336:0|t[Retaliation] |cRXP_WARN_to ensure you can kill him|r << Warrior
>>|cRXP_WARN_Cast|r |T136184:0|t[Psychic Scream] |cRXP_WARN_to heal up in between his|r |T132355:0|t[Mortal Strikes] << Priest
>>|cRXP_WARN_He can be kited very easily|r << Hunter/Mage
>>|cRXP_WARN_Use|r |T132155:0|t[Gouge] |cRXP_WARN_to restore energy and heal up with bandage. Save|r |T136205:0|t[Evasion] |cRXP_WARN_in case it misses|r << Rogue
>>|cRXP_WARN_Keep distance from him by casting|r |T136183:0|t[Fear] << Warlock
>>|cRXP_WARN_He is easily killable in|r |T132276:0|t[Bear Form] |cRXP_WARN_or by kiting him with|r |T136100:0|t[Entangling Roots] << Druid
.complete 1488,1 
.unitscan Lord Azrethoc
step
#era
#label Jugkar
.goto Desolace,55.90,77.80
>>Kill |cRXP_ENEMY_Jugkar Grim'rod|r
.complete 1488,2 
.unitscan Jugkar Grim'rod
step
#era
#label KhanJ
.goto Desolace,66.30,80.10
>>Kill |cRXP_ENEMY_Khan Jehn|r. Loot him for his |cRXP_LOOT_Head|r
.complete 1374,1 
.mob Khan Jehn
.isQuestTurnedIn 1373
step << Warlock
#season 2
.train 426467,1
.train 19028,3 
.goto Desolace,81.2,79.7
.cast 434869 >> |cRXP_WARN_Click on the Altar to summon|r |cRXP_ENEMY_Seductress Ceeyna|r |cRXP_WARN_but make sure to use|r |T136121:0|t[Shadow Ward]|cRXP_WARN_,|r |T136190:0|t[Sacrifice] |cRXP_WARN_and|r |T136160:0|t[Soul Link]|r |cRXP_WARN_beforehand|r |cFFFF0000as you will receive a lot of damage during the channel and it cannot be healed|r
step << Warlock
#season 2
.train 426467,1
.train 19028,1 
.goto Desolace,81.2,79.7
.cast 434869 >> |cRXP_WARN_Click on the Altar to summon|r |cRXP_ENEMY_Seductress Ceeyna|r |cRXP_WARN_but make sure to use|r |T136121:0|t[Shadow Ward] |cRXP_WARN_and|r |T136190:0|t[Sacrifice] |cRXP_WARN_beforehand|r |cFFFF0000as you will receive a lot of damage during the channel and it cannot be healed|r
step << Warlock
#season 2
.train 426467,1
.goto Desolace,81.2,79.7
>>Kill |cRXP_ENEMY_Seductress Ceeyna|r. Loot her for |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowflames|r]
.collect 213101,1
.mob Seductress Ceeyna
step << Warlock
#season 2
.train 426467 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowflames|r] |cRXP_WARN_to learn|r |T236302:0|t[Shadowflame]
.use 213101
.itemcount 213101,1
step
#era
#completewith next
.subzone 2657 >>Travel to the Valley of Bones
step
#era
.goto Desolace,64.00,91.70
.use 15848 >>|cRXP_WARN_Use the|r |T132763:0|t[Crate of Ghost Magnets]
>>Kill |cRXP_ENEMY_Magrami Spectres|r as they spawn. Loot them for their |cRXP_LOOT_Ghost-o-plasm|r
>>|cRXP_WARN_Be careful. They share agro, it is easy to overpull here|r
.complete 6134,1 
.mob Magrami Spectre
step
#era
.goto Desolace,53.36,79.47
>>Click |cRXP_PICK_Demon Portals|r, then kill the |cRXP_ENEMY_Demon Portal Guardians|r
.complete 5581,1 
.mob Demon Portal Guardian
step
#era
.goto Desolace,52.60,54.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata|r
.turnin 1488 >> Turn in The Corrupter
.target Takata Steelblade
step
#era
.goto Desolace,47.80,61.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz|r
.turnin 6134 >> Turn in Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
step
#era
.goto Desolace,36.30,79.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1374 >> Turn in Khan Jehn
.accept 1380 >> Accept Khan Hratha
.target Uthek the Wise
.isQuestTurnedIn 1373
.group
step
#era
.goto Desolace,36.30,79.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1374 >> Turn in Khan Jehn
.target Uthek the Wise
.isQuestTurnedIn 1373
step
#era
#loop
.goto Desolace,30.24,57.82,0
.goto Desolace,29.97,68.88,30,0
.goto Desolace,30.00,66.32,30,0
.goto Desolace,31.57,65.07,30,0
.goto Desolace,32.98,65.93,30,0
.goto Desolace,32.91,62.80,30,0
.goto Desolace,32.01,60.85,50,0
.goto Desolace,29.53,60.66,50,0
.goto Desolace,29.95,58.26,50,0
.goto Desolace,30.73,55.60,50,0
.goto Desolace,32.56,54.95,50,0
.goto Desolace,34.65,56.81,50,0
.goto Desolace,35.28,61.30,50,0
.goto Desolace,36.76,60.62,50,0
.goto Desolace,35.09,57.90,50,0
.goto Desolace,30.57,52.07,50,0
.goto Desolace,29.99,54.66,50,0
.goto Desolace,30.24,57.82,50,0
>>Kill |cRXP_ENEMY_Maraudine Centaurs|r. Loot them for the |T134374:0|t[|cRXP_LOOT_War Horn Mouthpiece|r]
>>|cRXP_WARN_This has a low droprate, it can take a while|r
.collect 6074,1,1380,1 
.mob Maraudine Khan Advisor
.mob Maraudine Stormer
.mob Maraudine Scout
.mob Maraudine Windchaser
.mob Maraudine Mauler
.mob Maraudine Wrangler
.mob Maraudine Marauder
.isOnQuest 1380
.group 2
step
.goto Desolace,30.31,50.57,25,0
.goto Desolace,29.37,50.94,25,0
.goto Desolace,29.74,53.50
>>Click the |cRXP_PICK_Mouthpiece Mount|r on the summit overlooking Maraudon, then kill waves of Maraudine centaur until |cRXP_ENEMY_Khan Hratha|r spawns. Kill him, then loot his |cRXP_LOOT_Key Fragment|r
.complete 1380,1 
.mob Maraudine Khan Guard
.mob Maraudine Stormer
.mob Maraudine Khan Advisor
.mob Khan Hratha
.isOnQuest 1380
.group 2
step
#era
.goto Desolace,33.90,53.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melizza|r to start the escort
>>|cRXP_WARN_Be careful, as this quest is HARD|r
.accept 6132 >> Accept Get Me Out of Here!
.target Melizza Brimbuzzle
.group 2
step
#era
>>Escort |cRXP_FRIENDLY_Melizza|r to safety
>>|cRXP_WARN_This quest is HARD!. Two waves of mobs will spawn during the escort. The first wave consists of 4 mobs, try to not use all your cooldowns. The second wave has 5 mobs, use everything here|r
.complete 6132,1
.isOnQuest 6132
.group 2
step
#era
.goto Desolace,47.80,61.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz|r
.turnin 6132 >> Turn in Get Me Out of Here!
.target Hornizz Brimbuzzle
.isQuestComplete 6132
step
#era
.goto Desolace,36.30,79.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek|r
.turnin 1380 >> Turn in Khan Hratha
.target Uthek the Wise
.isQuestComplete 1380
.group
step
#era
#completewith next
.goto Desolace,27.07,75.74,100,0
.goto Desolace,26.09,74.49,60,0
.subzone 2408 >>Travel to Shadowprey Village
step
#era
.goto Desolace,25.81,68.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taiga Wisemane|r
.turnin 5581 >> Turn in Portals of the Legion
.target Taiga Wisemane
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
>>Use the |T134325:0|t[Bug Catching Net] on a |cRXP_ENEMY_Flesh Picker|r
.goto Desolace,51.2,59.9
.use 213562
.collect 213567,1 
.mob Flesh Picker
step
.hs >> Hearth to Camp Taurajo
.goto The Barrens,45.58,59.04,30 >>Arrive in Camp Taurajo
.use 6948
.bindlocation 378,1
.subzoneskip 378
.cooldown item,6948,>0
step
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Byula
.zoneskip The Barrens,1
step
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Tanaris >> Fly to Tanaris
.target Omusa Thunderhorn
.zoneskip The Barrens,1
step
#optional
.goto Desolace,21.60,74.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalon|r at the end of the dock
.fly Tanaris >> Fly to Tanaris
.target Thalon
.zoneskip Desolace,1
step
#optional
.abandon 1380,6132
]]);
