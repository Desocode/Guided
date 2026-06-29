RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 40-50
#classic
#tbc
#mop
<< Horde
#name 41-400_41-41 Swamp of Sorrows
#displayname 41-41 Swamp of Sorrows << !sod
#displayname 41-42 Swamp of Sorrows << sod
#next RestedXP Horde 40-50\41-41 Desolace II;RestedXP Horde 40-50\41-43 Tanaris/Dustwallow
step
#xprate >1.99
#optional
.maxlevel 42,SoSSkip
step
#xprate <2.0
#optional
.maxlevel 43,SoSSkip
step
#era
#completewith NothingButTruth
.goto Stranglethorn Vale,39.30,6.49,60,0
.goto Stranglethorn Vale,40.63,3.12,50 >> Travel to Duskwood
.zoneskip Duskwood
step << Warrior/Mage
#season 2
#completewith next
.goto Duskwood,23.630,34.888,15 >> Enter the North/Eastern crypt
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
.goto Duskwood,26.115,30.863
>>Open the |cRXP_PICK_Dusty Coffer|r. Loot it for the |T252996:0|t[|cRXP_LOOT_Decrepit Phylactery|r]
.collect 210568,1 
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
#completewith next
.goto Duskwood,15.602,38.621,15 >> Exit this crypt and head down into the western crypt
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
#completewith next
.goto Duskwood,18.140,37.940
.cast 426182 >> |cRXP_WARN_Use the|r |T252996:0|t[|cRXP_LOOT_Decrepit Phylactery|r] |cRXP_WARN_on the |cRXP_PICK_Slumbering Bones|r on the throne|r
.use 210568 >>|cRXP_WARN_This will summon a level 25 elite|r |cRXP_ENEMY_Awakened Lich|r
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
.goto Duskwood,18.140,37.940
>>Kill the |cRXP_ENEMY_Awakened Lich|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Flagellation|r] << Warrior
>>Kill the |cRXP_ENEMY_Awakened Lich|r. Loot it for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Mass Regeneration|r] << Mage
>>|cRXP_WARN_If someone else is there killing the |cRXP_ENEMY_Awakened Lich|r you can also help them and you will still be able to loot it|r
.collect 210569,1 << Warrior 
.collect 211514,1 << Mage 
.mob Awakened Lich
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior
#season 2
.train 416050 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flagellation|r] |cRXP_WARN_to train|r |T133495:0|t[Flagellation]
.use 210569
.itemcount 210569,1
.train 403480,1
step << Mage
#season 2
.train 416050 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Mass Regeneration|r] |cRXP_WARN_to train|r |T132870:0|t[Mass Regeneration]
.use 211514
.itemcount 211514,1
.train 415939,1
step
#completewith next
.goto Duskwood,74.06,56.49,70,0
.goto Duskwood,80.46,54.47,70,0
.goto Duskwood,82.11,46.62,70,0
+|cRXP_WARN_Be careful of the |cRXP_WARN_Darkshire Guards|r! Don't mindlessly follow the road|r
>>|cRXP_WARN_Follow the waypoint arrow for safety|r
step
#era
#label NothingButTruth
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zraedus|r and |cRXP_FRIENDLY_Faustin|r
.accept 1372 >> Accept Nothing But The Truth
.goto Duskwood,87.81,35.62
.turnin 1372 >> Turn in Nothing But The Truth
.goto Duskwood,87.45,35.25
.target Deathstalker Zraedus
.target Apothecary Faustin
step
#era
#completewith next
.goto Duskwood,88.47,41.00,50 >> Travel to Deadwind Pass
.zoneskip Deadwind Pass
step
#era
.goto Deadwind Pass,48.02,34.60,60,0
.goto Deadwind Pass,58.43,41.51,50,0
.goto Deadwind Pass,59.91,41.22
.zone Swamp of Sorrows >> Travel to Swamp of Sorrows
.zoneskip Swamp of Sorrows
step
#era
#completewith next
.goto Swamp of Sorrows,15.12,65.50,0
.goto Swamp of Sorrows,15.12,65.50,80,0
>>Kill |cRXP_ENEMY_Adolescent Whelps|r and |cRXP_ENEMY_Dreaming Whelps|r. Loot them for their |cRXP_LOOT_Dream Dust|r
>>|cRXP_WARN_Don't focus on this. Kill all of the whelps once. You'll finish it later|r
.complete 1116,1 
.mob Dreaming Whelp
.mob Adolescent Whelp
step
#completewith next
.subzone 75 >>Travel to Stonard
step
#era
.goto Swamp of Sorrows,44.70,57.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dar|r
.accept 698 >> Accept Lack of Surplus
.target Dar
step
#era
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rartar|r inside the inn
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Rartar
.subzoneskip 75,1
step
#era
.goto Swamp of Sorrows,45.78,52.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thultazor|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Thultazor
.subzoneskip 75,1
step
#era
.goto Swamp of Sorrows,46.10,54.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breyk|r
.fp Stonard >> Get the Stonard Flight Path
.target Breyk
.isQuestAvailable 1392
step
#xprate <2.0
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helgrum|r and |cRXP_FRIENDLY_Fel'zerul|r on the top floor of the large building
.turnin 1420 >> Turn in Report to Helgrum
.target +Helgrum the Swift
.goto Swamp of Sorrows,47.80,55.20
.accept 1424 >> Accept Pool of Tears
.target +Fel'zerul
.goto Swamp of Sorrows,47.80,55.20
.isOnQuest 1420
step
#xprate <2.0
#era
.goto Swamp of Sorrows,47.80,55.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r on the top floor of the large building
.accept 1424 >> Accept Pool of Tears
.target Fel'zerul
step
#xprate >1.99
#era
.goto Swamp of Sorrows,47.80,55.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r on the top floor of the large building
.accept 1424 >> Accept Pool of Tears
.target Fel'zerul
.maxlevel 42
step << Hunter
#era
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogrom|r
.train 13553 >>Train your class spells
.target Ogrom
.xp <42,1
.xp >44,1
step << Hunter
#optional
#era
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogrom|r
.train 14285 >>Train your class spells
.target Ogrom
.xp <44,1
step << Hunter
#era
.goto Swamp of Sorrows,47.35,52.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grokor|r
.train 24561 >>Train your pet spells
.target Grokor
.xp <42,1
step << Warlock
#era
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kartosh|r
.train 6789 >> Train your class spells
.target Kartosh
.xp <42,1
.xp >44,1
step << Warlock
#optional
#era
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kartosh|r
.train 11671 >> Train your class spells
.target Kartosh
.xp <44,1
step << Warlock
#era
.goto Swamp of Sorrows,48.59,55.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greshka|r
.vendor >>Buy any pet upgrades you can afford
.target Greshka
.subzoneskip 75,1
step << Shaman
#era
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greshka|r
.train 11314 >>Train your class spells
.target Haromm
.xp <42,1
.xp >44,1
step << Shaman
#optional
#era
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greshka|r
.train 16315 >>Train your class spells
.target Haromm
.xp <44,1
step << Warrior
#era
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malosh|r
.train 11550 >> Train your class spells
.target Malosh
.xp <42,1
.xp >44,1
step << Warrior
#optional
#era
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malosh|r
.train 11584 >> Train your class spells
.target Malosh
.xp <44,1
step
#era
#completewith GalenStrongbox
>>Kill |cRXP_ENEMY_Sawtooth Crocolisks|r and |cRXP_ENEMY_Sawtooth Snappers|r. Loot them for their |cRXP_LOOT_Sawtooth Flanks|r
.complete 698,1 
.mob Sawtooth Crocolisk
.mob Sawtooth Snapper
step << Rogue
#season 2
#completewith ShurikenTossRune
.line Swamp of Sorrows,32.24,36.70,33.22,39.96,33.92,44.25,36.71,46.36,37.92,43.17,38.29,39.13,38.86,35.61,40.34,34.40,40.86,32.29,42.43,32.11,45.77,36.75,46.68,38.55,48.95,38.71,53.41,38.98,55.48,37.42,56.06,36.05
>>Kill |cRXP_ENEMY_Noboru the Cudgel|r. Loot him for |T133485:0|t[|cRXP_LOOT_Noboru's Cudgel|r]. Use it to start the quest
>>|cRXP_ENEMY_Noboru the Cudgel|r |cRXP_WARN_patrols the zone's top-center|r
.collect 6196,1,1392 
.accept 1392 >> Accept Noboru the Cudgel
.unitscan Noboru the Cudgel
step << Rogue
#season 2
.goto Swamp of Sorrows,41.48,29.97
.train 400096,1
.cast 1842 >>|cRXP_WARN_Cast|r |T136162:0|t[Disarm Trap] |cRXP_WARN_on the|r |cRXP_PICK_Dart Trap|r |cRXP_WARN_on the tree|r
step << Rogue
#season 2
.goto Swamp of Sorrows,42.76,30.77
>>Loot the |cRXP_PICK_Conspicuous Cache|r that spawned for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Assassin|r]|r
.collect 213139,1
step << Rogue
#label ShurikenTossRune
#season 2
.itemcount 213139,1
.use 213139
.train 400096 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Assassin|r] |cRXP_WARN_to learn|r |T132330:0|t[Shuriken Toss]
step
#era
#loop
.line Swamp of Sorrows,32.24,36.70,33.22,39.96,33.92,44.25,36.71,46.36,37.92,43.17,38.29,39.13,38.86,35.61,40.34,34.40,40.86,32.29,42.43,32.11,45.77,36.75,46.68,38.55,48.95,38.71,53.41,38.98,55.48,37.42,56.06,36.05
.goto Swamp of Sorrows,56.06,36.05,40,0
.goto Swamp of Sorrows,55.48,37.42,40,0
.goto Swamp of Sorrows,53.41,38.98,40,0
.goto Swamp of Sorrows,48.95,38.71,40,0
.goto Swamp of Sorrows,46.68,38.55,40,0
.goto Swamp of Sorrows,45.77,36.75,40,0
.goto Swamp of Sorrows,42.43,32.11,40,0
.goto Swamp of Sorrows,40.86,32.29,40,0
.goto Swamp of Sorrows,40.34,34.40,40,0
.goto Swamp of Sorrows,38.86,35.61,40,0
.goto Swamp of Sorrows,38.29,39.13,40,0
.goto Swamp of Sorrows,37.92,43.17,40,0
.goto Swamp of Sorrows,36.71,46.36,40,0
.goto Swamp of Sorrows,33.92,44.25,40,0
.goto Swamp of Sorrows,33.22,39.96,40,0
.goto Swamp of Sorrows,32.24,36.70,40,0
.goto Swamp of Sorrows,32.24,36.70,0
>>Kill |cRXP_ENEMY_Noboru the Cudgel|r. Loot him for |T133485:0|t[|cRXP_LOOT_Noboru's Cudgel|r]. Use it to start the quest
>>|cRXP_ENEMY_Noboru the Cudgel|r |cRXP_WARN_patrols the zone's top-center|r
.collect 6196,1,1392 
.accept 1392 >> Accept Noboru the Cudgel
.unitscan Noboru the Cudgel
step
#era
.goto Swamp of Sorrows,25.98,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
.accept 1389 >> Accept Draenethyst Crystals
.turnin 1392 >> Turn in Noboru the Cudgel
.target Magtoor
step
#xprate <1.5
#era
#completewith GalenE
>>Kill |cRXP_ENEMY_Ongeku|r. Loot him for his |cRXP_LOOT_Shard|r
>>|cRXP_WARN_Ongeku can be found all over the Fallow Sanctuary|r
.complete 1373,1 
.unitscan Ongeku
.isOnQuest 1373
step
#era
#completewith GalenE
>>Loot the blue |cRXP_LOOT_Draenethyst Crystals|r on the ground
.complete 1389,1 
.target Galen Goodward
step
#era
#completewith next
+|cRXP_WARN_This next quest can be quite hard, be extra careful|r
step
#era
#label Galen
.goto Swamp of Sorrows,65.46,18.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen|r to start his escort
>>|cRXP_WARN_Before starting, pre-clear mobs to the immediate southwest of Galen as best you can|r
.accept 1393 >> Accept Galen's Escape
.target Galen Goodward
step
#era
#label GalenE
.goto Swamp of Sorrows,53.03,29.65
>>Escort |cRXP_FRIENDLY_Galen Goodward|r safely out of the Fallow Sanctuary
.complete 1393,1 
.target Galen Goodward
step
#era
#completewith next
>>Loot the blue |cRXP_LOOT_Draenethyst Crystals|r on the ground
.complete 1389,1 
.target Galen Goodward
step
#xprate <1.5
#era
.goto Swamp of Sorrows,62.60,22.86,-1
.goto Swamp of Sorrows,64.74,22.46,-1
>>Kill |cRXP_ENEMY_Ongeku|r. Loot him for his |cRXP_LOOT_Shard|r
>>|cRXP_WARN_Ongeku can be found all over the Fallow Sanctuary|r
.complete 1373,1 
.unitscan Ongeku
.isOnQuest 1373
step
#era
#loop
.goto Swamp of Sorrows,58.31,25.47,0
.goto Swamp of Sorrows,58.31,25.47,50,0
.goto Swamp of Sorrows,61.69,22.38,50,0
.goto Swamp of Sorrows,64.52,19.68,50,0
.goto Swamp of Sorrows,63.88,24.38,50,0
>>Finish looting the blue |cRXP_LOOT_Draenethyst Crystals|r on the ground
.complete 1389,1 
step
#era
#label GalenStrongbox
.goto Swamp of Sorrows,47.80,39.75
>>Click on |cRXP_PICK_Galen's Strongbox|r
.turnin 1393 >> Turn in Galen's Escape
step
#era
#loop
.goto Swamp of Sorrows,52.44,37.14,0
.goto Swamp of Sorrows,52.44,37.14,60,0
.goto Swamp of Sorrows,56.71,35.60,60,0
.goto Swamp of Sorrows,60.47,31.60,60,0
.goto Swamp of Sorrows,63.96,32.23,60,0
>>Kill |cRXP_ENEMY_Sawtooth Crocolisks|r and |cRXP_ENEMY_Sawtooth Snappers|r. Loot them for their |cRXP_LOOT_Sawtooth Flanks|r
.complete 698,1 
.mob Sawtooth Crocolisk
.mob Sawtooth Snapper
step
#completewith LackofSurTI
>>Loot the |cRXP_LOOT_Atal'ai Artifacts|r scattered all around the Pool of Tears' shore, or at the bottom of the Pool of Tears itself
>>|cRXP_WARN_The artifacts have different models. Open your menu, click System, then Graphics, then adjust the Environmental Clutter slider (at the very bottom) to 0|r
.complete 1424,1 
.maxlevel 42
.isOnQuest 1424
step
#era
#xprate <1.5
.goto Swamp of Sorrows,81.40,81.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
.turnin 698 >> Turn in Lack of Surplus
.accept 699 >> Accept Lack of Surplus
.target Tok'Kar
step
#era
#xprate >1.49
.goto Swamp of Sorrows,81.40,81.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
.turnin 698 >> Turn in Lack of Surplus
.target Tok'Kar
step
#optional
#label LackofSurTI
step
#era
#loop
.goto Swamp of Sorrows,75.44,60.41,0
.goto Swamp of Sorrows,75.44,60.41,50,0
.goto Swamp of Sorrows,71.14,61.44,50,0
.goto Swamp of Sorrows,65.36,57.19,50,0
.goto Swamp of Sorrows,65.99,47.10,50,0
.goto Eastern Kingdoms,53.87,79.26,50,0
.goto Swamp of Sorrows,70.57,46.04,50,0
.goto Swamp of Sorrows,75.03,50.83,50,0
>>Loot the |cRXP_LOOT_Atal'ai Artifacts|r scattered all around the Pool of Tears' shore, or at the bottom of the Pool of Tears itself
>>|cRXP_WARN_The artifacts have different models. Open your menu, click System, then Graphics, then adjust the Environmental Clutter slider (at the very bottom) to 0|r
.complete 1424,1 
.maxlevel 42
.isOnQuest 1424
step
#era
.goto Swamp of Sorrows,48.00,54.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Fel'zerul|r in Stonard
.turnin 1424 >> Turn in Pool of Tears
.target Fel'zerul
.isQuestComplete 1424
step
#era
.goto Swamp of Sorrows,25.90,31.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
.turnin 1389 >> Turn in Draenethyst Crystals
.target Magtoor
step
#era
#loop
.goto Swamp of Sorrows,12.02,60.27,0
.goto Swamp of Sorrows,12.02,60.27,50,0
.goto Swamp of Sorrows,12.00,67.29,50,0
.goto Swamp of Sorrows,15.12,65.50,50,0
.goto Swamp of Sorrows,16.54,61.12,50,0
.goto Swamp of Sorrows,15.37,55.45,50,0
.goto Swamp of Sorrows,12.19,57.13,50,0
>>Finish killing |cRXP_ENEMY_Adolescent Whelps|r and |cRXP_ENEMY_Dreaming Whelps|r. Loot them for their |cRXP_LOOT_Dream Dust|r
.complete 1116,1 
.mob Dreaming Whelp
.mob Adolescent Whelp
step << skip 
#season 2
#completewith next
.goto Swamp of Sorrows,4.81,31.38
.goto Redridge Mountains,21.51,57.20,30 >>Perform a logoutskip in the cave by jumping on top of the wooden pole
.zoneskip Redridge Mountains
.train 416015,1
step << Warlock
#season 2
#completewith next
.zone Redridge Mountains >>Travel through Deadwind Pass and Duskwood into Redridge Mountains
step << Warlock
#season 2
.goto Redridge Mountains,74.0,82.2,60,0
.goto Redridge Mountains,77.6,86.6,50,0
.goto Redridge Mountains,76.8,82.2
>>Kill |cRXP_ENEMY_Incinerator Gar'im|r |cRXP_WARN_(lvl 23 elite)|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r]
.collect 211477,1
.unitscan Incinerator Gar'im
.train 416015,1
step << Warlock
#season 2
.use 211477
.itemcount 211477,1
.train 416015 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r] |cRXP_WARN_to train|r |T135789:0|t[Incinerate]
step
#era
.hs >> Hearth to Grom'gol Base Camp
.use 6948
.bindlocation 117,1
.subzoneskip 117
step
#optional
#label SoSSkip
step
#label FlyBB
#completewith BoattoRatchet1
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thysta|r
.fly Booty Bay >> Fly to Booty Bay
.target Thysta
.subzoneskip 35
step
.goto Stranglethorn Vale,27.10,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tThen talk to |cRXP_FRIENDLY_Baron Revilgaz|r
.accept 1183 >> Accept Goblin Sponsorship
.target Baron Revilgaz
step
#xprate <1.99
.goto Stranglethorn Vale,27.10,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 669 >> Turn in Sunken Treasure
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,26.95,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r on the inn's top floor
.turnin 209 >> Turn in Skullsplitter Tusks
.target Kebok
step
#era
.goto Stranglethorn Vale,26.99,77.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Krazek|r
.turnin 1116 >> Turn in Dream Dust in the Swamp
.timer 11,Dream Dust in the Swamp RP
.accept 1117 >> Accept Rumors for Kravel
.accept 2864 >> Accept Tran'rek
.target Krazek
.isQuestComplete 1116
step
#optional
#era
.goto Stranglethorn Vale,26.99,77.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Krazek|r
.accept 1117 >> Accept Rumors for Kravel
.accept 2864 >> Accept Tran'rek
.target Krazek
.isQuestTurnedIn 1116
step
#optional
#era
.goto Stranglethorn Vale,26.99,77.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Krazek|r
.accept 2864 >> Accept Tran'rek
.target Krazek
.isQuestTurnedIn 1116
step
#era
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r on the inn's ground floor
.turnin 600 >> Turn in Venture Company Mining
.target Crank Fizzlebub
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 6774 >> Train your class spells
.target Ian Strom
.xp <42,1
.xp >44,1
step << Rogue
#optional
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 11341 >> Train your class spells
.target Ian Strom
.xp <44,1
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.accept 2872 >> Accept Stoley's Debt
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 577 >> Turn in Some Assembly Required
.target Drizzlik
.isQuestComplete 577
step
#xprate <2.1
#optional
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.accept 628 >> Accept Excelsior
.target Drizzlik
.isQuestTurnedIn 628
step
#optional
#completewith LeaveRatchet
.abandon 577 >>Abandon Some Assembly Required
step
.goto Stranglethorn Vale,28.14,78.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Glyx|r
.vendor >> |cRXP_BUY_Buy|r |T134832:0|t[Greater Healing Potions] |cRXP_BUY_from him if they're up|r
.target Glyx Brewright
.subzoneskip 35,1
step << Rogue
.goto Stranglethorn Vale,28.40,76.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sly|r
.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
.target Sly Garret
.subzoneskip 35,1
step
#xprate <2.1
.goto Stranglethorn Vale,26.55,76.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik Goldgrubber|r
.bankdeposit 2725,2728,2735,2730,2742,2732,2748,2751,2734,2740,2749,2745,2738,2744,2750 >>Deposit all your |T134332:0|t[Green Hills of Stranglethorn Pages] onto the bank
.target Viznik Goldgrubber
step
#completewith next
.goto Stranglethorn Vale,25.90,73.14,40 >> Run to the Booty Bay Dock
step
#label BoattoRatchet1
.goto Stranglethorn Vale,25.76,73.04
.zone The Barrens >> Take the boat to Ratchet
step
#sticky
#completewith LeaveRatchet
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
#label LeaveRatchet
.goto The Barrens,62.40,37.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
.turnin 1270 >> Turn in Stinky's Escape
.target Mebok Mizzyrix
.isQuestComplete 1270
step
#completewith SetCampTHS
#xprate <1.5
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Camp Taurajo >> Fly to Camp Taurajo
.target Bragok
.subzoneskip 378
step
#xprate <1.5
#label SetCampTHS
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
.home >> Set your Hearthstone to Camp Taurajo
.target Innkeeper Byula
.bindlocation 378
.isQuestAvailable 5581
step << !Mage
#xprate <1.5
#era
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step << !Mage
#xprate >1.49
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.target Bragok
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleport: Thunder Bluff]
.zoneskip Thunder Bluff
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai|r
.train 10892 >> Train your class spells
.target Malakai Cross
.xp <42,1
.xp >44,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai|r
.train 10927 >> Train your class spells
.target Malakai Cross
.xp <44,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurston|r
.train 10159 >> Train your class spells
.target Thurston Xane
.xp <42,1
.xp >44,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurston|r
.train 10185 >> Train your class spells
.target Thurston Xane
.xp <44,1
step
.goto Thunder Bluff,54.00,80.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosarn|r
.turnin 1276 >> Turn in The Black Shield
.target Mosarn
.isOnQuest 1276
step << skip
.goto Thunder Bluff,61.40,80.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
.turnin 1136 >> Turn in Frostmaw
.accept 1205 >> Accept Deadmire
.target Melor Stonehoof
.isQuestComplete 1136
step
.goto Thunder Bluff,61.40,80.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
.accept 1205 >> Accept Deadmire
.target Melor Stonehoof
step << !Undead 
.goto Thunder Bluff,34.42,46.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.turnin 1049 >> Accept Compendium of the Fallen
.target Sage Truthseeker
.dungeon SM
.isQuestComplete 1049
step << !Undead
#optional
.abandon 1049 >> Compendium of the Fallen
.isOnQuest 1049
.dungeon SM
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 9750 >>Train your class spells
.target Turak Runetotem
.xp <42,1
.xp >44,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 9752 >>Train your class spells
.target Turak Runetotem
.xp <44,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 13553 >>Train your class spells
.target Urek Thunderhorn
.xp <42,1
.xp >44,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14285 >>Train your class spells
.target Urek Thunderhorn
.xp <44,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
.train 24561 >>Train your pet spells
.target Hesuwa Thunderhorn
.xp <42,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11550 >>Train your class spells
.target Ker Ragetotem
.xp <42,1
.xp >44,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11584 >> Train your class spells
.target Ker Ragetotem
.xp <44,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 11314 >>Train your class spells
.target Tigor Skychaser
.xp <42,1
.xp >44,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 16315 >>Train your class spells
.target Tigor Skychaser
.xp <44,1
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuna Thunderhorn|r
.vendor >> |cRXP_BUY_Buy a|r |T135489:0|t[|cRXP_FRIENDLY_Massive Longbow|r] |cRXP_BUY_from her if it's available|r
.target Kuna Thunderhorn
.money <6.7952
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
.itemcount 11307,<1
.zoneskip Thunder Bluff,1
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
#completewith next
.subzone 222 >> Travel to Bloodhoof Village
.xp <40,1
.money <45
.skill riding,75,1
step << Tauren
#season 2
#optional
.goto Mulgore,47.64,58.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r and |cRXP_FRIENDLY_Zjolnir|r
.train 132245 >>Train |T136103:0|t[Kodo Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFKodo|r]
.xp <40,1
.money <45
.skill riding,75,1
.target Kar Stormsinger
.target Harb Clawhoof
step
#optional
.destroy 5838 >>|cRXP_WARN_Destroy the|r |T134252:0|t[Kodo Skin Scroll] |cRXP_WARN_as you no longer need it|r
step
#optional
.abandon 1424 >> Abandon Pool of Tears
]]);
