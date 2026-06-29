RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 40-50
#classic
#tbc
#mop
<< Horde
#name 46-48 Tanaris
#displayname 48-50 Tanaris << sod
#next 48-49 The Hinterlands
#somname 45-47 Tanaris
step
#optional
#completewith ReturntoUzeri
.abandon 197 >> Abandon Raptor Mastery
step
#optional
#completewith ReturntoUzeri
.abandon 598 >> Abandon Split Bone Necklace
step
#xprate >2.09
#completewith ReturntoUzeri
.hs >> Hearth to Feralas
.use 6948
.bindlocation 1099,1
.subzoneskip 1099
.cooldown item,6948,>0,1
step
#xprate >2.09
#completewith ReturntoUzeri
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Feralas >>Fly to Feralas
.target Doras
.zoneskip Orgrimmar,1
.cooldown item,6948,<0
step
#xprate >2.09
#completewith ReturntoUzeri
#optional
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fly Feralas >>Fly to Feralas
.zoneskip Ashenvale,1
.target Vhulgra
step
#xprate >2.09
#label ReturntoUzeri
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.turnin 3122 >>Turn in Return to Witch Doctor Uzer'i
.timer 23,Return to Witch Doctor Uzer'i RP
.accept 3123 >>Accept Testing the Vessel
.accept 3380 >>Accept The Sunken Temple
.target Witch Doctor Uzer'i
step
#xprate >2.09
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shyn|r
.fly Tanaris >>Fly to Tanaris
.target Shyn
.zoneskip Tanaris
step
#completewith next
.goto Thousand Needles,70.58,62.69,200 >> Travel to the Shimmering Flats
step
#era
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.turnin 1119 >>Turn in Zanzil's Mixture and a Fool's Stout
.timer 13,Kravel Koalbeard RP
.target Kravel Koalbeard
.isOnQuest 1119
step
.goto Thousand Needles,80.33,76.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1187 >>Turn in Razzeric's Tweaking
.target Razzeric
.isQuestComplete 1187
step
.goto Thousand Needles,80.33,76.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.accept 1188 >>Accept Safety First
.target Razzeric
.isQuestTurnedIn 1187
step
#era
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1120 >>Accept Get the Gnomes Drunk
.target Kravel Koalbeard
.isQuestTurnedIn 1119
step
#era
.goto Thousand Needles,77.56,76.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnome Pit Boss|r
.turnin 1120 >>Turn in Get the Gnomes Drunk
.target Gnome Pit Boss
.isQuestTurnedIn 1119
step
#era
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1122 >>Accept Report Back to Fizzlebub
.target Kravel Koalbeard
.isQuestTurnedIn 1119
step
#completewith DuneMaulPU
#optional
.abandon 1187 >>Turn in Razzeric's Tweaking
step
#completewith next
.goto Thousand Needles,75.44,97.37,40,0
.subzone 976 >>Travel to Gadgetzan
step
.goto Tanaris,51.56,26.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 3362 >>Accept Thistleshrub Valley
.target Tran'rek
step
.goto Tanaris,51.00,27.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shreev|r
.turnin 1188 >>Turn in Safety First
.target Shreev
.isOnQuest 1188
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzledowser|r
.accept 992 >> Accept Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,39.10,29.30
.use 8584 >> |cRXP_WARN_Use the|r |T134867:0|t[Untapped Dowsing Widget] |cRXP_WARN_at the pool|r
>>|cRXP_WARN_Be careful! Two |cRXP_ENEMY_Centipaar Tunnelers|r (level 48) will spawn after completion. Prepare to run away from them|r
.complete 992,1 
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzledowser|r
.turnin 992 >> Turn in Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzledowser|r
.accept 82 >>Accept Noxious Lair Investigation
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,51.90,27.00
>>Click the |cRXP_PICK_Wanted Poster|r by the giant cage
.accept 2875 >>Accept WANTED: Andre Firebeard
step
.goto Tanaris,51.80,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin|r
.accept 2605 >>Accept The Thirsty Goblin
.target Marin Noggenfogger
step
.goto Tanaris,52.50,27.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzgrimble|r
.home >>Set your Hearthstone to Gadgetzan
.target Innkeeper Fizzgrimble
.bindlocation 976
.isQuestAvailable 3161,5863,3362,2606,82,2605
step
.goto Tanaris,52.39,26.97
>>Click on the |cRXP_PICK_Egg-O-Matic|r next to the teleporter, then turn in your Hippogryph Egg
.accept 2741 >>Accept The Super Egg-O-Matic
.turnin 2741 >>Turn in The Super Egg-O-Matic
.addquestitem 8564,2741
step
#label DuneMaulPU
.goto Tanaris,52.80,27.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi|r
.accept 5863 >>Accept The Dunemaul Compound
.target Andi Lynn
step
#optional
+|cRXP_WARN_Open your|r |T132594:0|t[Egg Crate]
.itemcount 8647,1 
.use 8647
step
#optional
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2750 >> Accept A Bad Egg
.turnin 2750 >> Turn in A Bad Egg
.target Curgle Cranklehop
.itemcount 8646,1 
step
#optional
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2749 >> Accept An Ordinary Egg
.turnin 2749 >> Turn in An Ordinary Egg
.target Curgle Cranklehop
.itemcount 8645,1 
step
#optional
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2748 >> Accept A Fine Egg
.turnin 2748 >> Turn in A Fine Egg
.target Curgle Cranklehop
.itemcount 8644,1 
step
#optional
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2747 >> Accept An Extraordinary Egg
.turnin 2747 >> Turn in An Extraordinary Egg
.target Curgle Cranklehop
.itemcount 8643,1 
step
#optional
+|cRXP_WARN_Open your|r |T132594:0|t[Box of Rations]
.itemcount 9539,1 
.use 9539
step
#optional
+|cRXP_WARN_Open your|r |T132595:0|t[Box of Spells]
.itemcount 9540,1 
.use 9540
step
#optional
+|cRXP_WARN_Open your|r |T132597:0|t[Box of Goodies]
.itemcount 9541,1 
.use 9541
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
#completewith next
.subzone 977 >>Travel east to Steamwheedle Port
step
.goto Tanaris,66.60,22.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modiste|r
.accept 8365 >>Accept Pirate Hats Ahoy!
.target Haughty Modiste
step
.goto Tanaris,67.00,22.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3520 >>Turn in Screecher Spirits
.target Yeh'kinya
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.accept 8366 >>Accept Southsea Shakedown
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.06,23.89
.accept 2873 >>Accept Stoley's Shipment
.target +Stoley
.goto Tanaris,67.11,23.98
step
#completewith FireBeard
.goto Tanaris,68.76,41.51,30,0
.subzone 1336 >>Travel south to Lost Rigger Cove
step << Rogue
#season 2
#sticky
#completewith TanarisPirates
#label CoinPurse
>>|cRXP_WARN_Cast|r |T133644:0|t[Pick Pocket] |cRXP_WARN_on|r |cRXP_ENEMY_Southsea Pirates|r |cRXP_WARN_and|r |cRXP_ENEMY_Southsea Freebooters|r |cRXP_WARN_untill you receive a|r |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r
.collect 221371,1 - Kidnapper's Coin Purse 1/1
.mob Southsea Pirate
.mob Southsea Freebooter
.train 432301,1
step << Rogue
#season 2
#sticky
#completewith TanarisPirates
#requires CoinPurse
>>Open the |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r and loot it for a |T133302:0|t|cRXP_LOOT_Precious Medalion|r
.collect 221370,1 
.use 221371
.train 432273,1
step
#completewith StolenCargo
>>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
>>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet. This has a low drop chance, skip it if needed|r
.complete 8366,1 
.mob +Southsea Pirate
.complete 8366,2 
.mob +Southsea Freebooter
.complete 8366,3 
.mob +Southsea Dock Worker
.complete 8366,4 
.mob +Southsea Swashbuckler
.complete 8365,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.collect 9250,1,2876,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.use 9276 
step
#completewith next
>>Loot the |cRXP_PICK_Stolen Cargo|r for |cRXP_LOOT_Stoley's Shipment|r on the second floor of the western house
.complete 2873,1 
step
#label FireBeard
.goto Tanaris,73.37,47.14
>>Kill |cRXP_ENEMY_Andre Firebeard|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_He pulls with nearby mobs. Split-pull him if you can|r << Mage/Warlock
.complete 2875,1 
.unitscan Andre Firebeard
step
#label StolenCargo
.goto Tanaris,72.23,46.81
>>Loot the |cRXP_PICK_Stolen Cargo|r for |cRXP_LOOT_Stoley's Shipment|r on the second floor of the western house
.complete 2873,1 
step
>>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
>>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet. This has a low drop chance, skip it if needed|r
.complete 8366,1 
.mob +Southsea Pirate
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,2 
.mob +Southsea Freebooter
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,3 
.mob +Southsea Dock Worker
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73
.complete 8366,4 
.mob +Southsea Swashbuckler
.goto Tanaris,75.17,45.84
.complete 8365,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.collect 9250,1,2876,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.use 9276 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
step
#xprate <1.5
#loop
.goto Tanaris,70.94,42.85,50,0
.goto Tanaris,72.22,44.35,50,0
.goto Tanaris,72.58,45.30,50,0
.goto Tanaris,71.07,46.03,50,0
.goto Tanaris,71.25,47.98,50,0
.goto Tanaris,72.39,48.23,50,0
.goto Tanaris,72.59,47.10,50,0
.goto Tanaris,73.27,47.99,50,0
.goto Tanaris,74.25,47.27,50,0
.goto Tanaris,73.68,45.89,50,0
.goto Tanaris,72.58,45.30,50,0
.goto Tanaris,72.22,44.35,50,0
>>Kill |cRXP_ENEMY_Southsea Pirates|r
.xp 47 >> Grind to level 47
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step << Rogue
#season 2
.goto Tanaris,70.94,42.85,0
.goto Tanaris,70.94,42.85,50,0
.goto Tanaris,72.22,44.35,50,0
.goto Tanaris,72.58,45.30,50,0
.goto Tanaris,71.07,46.03,50,0
.goto Tanaris,71.25,47.98,50,0
.goto Tanaris,72.39,48.23,50,0
.goto Tanaris,72.59,47.10,50,0
.goto Tanaris,73.27,47.99,50,0
.goto Tanaris,74.25,47.27,50,0
.goto Tanaris,73.68,45.89,50,0
.goto Tanaris,72.58,45.30,50,0
.goto Tanaris,72.22,44.35,50,0
>>|cRXP_WARN_Cast|r |T133644:0|t[Pick Pocket] |cRXP_WARN_on|r |cRXP_ENEMY_Southsea Pirates|r |cRXP_WARN_and|r |cRXP_ENEMY_Southsea Freebooters|r |cRXP_WARN_untill you receive a|r |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r
.collect 221371,1 - Kidnapper's Coin Purse 1/1
.mob Southsea Pirate
.mob Southsea Freebooter
.train 432301,1
step
#optional
#label TanarisPirates
step << Rogue
#season 2
>>Open the |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r and loot it for a |T133302:0|t|cRXP_LOOT_Precious Medalion|r
.collect 221370,1 
.use 221371
.train 432301,1
step
#optional
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon|r
.turnin 3380 >>Turn in The Sunken Temple
.target Marvon Rivetseeker
.isOnQuest 3380
step
#completewith Gahzridian
.goto Tanaris,68.27,41.21,30,0
.goto Tanaris,65.71,41.53,30,0
.goto Tanaris,52.71,45.92,50,0
.subzone 1938 >>Exit Lost Rigger Cove, then travel west to Broken Pillar
step
#optional
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon|r
.turnin 3380 >>Turn in The Sunken Temple
.accept 3161 >>Accept Gahz'ridian
.target Marvon Rivetseeker
.isOnQuest 3380
step
#label Gahzridian
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon|r
.accept 3161 >>Accept Gahz'ridian
.target Marvon Rivetseeker
step << Shaman
#season 2
.train 432236,1
.goto Tanaris,43.0,41.2
.aura 446888,1 >>|cRXP_WARN_Click on the|r |cRXP_PICK_Odd Totem|r. This will transform you into a Ghost Wolf |cRXP_WARN_and increases your damage taken by 50%|r
step << Shaman
#season 2
.train 432236,1
>>|cRXP_WARN_Run towards the other totem while avoiding mobs.|r Loot the appearing chest for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Rolling Thunder|r]
*|cRXP_WARN_You are receiving 50% additional damage. Be careful!|r. You can also pre-clear the mobs on the path to the other totem
.goto Tanaris,45.6,37.8
.collect 220613,1
step << Shaman
#season 2
.itemcount 220613,1
.use 220613
.train 432236 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Rolling Thunder|r] |cRXP_WARN_to learn|r |T136111:0|t[Rolling Thunder]
step
#completewith next
.subzone 982 >>Continue west to The Noxious Lair
step
#loop
.goto Tanaris,35.68,39.78,0
.goto Tanaris,35.68,39.78,70,0
.goto Tanaris,36.55,41.98,70,0
.goto Tanaris,35.59,44.08,70,0
.goto Tanaris,35.60,48.79,70,0
.goto Tanaris,31.70,49.12,70,0
.goto Tanaris,30.83,46.10,70,0
>>Kill |cRXP_ENEMY_Centipaar Silithids|r. Loot them for their |cRXP_LOOT_Insect Parts|r
>>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Centipaar Swarmers|r|cRXP_WARN_. They can spawn many minions and social aggro from great distances|r
>>|cRXP_WARN_All|r |cRXP_ENEMY_Centipaar|r |cRXP_WARN_cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)
.complete 82,1 
.mob Centipaar Wasp
.mob Centipaar Stinger
.mob Centipaar Swarmer
.mob Centipaar Worker
.mob Centipaar Sandreaver
.mob Centipaar Tunneler
step
#completewith Garmarok
.goto Tanaris,40.98,57.16,50,0
.subzone 983 >>Travel southeast to the Dunemaul Compound
step
#completewith next
>>Kill |cRXP_ENEMY_Dunemaul Brutes|r and |cRXP_ENEMY_Dunemaul Enforcers|r
>>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Dunemaul Warlocks|r|cRXP_WARN_, as they have Curse of Thorns|r << Rogue/Warrior/Shaman/Paladin/Hunter
.complete 5863,1 
.mob +Dunemaul Brute
.complete 5863,2 
.mob +Dunemaul Enforcer
step
#label Garmarok
.goto Tanaris,41.50,57.80
>>Kill |cRXP_ENEMY_Gor'marok|r in the cave
>>|cRXP_WARN_Be careful of his heavy damage output and Mortal Strike|r
.complete 5863,3 
.unitscan Gor'marok the Ravager
step
#completewith next
.use 9978 >>Equip your |T133151:0|t[Gahz'ridian Detector]
>>Loot the |cRXP_PICK_Piles of Sand|r for |cRXP_LOOT_Gahz'ridian Ornaments|r
>>|cRXP_WARN_Gahz'ridian will appear on your minimap. Many can be found in and around the Eastmoon and Southmoon ruins|r
.complete 3161,1 
.use 9978
step
#loop
.goto Tanaris,39.86,73.23,0
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23,60,0
>>Kill |cRXP_ENEMY_Dunemaul Brutes|r and |cRXP_ENEMY_Dunemaul Enforcers|r
>>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Dunemaul Warlocks|r|cRXP_WARN_, as they have Curse of Thorns|r << Rogue/Warrior/Shaman/Paladin/Hunter
.complete 5863,1 
.mob +Dunemaul Brute
.complete 5863,2 
.mob +Dunemaul Enforcer
step
.goto Tanaris,39.69,78.30,60,0
.goto Tanaris,39.21,80.25,25,0
.goto Tanaris,38.67,80.45,25,0
.goto Tanaris,38.47,80.99,30,0
.goto Tanaris,37.63,81.40
>>Click the |cRXP_PICK_Uldum Pedestal|r
>>|cRXP_WARN_Be careful! There are elite|r |cRXP_ENEMY_Dune Giants|r |cRXP_WARN_in the area. Follow the waypoint arrow to avoid agro|r
.turnin 2966 >> Turn in Seeing What Happens
.accept 2954 >> Accept The Stone Watcher
.unitscan Dune Smasher
.unitscan Raging Dune Smasher
.isQuestTurnedIn 2965
.dungeon ULDA
step
.goto Tanaris,37.63,81.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Stone Watcher of Norgannon|r
.complete 2954,1 
.skipgossip
.target Stone Watcher of Norgannon
.isQuestTurnedIn 2965
.dungeon ULDA
step
.goto Tanaris,37.63,81.40
>>Click the |cRXP_PICK_Uldum Pedestal|r
.turnin 2954 >> Turn in The Stone Watcher
.accept 2967 >> Accept Return to Thunder Bluff
.isQuestTurnedIn 2965
.dungeon ULDA
step
#completewith Thistleshrubs
.goto Tanaris,31.06,64.91,20,0
.subzone 980 >>Travel to Thistleshrub Valley
step << Druid
#season 2
#sticky
#completewith ThistleshrubsEnd
#label RagingShamblerIdol
.goto Tanaris,28.2,63.0,40,0
.goto Tanaris,28.2,68.6,40,0
.goto Tanaris,30.8,63.4,40,0
>>Kill |cRXP_ENEMY_Thistleshrub Dew Collector|r and |cRXP_ENEMY_Thistleshrub Rootshaper|r. Loot them for the |T136061:0|t[|cRXP_LOOT_Idol of the Raging Shambler|r] you will need it to unlock a rune
.collect 220915,1
.mob Thistleshrub Dew Collector
.mob Thistleshrub Rootshaper
.train 431449,1
.train 22812,3
step << Druid
#season 2
#optional
#requires RagingShamblerIdol
#completewith ThistleshrubsEnd
.equip 18,220915 >>|cRXP_WARN_Equip the|r |T136061:0|t[|cRXP_FRIENDLY_Idol of the Raging Shambler|r]
+|cRXP_WARN_In order to receive|r |T136097:0|t[Improved Barkskin] |cRXP_WARN_you will need to kill five enemies with nature spells (eg. Wrath) while under the effects of|r |T136097:0|t[Barkskin]. |cRXP_WARN_Try to do this whenever convinient, the rune is not very strong so it's not a high priority|r
.train 22812,3
.train 431449,1
step
#completewith next
>>Kill |cRXP_ENEMY_Thistleshrub Dew Collectors|r. Loot them for a |cRXP_LOOT_Laden Dew Gland|r
>>|cRXP_WARN_This has a low drop rate and its spawn is shared with other mob types, so kill everything to make them spawn faster|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
#label Thistleshrubs
#loop
.goto Tanaris,29.50,62.98,0
.goto Tanaris,29.50,62.98,50,0
.goto Tanaris,27.76,65.80,50,0
.goto Tanaris,28.30,68.39,50,0
.goto Tanaris,30.63,66.57,50,0
.goto Tanaris,30.62,63.76,50,0
>>Kill |cRXP_ENEMY_Gnarled Thistleshrubs|r and |cRXP_ENEMY_Thistleshrub Rootshaper|r
.complete 3362,1 
.mob +Gnarled Thistleshrub
.complete 3362,2 
.mob +Thistleshrub Rootshaper
step
#label ThistleshrubsEnd
#loop
.goto Tanaris,29.50,62.98,0
.goto Tanaris,29.50,62.98,50,0
.goto Tanaris,27.76,65.80,50,0
.goto Tanaris,28.30,68.39,50,0
.goto Tanaris,30.63,66.57,50,0
.goto Tanaris,30.62,63.76,50,0
>>Kill |cRXP_ENEMY_Thistleshrub Dew Collectors|r. Loot them for a |cRXP_LOOT_Laden Dew Gland|r
>>|cRXP_WARN_This has a low drop rate and its spawn is shared with other mob types, so kill everything to make them spawn faster|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
#loop
.goto Tanaris,29.37,59.97,0
.goto Tanaris,28.70,67.32,0
.goto Tanaris,31.66,74.70,0
.goto Tanaris,29.37,59.97,25,0
.goto Tanaris,28.70,67.32,25,0
.goto Tanaris,31.66,74.70,25,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSearch for |cRXP_FRIENDLY_Tooga|r, then talk to him to start his escort quest
>>|cRXP_WARN_He has 4 different spawn locations in the area|r
>>|cRXP_WARN_Skip this step if he isn't up, he has a long respawn timer|r
.accept 1560,1 >>Accept Tooga's Quest
.target Tooga
step
#completewith next
>>Guide |cRXP_FRIENDLY_Tooga|r toward Steamwheedle Port
>>|cRXP_WARN_You will fail the quest if you get too far away from him|r
>>|cRXP_WARN_This quest has a 30 minute timer!|r
.complete 1560,1 
.target Tooga
.isOnQuest 1560
step
#loop
.goto Tanaris,39.86,73.23,0
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23,60,0
.use 9978 >>Equip your |T133151:0|t[Gahz'ridian Detector]
>>Loot the |cRXP_PICK_Piles of Sand|r for |cRXP_LOOT_Gahz'ridian Ornaments|r
>>|cRXP_WARN_Gahz'ridian will appear on your minimap. Many can be found in and around the Eastmoon and Southmoon ruins|r
.complete 3161,1 
.use 9978
step
.goto Tanaris,66.58,25.64
>>Guide |cRXP_FRIENDLY_Tooga|r toward Steamwheedle Port
>>|cRXP_WARN_You will fail the quest if you get too far away from him|r
>>|cRXP_WARN_This quest has a 30 minute timer!|r
.complete 1560,1 
.target Tooga
.isOnQuest 1560
step
.goto Tanaris,66.58,25.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torta|r
.turnin 1560 >>Turn in Tooga's Quest
.target Torta
.isQuestComplete 1560
step
#completewith SteemWeedleFinal
.goto Tanaris,67.1,22.4,50,0
.subzone 977 >>Travel north to Steamwheedle Port
step
#sticky
#label ScheduleEnd
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] to start the quest|r
>>|cRXP_WARN_You may need to accept this after turning in to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and|r |cRXP_FRIENDLY_Stoley|r
.accept 2876 >> Accept Ship Schedules
.itemcount 9250,1 
.use 9250 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 8366 >>Turn in Southsea Shakedown
.turnin 2876 >> Turn in Ship Schedules
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.06,23.89
.turnin 2873 >>Turn in Stoley's Shipment
.accept 2874 >>Accept Deliver to MacKinley
.target +Stoley
.goto Tanaris,67.11,23.98
.itemcount 9250,1 
.use 9250 
step
#optional
#label SteemWeedleFinal
#requires ScheduleEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 8366 >>Turn in Southsea Shakedown
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.06,23.89
.turnin 2873 >>Turn in Stoley's Shipment
.accept 2874 >>Accept Deliver to MacKinley
.target +Stoley
.goto Tanaris,67.11,23.98
step
.goto Tanaris,66.60,22.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty|r
.turnin 8365 >>Turn in Pirate Hats Ahoy!
.target Haughty Modiste
step << Rogue
#season 2
.goto Tanaris,67,22
.gossipoption 122303 >>Talk to |cRXP_FRIENDLY_Jabbey|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r]
.collect 221428,1 
.target Jabbey
.train 432301,1
.itemcount 221370,1
step << Rogue
#season 2
.itemcount 221428,1
.use 221428
.train 432301 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r] |cRXP_WARN_to train|r |T236285:0|t[Unfair Advantage]
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r again
.accept 3527 >> Accept The Prophecy of Mosh'aru
.target Yeh'kinya
.isQuestTurnedIn 3520
.dungeon ZF
step << Hunter
.goto Tanaris,67.01,21.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabbey|r
>>|cRXP_BUY_Buy|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_from him|r
.collect 11285,2600,10,1 
.target Jabbey
step << skip
#completewith GadgetFood1
.hs >>Hearth to Gadgetzan
.use 6948
.cooldown item,6948,>0
step << Shaman
.hs >>Hearth or Astrall Recall to Gadgetzan
.bindlocation 976,1
.subzoneskip 976
.isQuestComplete 2605
step
.goto Tanaris,52.63,28.11
.subzone 976 >>Travel to Gadgetzan
.isQuestComplete 2605
step
#label GadgetFood1
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge Quikcleave|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Dirge Quikcleave
.subzoneskip 976,1
step << skip
.goto Tanaris,52.30,28.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 9245 >>Deposit Stoley's Bottle in your bank
.target Gimblethorn
step
.goto Tanaris,51.80,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin|r
.turnin 2605 >>Turn in The Thirsty Goblin
.accept 2606 >>Accept In Good Taste
.target Marin Noggenfogger
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pestlezugg|r
.turnin 82 >>Turn in Noxious Lair Investigation
.target Alchemist Pestlezugg
step
.goto Tanaris,51.10,26.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2606 >>Turn in In Good Taste
.accept 2641 >>Accept Sprinkle's Secret Ingredient
.target Sprinkle
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzledowser|r
.accept 10 >>Accept The Scrimshank Redemption
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,51.50,26.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 3362 >>Turn in Thistleshrub Valley
.target Tran'rek
step
.goto Tanaris,52.80,27.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi|r
.turnin 5863 >>Turn in The Dunemaul Compound
.target Andi Lynn
step
.goto Tanaris,52.70,45.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon|r
.turnin 3161 >>Turn in Gahz'ridian
.target Marvon Rivetseeker
.isQuestComplete 3161
step
#completewith next
.goto Tanaris,56.19,66.62,30,0
.subzone 981 >>Travel south to The Gaping Chasm
step
#label BugHole
.goto Tanaris,55.69,69.44,50,0
.goto Tanaris,56.36,68.44,30,0
.goto Tanaris,57.45,70.45,30,0
.goto Tanaris,55.96,71.16
>>Enter the silithid hive, then click the |cRXP_PICK_Scrimshank's Surveying Gear console|r and loot |cRXP_LOOT_Scrimshank's Surveying Gear|r
>>|cRXP_WARN_Be extremely cautious of |cRXP_ENEMY_Hazzali Swarmers|r |cRXP_WARN_as they can rapidly summon adds which deal high damage. They can also social aggro other mobs from extreme distances|r
.complete 10,1 
.unitscan Hazzali Swarmer
step
.use 8623 >>If you've found an |T132836:0|t[OOX-17/TN Distress Beacon], click it and accept its quest. Otherwise, skip this step
.accept 351 >>Accept Find OOX-17/TN!
.itemcount 8623,1
.use 8623
step
#optional
.goto Tanaris,60.20,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
.turnin 351 >>Turn in Find OOX-17/TN!
.target Homing Robot OOX-17/TN
.isOnQuest 351
step
#optional
.goto Tanaris,60.23,64.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r again to start the escort quest
>>|cRXP_WARN_This quest can be difficult. Eat/drink to full and apply any self-buffs (scrolls, food, elixirs, etc.)|r
.accept 648,1 >>Accept Rescue OOX-17/TN!
.target Homing Robot OOX-17/TN
.isQuestTurnedIn 351
step
#optional
.goto Tanaris,67.09,23.18
>>Escort |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r to Steamwheedle Port
>>|cRXP_WARN_A pack of 3 level 46-47|r |cRXP_ENEMY_Scorpions|r |cRXP_WARN_will spawn at the next mountain chain|r
>>|cRXP_WARN_A pack of 3 level 43-45|r |cRXP_ENEMY_Wastewander mobs|r |cRXP_WARN_will spawn around Waterspring Field. Focus the|r |cRXP_ENEMY_Scofflaw|r|cRXP_WARN_. It EXECUTES when you're below 20% health|r
.complete 648,1 
.target Homing Robot OOX-17/TN
.unitscan Wastewander Scofflaw
.isQuestTurnedIn 351
step
#sticky
#completewith EnterZF
.subzone 978,2 >> Now you should be looking for a group to Zul'Farrak
.dungeon ZF
step
#completewith GadgetVisit2
.hs >>Hearth to Gadgetzan
.use 6948
.bindlocation 976,1
.subzoneskip 976
.cooldown item,6948,>0,1
step
#completewith GadgetVisit2
.subzone 976 >>Travel to Gadgetzan
.cooldown item,6948,<0
step
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Dirge Quikcleave
.isQuestComplete 10
step
.goto Tanaris,50.21,27.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzledowser|r
.turnin 10 >>Turn in The Scrimshank Redemption
.accept 110 >>Accept Insect Part Analysis
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pestlezugg|r
.turnin 110 >>Turn in Insect Part Analysis
.accept 113 >>Accept Insect Part Analysis
.target Alchemist Pestlezugg
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzledowser|r
.turnin 113 >>Turn in Insect Part Analysis
.accept 32 >>Accept Rise of the Silithid
.target Senior Surveyor Fizzledowser
step
#optional
#label GadgetVisit2
step
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.accept 3042 >> Accept Troll Temper
.target Trenton Lighthammer
.dungeon ZF
step
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 2768 >> Accept Divino-matic Rod
.target Chief Engineer Bilgewhizzle
.dungeon ZF
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 2865 >> Accept Scarab Shells
.target Tran'rek
.dungeon ZF
step
#completewith EnterZF
>>|cRXP_WARN_Have somebody in your group share the following quest if somebody has the|r |cRXP_FRIENDLY_Mallet of Zul'Farrak|r
.accept 2770 >> Accept Gahz'rilla
.dungeon ZF
step
#label EnterZF
.goto Tanaris,38.91,20.78,40,0
.goto Tanaris,38.731,19.839
.subzone 978,2 >> Enter Zul'Farrak
.dungeon ZF
step
#completewith Gahzrilla
>>Kill |cRXP_ENEMY_Trolls|r. Loot them for their |cRXP_LOOT_Troll Temper|r
.complete 3042,1 
.isOnQuest 3042
.dungeon ZF
step
#completewith next
>>Kill |cRXP_ENEMY_Scarabs|r. Loot them for their |cRXP_LOOT_Uncracked Scarab Shell|r
.complete 2865,1 
.isOnQuest 2865
.dungeon ZF
step
>>Kill |cRXP_ENEMY_Theka the Martyr|r. Loot him for the |cRXP_LOOT_First Mosh'aru Tablet|r
.complete 3527,1 
.mob Theka the Martyr
.isOnQuest 3527
.dungeon ZF
step
>>Kill |cRXP_ENEMY_Scarabs|r. Loot them for their |cRXP_LOOT_Uncracked Scarab Shell|r
.complete 2865,1 
.isOnQuest 2865
.dungeon ZF
step
#completewith next
+Ascend the Pyramid
>>Kill the |cRXP_ENEMY_Sandfury Executioner|r. Loot him for the |cRXP_LOOT_Executioner's Key|r
>>|cRXP_WARN_Anyone in the party may loot the|r |cRXP_LOOT_Key|r
>>|cRXP_WARN_Use the|r |cRXP_LOOT_Executioner's Key|r |cRXP_WARN_on one of the |cRXP_PICK_Troll Cages|r to free |cRXP_FRIENDLY_Sergeant Bly|r and his band|r
.collect 8444,1 
.disablecheckbox
.isOnQuest 2768
.mob Sandfury Executioner
.dungeon ZF
step
>>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
>>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Eat and drink then talk to |cRXP_FRIENDLY_Sergeant Bly|r to fight him
>>Kill |cRXP_ENEMY_Sergeant Bly|r. Loot him for the |cRXP_LOOT_Divino-matic Rod|r
.complete 2768,1 
.isOnQuest 2768
.skipgossip
.dungeon ZF
step
>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r and the |cRXP_LOOT_Second Mosh'aru Tablet|r
.complete 2846,1 
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 2846
.isOnQuest 3527
.dungeon ZF
step
#optional
>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r
.complete 2846,1 
.mob Hydromancer Velratha
.isOnQuest 2846
.dungeon ZF
step
#optional
>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Second Mosh'aru Tablet|r
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 3527
.dungeon ZF
step
#label Gahzrilla
>>|cRXP_WARN_Use the|r |T133056:0|t[Mallet of Zul'Farrak] |cRXP_WARN_on the |cRXP_PICK_Gong of Zul'Farrak|r to summon|r |cRXP_ENEMY_Gahz'rilla|r
>>Kill |cRXP_ENEMY_Gahz'rilla|r. Loot him for |cRXP_LOOT_Gahz'rilla's Electrified Scale|r
>>|cRXP_WARN_If no one in your party has the|r |T133056:0|t[Mallet of Zul'Farrak] |cRXP_WARN_you will not be able to summon|r |cRXP_ENEMY_Gahz'rilla|r
.complete 2770,1 
.mob Gahz'rilla
.isOnQuest 2770
.dungeon ZF
step
>>Kill |cRXP_ENEMY_Trolls|r. Loot them for their |cRXP_LOOT_Troll Temper|r
.complete 3042,1 
.isOnQuest 3042
.dungeon ZF
step
#completewith FlyDWM2
.hs >>Hearth to Gadgetzan
.use 6948
.cooldown item,6948,>0
.bindlocation 976,1
.subzoneskip 976
.dungeon ZF
step
#optional
#completewith FlyDWM2
.subzone 976 >>|cRXP_WARN_Perform a 'Ghetto Hearth' in Zul'Farrak|r
.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Copy paste this macro inside Zul'Farrak to ghetto Hearth back to Gadgetzan|r
.cooldown item,6948,<0,1
.bindlocation 976,1
.dungeon ZF
step
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.turnin 3042 >> Turn in Troll Temper
.target Trenton Lighthammer
.isQuestComplete 3042
.dungeon ZF
step
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 2768 >> Turn in Divino-matic Rod
.target Chief Engineer Bilgewhizzle
.isQuestComplete 2768
.dungeon ZF
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2865 >> Turn in Scarab Shells
.target Tran'rek
.isQuestComplete 2865
.dungeon ZF
step
#xprate <1.99
.goto Tanaris,52.40,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
.accept 864 >> Accept Return to Apothecary Zinge
.target Chief Engineer Bilgewhizzle
.isQuestTurnedIn 654
step
#completewith next
.goto Tanaris,66.989,22.354,100 >> Travel to Steamwheedle Port
.dungeon ZF
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3527 >> Turn in The Prophecy of Mosh'aru
.target Yeh'kinya
.isQuestComplete 3527
.dungeon ZF
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.accept 4787 >> Accept The Ancient Egg
.target Yeh'kinya
.isQuestTurnedIn 3527
.dungeon ZF
step
#completewith next
.zone Thousand Needles >> Travel to the Shimmering Flats
.dungeon ZF
step
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.turnin 2770 >> Turn in Gahz'rilla
.target Wizzle Brassbolts
.isQuestComplete 2770
.dungeon ZF
step
#optional
.abandon 2770 >> Abandon Gahz'rilla
.dungeon ZF
step
#optional
#label FlyDWM2
step
#xprate <2.1
#completewith DWMpt3
#era
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Brackenwall >> Fly to Dustwallow Marsh
.target Bulkrek Ragefist
.zoneskip Dustwallow Marsh
.dungeon !ZF
step
#completewith DWMpt3
#era
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Brackenwall >> Fly to Dustwallow Marsh
.target Bulkrek Ragefist
.zoneskip Dustwallow Marsh
.dungeon ZF
step
#xprate <2.1
#era
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
.accept 1170 >>Accept The Brood of Onyxia
.target Draz'Zilb
.isQuestTurnedIn 1169
step
#xprate <2.1
#era
.goto Dustwallow Marsh,36.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mok'Morokk|r
.turnin 1170 >>Turn in The Brood of Onyxia
.accept 1171 >>Accept The Brood of Onyxia
.target Overlord Mok'Morokk
.isQuestTurnedIn 1169
step
#xprate <2.1
#era
#label DWMpt3
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
.turnin 1171 >>Turn in The Brood of Onyxia
.accept 1172 >>Accept The Brood of Onyxia
.target Draz'Zilb
.isQuestTurnedIn 1169
step
#xprate <2.1
#era
#completewith next
.goto Dustwallow Marsh,32.28,65.54,30,0
.subzone 498 >>Travel south to Bloodfen Burrow
step
#xprate <2.1
#era
.goto Dustwallow Marsh,31.10,66.10
>>Enter the cave, then click the |cRXP_PICK_Musty Scroll|r on the rock
>>|cRXP_WARN_Be careful, as this area hyperspawns|r
.turnin 625 >>Turn in Cortello's Riddle
.accept 626 >>Accept Cortello's Riddle
.isOnQuest 625
step
#xprate <2.1
#era
#loop
.goto Dustwallow Marsh,53.6,72.5,0
.goto Dustwallow Marsh,48.50,75.30,25,0
.goto Dustwallow Marsh,55.9,81.9,25,0
.goto Dustwallow Marsh,53.6,72.5,25,0
>>Click |cRXP_PICK_Eggs of Onyxia|r to destroy them
.complete 1172,1 
.isQuestTurnedIn 1169
step
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
.turnin 2846 >> Turn in Tiara of the Deep
.target Tabetha
.isQuestComplete 2846
.dungeon ZF
step
#xprate <1.5
.goto Dustwallow Marsh,48.50,75.30
.xp 47+118800 >> Grind to level 47+118800
step
#xprate <2.1
#era
#hardcore
#completewith BroodTurnIn
.goto Dustwallow Marsh,36.1,30.7,30,0
.subzone 496 >>Travel north to Brackenwall Village
step
#xprate <2.1
#era
#softcore
#completewith BroodTurnIn
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
.solo
step
#xprate <2.1
#era
#softcore
#completewith BroodTurnIn
.goto Dustwallow Marsh,36.1,30.7,30,0
.subzone 496 >>Travel north to Brackenwall Village
.group
step
#xprate <2.1
#era
#label BroodTurnIn
.goto Dustwallow Marsh,37.15,33.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
.turnin 1172 >>Turn in The Brood of Onyxia
.target Draz'Zilb
.isQuestTurnedIn 1169
step
#xprate <2.1
#era
.goto Dustwallow Marsh,36.30,31.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mok'Morokk|r
>>|cRXP_WARN_Accepting this quest turns|r |cRXP_ENEMY_Overlord Mok'Morokk|r |cRXP_WARN_hostile. He hits extremely hard and should be kited. Be prepared|r
.accept 1173,1 >>Accept Challenge Overlord Mok'Morokk
.unitscan Overlord Mok'Morokk
.group 3
.isQuestTurnedIn 1172
step
#xprate <2.1
#era
.goto Dustwallow Marsh,36.30,31.50
>>Defeat |cRXP_ENEMY_Overlord Mok'Morokk|r by reducing his health to about 30%
>>|cRXP_WARN_He hits extremely hard and should be kited|r
>>|cRXP_WARN_He can be feared|r << Warlock/Priest/Warrior
.complete 1173,1 
.unitscan Overlord Mok'Morokk
.group 3
.isOnQuest 1173
step
#xprate <2.1
#era
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
.turnin 1173 >>Turn in Challenge Overlord Mok'Morokk
.target Draz'Zilb
.isQuestComplete 1173
.group
step << Mage
#completewith TBvisit1
.cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleport: Thunder Bluff]
.zoneskip Thunder Bluff
.isOnQuest 2967
.dungeon ULDA
step << !Mage
#completewith TBvisit1
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shardi|r
.fly Thunder Bluff>>Fly to Thunder Bluff
.target Shardi
.zoneskip Dustwallow Marsh,1
.isOnQuest 2967
.dungeon ULDA
step << !Mage
#optional
#completewith TBvisit1
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Thunder Bluff>>Fly to Thunder Bluff
.target Bulkrek Ragefist
.zoneskip Tanaris,1
.isOnQuest 2967
.dungeon ULDA
step << !Mage
#optional
#completewith TBvisit1
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Thunder Bluff>>Fly to Thunder Bluff
.target Bulkrek Ragefist
.zoneskip Thousand Needles,1
.isOnQuest 2967
.dungeon ULDA
step
.goto Thunder Bluff,75.67,31.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
.turnin 2967 >> Turn in Return to Thunder Bluff
.accept 2968 >> Accept A Future Task
.target Nara Wildmane
.isQuestTurnedIn 2954
.dungeon ULDA
step
.goto Thunder Bluff,34.42,46.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.turnin 2968 >> Turn in A Future Task
.target Sage Truthseeker
.isQuestTurnedIn 2954
.dungeon ULDA
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14304 >>Train your class spells
.target Urek Thunderhorn
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14321 >>Train your class spells
.target Urek Thunderhorn
.xp <48,1
.xp >50,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 13554 >>Train your class spells
.target Urek Thunderhorn
.xp <50,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
.train 24562 >>Train your pet spells
.target Hesuwa Thunderhorn
.xp <48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11578 >>Train your class spells
.target Ker Ragetotem
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 20661 >> Train your class spells
.target Ker Ragetotem
.xp <48,1
.xp >50,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 1719 >> Train your class spells
.target Ker Ragetotem
.xp <50,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 9823 >>Train your class spells
.target Turak Runetotem
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 22828 >>Train your class spells
.target Turak Runetotem
.xp <48,1
.xp >50,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 9884 >>Train your class spells
.target Turak Runetotem
.xp <50,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step
#optional
#label TBvisit1
step << !Mage
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Orgrimmar >>Fly to Orgrimmar
.target Tal
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << !Mage
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shardi|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Shardi
.zoneskip Dustwallow Marsh,1
step << !Mage
#optional
#completewith TanarisEnd
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Bulkrek Ragefist
.zoneskip Thousand Needles,1
step << !Mage
#optional
#completewith TanarisEnd
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Bulkrek Ragefist
.zoneskip Tanaris,1
step << Mage
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 10197 >> Train your class spells
.target Pephredo
.xp <46,1
.xp >48,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 10215 >> Train your class spells
.target Pephredo
.xp <48,1
.xp >50,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 10160 >> Train your class spells
.target Pephredo
.xp <50,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10945 >> Train your class spells
.target Ur'kyo
.xp <46,1
.xp >48,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10899 >> Train your class spells
.target Ur'kyo
.xp <48,1
.xp >50,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10951 >> Train your class spells
.target Ur'kyo
.xp <50,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10586 >> Train your class spells
.target Kardris Dreamseeker
.xp <46,1
.xp >48,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10431 >> Train your class spells
.target Kardris Dreamseeker
.xp <48,1
.xp >50,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 15207 >> Train your class spells
.target Kardris Dreamseeker
.xp <50,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 11293 >> Train your class spells
.target Ormok
.xp <46,1
.xp >48,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 11299 >> Train your class spells
.target Ormok
.xp <48,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r
.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
.target Rekkul
.zoneskip Orgrimmar,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11699 >> Train your class spells
.target Mirket
.xp <46,1
.xp >48,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11712 >> Train your class spells
.target Mirket
.xp <48,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
.vendor >>Upgrade your pet's abilities
.target Kurgul
.zoneskip Orgrimmar,1
step
.goto Orgrimmar,56.40,46.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zilzibin|r
>>|cRXP_WARN_He is located on the upper level in the Drag|r
.turnin 32 >>Turn in Rise of the Silithid
.target Zilzibin Drumlore
step
.goto Orgrimmar,59.40,36.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dran|r
.accept 649 >>Accept Ripple Recovery
.target Dran Droffers
step
.goto Orgrimmar,59.50,36.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malton|r
.turnin 649 >>Turn in Ripple Recovery
.accept 650 >>Accept Ripple Recovery
.target Malton Droffers
step
.goto Orgrimmar,55.52,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jes'rimon|r
>>|cRXP_WARN_He is located at the top of the building|r
.accept 4300 >>Accept Bone-Bladed Weapons
.target Jes'rimon
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14304 >>Train your class spells
.target Ormak Grimshot
.xp <46,1
.xp >48,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14321 >>Train your class spells
.target Ormak Grimshot
.xp <48,1
.xp >50,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 13554 >>Train your class spells
.target Ormak Grimshot
.xp <50,1
step << Hunter
#optional
.goto Orgrimmar,66.33,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
.train 24562 >>Train your pet spells
.target Xao'tsu
.xp <48,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11578 >>Train your class spells
.target Grezz Ragefist
.xp <46,1
.xp >48,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20661 >> Train your class spells
.target Grezz Ragefist
.xp <48,1
.xp >50,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 1719 >> Train your class spells
.target Grezz Ragefist
.xp <50,1
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
.target Ogunaro
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
.target Ogunaro
step << Warlock
#season 2
.goto Orgrimmar,38.923,38.398
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor Lonetree|r
>>|cRXP_WARN_Buy the|r |T133733:0|t|cRXP_LOOT_[Grimoire of Fel Armor]|r |cRXP_WARN_use it once you reach level 50 to learn|r |T136156:0|t[Fel Armor] << Warlock
.collect 403619,1
.target Zor Lonetree
.xp <50,1
step << Warlock
#season 2
.goto Orgrimmar,38.923,38.398
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor Lonetree|r
>>|cRXP_WARN_Buy the|r |T133733:0|t|cRXP_LOOT_[Grimoire of Fel Armor]|r |cRXP_WARN_to learn|r |T136156:0|t[Fel Armor] << Warlock
.collect 403619,1
.target Zor Lonetree
.xp >50,1
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
step
#optional
.abandon 2846 >> Abandon Tiara of the Deep
.isOnQuest 2846
.dungeon ZF
step
#optional
.abandon 3527 >> Abandon The Prophecy of Mosh'aru
.isOnQuest 3527
.dungeon ZF
step
#optional
.abandon 2768 >> Abandon Divino-matic Rod
.isOnQuest 2768
.dungeon ZF
step
#optional
.abandon 3042 >> Abandon Troll Temper
.isOnQuest 3042
.dungeon ZF
step
#optional
#label TanarisEnd
]]);
