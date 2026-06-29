RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 40-50
#version 23
#classic
#tbc
#mop
<< Horde
#xprate <2.1
#name 45-46 Swamp of Sorrows
#displayname 47-47 Swamp of Sorrows << SoD
#next 46-48 Tanaris
#era
step
#xprate <1.5
#era
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r at the Blasted Lands border
.accept 2784 >>Accept Fall from Grace
.target Fallen Hero of the Horde
step
#xprate <1.5
#era
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r and go through the whole dialogue
.complete 2784,1 
.target Fallen Hero of the Horde
.skipgossip 7572,1,1,1
step
#xprate <1.5
#era
.goto Blasted Lands,52.76,2.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2784 >>Turn in Fall From Grace
.accept 2621 >>Accept The Disgraced One
.target Fallen Hero of the Horde
step << Hunter/Druid
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
.goto Swamp of Sorrows,25.0,54.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaryllis Webb|r
>>Acquire the |T134419:0|t[|cRXP_FRIENDLY_Rune of Invigoration|r] from her << Hunter
>>Acquire the |T134419:0|t[|cRXP_FRIENDLY_Rune of Survival|r] from her << Druid
>>|cRXP_WARN_You must have retrieved the|r |T132195:0|t[Flesh Picker Specimen]|cRXP_WARN_,|r |T237144:0|t[Hay Weevil Specimen] |cRXP_WARN_and|r |T132196:0|t[Arbor Tarantula Specimen] |cRXP_WARN_to receive this rune|r
.collect 213125,1 << Hunter 
.collect 210817,1 << Druid 
.skipgossip 217412,1
.target Amaryllis Webb
step << Hunter/Druid
#xprate <1.5
#season 2
.train 416089 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Invigoration|r] |cRXP_WARN_to train|r |T135125:0|t[Wyvern Strike] << Hunter
.train 410027 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Survival|r] |cRXP_WARN_to train|r |T132266:0|t[Survival Instincts] << Druid
.itemcount 210817,1 << Druid
.itemcount 213125,1 << Hunter
step
#xprate <1.5
#era
#completewith next
.goto Swamp of Sorrows,46.0,54.2,50,0
.subzone 75 >>Travel to Stonard
step
#xprate <1.5
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r and |cRXP_FRIENDLY_Ruag|r upstairs
.accept 1429 >>Accept The Atal'ai Exile
.target +Fel'zerul
.goto Swamp of Sorrows,47.93,54.79
.turnin 2621 >>Turn in The Disgraced One
.accept 2622 >>Accept The Missing Orders
.target +Dispatch Commander Ruags
.goto Swamp of Sorrows,47.78,54.94
.isQuestTurnedIn 1424
step
#xprate <1.5
#optional
#era
.goto Swamp of Sorrows,47.78,54.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruag|r upstairs
.turnin 2621 >>Turn in The Disgraced One
.accept 2622 >>Accept The Missing Orders
.target Dispatch Commander Ruags
step << Warlock
#season 2
#sticky
#completewith SwampEnd
#label ExplorerImp
>>As you're questing cast |T136163:0|t|cRXP_FRIENDLY_[Drain Soul]|r on mobs untill you receive an |T133257:0|t|cRXP_LOOT_Explorer's Soul|r. |cRXP_WARN_Use it to learn how to summon an|r |T236294:0|t|cRXP_FRIENDLY_[Explorer Imp]|r
.train 445459 >>|cRXP_WARN_Use|r |T133257:0|t|cRXP_LOOT_Explorer's Soul|r |cRXP_WARN_to learn how to summon an|r |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]
.train 445459,1 
.train 1120,3 
.use 221978
step << Warlock/Mage
#season 2
#requires ExplorerImp << Warlock
#sticky
#completewith SwampEnd
#label FelPortalRune
>>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one summon your |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r] and talk to it while next to a portal to send it on an expedition. After 10-20 minutes it will return with loot and a chance to award you with |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
>>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one close it using a |T134945:0|t[|cRXP_LOOT_Scroll of Spatial Mending|r]. This will award you with |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r] << Mage
>>|cRXP_WARN_Be on the lookout for the portals untill you get the rune|r
.collect 221499,1 << Warlock 
.collect 223147,1 << Mage 
.itemcount 220792,1 << Mage 
.use 223148 << Warlock 
.use 220792 << Mage
.train 429311,1 << Mage
.train 431756,1 << Warlock
.train 1120,3 << Warlock 
.unitscan Fel Sliver
.unitscan Fel Crack
.unitscan Fel Tear
.unitscan Fel Scar
.unitscan Fel Rift
step << Warlock/Mage
#season 2
#requires FelPortalRune
#sticky
#completewith SwampEnd
.itemcount 221499,1 << Warlock 
.itemcount 223147,1 << Mage 
.train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
.train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
.use 221499 << Warlock
.use 223147 << Mage
step
#xprate >1.49
#era
.goto Swamp of Sorrows,47.93,54.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r
.accept 1429 >>Accept The Atal'ai Exile
.target Fel'zerul
.isQuestTurnedIn 1424
step
#xprate <1.5
#era
.goto Swamp of Sorrows,44.96,57.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bengor|r
.turnin 2622 >>Turn in The Missing Orders
.accept 2623 >>Accept The Swamp Talker
.target Bengor
step
#xprate <1.5
#era
.goto Swamp of Sorrows,81.31,80.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
.accept 699 >>Accept Lack of Surplus
.target Tok'Kar
step
#era
.goto Swamp of Sorrows,45.78,52.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thultazor|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Thultazor
.subzoneskip 75,1
step
#era
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rartar|r inside the inn
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Rartar
.subzoneskip 75,1
step
#xprate <1.5
#era
.goto Swamp of Sorrows,82.0,68.6,40,0
.goto Swamp of Sorrows,86.6,58.6,40,0
#loop
.goto Swamp of Sorrows,87.60,39.60,60,0
.goto Swamp of Sorrows,86.80,35.80,60,0
.goto Swamp of Sorrows,83.20,31.60,60,0
.goto Swamp of Sorrows,82.80,26.20,60,0
.goto Swamp of Sorrows,80.60,20.80,60,0
.goto Swamp of Sorrows,78.60,13.60,60,0
.goto Swamp of Sorrows,74.00,15.60,60,0
.goto Swamp of Sorrows,75.80,20.60,60,0
.goto Swamp of Sorrows,78.60,23.00,60,0
.goto Swamp of Sorrows,79.60,29.20,60,0
.goto Swamp of Sorrows,81.60,33.00,60,0
.goto Swamp of Sorrows,84.80,36.20,60,0
.goto Swamp of Sorrows,87.60,39.60,60,0
>>Kill |cRXP_ENEMY_Sawtooth Snappers|r. Loot them for their |cRXP_LOOT_Claws|r
.complete 699,1 
.mob Sawtooth Snapper
step
#xprate <1.5
#era
.goto Swamp of Sorrows,81.40,80.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
.turnin 699 >>Turn in Lack of Surplus
.accept 1422 >>Accept Threat From the Sea
.target Tok'Kar
step
#xprate <1.5
#era
.goto Swamp of Sorrows,83.70,80.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katar|r
.turnin 1422 >>Turn in Threat From the Sea
.accept 1426 >>Accept Threat From the Sea
.target Katar
step
#xprate <1.5
#era
#loop
.goto Swamp of Sorrows,85.40,82.80,0
.goto Swamp of Sorrows,85.40,82.80,60,0
.goto Swamp of Sorrows,86.60,79.40,60,0
.goto Swamp of Sorrows,88.60,76.60,60,0
.goto Swamp of Sorrows,91.60,69.60,60,0
.goto Swamp of Sorrows,93.40,64.00,60,0
.goto Swamp of Sorrows,94.60,58.20,60,0
.goto Swamp of Sorrows,95.20,51.00,60,0
.goto Swamp of Sorrows,94.60,58.20,60,0
.goto Swamp of Sorrows,93.40,64.00,60,0
.goto Swamp of Sorrows,91.60,69.60,60,0
.goto Swamp of Sorrows,88.60,76.60,60,0
.goto Swamp of Sorrows,87.20,80.40,60,0
.goto Swamp of Sorrows,86.40,84.60,60,0
.goto Swamp of Sorrows,85.60,88.80,60,0
.goto Swamp of Sorrows,83.60,93.80,60,0
.goto Swamp of Sorrows,81.20,93.00,60,0
.goto Swamp of Sorrows,83.20,88.40,60,0
>>Kill |cRXP_ENEMY_Marsh Murlocs|r, |cRXP_ENEMY_Marsh Inkspewers|r and |cRXP_ENEMY_Marsh Flesheaters|r
.complete 1426,1 
.mob +Marsh Murloc
.complete 1426,2 
.mob +Marsh Inkspewer
.complete 1426,3 
.mob +Marsh Flesheater
step
#xprate <1.5
#era
.goto Swamp of Sorrows,83.70,80.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katar|r
.turnin 1426 >>Turn in Threat From the Sea
.accept 1427 >>Accept Threat From the Sea
.target Katar
step
#xprate <1.5
#era
.goto Swamp of Sorrows,81.40,80.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
.turnin 1427 >>Turn in Threat From the Sea
.target Tok'Kar
step
#xprate <1.5
#era
.goto Swamp of Sorrows,83.75,80.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katar|r
.accept 1428 >>Accept Continued Threat
.target Katar
step
#xprate <1.5
#era
#completewith SwampTalker
.goto Swamp of Sorrows,66.03,79.60,40,0
.subzone 1817 >>Travel west and enter Stagalbog Cave
step
#xprate <1.5
#era
#completewith next
>>Kill |cRXP_ENEMY_Marsh Murlocs|r, |cRXP_ENEMY_Marsh Inkspewers|r and |cRXP_ENEMY_Marsh Flesheaters|r
>>|cRXP_WARN_These spawn at a higher rate in Stagalbog Cave west of the camp|r
.complete 1428,1 
.mob +Marsh Murloc
.complete 1428,2 
.mob +Marsh Inkspewer
.complete 1428,3 
.mob +Marsh Flesheater
step
#xprate <1.5
#era
#label SwampTalker
.goto Swamp of Sorrows,66.08,77.67,60,0
.goto Swamp of Sorrows,62.90,87.40
>>Kill |cRXP_ENEMY_Swamp Talker|r. Loot him for the |cRXP_LOOT_Warchief's Orders|r
>>|cRXP_WARN_Save your cooldowns for|r |cRXP_ENEMY_Swamp Talker|r|cRXP_WARN_. His adds die in 1 hit but deal significant damage if left alive.|r
.complete 2623,1 
.unitscan Swamp Talker
step
#xprate <1.5
#era
#loop
.goto Swamp of Sorrows,62.48,87.74,0
.goto Swamp of Sorrows,62.48,87.74,25,0
.goto Swamp of Sorrows,60.95,84.20,25,0
.goto Swamp of Sorrows,62.20,83.16,25,0
.goto Swamp of Sorrows,64.60,81.25,25,0
.goto Swamp of Sorrows,66.42,84.59,25,0
.goto Swamp of Sorrows,63.34,86.47,25,0
.goto Swamp of Sorrows,63.84,91.64,25,0
>>Kill |cRXP_ENEMY_Marsh Murlocs|r, |cRXP_ENEMY_Marsh Inkspewers|r and |cRXP_ENEMY_Marsh Flesheaters|r
>>|cRXP_WARN_These spawn at a higher rate in Stagalbog Cave west of the camp|r
.complete 1428,1 
.mob +Marsh Murloc
.complete 1428,2 
.mob +Marsh Inkspewer
.complete 1428,3 
.mob +Marsh Flesheater
step
#xprate <1.5
#era
.goto Swamp of Sorrows,83.70,80.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katar|r
.turnin 1428 >>Turn in Continued Threat
.target Katar
step
#xprate <1.5
#era
#softcore
#completewith next
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Hunter/Warlock/Shaman/Warrior
#xprate <1.5
#era
#hardcore
#completewith next
.goto Swamp of Sorrows,46.0,54.2,50,0
.subzone 75 >>Travel west to Stonard
step << Hunter
#era
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogrom|r
.train 14304 >> Train your class spells
.target Ogrom
.xp <46,1
.xp >48,1
step << Hunter
#era
#optional
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogrom|r
.train 14321 >> Train your class spells
.target Ogrom
.xp <48,1
step << Hunter
#era
.goto Swamp of Sorrows,47.35,52.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grokor|r
.train 24562 >> Train your pet spells
.target Grokor
.xp <48,1
step << Warlock
#era
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kartosh|r
.train 11699 >> Train your class spells
.target Kartosh
.xp <46,1
.xp >48,1
step << Warlock
#era
#optional
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kartosh|r
.train 11712 >> Train your class spells
.target Kartosh
.xp <48,1
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
.train 10586 >> Train your class spells
.target Haromm
.xp <46,1
.xp >48,1
step << Shaman
#era
#optional
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greshka|r
.train 10431 >> Train your class spells
.target Haromm
.xp <48,1
step << Warrior
#era
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malosh|r
.train 11578 >> Train your class spells
.target Malosh
.xp <46,1
.xp >48,1
step << Warrior
#era
#optional
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malosh|r
.train 20661 >> Train your class spells
.target Malosh
.xp <48,1
step
#xprate <1.5
#era
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2623 >>Turn in The Swamp Talker
.accept 2801 >>Accept A Tale of Sorrow
.target Fallen Hero of the Horde
step
#xprate <1.5
#era
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r and go through the whole dialogue
.complete 2801,1 
.skipgossip 7572,1,1,1
step
#xprate <1.5
#era
.goto Blasted Lands,52.76,2.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2801 >>Turn in A Tale of Sorrow
.target Fallen Hero of the Horde
step
#era
.goto Swamp of Sorrows,22.90,48.30
>>Click the |cRXP_PICK_Soggy Scroll|r in the water beneath the bridge
.turnin 624 >>Turn in Cortello's Riddle
.accept 625 >>Accept Cortello's Riddle
.isOnQuest 624
step
#era
#completewith next
#label SwampEnd
.hs >>Hearth to Camp Mojache
.use 6948
.bindlocation 1099,1
.zoneskip Feralas
step
#era
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Greul|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Greul
step << Druid
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9823 >>Train your class spells
.target Jannos Lighthoof
.xp <46,1
.xp >48,1
step << Druid
#optional
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 22828 >>Train your class spells
.target Jannos Lighthoof
.xp <48,1
step
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.turnin 3122 >>Turn in Return to Witch Doctor Uzer'i
.timer 23,Return to Witch Doctor Uzer'i RP
.accept 3123 >>Accept Testing the Vessel
.accept 3380 >>Accept The Sunken Temple
.target Witch Doctor Uzer'i
.xp <46,1
step
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.turnin 3122 >>Turn in Return to Witch Doctor Uzer'i
.timer 23,Return to Witch Doctor Uzer'i RP
.accept 3123 >>Accept Testing the Vessel
.target Witch Doctor Uzer'i
step
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shyn|r
.fly Tanaris >>Fly to Tanaris
.target Shyn
.zoneskip Tanaris
]]);
