RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 30-40
#classic
#tbc
#mop
<< Horde
#name 35-37 Northern Stranglethorn
#displayname 35-38 Northern Stranglethorn << sod
#next 37-38 Dustwallow Marsh
step << !Mage
#xprate <2.1
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Orgrimmar >>Fly to Orgrimmar
.target Tal
.zoneskip Orgrimmar
step << Druid
#xprate >2.09
#completewith DruidTraining22
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#xprate >2.09
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 8914 >> Train your class spells
.target Loganaar
.xp <34,1
.xp >36,1
step << Druid
#xprate >2.09
#label DruidTraining22
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9493 >> Train your class spells
.target Loganaar
.xp <36,1
step << !Mage
#xprate >2.09
#completewith next
.hs >> Hearth to The Crossroads
.use 6948
.bindlocation 380,1
.zoneskip The Barrens
step << !Mage
#xprate >2.09
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Orgrimmar >> Fly to Orgrimmar
.zoneskip Orgrimmar
.target Devrak
step << Mage
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 8492 >> Train your class spells
.target Pephredo
.xp <34,1
.xp >36,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 8427 >> Train your class spells
.target Pephredo
.xp <36,1
.xp >38,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 8413 >> Train your class spells
.target Pephredo
.xp <38,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Horthus|r
>>|cRXP_BUY_Buy two or more|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from him|r
.collect 17031,2 
.target Horthus
.zoneskip Orgrimmar,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 8058 >> Train your class spells
.target Kardris Dreamseeker
.xp <34,1
.xp >36,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10412 >> Train your class spells
.target Kardris Dreamseeker
.xp <36,1
.xp >38,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10391 >> Train your class spells
.target Kardris Dreamseeker
.xp <38,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 8696 >> Train your class spells
.target Ormok
.xp <34,1
.xp >36,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 8691 >> Train your class spells
>>|T132273:0|t[Instant Poison Rank 3] |cRXP_WARN_requires 160 skill in Poisons!|r
.target Ormok
.xp <36,1
.xp >38,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 8621 >> Train your class spells
.target Ormok
.xp <38,1
step << Rogue
#season 0
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r
.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
.target Rekkul
.zoneskip Orgrimmar,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 7648 >> Train your class spells
.target Mirket
.xp <34,1
.xp >36,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 2362 >> Train your class spells
.target Mirket
.xp <36,1
.xp >38,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11711 >> Train your class spells
.target Mirket
.xp <38,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
.vendor >>Buy any pet upgrades you can afford
.target Kurgul
.zoneskip Orgrimmar,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 2767 >> Train your class spells
.target Ur'kyo
.xp <34,1
.xp >36,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 6066 >> Train your class spells
.target Ur'kyo
.xp <36,1
.xp >38,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 6078 >> Train your class spells
.target Ur'kyo
.xp <38,1
step
#xprate <2.1
.goto Orgrimmar,22.40,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keldran|r
.turnin 1436 >> Turn in Alliance Relations
.target Keldran
step
.goto Orgrimmar,75.20,34.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belgrom|r
.turnin 1184 >> Turn in Parts of the Swarm
.target Belgrom Rockmaul
step
#optional
#completewith STVZepp
.destroy 5877 >>|cRXP_WARN_Destroy the|r |T135034:0|t[Cracked Silithid Carapace] |cRXP_WARN_as you no longer need it|r
step << Warrior
#xprate >2.09
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 8380 >> Train your class spells
.target Grezz Ragefist
.xp <34,1
.xp >36,1
step << Warrior
#xprate >2.09
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 1680 >> Train your class spells
.target Grezz Ragefist
.xp <36,1
step << Hunter
#xprate >2.09
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 13552 >> Train your class spells
.target Ormak Grimshot
.xp <34,1
.xp >36,1
step << Hunter
#xprate >2.09
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14303 >> Train your class spells
.target Ormak Grimshot
.xp <36,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
.train 24560 >>Train your pet spells
.target Xao'tsu
.xp <36,1
step << Shaman
#season 2
.equip 18,206387 >> |cRXP_WARN_Equip the|r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r
.use 206387
.itemcount 206387,1 
.train 410095,1
step << Shaman
#season 2
#optional
#completewith next
.zone Orgrimmar >> Travel to Orgrimmar
.train 410095,1
step << Shaman
#season 2
.goto Orgrimmar,52.77,48.97
.subzone 2437 >> Enter Ragefire Chasm inside the Cleft of Shadow
.itemStat 18,QUALITY,2
.train 410095,1
step << Shaman
#season 2
>>|cRXP_WARN_Hug the right side of the wall. After going down the ramp (just after the 5th mob), walk into the shallow lava pool on your right|r
>>|cRXP_WARN_Damage taken from|r |T135805:0|t[Lava] |cRXP_WARN_is reduced to 91 whilst the|r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r |cRXP_WARN_is equipped|r
.aura 408828 >>|cRXP_WARN_Take damage from the |T135805:0|t[Lava] |cRXP_WARN_source 5 times|r
.itemStat 18,QUALITY,2
.train 410095,1
step << Shaman
#season 2
>>|cRXP_WARN_Move out of the|r |T135805:0|t[Lava]
.cast 402265 >>|cRXP_WARN_Use the|r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Lava Burst]
.use 206387
.aura -408828
.itemStat 18,QUALITY,2
.train 410095,1
step << !Hunter
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Thathung|r
>>|cRXP_BUY_Buy three|r |T134816:0|t[Catseye Elixir] |cRXP_BUY_from the Auction House|r
.collect 10592,3 
.target Auctioneer Thathung
.zoneskip Orgrimmar,1
step
.goto Orgrimmar,54.10,68.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Gryshka|r
.home >> Set your Hearthstone to Orgrimmar
.target Innkeeper Gryshka
.zoneskip Orgrimmar,1
.bindlocation 1637
step
#completewith next
.zone Durotar >> Leave Orgrimmar
.zoneskip Durotar
step
#label STVZepp
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Stranglethorn Vale >>Take the Zeppelin to Stranglethorn Vale
.zoneskip Stranglethorn Vale
step << Mage
.goto Stranglethorn Vale,31.49,29.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Thulbek|r
.home >>Set your Hearthstone to Grom'Gol Base Camp
.target Innkeeper Thulbek
.bindlocation 117
.train 3567,3 
step
.goto Stranglethorn Vale,32.12,29.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
.accept 570 >> Accept Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.20,28.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
.accept 568 >> Accept The Defense of Grom'gol
.target Commander Aggro'gosh
step
#era
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r
.accept 629 >> Accept The Vile Reef
.accept 596 >> Accept Bloody Bone Necklaces
.target Kin'weelay
step
#som
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r
.accept 629 >> Accept The Vile Reef
.target Kin'weelay
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
.accept 581 >> Accept Hunt for Yenniku
.target Nimboya
step << Hunter
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthok|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,1800,190,1 
.target Uthok
step
#completewith next
.subzone 100 >>Travel to Nesingwary's Expedition
step
#xprate <2.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil|r, |cRXP_FRIENDLY_Hemet|r, |cRXP_FRIENDLY_Ajeck|r and |cRXP_FRIENDLY_S. J. Erlgadin|r
.accept 583 >> Accept Welcome to the Jungle
.target +Barnil Stonepot
.goto Stranglethorn Vale,35.66,10.53
.turnin 583 >> Turn in Welcome to the Jungle
.turnin 5762 >> Turn in Hemet Nesingwary
.turnin 5763 >> Turn in Hunting in Stranglethorn
.accept 194 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.66,10.81
.accept 185 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.62,10.62
.accept 190 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.56,10.55
step
#xprate >2.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil|r, |cRXP_FRIENDLY_Hemet|r, |cRXP_FRIENDLY_Ajeck|r and |cRXP_FRIENDLY_S. J. Erlgadin|r
.accept 583 >> Accept Welcome to the Jungl
.target +Barnil Stonepot
.goto Stranglethorn Vale,35.66,10.53
.turnin 583 >> Turn in Welcome to the Jungle
.turnin 5762 >> Turn in Hemet Nesingwary
.accept 194 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.66,10.81
.accept 185 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.62,10.62
.accept 190 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.56,10.55
step
#completewith YoungPanthers
>>Kill |cRXP_ENEMY_River Crocolisks|r along the river. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#completewith YoungPanthers
>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#label YoungPanthers
#loop
.goto Stranglethorn Vale,41.48,13.18,0
.goto Stranglethorn Vale,36.82,10.25,60,0
.goto Stranglethorn Vale,36.66,11.88,60,0
.goto Stranglethorn Vale,37.70,14.44,60,0
.goto Stranglethorn Vale,39.26,14.53,60,0
.goto Stranglethorn Vale,41.01,13.63,60,0
.goto Stranglethorn Vale,41.48,13.18,60,0
.goto Stranglethorn Vale,42.29,13.14,60,0
.goto Stranglethorn Vale,43.06,12.26,60,0
.goto Stranglethorn Vale,42.86,10.49,60,0
.goto Stranglethorn Vale,41.99,10.21,60,0
.goto Stranglethorn Vale,41.04,9.37,60,0
.goto Stranglethorn Vale,40.26,10.04,60,0
.goto Stranglethorn Vale,39.96,11.55,60,0
.goto Stranglethorn Vale,40.42,12.35,60,0
.goto Stranglethorn Vale,40.96,13.65,60,0
>>Kill |cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step << Warrior
#ssf
#completewith next
.subzone 101 >>Travel to Kurzen's Compound
step << Warrior
#ssf
#loop
.goto Stranglethorn Vale,43.99,11.95,0
.goto Stranglethorn Vale,43.99,11.95,50,0
.goto Stranglethorn Vale,44.73,11.46,50,0
.goto Stranglethorn Vale,45.21,11.05,50,0
.goto Stranglethorn Vale,45.19,9.53,50,0
.goto Stranglethorn Vale,44.83,8.60,50,0
.goto Stranglethorn Vale,43.91,8.74,50,0
.goto Stranglethorn Vale,43.50,9.72,50,0
.goto Stranglethorn Vale,43.95,10.50,50,0
>>Kill |cRXP_LOOT_Kurzen Medicine Men|r. Loot them for their |T134413:0|t[Liferoot] and |T134743:0|t[Jungle Remedy]
>>|T134743:0|t[Jungle Remedy] |cRXP_WARN_can be used to dispell long lasting poison effects later in the guide|r
>>|cRXP_WARN_You can decide for yourself how much |T134743:0|t[Jungle Remedy] you would like to grind|r
>>|cRXP_ENEMY_Jungle Fighters|r |cRXP_WARN_and |cRXP_ENEMY_Medicine Men|r share spawns, so you'll have to kill both|r
.collect 3357,8,1712,1 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step << Warrior
#ah
#completewith next
.subzone 101 >>Travel to Kurzen's Compound
step << Warrior
#ah
#loop
.goto Stranglethorn Vale,43.99,11.95,0
.goto Stranglethorn Vale,43.99,11.95,50,0
.goto Stranglethorn Vale,44.73,11.46,50,0
.goto Stranglethorn Vale,45.21,11.05,50,0
.goto Stranglethorn Vale,45.19,9.53,50,0
.goto Stranglethorn Vale,44.83,8.60,50,0
.goto Stranglethorn Vale,43.91,8.74,50,0
.goto Stranglethorn Vale,43.50,9.72,50,0
.goto Stranglethorn Vale,43.95,10.50,50,0
>>Kill |cRXP_LOOT_Kurzen Medicine Men|r. Loot them for their |T134413:0|t[Liferoot] and |T134743:0|t[Jungle Remedy]
>>|cRXP_WARN_You could also buy|r |T134413:0|t[Liferoot] |cRXP_WARN_from the Auction House instead|r
>>|T134743:0|t[Jungle Remedy] |cRXP_WARN_can be used to dispell long lasting poison effects later in the guide|r
>>|cRXP_WARN_You can decide for yourself how much |T134743:0|t[Jungle Remedy] you would like to grind|r
>>|cRXP_ENEMY_Jungle Fighters|r |cRXP_WARN_and |cRXP_ENEMY_Medicine Men|r share spawns, so you'll have to kill both|r
.collect 3357,8,1712,1 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step << Rogue
#ssf
#completewith next
.subzone 101 >>Travel to Kurzen's Compound
step << Rogue
#ssf
#loop
.goto Stranglethorn Vale,43.99,11.95,0
.goto Stranglethorn Vale,43.99,11.95,50,0
.goto Stranglethorn Vale,44.73,11.46,50,0
.goto Stranglethorn Vale,45.21,11.05,50,0
.goto Stranglethorn Vale,45.19,9.53,50,0
.goto Stranglethorn Vale,44.83,8.60,50,0
.goto Stranglethorn Vale,43.91,8.74,50,0
.goto Stranglethorn Vale,43.50,9.72,50,0
.goto Stranglethorn Vale,43.95,10.50,50,0
>>Kill |cRXP_LOOT_Kurzen Medicine Men|r. Loot them for |T134193:0|t[Fadeleaf] and |T134743:0|t[Jungle Remedy]
>>|T134193:0|t[Fadeleaf] |cRXP_WARN_is needed to make|r |T133587:0|t[Blinding Powder] |cRXP_WARN_for your|r |T136175:0|t[Blind] |cRXP_WARN_ability|r
>>|T134743:0|t[Jungle Remedy] |cRXP_WARN_can be used to dispell long lasting poison effects later in the guide|r
>>|cRXP_WARN_You can decide for yourself how much of these items you would like to grind|r
>>|cRXP_ENEMY_Jungle Fighters|r |cRXP_WARN_and |cRXP_ENEMY_Medicine Men|r share spawns, so you'll have to kill both|r
.collect 3818,5,191,1 
.collect 2633,10,191,1 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step << Rogue
#season 2
.train 425103,1
#completewith Uniform
.goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
#completewith next
>>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
.collect 216616,1
.mob Kurzen Elite
.mob Kurzen Subchief
.skill lockpicking,<125,1
step << Rogue
#season 2
#label Uniform
.train 425103,1
.goto Stranglethorn Vale,49.616,7.743
>>Open the |cRXP_PICK_Kurzen Supply Crate|r. Loot it for the |cRXP_LOOT_Kurzen Fighter's Uniform|r
>>|cRXP_WARN_Your lockpicking skill needs to be 125 or higher to do this|r
.collect 216617,1
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
.goto Stranglethorn Vale,49.943,3.953,40,0
.goto Stranglethorn Vale,49.617,7.562,40,0
.goto Stranglethorn Vale,49.25,6.18
>>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
.collect 216616,1
.mob Kurzen Elite
.mob Kurzen Subchief
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
#completewith next
.goto Stranglethorn Vale,44.261,7.908,60 >> Exit the cave. Travel toward |cRXP_FRIENDLY_Wendel Mathers|r in the tower outside
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
.goto Stranglethorn Vale,44.261,7.908
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r in the tower
>>|cRXP_WARN_He has a respawn timer of around 3 minutes|r
.destroy 216616 >> Hand the |cRXP_LOOT_Compound Cage Key|r to him
.destroy 216617 >> Hand the |cRXP_LOOT_Kurzen Fighter's Uniform|r to him
.skipgossip 218230,1
.target Wendel Mathers
.skill lockpicking,<125,1
step
#completewith next
>>Kill |cRXP_ENEMY_River Crocolisks|r along the river. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#loop
.goto Stranglethorn Vale,34.07,11.34,0
.goto Stranglethorn Vale,38.82,14.20,60,0
.goto Stranglethorn Vale,37.04,13.94,60,0
.goto Stranglethorn Vale,35.58,12.38,60,0
.goto Stranglethorn Vale,33.59,12.20,60,0
.goto Stranglethorn Vale,32.67,10.15,60,0
.goto Stranglethorn Vale,31.42,8.48,60,0
.goto Stranglethorn Vale,33.47,10.25,60,0
.goto Stranglethorn Vale,34.07,11.34,60,0
>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck|r and |cRXP_FRIENDLY_S. J. Erlgadin|r
.turnin 185 >> Turn in Tiger Mastery
.accept 186 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.62,10.62
.turnin 190 >> Turn in Panther Mastery
.accept 191 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.56,10.55
step
#completewith RaptorsPart1
>>Kill |cRXP_ENEMY_River Crocolisks|r along the river. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step << Hunter
#season 2
.train 410116,1 >>|cRXP_WARN_You will need |T135815:0|t[Flare] to get this rune, skip it if you don't have the spell|r
.goto Stranglethorn Vale,31.84,15.61
+|cRXP_WARN_Travel to the arrow location and run around until the buff called|r |T132118:0|t[Danger!] |cRXP_WARN_appears on you|r
.aura 435548
.aura 435428
.aura 435546
.train 1543,3
step << Hunter
#season 2
.train 410116,1
.goto Stranglethorn Vale,31.84,15.61
#completewith next
.cast 1543 >>|cRXP_WARN_Cast|r |T135815:0|t[Flare] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Bloodscalp Guerrilla|r
.usespell 1543
.train 1543,3
step << Hunter
#season 2
.train 410116,1
.goto Stranglethorn Vale,31.84,15.61
>>Kill the |cRXP_ENEMY_Bloodscalp Guerrilla|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Scrapper|r]
.collect 213126,1
.mob Bloodscalp Guerrilla
.train 1543,3
step << Hunter
#season 2
.itemcount 213126,1
.use 213126
.train 410116 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Scrapper|r] |cRXP_WARN_to train|r |T132147:0|t[Dual-Wield Specialization]
.train 1543,3
step << Hunter
#optional
#completewith next
#season 2
.engrave 8 >> Open your character sheet and engrave your boots with |T132147:0|t[Dual-Wield Specialization]
.train 1543,3
step
#loop
.goto Stranglethorn Vale,31.00,11.20,0
.goto Stranglethorn Vale,31.00,11.20,60,0
.goto Stranglethorn Vale,29.70,8.90,60,0
.goto Stranglethorn Vale,28.40,12.30,60,0
.goto Stranglethorn Vale,28.80,13.60,60,0
.goto Stranglethorn Vale,28.50,16.90,60,0
.goto Stranglethorn Vale,30.60,13.90,60,0
>>Kill |cRXP_ENEMY_Panthers|r and |cRXP_ENEMY_Stranglethorn Tigers|r
.complete 191,1 
.mob +Panther
.complete 186,1 
.mob +Stranglethorn Tiger
step
#label RaptorsPart1
#loop
.goto Stranglethorn Vale,28.08,15.41,0
.goto Stranglethorn Vale,28.08,15.41,60,0
.goto Stranglethorn Vale,27.82,16.35,60,0
.goto Stranglethorn Vale,27.18,16.81,60,0
.goto Stranglethorn Vale,26.28,16.70,60,0
.goto Stranglethorn Vale,25.39,16.33,60,0
.goto Stranglethorn Vale,23.71,15.44,60,0
.goto Stranglethorn Vale,25.69,15.71,60,0
.goto Stranglethorn Vale,26.61,15.85,60,0
.goto Stranglethorn Vale,27.24,15.14,60,0
.goto Stranglethorn Vale,27.80,14.33,60,0
>>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
.complete 194,1 
.mob Stranglethorn Raptor
step
#completewith next
.subzone 100 >> Return to Nesingwary's Expedition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_S. J. Erlgadin|r, |cRXP_FRIENDLY_Ajeck|r and |cRXP_FRIENDLY_Hemet|r
.turnin 191 >> Turn in Panther Mastery
.accept 192 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.55,10.55
.turnin 186 >> Turn in Tiger Mastery
.accept 187 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.61,10.62
.turnin 194 >> Turn in Raptor Mastery
.accept 195 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.66,10.81
step
#loop
.goto Stranglethorn Vale,39.8,14.4,0
.goto Stranglethorn Vale,32.4,8.8,90,0
.goto Stranglethorn Vale,34.4,8.2,90,0
.goto Stranglethorn Vale,36.8,10.4,90,0
.goto Stranglethorn Vale,39.8,11.4,90,0
.goto Stranglethorn Vale,39.8,14.4,90,0
>>Kill |cRXP_ENEMY_River Crocolisks|r along the river. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#completewith next
>>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
#loop
.goto Stranglethorn Vale,33.90,15.60,0
.goto Stranglethorn Vale,33.20,13.70,50,0
.goto Stranglethorn Vale,28.80,19.60,50,0
.goto Stranglethorn Vale,29.80,19.40,50,0
.goto Stranglethorn Vale,30.60,18.90,50,0
.goto Stranglethorn Vale,33.90,15.60,50,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Tusks|r, |cRXP_LOOT_Ears|r and |cRXP_LOOT_Necklaces|r
>>Kill |cRXP_ENEMY_Bloodscalp Shamans|r. Loot them for a |cRXP_LOOT_Bloodscalp Totem|r
.complete 581,1 
.mob +Bloodscalp Warrior
.mob +Bloodscalp Axe Thrower
.mob +Bloodscalp Shaman
.complete 189,1 
.disablecheckbox
.complete 596,1 
.disablecheckbox
.complete 9436,1 
.mob +Bloodscalp Shaman
step
#loop
.goto Stranglethorn Vale,32.10,15.80,0
.goto Stranglethorn Vale,32.10,15.80,60,0
.goto Stranglethorn Vale,31.40,18.40,60,0
.goto Stranglethorn Vale,31.80,20.00,60,0
.goto Stranglethorn Vale,34.20,17.60,60,0
>>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
#loop
.goto Stranglethorn Vale,31.90,20.90,0
.goto Stranglethorn Vale,30.40,24.70,50,0
.goto Stranglethorn Vale,32.50,23.40,50,0
.goto Stranglethorn Vale,34.10,25.50,50,0
.goto Stranglethorn Vale,36.00,26.80,50,0
.goto Stranglethorn Vale,38.90,25.10,50,0
.goto Stranglethorn Vale,38.10,28.10,50,0
.goto Stranglethorn Vale,31.90,20.90,50,0
>>Kill |cRXP_ENEMY_Lashtail Raptors|r
>>|cRXP_WARN_Be careful. |cRXP_ENEMY_Lashtail Raptors|r can stun and|r |T132343:0|t[Disarm] |cRXP_WARN_you|r << Rogue/Warrior/Shaman/Pala
>>|cRXP_WARN_Be careful. |cRXP_ENEMY_Lashtail Raptors|r can stun you|r << !Rogue !Warrior !Shaman !Pala
.complete 568,1 
.complete 195,1 
.mob Lashtail Raptor
step
#completewith next
.subzone 117 >> Return to Grom'gol Base Camp
step
.goto Stranglethorn Vale,32.2,27.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
.turnin 581 >> Turn in Hunt for Yenniku
.accept 582 >> Accept Headhunting
.target Nimboya
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r
.accept 629 >> Accept The Vile Reef
.target Kin'weelay
step
.goto Stranglethorn Vale,32.17,28.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
.turnin 568 >> Turn in The Defense of Grom'gol
.accept 569 >> Accept The Defense of Grom'gol
.target Commander Aggro'gosh
step << Hunter
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthok|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,2600,629,1 
.target Uthok
step << Hunter
.goto Stranglethorn Vale,31.23,28.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kragg|r
.train 14303 >>Train your class spells
.target Kragg
.xp <36,1
.xp >38,1
step << Hunter
#optional
.goto Stranglethorn Vale,31.23,28.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kragg|r
.train 14320 >>Train your class spells
.target Kragg
.xp <38,1
step
.goto Stranglethorn Vale,24.77,22.85
>>Loot the |cRXP_PICK_Gri'lek the Wanderer|r for the |cRXP_LOOT_Tablet Shard|r
>>|cRXP_WARN_There are two Tablets located on either side of the wall. Loot the one on the outside of the wall. This way you won't agro any of the elite|r |cRXP_ENEMY_Saltscale Murlocs|r
.complete 629,1 
step
#loop
.goto Stranglethorn Vale,27.37,18.62,0
.goto Stranglethorn Vale,27.37,18.62,60,0
.goto Stranglethorn Vale,25.94,18.20,60,0
.goto Stranglethorn Vale,24.84,17.26,60,0
.goto Stranglethorn Vale,23.22,16.89,60,0
.goto Stranglethorn Vale,23.21,18.35,60,0
.goto Stranglethorn Vale,24.80,18.98,60,0
.goto Stranglethorn Vale,26.97,19.78,60,0
>>Kill |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Crystal Shards|r
>>|cRXP_WARN_You have to go back and forth here forcing dynamic respawns|r
.complete 605,1 
.mob Crystal Spine Basilisk
step << Warrior
#xprate <1.99
#era
#loop
.goto Stranglethorn Vale,20.38,13.94,0
.goto Stranglethorn Vale,20.38,13.94,50,0
.goto Stranglethorn Vale,20.81,12.74,50,0
.goto Stranglethorn Vale,21.00,10.81,50,0
.goto Stranglethorn Vale,20.06,11.88,50,0
.goto Stranglethorn Vale,19.36,11.81,50,0
.goto Stranglethorn Vale,19.67,13.31,50,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r, |cRXP_LOOT_Heads|r, |cRXP_LOOT_Necklaces|r and |cRXP_LOOT_Tusks|r
>>|T133730:0|t[|cRXP_LOOT_Shrunken Heads|r] |cRXP_WARN_only drop from|r |cRXP_ENEMY_Bloodscalp Headhunters|r
.complete 189,1 
.mob +Bloodscalp Witch Doctor
.mob +Bloodscalp Berserker
.mob +Bloodscalp Headhunter
.complete 582,1 
.mob +Bloodscalp Headhunter
.complete 596,1 
.mob +Bloodscalp Witch Doctor
.mob +Bloodscalp Berserker
.mob +Bloodscalp Headhunter
.complete 1712,2 
.mob +Bloodscalp Witch Doctor
.mob +Bloodscalp Berserker
.mob +Bloodscalp Headhunter
step << Warrior
#xprate <1.99
#som
#loop
.goto Stranglethorn Vale,20.38,13.94,0
.goto Stranglethorn Vale,20.38,13.94,50,0
.goto Stranglethorn Vale,20.81,12.74,50,0
.goto Stranglethorn Vale,21.00,10.81,50,0
.goto Stranglethorn Vale,20.06,11.88,50,0
.goto Stranglethorn Vale,19.36,11.81,50,0
.goto Stranglethorn Vale,19.67,13.31,50,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r, |cRXP_LOOT_Heads|r, and |cRXP_LOOT_Tusks|r
>>|T133730:0|t[|cRXP_LOOT_Shrunken Heads|r] |cRXP_WARN_only drop from|r |cRXP_ENEMY_Bloodscalp Headhunters|r
.complete 189,1 
.mob +Bloodscalp Witch Doctor
.mob +Bloodscalp Berserker
.mob +Bloodscalp Headhunter
.complete 582,1 
.mob +Bloodscalp Headhunter
.complete 1712,2 
.mob +Bloodscalp Witch Doctor
.mob +Bloodscalp Berserker
.mob +Bloodscalp Headhunter
step
#era
#loop
.goto Stranglethorn Vale,20.38,13.94,0
.goto Stranglethorn Vale,20.38,13.94,50,0
.goto Stranglethorn Vale,20.81,12.74,50,0
.goto Stranglethorn Vale,21.00,10.81,50,0
.goto Stranglethorn Vale,20.06,11.88,50,0
.goto Stranglethorn Vale,19.36,11.81,50,0
.goto Stranglethorn Vale,19.67,13.31,50,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r, |cRXP_LOOT_Heads|r and |cRXP_LOOT_Necklaces|r
>>|T133730:0|t[|cRXP_LOOT_Shrunken Heads|r] |cRXP_WARN_only drop from|r |cRXP_ENEMY_Bloodscalp Headhunters|r
.complete 189,1 
.mob +Bloodscalp Witch Doctor
.mob +Bloodscalp Berserker
.mob +Bloodscalp Headhunter
.complete 582,1 
.mob +Bloodscalp Headhunter
.complete 596,1 
.mob +Bloodscalp Witch Doctor
.mob +Bloodscalp Berserker
.mob +Bloodscalp Headhunter
step
#som
#loop
.goto Stranglethorn Vale,20.38,13.94,0
.goto Stranglethorn Vale,20.38,13.94,50,0
.goto Stranglethorn Vale,20.81,12.74,50,0
.goto Stranglethorn Vale,21.00,10.81,50,0
.goto Stranglethorn Vale,20.06,11.88,50,0
.goto Stranglethorn Vale,19.36,11.81,50,0
.goto Stranglethorn Vale,19.67,13.31,50,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r and |cRXP_LOOT_Heads|r
>>|T133730:0|t[Shrunken Head] |cRXP_WARN_only drop from|r |cRXP_ENEMY_Bloodscalp Headhunters|r
.complete 189,1 
.mob +Bloodscalp Witch Doctor
.mob +Bloodscalp Berserker
.mob +Bloodscalp Headhunter
.complete 582,1 
.mob +Bloodscalp Headhunter
step << Mage
#optional
#completewith GG2
.hs >> Hearth to Grom'gol Base Camp
.use 6948
.bindlocation 117,1
.subzoneskip 117
.cooldown item,6948,>0,1
step
#completewith GG2
.subzone 117 >> Return to Grom'gol Base Camp
.cooldown item,6948,<0 << Mage
step
#label GG2
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r and |cRXP_FRIENDLY_Kin'weelay|r
.turnin 582 >> Turn in Headhunting
.target +Nimboya
.goto Stranglethorn Vale,32.16,27.72
.turnin 596 >> Turn in Bloody Bone Necklaces
.turnin 629 >> Turn in The Vile Reef
.target +Kin'weelay
.goto Stranglethorn Vale,32.27,27.70
step
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r and |cRXP_FRIENDLY_Kin'weelay|r
.turnin 582 >> Turn in Headhunting
.target +Nimboya
.goto Stranglethorn Vale,32.16,27.72
.turnin 629 >> Turn in The Vile Reef
.target +Kin'weelay
.goto Stranglethorn Vale,32.27,27.70
step << Hunter
.goto Stranglethorn Vale,31.23,28.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kragg|r
.train 14303 >>Train your class spells
.target Kragg
.xp <36,1
.xp >38,1
step
#completewith MoshOgg
.goto Stranglethorn Vale,36.87,34.92,0
>>Kill |cRXP_ENEMY_Shadowmaw Panthers|r and |cRXP_ENEMY_Stranglethorn Tigresses|r |cRXP_WARN_across the river|r
>>|cRXP_WARN_Only do this when waiting for |cRXP_ENEMY_Mosh'Ogg Ogre|r respawns|r
>>|cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_are stealthed mobs. Search any vacant areas|r
.complete 570,1 
.unitscan +Shadowmaw Panther
.complete 192,1 
.unitscan +Shadowmaw Panther
.complete 570,2 
.mob +Stranglethorn Tigress
step
#label MoshOgg
#loop
.goto Stranglethorn Vale,36.49,31.61,0
.goto Stranglethorn Vale,37.28,30.96,50,0
.goto Stranglethorn Vale,38.04,29.61,50,0
.goto Stranglethorn Vale,36.88,29.69,50,0
.goto Stranglethorn Vale,35.60,30.62,50,0
.goto Stranglethorn Vale,36.49,31.61,50,0
>>Kill |cRXP_ENEMY_Mosh'Ogg Brutes|r and |cRXP_ENEMY_Mosh'Ogg Witch Doctors|r
>>|cRXP_WARN_There are not enough |cRXP_ENEMY_Mosh'Ogg Brutes|r so you will have to wait for respawns at least once|r
.complete 569,1 
.mob +Mosh'Ogg Brute
.complete 569,2 
.mob +Mosh'Ogg Witch Doctor
step
#completewith CozzleBl
>>Kill |cRXP_ENEMY_Venture Co. Geologists|r. Loot them for their |cRXP_LOOT_Crystals|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,42.74,18.04,40,0
.goto Stranglethorn Vale,42.10,18.33,12,0
.goto Stranglethorn Vale,42.29,18.98,12,0
.goto Stranglethorn Vale,42.51,18.82,12,0
.goto Stranglethorn Vale,42.66,18.36
>>Climb to the oil rig's top level, then kill |cRXP_ENEMY_Foreman Cozzle|r. Loot him for his |cRXP_LOOT_Key|r
.collect 5851,1 
.unitscan Foreman Cozzle
.isOnQuest 1182
step
#completewith next
.goto Stranglethorn Vale,43.47,20.33,6 >>Enter the house
step
#label CozzleBl
.goto Stranglethorn Vale,43.33,20.33
>>Loot |cRXP_PICK_Cozzle's Footlocker|r for the |cRXP_LOOT_Fuel Regulator Blueprints|r
.complete 1182,1 
step
#loop
.goto Stranglethorn Vale,36.49,31.61,0
.goto Stranglethorn Vale,36.49,31.61,50,0
.goto Stranglethorn Vale,37.28,30.96,50,0
.goto Stranglethorn Vale,38.04,29.61,50,0
.goto Stranglethorn Vale,36.88,29.69,50,0
.goto Stranglethorn Vale,35.60,30.62,50,0
>>Return to the Mizjah Ruins and finish killing |cRXP_ENEMY_Mosh'Ogg Brutes|r and |cRXP_ENEMY_Mosh'Ogg Witch Doctors|r
.complete 569,1 
.mob +Mosh'Ogg Brute
.complete 569,2 
.mob +Mosh'Ogg Witch Doctor
step
#loop
.goto Stranglethorn Vale,43.26,21.05,0
.goto Stranglethorn Vale,43.26,21.05,60,0
.goto Stranglethorn Vale,42.58,22.00,60,0
.goto Stranglethorn Vale,43.78,22.80,60,0
.goto Stranglethorn Vale,44.42,23.55,60,0
.goto Stranglethorn Vale,45.38,23.28,60,0
.goto Stranglethorn Vale,46.29,23.45,60,0
.goto Stranglethorn Vale,46.26,21.94,60,0
.goto Stranglethorn Vale,47.02,20.02,60,0
.goto Stranglethorn Vale,46.67,19.13,60,0
.goto Stranglethorn Vale,46.34,18.00,60,0
.goto Stranglethorn Vale,45.27,17.76,60,0
.goto Stranglethorn Vale,44.89,16.79,60,0
.goto Stranglethorn Vale,44.44,16.19,60,0
.goto Stranglethorn Vale,43.60,15.80,60,0
.goto Stranglethorn Vale,43.39,17.63,60,0
.goto Stranglethorn Vale,43.65,19.32,60,0
>>Finish killing |cRXP_ENEMY_Venture Co. Geologists|r. Loot them for their |cRXP_LOOT_Crystals|r
.complete 213,1 
.mob Venture Co. Geologist
step
#era
#xprate <1.5
#loop
.goto Stranglethorn Vale,43.26,21.05,60,0
.goto Stranglethorn Vale,42.58,22.00,60,0
.goto Stranglethorn Vale,43.78,22.80,60,0
.goto Stranglethorn Vale,44.42,23.55,60,0
.goto Stranglethorn Vale,45.38,23.28,60,0
.goto Stranglethorn Vale,46.29,23.45,60,0
.goto Stranglethorn Vale,46.26,21.94,60,0
.goto Stranglethorn Vale,47.02,20.02,60,0
.goto Stranglethorn Vale,46.67,19.13,60,0
.goto Stranglethorn Vale,46.34,18.00,60,0
.goto Stranglethorn Vale,45.27,17.76,60,0
.goto Stranglethorn Vale,44.89,16.79,60,0
.goto Stranglethorn Vale,44.44,16.19,60,0
.goto Stranglethorn Vale,43.60,15.80,60,0
.goto Stranglethorn Vale,43.39,17.63,60,0
.goto Stranglethorn Vale,43.65,19.32,60,0
.xp 36+50000 >> Grind to level 36 50000+/71600 xp
step
#completewith ShadowPanthers
>>Kill |cRXP_ENEMY_Stranglethorn Tigresses|r. Loot them for a |cRXP_LOOT_Pristine Tigress Fang|r
.complete 570,2 
.mob Stranglethorn Tigress
step << !Hunter
#ah
#completewith next
.aura 12608 >>|cRXP_WARN_Consume your|r |T134816:0|t[Catseye Elixir] |cRXP_WARN_to find the|r |cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_more easily|r
.use 10592
.itemcount 10592,1
step << Hunter
#completewith next
.cast 19885 >>|cRXP_WARN_Cast|r |T132320:0|t[Track Hidden] |cRXP_WARN_to find the|r |cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_more easily|r
step
#label ShadowPanthers
#loop
.goto Stranglethorn Vale,48.82,23.91,0
.goto Stranglethorn Vale,47.64,22.47,40,0
.goto Stranglethorn Vale,48.08,23.54,40,0
.goto Stranglethorn Vale,48.82,23.91,40,0
.goto Stranglethorn Vale,49.58,25.41,40,0
.goto Stranglethorn Vale,50.29,24.76,40,0
.goto Stranglethorn Vale,50.25,23.37,40,0
.goto Stranglethorn Vale,50.26,21.44,40,0
.goto Stranglethorn Vale,49.29,19.84,40,0
.goto Stranglethorn Vale,48.33,19.99,40,0
.goto Stranglethorn Vale,47.75,21.21,40,0
>>Kill |cRXP_ENEMY_Shadowmaw Panthers|r. Loot them for their |cRXP_LOOT_Claws|r
>>|cRXP_WARN_These are stealthed mobs. Search any vacant areas|r
.complete 570,1 
.complete 192,1 
.unitscan Shadowmaw Panther
step
#loop
.goto Stranglethorn Vale,48.82,23.91,0
.goto Stranglethorn Vale,47.64,22.47,40,0
.goto Stranglethorn Vale,48.08,23.54,40,0
.goto Stranglethorn Vale,48.82,23.91,40,0
.goto Stranglethorn Vale,49.58,25.41,40,0
.goto Stranglethorn Vale,50.29,24.76,40,0
.goto Stranglethorn Vale,50.25,23.37,40,0
.goto Stranglethorn Vale,50.26,21.44,40,0
.goto Stranglethorn Vale,49.29,19.84,40,0
.goto Stranglethorn Vale,48.33,19.99,40,0
.goto Stranglethorn Vale,47.75,21.21,40,0
>>Kill |cRXP_ENEMY_Stranglethorn Tigresses|r. Loot them for a |cRXP_LOOT_Pristine Tigress Fang|r
.complete 570,2 
.mob Stranglethorn Tigress
step
#loop
.goto Stranglethorn Vale,39.8,14.4,0
.goto Stranglethorn Vale,32.4,8.8,90,0
.goto Stranglethorn Vale,34.4,8.2,90,0
.goto Stranglethorn Vale,36.8,10.4,90,0
.goto Stranglethorn Vale,39.8,11.4,90,0
.goto Stranglethorn Vale,39.8,14.4,90,0
>>Finish killing |cRXP_ENEMY_River Crocolisks|r along the river. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#completewith next
.subzone 100 >>Travel to Nesingwary's Expedition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_S. J. Erlgadin|r, |cRXP_FRIENDLY_Ajeck|r and |cRXP_FRIENDLY_Hemet|r
.turnin 192 >> Turn in Panther Mastery
.accept 193 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.55,10.55
.turnin 187 >> Turn in Tiger Mastery
.accept 188 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.61,10.62
.turnin 195 >> Turn in Raptor Mastery
.accept 196 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.66,10.81
step
.goto Stranglethorn Vale,32.2,17.4
>>Kill |cRXP_ENEMY_Sin'Dall|r. Loot her for her |cRXP_LOOT_Paw|r
>>|cRXP_WARN_Sin'Dall is either atop the plateau, or patrolling its base|r
.complete 188,1 
.unitscan Sin'Dall
step
.goto Stranglethorn Vale,35.61,10.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck|r
.turnin 188 >> Turn in Tiger Mastery
.target Ajeck Rouack
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
.goto Stranglethorn Vale,39.30,6.49,60,0
.goto Stranglethorn Vale,40.63,3.12,50 >> Travel to Duskwood
.zoneskip Duskwood
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
#completewith next
.goto Duskwood,88.47,41.00,50 >> Travel to Deadwind Pass
.zoneskip Deadwind Pass
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
.goto Deadwind Pass,48.02,34.60,60,0
.goto Deadwind Pass,58.43,41.51,50,0
.zone Swamp of Sorrows >> Travel to Swamp of Sorrows
.zoneskip Swamp of Sorrows
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
.goto Swamp of Sorrows,25.0,54.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaryllis Webb|r
>>|cRXP_WARN_Buy a|r |T133653:0|t[Entomology Starter Kit] |cRXP_WARN_from her|r
.collect 213565,1 
.target Amaryllis Webb
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
>>Open the |T133653:0|t[Entomology Starter Kit]
>>|cRXP_WARN_Keep the|r |T134325:0|t[Bug Catching Net] |cRXP_WARN_in your bag. You will need it throughout the next few zones to acquire a new rune|r
.use 213565
.collect 213562,1 
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
#completewith next
.subzone 75 >> Travel to Stonard
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
.goto Swamp of Sorrows,46.10,54.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breyk|r
.fp Stonard >> Get the Stonard Flight Path
.fly Grom'gol >> Fly to Grom'gol Base Camp
.target Breyk
.subzoneskip 117
step << Mage
#optional
#completewith FlyBB1
.hs >> Hearth to Grom'gol Base Camp
.use 6948
.bindlocation 117,1
.subzoneskip 117
.cooldown item,6948,>0,1
step
#completewith FlyBB1
.subzone 117 >> Return to Grom'gol Base Camp
.cooldown item,6948,<0 << Mage
step
#xprate <1.99
.goto Stranglethorn Vale,32.16,27.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
.accept 638 >> Accept Trollbane
.target Nimboya
.isQuestAvailable 639
step
.goto Stranglethorn Vale,32.17,28.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Aggro'gosh|r
.turnin 569 >> Turn in The Defense of Grom'gol
.target Commander Aggro'gosh
step
.goto Stranglethorn Vale,32.12,29.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
.turnin 570 >> Turn in Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
#label FlyBB1
#completewith BBHealingPots
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thysta|r
.fly Booty Bay >> Fly to Booty Bay
.target Thysta
.subzoneskip 35
step
.goto Stranglethorn Vale,27.23,76.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 1182 >> Turn in Goblin Sponsorship
.accept 1183 >> Accept Goblin Sponsorship
.target Baron Revilgaz
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r
.turnin 189 >> Turn in Bloodscalp Ears
.turnin 213 >> Turn in Hostile Takeover
.accept 209 >> Accept Skullsplitter Tusks
.target +Kebok
.goto Stranglethorn Vale,27.0,77.13
.turnin 201 >> Turn in Investigate the Camp
.accept 1116 >> Accept Dream Dust in the Swamp
.target +Krazek
.goto Stranglethorn Vale,26.95,77.21
step
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r
.turnin 189 >> Turn in Bloodscalp Ears
.turnin 213 >> Turn in Hostile Takeover
.accept 209 >> Accept Skullsplitter Tusks
.target +Kebok
.goto Stranglethorn Vale,27.0,77.13
.turnin 201 >> Turn in Investigate the Camp
.target +Krazek
.goto Stranglethorn Vale,26.95,77.21
step
#era
.goto Stranglethorn Vale,27.12,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r on the inn's lowest level
.turnin 605 >> Turn in Singing Blue Shards
.accept 600 >> Accept Venture Company Mining
.target Crank Fizzlebub
step
#som
.goto Stranglethorn Vale,27.12,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r on the inn's lowest level
.turnin 605 >> Turn in Singing Blue Shards
.target Crank Fizzlebub
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 8691 >> Train your class spells
>>|T132273:0|t[Instant Poison Rank 3] |cRXP_WARN_requires 160 skill in Poisons!|r
.target Ian Strom
.xp <36,1
.xp >38,1
step << Rogue
#optional
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 8621 >> Train your class spells
>>|T132273:0|t[Instant Poison Rank 3] |cRXP_WARN_requires 160 skill in Poisons!|r
.target Ian Strom
.xp <38,1
step
#xprate <2.1
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r on the inn's lowest level
.goto Stranglethorn Vale,26.988,77.284
.turnin 79235 >>Turn in On the Lam
.target Tokal
.isOnQuest 79235
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r on the inn's lowest level
.goto Stranglethorn Vale,26.988,77.284
.accept 79236 >>Accept Cherry for Your Thoughts?
.target Tokal
.isQuestTurnedIn 79235
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nixxrax Fillamug|r
>>|cRXP_BUY_Buy a|r |T132790:0|t[Cherry Grog]
.goto Stranglethorn Vale,27.039,77.168
.collect 4600,1,79236,1
.target Nixxrax Fillamug
.isQuestTurnedIn 79235
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
.goto Stranglethorn Vale,26.988,77.284
.turnin 79236 >>Turn in Cherry for Your Thoughts?
.accept 79242 >>Accept No Honor Among Thieves
.target Tokal
.isQuestTurnedIn 79235
step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 575 >> Turn in Supply and Demand
.accept 577 >> Accept Some Assembly Required
.target Drizzlik
step
#optional
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 575 >> Turn in Supply and Demand
.target Drizzlik
step
#label BBHealingPots
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
step << Rogue
#season 2
.train 425103,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Aransas|r
>>She will give you |T133640:0|t[|cRXP_LOOT_Captain Aransas' Reward|r]
.goto Stranglethorn Vale,27.681,76.648
.skipgossip
.collect 216618,1
.target Captain Aransas
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
.use 216618 >>Open |T133640:0|t[|cRXP_LOOT_Captain Aransas' Reward|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r] and |T338666:0|t[|cRXP_FRIENDLY_Jani's Charm|r]
>>|cRXP_WARN_Do NOT destroy|r |T338666:0|t[|cRXP_FRIENDLY_Jani's Charm|r] |cRXP_WARN_as it is used for gather future runes|r
.collect 213136,1
.skill lockpicking,<125,1
step << Rogue
#season 2
.itemcount 213136,1
.use 213136
.train 425103 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r] |cRXP_WARN_to train|r |T132299:0|t[Master of Subtlety]
.skill lockpicking,<125,1
step << Druid
#completewith DruidTraining5
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9493 >> Train your class spells
.target Loganaar
.xp <36,1
.xp >38,1
step << Druid
#label DruidTraining5
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 5201 >> Train your class spells
.target Loganaar
.xp <38,1
step << Hunter
#season 2
.goto Stranglethorn Vale,26.87,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gringer|r
.fly Grom'gol >> Fly to Grom'gol Base Camp
.target Gringer
.subzoneskip 117
.train 415423,1
step << Hunter
#season 2
#completewith next
.goto Stranglethorn Vale,31.5,29.0 >>Go up the Zeppelin Tower
.zone Tirisfal Glades >>Take the Zeppelin to Undercity
.zoneskip Tirisfal Glades
.train 415423,1
step << Hunter
#season 2
.goto Tirisfal Glades,82.32,35.24
.subzone 796,2 >>Head to the Scarlet Monastery
.train 415423,1
step << Hunter
#season 2
>>Enter |cRXP_PICK_the Graveyard|r dungeon. Clear up to and including |cRXP_ENEMY_Interrogator Vishas|r. Loot him for the |T133739:0|t[|cRXP_LOOT_Treatise on Aspect of the Viper|r] << Hunter
>>Your pet should be able to easily tank the mobs and boss with the |T132270:0|t[|cRXP_FRIENDLY_Beast Mastery|r] rune << Hunter
.collect 216770,1 << Hunter 
.mob Interrogator Vishas
.train 415423,1 << Hunter
step << Hunter
#season 2
.train 415423 >>|cRXP_WARN_Use the|r |T133739:0|t|cRXP_LOOT_[Treatise on Aspect of the Viper]|r |cRXP_WARN_to learn|r |T132160:0|t[|cRXP_FRIENDLY_Aspect of the Viper|r]
.train 415423,1
step << Mage
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
.train 3567,3
step
#optional << Mage
#completewith next << !Mage
.hs >> Hearth to Orgrimmar
.use 6948
.bindlocation 1637,1
.zoneskip Orgrimmar
.train 3567,1 << Mage
step << !Mage
.goto Orgrimmar,54.65,67.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barkeep Morag|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Barkeep Morag
step
#xprate <2.1
.goto Orgrimmar,49.57,69.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karus|r
.bankdeposit 2725,2728,2735,2730,2742,2732,2748,2751,2734,2740,2749,2745,2738,2744,2750 >>Deposit all your |T134332:0|t[Green Hills of Stranglethorn Pages] onto the bank
.target Karus
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Thathung|r
>>|cRXP_BUY_Buy one|r |T135326:0|t[Moonsteel Broadsword] |cRXP_BUY_from the Auction House|r << !sod
>>|cRXP_BUY_Buy one|r |T135326:0|t[Moonsteel Broadsword] |cRXP_BUY_from the Auction House|r << sod
>>|cRXP_WARN_This is for a free 3,450 XP turnin in Dustwallow Marsh later. Skip this step if you're unable to acquire one|r
.collect 3853,1,1203,1 << !sod 
.collect 217281,1,81570,1 << sod 
.target Auctioneer Thathung
step
.goto Orgrimmar,57.57,52.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xen'to|r
>>|cRXP_BUY_Buy|r [Soothing Spices] |cRXP_BUY_from him|r
.collect 3713,3,1218,1 
.target Xen'to
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 8427 >> Train your class spells
.target Pephredo
.xp <36,1
.xp >38,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 8413 >> Train your class spells
.target Pephredo
.xp <38,1
step << Mage
.goto Orgrimmar,38.70,85.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r at the top of the hut
.train 11417 >> Train |T135744:0|t[Portal: Orgrimmar]
.target Thuul
.xp <40,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Horthus|r
>>|cRXP_BUY_Buy two or more|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_and optionally one or more|r |T134421:0|t[Rune of Portals] |cRXP_BUY_from him|r
.collect 17031,2 
.collect 17032,1 
.target Horthus
.xp <40,1
.zoneskip Orgrimmar,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Horthus|r
>>|cRXP_BUY_. Buy two or more|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from him|r
.collect 17031,2 
.target Horthus
.xp >40,1
.zoneskip Orgrimmar,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10412 >> Train your class spells
.target Kardris Dreamseeker
.xp <36,1
.xp >38,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10391 >> Train your class spells
.target Kardris Dreamseeker
.xp <38,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 2362 >> Train your class spells
.target Mirket
.xp <36,1
.xp >38,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11711 >> Train your class spells
.target Mirket
.xp <38,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
.vendor >>Buy any pet upgrades you can afford
.target Kurgul
.zoneskip Orgrimmar,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 1680 >>Train your class spells
.target Grezz Ragefist
.xp <36,1
.xp >38,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 8820 >> Train your class spells
.target Grezz Ragefist
.xp <38,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14303 >>Train your class spells
.target Ormak Grimshot
.xp <36,1
.xp >38,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14320 >>Train your class spells
.target Ormak Grimshot
.xp <38,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
.train 24560 >>Train your pet spells
.target Xao'tsu
.xp <36,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 6066 >> Train your class spells
.target Ur'kyo
.xp <36,1
.xp >38,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 6078 >> Train your class spells
.target Ur'kyo
.xp <38,1
]]);
