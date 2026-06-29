RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 22-30
#classic
#tbc
#mop
<< Horde
#name 28-30 Thousand Needles
#displayname 28-33 Thousand Needles << sod
#next RestedXP Horde 30-40\30-33 Hillsbrad/Arathi;RestedXP Horde 30-40\33-34 Shimmering Flats
step << Shaman/Warrior
#ah
.goto Thunder Bluff,54.06,57.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r
.vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r
>>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.itemcount 12249,<1
.target Delgo Ragetotem
.isQuestAvailable 4821,4841,1149
step << Shaman/Warrior
#ssf
.goto Thunder Bluff,54.06,57.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r
.vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.itemcount 12249,<1
.target Delgo Ragetotem
.isQuestAvailable 4821,4841,1149
step << Rogue
#ah
.goto Thunder Bluff,53.00,56.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r
>>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r
.collect 2526,1,5881,1 
.money <2.0353
.target Kard Ragetotem
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
.isQuestAvailable 4821,4841,1149
step << Rogue
#ssf
.goto Thunder Bluff,53.00,56.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r
.collect 2526,1,5881,1 
.money <2.0353
.target Kard Ragetotem
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
.isQuestAvailable 4821,4841,1149
step << Rogue
#optional
#completewith FreewindHome
+|cRXP_WARN_Equip the|r |T135651:0|t[Main Gauche]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
.xp <29,1
step
.goto Thunder Bluff,54.90,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zangen|r
.turnin 1195 >> Turn in The Sacred Flame
.accept 1196 >> Accept The Sacred Flame
.target Zangen Stonehoof
step << Druid
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kym|r
.train 1850 >> Train your class spells
.target Kym Wildmane
.xp <26,1
.xp >28,1
step << Druid
#optional
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kym|r
.train 3029 >> Train your class spells
.target Kym Wildmane
.xp <28,1
.xp >30,1
step << Druid
#optional
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kym|r
.train 783 >> Train your class spells
.target Kym Wildmane
.xp <30,1
step
.goto Thunder Bluff,61.53,80.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
.accept 1131 >>Accept Steelsnap
.target Melor Stonehoof
step << Hunter
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 3045 >> Train your class spells
.target Urek Thunderhorn
.xp <26,1
.xp >28,1
step << Hunter
#optional
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14319 >> Train your class spells
.target Urek Thunderhorn
.xp <28,1
.xp >30,1
step << Hunter
#optional
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 5384 >> Train your class spells
.target Urek Thunderhorn
.xp <30,1
step << Hunter
.goto Thunder Bluff,54.07,84.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
.train 24559 >> Train your pet spells
.target Hesuwa Thunderhorn
.xp <30,1
step << Warrior
.goto Thunder Bluff,57.59,85.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 6178 >> Train your class spells
.target Ker Ragetotem
.xp <26,1
.xp >28,1
step << Warrior
#optional
.goto Thunder Bluff,57.59,85.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 7887 >> Train your class spells
.target Ker Ragetotem
.xp <28,1
.xp >30,1
step << Warrior
#optional
.goto Thunder Bluff,57.27,87.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
.train 7369 >> Train your class spells
.accept 1718 >>Accept The Islander
.target Torm Ragetotem
.xp <30,1
step
.goto Thunder Bluff,45.83,64.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
.home >>Set your Hearthstone to Thunder Bluff
.bindlocation 1638
.isQuestAvailable 1131,4821,4841,1149
.target Innkeeper Pala
step
#completewith SilkBandage
.goto Thunder Bluff,28.14,32.97,40,0
.goto Thunder Bluff,28.51,28.95,10 >> Travel to the Spirit Rise and enter the pools of vision
step
#xprate <1.99
.goto Thunder Bluff,22.81,20.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Zamah|r
.turnin 1086 >> Turn in The Flying Machine Airport
.target Apothecary Zamah
.isQuestComplete 1086
step << Rogue
#xprate >1.99
.goto Thunder Bluff,22.81,20.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Zamah|r
.turnin 1067 >> Turn in Return to Thunder Bluff
.target Apothecary Zamah
.isQuestTurnedIn 1066
step << Priest
#optional
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 992 >> Train your class spells
.target Miles Welsh
.xp <26,1
.xp >28,1
step << Priest
#optional
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 8104 >> Train your class spells
.target Miles Welsh
.xp <28,1
.xp >30,1
step << Priest
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 602 >> Train your class spells
.target Miles Welsh
.xp <30,1
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
.train 120 >> Train your class spells
.target Archmage Shymm
.xp <26,1
.xp >28,1
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
.train 759 >> Train your class spells
.target Archmage Shymm
.xp <28,1
.xp >30,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
.train 8412 >> Train your class spells
.target Archmage Shymm
.xp <30,1
step << Mage
.goto Thunder Bluff,22.48,16.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Birgitte|r
.train 3566 >> Train |T135765:0|t[Teleport: Thunder Bluff]
.target Birgitte Cranston
.xp <30,1
step << Shaman
#optional
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 408443 >> Train your class spells
.target Tigor Skychaser
.xp <26,1
.xp >28,1
step << Shaman
#optional
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 8053 >> Train your class spells
.target Tigor Skychaser
.xp <28,1
.xp >30,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 556 >> Train your class spells
.target Tigor Skychaser
.xp <30,1
step
#optional
#label SilkBandage
step
#completewith next
.skill firstaid,115 >> |cRXP_WARN_Create|r |T133684:0|t[Wool Bandages] |cRXP_WARN_until your skill is 115|r
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pand|r
.train 3278 >> Train |T133687:0|t[Heavy Wool Bandage]
.target Pand Stonebinde
.skill firstaid,<1,1
step
#completewith next
.skill firstaid,150 >> |cRXP_WARN_Create|r |T133687:0|t[Heavy Wool Bandages] |cRXP_WARN_until your skill is 150|r
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pand|r
.train 7928 >> Train |T133671:0|t[Silk Bandage]
>>|cRXP_WARN_Skip this step if you did not have enough Wool Cloth to reach 150 skill|r
.target Pand Stonebinder
.skill firstaid,<1,1
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuna|r
.vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[Sturdy Recurve Bow] |cRXP_BUY_from her if it's available|r
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
.money <1.9467
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
.collect 3030,1800,5881,1 << Hunter 
.target Kuna Thunderhorn
.itemcount 3030,<1400
step
#optional
.abandon 6561,6565,6563,6921
.dungeon BFD
step
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Camp Taurajo >>Fly to Camp Taurajo
.target Tal
.zoneskip The Barrens
.isQuestAvailable 4542
step
.goto The Barrens,45.10,57.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r
.accept 1153 >> Accept A New Ore Sample
.target Tatternack Steelforge
step
.goto The Barrens,44.55,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
.aura 16618 >>|cRXP_WARN_If you have 10|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r |cRXP_WARN_left, use them to obtain|r |T136022:0|t[Spirit of the Wind] |cRXP_WARN_from|r |cRXP_FRIENDLY_Mangletooth|r
.itemcount 5075,10
.target Mangletooth
.train 783,1 << Druid 
.train 2645,1 << Shaman 
.train 5118,1 << Hunter 
step << Druid/Shaman/Hunter
#optional
.goto The Barrens,44.55,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
+|cRXP_WARN_If you have|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r |cRXP_WARN_left, use them to obtain buffs of your choice from|r |cRXP_FRIENDLY_Mangletooth|r
.itemcount 5075,4
.target Mangletooth
.train 783,3 << Druid 
.train 2645,3 << Shaman 
.train 5118,3 << Hunter 
step << Shaman
#completewith next
.goto The Barrens,43.84,77.28,25,0
.goto The Barrens,43.62,77.29,25,0
.goto The Barrens,43.42,77.41,15 >>Travel toward |cRXP_FRIENDLY_Brine|r
step << Shaman
.goto The Barrens,43.42,77.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
.turnin 1534 >>Turn in Call of Water
.accept 220 >>Accept Call of Water
.target Brine
step
#xprate <1.99
#completewith next
.goto The Barrens,48.85,84.88,50 >> Travel to Bael Modan
step
#xprate <1.99
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.accept 857 >> Accept The Tear of the Moons
.target Feegly the Exiled
step
#xprate <1.99
#completewith next
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.43,84.28,6 >>Go down to the bottom floor of Bael'dun
step
#xprate <1.99
.goto The Barrens,49.13,84.25
>>Open |cRXP_PICK_General Twinbraid's Strongbox|r. Loot it for the |cRXP_LOOT_Tear of the Moons|r
>>|cRXP_WARN_Be careful! It is very easy overpull in |cRXP_ENEMY_General Twinbraid|r's room|r
>>|cRXP_WARN_Directly pull any mob other than |cRXP_ENEMY_General Twinbraid|r|r
.complete 857,1 
step
#xprate <1.99
#completewith next
.goto The Barrens,49.43,84.28,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,48.75,84.63,20 >>Exit Bael'dun's Keep
step
#xprate <1.99
#label TearMoons
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.turnin 857 >> Turn in The Tear of the Moons
.target Feegly the Exiled
step
#completewith next
.goto The Barrens,44.13,91.44,80 >> Travel South toward The Great Lift
step
#xprate <1.99
.goto Thousand Needles,31.87,21.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grish|r
.turnin 5881 >> Turn in Calling in the Reserves
.target Grish Longrunner
.isOnQuest 5881
step
.goto Thousand Needles,32.24,22.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moonhorn|r
.accept 4542 >> Accept Message to Freewind Post
.target Brave Moonhorn
step
.goto Thousand Needles,31.97,23.76,30 >> Take the lift down to Thousand Needles
>>|cRXP_WARN_Don't fall off! You'll DIE!|r
.isOnQuest 4542
step
#completewith next
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,38.61,31.49,50,0
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
>>Kill the |cRXP_ENEMY_Galak Messenger|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
>>|cRXP_WARN_He patrols. He spawns at Splithoof Crag (the eastern Centaur camp)|r
.collect 12564,1,4881 
.accept 4881 >>Accept Assassination Plot
.use 12564
.unitscan Galak Messenger
step
#completewith next
.goto Thousand Needles,46.73,48.27,30 >> Travel to Freewind Post's Elevators
step
.goto Thousand Needles,45.91,49.91,25 >> Take the Elevator up to Freewind
.isQuestAvailable 4821,4841,1149
step
.goto Thousand Needles,45.70,50.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.turnin 4542 >> Turn in Message to Freewind Post
.accept 4841 >> Accept Pacify the Centaur
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.00,50.80
>>Click on the |cRXP_FRIENDLY_Wanted Poster|r
.accept 5147 >> Accept Wanted - Arnak Grimtotem
step
.goto Thousand Needles,46.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r
.turnin 1196 >> Turn in The Sacred Flame
.accept 1197 >> Accept The Sacred Flame
.target Rau Cliffrunner
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Montarr|r
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from him if they're up|r << !Warrior
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_, |r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
.target Montarr
.isQuestAvailable 4821,4841,1149
.subzoneskip 484,1
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
.vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_from him if it's up|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
.isQuestAvailable 4821,4841,1149
.subzoneskip 484,1
step
.goto Thousand Needles,44.70,50.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hagar|r
.accept 4821 >> Accept Alien Egg
.target Hagar Lightninghoof
step
.goto Thousand Needles,44.90,48.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elu|r
.accept 4767 >> Accept Wind Rider
.target Elu
step
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyse|r
.fp Freewind Post >> Get the Freewind Post flight path
.target Nyse
.isQuestAvailable 4821,4841,1149
.subzoneskip 484,1
step
#completewith Clovenhoof
>>Kill |cRXP_ENEMY_Galak Scouts|r, |cRXP_ENEMY_Galak Wranglers|r, and |cRXP_ENEMY_Galak Windchasers|r
>>|cRXP_WARN_Kill every|r |cRXP_ENEMY_Galak Scout|r |cRXP_WARN_that you see as they are more rare|r
.complete 4841,1 
.mob +Galak Scout
.complete 4841,2 
.mob +Galak Wrangler
.complete 4841,3 
.mob +Galak Windchaser
step
#label Splithoofcave
#completewith Clovenhoof
.goto Thousand Needles,44.12,37.22,20 >>Enter the cave
step
#requires Splithoofcave
#completewith Clovenhoof
.goto Thousand Needles,44.44,36.32,12,0
.goto Thousand Needles,43.14,35.19,12,0
.goto Thousand Needles,42.11,34.54,12,0
.goto Thousand Needles,42.01,31.47,20 >>Travel toward the |cRXP_PICK_Ancient Brazier|r
step
#requires Splithoofcave
#label Clovenhoof
.goto Thousand Needles,42.01,31.47
>>Open the |cRXP_PICK_Ancient Brazier|r. Loot it for the |cRXP_LOOT_Cloven Hoof|r
>>|cRXP_WARN_Be careful! The brazier is defended by two level 30|r |cRXP_ENEMY_Galak Flame Guards|r
.complete 1197,1 
.mob Galak Flame Guard
step
#completewith next
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,38.46,32.60,50,0
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
>>Kill the |cRXP_ENEMY_Galak Messenger|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
>>|cRXP_WARN_He patrols. He spawns at Splithoof Crag (the eastern Centaur camp)|r
.collect 12564,1,4881 
.accept 4881 >>Accept Assassination Plot
.use 12564
.unitscan Galak Messenger
step
#loop
.goto Thousand Needles,43.12,36.86,0
.goto Thousand Needles,43.12,36.86,50,0
.goto Thousand Needles,41.18,34.83,50,0
.goto Thousand Needles,40.42,34.45,50,0
.goto Thousand Needles,39.00,32.56,50,0
.goto Thousand Needles,39.68,34.93,50,0
.goto Thousand Needles,39.76,35.82,50,0
.goto Thousand Needles,39.32,36.93,50,0
.goto Thousand Needles,40.43,37.96,50,0
.goto Thousand Needles,41.04,39.03,50,0
.goto Thousand Needles,41.12,41.34,50,0
.goto Thousand Needles,42.33,40.54,50,0
.goto Thousand Needles,42.84,39.09,50,0
.goto Thousand Needles,44.15,40.72,50,0
.goto Thousand Needles,44.98,41.03,50,0
.goto Thousand Needles,45.66,43.81,50,0
.goto Thousand Needles,47.23,41.98,50,0
.goto Thousand Needles,48.57,43.53,50,0
.goto Thousand Needles,49.39,41.24,50,0
.goto Thousand Needles,48.14,40.43,50,0
.goto Thousand Needles,47.11,40.29,50,0
.goto Thousand Needles,45.89,40.32,50,0
.goto Thousand Needles,44.43,38.36,50,0
>>Kill |cRXP_ENEMY_Galak Scouts|r, |cRXP_ENEMY_Galak Wranglers|r, and |cRXP_ENEMY_Galak Windchasers|r
.complete 4841,1 
.mob +Galak Scout
.complete 4841,2 
.mob +Galak Wrangler
.complete 4841,3 
.mob +Galak Windchaser
step
#completewith next
.goto Thousand Needles,54.57,44.36,12,0
.goto Thousand Needles,53.71,42.59,10,0
.goto Thousand Needles,53.95,41.49,10 >>Travel toward |cRXP_FRIENDLY_Dorn|r
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.accept 1149 >> Accept Test of Faith
.timer 7,Test of Faith RP
.target Dorn Plainstalker
step
.goto Thousand Needles,26.63,34.23
>>|cRXP_WARN_Wait out the RP|r
>>|cRXP_WARN_Jump off the end of the wooden platform. You'll get teleported instead of dying from fall damage|r
.complete 1149,1 
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1149 >> Turn in Test of Faith
.accept 1150 >> Accept Test of Endurance
.target Dorn Plainstalker
step
#completewith next
.goto Thousand Needles,56.36,50.39,20,0
>>Loot the |cRXP_LOOT_Alien Egg|r on the ground
.complete 4821,1 
step
#loop
.line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
.line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
.line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
.line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
.line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
.goto Thousand Needles,51.89,43.02,40,0
.goto Thousand Needles,53.41,46.19,40,0
.goto Thousand Needles,54.05,44.96,40,0
.goto Thousand Needles,53.47,46.65,40,0
.goto Thousand Needles,52.61,48.28,40,0
.goto Thousand Needles,53.64,48.50,40,0
.goto Thousand Needles,51.48,48.06,40,0
.goto Thousand Needles,59.69,47.76,40,0
.goto Thousand Needles,62.21,47.76,40,0
.goto Thousand Needles,62.63,48.38,40,0
.goto Thousand Needles,64.01,47.52,40,0
.goto Thousand Needles,63.92,46.63,40,0
.goto Thousand Needles,63.10,45.53,40,0
.goto Thousand Needles,65.83,51.44,40,0
.goto Thousand Needles,65.44,50.11,40,0
.goto Thousand Needles,64.91,50.30,40,0
.goto Thousand Needles,66.11,49.91,40,0
.goto Thousand Needles,66.32,49.13,40,0
.goto Thousand Needles,59.79,58.16,40,0
.goto Thousand Needles,58.87,58.69,40,0
.goto Thousand Needles,57.66,57.70,40,0
.goto Thousand Needles,58.93,57.68,40,0
.goto Thousand Needles,58.94,56.55,40,0
.goto Thousand Needles,58.97,54.98,40,0
.goto Thousand Needles,59.32,53.69,40,0
.goto Thousand Needles,59.79,58.16,40,0
.goto Thousand Needles,59.79,58.16,0
>>Kill |cRXP_ENEMY_Gravelsnout Surveyors|r, |cRXP_ENEMY_Gravelsnout Diggers|r, and |cRXP_ENEMY_Gibblesnik|r (if he's up). Loot them for an |cRXP_LOOT_Ore Sample|r
.complete 1153,1 
.unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
#loop
.goto Thousand Needles,52.34,55.24,0
.goto Thousand Needles,37.63,56.11,0
.goto Thousand Needles,56.36,50.39,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
>>Loot the |cRXP_LOOT_Alien Egg|r on the ground
>>|cRXP_WARN_It has 3 different spawn locations. They are marked on the map|r
.complete 4821,1 
step << Druid
#season 2
#completewith IdoloftheHeckler
+|cRXP_WARN_The next few steps are for the|r |T236149:0|t[Berserk] |cRXP_WARN_rune. You must have trained|r |T132117:0|t[Challenging Roar] |cRXP_WARN_to obtain this rune|r
.train 5209,3 
step << Druid
#season 2
.train 424760,1
.train 5209,3 
.goto Thousand Needles,68.690,55.155
.aura 435081 >> |cRXP_WARN_Stand next to the |cRXP_PICK_Beastly Effigy|r statue to receive the|r |T134912:0|t[Beastly Effigy] |cRXP_WARN_buff|r
step << Druid
#season 2
#completewith next
.train 424760,1
.train 5209,3 
.goto Thousand Needles,68.690,55.155
.cast 5209 >> |cRXP_WARN_Go into|r |T132276:0|t[Bear Form] |cRXP_WARN_and cast|r |T132117:0|t[Challenging Roar] |cRXP_WARN_to summon|r |cRXP_ENEMY_Zai'enki|r |cRXP_WARN_(lvl 28 elite)|r
step << Druid
#season 2
.train 424760,1
.train 5209,3 
.goto Thousand Needles,68.690,55.155
>>Kill |cRXP_ENEMY_Zai'enki|r. Loot it for the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r]
.collect 213594,1
.mob Zai'enki
step << Druid
#label IdoloftheHeckler
#season 2
.train 424760,1
.train 5209,3 
.equip 18,213594 >> Equip the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r]
.use 213594
step << Druid
#season 2
#sticky
#completewith Grenka
.itemcount 213594,1
.train 424760,1
.train 5209,3 
.aura 408828 >> |cRXP_WARN_Cast|r |T132117:0|t[Challenging Roar] |cRXP_WARN_on enemies and kill them while they have the|r |T132117:0|t[Challenging Roar] |cRXP_WARN_debuff. This will give you a stack of the|r |T237556:0|t[Building Inspiration] |cRXP_WARN_buff. Repeat this 5 times|r
>>|cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r] |cRXP_WARN_to train|r |T236149:0|t[Berserk] |cRXP_WARN_once you have the |T136116:0|t[Inspired] |cRXP_WARN_buff|r
step
#completewith next
.goto Thousand Needles,46.73,48.27,30 >> Travel to Freewind Post's Elevators
step
.goto Thousand Needles,45.70,50.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.turnin 4841 >> Turn in Pacify the Centaur
.accept 5064 >> Accept Grimtotem Spying
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r
.turnin 1197 >> Turn in The Sacred Flame
.target Rau Cliffrunner
.isQuestComplete 1197
step
.goto Thousand Needles,44.70,50.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hagar|r
.turnin 4821 >> Turn in Alien Egg
.accept 4865 >> Accept Serpent Wild
.target Hagar Lightninghoof
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
.vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_from him if it's up|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
.isQuestAvailable 4767
.subzoneskip 484,1
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,1800,4767,1 
.target Starn
.subzoneskip 484,1
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Montarr|r
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from him if they're up|r << !Warrior
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_, |r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
.target Montarr
.subzoneskip 484,1
.isQuestAvailable 4767
step << Mage
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Montarr|r
>>|cRXP_BUY_Buy one or more|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from him|r
.collect 17031,1,4767,1 
.target Montarr
step << Mage
#optional
.goto Thousand Needles,46.07,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Abeqwa|r
.home >> Set your Hearthstone to Freewind Post
.target Innkeeper Abeqwa
.bindlocation 484
.isQuestAvailable 4767
.train 3566,3 
step
#label GrenkaCave
.goto Thousand Needles,27.59,49.86,12,0
.goto Thousand Needles,28.65,51.30,12,0
.goto Thousand Needles,27.29,51.30,12 >>Enter Roguefeather Den
step
#completewith Grenka
+|cRXP_WARN_Be careful as |cRXP_ENEMY_Screeching Windcallers|r cast|r |T136022:0|t[Gust of Wind]|cRXP_WARN_, a 4-second AoE stun within 10 yards of the |cRXP_ENEMY_Screeching Windcaller|r
+|cRXP_ENEMY_Screeching Harpies|r cast|r |T136122:0|t[Deafening Screech]|cRXP_WARN_, an 8 second silence|r << Mage/Warlock/Priest/Druid/Shaman
step
#completewith next
.goto Thousand Needles,25.84,54.78
+Open the |cRXP_PICK_Harpy Foodstuffs|r on the ground in the back of the cave to summon |cRXP_ENEMY_Grenka|r
>>|cRXP_WARN_Be careful, multiple packs of |cRXP_ENEMY_Harpies|r |cRXP_WARN_will spawn one after another|r
step
#label Grenka
.goto Thousand Needles,26.16,55.89,15,0
.goto Thousand Needles,26.69,55.62,15,0
.goto Thousand Needles,25.90,55.23
>>Kill |cRXP_ENEMY_Grenka Bloodscreech|r. Loot her for |cRXP_LOOT_Grenka's Claw|r
>>|cRXP_WARN_This quest is VERY HARD. Group up or skip it if you can't solo it|r
.link https://www.youtube.com/watch?v=EVy-6OjB5bs&t=27300s >> CLICK HERE for a visual reference if you think it's doable
.complete 1150,1 
.mob Grenka Bloodscreech
step << Mage
#season 2
#label SpellNotes
.train 425189,1
.train 400640,3
.train 120,3
.goto Thousand Needles,26.66,46.38
>>Kill the |cRXP_ENEMY_Scorched Screeching Roguefeather|r. Loot it for the |T134937:0|t[|cRXP_LOOT_Partial Spell Notes|r]
>>|cRXP_WARN_You need to cool it down to kill it. In order to do it by yourself you have to use this exact rotation in quick succession:|r
>>Cast |T135846:0|t[Frostbolt] > |T135848:0|t[Frost Nova] > |T135852:0|t[Cone of Cold] > |T135844:0|t[Ice Lance] |cRXP_WARN_This has to be done without any breaks between the casts|r
.collect 213632,1
.mob Scorched Screeching Roguefeather
step << Druid
#season 2
.itemcount 213594,1
.use 213594
.train 424760 >> |cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r] |cRXP_WARN_to train|r |T236149:0|t[Berserk]
.aura -408828
step
#completewith next
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
>>Kill |cRXP_ENEMY_Steelsnap|r. Loot him for |cRXP_LOOT_Steelsnap's Rib|r
>>|cRXP_WARN_Be careful, has two |cRXP_ENEMY_Hyenas|r defending him!|r
.complete 1131,1 
.unitscan Steelsnap
step
#label HighPerchArrive
#completewith Paoka1
.goto Thousand Needles,14.41,32.44,20,0
.goto Thousand Needles,14.04,32.37,12,0
.goto Thousand Needles,14.04,32.37,20 >>Travel toward Highperch
step << Mage
#requires HighPerchArrive
#season 2
.train 425189,1
.train 400640,3
.train 120,3
.goto Thousand Needles,13.598,33.854,40,0
.goto Thousand Needles,10.81,39.60
>>Kill the |cRXP_ENEMY_Singed Highperch Consort|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Partial Spell Notes|r]
>>|cRXP_WARN_You need to cool it down to kill it. In order to do it by yourself you have to use this exact rotation in quick succession:|r
>>Cast |T135846:0|t[Frostbolt] > |T135848:0|t[Frost Nova] > |T135852:0|t[Cone of Cold] > |T135844:0|t[Ice Lance] |cRXP_WARN_This has to be done without any breaks between the casts|r
.collect 213633,1
.mob Singed Highperch Consort
step << Warlock
#requires HighPerchArrive
#season 2
#completewith WickednessRune
>>Loot |cRXP_LOOT_Highperch Wyvern Eggs|r on the ground
.complete 4767,1 
step << Warlock
#requires HighPerchArrive
#season 2
.train 416017,1
.goto Thousand Needles,10.96,40.64
>>Click the |cRXP_ENEMY_Reckless Warlock|r on the ground. Loot him for |T236297:0|t[Brimstone Carving]
>>|cRXP_WARN_This is a rare enemy and there's a chance it may not be present|r
.collect 213583,1
.unitscan Reckless Warlock
.mob Reckless Warlock
step << Warlock
#requires HighPerchArrive
#season 2
.train 416017,1
.train 1949,3 
>>|cRXP_WARN_Cast|r |T135818:0|t[Hellfire] |cRXP_WARN_to damage yourself below 70% health. Afterwards|r |T236297:0|t[Brimstone Carving] |cRXP_WARN_will transform into|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wickedness|r]
.collect 213102,1 
.itemcount 213583,1
step << Warlock
#requires HighPerchArrive
#season 2
#completewith Paoka1
.train 416017,1
.train 1949,1 
+|cRXP_WARN_Once you have trained|r |T135818:0|t[Hellfire]|cRXP_WARN_,use it to damage yourself below 70% health. Afterwards|r |T236297:0|t[Brimstone Carving] |cRXP_WARN_will transform into|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wickedness|r]
.collect 213102,1 
.itemcount 213583,1
step << Warlock
#requires HighPerchArrive
#label WickednessRune
#season 2
.train 416017 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wickedness|r] |cRXP_WARN_to learn|r |T236295:0|t[Dance of the Wicked]
.use 416017
.itemcount 213102,1
step
#requires HighPerchArrive
#completewith PaokaEscort
>>Loot |cRXP_LOOT_Highperch Wyvern Eggs|r on the ground
.complete 4767,1 
step
#requires HighPerchArrive
#completewith Paoka1
.goto Thousand Needles,13.18,39.55,15,0
.goto Thousand Needles,13.52,40.27,15,0
.goto Thousand Needles,14.01,40.27,15,0
.goto Thousand Needles,14.92,39.63,15,0
.goto Thousand Needles,16.46,41.09,25,0
.goto Thousand Needles,17.89,40.57,20 >>Run up the path. Travel toward |cRXP_FRIENDLY_Pao'ka|r
step
#requires HighPerchArrive
#label Paoka1
.goto Thousand Needles,17.89,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka|r to begin the escort
>>|cRXP_WARN_Be careful if |cRXP_ENEMY_Heartrazor|r is up! This is a level 32 rare elite|r
.accept 4770,1 >> Accept Homeward Bound
.target Pao'ka Swiftmountain
.unitscan Heartrazor
step
#requires HighPerchArrive
#label PaokaEscort
.goto Thousand Needles,11.06,34.95,40,0
.goto Thousand Needles,15.17,32.66
>>|cRXP_WARN_Escort|r |cRXP_FRIENDLY_Pao'ka|r
>>|cRXP_WARN_Three Highperch Wyverns will spawn once |cRXP_FRIENDLY_Pao'ka|r reaches the middle of Highperch. You only need to aggro the eastern one and the others will disappear|r
.complete 4770,1 
step
#requires HighPerchArrive
#loop
.goto Thousand Needles,13.91,39.11,0
.goto Thousand Needles,11.31,33.07,50,0
.goto Thousand Needles,9.57,34.90,50,0
.goto Thousand Needles,10.68,40.95,50,0
.goto Thousand Needles,11.98,36.72,50,0
.goto Thousand Needles,13.91,39.11,50,0
>>Loot |cRXP_LOOT_Highperch Wyvern Eggs|r on the ground
.complete 4767,1 
step
#completewith Messenger
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
>>Kill |cRXP_ENEMY_Steelsnap|r. Loot him for |cRXP_LOOT_Steelsnap's Rib|r
>>|cRXP_WARN_Be careful, has two |cRXP_ENEMY_Hyenas|r defending him!|r
.complete 1131,1 
.unitscan Steelsnap
step
.goto Thousand Needles,21.06,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laer|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Laer Stepperunner
.isOnQuest 1131
step
#optional
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
>>|cRXP_WARN_Be careful! Turning this in will summon three |cRXP_ENEMY_Galak Assassins|r |cRXP_WARN_that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
.turnin 4881 >> Turn in Assassination Plot
.accept 4966 >> Accept Protect Kanati Greycloud
.target Kanati Greycloud
.isOnQuest 4881
step
#optional
.goto Thousand Needles,21.25,32.05
>>Kill the |cRXP_ENEMY_Galak Assassins|r to protect |cRXP_FRIENDLY_Kanati|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
#optional
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
.turnin 4966 >> Turn in Protect Kanati Greycloud
.isQuestComplete 4966
step
.goto Thousand Needles,21.54,32.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motega|r
.turnin 4865 >> Turn in Serpent Wild
.accept 5062 >> Accept Sacred Fire
.turnin 4770 >> Turn in Homeward Bound
.target Motega Firemane
step
.goto Thousand Needles,21.43,32.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizlo|r
.accept 5151 >> Accept Hypercapacitor Gizmo
.target Wizlo Bearingshiner
step << Mage
#season 2
.train 425189,1
#loop
.goto Thousand Needles,23.2,25.0,0
.goto Thousand Needles,23.2,25.0,25,0
.goto Thousand Needles,20.2,22.0,25,0
.goto Thousand Needles,17.6,19.6,25,0
.goto Thousand Needles,18.6,24.6,25,0
>>Kill |cRXP_ENEMY_Galak Marauders|r, |cRXP_ENEMY_Galak Maulers|r and |cRXP_ENEMY_Galak Stormers|r. Loot them for the |cRXP_LOOT_Cougar Cage Key|r
.collect 214435,1
.mob Galak Mauler
.mob Galak Marauder
.mob Galak Stormer
.itemcount 213634,<1
.train 400640,3
.train 120,3
step << Mage
#season 2
#completewith next
.goto Thousand Needles,23.714,24.780
+Open the |cRXP_PICK_Cougar Cage|r to release the |cRXP_ENEMY_Seared Needles Cougar|r
.itemcount 214435,1
.train 400640,3
.train 120,3
step << Mage
#season 2
.train 425189,1
.train 400640,3
.train 120,3
.goto Thousand Needles,23.714,24.780
>>Kill the |cRXP_ENEMY_Seared Needles Cougar|r. Loot her for the |T134943:0|t[|cRXP_LOOT_Partial Spell Notes|r]
>>|cRXP_WARN_You need to cool it down to kill it. In order to do it by yourself you have to use this exact rotation in quick succession:|r
>>Cast |T135846:0|t[Frostbolt] > |T135848:0|t[Frost Nova] > |T135852:0|t[Cone of Cold] > |T135844:0|t[Ice Lance] |cRXP_WARN_This has to be done without any breaks between the casts|r
.mob Seared Needles Cougar
.collect 213634,1
step << Mage
#season 2
.train 425189,1
.itemcount 213633,1
.itemcount 213632,1
.itemcount 213634,1
>>|cRXP_WARN_Use the|r |T134943:0|t|T134938:0|t|T134937:0|t[|cRXP_LOOT_Partial Spell Notes|r] |cRXP_WARN_to create the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Chronostatic Preservation|r]
.collect 213116,1
.use 213634
.use 213633
.use 213632
step << Mage
#season 2
.train 425189 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Chronostatic Preservation|r |cRXP_WARN_to train|r |T135729:0|t[Chronostatic Preservation]
.use 213116
.itemcount 213116,1
.train 425189,1
step << Mage
#optional
#completewith next
#season 2
.engrave 8 >> Open your character sheet and engrave your boots with |T135729:0|t[Chronostatic Preservation]
.train 1543,3
step
.goto Thousand Needles,22.78,24.53
>>Open the cage and kill the |cRXP_ENEMY_Enraged Panther|r. Loot him for the |cRXP_LOOT_Hypercapacitor Gizmo|r
>>|cRXP_WARN_Group up if you need to. This quest is HARD|r
.complete 5151,1 
.mob Enraged Panther
step
#xprate <1.50
.goto Thousand Needles,18.7,22.2
.xp 28+29000 >> Grind to level 28 29000+/41400xp
step
#som
.goto Thousand Needles,18.7,22.2
.xp 28+20000 >> Grind to level 28 20000+/41400xp
step << Rogue
#season 2
.train 400093,1
#completewith next
.goto Thousand Needles,18.44,21.58,10 >> Enter the large tent at Camp E'thok
step << Rogue
#season 2
.train 400093,1
.goto Thousand Needles,18.686,21.126
>>Open the |cRXP_PICK_Sizable Stolen Strongbox|r. Loot it for the |T132597:0|t[|cRXP_LOOT_Large Strongbox|r]
.collect 215451,1
step << Rogue
#season 2
.train 400093,1
.cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Large Strongbox|r] |cRXP_WARN_to unlock it|r
.usespell 1804
.use 215451
step << Rogue
#season 2
.train 400093,1
.use 215451 >> Open the |T132597:0|t[|cRXP_LOOT_Large Strongbox|r]. Loot it for the |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r]
.collect 215452,1
step << Rogue
#season 2
.train 400093,1
.cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r] |cRXP_WARN_to unlock it|r
.usespell 1804
.use 215452
step << Rogue
#season 2
.train 400093,1
.use 215452 >> Open the |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r]. Loot it for the |T132597:0|t[|cRXP_LOOT_Small Strongbox|r]
.collect 215453,1
step << Rogue
#season 2
.train 400093,1
.cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Small Strongbox|r] |cRXP_WARN_to unlock it|r
.usespell 1804
.use 215453
step << Rogue
#season 2
.train 400093,1
.use 215453 >> Open the |T132597:0|t[|cRXP_LOOT_Small Strongbox|r]. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r]
.collect 213138,1
step << Rogue
#season 2
.itemcount 213138,1
.use 213138
.train 400093 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r] |cRXP_WARN_to train|r |T134919:0|t[Rolling with the Punches]
step
#label Messenger
#loop
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,18.32,22.10,0
.goto Thousand Needles,18.32,22.10,40,0
.goto Thousand Needles,18.72,22.53,40,0
.goto Thousand Needles,18.47,23.06,40,0
.goto Thousand Needles,18.70,24.42,40,0
.goto Thousand Needles,18.63,26.19,40,0
.goto Thousand Needles,18.98,26.71,40,0
.goto Thousand Needles,19.46,27.04,40,0
.goto Thousand Needles,19.96,27.67,40,0
.goto Thousand Needles,20.45,27.87,40,0
.goto Thousand Needles,20.83,28.26,40,0
.goto Thousand Needles,22.05,30.61,40,0
.goto Thousand Needles,24.56,32.76,40,0
.goto Thousand Needles,25.29,34.23,40,0
.goto Thousand Needles,27.34,34.02,40,0
.goto Thousand Needles,28.24,33.37,40,0
.goto Thousand Needles,28.64,33.43,40,0
.goto Thousand Needles,29.24,33.96,40,0
.goto Thousand Needles,29.51,33.89,40,0
.goto Thousand Needles,30.69,32.43,40,0
.goto Thousand Needles,31.55,30.61,40,0
.goto Thousand Needles,32.29,30.52,40,0
.goto Thousand Needles,33.27,30.86,40,0
.goto Thousand Needles,33.81,30.12,40,0
.goto Thousand Needles,34.25,29.49,40,0
.goto Thousand Needles,35.19,28.11,40,0
.goto Thousand Needles,35.84,28.59,40,0
.goto Thousand Needles,36.57,29.47,40,0
.goto Thousand Needles,37.34,29.29,40,0
.goto Thousand Needles,38.81,31.73,40,0
.goto Thousand Needles,39.51,33.43,40,0
>>Kill the |cRXP_ENEMY_Galak Messenger|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
>>|cRXP_WARN_He patrols. He spawns at Splithoof Crag (the eastern Centaur camp)|r
>>|cRXP_WARN_Scout for him with|r |T132172:0|t[Eagle Eye] |cRXP_WARN_if you have trained it|r << Hunter
>>|cRXP_WARN_Scout for him with|r |T136034:0|t[Far Sight] |cRXP_WARN_if you have trained it|r << Shaman
.collect 12564,1,4881 
.accept 4881 >>Accept Assassination Plot
.use 12564
.unitscan Galak Messenger
.maxlevel 32
step
#loop
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
.goto Thousand Needles,11.50,21.61,40,0
.goto Thousand Needles,11.88,20.90,40,0
.goto Thousand Needles,12.89,19.97,40,0
.goto Thousand Needles,14.49,20.04,40,0
.goto Thousand Needles,15.69,18.65,40,0
.goto Thousand Needles,16.20,18.53,40,0
.goto Thousand Needles,16.70,18.61,40,0
.goto Thousand Needles,17.28,18.93,40,0
.goto Thousand Needles,17.66,19.46,40,0
.goto Thousand Needles,17.96,20.18,40,0
.goto Thousand Needles,17.87,20.78,40,0
.goto Thousand Needles,17.54,21.49,40,0
.goto Thousand Needles,17.24,22.32,40,0
.goto Thousand Needles,17.66,22.98,40,0
.goto Thousand Needles,18.11,23.65,40,0
.goto Thousand Needles,18.57,24.07,40,0
.goto Thousand Needles,18.68,24.68,40,0
.goto Thousand Needles,18.64,25.90,40,0
.goto Thousand Needles,18.48,26.74,40,0
.goto Thousand Needles,17.82,27.50,40,0
.goto Thousand Needles,17.19,29.60,40,0
.goto Thousand Needles,15.67,31.56,40,0
.goto Thousand Needles,15.08,31.63,40,0
.goto Thousand Needles,14.34,30.13,40,0
.goto Thousand Needles,13.75,28.54,40,0
.goto Thousand Needles,13.36,26.97,40,0
.goto Thousand Needles,13.01,26.31,40,0
.goto Thousand Needles,11.91,25.02,40,0
.goto Thousand Needles,11.55,24.44,40,0
.goto Thousand Needles,11.49,24.07,40,0
.goto Thousand Needles,11.16,23.21,40,0
.goto Thousand Needles,11.20,22.29,40,0
.goto Thousand Needles,11.50,21.61,0
>>Kill |cRXP_ENEMY_Steelsnap|r. Loot him for |cRXP_LOOT_Steelsnap's Rib|r
>>|cRXP_WARN_He patrols counter-clockwise|r
>>|cRXP_WARN_Be careful, has two |cRXP_ENEMY_Hyenas|r defending him!|r
>>|cRXP_WARN_Scout for him with|r |T132172:0|t[Eagle Eye] |cRXP_WARN_if you have trained it|r << Hunter
>>|cRXP_WARN_Scout for him with|r |T136034:0|t[Far Sight] |cRXP_WARN_if you have trained it|r << Shaman
.complete 1131,1 
.unitscan Steelsnap
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
>>|cRXP_WARN_Be careful! Turning this in will summon three |cRXP_ENEMY_Galak Assassins|r |cRXP_WARN_that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
.turnin 4881 >> Turn in Assassination Plot
.accept 4966 >> Accept Protect Kanati Greycloud
.target Kanati Greycloud
.isOnQuest 4881
step
.goto Thousand Needles,21.25,32.05
>>Kill the |cRXP_ENEMY_Galak Assassins|r to protect |cRXP_FRIENDLY_Kanati|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
.turnin 4966 >> Turn in Protect Kanati Greycloud
.isQuestComplete 4966
step
.goto Thousand Needles,21.43,32.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizlo|r
.turnin 5151 >> Turn in Hypercapacitor Gizmo
.target Wizlo Bearingshiner
.isQuestComplete 5151
step
#xprate <2.0
#loop
.goto Thousand Needles,36.58,38.77,0
.goto Thousand Needles,36.58,38.77,35,0
.goto Thousand Needles,37.77,38.17,35,0
.goto Thousand Needles,36.63,36.23,35,0
.goto Thousand Needles,34.96,33.22,35,0
.goto Thousand Needles,33.37,32.85,35,0
.goto Thousand Needles,33.67,34.09,35,0
.goto Thousand Needles,34.88,34.82,35,0
.goto Thousand Needles,35.62,36.20,35,0
.goto Thousand Needles,36.05,37.41,35,0
>>Loot the |cRXP_PICK_Incendia Agave Plants|r on the ground and underwater
>>|cRXP_ENEMY_Scalding Elementals|r and |cRXP_ENEMY_Boiling Elementals|r are immune to frost damage, and highly resistant to fire. Try to avoid them or use Arcane spells << Mage
>>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Boiling Elementals|r |cRXP_WARN_cast|r |T132156:0|t[Steam Jet]|cRXP_WARN_, reducing your chance to hit by 30% for 10 seconds|r << Warrior/Rogue/Shaman/Druid
>>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Scalding Elementals|r |cRXP_WARN_cast|r |T135807:0|t[Scald]|cRXP_WARN_, instantly dealing 150 fire damage and stunning you for 4 seconds|r
.complete 5062,1 
.maxlevel 33
step
#xprate >1.99
#loop
.goto Thousand Needles,36.58,38.77,0
.goto Thousand Needles,36.58,38.77,35,0
.goto Thousand Needles,37.77,38.17,35,0
.goto Thousand Needles,36.63,36.23,35,0
.goto Thousand Needles,34.96,33.22,35,0
.goto Thousand Needles,33.37,32.85,35,0
.goto Thousand Needles,33.67,34.09,35,0
.goto Thousand Needles,34.88,34.82,35,0
.goto Thousand Needles,35.62,36.20,35,0
.goto Thousand Needles,36.05,37.41,35,0
>>Loot the |cRXP_PICK_Incendia Agave Plants|r on the ground and underwater
>>|cRXP_ENEMY_Scalding Elementals|r and |cRXP_ENEMY_Boiling Elementals|r are immune to frost damage, and highly resistant to fire. Try to avoid them or use Arcane spells << Mage
>>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Boiling Elementals|r |cRXP_WARN_cast|r |T132156:0|t[Steam Jet]|cRXP_WARN_, reducing your chance to hit by 30% for 10 seconds|r << Warrior/Rogue/Shaman/Druid
>>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Scalding Elementals|r |cRXP_WARN_cast|r |T135807:0|t[Scald]|cRXP_WARN_, instantly dealing 150 fire damage and stunning you for 4 seconds|r
.complete 5062,1 
.maxlevel 32
step
#completewith HSTB
.hs >> Hearth to Thunder Bluff
.bindlocation 1638,1
.zoneskip Thunder Bluff
.use 6948
.train 3566,1 << Mage
step << Mage
#completewith HSTB
.cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleport: Thunder Bluff]
.zoneskip Thunder Bluff
.train 3566,3
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
.train 8412 >> Train your class spells
.target Archmage Shymm
.xp <30,1
.xp >32,1
.train 3566,3
step << Mage
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
.train 8422 >> Train your class spells
.target Archmage Shymm
.xp <32,1
.train 3566,3
step
#label HSTB
.goto Thunder Bluff,45.83,64.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Pala
.isQuestAvailable 4904,1151,5088,5147
step
#xprate <1.99
.goto Thunder Bluff,61.53,80.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
.turnin 1131 >> Turn in Steelsnap
.accept 1136 >> Accept Frostmaw
.target Melor Stonehoof
step
#xprate >1.99
.goto Thunder Bluff,61.53,80.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
.turnin 1131 >> Turn in Steelsnap
.target Melor Stonehoof
step << Hunter
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14319 >> Train your class spells
.target Urek Thunderhorn
.xp <28,1
.xp >30,1
step << Hunter
#optional
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 5384 >> Train your class spells
.target Urek Thunderhorn
.xp <30,1
step << Hunter
.goto Thunder Bluff,54.07,84.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
.train 24559 >> Train your pet spells
.target Hesuwa Thunderhorn
.xp <30,1
step << Warrior
.goto Thunder Bluff,57.59,85.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 7887 >> Train your class spells
.target Ker Ragetotem
.xp <28,1
.xp >30,1
step << Warrior
#optional
.goto Thunder Bluff,57.27,87.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
.train 7369 >> Train your class spells
.accept 1718 >>Accept The Islander
.target Torm Ragetotem
.xp <30,1
step
.goto Thunder Bluff,69.88,30.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.turnin 5062 >> Turn in Sacred Fire
.accept 5088 >> Accept Arikara
.target Magatha Grimtotem
.isQuestComplete 5062
step
.goto Thunder Bluff,69.88,30.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.turnin 5062 >> Turn in Sacred Fire
.target Magatha Grimtotem
.isQuestTurnedIn 5062
step << Druid
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kym|r
.train 3029 >> Train your class spells
.target Kym Wildmane
.xp <28,1
.xp >30,1
step << Druid
#optional
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kym|r
.train 783 >> Train your class spells
.target Kym Wildmane
.xp <30,1
step
.goto Thunder Bluff,36.01,59.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auld|r
.accept 1102 >> Accept A Vengeful Fate
.target Auld Stonespire
.dungeon RFK
step << Priest
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 8104 >> Train your class spells
.target Miles Welsh
.xp <28,1
.xp >30,1
step << Priest
#optional
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 602 >> Train your class spells
.target Miles Welsh
.xp <30,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
.train 759 >> Train your class spells
.target Archmage Shymm
.xp <28,1
.xp >30,1
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
.train 8412 >> Train your class spells
.target Archmage Shymm
.xp <30,1
step << Mage
.goto Thunder Bluff,22.48,16.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Birgitte|r
.train 3566 >> Train |T135765:0|t[Teleport: Thunder Bluff]
.target Birgitte Cranston
.xp <30,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 8053 >> Train your class spells
.target Tigor Skychaser
.xp <28,1
.xp >30,1
step << Shaman
#optional
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 556 >> Train your class spells
.target Tigor Skychaser
.xp <30,1
step
#completewith next
.skill firstaid,150 >> |cRXP_WARN_Create|r |T133687:0|t[Heavy Wool Bandages] |cRXP_WARN_until your skill is 150|r
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pand|r
.train 7928 >> Train |T133671:0|t[Silk Bandage]
>>|cRXP_WARN_Skip this step if you did not have enough Wool Cloth to reach 150 skill|r
.target Pand Stonebinder
.skill firstaid,<1,1
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuna|r
.vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[Sturdy Recurve Bow] |cRXP_BUY_from her if it's available|r
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
.money <1.9467
.isQuestAvailable 4904,1151,5088,5147
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
.collect 3030,1800,1153,1 
.target Kuna Thunderhorn
step << Shaman/Warrior
.goto Thunder Bluff,54.06,57.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r
.vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r
>>|cRXP_WARN_Alternatively you can also buy a|r |T135576:0|t[Bullova]
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Delgo Ragetotem
.isQuestAvailable 4904,1151,5088,5147
step << Rogue
.goto Thunder Bluff,53.00,56.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135275:0|t[Broadsword] |cRXP_BUY_from him|r
.collect 2520,1,1153,1 
.money <2.5924
.target Kard Ragetotem
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
#optional
#completewith FreewindHome
+|cRXP_WARN_Equip the|r |T135275:0|t[Broadsword]
.use 2520
.itemcount 2520,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
.goto Thunder Bluff,53.00,56.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r
.collect 2526,1,1153,1 
.money <2.0353
.target Kard Ragetotem
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step << Rogue
#optional
#completewith FreewindHome
+|cRXP_WARN_Equip the|r |T135651:0|t[Main Gauche]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
#completewith next
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Camp Taurajo >>Fly to Camp Taurajo
.target Tal
.zoneskip The Barrens
step
.goto The Barrens,45.10,57.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r
.turnin 1153 >> Turn in A New Ore Sample
.target Tatternack Steelforge
step << Mage
.hs >>Hearth to Freewind Post
.bindlocation 484,1
.zoneskip Thousand Needles
.cooldown item,6948,>0
.isQuestAvailable 4904,1151,5088,5147
step
#completewith FreewindHome
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Freewind Post >>Fly to Freewind Post
.target Omusa Thunderhorn
.zoneskip Thousand Needles
step
.goto Thousand Needles,44.90,48.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elu|r
.turnin 4767 >> Turn in Wind Rider
.target Elu
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
.vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_from him if it's up|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
.isQuestAvailable 4904,1151,5088,5147
.subzoneskip 484,1
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Montarr|r
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from him if they're up|r << !Warrior
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_, |r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
.target Montarr
.isQuestAvailable 4904,1151,5088,5147
.subzoneskip 484,1
step
#label FreewindHome
.goto Thousand Needles,46.07,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Abeqwa|r
.home >> Set your Hearthstone to Freewind Post
.target Innkeeper Abeqwa
.bindlocation 484
.isQuestAvailable 4904,1151,5088,5147
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1150 >> Turn in Test of Endurance
.accept 1151 >> Accept Test of Strength
.target Dorn Plainstalker
.isQuestComplete 1150
step
#optional
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.accept 1151 >> Accept Test of Strength
.target Dorn Plainstalker
.isQuestTurnedIn 1150
step << skip
#loop
.goto Thousand Needles,24.34,44.72,0
.goto Thousand Needles,36.10,55.02,100,0
.goto Thousand Needles,30.35,51.58,40,0
.goto Thousand Needles,24.34,44.72,60,0
.goto Thousand Needles,20.88,39.84,60,0
.goto Thousand Needles,17.33,36.72,60,0
.goto Thousand Needles,13.27,26.74,60,0
.goto Thousand Needles,9.98,21.71,60,0
>>Find and kill |cRXP_ENEMY_Rok'Alim the Pounder|r. Loot him for his |cRXP_LOOT_Fragments|r
>>|cRXP_WARN_He patrols a large portion of the northern/western part of the zone|r
>>|cRXP_WARN_Skip this step for now if you can't find him|r
.complete 1151,1 
.unitscan Rok'Alim the Pounder
.isOnQuest 1151
step
#xprate <2.0
#optional
.maxlevel 33,DarkcloudSkip
step
#xprate >1.99
#optional
.maxlevel 32,DarkcloudSkip
step
.goto Thousand Needles,31.47,36.71,30 >> Head to Darkcloud Pinnacle
.isOnQuest 5064,5147,4904
step << Priest
#season 2
#completewith LakoteEscort
.train 425309,1
>>Kill |cRXP_ENEMY_Grimtotem Geomancers|r, |cRXP_ENEMY_Grimtotem Bandits|r, |cRXP_ENEMY_Grimtotem Reavers|r and |cRXP_ENEMY_Grimtotem Stompers|r. Loot them for the |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r]
.collect 213140,1
.mob Grimtotem Geomancer
.mob Grimtotem Bandit
.mob Grimtotem Reaver
.mob Grimtotem Stomper
step
#completewith next
.goto Thousand Needles,33.08,35.33,20,0
.goto Thousand Needles,32.78,32.24,20,0
.goto Thousand Needles,32.03,31.36,20,0
.goto Thousand Needles,32.37,28.64,20,0
.goto Thousand Needles,32.60,27.51,20,0
.goto Thousand Needles,34.87,31.76,20,0
.goto Thousand Needles,34.15,35.77,20,0
.goto Thousand Needles,33.32,36.24,20 >> Travel up Darkcloud Pinnacle
step
.goto Thousand Needles,31.79,32.58
>>Open the |cRXP_PICK_Document Chest|r on top of the plataeu. Loot it for |cRXP_LOOT_Secret Note #1|r
.complete 5064,1 
step
.goto Thousand Needles,33.80,39.90
>>Open the |cRXP_PICK_Document Chest|r inside the big tent. Loot it for |cRXP_LOOT_Secret Note #1|r
.complete 5064,2 
step
.goto Thousand Needles,39.20,41.60
>>Open the |cRXP_PICK_Document Chest|r inside the tent on the eastern plateau. Loot it for |cRXP_LOOT_Secret Note #1|r
.complete 5064,3 
step
#completewith next
.goto Thousand Needles,35.68,39.25,20,0
.goto Thousand Needles,34.32,35.74,20,0
.goto Thousand Needles,35.56,30.94,20,0
.goto Thousand Needles,36.97,31.97,20 >> Travel toward the bonfire on the North/Eastern plateau
step
>>Clear the |cRXP_ENEMY_Grimtotems|r and then light the bonfire
>>Kill |cRXP_ENEMY_Arikara|r. Loot her for her |cRXP_LOOT_Skin|r
.goto Thousand Needles,38.00,35.30
.complete 5088,2 
.complete 5088,1 
.mob Arikara
.isOnQuest 5088
step
.goto Thousand Needles,38.00,26.80
>>Kill |cRXP_ENEMY_Arnak Grimtotem|r. Loot him for his |cRXP_LOOT_Hoof|r
.complete 5147,1 
.mob Arnak Grimtotem
step
.goto Thousand Needles,38.00,26.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota|r
>>|cRXP_WARN_This will start an escort|r
.accept 4904,1 >> Accept Free at Last
.target Lakota Windsong
step
#label LakoteEscort
.goto Thousand Needles,38.96,29.46,20,0
.goto Thousand Needles,37.56,31.43,20,0
.goto Thousand Needles,36.89,31.73,20,0
.goto Thousand Needles,35.64,31.01,20,0
.goto Thousand Needles,34.53,30.78,20,0
.goto Thousand Needles,33.19,28.54,20,0
.goto Thousand Needles,32.53,27.44,20,0
.goto Thousand Needles,32.28,28.67,20,0
.goto Thousand Needles,32.04,31.37,20,0
.goto Thousand Needles,32.86,32.62,20,0
.goto Thousand Needles,33.05,35.42,20,0
.goto Thousand Needles,31.06,36.89
>>Escort |cRXP_FRIENDLY_Lakota|r to safety
>>|cRXP_WARN_Two|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_will spawn every time she reaches a new platform. Try and stay ahead of her to clear the platforms if you have respawns behind|r
>>|cRXP_WARN_Be careful as this quest is HARD. Don't be afraid to escape by running behind you and failing the escort|r
.complete 4904,1 
.target Lakota Windsong
step << Priest
#season 2
.train 425309,1
.goto Thousand Needles,34.17,38.81,0
.goto Thousand Needles,31.33,37.05,10,0
.goto Thousand Needles,33.17,35.38,15,0
.goto Thousand Needles,31.96,31.32,15,0
.goto Thousand Needles,33.04,27.61,30,0
.goto Thousand Needles,35.20,31.09,30,0
.goto Thousand Needles,34.17,38.81,30,0
>>Kill |cRXP_ENEMY_Grimtotem Geomancers|r, |cRXP_ENEMY_Grimtotem Bandits|r, |cRXP_ENEMY_Grimtotem Reavers|r and |cRXP_ENEMY_Grimtotem Stompers|r. Loot them for the |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r]
.collect 213140,1
.mob Grimtotem Geomancer
.mob Grimtotem Bandit
.mob Grimtotem Reaver
.mob Grimtotem Stomper
step << Priest
#season 2
.train 425309 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r] |cRXP_WARN_to train|r |T236254:0|t[Empowered Renew]
.use 213140
.itemcount 213140,1
step
.goto Thousand Needles,21.54,32.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motega|r
.turnin 5088 >> Turn in Arikara
.target Motega Firemane
.isQuestComplete 5088
step
#optional
#label DarkcloudSkip
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
>>|cRXP_WARN_Be careful! Turning this in will summon three |cRXP_ENEMY_Galak Assassins|r |cRXP_WARN_that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
.turnin 4881 >> Turn in Assassination Plot
.accept 4966 >> Accept Protect Kanati Greycloud
.target Kanati Greycloud
.isOnQuest 4881
step
.goto Thousand Needles,21.25,32.05
>>Kill the |cRXP_ENEMY_Galak Assassins|r to protect |cRXP_FRIENDLY_Kanati|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
.turnin 4966 >> Turn in Protect Kanati Greycloud
.isQuestComplete 4966
step
#loop
.goto Thousand Needles,24.34,44.72,0
.goto Thousand Needles,36.10,55.02,100,0
.goto Thousand Needles,30.35,51.58,40,0
.goto Thousand Needles,24.34,44.72,60,0
.goto Thousand Needles,20.88,39.84,60,0
.goto Thousand Needles,17.33,36.72,60,0
.goto Thousand Needles,13.27,26.74,60,0
.goto Thousand Needles,9.98,21.71,60,0
>>Find and kill |cRXP_ENEMY_Rok'Alim the Pounder|r. Loot him for his |cRXP_LOOT_Fragments|r
>>|cRXP_WARN_He patrols a large portion of the North/Western part of the zone|r
.complete 1151,1 
.unitscan Rok'Alim the Pounder
.isOnQuest 1151
step
#completewith next
.goto Feralas,89.24,41.17,0
.goto Feralas,89.24,41.17,60,0
.zone Feralas >>Enter Feralas
step
#completewith FeralasFP
.subzone 1099 >>Travel to Camp Mojache
>>|cRXP_WARN_Be careful! Stay on the road to avoid high level mobs|r
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronk|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Bronk
.isQuestAvailable 1151
step
#label FeralasFP
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shyn|r
.fp Camp Mojache >> Get the Camp Mojache Flight Path
.fly freewind Post >> Fly to Freewind Post
.target Shyn
.subzoneskip 484
step
.goto Thousand Needles,45.70,50.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.turnin 5064 >> Turn in Grimtotem Spying
.turnin 5147 >> Turn in Wanted - Arnak Grimtotem
.target Cliffwatcher Longhorn
.isQuestComplete 5064
.isQuestComplete 5147
step
#optional
.goto Thousand Needles,45.70,50.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.turnin 5064 >> Turn in Grimtotem Spying
.target Cliffwatcher Longhorn
.isQuestComplete 5064
step
#optional
.goto Thousand Needles,45.70,50.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.turnin 5147 >> Turn in Wanted - Arnak Grimtotem
.target Cliffwatcher Longhorn
.isQuestComplete 5147
step
.goto Thousand Needles,46.00,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalia|r
.turnin 4904 >> Turn in Free at Last
.target Thalia Amberhide
.isQuestComplete 4904
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Montarr|r
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from him if they're up|r << !Warrior
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_, |r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
.target Montarr
.subzoneskip 484,1
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
.vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_from him if it's up and fill your quiver with arrows|r
.collect 3030,1800,1151,1 
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
.subzoneskip 484,1
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,1800,1151,1 
.target Starn
.subzoneskip 484,1
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1151 >> Turn in Test of Strength
.target Dorn Plainstalker
.isQuestComplete 1151
step
#optional
.abandon 1150,4904,5147,5064,5088,5062
step
#optional
.goto Thousand Needles,43.12,36.86
.xp 30 >> Grind to level 30
step
#completewith next
.goto Thousand Needles,70.58,62.69,200 >> Travel to the Shimmering Flats
.subzoneskip 439
step
#xprate <1.99
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1111 >> Accept Wharfmaster Dizzywig
.target Kravel Koalbeard
step
#xprate >1.99
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1110 >> Accept Rocket Car Parts
.accept 1111 >> Accept Wharfmaster Dizzywig
.target Kravel Koalbeard
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle|r and |cRXP_FRIENDLY_Wizzle|r
.accept 1104 >> Accept Salt Flat Venom
.target +Fizzle Brassbolts
.goto Thousand Needles,78.07,77.13
.accept 1105 >> Accept Hardened Shells
.target +Wizzle Brassbolts
.goto Thousand Needles,78.14,77.12
step
#xprate >1.99
.goto Thousand Needles,80.17,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.accept 1176 >> Accept Load Lightening
.target Pozzik
step
#xprate >1.99
.goto Thousand Needles,81.63,77.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zherin|r
.accept 1175 >> Accept A Bump in the Road
.target Trackmaster Zherin
step
#xprate <1.99
#label FWHS
.hs >> Hearth to Freewind Post
.use 6948
.cooldown item,6948,>0,1
.zoneskip The Barrens
.bindlocation 484,1
.subzoneskip 484
step
#xprate <1.99
.goto Thousand Needles,45.15,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyse|r
.fly Crossroads >> Fly to Crossroads
.target Nyse
.subzoneskip 484,1
.zoneskip The Barrens
step
#optional
#xprate <1.99
#completewith next
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >> Travel to Gadgetzan
.zoneskip Tanaris
.zoneskip The Barrens
.subzoneskip 484
.cooldown item,6948,<0
step
#optional
#xprate <1.99
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fp Gadgetzan >> Get the Gadgetzan Flight Path
.fly Crossroads >> Fly to Crossroads
.target Bulkrek Ragefist
.cooldown item,6948,<0
.subzoneskip 484
.zoneskip The Barrens
step
#xprate >1.99
#completewith next
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >> Travel to Gadgetzan
.zoneskip Tanaris
step
#xprate >1.99
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fp Gadgetzan >> Get the Gadgetzan Flight Path
.fly Crossroads >> Fly to Crossroads
.target Bulkrek Ragefist
.zoneskip The Barrens
step
#label SwarmGrows
.goto The Barrens,51.10,29.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korran|r
.accept 1145 >> Accept The Swarm Grows
.target Korran
step << !Warrior
#completewith WharfDizzy
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Ratchet >> Fly to Ratchet
.target Devrak
.subzoneskip 392
step << Warrior
#completewith WharfDizzy
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Ratchet >> Fly to Ratchet
.target Devrak
.subzoneskip 392
.isOnQuest 1718
step << Warrior
#completewith IslanderPickUp
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Devrak
.zoneskip Orgrimmar
step << Warrior
#completewith next
.goto Orgrimmar,75.00,34.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belgrom|r
.turnin 1145 >> Turn in The Swarm Grows
.accept 1146 >> Accept The Swarm Grows
.target Belgrom Rockmaul
step << Warrior
#label IslanderPickUp
.goto Orgrimmar,80.37,32.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorek|r
.accept 1718 >> Accept The Islander
.target Sorek
step << Warrior
#completewith WharfDizzy
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Ratchet >> Fly to Ratchet
.target Doras
.zoneskip Orgrimmar,1
step
#label WharfDizzy
.goto The Barrens,63.35,38.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzywig|r
.turnin 1111 >> Turn in Wharfmaster Dizzywig
.accept 1112 >> Accept Parts for Kravel
.target Wharfmaster Dizzywig
step << Shaman
.goto The Barrens,65.83,43.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r
.turnin 220 >>Turn in Call of Water
.accept 63 >>Accept Call of Water
.target Islen Waterseer
step << Shaman
.goto The Barrens,65.83,43.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r
>>|cRXP_WARN_Make sure you get the|r |T134754:0|t[|cRXP_LOOT_Water Sapta|r
.turnin 972 >>Turn in Water Sapta
.collect 6637,1 
step << Warrior
#completewith next
.goto The Barrens,65.09,47.81,90,0
.goto The Barrens,68.61,49.16,100 >> Travel to Fray Island
step << Warrior
.goto The Barrens,68.62,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc|r
.turnin 1718 >>Turn in The Islander
.accept 1719 >>Accept The Affray
.target Klannoc Macleod
step << Warrior
>>Step onto the grate behind you. Quickly kill the |cRXP_ENEMY_Affray Challengers|r that come one by one
>>Kill |cRXP_ENEMY_Big Will|r once he appears
.goto The Barrens,68.59,48.76
.complete 1719,1 
.complete 1719,2 
.mob Big Will
step << Warrior
#xprate <1.99
.goto The Barrens,68.62,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc|r
>>|cRXP_WARN_This will teach you Berserker Stance|r
.turnin 1719 >>Turn in The Affray
.accept 1791 >>Accept The Windwatcher
.target Klannoc Macleod
step << Warrior
#xprate >1.99
.goto The Barrens,68.62,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc|r
>>|cRXP_WARN_This will teach you Berserker Stance|r
.turnin 1719 >>Turn in The Affray
.target Klannoc Macleod
step << Warrior
#completewith next
.goto The Barrens,62.81,37.91,200 >>Travel back to Ratchet
.subzoneskip 392
step << !Mage
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Bragok
.zoneskip Orgrimmar
step << Mage
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
step
#sticky
#completewith EnterRFK
.subzone 491,2 >> Now you should be looking for a group to Razorfen Kraul
.dungeon RFK
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 8412 >> Train your class spells
.target Pephredo
.xp <30,1
.xp >32,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 8422 >> Train your class spells
.target Pephredo
.xp <32,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Horthus|r
>>|cRXP_BUY_Buy two or more|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from him|r
.collect 17031,2 
.target Horthus
.zoneskip Orgrimmar,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 1760 >> Train your class spells
.target Ormok
.xp <30,1
.xp >32,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 8623 >> Train your class spells
.target Ormok
.xp <32,1
step << Shaman
.goto Orgrimmar,37.95,37.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Searn|r
.trainer >> Train your class spells
.accept 1531 >> Accept Call of Air
.target Searn Firewarder
step
#xprate <2.1
.goto Orgrimmar,44.70,52.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Craven|r
>>|cRXP_WARN_He patrols in the Cleft of Shadows|r
.accept 1431 >> Accept Alliance Relations
.target Craven Drok
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 2941 >> Train your class spells
.target Mirket
.xp <30,1
.xp >32,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 6213 >> Train your class spells
.target Mirket
.xp <32,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
.vendor >>Buy any pet upgrades you can afford
.target Kurgul
.zoneskip Orgrimmar,1
step << Priest/Warlock
#ah
.goto Orgrimmar,44.16,48.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r
.collect 5347,1 
.money <1.5713
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
.target Katis
.zoneskip Orgrimmar,1
step << Priest/Warlock
#ssf
.goto Orgrimmar,44.16,48.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r
>>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r
.collect 5347,1 
.money <1.5713
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
.target Katis
.zoneskip Orgrimmar,1
step
.goto Orgrimmar,75.00,34.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belgrom|r
.turnin 1145 >> Turn in The Swarm Grows
.accept 1146 >> Accept The Swarm Grows
.target Belgrom Rockmaul
step
#season 0,1
.goto Orgrimmar,76.00,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nogg|r
.accept 2841 >>Accept Rig Wars
.target Nogg
step
#season 0,1
.goto Orgrimmar,75.50,25.34
.gossipoption 95758 >>Talk to |cRXP_FRIENDLY_Sovik|r
.isNotOnQuest 2842
.target Sovik
step
#season 0,1
.goto Orgrimmar,75.50,25.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sovik|r
>>|cRXP_WARN_You are required to have Rig Wars in your quest log to accept this quest|r
.accept 2842 >>Accept Chief Engineer Scooty
.target Sovik
step
#season 0,1
#optional
.abandon 2841 >> Abandon Rig Wars. Make sure you have Chief Engineer Scooty in your quest log
.dungeon !GNOMER
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 7369 >> Train your class spells
.target Grezz Ragefist
.xp <30,1
.xp >32,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20658 >> Train your class spells
.target Grezz Ragefist
.xp <32,1
step << Hunter
#xprate <1.99
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
>>|cRXP_WARN_Save at least 1 Gold 88 Silver for later|r
.train 5384 >> Train your class spells
.target Ormak Grimshot
.xp <30,1
.xp >32,1
step << Hunter
#xprate >1.99
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 5384 >> Train your class spells
.target Ormak Grimshot
.xp <30,1
.xp >32,1
step << Hunter
#xprate <1.99
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
>>|cRXP_WARN_Save at least 1 Gold 88 Silver for later|r
.train 14263 >> Train your class spells
.target Ormak Grimshot
.xp <32,1
step << Hunter
#xprate >1.99
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14263 >> Train your class spells
.target Ormak Grimshot
.xp <32,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
.train 24559 >> Train your pet spells
.target Xao'tsu
.xp <30,1
step << Hunter
.goto Orgrimmar,78.11,38.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Jin'sora|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,1800,549,1 << Hunter 
.target Jin'sora
step << Hunter
.goto Orgrimmar,81.52,19.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
.train 197 >>Train Two-Handed Axes
.target Hanashi
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 602 >> Train your class spells
.target Ur'kyo
.xp <30,1
.xp >32,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 6077 >> Train your class spells
.target Ur'kyo
.xp <32,1
step
#xprate <2.1
.goto Orgrimmar,22.50,52.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keldran|r near the Western exit of Orgrimmar
.turnin 1431 >> Turn in Alliance Relations
.accept 1432 >> Accept Alliance Relations
.target Keldran
step
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Camp Taurajo >> Fly Camp Taurajo
.target Doras
.zoneskip The Barrens
.dungeon RFK
step
#completewith next
>>|cRXP_WARN_If possible, have party members share the following quest. Skip this step otherwise|r
.accept 1109 >> Accept Going, Going, Guano!
.dungeon RFK
step
#label EnterRFK
.goto The Barrens,43.46,90.18,0
.goto The Barrens,43.46,90.18,40,0
.goto 1414,50.89,70.35
.subzone 491,2 >> Enter Razorfen Kraul
.dungeon RFK
step
>>Kill |cRXP_ENEMY_Kraul Bats|r. Loot them for a |cRXP_LOOT_Kraul Guano|r
.complete 1109,1 
.mob Kraul Bat
.mob Greater Kraul Bat
.dungeon RFK
.isOnQuest 1109
step
>>Kill |cRXP_ENEMY_Charlga Razorflank|r. Loot her for her |cRXP_LOOT_Heart|r and for the |T134939:0|t[|cRXP_LOOT_Small Scroll|r]. Use the scroll to start the quest
.complete 1102,1 
.collect 17008,1,6522 
.accept 6522 >>Accept An Unholy Alliance
.mob Charlga Razorflank
.use 17008
.dungeon RFK
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willix the Importer|r
>>|cRXP_WARN_This will start an escort|r
.accept 1144 >> Accept Willix the Importer
.target Willix the Importer
.dungeon RFK
step
>>Escort |cRXP_FRIENDLY_Willix the Importer|r through Razorfen Kraul
>>|cRXP_WARN_Ensure you stay close to |cRXP_FRIENDLY_Willix|r otherwise the quest may not complete!|r
.complete 1144,1 
.isOnQuest 1144
.target Willix the Importer
.dungeon RFK
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willix the Importer|r
.turnin 1144 >> Turn in Willix the Importer
.target Willix the Importer
.isQuestComplete 1144
.dungeon RFK
step << !Mage
.hs >> Hearth to Freewind Post
.use 6948
.dungeon RFK
.bindlocation 484,1
.subzoneskip 484
step
#season 0,1
#sticky
#completewith EnterGNOMER
.subzone 721,2 >> Now you should be looking for a group to Gnomeregan
.dungeon GNOMER
step << !Mage
#season 0,1
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyse|r
.fly Ratchet >>Fly to Ratchet
.target Nyse
.zoneskip Thousand Needles,1
.dungeon GNOMER
step
#season 0,1
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Ratchet >>Fly to Ratchet
.target Doras
.zoneskip Orgrimmar,1
.dungeon GNOMER
step
#season 0,1
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> Take the boat to Stranglethorn Vale
.zoneskip Stranglethorn Vale
.dungeon GNOMER
step
#season 0,1
.goto Stranglethorn Vale,27.60,77.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scooty|r
.turnin 2842 >>Turn in Chief Engineer Scooty
.accept 2843 >>Accept Gnomer-gooooone!
.target Scooty
.timer 9 >> Goblin Transponder
.dungeon GNOMER
step
#season 0,1
.goto Stranglethorn Vale,27.60,77.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scooty|r
.turnin 2843 >>Turn in Gnomer-gooooone!
.target Scooty
.dungeon GNOMER
step
#season 0,1
.goto Stranglethorn Vale,27.63,77.55
.goto Eastern Kingdoms,42.75,59.93,30 >> Step onto the Gnomeregan Transponder
.dungeon GNOMER
step
#season 0,1
#label EnterGNOMER
.goto Eastern Kingdoms,42.64,59.80,20,0
.goto Eastern Kingdoms,42.58,59.82,20,0
.goto Eastern Kingdoms,42.56,59.87,20,0
.goto Eastern Kingdoms,42.51,60.15,20,0
.goto Eastern Kingdoms,42.34,60.18
.subzone 721,2 >> Enter Gnomeregan
.dungeon GNOMER
step
#season 0,1
>>Kill |cRXP_ENEMY_Mekgineer Thermaplugg|r. Loot him for his |cRXP_LOOT_Safe Combination|r
>>Loot |cRXP_PICK_Thermaplugg's Safe|r in the Northern side of the room for the |cRXP_LOOT_Rig Blueprints|r
.complete 2841,2 
.complete 2841,1 
.mob Mekgineer Thermaplugg
.dungeon GNOMER
step << !Mage
#season 0,1
.hs >> Hearth to Freewind Post
.use 6948
.bindlocation 484,1
.subzoneskip 484
.dungeon GNOMER
step << !Mage
#season 0,1
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyse|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Nyse
.zoneskip Thousand Needles,1
.dungeon GNOMER
.dungeon !RFK
step << !Mage
#optional
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyse|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Nyse
.zoneskip Thousand Needles,1
.dungeon RFK
.dungeon !GNOMER
step << !Mage
#optional
#season 0,1
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Bragok
.subzoneskip 392,1
.dungeon GNOMER
step << Mage
#season 0,1
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
.isQuestComplete 2841
.dungeon GNOMER
step
#season 0,1
.goto Orgrimmar,76.00,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nogg|r
.turnin 2841 >>Turn in Rig Wars
.target Nogg
.dungeon GNOMER
.isQuestComplete 2841
step
#xprate >1.99
#completewith next
.zone Durotar >> Leave Orgrimmar
.zoneskip Durotar
.isOnQuest 63 << Shaman
.dungeon RFK << !Shaman
.isOnQuest 6522 << !Shaman
step
#xprate >1.99
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
.zoneskip Tirisfal Glades
.zoneskip Undercity
.isOnQuest 63 << Shaman
.dungeon RFK << !Shaman
.isOnQuest 6522 << !Shaman
step
#xprate >1.99
#completewith next
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >> Enter Undercity
.zoneskip Undercity
.isOnQuest 63 << Shaman
.dungeon RFK << !Shaman
.isOnQuest 6522 << !Shaman
step
#xprate >1.99
#completewith next
.goto Undercity,66.09,20.06,20,0
.goto Undercity,64.37,23.94,20,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
.isOnQuest 63 << Shaman
.dungeon RFK << !Shaman
.isOnQuest 6522 << !Shaman
step
#xprate >1.99
#completewith next
.goto Undercity,51.92,64.68,15 >>Travel toward |cRXP_FRIENDLY_Varimathras|r
.dungeon RFK
.isOnQuest 6522
step
#xprate >1.99
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
.turnin 6522 >>Turn in An Unholy Alliance
.target Varimathras
.dungeon RFK
.isOnQuest 6522
step << Shaman
#xprate >1.99
.zone Silverpine Forest >> Travel or fly to Silverpine Forest
.isOnQuest 63
step << Shaman
#xprate >1.99
#completewith CallofWaterSVP
#label CallofWaterSVP1
.goto Silverpine Forest,42.05,40.62,10,0
.goto Silverpine Forest,41.83,41.16,8 >> Jump up the side of the tree
.isOnQuest 63
step << Shaman
#xprate >1.99
#completewith CallofWaterSVP
#label CallofWaterSVP2
#requires CallofWaterSVP1
.goto Silverpine Forest,38.09,44.40,15 >>Run down the mountain
.isOnQuest 63
step << Shaman
#xprate >1.99
#completewith next
#requires CallofWaterSVP2
.goto Silverpine Forest,38.09,44.40
.aura 8899 >>|cRXP_WARN_Drink the|r |T134754:0|t[Water Sapta] |cRXP_WARN_to see the|r |cRXP_ENEMY_Corrupt Minor Manifestion of Water|r
.use 6637
.isOnQuest 63
step << Shaman
#xprate >1.99
.goto Silverpine Forest,38.50,44.46
>>Kill the |cRXP_ENEMY_Corrupt Minor Manifestion of Water|r. Loot it for the |cRXP_LOOT_Corrupt Manifestation's Bracers|r
.complete 63,1 
.mob Corrupt Minor Manifestation of Water
.isOnQuest 63
step << Shaman
#xprate >1.99
#label CallofWaterSVP
.goto Silverpine Forest,38.26,44.56
>>Click the |cRXP_PICK_Brazier of Everfount|r
.turnin 63 >>Turn in Call of Water
.accept 100 >>Accept Call of Water
.timer 15,Call of Water RP
step << Shaman
#xprate >1.99
.goto Silverpine Forest,38.75,44.63
>>|cRXP_WARN_Wait out the RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Minor Manifestation of Water|r
.turnin 100 >>Turn in Call of Water
.accept 96 >>Accept Call of Water
.target Minor Manifestation of Water
step
#xprate >1.99
#completewith next
.hs >> Hearth to Freewind Post
.use 6948
.bindlocation 484,1
.subzoneskip 484
step
#xprate >1.99
.goto Thousand Needles,46.07,51.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Abeqwa|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Abeqwa
]]);
