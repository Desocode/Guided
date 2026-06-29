RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 30-40
#classic
#tbc
#mop
<< Horde
#xprate <2.1
#name 34-35 Desolace
#displayname 34-36 Desolace << sod
#next 35-37 Northern Stranglethorn
#somname 33-35 Desolace
step
#label SetHearthTB1
.goto Thunder Bluff,45.81,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
.home >>Set your Hearthstone to Thunder Bluff
.target Innkeeper Pala
.bindlocation 1638
.isQuestAvailable 1480
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 1823 >>Train your class spells
.target Turak Runetotem
.xp <34,1
.xp >36,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 1823 >>Train your class spells
.target Turak Runetotem
.xp <36,1
step
#xprate <1.99
.goto Thunder Bluff,61.54,80.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
.turnin 1136 >>Turn in Frostmaw
.target Melor Stonehoof
.isQuestComplete 1136
step
#optional
#completewith FlyDesolace
.destroy 5838 >>|cRXP_WARN_Destroy the|r |T134252:0|t[Kodo Skin Scroll] |cRXP_WARN_as you no longer need it|r
.isQuestTurnedIn 1136
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 13552 >>Train your class spells
.target Urek Thunderhorn
.xp <34,1
.xp >36,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14284 >>Train your class spells
.target Urek Thunderhorn
.xp <36,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
.train 24560 >>Train your pet spells
.target Hesuwa Thunderhorn
.xp <36,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11554 >>Train your class spells
.target Ker Ragetotem
.xp <34,1
.xp >36,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 1680 >> Train your class spells
.target Ker Ragetotem
.xp <36,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 16314 >>Train your class spells
.target Tigor Skychaser
.xp <34,1
.xp >36,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 10412 >>Train your class spells
.target Tigor Skychaser
.xp <36,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai|r
.train 2767 >> Train your class spells
.target Malakai Cross
.xp <34,1
.xp >36,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai|r
.train 15264 >> Train your class spells
.target Malakai Cross
.xp <36,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurston|r
.train 8492 >> Train your class spells
.target Thurston Xane
.xp <34,1
.xp >36,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurston|r
.train 8495 >> Train your class spells
.target Thurston Xane
.xp <36,1
step << Mage
.goto Thunder Bluff,22.48,16.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Birgitte|r
.train 3566 >> Train |T135765:0|t[Teleport: Thunder Bluff]
.target Birgitte Cranston
step
#ah
.goto Thunder Bluff,40.39,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stampi|r
>>|cRXP_BUY_Buy|r |T133900:0|t[Shellfish] |cRXP_BUY_from the auction house if possible|r
.collect 13545,10,5386,1 
.target Auctioneer Stampi
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
.collect 3030,1800,1480,1 
.target Kuna Thunderhorn
.zoneskip Thunder Bluff,1
step
#label FlyDesolace
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Sun Rock >> Fly to Stonetalon Mountains
.target Tal
.zoneskip Stonetalon Mountains
.zoneskip Desolace
step
#xprate <1.99
.goto Stonetalon Mountains,46.00,60.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Braelyn|r
.turnin 1088 >> Turn in Ordanus
.target Braelyn Firehand
.isQuestComplete 1088
step
#optional
.abandon 1088 >> Abandon Ordanus
.isOnQuest 1088
step << Shaman
#season 2
#completewith next
.goto Stonetalon Mountains,44.63,61.55,60,0
.goto Stonetalon Mountains,38.77,68.65,60 >>Head southwest to the mountain path. Follow it into the Charred Vale
.train 425343,1
step << Shaman
#season 2
#loop
.goto Stonetalon Mountains,28.45,65.00,0
.goto Stonetalon Mountains,28.45,65.00,50,0
.goto Stonetalon Mountains,29.08,71.97,50,0
.goto Stonetalon Mountains,33.43,68.97,50,0
.goto Stonetalon Mountains,33.49,69.40,50,0
.goto Stonetalon Mountains,36.85,72.04,50,0
>>Kill the |cRXP_ENEMY_Primordial Anomaly|r. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of Primordial Fury]|r
>>|cRXP_WARN_Make sure to check its form (debuffs). If it's in|r |T136074:0|t[Nature Form]|cRXP_WARN_, deal|r |T135824:0|t[Fire Damage]|cRXP_WARN_. If it's in|r |T135819:0|t[Fire Form]|cRXP_WARN_, deal|r |T135865:0|t[Frost Damage]|cRXP_WARN_. If it's in|r |T135861:0|t[Water Form]|cRXP_WARN_, deal|r |T136085:0|t[Nature Damage]
>>|cRXP_WARN_Be careful as it casts |T132939:0|t[Knock Away] |cRXP_WARN_(Melee Instant: Knocks target up in the air and deals 80 damage)|r
>>|cRXP_WARN_It has a 5-8 minute respawn time and drops a random BoE green each time|r
.collect 210811,1 
.mob Primordial Anomaly
.train 425343,1
step << Shaman
#season 2
.cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Primordial Fury]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Greater Ghost Wolf]
.use 210811
.itemcount 210811,1 
.train 425343,1
step
.goto Stonetalon Mountains,44.63,61.55,60,0
.goto Stonetalon Mountains,38.77,68.65,60,0
.goto Stonetalon Mountains,30.22,75.61,60,0
.goto Stonetalon Mountains,29.29,79.69
.zone Desolace >>Head southwest to the mountain path. Follow it into the Charred Vale. From there, turn south into Desolace
.subzoneskip 465 << Shaman
step << Shaman
.goto Stonetalon Mountains,29.29,79.69
.zone Desolace >>Travel into Desolace
.subzoneskip 465,1 << Shaman
step << Warlock
#season 2
#sticky
#completewith DesolaceEnd
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
#completewith DesolaceEnd
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
#completewith DesolaceEnd
.itemcount 221499,1 << Warlock 
.itemcount 223147,1 << Mage 
.train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
.train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
.use 221499 << Warlock
.use 223147 << Mage
step
#completewith next
.subzone 599 >>Travel to Thunder Axe Fortress
step
.goto Desolace,55.80,30.10
>>Kill and loot members of the |cRXP_ENEMY_Burning Blade|r until you get a |T134253:0|t[|cRXP_LOOT_Flayed Demon Skin|r]
.collect 20310,1,1480 
.accept 1480 >> Accept The Corrupter
.mob Burning Blade Augur
.mob Burning Blade Adept
.mob Burning Blade Reaver
.mob Burning Blade Felsworn
.mob Burning Blade Shadowmage
step << Warrior/Hunter/Rogue/Druid/Shaman
#xprate <1.99
.goto Desolace,55.94,29.19
.xp 35 >> Grind Burning Blade mobs at Thunder Axe Fortress to level 35
.mob Burning Blade Felsworn
.mob Burning Blade Augur
.mob Burning Blade Reaver
.mob Burning Blade Adept
step
.goto Desolace,38.90,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore|r
.accept 5741 >> Accept Sceptre of Light
.target Azore Aldamort
step
#completewith next
.goto Desolace,56.30,57.07,100 >> Travel to Ghost Walker Post
step
.goto Desolace,55.40,55.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nataka|r
.turnin 5361 >> Turn in Family Tree
.target Nataka Longhorn
step
.goto Desolace,52.60,54.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata|r
.turnin 1432 >> Turn in Alliance Relations
.accept 1433 >> Accept Alliance Relations
.accept 1434 >> Accept Befouled by Satyr
.target Takata Steelblade
step
.goto Desolace,52.20,53.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin|r
.turnin 1433 >> Turn in Alliance Relations
.accept 1435 >> Accept The Burning of Spirits
.turnin 1480 >> Turn in The Corrupter
.accept 1481 >> Accept The Corrupter
.target Maurin Bonesplitter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felgur|r and |cRXP_FRIENDLY_Gurda|r
.accept 1365 >> Accept Khan Dez'hepah
.target +Felgur Twocuts
.goto Desolace,56.19,59.56
.accept 1368 >> Accept Gelkis Alliance
.target +Gurda Wildmane
.goto Desolace,56.29,59.67
step
#som
.goto Desolace,56.20,59.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felgur Twocuts|r
.accept 1365 >> Accept Khan Dez'hepah
.target Felgur Twocuts
step << Druid
#season 2
.train 410060,1
#completewith next
>>Kill |cRXP_ENEMY_Kolkars|r and loot them for |T134187:0|t[Desiccated Seed Pod]
.collect 213574,1
.mob Kolkar Centaur
.mob Kolkar Mauler
.mob Kolkar Scout
.mob Kolkar Windchaser
step
#loop
.goto Desolace,73.20,41.80,0
.goto Desolace,73.00,46.80,0
.goto Desolace,74.80,48.80,0
.goto Desolace,73.20,41.80,60,0
.goto Desolace,73.00,46.80,60,0
.goto Desolace,74.80,48.80,60,0
>>Kill |cRXP_ENEMY_Khan Dez'hepah|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_He has 3 different spawn locations in the camp|r
.complete 1365,1 
.unitscan Khan Dez'hepah
step << Druid
#season 2
.train 410060,1
#loop
.goto Desolace,70.6,39.8,0
.goto Desolace,70.6,39.8,60,0
.goto Desolace,69.2,46.6,60,0
.goto Desolace,68.6,52.6,60,0
>>Kill |cRXP_ENEMY_Kolkars|r and loot them for |T134187:0|t[Desiccated Seed Pod]
.collect 213574,1
.mob Kolkar Centaur
.mob Kolkar Mauler
.mob Kolkar Scout
.mob Kolkar Windchaser
step << Druid
#season 2
.train 410060,1
>>Swim in the water and wait until the pod turns into |T134208:0|t[Satyrweed Bulb]
.goto Desolace,70.8,71.8
.collect 206966,1
step << Druid
#season 2
.goto Desolace,75.5,20.7
.train 410060 >>Click on the |cRXP_PICK_Sandy Loam|r to plant the seed to learn |T136090:0|t[Dreamstate]
step
#completewith next
>>Kill |cRXP_ENEMY_Hatefury Shadowstalkers|r. Loot them for a |cRXP_LOOT_Scalp|r
.complete 1481,1 
.mob Hatefury Shadowstalker
step
#loop
.goto Desolace,75.26,27.91,0
.goto Desolace,75.26,27.91,60,0
.goto Desolace,76.77,27.73,60,0
.goto Desolace,77.54,26.68,60,0
.goto Desolace,78.20,25.63,60,0
.goto Desolace,78.90,24.60,60,0
.goto Desolace,78.74,23.15,60,0
.goto Desolace,79.33,20.96,60,0
.goto Desolace,79.69,18.92,60,0
.goto Desolace,79.36,16.18,60,0
.goto Desolace,77.43,15.44,60,0
.goto Desolace,75.96,15.89,60,0
.goto Desolace,74.52,15.66,60,0
.goto Desolace,72.81,16.83,60,0
.goto Desolace,71.58,17.94,60,0
.goto Desolace,71.50,20.22,60,0
.goto Desolace,72.36,21.23,60,0
.goto Desolace,73.04,22.41,60,0
.goto Desolace,73.09,24.41,60,0
.goto Desolace,73.79,25.72,60,0
>>Kill |cRXP_ENEMY_Hatefury Satyrs|r. Prioritize killing the |cRXP_ENEMY_Hatefury Rogues|r
.complete 1434,1 
.mob +Hatefury Rogue
.complete 1434,2 
.mob +Hatefury Felsworn
.complete 1434,3 
.mob +Hatefury Betrayer
.complete 1434,4 
.mob +Hatefury Hellcaller
step
#loop
.goto Desolace,75.26,27.91,0
.goto Desolace,75.26,27.91,60,0
.goto Desolace,76.77,27.73,60,0
.goto Desolace,77.54,26.68,60,0
.goto Desolace,78.20,25.63,60,0
.goto Desolace,78.90,24.60,60,0
.goto Desolace,78.74,23.15,60,0
.goto Desolace,79.33,20.96,60,0
.goto Desolace,79.69,18.92,60,0
.goto Desolace,79.36,16.18,60,0
.goto Desolace,77.43,15.44,60,0
.goto Desolace,75.96,15.89,60,0
.goto Desolace,74.52,15.66,60,0
.goto Desolace,72.81,16.83,60,0
.goto Desolace,71.58,17.94,60,0
.goto Desolace,71.50,20.22,60,0
.goto Desolace,72.36,21.23,60,0
.goto Desolace,73.04,22.41,60,0
.goto Desolace,73.09,24.41,60,0
.goto Desolace,73.79,25.72,60,0
>>Kill |cRXP_ENEMY_Hatefury Shadowstalkers|r. Loot them for a |cRXP_LOOT_Scalp|r
.complete 1481,1 
.mob Hatefury Shadowstalker
step << Warlock
#season 2
.train 416017,1
.goto Desolace,74.5,13.4
>>Click the |cRXP_ENEMY_Reckless Warlock|r on the ground. Loot him for |T236297:0|t[Brimstone Carving]
>>|cRXP_WARN_This is a rare enemy and there's a chance it may not be present|r
.collect 213583,1
.mob Reckless Warlock
.unitscan Reckless Warlock
step << Warlock
#season 2
.train 416017,1
>>|cRXP_WARN_Cast|r |T135818:0|t[Hellfire] |cRXP_WARN_to damage yourself below 70% health. Afterwards|r |T236297:0|t[Brimstone Carving] |cRXP_WARN_will transform into|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wickedness|r]
.collect 213102,1 
.itemcount 213583,1
step << Warlock
#season 2
.train 416017 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wickedness|r] |cRXP_WARN_to learn|r |T236295:0|t[Dance of the Wicked]
.use 416017
.itemcount 213102,1
step
.goto Desolace,62.30,39.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly|r
.accept 5501 >> Accept Bone Collector
.target Bibbly F'utzbuckle
step
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>Click the |cRXP_PICK_Extinguished Campfire|r
.goto Desolace,47.5,54.6
.accept 79229 >>Accept Highway Robbery
step
#completewith next
.goto Desolace,56.30,57.07,100 >> Travel to Ghost Walker Post
step
.goto Desolace,52.60,54.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata|r
.turnin 1434 >> Turn in Befouled by Satyr
.target Takata Steelblade
step
.goto Desolace,52.20,53.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin|r
.turnin 1481 >> Turn in The Corrupter
.accept 1482 >> Accept The Corrupter
.target Maurin Bonesplitter
step
.goto Desolace,51.20,53.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harnor|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Harnor
.isQuestAvailable 1366
.subzoneskip 597,1
step
#era
.goto Desolace,56.20,59.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felgur|r
.turnin 1365 >> Turn in Khan Dez'hepah
.accept 1366 >> Accept Centaur Bounty
.target Felgur Twocuts
step
#som
.goto Desolace,56.20,59.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felgur|r
.turnin 1365 >> Turn in Khan Dez'hepah
.target Felgur Twocuts
step
.goto Desolace,60.80,61.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed|r
.accept 5561 >> Accept Kodo Roundup
.target Smeed Scrabblescrew
step
#era
#loop
.goto Desolace,69.60,77.85,0
.goto Desolace,67.90,73.59,60,0
.goto Desolace,67.86,75.80,60,0
.goto Desolace,66.26,75.70,60,0
.goto Desolace,65.70,78.86,60,0
.goto Desolace,66.40,80.05,60,0
.goto Desolace,68.56,81.01,60,0
.goto Desolace,72.20,78.35,60,0
.goto Desolace,70.95,75.09,60,0
.goto Desolace,73.36,73.37,60,0
.goto Desolace,69.60,77.85,60,0
>>Kill |cRXP_ENEMY_Magram Centaur|r. Loot them for their |cRXP_LOOT_Ears|r
>>|cRXP_WARN_Be careful of |cRXP_ENEMY_Magram Pack Runners|r as they have two |cRXP_ENEMY_Hyenas|r (level 37-38) with them|r
.complete 1366,1 
.mob Magram Outrunner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Marauder
.mob Magram Wrangler
step
#era
#loop
.goto Desolace,69.60,77.85,0
.goto Desolace,67.90,73.59,60,0
.goto Desolace,67.86,75.80,60,0
.goto Desolace,66.26,75.70,60,0
.goto Desolace,65.70,78.86,60,0
.goto Desolace,66.40,80.05,60,0
.goto Desolace,68.56,81.01,60,0
.goto Desolace,72.20,78.35,60,0
.goto Desolace,70.95,75.09,60,0
.goto Desolace,73.36,73.37,60,0
.goto Desolace,69.60,77.85,60,0
>>Continue grinding |cRXP_ENEMY_Magram Centaur|r until your reputation with the |cRXP_FRIENDLY_Gelkis Centaur|r is Friendly
>>|cRXP_WARN_Be careful of |cRXP_ENEMY_Magram Pack Runners|r as they have two |cRXP_ENEMY_Hyenas|r (level 37-38) with them|r
.reputation 92,Friendly
.mob Magram Outrunner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Marauder
.mob Magram Wrangler
step << !Warrior !Hunter !Rogue !Druid !Shaman
#era
#xprate <1.5
#loop
.goto Desolace,67.90,73.59,60,0
.goto Desolace,67.86,75.80,60,0
.goto Desolace,66.26,75.70,60,0
.goto Desolace,65.70,78.86,60,0
.goto Desolace,66.40,80.05,60,0
.goto Desolace,68.56,81.01,60,0
.goto Desolace,72.20,78.35,60,0
.goto Desolace,70.95,75.09,60,0
.goto Desolace,73.36,73.37,60,0
.goto Desolace,69.60,77.85,60,0
.xp 35+17000 >> Grind to level 35 17000/67100
.mob Magram Outrunner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Marauder
.mob Magram Wrangler
step
#completewith next
.goto Desolace,60.86,61.86,0
>>Use the |T132488:0|t[Kodo Kombobulator] on |cRXP_FRIENDLY_Kodos|r, then escort them to |cRXP_FRIENDLY_Smeed|r
>>Click on the |cRXP_FRIENDLY_Kodo|r after each trip to progress the quest
.complete 5561,1 
.use 13892
.target Dying Kodo
.target Aged Kodo
.target Ancient Kodo
.target Smeed Scrabblescrew
.skipgossip
step
#loop
.goto Desolace,53.31,61.24,0
.goto Desolace,54.42,63.79,30,0
.goto Desolace,54.38,62.87,30,0
.goto Desolace,53.31,61.24,30,0
.goto Desolace,54.39,60.38,30,0
.goto Desolace,53.90,58.17,30,0
.goto Desolace,52.88,57.13,30,0
.goto Desolace,52.14,58.56,30,0
.goto Desolace,51.13,59.97,30,0
.goto Desolace,50.81,58.72,30,0
.goto Desolace,49.70,57.15,30,0
.goto Desolace,48.90,58.86,30,0
.goto Desolace,48.98,60.05,30,0
>>Loot the |cRXP_LOOT_Kodo Bones|r on the ground around the Kodo Graveyard
>>|cRXP_WARN_Be careful as high level|r |cRXP_ENEMY_Kodos|r |cRXP_WARN_can spawn after looting the|r |cRXP_LOOT_Kodo Bones|r << !Rogue !Druid
>>|cRXP_WARN_Be careful as high level|r |cRXP_ENEMY_Kodos|r |cRXP_WARN_can spawn after looting the|r |cRXP_LOOT_Kodo Bones|r|cRXP_WARN_. Immediately stealthing will often prevent them from attacking you|r << Rogue/Druid
.complete 5501,1 
step
#loop
.goto Desolace,53.96,61.10,0
.goto Desolace,53.96,61.10,50,0
.goto Desolace,60.87,61.85,20,0
>>Use the |T132488:0|t[Kodo Kombobulator] on |cRXP_FRIENDLY_Kodos|r, then escort them to |cRXP_FRIENDLY_Smeed|r
>>Click on the |cRXP_FRIENDLY_Kodo|r after each trip to progress the quest
.complete 5561,1 
.use 13892
.target Dying Kodo
.target Aged Kodo
.target Ancient Kodo
.target Smeed Scrabblescrew
.skipgossip
step
.goto Desolace,60.80,61.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed|r
.turnin 5561 >> Turn in Kodo Roundup
.target Smeed Scrabblescrew
step
#era
.goto Desolace,56.20,59.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felgur|r
.turnin 1366 >> Turn in Centaur Bounty
.target Felgur Twocuts
step
#era
.goto Desolace,36.30,79.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek|r
.turnin 1368 >> Turn in Gelkis Alliance
.accept 1370 >> Accept Stealing Supplies
.target Uthek the Wise
step
#completewith ShadowPreyVisit1
.goto Desolace,27.07,75.74,100,0
.goto Desolace,26.09,74.49,60,0
.subzone 2408 >>Travel to Shadowprey Village
step
.goto Desolace,25.80,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taiga|r
.accept 5381 >> Accept Hand of Iruxos
.target Taiga Wisemane
step << Mage
#optional
.goto Desolace,24.09,68.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Sikewa|r
.home >> Set your Hearthstone to Shadowprey Village
.target Innkeeper Sikewa
.bindlocation 484
.isQuestAvailable 6027,5501,5741,6161,1482,6143
.train 3566,3 
.itemcount 17031,1 
step
.goto Desolace,22.70,72.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'Lahii|r
.accept 6142 >> Accept Clam Bait
.target Mai'Lahii
step
#label ShadowPreyVisit1
.goto Desolace,23.30,72.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drulzegar|r
.accept 6143 >> Accept Other Fish to Fry
.target Drulzegar Skraghook
step
.goto Desolace,21.60,74.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalon|r at the end of the dock
.fp Shadowprey Village >> Get the Shadowprey Village flight path
.target Thalon
.subzoneskip 2408,1
step
#ah
.goto Desolace,22.44,73.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinar'Zillen|r
.turnin 5421 >> Turn in Fish in a Bucket |cRXP_WARN_TWICE|r to receive 2 |T133892:0|t[|cRXP_LOOT_Bloodbelly Fish|r]
.collect 13546,2,5386,1 
.target Jinar'Zillen
.itemcount 13545,10 
step << Hunter
.goto Desolace,24.93,71.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tukk|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,2600,5741,1 
.target Tukk
step
#completewith next
.goto Desolace,62.30,39.00,150 >> Travel to northern Desolace
step
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
.goto Desolace,62.30,39.00
.turnin 5501 >>Turn in Bone Collector
.turnin 79229 >>Turn in Highway Robbery
.accept 79235 >>Accept On the Lam
.target Bibbly F'utzbuckle
step
.goto Desolace,62.30,39.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly|r
.turnin 5501 >> Turn in Bone Collector
.target Bibbly F'utzbuckle
step
#completewith DemonSpirit
.use 6436 >> Kill |cRXP_ENEMY_Burning Blade members|r
>>|cRXP_WARN_Use the|r |T134095:0|t[Burning Gem] |cRXP_WARN_to get the killing blow (100 damage per tick)|r
.complete 1435,1 
step
.goto Desolace,55.20,30.10
>>Kill the |cRXP_ENEMY_Burning Blade Seer|r at the top of the tower. Loot it for the |cRXP_LOOT_Sceptre|r
.complete 5741,1 
.mob Burning Blade Seer
step
#completewith next
.goto Desolace,55.31,27.55,12 >>Enter the large building
step
#label DemonSpirit
.goto Desolace,54.62,27.54,10,0
.goto Desolace,54.43,27.22,10,0
.goto Desolace,54.93,26.67
>>|cRXP_WARN_Use the|r |T136248:0|t[Demon Pick] |cRXP_WARN_on the|r |cRXP_PICK_Hand of Iruxos Crystal|r
>>Kill the |cRXP_ENEMY_Demon Spirit|r after it spawns. Loot it for the |cRXP_LOOT_Demon Box|r
.complete 5381,1 
.mob Demon Spirit
step
#loop
.goto Desolace,56.82,29.95,0
.goto Desolace,55.58,28.70,50,0
.goto Desolace,56.82,29.95,50,0
.goto Desolace,57.21,27.86,50,0
.goto Desolace,57.62,26.30,50,0
.goto Desolace,57.26,22.39,50,0
.goto Desolace,56.41,21.57,50,0
.use 6436 >> Kill |cRXP_ENEMY_Burning Blade members|r
>>|cRXP_WARN_Use the|r |T134095:0|t[Burning Gem] |cRXP_WARN_to get the killing blow (100 damage per tick)|r
.complete 1435,1 
.mob Burning Blade Augur
.mob Burning Blade Adept
.mob Burning Blade Reaver
.mob Burning Blade Felsworn
.mob Burning Blade Shadowmage
step
.goto Desolace,38.90,27.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Azore|r
.turnin 5741 >> Turn in Sceptre of Light
.accept 6027 >> Accept Book of the Ancients
.target Azore Aldamort
step
.goto Desolace,36.07,30.40
>>Click |cRXP_PICK_Rackmore's Log|r, resting on a barrel
.accept 6161 >> Accept Claim Rackmore's Treasure!
step << !Druid !Warlock !Shaman
#ah
#completewith next
.aura 7178 >>|cRXP_WARN_Drink an|r |T134797:0|t[Elixir of Water Breathing]
.use 5996
.itemcount 5996,1
step
#completewith Rackmore
>>Kill |cRXP_ENEMY_Slitherblade Oracles|r. Loot them for an |cRXP_LOOT_Oracle Crystal|r
>>|cRXP_ENEMY_Slitherblade Oracles|r |cRXP_WARN_share spawns with other|r |cRXP_ENEMY_Slitherblade Nagas|r|cRXP_WARN_; you may have to kill them|r
.complete 1482,1 
.mob Slitherblade Oracle
step
#completewith BookoftheAncients
>>Kill |cRXP_ENEMY_Slitherblade Nagas|r. Loot them for the |cRXP_LOOT_Golden Key|r
.complete 6161,2 
step
#completewith ClamMeat
>>Kill |cRXP_ENEMY_Drysnap Pincers|r and |cRXP_ENEMY_Crawlers|r. Loot them for the |cRXP_LOOT_Silver Key|r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
#completewith Rackmore
>>Kill |cRXP_ENEMY_Slitherblade Naga|r, |cRXP_ENEMY_Myrmidons|r, and |cRXP_ENEMY_Sorceresses|r
.complete 6143,1 
.mob +Slitherblade Myrmidon
.complete 6143,2 
.mob +Slitherblade Naga
.complete 6143,3 
.mob +Slitherblade Sorceress
step
#label ClamMeat
#loop
.goto Desolace,32.97,28.58,0
.goto Desolace,34.12,30.74,40,0
.goto Desolace,31.96,30.60,40,0
.goto Desolace,32.98,28.57,40,0
.goto Desolace,35.36,25.03,40,0
.goto Desolace,34.34,23.11,40,0
.goto Desolace,32.97,28.58,40,0
.use 15874 >>Loot the |cRXP_PICK_Giant Softshell Clams|r on the ocean floor. Open them for their |cRXP_LOOT_Meat|r
>>|cRXP_ENEMY_Enraged Reef Crawlers|r |cRXP_WARN_can also drop the|r |cRXP_PICK_Giant Softshell Clams|r
.complete 6142,1 
.mob Enraged Reef Crawler
step
#label SilverKey
#loop
.goto Desolace,31.96,30.60,0
.goto Desolace,34.12,30.74,40,0
.goto Desolace,31.96,30.60,40,0
.goto Desolace,32.98,28.57,40,0
.goto Desolace,35.36,25.03,40,0
.goto Desolace,34.34,23.11,40,0
.goto Desolace,32.97,28.58,40,0
>>Kill |cRXP_ENEMY_Drysnap Pincers|r and |cRXP_ENEMY_Crawlers|r. Loot them for the |cRXP_LOOT_Silver Key|r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
.goto Desolace,30.00,8.80
>>Click |cRXP_PICK_Rackmore's Chest|r
.turnin 6161 >> Turn in Claim Rackmore's Treasure!
.isQuestComplete 6161
step
#label BookoftheAncients
.goto Desolace,28.20,6.60
>>Click the |cRXP_PICK_Serpent Statue|r to summon |cRXP_ENEMY_Lord Kragaru|r. Kill him and loot him for his |cRXP_LOOT_Book|r
>>|cRXP_WARN_Kill everything around the Serpent Statue first!|r
.complete 6027,1 
.mob Lord Kragaru
step
#loop
.goto Desolace,28.48,11.14,0
.goto Desolace,28.48,11.14,50,0
.goto Desolace,27.24,10.26,50,0
.goto Desolace,27.81,7.83,50,0
.goto Desolace,27.87,5.71,50,0
.goto Desolace,28.66,6.74,50,0
.goto Desolace,30.07,6.86,50,0
.goto Desolace,30.96,7.87,50,0
.goto Desolace,30.33,8.98,50,0
.goto Desolace,29.99,11.23,50,0
>>Kill |cRXP_ENEMY_Slitherblade Nagas|r. Loot them for the |cRXP_LOOT_Golden Key|r
.complete 6161,2 
step
#label Rackmore
.goto Desolace,30.00,8.80
>>Click |cRXP_PICK_Rackmore's Chest|r
.turnin 6161 >> Turn in Claim Rackmore's Treasure!
step
#completewith next
>>Kill |cRXP_ENEMY_Slitherblade Naga|r, |cRXP_ENEMY_Myrmidons|r, and |cRXP_ENEMY_Sorceresses|r
.complete 6143,1 
.mob +Slitherblade Myrmidon
.complete 6143,2 
.mob +Slitherblade Naga
.complete 6143,3 
.mob +Slitherblade Sorceress
step
#loop
.goto Desolace,28.48,11.14,0
.goto Desolace,28.48,11.14,50,0
.goto Desolace,27.24,10.26,50,0
.goto Desolace,27.81,7.83,50,0
.goto Desolace,27.87,5.71,50,0
.goto Desolace,28.66,6.74,50,0
.goto Desolace,30.07,6.86,50,0
.goto Desolace,30.96,7.87,50,0
.goto Desolace,30.33,8.98,50,0
.goto Desolace,29.99,11.23,50,0
>>Kill |cRXP_ENEMY_Slitherblade Oracles|r. Loot them for an |cRXP_LOOT_Oracle Crystal|r
>>|cRXP_ENEMY_Slitherblade Oracles|r |cRXP_WARN_share spawns with other|r |cRXP_ENEMY_Slitherblade Nagas|r|cRXP_WARN_; you may have to kill them|r
.complete 1482,1 
.mob Slitherblade Oracle
step
#loop
.goto Desolace,32.41,23.00,0
.goto Desolace,32.41,23.00,60,0
.goto Desolace,34.99,21.73,60,0
.goto Desolace,36.86,20.16,60,0
.goto Desolace,39.13,18.74,60,0
.goto Desolace,40.44,20.40,60,0
.goto Desolace,37.70,20.85,60,0
.goto Desolace,36.64,23.40,60,0
.goto Desolace,34.67,24.12,60,0
>>Kill |cRXP_ENEMY_Slitherblade Naga|r, |cRXP_ENEMY_Myrmidons|r, and |cRXP_ENEMY_Sorceresses|r
.complete 6143,1 
.mob +Slitherblade Myrmidon
.complete 6143,2 
.mob +Slitherblade Naga
.complete 6143,3 
.mob +Slitherblade Sorceress
step
.goto Desolace,38.88,27.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Azore|r
.turnin 6027 >> Turn in Book of the Ancients
.target Azore Aldamort
step
#completewith next
.goto Desolace,56.30,57.07,100 >> Travel to Ghost Walker Post
step
.goto Desolace,52.24,53.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Maurin|r
.turnin 1435 >> Turn in The Burning of Spirits
.turnin 1482 >> Turn in The Corrupter
.timer 30,The Corrupter RP
.target Maurin Bonesplitter
step
.goto Desolace,52.24,53.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Maurin|r
>>|cRXP_WARN_Wait for the RP to finish|r
.accept 1484 >> Accept The Corrupter
.target Maurin Bonesplitter
step
#ah
.goto Desolace,55.41,55.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nataka|r
.accept 5386 >> Accept Catch of the Day
.turnin 5386 >> Turn in Catch of the Day
.target Nataka Longhorn
.itemcount 13546,2 
step
.goto Desolace,52.56,54.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Takata|r
.turnin 1484 >> Turn in The Corrupter
.accept 1436 >> Accept Alliance Relations
.target Takata Steelblade
step
.goto Desolace,51.20,53.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harnor|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Harnor
.isQuestAvailable 1370
.subzoneskip 597,1
step
#era
#loop
.goto Desolace,73.67,72.90,0
.goto Desolace,69.22,77.24,30,0
.goto Desolace,70.01,78.60,30,0
.goto Desolace,70.92,75.43,30,0
.goto Desolace,73.18,75.11,30,0
.goto Desolace,73.57,74.21,30,0
.goto Desolace,73.67,72.90,30,0
>>Loot the |cRXP_PICK_Sacks of Meat|r around Magram Village for their |cRXP_LOOT_Meat|r
.complete 1370,1 
step
#xprate <1.5
#era
.goto Desolace,36.21,79.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1370 >> Turn in Stealing Supplies
.accept 1373 >> Accept Ongeku
.target Uthek the Wise
step
#xprate >1.49
.goto Desolace,36.21,79.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1370 >> Turn in Stealing Supplies
.target Uthek the Wise
step << Mage
.hs >>Hearth to Shadowprey Village
.bindlocation 2408,1
.subzoneskip 2408
.cooldown item,6948,>0,1
.itemcount 17031,1 
.isQuestComplete 5381
step
#completewith DesolaceEnd
.goto Desolace,27.07,75.74,100,0
.goto Desolace,26.09,74.49,60,0
.subzone 2408 >>Travel to Shadowprey Village
step << Hunter
#completewith next
.goto Desolace,24.90,68.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Aboda|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Scorpashi Lasher|r shortly
.target Aboda
step << Hunter
#loop
.goto Desolace,42.45,70.19,0
.goto Desolace,38.24,74.30,50,0
.goto Desolace,42.45,70.19,50,0
.goto Desolace,43.34,60.43,50,0
.cast 1515 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Scorpashi Lasher|r to tame it|r
.train 16831 >>|cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 5)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Scorpashi Lasher
step << Hunter
.goto Desolace,24.90,68.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Aboda|r
.stable >> Abandon the |cRXP_ENEMY_Scorpashi Lasher|r and retrieve your regular pet
.target Aboda
step
.goto Desolace,25.10,72.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roon|r
.accept 5763 >> Accept Hunting in Stranglethorn
.target Roon Wildmane
step
.goto Desolace,25.80,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Taiga|r
.turnin 5381 >> Turn in Hand of Iruxos
.target Taiga Wisemane
step
.goto Desolace,23.40,72.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Drulzegar|r
.turnin 6143 >> Turn in Other Fish to Fry
.target Drulzegar Skraghook
step
#label DesolaceEnd
.goto Desolace,22.70,72.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Mai'Lahii|r
.turnin 6142 >> Turn in Clam Bait
.target Mai'Lahii
step << Mage
.cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleport: Thunder Bluff]
.zoneskip Thunder Bluff
.train 3566,3
.itemcount 17031,1 
step
#optional
.goto Desolace,21.60,74.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalon|r at the end of the dock
.fly Thunder Bluff >>Fly to Thunder Bluff
.target Thalon
.zoneskip Thunder Bluff
.cooldown item,6948,<0
step
.hs >> Hearth to Thunder Bluff
.use 6948
.bindlocation 1638,1
.zoneskip Thunder Bluff
.cooldown item,6948,>0,1
step << skip
.goto Thunder Bluff,61.40,80.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
.accept 1136 >> Accept Frostmaw
.target Melor Stonehoof
step << !Undead 
.goto Thunder Bluff,34.42,46.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.accept 1049 >> Accept Compendium of the Fallen
.target Sage Truthseeker
.dungeon SM
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 9493 >>Train your class spells
.target Turak Runetotem
.xp <36,1
.xp >38,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 5201 >>Train your class spells
.target Turak Runetotem
.xp <38,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14303 >>Train your class spells
.target Urek Thunderhorn
.xp <36,1
.xp >38,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14320 >>Train your class spells
.target Urek Thunderhorn
.xp <38,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
.train 24560 >>Train your pet spells
.target Hesuwa Thunderhorn
.xp <36,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 1680 >>Train your class spells
.target Ker Ragetotem
.xp <36,1
.xp >38,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 8820 >> Train your class spells
.target Ker Ragetotem
.xp <38,1
]]);
