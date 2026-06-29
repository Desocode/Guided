RXPGuides.RegisterGuide([[
#group RestedXP Horde 22-30
#version 23
#xprate >1.99
#classic
#tbc
#mop
<< Horde Shaman/Horde Rogue
#name 23-24 Hillsbrad Class Quests
#next 24-26 Southern Barrens
step << Shaman/Rogue
#completewith next
.zone Durotar >> Leave Orgrimmar
.zoneskip Durotar
step << Shaman/Rogue
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
.zoneskip Tirisfal Glades
step << Shaman/Rogue
.zone Tirisfal Glades >>Arrive in Tirisfal Glades
.zoneskip Tirisfal Glades
step << Shaman/Rogue
#completewith JourneyToHillsbrad
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >> Enter Undercity
.zoneskip Undercity
step << Shaman/Rogue
#completewith JourneyToHillsbrad
.goto Undercity,66.09,20.06,35,0
.goto Undercity,64.37,23.94,35,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
step << Shaman/Rogue
.goto Undercity,53.74,54.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'dugur|r
.accept 1013 >>Accept The Book of Ur
.target Keeper Bel'dugur
.dungeon SFK
step << !Undead
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
>>|cRXP_WARN_Skip this step if you already have the flight path|r
.fp Undercity >> Get the Undercity Flight Path
.target Michael Garrett
.zoneskip Silverpine Forest
step << Undead
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher>> Fly to The Sepulcher
.target Michael Garrett
.zoneskip Silverpine Forest
step << Rogue
.goto Undercity,57.29,32.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Archibald|r in the War Quarter
.train 201 >>Train 1h Swords
.target Archibald
step << !Undead
#completewith next
.goto Undercity,47.25,39.12,50,0
.goto Undercity,46.35,43.86,10,0
.goto Undercity,45.24,39.35,10,0
.goto Undercity,41.32,38.40,10,0
.goto Undercity,40.74,33.95,10,0
.goto Undercity,34.80,33.19,15,0
.goto Undercity,27.39,30.23,35,0
.goto Undercity,21.89,43.35,35,0
.goto Tirisfal Glades,51.10,71.53,50,0
.zone Tirisfal Glades >> Leave Undercity through the Sewers
.zoneskip Undercity,1
step << !Undead
.goto Silverpine Forest,45.62,42.58
.subzone 228 >> Travel to the Sepulcher in Silverpine Forest
>>|cRXP_WARN_If you have the Sepulcher flight path, fly there instead|r
step << !Undead
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
>>|cRXP_WARN_Skip this step if you already have the flight path|r
.fp Sepulcher >> Get the Sepulcher flight path
.target Karos Razok
step << Shaman/Rogue
#label JourneyToHillsbrad
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renferrel|r and |cRXP_FRIENDLY_Mura|r
.accept 493 >> Accept Journey to Hillsbrad Foothills
.target +Apothecary Renferrel
.goto Silverpine Forest,42.90,40.86
.turnin 3301 >> Turn in Mura Runetotem
.target +Mura Runetotem
.goto Silverpine Forest,42.90,41.99
step
.goto Silverpine Forest,44.18,42.68
>>Interact with |cRXP_PICK_Yuriv's Tombstone|r on the ground
.turnin 264 >> Turn in Until Death Do Us Part
.isOnQuest 264
step << Shaman
#season 2
#completewith next
.goto Silverpine Forest,57.28,45.42,10,0
.goto Silverpine Forest,57.66,44.82,10,0
.goto Silverpine Forest,58.59,44.85,30 >>Travel Toward |cRXP_ENEMY_Grimson the Pale|r
.train 410097,1
.xp <20,1
step << Shaman
#season 2
.goto Silverpine Forest,58.59,44.85
>>Kill |cRXP_ENEMY_Grimson the Pale|r inside. Loot him for the |T135832:0|t|cRXP_LOOT_[Tempest Icon]|r
.collect 206382,1 
.mob Grimson the Pale
.train 410097,1
.xp <20,1
step << Shaman
#season 2
.equip 18,206382 >> |cRXP_WARN_Equip the|r |T135832:0|t|cRXP_LOOT_[Tempest Icon]|r
.use 206382
.itemcount 206382,1 
.train 410097,1
.xp <20,1
step << Shaman
#season 2
#sticky
.aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using a Nature spell (|r|T136026:0|t[Earth Shock]|cRXP_WARN_), a Frost spell (|r|T135849:0|t[Frost Shock]|cRXP_WARN_), and a Fire spell (|r|T135813:0|t[Flame Shock]|cRXP_WARN_) on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
>>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
.itemStat 18,QUALITY,2
.train 410097,1
step << Rogue
#season 2
.goto Silverpine Forest,47.12,71.01
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest
>>|cRXP_WARN_You can't do this quest if you still have the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_debuff. It can be completed after Hillsbrad instead|r
.accept 78261 >> Accept The Horn of Xelthos
.aura 9991
.aura 9810
step << Rogue
#season 2
#completewith next
.goto Silverpine Forest,44.87,67.86
.subzone 209,2 >> Enter Shadowfang Keep
>>|cRXP_WARN_You have to do the next part solo! Grouping up will prevent you from obtaining the keys you need|r
>>|cRXP_WARN_You need to have trained|r |T132331:0|t[Vanish] |cRXP_WARN_to be able to do this|r
step << Rogue
#season 2
.gossipoption 96495,1 >>Stealth past |cRXP_ENEMY_Rethilgore|r, talk to |cRXP_FRIENDLY_Deathstalker Adamant|r and vanish aftwards. He will open the door for you
.target Deathstalker Adamant
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
#completewith next
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gemela|r for |T134243:0|t[|cRXP_LOOT_Sister's Half-Key|r]
>>|cRXP_WARN_She is located in the dining hall on the bottom floor|r
.collect 210213,1 
.mob Gemela
step << Rogue
#season 2
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gefell|r for |T134244:0|t[|cRXP_LOOT_Brother's Half-Key|r]
>>|cRXP_WARN_He is located above the dining hall on the second floor|r
.collect 210212,1 
.mob Gefell
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gemela|r for |T134243:0|t[|cRXP_LOOT_Sister's Half-Key|r]
>>|cRXP_WARN_She is located in the dining hall on the bottom floor|r
.collect 210213,1 
.mob Gemela
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
.use 210212 >>Return to the courtyard outside and enter the Stables. Combine the two keys for the |T237379:0|t[|cRXP_LOOT_Twin Key|r]
.collect 210209,1 
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
>>Open the |cRXP_PICK_Ornamented Chest|r in the stables for the |cRXP_LOOT_Horn of Xelthos|r
.complete 78261,1 
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest
.turnin 78261 >> Turn in The Horn of Xelthos
.aura 9991
.aura 9810
.isQuestComplete 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_You now need to enter a capital city to receive mail from *C*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >> Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Enter Undercity. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_Open your mailbox to read the mail from *C* once it has arrived. Fly back to Silverpine when you're ready|r
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher>> Fly to The Sepulcher
.target Michael Garrett
.zoneskip Undercity,1
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.use 203994
.itemcount 203994,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Shaman/Rogue
#completewith next
.zone Hillsbrad Foothills >> Travel to Hillsbrad Foothills
.zoneskip Hillsbrad Foothills
step << Shaman/Rogue
.goto Hillsbrad Foothills,20.79,47.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Lesh|r
.accept 494 >> Accept Time To Strike
.target Deathstalker Lesh
step << Shaman/Rogue
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >> Travel to Tarren Mill
step << Shaman/Rogue
#label TarrenMillFP
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarise|r
.fp Tarren Mill>> Get the Tarren Mill Flight Path
.target Zarise
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hinott|r
.turnin 2479 >>Turn in Hinott's Assistance
.accept 2480 >>Accept Hinott's Assistance
.timer 30,Hinott's Assistance RP
.target Serge Hinott
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>>Wait for |cRXP_FRIENDLY_Hinott|r to complete the cure
.complete 2480,1 
step << Rogue
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hinott|r
.turnin 2480 >>Turn in Hinott's Assistance
.target Serge Hinott
step << Rogue
#completewith TarrenMillPickups
.cast 10723 >>|cRXP_WARN_Use|r |T134807:0|t[Hinott's Oil] |cRXP_WARN_to cure yourself of the|r |T136230:0|t[Touch of Zanzil]
.use 8095
.aura -9991
step << Rogue
#completewith TarrenMillPickups
>>|cRXP_WARN_Craft|r |T132273:0|t[Instant Poisons]
.collect 6947,20,1067,1 
step << Shaman/Rogue
#xprate <2.1
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lydon|r
.turnin 1065 >> Turn in Journey to Tarren Mill
.accept 1066 >> Accept Blood of Innocents << Rogue
.turnin 493 >> Turn in Journey to Hillsbrad Foothills
.target Apothecary Lydon
step << Shaman/Rogue
#xprate >2.09
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lydon|r
.turnin 493 >> Turn in Journey to Hillsbrad Foothills
.target Apothecary Lydon
step << Shaman
.goto Hillsbrad Foothills,62.18,20.78
.use 7768 >>|cRXP_WARN_Use the|r |T132829:0|t[Empty Red Waterskin] |cRXP_WARN_at the well in the middle of Tarren Mill|r
.complete 1536,1 
step
.goto Hillsbrad Foothills,62.20,20.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
.turnin 494 >> Turn in Time To Strike
.goto Hillsbrad Foothills,62.20,20.50
.target High Executor Darthalia
step << Rogue
#label TarrenMillPickups
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Wanted Poster|r and |cRXP_FRIENDLY_Krusk|r
.accept 549 >> Accept WANTED: Syndicate Personnel
.goto Hillsbrad Foothills,62.64,20.76
.accept 498 >> Accept The Rescue
.goto Hillsbrad Foothills,63.24,20.65
.target Krusk
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shay|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Shay
.isQuestAvailable 498
.subzoneskip 272,1
step << Shaman
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
.vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Ott
.subzoneskip 272,1
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
.vendor >> |cRXP_BUY_Buy a|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up and you don't have it yet|r
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
.subzoneskip 272,1
step << Shaman
#season 2
#loop
.goto Hillsbrad Foothills,62.98,63.70,0
.goto Hillsbrad Foothills,63.73,59.26,40,0
.goto Hillsbrad Foothills,65.49,60.30,40,0
.goto Hillsbrad Foothills,66.30,61.11,40,0
.goto Hillsbrad Foothills,63.61,62.04,40,0
.goto Hillsbrad Foothills,63.21,61.04,40,0
.goto Hillsbrad Foothills,62.56,63.55,40,0
.goto Hillsbrad Foothills,62.98,63.70,40,0
>>Kill |cRXP_ENEMY_Mudsnout Shamans|r. Loot them for the |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r
>>|cRXP_WARN_These mobs are level 27-28. Skip this for now if it's too hard!|r
.collect 206387,1 
.mob Mudsnout Shaman
.train 410095,1
step << Shaman
#season 2
#completewith next
+|cRXP_WARN_Keep the|r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r |cRXP_WARN_in your inventory. The next time in Orgrimmar you must enter Ragefire Chasm to take lava damage to unlock this rune|r
.itemcount 206387,1 
.train 410095,1
step << Rogue
#completewith Durnholde1
.cast 8679 >> |cRXP_WARN_Use the|r |T132273:0|t[Instant Poison] |cRXP_WARN_on your weapons|r
.itemcount 6947,2
step << Rogue
#label Durnholde1
.goto Hillsbrad Foothills,76.57,46.48,120 >> Run to Durnholde Keep
.isOnQuest 549,1066,498
step << Rogue
#xprate <2.1
#completewith Drull
>>Kill |cRXP_ENEMY_Syndicate Rogues|r, |cRXP_ENEMY_Watchmen|r, and |cRXP_ENEMY_Shadow Mages|r.
>>Loot the |cRXP_ENEMY_Shadow Mages|r for their |cRXP_LOOT_Vials of Innocent Blood|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
.complete 1066,1 
.mob +Syndicate Shadow Mage
step << Rogue
#xprate >2.09
#completewith Drull
>>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Watchmen|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
step << Rogue
#completewith Togthar
.goto Hillsbrad Foothills,79.55,41.85,15,0
>>Kill |cRXP_ENEMY_Jailor Eston|r. Loot him for his |cRXP_LOOT_Iron Key|r
>>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar's|r Barracks|r
.collect 3467,1,498,1 
.mob Jailor Eston
step << Rogue
#loop
.goto Hillsbrad Foothills,79.45,40.57,0
.goto Hillsbrad Foothills,77.99,40.19,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
>>Kill |cRXP_ENEMY_Jailor Marlgen|r. Loot him for his |cRXP_LOOT_Gold Key|r
>>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r or at the bottom of the tower|r
.collect 3499,1,498,2 
.mob Jailor Marlgen
step << Rogue
#label Togthar
.goto Hillsbrad Foothills,79.79,39.65
>>Click the |cRXP_PICK_Ball and Chain|r on the ground
.complete 498,2 
step << Rogue
#season 2
.goto Hillsbrad Foothills,80.2,39.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris Legace|r
>>|cRXP_BUY_Buy|r |T133469:0|t[Hot Tip] |cRXP_BUY_from her|r
.collect 210330,1 
.target Kris Legace
.train 400102,1
step << Rogue
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>|cRXP_BUY_Buy|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r] |cRXP_BUY_and |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] |cRXP_BUY_from her if they're up|r
.vendor >> Vendor and Repair
.target Kris Legace
.money <1.1374
.itemcount 4831,<1
.itemcount 4794,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>|cRXP_BUY_Buy|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r] |cRXP_BUY_from her if they're up|r
.vendor >> Vendor and Repair
.target Kris Legace
.money <0.7859
.itemcount 4831,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
step << Rogue
.goto Hillsbrad Foothills,80.14,38.89
>>|cRXP_BUY_Buy|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] |cRXP_BUY_from her if they're up|r
.vendor >> Vendor and Repair
.target Kris Legace
.money <0.3515
.itemcount 4794,<1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue
#optional
#completewith Drull
+|cRXP_WARN_Equip the|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r] |cRXP_WARN_and|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
.use 4831
.use 4794
.itemcount 4831,1
.itemcount 4794,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
.equip 9,4794
.equip 7,1831
step << Rogue
#optional
#completewith Drull
+|cRXP_WARN_Equip the|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r]
.use 4831
.itemcount 4831,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.equip 7,1831
step << Rogue
#optional
#completewith Drull
+|cRXP_WARN_Equip the|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
.use 4794
.itemcount 4794,1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
.equip 9,4794
step << Rogue
#loop
.goto Hillsbrad Foothills,79.55,41.85,0
.goto Hillsbrad Foothills,75.31,41.63,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
>>Kill |cRXP_ENEMY_Jailor Eston|r. Loot him for his |cRXP_LOOT_Iron Key|r
>>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r's Barracks, or in front of|r |cRXP_FRIENDLY_Drull|r
.collect 3467,1,498,1 
.mob Jailor Eston
step << Rogue
#label Drull
.goto Hillsbrad Foothills,75.33,41.50
>>Click the |cRXP_PICK_Ball and Chain|r on the ground
.complete 498,1 
step << Rogue
#xprate <2.1
#completewith next
>>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Syndicate Watchmen|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
step << Rogue
#xprate <2.1
#loop
.goto Hillsbrad Foothills,67.22,45.85,0
.goto Hillsbrad Foothills,67.88,47.93,40,0
.goto Hillsbrad Foothills,67.06,50.84,40,0
.goto Hillsbrad Foothills,66.24,48.79,40,0
.goto Hillsbrad Foothills,65.36,48.65,40,0
.goto Hillsbrad Foothills,64.86,47.05,40,0
.goto Hillsbrad Foothills,65.37,46.46,40,0
.goto Hillsbrad Foothills,66.13,45.63,40,0
.goto Hillsbrad Foothills,67.22,45.85,40,0
>>Kill |cRXP_ENEMY_Syndicate Shadow Mages|r. Loot them for their |cRXP_LOOT_Vials|r
>>|cRXP_WARN_More of them can be found at the tower just southwest of the keep|r
.complete 1066,1 
.mob Syndicate Shadow Mage
step << Rogue
#loop
.goto Hillsbrad Foothills,67.22,45.85,0
.goto Hillsbrad Foothills,67.88,47.93,40,0
.goto Hillsbrad Foothills,67.06,50.84,40,0
.goto Hillsbrad Foothills,66.24,48.79,40,0
.goto Hillsbrad Foothills,65.36,48.65,40,0
.goto Hillsbrad Foothills,64.86,47.05,40,0
.goto Hillsbrad Foothills,65.37,46.46,40,0
.goto Hillsbrad Foothills,66.13,45.63,40,0
.goto Hillsbrad Foothills,67.22,45.85,40,0
>>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Syndicate Watchmen|r
>>|cRXP_WARN_More of them can be found at the tower just southwest of the keep|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
step << Rogue
#label TarrenMillTurnins1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r and |cRXP_FRIENDLY_Krusk|r
.turnin 549 >> Turn in WANTED: Syndicate Personnel
.target +High Executor Darthalia
.goto Hillsbrad Foothills,62.37,20.32
.turnin 498 >> Turn in The Rescue
.target +Krusk
.goto Hillsbrad Foothills,63.24,20.65
step << Rogue
#xprate <2.1
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 1066 >> Turn in Blood of Innocents
.accept 1067 >> Return to Thunder Bluff
.target Apothecary Lydon
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
.vendor >> |cRXP_BUY_Buy a|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up and you don't have it yet|r
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
.subzoneskip 272,1
step << Rogue
#season 2
.use 210330 >>|cRXP_WARN_Open the|r |T133469:0|t[Hot Tip]
.collect 210323,1 
.collect 210329,1 
.train 400102,1
step << Rogue
#completewith next
.zone Western Plaguelands >>Follow the river North toward Western Plaguelands
step << Rogue
#season 2
.goto Western Plaguelands,59.4,84.5
>>Open the |cRXP_PICK_Rusty Safe|r in the water for |T134419:0|t[|cRXP_FRIENDLY_Rune of Venom|r]
.collect 210322,1 
.train 400102,1
step << Rogue
#season 2
.train 400102 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Venom|r]
.use 210322
.itemcount 210322,1
step << Rogue
#season 2
#completewith next
.zone Silverpine Forest >>Travel to Silverpine Forest
.train 400080,1
step << Rogue
#season 2
.goto Silverpine Forest,47.12,71.01
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest
.accept 78261 >> Accept The Horn of Xelthos
.train 400080,1
step << Rogue
#season 2
#completewith next
.goto Silverpine Forest,44.87,67.86
.subzone 209,2 >> Enter Shadowfang Keep
>>|cRXP_WARN_You have to do the next part solo! Grouping up will prevent you from obtaining the keys you need|r
>>|cRXP_WARN_You need to have trained|r |T132331:0|t[Vanish] |cRXP_WARN_to be able to do this|r
step << Rogue
#season 2
.gossipoption 96495,1 >>Stealth past |cRXP_ENEMY_Rethilgore|r, talk to |cRXP_FRIENDLY_Deathstalker Adamant|r and vanish aftwards. He will open the door for you
.target Deathstalker Adamant
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
#completewith next
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gemela|r for |T134243:0|t[|cRXP_LOOT_Sister's Half-Key|r]
>>|cRXP_WARN_She is located in the dining hall on the bottom floor|r
.collect 210213,1 
.mob Gemela
step << Rogue
#season 2
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gefell|r for |T134244:0|t[|cRXP_LOOT_Brother's Half-Key|r]
>>|cRXP_WARN_He is located above the dining hall on the second floor|r
.collect 210212,1 
.mob Gefell
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gemela|r for |T134243:0|t[|cRXP_LOOT_Sister's Half-Key|r]
>>|cRXP_WARN_She is located in the dining hall on the bottom floor|r
.collect 210213,1 
.mob Gemela
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
.use 210212 >>Return to the courtyard outside and enter the Stables. Combine the two keys for the |T237379:0|t[|cRXP_LOOT_Twin Key|r]
.collect 210209,1 
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
>>Open the |cRXP_PICK_Ornamented Chest|r in the stables for the |cRXP_LOOT_Horn of Xelthos|r
.complete 78261,1 
.isOnQuest 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest
.turnin 78261 >> Turn in The Horn of Xelthos
.isQuestComplete 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_You now need to enter a capital city to receive mail from *C*|r
.train 400080,1
.dungeon !SFK
step << Rogue
#season 2
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >> Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Enter Undercity. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 6762 >> Train your class spells
.target Carolyn Ward
.xp <24,1
.xp >26,1
.dungeon !SFK
.zoneskip Undercity,1
step << Rogue
#season 2
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 1833 >> Train your class spells
.target Carolyn Ward
.xp <26,1
.dungeon !SFK
.zoneskip Undercity,1
step << Shaman/Rogue
#sticky
#completewith EnterSFK
.subzone 209,2 >> Now you should be looking for a group to Shadowfang Keep
.dungeon SFK
step << Rogue
#optional
#season 2
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher>> Fly to The Sepulcher
.target Michael Garrett
.zoneskip Undercity,1
.dungeon SFK
step << Shaman/Rogue
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarise|r
.fly The Sepulcher>> Fly to The Sepulcher
.target Zarise
.zoneskip Silverpine Forest
.dungeon SFK
step << Shaman/Rogue
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadrec|r
.accept 1098 >>Accept Deathstalkers in Shadowfang
.target High Executor Hadrec
.dungeon SFK
step << Shaman/Rogue
.goto Silverpine Forest,44.22,39.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
.accept 1014 >>Accept Arugal Must Die
.target Dalar Dawnweaver
.dungeon SFK
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.use 203994
.itemcount 203994,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Shaman/Rogue
#label EnterSFK
.goto Silverpine Forest,44.87,67.86
.subzone 209,2 >> Enter Shadowfang Keep
.dungeon SFK
step << Shaman/Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vincent|r
.turnin 1098 >> Turn in Deathstalkers in Shadowfang
.target Deathstalker Vincent
.dungeon SFK
.isOnQuest 1098
step << Shaman/Rogue
>>Loot the |cRXP_PICK_Book of Ur|r from the bookshelf in |cRXP_ENEMY_Fenrus the Devourer's|r room
.complete 1013,1 
.dungeon SFK
.isOnQuest 1013
step << Shaman/Rogue
>>Kill |cRXP_ENEMY_Archmage Arugal|r. Loot him for his |cRXP_LOOT_Head|r
.complete 1014,1 
.mob Archmage Arugal
.dungeon SFK
.isOnQuest 1014
step << Shaman/Rogue
#hardcore
#completewith FlytoUC
.goto Silverpine Forest,45.51,41.26,150,0
.subzone 228 >>Travel to The Sepulcher
.dungeon SFK
step << Shaman/Rogue
#softcore
#completewith FlytoUC
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
.dungeon SFK
step << Shaman/Rogue
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadrec|r
.turnin 1098 >>Turn in Deathstalkers in Shadowfang
.target High Executor Hadrec
.dungeon SFK
.isQuestComplete 1098
step << Shaman/Rogue
.goto Silverpine Forest,44.22,39.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
.turnin 1014 >>Turn in Arugal Must Die
.target Dalar Dawnweaver
.dungeon SFK
.isQuestComplete 1014
step << Shaman/Rogue
#label FlytoUC
#completewith BookofUrTurnin
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >> Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.dungeon SFK
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_You now need to enter a capital city to receive mail from *C*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Enter Undercity. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Shaman/Rogue
#label BookofUrTurnin
.goto Undercity,53.74,54.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'dugur|r
.turnin 1013 >>Turn in The Book of Ur
.target Keeper Bel'dugur
.dungeon SFK
.isQuestComplete 1013
step << Rogue
.goto Undercity,75.19,51.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ezekiel|r|cRXP_BUY_. Buy |r |T133849:0|t[Dust of Decay] |cRXP_BUY_and|r |T132793:0|t[Empty Vials] |cRXP_BUY_from him|r
.collect 2928,40,1067,1 
.collect 3371,40,1067,1 
.target Ezekiel Graves
.dungeon SFK
step << Rogue
#completewith CampTHS
>>|cRXP_WARN_Craft|r |T132273:0|t[Instant Poisons]
.collect 6947,40,1067,1 
.dungeon SFK
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 6762 >> Train your class spells
.target Carolyn Ward
.xp <24,1
.xp >26,1
.dungeon SFK
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 1833 >> Train your class spells
.target Carolyn Ward
.xp <26,1
.dungeon SFK
step << Rogue
#season 2
#label DeadlyBrewPickup
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher>> Fly to The Sepulcher
.target Michael Garrett
.zoneskip Silverpine Forest
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.use 203994
.itemcount 203994,1
.dungeon SFK
.isQuestTurnedIn 78261
step
.hs >>Hearth to Camp Taurajo
.use 6948
.bindlocation 378,1
.subzoneskip 378
.dungeon !WC
step
#completewith next
.hs >>Hearth to Ratchet
.use 6948
.bindlocation 392,1
.subzoneskip 392
.dungeon WC
step
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Camp Taurajo >> Fly to Camp Taurajo
.target Bragok
.subzoneskip 378
.dungeon WC
]]);
