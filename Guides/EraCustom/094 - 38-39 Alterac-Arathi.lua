RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 30-40
#xprate <1.99
#classic
#tbc
#mop
<< Horde
#name 38-39 Alterac/Arathi
#next 39-40 Badlands
step
#completewith next
.goto Undercity,47.20,59.69,0
.goto Undercity,47.20,59.69,12,0
.goto Undercity,43.55,68.11,12,0
.goto Undercity,45.20,71.67,12 >>Travel toward |cRXP_FRIENDLY_Zinge|r
step
.goto Undercity,50.15,67.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zinge|r
.accept 232 >> Accept Errand for Apothecary Zinge
.target Apothecary Zinge
step
.goto Undercity,58.61,54.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alessandro|r
.turnin 232 >> Turn in Errand for Apothecary Zinge
.accept 238 >> Accept Errand for Apothecary Zinge
.target Alessandro Luca
step
#completewith next
.goto Undercity,47.20,59.69,0
.goto Undercity,47.20,59.69,12,0
.goto Undercity,43.55,68.11,12,0
.goto Undercity,45.20,71.67,12 >>Return to |cRXP_FRIENDLY_Zinge|r
step
.goto Undercity,50.15,67.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zinge|r
.turnin 238 >> Turn in Errand for Apothecary Zinge
.accept 243 >> Accept Into the Field
.target Apothecary Zinge
step
.goto Undercity,74.05,33.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew|r
.turnin 3341 >>Turn in Bring the End
.target Andrew Brownell
.isQuestComplete 3341
.dungeon RFD
step << Hunter
.goto Undercity,54.71,38.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
.vendor >> |cRXP_BUY_Buy a|r |T135489:0|t[Massive Longbow] |cRXP_BUY_from her if it's available|r
.target Abigail Sawyer
.money <6.7952
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
.zoneskip Undercity,1
step << Hunter
#optional
#completewith BracersofBinding
+|cRXP_WARN_Equip the|r |T135489:0|t[Massive Longbow]
.use 11307
.itemcount 11307,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
.xp <42,1
step << Hunter
#optional
#completewith BracersofBinding
+|cRXP_WARN_Equip the|r |T135489:0|t[Massive Longbow] |cRXP_WARN_when you are level 42|r
.itemcount 11307,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
.xp >42,1
step << Hunter
.goto Undercity,58.66,33.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_. Buy a|r |cRXP_BUY_Buy a|r |T135424:0|t[Great Axe] |cRXP_BUY_from him if you're melee weaving. Otherwise, skip this step|r
.collect 2531,1,503,1 
.target Geoffrey Hartwell
.money <5.0552
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<31.2
.zoneskip Undercity,1
step << Hunter
#optional
#completewith BracersofBinding
+|cRXP_WARN_Equip the|r |T135424:0|t[Great Axe] |cRXP_WARN_when you are level 39|r
.itemcount 2531,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<31.2
.xp >39,1
step << Hunter
#optional
#completewith BracersofBinding
+|cRXP_WARN_Equip the|r |T135424:0|t[Great Axe]
.use 2531
.itemcount 2531,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<31.2
.xp <39,1
step << Rogue
.goto Undercity,58.66,33.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_. Buy a|r |T135344:0|t[Falchion] |cRXP_BUY_from him|r
.collect 2528,1,503,1 
.money <4.6652
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
.target Geoffrey Hartwell
.zoneskip Undercity,1
step << Rogue
.goto Undercity,58.66,33.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_. Buy a|r |T135341:0|t[Rondel] |cRXP_BUY_from him|r
.collect 2534,1,503,1 
.money <4.0888
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<24.0
.target Geoffrey Hartwell
.zoneskip Undercity,1
step << Rogue
#optional
#completewith BracersofBinding
+|cRXP_WARN_Equip the|r |T135344:0|t[Falchion] |cRXP_WARN_when you are level 41|r
.use 2528
.itemcount 2528,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step << Rogue
#optional
#completewith BracersofBinding
+|cRXP_WARN_Equip the|r |T135341:0|t[Rondel] |cRXP_WARN_in your off-hand when you are level 39|r
.itemcount 2534,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<24.0
step << Priest
.goto Undercity,69.54,26.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zane|r|cRXP_BUY_. Buy a|r |T133718:0|t[Blackbone Wand] |cRXP_BUY_from him|r
.collect 5239,1,503,1 
.money <4.0769
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<35.3
.target Zane Bradford
.zoneskip Undercity,1
step << Priest
#optional
#completewith BracersofBinding
+|cRXP_WARN_Equip the|r |T135344:0|t[Blackbone Wand] when you are level 41
.use 5239
.itemcount 5239,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<35.3
.xp >41,1
step << Priest
#optional
#completewith BracersofBinding
+|cRXP_WARN_Equip the|r |T135344:0|t[Blackbone Wand]
.use 5239
.itemcount 5239,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<35.3
.xp <41,1
step << Warrior
.goto Undercity,77.48,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nathaniel|r|cRXP_BUY_Buy two stacks of|r |T135424:0|t[Gleaming Throwing Axe] |cRXP_BUY_from him|r
.collect 15326,400,1713,1 
.target Nathaniel Steenwick
.zoneskip Undercity,1
step << Warrior
#ah
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stockton|r in the Trade Quarter
>>|cRXP_BUY_If you have money leftover after buying|r |T134717:0|t[Nature Protection Potions]|cRXP_BUY_, purchase the following items:|r
.collect 4480,8,1713,1 
.collect 4479,8,1713,1 
.collect 4481,8,1713,1 
.collect 3357,8,1713,1 
.target Auctioneer Stockton
step << Warrior
#ah
.goto Undercity,71.42,46.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stockton|r in the Trade Quarter
.collect 6052,2,1713,1 
.target Auctioneer Stockton
.zoneskip Undercity,1
step
#ah
.goto Undercity,71.42,46.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stockton|r in the Trade Quarter
>>|cRXP_BUY_If you have money leftover, purchase the following items:|r
.collect 3829,1,713,1 
.collect 4389,1,714,1 
.collect 929,1,715,1 
.collect 3823,1,715,1 
.collect 2868,1,716,1 
.collect 4611,9,705,1 
.collect 3404,4,703,1 
.zoneskip Undercity,1
.target Auctioneer Stockton
.group
step
#ah
.goto Undercity,71.42,46.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stockton|r in the Trade Quarter
>>|cRXP_BUY_If you have money leftover, purchase the following items:|r
.collect 3829,1,713,1 
.collect 4389,1,714,1 
.collect 4611,9,705,1 
.collect 3404,4,703,1 
.zoneskip Undercity,1
.target Auctioneer Stockton
.solo
step
.goto Undercity,62.30,43.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ronald|r. |cRXP_BUY_Buy|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from him|r
.collect 3713,1,7321,1 
.target Ronald Burch
.itemcount 3712,10 
.zoneskip Undercity,1
step << Warrior
#completewith ArathiCharms
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
>>|cRXP_ENEMY_Fly to Tarren Mill instead if you bought 8 Cresting, Thundering and Burning charms on the AH and skip the next 3 steps|r
.fly Hammerfall >> Fly to Hammerfall
.target Michael Garrett
.zoneskip Arathi Highlands
step << Warrior
#hardcore
#completewith ArathiCharms
.goto Arathi Highlands,45.78,43.61,0
+|cRXP_WARN_Be careful of getting too close to Refuge Point (Alliance base) in the centre of the zone.|r |cRXP_ENEMY_Refuge Point Defenders|r |cRXP_WARN_can kill you|r
.unitscan Refuge Point Defender
step << Warrior
#label Cresting
.goto Arathi Highlands,66.72,29.72
>>Kill |cRXP_ENEMY_Cresting Exiles|r. Loot them for their |T133438:0|t[Cresting Charms]
.collect 4481,8,1713,1 
.mob Cresting Exile
step << Warrior
.goto Arathi Highlands,52.06,50.60
>>Kill |cRXP_ENEMY_Thundering Exiles|r. Loot them for their |T133435:0|t[Thundering Charms]
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Thundering Exiles|r |cRXP_WARN_have high burst damage|r
.collect 4480,8,1713,1 
.mob Thundering Exile
step << Warrior
#label ArathiCharms
.goto Arathi Highlands,25.47,30.09
>>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for their |T133434:0|t[Burning Charms]
.collect 4479,8,1713,1 
.mob Burning Exile
step << Warrior
#completewith BracersofBinding
.subzone 272 >> Travel to Tarren Mill
.zoneskip Arathi Highlands,1
step
#completewith BracersofBinding
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly Tarren Mill >> Fly to Tarren Mill
.target Michael Garrett
.zoneskip Hillsbrad Foothills
.zoneskip Undercity,1 << Warrior
step
#optional
.abandon 1048,1113,6521,6626,3341
.dungeon SM
step << !Warrior
#label BracersofBinding
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'varil|r and |cRXP_FRIENDLY_Wordeen|r
.accept 557 >> Accept Bracers of Binding
.target +Keeper Bel'varil
.goto Hillsbrad Foothills,61.60,20.86
.accept 545 >> Accept Dalaran Patrols
.target +Magus Wordeen Voidglare
.goto Hillsbrad Foothills,61.49,20.93
step
.goto Hillsbrad Foothills,62.62,20.74
>>Click the |cRXP_PICK_WANTED: Baron Vardus|r poster next to |cRXP_FRIENDLY_Melisara|r
.accept 566 >> Accept WANTED: Baron Vardus
.target Melisara
.isQuestTurnedIn 549
step
.goto Hillsbrad Foothills,62.28,19.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christoph|r inside the inn
.accept 7321 >> Accept Soothing Turtle Bisque
.turnin 7321 >> Turn in Soothing Turtle Bisque
.target Christoph Jeffcoat
.itemcount 3712,10 
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krusk|r
.accept 503 >> Accept Gol'dir
.target Krusk
.isQuestTurnedIn 498
step << Warrior
#completewith Whirlwind
+|cRXP_WARN_It is VERY important to watch this video on how to cheese Cyclonian for the|r |T132403:0|t[Whirlwind Axe]
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> CLICK HERE
step << Warrior
#ah
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.use 6052 >>|cRXP_WARN_While traveling, use a|r [Nature Protection Potion]
.turnin 1714 >> Turn in Essence of the Exile
.target Bath'rah the Windwatcher
.itemcount 6052,1
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1714 >> Turn in Essence of the Exile
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1712 >>Turn in Cyclonian
.accept 1713 >>Accept The Summoning
.target Bath'rah the Windwatcher
step << Warrior
#label Whirlwind
.goto Alterac Mountains,80.6,62.2
>>Wait for |cRXP_FRIENDLY_Bath'rah's|r roleplay, then kill |cRXP_LOOT_Cyclonian|r and loot him for his |cRXP_LOOT_Heart|r
>>|cRXP_WARN_Equip your|r |T135424:0|t[Gleaming Throwing Axe] |cRXP_WARN_if you haven't|r
.complete 1713,1 
.unitscan Cyclonian
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r and choose the |T132403:0|t[Whirlwind Axe]
.turnin 1713 >>Turn in The Summoning
.turnin 1792 >>Turn in Whirlwind Weapon
.target Bath'rah the Windwatcher
step
#completewith Goldir
>>Kill |cRXP_ENEMY_Baron Vardus|r and loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_One of his spawnpoints is inside the inn in Strahnbrad. You will complete this quest later if he isn't there|r
.complete 566,1 
.unitscan Baron Vardus
.isQuestTurnedIn 549
step
#loop
.goto Alterac Mountains,60.55,43.91,0
.goto Alterac Mountains,63.10,43.47,0
.goto Alterac Mountains,62.67,40.16,0
.goto Alterac Mountains,61.77,43.88,8,0
.goto Alterac Mountains,60.55,43.91,8,0
.goto Alterac Mountains,63.10,43.47,8,0
.goto Alterac Mountains,62.31,41.59,8,0
.goto Alterac Mountains,62.67,40.16,12,0
>>Kill |cRXP_ENEMY_Jailor Borhuin|r. Loot him for his |cRXP_LOOT_Key|r
>>|cRXP_WARN_He has multiple spawn locations in Strahnbrad:|r
>>|cRXP_WARN_Inside the inn on the second floor|r
>>|cRXP_WARN_Inside the building opposite of the inn on the ground floor|r
>>|cRXP_WARN_Inside the town hall|r
.complete 503,1 
.unitscan Jailor Borhuin
.isQuestTurnedIn 498
step
#label Goldir
.goto Alterac Mountains,60.00,43.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gol'dir|r on the second floor of the inn
.turnin 503 >> Turn in Gol'dir
.accept 506 >> Accept Blackmoore's Legacy
.target Gol'dir
.isQuestTurnedIn 498
step
#completewith next
.subzone 272 >>Return to Tarren Mill
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krusk|r
.turnin 506 >> Turn in Blackmoore's Legacy
.accept 507 >> Accept Lord Aliden Perenolde
.target Krusk
.isQuestTurnedIn 498
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
.turnin 566 >> Turn in WANTED: Baron Vardus
.target High Executor Darthalia
.isQuestComplete 566
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shay|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Shay
.subzoneskip 272,1
step << Warrior
#label BracersofBinding
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'varil|r and |cRXP_FRIENDLY_Wordeen|r
.accept 557 >> Accept Bracers of Binding
.target +Keeper Bel'varil
.goto Hillsbrad Foothills,61.60,20.86
.accept 545 >> Accept Dalaran Patrols
.target +Magus Wordeen Voidglare
.goto Hillsbrad Foothills,61.49,20.93
step << skip
#completewith next
.goto Alterac Mountains,42.2,77.8,90,0
.goto Alterac Mountains,46.2,78.2,90,0
>>Kill |cRXP_ENEMY_Mountain Lions|r. Loot them for a |T134368:0|t[|cRXP_LOOT_Fresh Carcass|r]
>>|T134368:0|t[|cRXP_LOOT_Fresh Carcass|r] |cRXP_WARN_disappears after 30 minutes|r
.collect 5810,1 
.mob Feral Mountain Lion
.mob Mountain Lion
.mob Starving Mountain Lion
.mob Hulking Mountain Lion
step << skip
.goto Alterac Mountains,37.56,68.22
.use 5810 >> Use the |T134368:0|t[|cRXP_LOOT_Fresh Carcass|r] inside Growless Cave to summon |cRXP_ENEMY_Frostmaw|r. Kill him and loot him for his |cRXP_LOOT_Mane|r
>>|cRXP_WARN_This quest can be difficult, so clear around the cave before summoning|r
.complete 1136,1 
.unitscan Frostmaw
step
#hardcore
#completewith next
.goto Alterac Mountains,39.90,80.93,0
+|cRXP_WARN_Be careful of the |cRXP_ENEMY_Alliance Guards|r at the Alterac Valley cave as you travel west! They have a large agro pull and will kill you in 2 hits|r
>>|cRXP_WARN_Check the map to see their location|r
.unitscan Southshore Guard
step
#loop
.goto Alterac Mountains,10.30,78.50,0
.goto Alterac Mountains,10.30,78.50,60,0
.goto Alterac Mountains,20.50,75.20,60,0
.goto Alterac Mountains,21.30,53.50,60,0
.goto Alterac Mountains,17.80,56.20,60,0
.goto Alterac Mountains,21.30,53.50,60,0
.goto Alterac Mountains,20.50,75.20,60,0
>>Kill |cRXP_ENEMY_Dalaran Summoners|r and |cRXP_ENEMY_Elemental Slaves|r. Loot them for their |cRXP_LOOT_Bracers|r
.complete 545,1 
.mob +Dalaran Summoner
.complete 545,2 
.mob +Elemental Slave
.complete 557,1 
.mob +Elemental Slave
step << !Hunter
#ah
#completewith next
.aura 12608 >>|cRXP_WARN_Consume your|r |T134816:0|t[Catseye Elixir] |cRXP_WARN_as you approach Lord Aliden Perenolde's homestead|r
.use 10592
.itemcount 10592,1
step << Hunter
#completewith next
.cast 19885 >>|cRXP_WARN_Cast|r |T132320:0|t[Track Hidden] |cRXP_WARN_as you approach Lord Aliden Perenolde's homestead|r
step
.goto Alterac Mountains,39.28,14.52
>>Kill |cRXP_ENEMY_Lord Aliden Perenolde|r
>>|cRXP_WARN_Be mindful of |cRXP_ENEMY_Syndicate Assassins|r|cRXP_WARN_.|r |cRXP_ENEMY_Aliden|r |cRXP_WARN_uses Power Word: Shield, casts Renew, and will sleep pets and other players|r
.complete 507,1 
.unitscan Lord Aliden Perenolde
.mob Syndicate Assassin
.isQuestTurnedIn 506
step
.goto Alterac Mountains,39.30,14.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elysa|r
.turnin 507 >> Turn in Lord Aliden Perenolde
.accept 508 >> Accept Taretha's Gift
.target Elysa
.isQuestTurnedIn 506
step
#loop
.goto Alterac Mountains,47.8,17.1,0
.goto Alterac Mountains,53.6,20.6,0
.goto Alterac Mountains,56.2,26.8,0
.goto Alterac Mountains,58.1,29.9,0
.goto Alterac Mountains,59.7,43.9,0
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9,70,0
>>Search for |cRXP_ENEMY_Baron Vardus|r in each camp and the Strahnbrad's inn. Kill him and loot him for his |cRXP_LOOT_Head|r
.complete 566,1 
.unitscan Baron Vardus
.isQuestTurnedIn 549
step
#completewith HillsbradEnd
.subzone 272 >> Return to Tarren Mill
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
.turnin 566 >> Turn in WANTED: Baron Vardus
.target High Executor Darthalia
.isQuestComplete 566
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krusk|r
.turnin 508 >> Turn in Taretha's Gift
.target Krusk
.isOnQuest 508
step
#label HillsbradEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wordeen|r and |cRXP_FRIENDLY_Bel'varil|r
.turnin 545 >> Turn in Dalaran Patrols
.target +Magus Wordeen Voidglare
.goto Hillsbrad Foothills,61.56,20.89
.turnin 557 >> Turn in Bracers of Binding
.target +Keeper Bel'varil
.goto Hillsbrad Foothills,61.49,20.93
step
#completewith MyzraelPickup
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarise|r
.fly Hammerfall >> Fly to Hammerfall
.target Zarise
.zoneskip Arathi Highlands
step
#optional
.abandon 566,518,519,520,
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zengu|r
.turnin 638 >> Turn in Trollbane
.isOnQuest 638
.target Zengu
step
.goto Arathi Highlands,74.30,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
.accept 678 >> Accept Call to Arms
.target Drum Fel
step
.goto Arathi Highlands,72.64,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'mul|r
.accept 675 >> Accept Raising Spirits
.target Gor'mul
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
.turnin 675 >>Turn in Raising Spirits
.accept 701 >> Accept Guile of the Raptor
.accept 673 >> Accept Foul Magics << Rogue
.target Tor'gan
.solo << Rogue
step << Rogue
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
.turnin 675 >>Turn in Raising Spirits
.accept 701 >> Accept Guile of the Raptor
.target Tor'gan
.group
step
#label MyzraelPickup
.goto Arathi Highlands,62.50,33.80
>>Click the |cRXP_PICK_Shards of Myzrael|r
.accept 642 >> Accept The Princess Trapped
step
#loop
.goto Arathi Highlands,84.32,30.93,0
.goto Arathi Highlands,80.80,39.91,20,0
.goto Arathi Highlands,82.25,38.94,20,0
.goto Arathi Highlands,82.39,36.78,20,0
.goto Arathi Highlands,83.56,35.02,20,0
.goto Arathi Highlands,84.87,31.67,20,0
.goto Arathi Highlands,87.10,31.31,20,0
.goto Arathi Highlands,84.73,28.99,20,0
.goto Arathi Highlands,84.32,30.93,20,0
>>Kill |cRXP_ENEMY_Drywhisker Kobolds|r, |cRXP_ENEMY_Diggers|r and |cRXP_ENEMY_Surveyors|r. Loot them for their |cRXP_LOOT_Motes of Myzrael|r
.complete 642,1 
.mob Drywhisker Kobold
.mob Drywhisker Digger
.mob Drywhisker Surveyor
step
.goto Arathi Highlands,84.30,30.95
>>Click the |cRXP_PICK_Iridescent Shards|r towards the back of the cave
.turnin 642 >> Turn in The Princess Trapped
.accept 651 >> Accept Stones of Binding
step << skip
.goto Arathi Highlands,83.93,28.49
.goto Arathi Highlands,73.66,29.11,30 >>|cRXP_WARN_Jump onto a node or run to the back of the cave. Perform a Logout Skip by logging out and back in. You'll have to do a jump as you logout|r
.link https://www.youtube.com/watch?v=RSedlGeYX_k&ab_channel=RestedXP >> |cRXP_WARN_CLICK HERE for an example|r
step
.goto Arathi Highlands,66.70,29.80
>>Loot the |cRXP_PICK_Stone of East Binding|r for the |cRXP_LOOT_Cresting Key|r
>>|cRXP_ENEMY_Cresting Exiles|r |cRXP_WARN_have Frost Armor and Frost Nova|r
.complete 651,2 
.mob Cresting Exile
step << Warrior
#season 2
.train 409163,1
#loop
.goto Arathi Highlands,66.56,63.98,0
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98,70,0
>>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for the |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r]
.collect 216483,1
.mob Witherbark Shadow Hunter
.mob Witherbark Axe Thrower
.mob Witherbark Headhunter
.mob Witherbark Witch Doctor
step << Warrior
#season 2
.train 409163,1
#label WitherbarkCave
#completewith next
.goto Arathi Highlands,68.363,75.806,25 >>Enter the Witherbark Cave
step << Warrior
#season 2
.train 409163,1
#completewith next
.goto Arathi Highlands,69.502,81.924
.cast 436278 >> |cRXP_WARN_Use the|r |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r] |cRXP_WARN_at the |cRXP_PICK_Gong|r inside the cave|r
.use 216483 >>|cRXP_WARN_This will spawn a |cRXP_ENEMY_Witherbark Goliath|r (lvl 35 elite) as well as 2 additional mobs|r
step << Warrior
#season 2
.train 409163,1
.goto Arathi Highlands,69.61,81.60
>>Kill the |cRXP_ENEMY_Witherbark Goliath|r. Loot it for the |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r]
.collect 213109,1
.mob Witherbark Goliath
step << Warrior
#season 2
#label FocusedRage
.train 409163 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r] |cRXP_WARN_to train|r |T132345:0|t[Focused Rage]
.use 213109
step
.goto Arathi Highlands,52.00,50.80
>>Loot the |cRXP_PICK_Stone of Outer Binding|r for the |cRXP_LOOT_Thundering Key|r
>>|cRXP_ENEMY_Thundering Exiles|r |cRXP_WARN_have powerful burst damage|r
.complete 651,3 
.mob Thundering Exile
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
>>Use the |T134325:0|t[Bug Catching Net] on a |cRXP_ENEMY_Hay Weevil|r
.goto Arathi Highlands,30.7,28.7
.use 213562
.collect 213568,1 
.mob Hay Weevil
step
.goto Arathi Highlands,25.50,30.10
>>Loot the |cRXP_PICK_Stone of West Binding|r for the |cRXP_LOOT_Burning Key|r
>>|cRXP_WARN_If you find yourself in danger, use a|r |T133438:0|t[Cresting Charm] |cRXP_WARN_on|r |cRXP_ENEMY_Burning Exiles|r
.complete 651,1 
.mob Burning Exile
.itemcount 4481,1
.use 4481
step
.goto Arathi Highlands,25.50,30.10
>>Loot the |cRXP_PICK_Stone of West Binding|r for the |cRXP_LOOT_Burning Key|r
.complete 651,1 
.mob Burning Exile
.itemcount 4481,<1
step << Rogue
#hardcore
#completewith next
+|cRXP_WARN_This next quest can be quite hard, be extra careful|r
step << Rogue
#loop
.goto Arathi Highlands,29.45,64.39,0
.goto Arathi Highlands,29.63,62.95,0
.goto Arathi Highlands,29.45,64.39,50,0
.goto Arathi Highlands,29.63,62.95,50,0
>>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Orb|r
>>|cRXP_WARN_She has two spawn locations in the eastern side of the keep (outside). You can stealth to her|r
>>|cRXP_WARN_She is elite but can be killed solo. Use|r |T132155:0|t[Gouge] |cRXP_WARN_to restore energy and kite her. Apply|r |T132274:0|t[Crippling Poison] |cRXP_WARN_for additional safety|r
>>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Syndicate Prowlers|r|cRXP_WARN_, they will not body pull as you agro|r |cRXP_ENEMY_Marez Cowl|r
.link https://www.youtube.com/watch?v=MpvcEPTV30I&ab_channel=RestedXP >> Click here for video reference
.complete 673,1 
.unitscan Marez Cowl
.solo
step << Warlock
#season 2
.train 426443,1
#completewith SyndicateConjuror
+|cRXP_WARN_It is recommended you find additional party members for acquiring the|r |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r] |cRXP_WARN_as it requires killing elites in Stromgarde Keep|r
step << Warlock
#season 2
.train 426443,1
#completewith next
.subzone 324 >> Travel to Stromgarde Keep
step << Warlock
#season 2
#label SyndicateConjuror
.train 426443,1
#loop
.goto Arathi Highlands,29.06,60.96,0
.goto Arathi Highlands,26.04,62.80,40,0
.goto Arathi Highlands,29.47,64.14,40,0
.goto Arathi Highlands,29.06,60.96,40,0
>>Kill |cRXP_ENEMY_Syndicate Conjurors|r. Loot them for their |T348282:0|t[|cRXP_LOOT_Conjuror's Pendants|r]
>>Kill a |cRXP_ENEMY_Voidwalker Minion|r while you are channelling |T136163:0|t[Drain Soul] on it to receive a |T132885:0|t[|cRXP_LOOT_Soul of the Void|r]
.collect 213573,10
.collect 213572,1
.mob Syndicate Conjuror
.mob Voidwalker Minion
step << Warlock
#season 2
#completewith next
.train 426443,1
.goto Arathi Highlands,29.292,62.283,10 >> |cRXP_WARN_Enter the large house on the lower level of Stromgade Keep, and head up to the 2nd floor|r
step << Warlock
#season 2
#completewith next
.train 426443,1
.goto Arathi Highlands,29.077,63.079
.cast 434994 >> |cRXP_WARN_Use the|r |T348282:0|t[|cRXP_LOOT_Conjuror's Pendants|r] |cRXP_WARN_up stairs next to the floating|r |cRXP_PICK_Void Prism|r |cRXP_WARN_to summon a level 36 elite |cRXP_ENEMY_Void Seeker|r
.use 213573
step << Warlock
#season 2
.train 426443,1
.goto Arathi Highlands,29.077,63.079
>>Kill the |cRXP_ENEMY_Void Seeker|r. Loot it for the |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r]
.collect 213098,1
.mob Void Seeker
step << Warlock
#season 2
.train 426443 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r] |cRXP_WARN_to train|r |T136133:0|t[Invocation]
.use 213098
.itemcount 213098,1
step
.goto Arathi Highlands,36.20,57.30
>>Click the |cRXP_PICK_Stone of Inner Binding|r
>>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Rumbling Exiles|r|cRXP_WARN_. Their stun has no diminishing return|r
.turnin 651 >> Turn in Stones of Binding
.accept 652 >> Accept Breaking the Keystone
step << Hunter
#loop
.line Arathi Highlands,67.3,31.1,61.8,43.0,47.4,56.8,30.5,54.6,21.1,36.5,26.4,30.3,26.0,45.4,30.5,54.6,47.4,56.8,61.8,43.0,67.3,31.1
.goto Arathi Highlands,67.30,31.10,70,0
.goto Arathi Highlands,61.80,43.00,70,0
.goto Arathi Highlands,47.40,56.80,70,0
.goto Arathi Highlands,30.50,54.60,70,0
.goto Arathi Highlands,21.10,36.50,70,0
.goto Arathi Highlands,26.40,30.30,70,0
.goto Arathi Highlands,26.00,45.40,70,0
.goto Arathi Highlands,30.50,54.60,70,0
.goto Arathi Highlands,47.40,56.80,70,0
.goto Arathi Highlands,61.80,43.00,70,0
.goto Arathi Highlands,67.30,31.10,0
>>|cRXP_WARN_Use|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to find|r |cRXP_ENEMY_Fozruk|r
>>Make sure to kill |cRXP_ENEMY_Sleeby|r and the rest of the |cRXP_ENEMY_Kobolds|r first, you can kill one add at a time and reset the fight
>>Kill |cRXP_ENEMY_Fozruk|r by kiting him around Refuge Point. Loot him for his |cRXP_LOOT_Rod of Order|r
>>|cRXP_WARN_This is a difficult quest solo, consider skipping this step if you can't group up|r
.complete 652,1 
.link https://youtu.be/yM9OfJoj5Z8 >> Click here for video reference
.unitscan Fozruk
step << !Hunter
#loop
.line Arathi Highlands,67.3,31.1,61.8,43.0,47.4,56.8,30.5,54.6,21.1,36.5,26.4,30.3,26.0,45.4,30.5,54.6,47.4,56.8,61.8,43.0,67.3,31.1
.goto Arathi Highlands,67.30,31.10,70,0
.goto Arathi Highlands,61.80,43.00,70,0
.goto Arathi Highlands,47.40,56.80,70,0
.goto Arathi Highlands,30.50,54.60,70,0
.goto Arathi Highlands,21.10,36.50,70,0
.goto Arathi Highlands,26.40,30.30,70,0
.goto Arathi Highlands,26.00,45.40,70,0
.goto Arathi Highlands,30.50,54.60,70,0
.goto Arathi Highlands,47.40,56.80,70,0
.goto Arathi Highlands,61.80,43.00,70,0
.goto Arathi Highlands,67.30,31.10,0
>>Find and kill |cRXP_ENEMY_Fozruk|r. Loot him for his |cRXP_LOOT_Rod of Order|r. Don't go out of your way to finish this step, he patrols the whole zone
>>|cRXP_WARN_This is a VERY HARD elite to solo, consider skipping this step if you're not able to group up or split pull him|r << !Warlock
>>|cRXP_ENEMY_Fozruk|r |cRXP_WARN_can be feared, and|r |cRXP_ENEMY_Sleeby|r |cRXP_WARN_can heal, this is a VERY HARD quest to solo, consider skipping this step if you're not able to group up or split pull him|r << Warlock
.complete 652,1 
.link https://youtu.be/8Exjtb2ohPQ >> Click here for video reference
.link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Click here to watch a video about splitpulling (useful to learn)
.unitscan Fozruk
step
.goto Arathi Highlands,36.07,58.09
>>Click the |cRXP_PICK_Keystone|r
>>|cRXP_WARN_If you are in a group, hand in this quest while with your party! |cRXP_ENEMY_Thenan|r (level 42 Elite) will spawn. You can either kill him or run away and reset him if you're solo|r
.turnin 652 >> Turn in Breaking the Keystone
.isQuestComplete 652
step
.goto Arathi Highlands,36.07,58.09
>>Click the |cRXP_PICK_Keystone|r
.accept 688 >> Accept Myzrael's Allies
.isQuestTurnedIn 652
step << skip
.goto Arathi Highlands,36.01,79.24
.goto Arathi Highlands,48.65,55.79,30 >>|cRXP_WARN_Jump onto the mushroom in the back of the cave. Perform a Logout Skip by logging out and back in|r
.link https://www.youtube.com/watch?v=2y8T4MU4jm4&ab_channel=RestedXP >> |cRXP_WARN_CLICK HERE for an example|r
step
#completewith next
>>Kill |cRXP_ENEMY_Highland Fleshstalkers|r. Loot them for their |cRXP_LOOT_Hearts|r
.complete 701,1 
.mob Highland Fleshstalker
step
#loop
.goto Arathi Highlands,53.81,74.59,0
.goto Arathi Highlands,52.06,74.38,50,0
.goto Arathi Highlands,53.81,74.59,50,0
.goto Arathi Highlands,53.58,76.20,50,0
.goto Arathi Highlands,54.52,78.00,15,0
.goto Arathi Highlands,53.68,79.95,20,0
>>Kill |cRXP_ENEMY_Boulderfist Brutes|r and |cRXP_ENEMY_Boulderfist Magi|r
>>|cRXP_WARN_Be careful of the Magi's Frost Armor and Frost Nova|r
>>|cFFEB144CBe **EXTREMELY CAUTIOUS** of the rare spawn "Molok the Crusher" which is a non-elite that hits for 250-450|r
.complete 678,1 
.mob +Boulderfist Brute
.complete 678,2 
.mob +Boulderfist Magus
.unitscan Molok the Crusher
step
#loop
.goto Arathi Highlands,49.71,68.69,0
.goto Arathi Highlands,52.77,63.56,70,0
.goto Arathi Highlands,50.22,65.00,70,0
.goto Arathi Highlands,49.71,68.69,70,0
.goto Arathi Highlands,48.07,74.25,70,0
.goto Arathi Highlands,46.21,76.74,70,0
.goto Arathi Highlands,46.04,79.55,70,0
.goto Arathi Highlands,48.59,80.56,70,0
>>Kill |cRXP_ENEMY_Highland Fleshstalkers|r. Loot them for their |cRXP_LOOT_Hearts|r
.complete 701,1 
.mob Highland Fleshstalker
step
.goto Arathi Highlands,36.07,58.09
>>Click the |cRXP_PICK_Keystone|r
>>|cRXP_WARN_If you are in a group, hand in this quest while with your party! |cRXP_ENEMY_Thenan|r, a level 42 Elite will spawn. You can either kill him or run away and reset him if you're solo|r
.turnin 652 >> Turn in Breaking the Keystone
.isQuestComplete 652
step
.goto Arathi Highlands,36.07,58.09
>>Click the |cRXP_PICK_Keystone|r
.accept 688 >> Accept Myzrael's Allies
.isQuestTurnedIn 652
step
#completewith next
.goto Arathi Highlands,73.52,33.20,150 >> Return to Hammerfall
.subzoneskip 321
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
.turnin 701 >> Turn in Guile of the Raptor
.accept 702 >> Accept Guile of the Raptor
.accept 673 >> Accept Foul Magics
.target Tor'gan
.group
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
.turnin 673 >> Turn in Foul Magics << Rogue
.turnin 701 >> Turn in Guile of the Raptor
.accept 702 >> Accept Guile of the Raptor
.solo << Rogue
step
.goto Arathi Highlands,74.40,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaruk|r
.turnin 688 >> Turn in Myzrael's Allies
.target Zaruk
.isQuestTurnedIn 652
step
.goto Arathi Highlands,72.64,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'mul|r
.turnin 702 >> Turn in Guile of the Raptor
.target Gor'mul
step
.goto Arathi Highlands,74.20,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
.turnin 678 >> Turn in Call to Arms
.accept 679 >> Accept Call to Arms
.target Drum Fel
.group
step
.goto Arathi Highlands,74.20,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
.turnin 678 >> Turn in Call to Arms
.target Drum Fel
step
.goto Arathi Highlands,73.84,32.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Adegwa|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Adegwa
.subzoneskip 321,1
step
.goto Arathi Highlands,72.64,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'mul|r
.accept 847 >> Accept Guile of the Raptor
.target Gor'mul
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
.turnin 847 >> Turn in Guile of the Raptor
.target Tor'gan
step
.goto Arathi Highlands,73.41,36.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gregory Victor|r
.accept 6622 >> Accept Triage
.target Doctor Gregory Victor
.skill firstaid,<225,1
step
.goto Arathi Highlands,73.03,36.84
.use 16991 >> |cRXP_WARN_Channel the|r |T133682:0|t[Triage Bandage] |cRXP_WARN_on the |cRXP_FRIENDLY_Horde Soldiers|r. Prioritize |cRXP_FRIENDLY_Critically Injured Soldiers|r first|r
.complete 6622,1 
.target Critically Injured Horde Soldier
.target Badly Injured Horde Soldier
.target Injured Horde Soldier
.isOnQuest 6622
step
.goto Arathi Highlands,73.41,36.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gregory Victor|r
.turnin 6622 >> turnin Triage
.target Doctor Gregory Victor
.isQuestComplete 6622
step
#optional
.destroy 16991 >> |cRXP_WARN_Delete the|r |T133682:0|t[Triage Bandage]|cRXP_WARN_. You no longer need it|r
.isQuestTurnedIn 6622
step
.goto Arathi Highlands,74.00,33.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korin Fel|r
.accept 680 >> Accept The Real Threat
.target Korin Fel
.group
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zengu|r
.accept 639 >> Accept Sigil of Strom
.target Zengu
.group
step
#completewith next
.subzone 324 >> Travel to Stromgarde Keep
.group
step
#completewith next
>>Kill |cRXP_ENEMY_Boulderfist Shamans|r and |cRXP_ENEMY_Boulderfist Lords|r
.complete 679,1 
.mob +Boulderfist Shaman
.complete 679,2 
.mob +Boulderfist Lord
.isOnQuest 679
.group 3
step
.goto Arathi Highlands,18.74,66.30,30,0
.goto Arathi Highlands,19.6,66.9
>>Kill |cRXP_ENEMY_Or'Kalar|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Or'Kalar|r |cRXP_WARN_can spawn in two areas around the Tower of Arathor's base|r
.complete 680,1 
.unitscan Or'Kalar
.isOnQuest 680
.group 3
step
#loop
.goto Arathi Highlands,18.91,65.80,0
.goto Arathi Highlands,18.91,65.80,50,0
.goto Arathi Highlands,20.05,65.43,50,0
.goto Arathi Highlands,20.50,66.72,50,0
.goto Arathi Highlands,21.49,67.03,50,0
.goto Arathi Highlands,21.84,65.41,50,0
.goto Arathi Highlands,23.64,65.69,50,0
.goto Arathi Highlands,22.25,67.74,50,0
.goto Arathi Highlands,20.89,69.19,50,0
.goto Arathi Highlands,19.51,69.14,50,0
.goto Arathi Highlands,18.26,67.42,50,0
>>Kill |cRXP_ENEMY_Boulderfist Shamans|r and |cRXP_ENEMY_Boulderfist Lords|r
.complete 679,1 
.mob +Boulderfist Shaman
.complete 679,2 
.mob +Boulderfist Lord
.isOnQuest 679
.group 3
step
#completewith next
>>Kill |cRXP_ENEMY_Syndicate|r. Loot them for the |cRXP_LOOT_Sigil of Strom|r
>>|cRXP_WARN_It has a very low drop rate. Be careful of respawns. Be careful of|r |cRXP_ENEMY_Syndicate Prowlers|r|cRXP_WARN_, who can net and disarm|r
.complete 639,1 
.mob Syndicate Prowler
.mob Syndicate Conjuror
.mob Syndicate Magus
.mob Syndicate Thief
.isOnQuest 639
.group 3
step
#loop
.goto Arathi Highlands,29.45,64.39,0
.goto Arathi Highlands,29.63,62.95,0
.goto Arathi Highlands,29.45,64.39,50,0
.goto Arathi Highlands,29.63,62.95,50,0
>>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Orb|r
>>|cRXP_WARN_She has two spawn locations in the eastern side of the keep|r
.complete 673,1 
.unitscan Marez Cowl
.isOnQuest 673
.group 3
step
#loop
.goto Arathi Highlands,25.73,62.60,0
.goto Arathi Highlands,25.73,62.60,40,0
.goto Arathi Highlands,27.79,65.64,40,0
.goto Arathi Highlands,26.86,60.37,40,0
.goto Arathi Highlands,29.53,61.66,40,0
>>Kill |cRXP_ENEMY_Syndicate|r. Loot them for the |cRXP_LOOT_Sigil of Strom|r
>>|cRXP_WARN_It has a very low drop rate. Be careful of respawns. Be careful of|r |cRXP_ENEMY_Syndicate Prowlers|r|cRXP_WARN_, who can net and disarm|r
.complete 639,1 
.mob Syndicate Prowler
.mob Syndicate Conjuror
.mob Syndicate Magus
.mob Syndicate Thief
.isOnQuest 639
.group 3
step << skip
#completewith next
#softcore
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
.group
step
#completewith StromgardeTurnins
.goto Arathi Highlands,73.52,33.20,150 >> Return to Hammerfall
.subzoneskip 321
.group
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
.turnin 673 >> Turn in Foul Magics
.target Tor'gan
.isQuestComplete 673
.group
step
.goto Arathi Highlands,74.25,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
.turnin 679 >> Turn in Call to Arms
.isQuestComplete 679
.target Drum Fel
.group
step
.goto Arathi Highlands,74.00,33.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korin Fel|r
.turnin 680 >> Turn in The Real Threat
.target Korin Fel
.isQuestComplete 680
.group
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zengu|r
.turnin 639 >> Turn in Sigil of Strom
.target Zengu
.isQuestComplete 639
.group
step
#label StromgardeTurnins
#optional
.goto Arathi Highlands,74.40,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaruk|r
.accept 687 >> Accept Theldurin the Lost
.target Zaruk
.isQuestTurnedIn 688
.group
step
#completewith next
.goto Arathi Highlands,21.6,75.6,30,0
.goto Arathi Highlands,22.1,79.9,25 >> Run through the cave to Faldir's Cove
step
.goto Arathi Highlands,31.83,82.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lolo|r
.accept 663 >> Accept Land Ho!
.target Lolo the Lookout
step
.goto Arathi Highlands,32.28,81.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
.turnin 663 >> Turn in Land Ho!
.target Shakes O'Breen
step
.goto Arathi Highlands,32.78,81.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nilzlix|r
.accept 662 >> Accept Deep Sea Salvage
.target First Mate Nilzlix
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steelgut|r and |cRXP_FRIENDLY_Phizzlethorpe|r
.accept 664 >> Accept Drowned Sorrows
.target +Captain Steelgut
.goto Arathi Highlands,34.00,80.79
.accept 665 >> Accept Sunken Treasure
.target +Professor Phizzlethorpe
.goto Arathi Highlands,33.87,80.55
step
.goto Arathi Highlands,35.7,79.7
>>Wait for |cRXP_FRIENDLY_Phizzlethorpe's|r roleplay, then kill the two |cRXP_ENEMY_Vengeful Surges|r that spawn.
>>|cRXP_WARN_These mobs are level 40. Get them off of |cRXP_FRIENDLY_Phizzlethorpe|r |cRXP_WARN_as soon as you can|r
.complete 665,1 
.unitscan Vengeful Surge
step
.goto Arathi Highlands,33.8,80.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
.turnin 665 >> Turn in Sunken Treasure
.accept 666 >> Accept Sunken Treasure
.target Doctor Draxlegauge
step << !Druid !Warlock !Shaman
#ah
#completewith SLog
.aura 7178 >>|cRXP_WARN_Drink an|r |T134797:0|t[Elixir of Water Breathing]
.use 5996
.itemcount 5996,1
step
#sticky
#completewith Daggerspines
+|cRXP_ENEMY_Daggerspine Raiders|r |cRXP_WARN_have a Net ability, so be very careful of your breath if you haven't used an|r |T134797:0|t[Elixir of Water Breathing] << !Druid !Warlock !Shaman
+|cRXP_ENEMY_Daggerspine Raiders|r |cRXP_WARN_have a Net ability, so be sure to keep Water Breathing applied|r << Warlock/Shaman
+|cRXP_WARN_Use Aquatic Form when your breath gets low|r << Druid
step
#completewith ElvenGems
>>Kill |cRXP_ENEMY_Daggerspine Raiders|r and |cRXP_ENEMY_Sorceresses|r
.complete 664,1 
.mob +Daggerspine Raider
.complete 664,2 
.mob +Daggerspine Sorceress
step
#completewith SLog
>>Find |cRXP_PICK_Calcified Elven Gems|r. Loot them for |cRXP_LOOT_Elven Gems|r
.use 4491 >>|cRXP_WARN_Equip your|r |T133149:0|t[Goggles of Gem Hunting] |cRXP_WARN_to see them on your minimap|r
.complete 666,1 
step
.goto Arathi Highlands,23.40,85.09
>>Loot the |cRXP_PICK_Book|r for |cRXP_LOOT_Maiden's Folly Log|r
>>|cRXP_WARN_The log is on the ship's mid-level, towards its front|r
.complete 662,2 
step
.goto Arathi Highlands,23.04,84.51
>>Loot the |cRXP_PICK_Unfurled Parchment|r for |cRXP_LOOT_Maiden's Folly Charts|r
>>|cRXP_WARN_The charts are on the ship's mid-level, towards its center|r
.complete 662,1 
step
.goto Arathi Highlands,20.46,85.61
>>Loot the |cRXP_PICK_Unfurled Parchment|r for |cRXP_LOOT_Spirit of Silverpine Charts|r
>>|cRXP_WARN_The charts are on the ship's mid-level, towards its front, on a crate next to a cannon|r
.complete 662,3 
step
#label SLog
.goto Arathi Highlands,20.65,85.10
>>Loot the |cRXP_PICK_Book|r for |cRXP_LOOT_Spirit of Silverpine Log|r
>>|cRXP_WARN_The log is on the ship's lowest-level, towards its front, laying in dirt|r
.complete 662,4 
step
#label ElvenGems
#loop
.goto Arathi Highlands,19.30,84.10,0
.goto Arathi Highlands,19.30,84.10,60,0
.goto Arathi Highlands,17.70,89.50,60,0
.goto Arathi Highlands,25.50,90.80,60,0
.goto Arathi Highlands,24.10,85.70,60,0
.goto Arathi Highlands,23.20,89.70,60,0
>>Find |cRXP_PICK_Calcified Elven Gems|r. Loot them for |cRXP_LOOT_Elven Gems|r
.use 4491 >>|cRXP_WARN_Equip your|r |T133149:0|t[Goggles of Gem Hunting] |cRXP_WARN_to see them on your minimap|r
.complete 666,1 
step
#label Daggerspines
#loop
.goto Arathi Highlands,21.05,84.62,0
.goto Arathi Highlands,21.05,84.62,60,0
.goto Arathi Highlands,23.44,84.76,60,0
.goto Arathi Highlands,25.38,86.03,60,0
.goto Arathi Highlands,23.14,89.88,60,0
.goto Arathi Highlands,21.55,86.67,60,0
.goto Arathi Highlands,18.75,85.31,60,0
.goto Arathi Highlands,19.76,84.00,60,0
>>Finish killing |cRXP_ENEMY_Daggerspine Raiders|r and |cRXP_ENEMY_Sorceresses|r
.complete 664,1 
.mob +Daggerspine Raider
.complete 664,2 
.mob +Daggerspine Sorceress
step
#completewith next
+|cRXP_WARN_Re-equip your usual helm|r
step
.goto Arathi Highlands,32.77,81.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nilzlix|r
.turnin 662 >> Turn in Deep Sea Salvage
.target First Mate Nilzlix
step
.goto Arathi Highlands,33.86,80.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draxlegauge|r
.turnin 666 >> Turn in Sunken Treasure
.accept 668 >> Accept Sunken Treasure
.target Doctor Draxlegauge
step
.goto Arathi Highlands,34.00,80.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steelgut|r
.turnin 664 >> Turn in Drowned Sorrows
.target Captain Steelgut
step
.goto Arathi Highlands,32.28,81.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
.turnin 668 >> Turn in Sunken Treasure
.accept 669 >> Accept Sunken Treasure
.target Shakes O'Breen
]]);
