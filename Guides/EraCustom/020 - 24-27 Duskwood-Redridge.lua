RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 20-30
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 24-27 Duskwood/Redridge
#next 27-29 Wetlands/Hillsbrad;RestedXP Alliance 30-40\29-32 Duskwood
step << Hunter
#xprate >1.59
#sticky
#label PetTrain
.goto 1453,61.576,15.998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r inside
.train 4198 >> Train your pet spells
.target Karrina Mekenda
step << Hunter
#xprate >1.59
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r inside
.trainer >> Train your class spells
.target Einris Brightspear
step
#xprate >1.59
#sticky
#requires PetTrain << Hunter
#label UnsentLetter
>>|cRXP_WARN_Use |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r] to start the quest|r
.accept 373 >> Accept The Unsent Letter
.use 2874 
.dungeon DM
step
.goto Stormwind City,55.21,7.04
#requires PetTrain << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Billibub Cogspinner|r doesn't have one|r
.bronzetube
.target Billibub Cogspinner
step
#xprate >1.59 << !Hunter
#requires UnsentLetter
.goto StormwindClassic,48.079,30.913,10,0
.goto StormwindClassic,49.193,30.285
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
.turnin 373 >> Turn in The Unsent Letter
.accept 389 >> Accept Bazil Thredd
.target Baros Alexston
.dungeon DM
step << Warrior
#xprate >1.59
#optional
#completewith next
.goto 1453,74.592,51.567,15,0
.goto 1453,78.011,47.797,15,0
.goto 1453,80.030,45.591,12 >> Travel toward |cRXP_FRIENDLY_Wu Shen|r inside the Command Center
step << Warrior
#xprate >1.59
.goto 1453,78.673,45.791
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu Shen|r inside upstairs
.trainer >> Train your class spells
.target Wu Shen
step << Rogue
#xprate >1.59
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
.trainer >> Train your class spells
.target Osborne the Night Man
step
.goto Stormwind City,64.201,60.575
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Gump|r inside
>>|cRXP_BUY_Buy|r |T133849:0|t[Stormwind Seasoning Herbs] from her
.collect 2665,1,90,1 
.target Felicia Gump
step << Paladin
#xprate >1.59
#optional
#completewith next
.goto 1453,42.917,34.221,15,0
.goto 1453,41.385,31.547,15,0
.goto 1453,39.810,29.788,15
.goto StormwindClassic,42.51,33.51,20 >> Travel to |cRXP_FRIENDLY_Duthorian Rall|r inside the Stormwind Cathedral
step << Paladin
#xprate >1.59
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r. He will give you the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r]
.use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
.collect 6776,1,1649 
.accept 1649 >>Accept The Tome of Valor
.target Duthorian Rall
.dungeon !DM
step << Paladin
#xprate >1.59
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.turnin 1649 >>Turn in The Tome of Valor
.accept 1650 >>Accept The Tome of Valor
.target Duthorian Rall
.dungeon !DM
step << Paladin
#xprate >1.59
#optional
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.turnin 1649 >>Turn in The Tome of Valor
.accept 1650 >>Accept The Tome of Valor
.target Duthorian Rall
.dungeon DM
step << Paladin
#xprate >1.59
#optional
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r. He will give you the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r]
.use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
.collect 6776,1,1649 
.accept 1649 >>Accept The Tome of Valor
.target Duthorian Rall
.dungeon DM
step << Paladin
#xprate >1.59
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.turnin 1652 >>Turn in The Tome of Valor
.target Duthorian Rall
.dungeon DM
step << Paladin
#xprate >1.59
.goto StormwindClassic,38.58,32.00,12,0
.goto StormwindClassic,38.67,32.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.trainer >> Train your class spells
.target Arthur the Faithful
step << Warlock
#sticky
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb. Go downstairs
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus]|cRXP_BUY_ which you will have in a second. If you have extra gold also buy them for your|r |T136221:0|t[Voidwalker]
.target Spackle Thornberry
step << Warlock
.goto Stormwind City,25.25,78.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
.turnin 1738 >> Turn in Heartswood
.turnin 65602 >> Turn in What Is Love?
.accept 1739 >> Accept The Binding
.accept 65603 >> Accept The Binding
.target Gakin the Darkbinder
.isOnQuest 65602
step << Warlock
#optional
.goto Stormwind City,25.25,78.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
.turnin 1738 >> Turn in Heartswood
.accept 1739 >> Accept The Binding
.accept 65603 >> Accept The Binding
.target Gakin the Darkbinder
.isQuestTurnedIn 65602
step << Warlock
#optional
.goto Stormwind City,25.25,78.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
.turnin 1738 >> Turn in Heartswood
.accept 1739 >> Accept The Binding
.target Gakin the Darkbinder
step << Warlock
#completewith next
.goto StormwindClassic,25.2,80.7,18,0
.goto StormwindClassic,23.2,79.5,18,0
.goto StormwindClassic,26.3,79.5,18,0
.goto StormwindClassic,25.154,77.406
>>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
.cast 8674 >> |cRXP_WARN_Use the|r |T136065:0|t[Heartswood Core] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Succubus|r
.use 6913
step << Warlock
.goto StormwindClassic,25.154,77.406
.use 6913 >> Kill the |cRXP_ENEMY_Summoned Succubus|r
.complete 1739,1 
.mob Summoned Succubus
step << Warlock
.goto StormwindClassic,25.154,77.406
>>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
.use 190186 >> |cRXP_WARN_Use the|r |T136065:0|t[Wooden Figurine] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Incubus|r
.complete 1739,1 
.mob Summoned Incubus
.isQuestTurnedIn 65602
step << Warlock
#completewith next
+|cRXP_WARN_You may now use either the|r |T136220:0|t[Succubus] |cRXP_WARN_or|r |T136221:0|t[Voidwalker] |cRXP_WARN_as your pet|r
>>|cRXP_WARN_The|r |T136220:0|t[Succubus] |cRXP_WARN_deals significant damage whereas the|r |T136221:0|t[Voidwalker] |cRXP_WARN_provides more survivability|r
step << Warlock
.goto Stormwind City,25.25,78.55
.target Gakin the Darkbinder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
.turnin 1739 >> Turn in The Binding
.turnin -65603 >> Turn in The Binding
step << Druid
#xprate >1.49
#season 2
.goto Stormwind City,43.088,80.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1075 >> Turn in A Scroll from Mauren
.target Collin Mauren
.isOnQuest 1075
step
#xprate <1.5
.goto Stormwind City,43.088,80.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1075 >> Turn in A Scroll from Mauren
.target Collin Mauren
.isOnQuest 1075
step
#xprate <1.5
#optional
.goto Stormwind City,43.088,80.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.accept 1076 >> Accept Devils in Westfall
.target Collin Mauren
.isQuestTurnedIn 1075
step << Druid
#xprate >1.59
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 1075 >> Train your class spells
.target Loganaar
.xp <24,1
step
#xprate >1.59 << !Hunter
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.turnin 389 >> Turn in Bazil Thredd
.target Warden Thelwater
.dungeon DM
.dungeon !Stockades
step << Hunter
.goto Stormwind City,50.2,57.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frederick Stover|r inside
.vendor >> |cRXP_BUY_Restock on |T132382:0|t[Arrows]|r
.target Frederick Stover
step << Hunter
#xprate <1.99
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 3618,3347,3397,5233,5234,5996 >> Deposit the following items into your bank:
>>|T134299:0|t[Gobbler's Head] 
>>|T134305:0|t[Bundle of Crocolisk Skins] 
>>|T134304:0|t[Young Crocolisk Skins] 
>>|T134458:0|t[Stone of Relu] << Hunter 
>>|T134434:0|t[Flagongut's Fossil] << Hunter 
>>|T134797:0|t[Elixir of Water Breathing] (If you have them) 
.target Newton Burnside
step
#xprate <1.99
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 2251,1015 >> Withdraw the following items from your bank:
>>|T133970:0|t[Lean Wolf Flanks]
>>|T134321:0|t[Gooey Spider Legs]
.target Newton Burnside
step << Rogue
.isQuestAvailable 2359 
.goto StormwindClassic,52.623,65.701
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
.home >> Set your Hearthstone to Stormwind City
.target Innkeeper Allison
step
.goto StormwindClassic,57.12,57.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
.train 201 >> Train 1h Swords << Mage/Rogue/Warlock
.train 1180 >> Train Daggers << Mage/Druid/Priest
.train 202 >> Train 2h Swords << Warrior/Paladin/Hunter
.target Woo Ping
step << Mage
#completewith next
.goto Stormwind City,56.135,65.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Boucher|r
.vendor >> |cRXP_BUY_Buy a|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
.collect 17031,1 
.target Kyra Boucher
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>Buy the following items for faster turn ins at Duskwood shortly
>>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
>>|cRXP_WARN_Note: You should also level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 for an easy 2,000XP quest in Duskwood. Buy as many|r |T133970:0|t[Chunk of Boar Meat] |cRXP_WARN_or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_as you need to level it to 50. You can cook them once you get to the Inn at Duskwood|r
>>|T133024:0|t[Bronze Tube]
>>|T133970:0|t[Lean Wolf Flank]
>>|T134321:0|t[Gooey Spider Leg]
>>|T132794:0|t[Flask of Oil]
.collect 4371,1,174,1 
.collect 1015,10,90,1 
.collect 2251,6,93,1 
.collect 814,5,103,1 
.bronzetube
.skill cooking,50,1 
.target Auctioneer Jaxon
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>Buy the following items for faster turn ins at Duskwood shortly
>>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
>>|T133024:0|t[Bronze Tube]
>>|T133970:0|t[Lean Wolf Flank]
>>|T134321:0|t[Gooey Spider Leg]
>>|T132794:0|t[Flask of Oil]
.collect 4371,1,174,1 
.collect 1015,10,90,1 
.collect 2251,6,93,1 
.collect 814,5,103,1 
.bronzetube
.skill cooking,<50,1 
.target Auctioneer Jaxon
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>Buy the following items for faster turn ins at Duskwood shortly
>>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
>>|cRXP_WARN_Note: You should also level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 for an easy 2,000XP quest in Duskwood. Buy as many|r |T133970:0|t[Chunk of Boar Meat] |cRXP_WARN_or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_as you need to level it to 50. You can cook them once you get to the Inn at Duskwood|r
>>|T133970:0|t[Lean Wolf Flank]
>>|T134321:0|t[Gooey Spider Leg]
>>|T132794:0|t[Flask of Oil]
.collect 1015,10,90,1 
.collect 2251,6,93,1 
.collect 814,5,103,1 
.skill cooking,50,1 
.target Auctioneer Jaxon
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>Buy the following items for faster turn ins at Duskwood shortly
>>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
>>|T133970:0|t[Lean Wolf Flank]
>>|T134321:0|t[Gooey Spider Leg]
>>|T132794:0|t[Flask of Oil]
.collect 1015,10,90,1 
.collect 2251,6,93,1 
.collect 814,5,103,1 
.skill cooking,<50,1 
.target Auctioneer Jaxon
step << NightElf
#xprate <1.99
.dungeon DM
#completewith next
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Redridge >> Fly to Redridge Mountains
.target Dungar Longdrink
.zoneskip Stormwind City,1
.xp <25,1
step << !NightElf
#xprate <1.99
#completewith next
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Redridge >> Fly to Redridge Mountains
.target Dungar Longdrink
.zoneskip Stormwind City,1
.xp <25,1
step
#xprate <1.99
#completewith next
.subzone 42 >> Travel to Darkshire
.xp <25,1
step << !Human
#xprate <1.99
.maxlevel 24
.dungeon !DM
#completewith next
.goto Stormwind City,71.19,89.10
.zone Elwynn Forest >> Head to Elwynn Forest
step << !Human
#xprate <1.99
.maxlevel 24
.dungeon DM
#completewith next
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Westfall >> Fly to Westfall
.target Dungar Longdrink
step << Human
#xprate <1.99
.maxlevel 24
#completewith next
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Westfall >> Fly to Westfall
.target Dungar Longdrink
step
#xprate <1.99
.maxlevel 24
.goto Duskwood,7.723,33.301
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
>>|cRXP_WARN_Do NOT accept the quest Sven's Revenge from|r |cRXP_FRIENDLY_Sven Yorgen|r
.accept 226 >> Accept Wolves at Our Heels
.target Lars
step << !Human !Warlock
#xprate >1.99
.dungeon !DM
#completewith next
.goto Stormwind City,71.19,89.10
.zone Elwynn Forest >> Head to Elwynn Forest
step << !Human !Warlock
#xprate >1.99
.dungeon !DM
#completewith next
.goto Elwynn Forest,65.20,69.80,50 >> Travel to the Tower of Azora. Ascend the tower
step << !Human !Warlock
#xprate >1.99
.dungeon !DM
.goto Elwynn Forest,65.22,69.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theocritus|r at the top
.accept 94 >> Accept A Watchful Eye
.target Theocritus
step << !Human !Warlock
#xprate >1.99
.dungeon !DM
#optional
#completewith next
.zone Redridge Mountains >> Travel to Redridge Mountains
.zoneskip Elwynn Forest,1
step << !Human !Warlock
#xprate >1.99
.dungeon !DM
#optional
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fp Redridge Mountains >> Get the Redridge Mountains flight path
.target Ariena Stormfeather
step << !Human !Warlock
#xprate >1.99
#completewith next
.dungeon DM
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Redridge >> Fly to Redridge Mountains
.target Dungar Longdrink
step << Human/Gnome Warlock
#xprate >1.99
#completewith next
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Redridge >> Fly to Redridge Mountains
.target Dungar Longdrink
step
#xprate >1.99
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.accept 20 >> Accept Blackrock Menace
.maxlevel 25
step
#xprate >1.99
.dungeon Stockades
.goto Redridge Mountains,26.258,46.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
.accept 386 >> Accept What Comes Around...
.target Guard Berton
step
#xprate >1.99
#label HunterArrive
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.accept 34 >> Accept An Unwelcome Guest
.maxlevel 25
step
#xprate >1.99
.goto Redridge Mountains,15.68,49.30
>>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
.complete 34,1
.mob Bellygrub
.isOnQuest 34
step
#xprate >1.99
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.turnin 34 >> Turn in An Unwelcome Guest
.isQuestComplete 34
step
#xprate >1.99
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
.accept 127 >> Accept Selling Fish
.accept 150 >> Accept Murloc Poachers
.maxlevel 25
step
#xprate >1.99
#completewith next
.goto Redridge Mountains,56.4,51.8,0
>>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
.collect 1468,8,150,1 
.complete 127,1 
.mob Murloc Scout
.mob Murloc Tidecaller
.isOnQuest 150
.isOnQuest 127
step
#xprate >1.99
#label orcs
>>Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r. Loot them for their |cRXP_LOOT_Axes|r
>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Blackrock Outrunners|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
>>|cRXP_WARN_Alternate between killing |cRXP_ENEMY_Orcs|r and the |cRXP_ENEMY_Murlocs|r marked on the map southwest|r
.goto Redridge Mountains,61.76,43.51
.complete 20,1 
.isOnQuest 20
.mob Blackrock Grunt
.mob Blackrock Outrunner
step
#xprate >1.99
.goto Redridge Mountains,56.4,51.8
>>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
.collect 1468,8,150,1 
.complete 127,1 
.mob Murloc Scout
.mob Murloc Tidecaller
.isOnQuest 150
.isOnQuest 127
step
#xprate >1.99
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 20 >> Turn in Blackrock Menace
.isQuestComplete 20
step
#xprate >1.99
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
.turnin 127 >> Turn in Selling Fish
.isQuestComplete 127
step
#xprate >1.99
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
.turnin 150 >> Turn in Murloc Poachers
.isQuestComplete 150
step
#xprate >1.99
#label RedridgeEnd
#completewith MadEva
.zone Duskwood >> Head to Duskwood
.goto Redridge Mountains,5.5,91.9
step
#xprate >1.99
#completewith MadEva
.subzone 42 >> Head to Darkshire
.goto Duskwood,73.48,24.84,40,0
.goto Duskwood,75.81,45.29
step
#xprate <1.99
#completewith MadEva
.goto Duskwood,48.0,17.2,0
.goto Duskwood,28.1,28.7,0
.goto Duskwood,48.0,17.2,85,0
.goto Duskwood,75.81,45.29,50 >> Travel to Darkshire
.isOnQuest 226
step
#xprate <1.99
#completewith MadEva
#label Wolves
>>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r en route. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Starving Dire Wolves|r have|r |T132150:0|t[Increased Aggro Range] |cRXP_WARN_and|r |cRXP_ENEMY_Rabid Dire Wolves|r cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Reduces ALL health regen by 50%)|r
>>|cRXP_WARN_You don't have to kill all |cRXP_ENEMY_Wolves|r now. Save the |cRXP_LOOT_Lean Wolf Flanks|r for a later quest|r
.complete 226,1 
.mob +Starving Dire Wolf
.complete 226,2 
.mob +Rabid Dire Wolf
.collect 1015,10,90,1 
.mob +Starving Dire Wolf
.mob +Rabid Dire Wolf
.skill cooking,<50,1 
.isOnQuest 226
.subzoneskip 42
step
#xprate <1.99
#completewith MadEva
#label Wolves
>>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r en route
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Starving Dire Wolves|r have|r |T132150:0|t[Increased Aggro Range] |cRXP_WARN_and|r |cRXP_ENEMY_Rabid Dire Wolves|r cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Reduces ALL health regen by 50%)|r
>>|cRXP_WARN_You don't have to kill all |cRXP_ENEMY_Wolves|r now|r
.complete 226,1 
.mob +Starving Dire Wolf
.complete 226,2 
.mob +Rabid Dire Wolf
.skill cooking,50,1 
.isOnQuest 226
.subzoneskip 42
step
.abandon 148 >> Abandon Supplies from Darkshire. You will miss out on free XP if you turn this in now. It will be completed soon
step
#label MadEva
.goto Duskwood,75.81,45.29
.target Madame Eva
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r inside
.accept 66 >> Accept The Legend of Stalvan
.accept 101 >> Accept The Totem of Infliction
step
.isQuestTurnedIn 2359 << Rogue 
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
.home >> Set your Hearthstone to Duskwood
.target Innkeeper Trelayne
step
.goto Duskwood,73.83,44.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r in the inn's kitchen
>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
.accept 90 >> Accept Seasoned Wolf Kabobs
.turnin 90 >> Turn in Seasoned Wolf Kabobs
.skill cooking,<50,1 
.itemcount 1015,10 
.target Chef Grual
step
.goto Duskwood,73.59,46.89
.target Commander Althea Ebonlocke
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
>>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
.accept 56 >> Accept The Night Watch
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r in the town hall building
.turnin 66 >> Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 67 >> Accept The Legend of Stalvan
step
.goto Duskwood,75.33,48.69
.target Elaine Carevin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
.accept 163 >> Accept Raven Hill
.accept 165 >> Accept The Hermit
step
.abandon 95 >> Abandon Sven's Revenge
step
.goto Duskwood,75.33,48.69
.target Elaine Carevin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
.accept 164 >> Accept Deliveries to Sven
>>|cRXP_WARN_If you can't pick up this quest you need to abandon Sven's Revenge from your quest log|r
step
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.fp Duskwood>> Get the Duskwood Flight Path
.target Felicia Maline
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >> Accept Look To The Stars
.turnin 174 >> Turn in Look To The Stars
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 175 >> Accept Look To The Stars
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 175 >> Turn in Look To The Stars
.accept 177 >> Accept Look To The Stars
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith HistoryBook1
>>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
>>|cRXP_WARN_Don't start the quest for it yet|r
.collect 2794,1,337,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
>>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
>>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
.complete 56,1 
.mob +Skeletal Warrior
.complete 56,2 
.mob +Skeletal Mage
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.goto Duskwood,80.35,69.31,50,0
.goto Duskwood,77.49,71.30,50,0
.goto Duskwood,79.38,73.70,50,0
.goto Duskwood,79.38,70.28
#label HistoryBook1
>>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
>>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
>>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
.complete 56,1 
.mob +Skeletal Warrior
.complete 56,2 
.mob +Skeletal Mage
step
#completewith RavenHill
+|cRXP_WARN_Be careful not to run into |cRXP_ENEMY_Stitches|r the Abomination who may be patrolling the road between Raven Hill and Darkshire|r
>>He spawns after a player completes the Hermit questline and is |cRXP_WARN_extremely lethal if pulled|r
.unitscan Stitches
.line Duskwood,34.2,60.4,40.6,63.2,44.6,65.7,50.9,66.7,52.8,68.6,54.7,68.7,58.1,65.9,61.7,61.6,65.8,60.0,71.1,59.3,74.2,56.1,75.2,52.2,74.5,46.9
step
#xprate <1.2
.goto Duskwood,45.12,67.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Dodds|r
>>|cRXP_WARN_If |cRXP_FRIENDLY_Watcher Dodds|r has been killed due to |cRXP_ENEMY_Stiches|r, skip this step|r
.accept 245 >> Accept Eight-Legged Menaces
.target Watcher Dodds
.maxlevel 23
step
#label RavenHill
.goto Duskwood,18.203,56.215
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
.turnin 163 >> Turn in Raven Hill
.accept 5 >> Accept Jitters' Growling Gut
.target Jitters
step
#label Wolves
#completewith BliztikCheck
.goto Duskwood,18.040,54.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bliztik|r upstairs
.vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Bliztik|r doesn't have any|r
.target Bliztik
step
#xprate <1.2
#sticky
#completewith WestfallTravel
>>Kill |cRXP_ENEMY_Pygmy Venom Web Spiders|r
>>|cRXP_WARN_Don't go out of your way to do this quest, skip it if necessary|r
.complete 245,1 
.mob Pygmy Venom Web Spider
.isOnQuest 245
step
#xprate <1.99
.goto Duskwood,9.98,59.57,80,0
.goto Duskwood,10.94,47.07,70,0
.goto Duskwood,9.20,39.04,70,0
.goto Duskwood,13.36,29.08,70,0
.goto Duskwood,22.78,28.18,70,0
.goto Duskwood,36.19,24.67
>>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
.complete 226,1 
.mob +Starving Dire Wolf
.complete 226,2 
.mob +Rabid Dire Wolf
.collect 1015,10,90,1,1 
.mob +Starving Dire Wolf
.mob +Rabid Dire Wolf
.skill cooking,<50,1 
.isOnQuest 226
step
.goto Duskwood,9.98,59.57,80,0
.goto Duskwood,10.94,47.07,70,0
.goto Duskwood,9.20,39.04,70,0
.goto Duskwood,13.36,29.08,70,0
.goto Duskwood,22.78,28.18,70,0
.goto Duskwood,36.19,24.67
>>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r
.complete 226,1 
.mob +Starving Dire Wolf
.complete 226,2 
.mob +Rabid Dire Wolf
.skill cooking,50,1,1 
.mob Starving Dire Wolf
.mob Rabid Dire Wolf
.isOnQuest 226
step
#completewith Flanks
.isQuestAvailable 90
>>Kill |cRXP_ENEMY_Wolves|r throughout Duskwood. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
.collect 1015,10,90,1 
.skill cooking,<50,1 
.mob Starving Dire Wolf
.mob Rabid Dire Wolf
.mob Young Black Ravager
.mob Black Ravager
.mob Black Ravager Mastiff
step
#label BliztikCheck
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 164 >> Turn in Deliveries to Sven
.target Sven Yorgen
.accept 95 >> Accept Sven's Revenge
step
#xprate <1.99
.goto Duskwood,7.723,33.301
.target Lars
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
.turnin -226 >> Turn in Wolves at Our Heels
step
#xprate >1.99
.goto Duskwood,7.723,33.301
.target Lars
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
>>|cRXP_WARN_Do NOT accept the quest Sven's Revenge from|r |cRXP_FRIENDLY_Sven Yorgen|r
.accept 226 >> Accept Wolves at Our Heels
.maxlevel 25
step
#loop
#xprate >1.99
#sticky
#label wolves199
.waypoint Duskwood,9.98,59.57,80,0
.waypoint Duskwood,10.94,47.07,70,0
.waypoint Duskwood,9.20,39.04,70,0
.waypoint Duskwood,13.36,29.08,70,0
.waypoint Duskwood,22.78,28.18,70,0
.waypoint Duskwood,36.19,24.67,70,0
.goto Duskwood,9.98,59.57,0
.goto Duskwood,9.20,39.04,0
.goto Duskwood,13.36,29.08,0
.goto Duskwood,22.78,28.18,0
.goto Duskwood,36.19,24.67,0
>>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
.complete 226,1 
.mob +Starving Dire Wolf
.complete 226,2 
.mob +Rabid Dire Wolf
.isOnQuest 226
step
#label TheHermit
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 165 >> Turn in The Hermit
.target Abercrombie
.accept 148 >> Accept Supplies from Darkshire
step
#requires wolves199
#xprate >1.99
.goto Duskwood,7.723,33.301
.target Lars
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
.turnin -226 >> Turn in Wolves at Our Heels
step
#xprate <1.59
#label Flanks
.goto Duskwood,33.6,60.4,100,0
.goto Duskwood,12.2,69.8,100,0
.goto Duskwood,10.6,37.0,100,0
.goto Duskwood,12.8,55.6
>>Kill |cRXP_ENEMY_Spiders|r in Duskwood. Loot them for their |cRXP_LOOT_Gooey Spider Legs|r
>>|cRXP_WARN_You will also need 1 |cRXP_LOOT_Small Venom Sac|r for your upcoming Rogue quest|r << Rogue !Dwarf
.collect 2251,6,93,1 
.collect 1475,1,2359,1 << Rogue !Dwarf 
.mob Pygmy Venom Web Spider
.mob Venom Web Spider
.mob Green Recluse
.mob Black Widow Hatchling
step
#xprate >1.59
#label Flanks
.goto Duskwood,33.6,60.4,100,0
.goto Duskwood,12.2,69.8,100,0
.goto Duskwood,10.6,37.0,100,0
.goto Duskwood,12.8,55.6
>>Kill |cRXP_ENEMY_Spiders|r in Duskwood. Loot them for their |cRXP_LOOT_Gooey Spider Legs|r
.collect 2251,6,93,1 
.mob Pygmy Venom Web Spider
.mob Venom Web Spider
.mob Green Recluse
.mob Black Widow Hatchling
step
#completewith MoonbrookSt
.goto Duskwood,33.6,60.4,100,0
.goto Duskwood,12.2,69.8,100,0
.goto Duskwood,10.6,37.0,100,0
.goto Duskwood,12.8,55.6
+|cRXP_WARN_Grind until your Hearthstone cooldown is <5min|r
.cooldown item,6948,<300
step
#completewith MoonbrookSt
#label WestfallTravel
.zone Westfall >> Travel to Westfall
step
#xprate <1.5
#completewith RogueQuest << Rogue
#completewith next << !Rogue
.goto Westfall,63.6,51.4,60,0
.goto Westfall,60.6,34.0,60,0
.goto Westfall,45.4,49.6
.goto Westfall,63.8,52.0,0
.goto Westfall,61.8,34.4,0
.goto Westfall,54.6,41.0,0
.goto Westfall,46.8,48.6,0
.goto Westfall,43.6,42.0,0
.goto Westfall,41.0,21.0,0
.goto Westfall,35.8,34.4,0
.goto Westfall,33.8,50.6,0
.goto Westfall,42.6,60.2,0
.goto Westfall,38.8,61.4,0
.goto Westfall,34.8,67.4,0
>>Kill |cRXP_ENEMY_Dust Devils|r. Loot them for their |cRXP_LOOT_Debris|r
>>|cRXP_ENEMY_Dust Devils|r |cRXP_WARN_can spawn throughout all of Westfall. Their spawn locations are marked on the map|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find them|r << Hunter
.complete 1076,1
.unitscan Dust Devil
.isOnQuest 1076
step
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fp Westfall >> Get the Westfall flight path
.target Thor
step << Rogue
#xprate <1.59
#optional
#completewith TowerKey
+|cRXP_WARN_==PAY ATTENTION TO THE UPCOMING SECTION==|r
>>|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
>>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
>>|cRXP_WARN_Additionally, it's recommended you enable Enemy Nameplates (Default Key: V) as it allows you to see enemies behind some of the corners inside the tower|r
step << Rogue
#xprate <1.59
#label RogueQuest
.goto Westfall,68.50,70.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
>>|cRXP_WARN_You MUST do this quest your|r |T132290:0|t[Poisons]
.turnin 2360 >> Turn in Mathias and the Defias
.accept 2359 >> Accept Klaven's Tower
.target Agent Kearnen
step << Rogue
#xprate <1.59
#label TowerKey
#loop
.goto Westfall,71.49,73.49,0
.goto Westfall,71.01,75.72,0
.goto Westfall,69.58,73.07,0
.goto Westfall,71.49,73.49,30,0
.goto Westfall,71.01,75.72,30,0
.goto Westfall,69.58,73.07,30,0
>>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Malformed Defias Drone|r. Loot it for the |cRXP_LOOT_Defias Tower Key|r
>>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
>>|cRXP_WARN_The |cRXP_ENEMY_Malformed Defias Drone|r spawns at the entrance to the tower, then patrols around the outside of it|r
>>|cRXP_WARN_Be careful as he deals a LOT of damage. If your|r |T132320:0|t[Stealth] |cRXP_WARN_breaks, quickly use|r |T132307:0|t[Sprint] |cRXP_WARN_and run away|r
.complete 2359,2 
.mob Malformed Defias Drone
step << Rogue
#xprate <1.59
#optional
#completewith Mortwake
+|cRXP_WARN_Equip the|r |T135641:0|t[Curvewood Dagger] |cRXP_WARN_for this quest if you don't already have a|r |T135641:0|t[Dagger] |cRXP_WARN_equipped|r
.use 15396
.itemcount 15396,1
step << Rogue
#xprate <1.59
.goto 1436,70.421,74.031
#label Mortwake
>>|cRXP_WARN_Travel up to 2nd top floor of the tower. Whilst in|r |T132320:0|t[Stealth] |cRXP_WARN_and the |cRXP_ENEMY_Defias Tower Sentries|r aren't next to you, Jump onto the chair, then onto the lamp, then onto the bookshelf on top of the waypoint location|r
>>|cRXP_WARN_Manually|r |T132320:0|t[Unstealth]|cRXP_WARN_, then press your "Interact with Target" keybind to open the |cRXP_PICK_Duskwood Chest|r. Loot it for|r |cRXP_LOOT_Klaven Mortwake's Journal|r
>>|cRXP_WARN_NOTE: Your|r |T132320:0|t[Stealth] |cRXP_WARN_will temporarily stop working after looting|r |cRXP_LOOT_Klaven Mortwake's Journal|r
>>|cRXP_WARN_Be prepared to run if you don't kill the |cRXP_ENEMY_Defias Tower Sentries|r on the 2nd floor. They will most likely aggro you permanently (but not attack you) when you are on top of the bookshelf as it is an evade spot|r
>>|cRXP_WARN_If you have a|r |T135641:0|t[Dagger] |cRXP_WARN_in your bags or equipped, you can cast|r |T132282:0|t[Ambush] |cRXP_WARN_on the |cRXP_ENEMY_Defias Tower Patrollers|r and |cRXP_ENEMY_Defias Tower Sentries|r inside to kill them instantly. Be prepared to run after you kill the first |cRXP_ENEMY_Defias Tower Sentry|r and remember you can be hit from above. This is slower, but a LOT safer|r
>>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Malformed Defias Drone|r and |cRXP_ENEMY_Defias Drones|r can be at the entrance of the tower if you have to run out of it|r
.complete 2359,1 
.mob Defias Tower Patroller
.mob Defias Tower Sentry
step << !Dwarf Rogue
#xprate <1.59
#sticky
#label AntiVenomStart
.collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
.aura -9991
.itemcount 6452,<1 
.train 7934,3 
step << !Dwarf Rogue
#xprate <1.59
#optional
#requires AntiVenomStart
#label AntiVenomEnd
.cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
.use 6452
.aura -9991
.itemcount 6452,1 
step << Dwarf Rogue
#xprate <1.59
#optional
#sticky
#label AntiVenomEnd2
.cast 20594 >>|cRXP_WARN_Cast |T136225:0|t[Stoneform] to remove the |T136230:0|t[Touch of Zanzil] debuff|r
.aura -9991
step
#xprate <1.2
.goto Westfall,63.6,51.4,60,0
.goto Westfall,60.6,34.0,60,0
.goto Westfall,45.4,49.6
.goto Westfall,63.8,52.0,0
.goto Westfall,61.8,34.4,0
.goto Westfall,54.6,41.0,0
.goto Westfall,46.8,48.6,0
.goto Westfall,43.6,42.0,0
.goto Westfall,41.0,21.0,0
.goto Westfall,35.8,34.4,0
.goto Westfall,33.8,50.6,0
.goto Westfall,42.6,60.2,0
.goto Westfall,38.8,61.4,0
.goto Westfall,34.8,67.4,0
>>Kill |cRXP_ENEMY_Dust Devils|r. Loot them for their |cRXP_LOOT_Debris|r
>>|cRXP_ENEMY_Dust Devils|r |cRXP_WARN_can spawn throughout all of Westfall. Their spawn locations are marked on the map|r
.complete 1076,1
.isOnQuest 1076
.unitscan Dust Devil
step
#label MoonbrookSt
.goto Westfall,41.51,66.72
>>Click the |cRXP_PICK_Old Footlocker|r on the ground
.turnin 67 >> Turn in The Legend of Stalvan
.accept 68 >> Accept The Legend of Stalvan
step 
#completewith next
+Look for |cRXP_ENEMY_Old Murk-Eye|r along the coast and kite him toward |cRXP_FRIENDLY_Captain Grayson|r if you see him
.itemcount 814,5 
.unitscan Old Murk-Eye
step
.goto Westfall,30.01,86.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
.accept 104 >> Accept The Coastal Menace
.accept 103 >> Accept Keeper of the Flame
.target Captain Grayson
.itemcount 814,5 
step
.goto Westfall,34.43,83.93,55,0
.goto Westfall,29.55,79.90,60,0
.goto Westfall,28.29,71.07,60,0
.goto Westfall,26.42,65.88,60,0
.goto Westfall,34.43,83.93
.line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
>>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for his |cRXP_LOOT_Scale|r
>>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you don't see him along the Longshore, wait for him to spawn in the most southern |cRXP_ENEMY_Murloc|r camp|r
.complete 104,1 
.unitscan Old Murk-Eye
.isOnQuest 104
step
.goto Westfall,30.01,86.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
.turnin 104 >> Turn in The Coastal Menace
.turnin 103 >> Turn in Keeper of the Flame
.target Captain Grayson
.isQuestComplete 104
.itemcount 814,5 
step
.goto Westfall,30.01,86.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
.turnin 103 >> Turn in Keeper of the Flame
.itemcount 814,5 
.target Captain Grayson
.addquestitem 814,103
step
.goto Westfall,30.01,86.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
.turnin 104 >> Turn in The Coastal Menace
.target Captain Grayson
.isQuestComplete 104
step << Druid
#completewith next
.goto Westfall,17.928,33.099,50 >> Swim out to sea
step << Druid
.goto Westfall,17.928,33.099
>>Open the |cRXP_PICK_Strange Lockbox|r. Loot it for the |cRXP_LOOT_Half Pendant of Aquatic Endurance|r
.collect 15882,1,272,1 
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
.goto Moonglade,36.0,41.4
.use 15883 >>|cRXP_WARN_Use the|r |T133443:0|t[Half Pendant of Aquatic Agility] |cRXP_WARN_to combine it with the|r |T133442:0|t[Half Pendant of Aquatic Endurance] |cRXP_WARN_at the Shrine of Remulos|r
.complete 272,1 
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
>>|cRXP_WARN_This will save you time from running back|r
step << Druid
.goto Moonglade,56.209,30.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
.turnin 272 >> Turn in Trial of the Sea Lion
.accept 5061 >> Accept Aquatic Form
.target Dendrite Starblaze
step << Druid
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.trainer >> Train your class spells
.target Loganaar
step << Druid
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
.goto Moonglade,44.147,45.225
.fly Teldrassil>> Fly to Teldrassil
.target Silva Fil'naveth
step << Druid
.goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 5061 >> Turn in Aquatic Form
step << Rogue 
.isQuestTurnedIn 2359
.hs >> Hearth to Darkshire
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
step << Rogue 
.isQuestTurnedIn 2359
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Duskwood >> Fly to Duskwood
.target Thor
.zoneskip Duskwood
step << Rogue
#optional
#completewith KlavenEnd
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Stormwind >> Fly to Stormwind
.target Thor
.zoneskip Stormwind City
.cooldown item,6948,<0
.isOnQuest 2359
step << Rogue
#optional
#completewith KlavenEnd
.hs >> Hearth to Stormwind
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
.isOnQuest 2359
step << !Dwarf Rogue
#optional
#requires AntiVenomEnd
#completewith FirstAidEnd
.goto 1453,42.938,33.878,20,0
.goto 1453,41.544,31.330,20,0
.goto 1453,41.688,28.049,20,0
.goto 1453,43.070,26.155,15 >> Travel toward |cRXP_FRIENDLY_Shaina Fuller|r
.aura -9991
step << !Dwarf Rogue
#requires AntiVenomEnd
.goto 1453,43.070,26.155
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
>>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
.skill firstaid,80 >> |cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_to 80|r
.aura -9991
.itemcount 6452,<1 
step << !Dwarf Rogue
#label FirstAidEnd
.goto 1453,43.070,26.155
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
>>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
.train 7934 >> |cRXP_WARN_Train|r |T134437:0|t[Anti-Venom]
.aura -9991
.itemcount 6452,<1 
step << !Dwarf Rogue
#sticky
#label AntiVenomStart2
.collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
.aura -9991
.itemcount 6452,<1 
.train 7934,3 
step << !Dwarf Rogue
#sticky
#requires AntiVenomStart2
#label AntiVenomEnd2
.cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
.use 6452
.aura -9991
.itemcount 6452,1 
step << Rogue
#optional
#requires AntiVenomEnd2
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
#label KlavenEnd
#requires AntiVenomEnd2
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
>>|cRXP_WARN_Remember to re-equip your main weapon if you switched to a|r |T135641:0|t[Dagger] |cRXP_WARN_earlier|r << Rogue
.turnin 2359 >> Turn in Klaven's Tower
.target Master Mathias Shaw
step << fRogue 
.goto Stormwind City,78.1,59.0
>>Type /lay on the chat and wait until the quest complete itself
.complete 2608,1 
step << fRogue 
.goto Stormwind City,78.0,58.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Mixilpixil|r
.turnin 2608 >> Turn in The Touch of Zanzil
.target Doc Mixilpixil
.accept 2609 >> Accept The Touch of Zanzil
step << fRogue 
.goto Stormwind City,78.2,59.0
>>Buy a Leaded Vial from the Shady Dealer
.complete 2609,2 
step << fRogue 
>>Head to the flower vendor
.complete 2609,1 
.goto Stormwind City,64.3,60.8
step << fRogue 
>>Buy a Bronze Tube at the Auction House
.complete 2609,3 
.goto Stormwind City,53.6,59.3
>>Head to the shop next to the bridge between the Cathedral Square and the Park
.complete 2609,4 
.goto Stormwind City,39.8,46.5
>>If you can't find a bronze tube, you will have to skip this quest, train First Aid to 80, farm a small venom sac from spiders in Duskwood, craft an Anti-Venom and remove the Zanzil poison.
step << fRogue 
.goto Stormwind City,78.0,58.9
.target Doc Mixilpixil
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Mixilpixil|r
.turnin 2609 >> Turn in The Touch of Zanzil
step << Rogue !Dwarf
#label ZanzilEnd
.zoneskip Stormwind City,1
.goto Stormwind City,42.8,26.6
.train 7934 >> |cRXP_WARN_Level|r |T135966:0|t[First Aid] |cRXP_WARN_to 80|r
>>|cRXP_WARN_Make an|r |T134437:0|t[Anti-Venom] |cRXP_WARN_to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_debuff|r
>>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend you can skip this step and ask them to remove it for you|r
step << Rogue
#label ZanzilEnd << Dwarf
.zoneskip Stormwind City,1
.goto Stormwind City,66.27,62.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Duskwood>> Fly to Duskwood
.target Dungar Longdrink
step << Paladin
.goto Westfall,42.5,88.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
.turnin 1650 >>Turn in The Tome of Valor
.target Daphne Stilwell
.accept 1651 >>Accept The Tome of Valor
step << Paladin
.goto Westfall,42.5,88.6
.complete 1651,1 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
.turnin 1651 >>Turn in The Tome of Valor
.target Daphne Stilwell
.accept 1652 >>Accept The Tome of Valor
step << !Rogue
.hs >> Hearth to Darkshire
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
step << !Rogue
#completewith next
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Darkshire >> Fly to Darkshire
.target Thor
.zoneskip Duskwood
step << Rogue
.goto Duskwood,73.87,44.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
>>If you just completed your Poison quest now set your Hearthstone to Darkshire
>>If your Hearthstone was already set to Darkshire, skip this step
.home >> Set your hearthstone to Darkshire
.target Innkeeper Trelayne
step
.goto Duskwood,73.83,44.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r in the inn's kitchen
>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
.accept 90 >> Accept Seasoned Wolf Kabobs
.turnin 90 >> Turn in Seasoned Wolf Kabobs
.skill cooking,<50,1 
.itemcount 1015,10 
.target Chef Grual
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r in the inn's kitchen
.turnin 5 >> Turn in Jitters' Growling Gut
.target Chef Grual
.accept 93 >> Accept Dusky Crab Cakes
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r in the inn's kitchen
.target Chef Grual
.turnin 93 >> Turn in Dusky Crab Cakes
.isQuestComplete 93
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
>>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
.turnin 56 >> Turn in The Night Watch
.target Commander Althea Ebonlocke
.accept 57 >> Accept The Night Watch
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r in the town hall building
.turnin 68 >> Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 69 >> Accept The Legend of Stalvan
step
.dungeon Stockades
.goto Duskwood,71.938,47.778
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
.accept 377 >> Accept Crime and Punishment
.target Councilman Millstipe
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 148 >> Turn in Supplies from Darkshire
.target Madame Eva
.accept 149 >> Accept Ghost Hair Thread
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >> Turn in Look To The Stars
.target Viktori Prism'Antras
step << Hunter
#xprate <1.99
#completewith FlyBackDuskwood
.goto Duskwood,81.83,19.77,60,0
.goto Duskwood,93.93,10.67,60,0
.goto Duskwood,93.93,10.67,0
.zone Redridge Mountains >> Travel to Redridge Mountains
step << Hunter
#xprate <1.99
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fp Redridge Mountains >> Get the Redridge Mountains flight path
.target Ariena Stormfeather
step << Hunter
#xprate <1.2
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
.accept 128 >> Accept Blackrock Bounty
step << !Hunter
#xprate <1.99
#completewith FlyBackDuskwood
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.fly Redridge >> Fly to Redridge Mountains
.target Felicia Maline
.maxlevel 25
step << !Hunter
#xprate <1.99
.dungeon Stockades
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.fly Redridge >> Fly to Redridge Mountains
.target Felicia Maline
step
#xprate <1.99
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.accept 20 >> Accept Blackrock Menace
.maxlevel 25
step
#xprate <1.99
.dungeon Stockades
.goto Redridge Mountains,26.258,46.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
.accept 386 >> Accept What Comes Around...
.target Guard Berton
step << Hunter
#xprate <1.99
#label HunterArrive
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.accept 34 >> Accept An Unwelcome Guest
.maxlevel 25
step << Hunter
#xprate <1.99
.goto Redridge Mountains,15.68,49.30
>>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
.complete 34,1
.mob Bellygrub
.isOnQuest 34
step << Hunter
#xprate <1.99
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.turnin 34 >> Turn in An Unwelcome Guest
.isQuestComplete 34
step
#xprate <1.99
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
.accept 127 >> Accept Selling Fish
.accept 150 >> Accept Murloc Poachers
.maxlevel 25
step
#xprate <1.99
#completewith next
.goto Redridge Mountains,56.4,51.8,0
>>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
.collect 1468,8,150,1 
.complete 127,1 
.mob Murloc Scout
.mob Murloc Tidecaller
.isOnQuest 150
.isOnQuest 127
step
#xprate <1.99
#label orcs
>>Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r. Loot them for their |cRXP_LOOT_Axes|r
>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Blackrock Outrunners|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
>>|cRXP_WARN_Alternate between killing |cRXP_ENEMY_Orcs|r and the |cRXP_ENEMY_Murlocs|r marked on the map southwest|r
.goto Redridge Mountains,61.76,43.51
.complete 20,1 
.isOnQuest 20
.mob Blackrock Grunt
.mob Blackrock Outrunner
step
#xprate <1.99
.goto Redridge Mountains,56.4,51.8
>>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
.collect 1468,8,150,1 
.complete 127,1 
.mob Murloc Scout
.mob Murloc Tidecaller
.isOnQuest 150
.isOnQuest 127
step
#xprate <1.99
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 20 >> Turn in Blackrock Menace
.isQuestComplete 20
step
#xprate <1.99
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
.turnin 127 >> Turn in Selling Fish
.isQuestComplete 127
step
#xprate <1.99
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
.turnin 150 >> Turn in Murloc Poachers
.isQuestComplete 150
step << Hunter
#xprate <1.99
.goto Redridge Mountains,29.71,44.26
.target Bailiff Conacher
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
.accept 91 >> Accept Solomon's Law
.maxlevel 25
step
#xprate <1.99
#completewith FlyBackDuskwood
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fly Duskwood >> Fly to Duskwood
.target Ariena Stormfeather
.zoneskip Duskwood
step
#completewith Flanks2
.isQuestAvailable 90
>>Kill |cRXP_ENEMY_Wolves|r throughout Duskwood. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
.collect 1015,10,90,1 
.skill cooking,<50,1 
.mob Starving Dire Wolf
.mob Rabid Dire Wolf
.mob Young Black Ravager
.mob Black Ravager
.mob Black Ravager Mastiff
step
.goto Duskwood,81.98,59.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 149 >> Turn in Ghost Hair Thread
.target Blind Mary
.accept 154 >> Accept Return the Comb
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r inside
.turnin 154 >> Turn in Return the Comb
.target Madame Eva
.accept 157 >> Accept Deliver the Thread
step
#completewith RavenHillTwo
+|cRXP_WARN_Be careful not to run into |cRXP_ENEMY_Stitches|r the Abomination who may be patrolling the road between Raven Hill and Darkshire|r
>>He spawns after a player completes the Hermit questline and is |cRXP_WARN_extremely lethal if pulled|r
.unitscan Stitches
.line Duskwood,34.2,60.4,40.6,63.2,44.6,65.7,50.9,66.7,52.8,68.6,54.7,68.7,58.1,65.9,61.7,61.6,65.8,60.0,71.1,59.3,74.2,56.1,75.2,52.2,74.5,46.9
step
#label FlyBackDuskwood
.goto Duskwood,49.85,77.71
>>Click the |cRXP_PICK_Mound of loose dirt|r on the ground
.turnin 95 >> Turn in Sven's Revenge
.accept 230 >> Accept Sven's Camp
step
#xprate <1.2
.goto Duskwood,45.12,67.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Dodds|r
.turnin 245 >> Turn in Eight-Legged Menaces
.isQuestComplete 245
.target Watcher Dodds
step
#xprate <1.2
.abandon 245 >> Abandon Eight-Legged Menaces if you haven't killed all 15 spiders
step
#completewith next
>>Kill |cRXP_ENEMY_Black Widow Hatchlings|r on the way to Abercrombie. Loot them for |T134799:0|t[|cRXP_LOOT_Vials of Spider Venom|r]
>>|cRXP_WARN_Don't go out of your way to complete this objective now, you will complete it later|r
.complete 101,2 
.mob Black Widow Hatchling
step
#label RavenHillTwo
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 157 >> Turn in Deliver the Thread
.target Abercrombie
.accept 158 >> Accept Zombie Juice
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 230 >> Turn in Sven's Camp
.target Sven Yorgen
.accept 262 >> Accept The Shadowy Figure
step
#xprate <1.2
#label Flanks2
.goto Duskwood,21.35,46.80
.xp 25+29845 >> Grind to 29845+/34000xp
step
#completewith RunStocks
.dungeon Stockades
+You are about to head to Stormwind soon, try to find a group for The Stockades
step
#completewith next
.subzone 87 >> Travel to Goldshire
.isOnQuest 69
step << Warrior
.goto Elwynn Forest,41.087,65.768
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
.trainer >> Train your class spells
.target Lyria Du Lac
step << Paladin
.goto Elwynn Forest,41.096,66.041
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
.trainer >> Train your class spells
.target Brother Wilhelm
step
.goto Elwynn Forest,43.771,65.803
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
.turnin 69 >> Turn in The Legend of Stalvan
.accept 70 >> Accept The Legend of Stalvan
.target Innkeeper Farley
step
#completewith next
.goto Elwynn Forest,43.877,66.546,9 >> Go upstairs
step << Mage
.goto Elwynn Forest,43.25,66.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
.trainer >> Train your class spells
.target Zaldimar Wefhellt
step << Priest
.goto Elwynn Forest,43.283,65.721
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
.trainer >> Train your class spells
.target Priestess Josetta
step << Rogue
.goto Elwynn Forest,43.872,65.937
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
.trainer >> Train your class spells
.target Keryn Sylvius
step
.goto Elwynn Forest,44.302,65.823
>>Open the |cRXP_PICK_Storage Chest|r. Loot it for |cRXP_LOOT_An Undelivered Letter|r
.complete 70,1
step << !Mage
#label RunStocks
#completewith next
.zone Stormwind City >> Travel to Stormwind City
step << Mage
#label RunStocks
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> Teleport to Stormwind
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << !Hunter
#xprate <1.2
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.accept 1078 >> Accept Retrieval for Mauren
.target Collin Mauren
step
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1076 >> Turn in Devils in Westfall
.isQuestComplete 1076
.target Collin Mauren
step
#optional
#completewith SlaughteredLamb
.abandon 1076 >> Abandon Devils in Westfall if you haven't completed the quest by now
step
.dungeon Stockades
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70,40,0
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70
.line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
>>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
.accept 388 >> Accept The Color of Blood
.unitscan Nikova Raskol
step
#xprate >1.59 << !Hunter
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.accept 387 >> Accept Quell The Uprising
.turnin 389 >> Turn in Bazil Thredd
.accept 391 >> Accept The Stockade Riots
.target Warden Thelwater
.dungeon DM
.dungeon Stockades
step
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.accept 391 >> Accept The Stockade Riots
.accept 387 >> Accept Quell The Uprising
.target Warden Thelwater
.isQuestTurnedIn 389
.dungeon Stockades
step
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.accept 387 >> Accept Quell The Uprising
.target Warden Thelwater
.dungeon Stockades
step
.dungeon Stockades
.goto StormwindClassic,39.834,54.360
+Find a group to The Stockades
.zoneskip Stormwind City,1 
step
.dungeon Stockades
#label stock1
#sticky
>>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
.complete 387,1 
.complete 387,2 
.complete 387,3 
.complete 388,1 
step
.dungeon Stockades
#label stock2
#sticky
>>Kill |cRXP_ENEMY_Targorr the Dread|r. Loot him for his |cRXP_LOOT_Head|r. |cRXP_ENEMY_Targorr|r has a random spawn location
>>Kill |cRXP_ENEMY_Dextren Ward|r on the west prison wing. Loot him for his |cRXP_LOOT_Hand|r
.complete -386,1 
.mob +Targorr the Dread
.complete -377,1 
.mob +Dextren Ward
step
.dungeon Stockades
#label Bazil
>>Kill |cRXP_ENEMY_Bazil Thredd|r on the east prison wing. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Ensure you have 3|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for the follow up of this quest chain|r
.complete 391,1 
.collect 4306,3,2746,1 
.isOnQuest 391
.mob Bazil Thredd
step
.dungeon Stockades
#requires stock1
step
.dungeon Stockades
#requires stock2
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.turnin 387 >> Turn in Quell The Uprising
.turnin 391 >> Turn in The Stockade Riots
.accept 392 >> Accept The Curious Visitor
.target Warden Thelwater
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.turnin 387 >> Turn in Quell The Uprising
.target Warden Thelwater
step
.dungeon Stockades
.goto StormwindClassic,49.194,30.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
.turnin 392 >> Turn in The Curious Visitor
.accept 393 >> Accept Shadow of the Past
.target Baros Alexston
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70,40,0
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70
.line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
>>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
.turnin 388 >> Turn in The Color of Blood
.unitscan Nikova Raskol
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 393 >> Turn in Shadow of the Past
.accept 350 >> Accept Look to an Old Friend
.target Master Mathias Shaw
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
.turnin 350 >> Turn in Look to an Old Friend
.accept 2745 >> Accept Infiltrating the Castle
.target Elling Trias
.isQuestTurnedIn 389
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,69.205,14.404
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
.turnin 2745 >> Turn in Infiltrating the Castle
.accept 2746 >> Accept Items of Some Consequence
.target Tyrion
.isQuestTurnedIn 391
step
.dungeon Stockades
#completewith next
.goto Elwynn Forest,32.384,49.866,50 >> Exit Stormwind. Travel to Clara's Farm House in Elwynn Forest
.isQuestTurnedIn 391
step
.dungeon Stockades
#ah
>>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
>>|cRXP_WARN_If you still need|r |T132905:0|t[Silk Cloth] |cRXP_WARN_buy some from the Auction House|r
.complete 2746,2 
.goto Elwynn Forest,33.952,57.162
.complete 2746,1 
.isQuestTurnedIn 391
step
.dungeon Stockades
#ssf
>>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
.complete 2746,2 
.goto Elwynn Forest,33.952,57.162
.complete 2746,1 
.isQuestTurnedIn 391
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,69.205,14.404
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
>>|cRXP_WARN_Ensure your party has all turned in Items of Some Consequence before you accept The Attack!|r
>>|cRXP_WARN_Automatic quest accept has been turned off for this step. Note you may not be able to accept the quest if someone else is in the process of doing it|r
.turnin 2746 >> Turn in Items of Some Consequence
.accept 434,1 >> Accept The Attack!
.timer 124,The Attack! RP
.target Tyrion
.isQuestTurnedIn 391
step 
.dungeon Stockades
.goto StormwindClassic,68.024,14.075
>>|cRXP_WARN_Wait in the center of the courtyard for |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r to arrive. This takes roughly 2 minutes|r
>>Kill |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r
.complete 434,1 
.mob +Lord Gregor Lescovar
.complete 434,2 
.mob +Marzon the Silent Blade
.complete 434,3 
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
.turnin 434 >> Turn in The Attack!
.accept 394 >> Accept The Head of the Beast
.target Elling Trias
.isQuestTurnedIn 391
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 394 >> Turn in The Head of the Beast
.accept 395 >> Accept Brotherhood's End
.target Master Mathias Shaw
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,49.194,30.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
.turnin 395 >> Turn in Brotherhood's End
.accept 396 >> Accept An Audience with the King
.target Baros Alexston
.isQuestTurnedIn 391
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,70.347,27.208,20 >> Travel to the Stormwind Keep
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,78.105,17.750
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r
.turnin 396 >> Turn in An Audience with the King
.target Lady Katrana Prestor
.isQuestTurnedIn 391
step
#label SlaughteredLamb
#xprate <1.99 << !Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Head to the Slaughtered Lamb and go downstairs
step
#xprate <1.99
.goto Stormwind City,26.44,78.66
.target Zardeth of the Black Claw
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
.accept 335 >> Accept A Noble Brew
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step
#completewith next
.goto Stormwind City,27.2,78.1,15 >> Exit the Slaughtered Lamb
step
.goto Stormwind City,29.528,61.924
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Folsom|r
.turnin 70 >> Turn in The Legend of Stalvan
.target Caretaker Folsom
.accept 72 >> Accept The Legend of Stalvan
step
.goto Stormwind City,29.44,61.52
>>Click the |cRXP_PICK_Sealed Crate|r on the ground
.turnin 72 >> Turn in The Legend of Stalvan
.accept 74 >> Accept The Legend of Stalvan
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
.trainer >> Train your class spells
.target Sheldras Moontree
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.target Duthorian Rall
.turnin 1652 >>Turn in The Tome of Valor
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step << Mage
#completewith next
.goto Stormwind City,56.135,65.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Boucher|r
.vendor >> |cRXP_BUY_Buy 2|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
.collect 17031,2 
.target Kyra Boucher
step
#completewith ShadowyRot
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Darkshire >> Fly to Duskwood
.target Dungar Longdrink
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >> Accept Look To The Stars
.turnin 174 >> Turn in Look To The Stars
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 175 >> Accept Look To The Stars
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 175 >> Turn in Look To The Stars
.accept 177 >> Accept Look To The Stars
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith next
>>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
>>|cRXP_WARN_Don't start the quest for it yet|r
.collect 2794,1,337,1 
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >> Turn in Look To The Stars
.target Viktori Prism'Antras
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.accept 173 >> Accept Worgen in the Woods
.target Calor
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r inside
.turnin 262 >> Turn in The Shadowy Figure
.target Madame Eva
.accept 265 >> Accept The Shadowy Search Continues
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r in the town hall building
.turnin 265 >> Turn in The Shadowy Search Continues
.target Clerk Daltry
.accept 266 >> Accept Inquire at the Inn
step
.dungeon Stockades
.goto Duskwood,71.938,47.778
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
.turnin 377 >> Turn in Crime and Punishment
.target Councilman Millstipe
step
#label ShadowyRot
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r inside the inn
.turnin 158 >> Turn in Zombie Juice
.target Tavernkeep Smitts
.accept 156 >> Accept Gather Rot Blossoms
.turnin 266 >> Turn in Inquire at the Inn
.accept 453 >> Accept Finding the Shadowy Figure
step
.goto Duskwood,73.83,44.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r in the inn's kitchen
>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
.accept 90 >> Accept Seasoned Wolf Kabobs
.turnin 90 >> Turn in Seasoned Wolf Kabobs
.skill cooking,<50,1 
.itemcount 1015,10 
.target Chef Grual
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r in the inn's kitchen
.target Chef Grual
.turnin 93 >> Turn in Dusky Crab Cakes
.accept 240 >> Accept Return to Jitters
step
#completewith Flanks3
.isQuestAvailable 90
>>Kill |cRXP_ENEMY_Wolves|r throughout Duskwood. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
.collect 1015,10,90,1 
.skill cooking,<50,1 
.mob Starving Dire Wolf
.mob Rabid Dire Wolf
.mob Young Black Ravager
.mob Black Ravager
.mob Black Ravager Mastiff
step
#completewith next
+|cRXP_WARN_Be careful not to run into |cRXP_ENEMY_Stitches|r the Abomination who may be patrolling the road between Raven Hill and Darkshire|r
>>He spawns after a player completes the Hermit questline and is |cRXP_WARN_extremely lethal if pulled|r
.unitscan Stitches
.line Duskwood,34.2,60.4,40.6,63.2,44.6,65.7,50.9,66.7,52.8,68.6,54.7,68.7,58.1,65.9,61.7,61.6,65.8,60.0,71.1,59.3,74.2,56.1,75.2,52.2,74.5,46.9
step
#completewith next
.goto Duskwood,22.95,44.75,150 >> Travel to Raven Hill Cemetery
step
.goto Duskwood,18.37,56.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
.turnin 453 >> Turn in Finding the Shadowy Figure
.target Jitters
.accept 268 >> Accept Return to Sven
.turnin 240 >> Turn in Return to Jitters
step
#completewith HistoryBook
>>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
>>|cRXP_WARN_Don't start the quest for it yet|r
.collect 2794,1,337,1 
step
.goto Duskwood,22.95,44.75,80,0
.goto Duskwood,20.39,47.02,70,0
.goto Duskwood,15.07,46.91,70,0
.goto Duskwood,15.65,42.81,70,0
.goto Duskwood,18.30,47.75,70,0
.goto Duskwood,22.11,46.93,70,0
.goto Duskwood,23.68,42.13,70,0
.goto Duskwood,21.21,47.07
>>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Rot Blossoms|r
.complete 57,1 
.mob +Skeletal Fiend
.complete 57,2 
.mob +Skeletal Horror
.complete 156,1 
step
#label Flanks3
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 268 >> Turn in Return to Sven
.accept 323 >> Accept Proving Your Worth
.target Sven Yorgen
step
.goto Duskwood,16.01,38.79
>>Kill |cRXP_ENEMY_Skeletal Raiders|r, |cRXP_ENEMY_Skeletal Healers|r and |cRXP_ENEMY_Skeletal Warders|r
>>|cRXP_WARN_Enter the Dawning Wood Catacombs for the|r |cRXP_ENEMY_Skeletal Warders|r
>>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_a level 35 Elite patrols around the cemetery. Be cautious of him|r
.complete 323,1 
.mob +Skeletal Raider
.complete 323,2 
.mob +Skeletal Healer
.complete 323,3 
.mob +keletal Warder
.unitscan Mor'Ladim
step
#completewith next
+Grind mobs until your |T134414:0|t[Hearthstone] is off cooldown. |cRXP_WARN_Don't hearth before turning in Proving Your Worth and accepting the follow-up!|r
.cooldown item,6948,<0,1
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 323 >> Turn in Proving Your Worth
.target Sven Yorgen
.accept 269 >> Accept Seeking Wisdom
step
#completewith dusk2
>> Grind mobs until your Hearthstone is off cooldown
.hs >> Hearth to Darkshire
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#softcore
#completewith next
.fly Duskwood >> If you haven't found a |T133024:0|t[Bronze Tube], save your Hearthstone cooldown and fly from Westfall to Duskwood
.bronzetube
step
#label dusk2
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r inside the inn
.turnin 156 >> Turn in Gather Rot Blossoms
.accept 159 >> Accept Juice Delivery
.target Tavernkeep Smitts
step
.goto Duskwood,73.83,44.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r in the inn's kitchen
>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
.accept 90 >> Accept Seasoned Wolf Kabobs
.turnin 90 >> Turn in Seasoned Wolf Kabobs
.skill cooking,<50,1 
.itemcount 1015,10 
.target Chef Grual
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
>>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
.turnin 57 >> Turn in The Night Watch
.accept 58 >> Accept The Night Watch
.target Commander Althea Ebonlocke
step
.dungeon Stockades
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.fly Redridge >> Fly to Redridge Mountains
.target Felicia Maline
.zoneskip Redridge Mountains
step
.dungeon Stockades
.goto Redridge Mountains,26.258,46.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
.turnin 386 >> Turn in What Comes Around...
.target Guard Berton
step
#season 0,1
#label HistoryBook
#completewith RRstart2
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
>>Run along the road north to Redridge if you don't have the Redridge Flight Path yet
.fly Redridge >> Fly to Redridge Mountains
.target Felicia Maline
.zoneskip Redridge Mountains
.maxlevel 27
step
#sticky
#softcore
.home >> Set your Hearthstone to Redridge if you haven't found a |T133024:0|t[Bronze Tube]
>>Skip this step if you purchased it already
.bronzetube
.maxlevel 27
step
#xprate >1.99
.goto Redridge Mountains,31.53,57.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
.accept 128 >> Accept Blackrock Bounty
.target Guard Howe
.maxlevel 27
step
#xprate <1.2
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
.accept 128 >> Accept Blackrock Bounty
.maxlevel 27
step << Hunter/Warlock
.solo
#label RRstart2
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.accept 19 >> Accept Tharil'zun
.isQuestTurnedIn 20
.maxlevel 27
step
.group
#label RRstart2
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.accept 19 >> Accept Tharil'zun
.accept 115 >> Accept Shadow Magic
.isQuestTurnedIn 20
.maxlevel 27
step << !Hunter
.goto Redridge Mountains,31.00,47.30
.target Verner Osgood
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
.accept 126 >> Accept Howling in the Hills
.isQuestTurnedIn 124
.maxlevel 27
step
.group
.goto Redridge Mountains,29.622,46.172
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
.accept 169 >> Accept Wanted: Gath'Ilzogg
.maxlevel 27
step
.goto Redridge Mountains,29.71,44.26
.target Bailiff Conacher
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
.accept 91 >> Accept Solomon's Law
.maxlevel 27
step
.goto Redridge Mountains,26.75,46.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
.accept 180 >> Accept Wanted: Lieutenant Fangore
.maxlevel 27
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.accept 34 >> Accept An Unwelcome Guest
.maxlevel 27
step
.goto Redridge Mountains,15.68,49.30
>>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
.complete 34,1
.mob Bellygrub
.isOnQuest 34
step
#label RRstart2 << !Hunter !Warlock
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.turnin 34 >> Turn in An Unwelcome Guest
.isQuestComplete 34
step
.goto Redridge Mountains,23.77,30.48,80,0
.goto Redridge Mountains,27.58,21.78
>>Kill |cRXP_ENEMY_Yowler|r. Loot him for his |cRXP_LOOT_Paw|r
>>|cRXP_WARN_Split pull him using|r |T135857:0|t[Blizzard] |cRXP_WARN_or|r |T135826:0|t[Flamestrike] << Mage
.complete 126,1 
.mob Yowler
.isOnQuest 126
step
#completewith Pendants
.goto Redridge Mountains,80.17,37.05
>>Kill |cRXP_ENEMY_Lieutenant Fangore|r. Loot him for his |cRXP_LOOT_Paw|r
>>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_will engage with 2 additional|r |cRXP_ENEMY_Gnolls|r
>>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_is immune to Shadow damage. Ensure you have party members that can help, otherwise you may skip this step|r << Warlock/Priest
.complete 180,1 
.isOnQuest 180
.mob Lieutenant Fangore
step << !Human !Warlock
#xprate >1.59
#sticky
#label Eye
.goto Redridge Mountains,84.50,46.80
>>Click the |cRXP_PICK_Old Lion Statue|r
.turnin 94 >> Turn in A Watchful Eye
.isOnQuest 94
.zoneskip Redridge Mountains,1
step
#xprate <1.59
#sticky
#label Eye
.goto Redridge Mountains,84.50,46.80
>>Click the |cRXP_PICK_Old Lion Statue|r
.turnin 94 >> Turn in A Watchful Eye
.isOnQuest 94
.zoneskip Redridge Mountains,1
step
.group
.goto Redridge Mountains,84.50,46.80
>>Click the |cRXP_PICK_Old Lion Statue|r
.accept 248 >> Accept Looking Further
.isQuestTurnedIn 94
step
#label Pendants
.goto Redridge Mountains,75.49,41.57,60,0
.goto Redridge Mountains,80.09,36.68,60,0
.goto Redridge Mountains,80.69,46.28,60,0
.goto Redridge Mountains,77.62,42.28,60,0
.goto Redridge Mountains,77.52,36.31
>>Kill the |cRXP_ENEMY_Shadowhides|r. Loot them for their |cRXP_LOOT_Pendants|r
.complete 91,1 
.mob Rabid Shadowhide Gnoll
.mob Shadowhide Gnoll
.mob Shadowhide Assassin
.mob Shadowhide Warrior
.mob Shadowhide Darkweaver
.mob Shadowhide Slayer
.isOnQuest 91
step
#label fangore
.goto Redridge Mountains,80.17,37.05
>>Kill |cRXP_ENEMY_Lieutenant Fangore|r. Loot him for his |cRXP_LOOT_Paw|r
>>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_will engage with 2 additional|r |cRXP_ENEMY_Gnolls|r
>>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_is immune to Shadow damage. Ensure you have party members that can help, otherwise you may skip this step|r << Warlock/Priest
.complete 180,1 
.isOnQuest 180
.mob Lieutenant Fangore
step
#xprate >1.99
.goto Redridge Mountains,75.49,41.57,60,0
.goto Redridge Mountains,80.09,36.68,60,0
.goto Redridge Mountains,80.69,46.28,60,0
.goto Redridge Mountains,77.62,42.28,60,0
.goto Redridge Mountains,77.52,36.31
.xp 28-8910
step
.group 3
#completewith Gath
>>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
.group 3
#completewith next
.goto Redridge Mountains,71.40,55.07
>>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
.complete 19,1 
.mob Tharil'zun
.isOnQuest 19
step
#label Gath
.group 5
.goto Redridge Mountains,69.599,55.797
>>Enter Stonewatch Keep
>>Kill |cRXP_ENEMY_Gath'Ilzogg|r. Loot him for his |cRXP_LOOT_Head|r
.complete 169,1 
.mob Gath'Ilzogg
.isOnQuest 169
step
#completewith next
>>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
.group 3
.goto Redridge Mountains,71.40,55.07
>>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
.complete 19,1 
.mob Tharil'zun
.isOnQuest 19
step
.group 3
.goto Redridge Mountains,66.68,56.26
>>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step << Hunter/Warlock
.solo
#requires Eye
.goto Redridge Mountains,71.40,55.07
>>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
>>Kite |cRXP_ENEMY_Tharil'zun|r towards Burning Steppes if needed. You can pull him from down below with your pet
>>This quest can be very hard, skip this step if you have to
.link https://youtu.be/YACKgdPlSGY >> |cRXP_WARN_Click here for video reference|r << Warlock
.link https://youtu.be/JvmBrGodRzY >> |cRXP_WARN_Click here for video reference|r << Hunter
.complete 19,1
.mob Tharil'zun
.isOnQuest 19
step
.group 3
.goto Redridge Mountains,63.246,49.840
>>Click |cRXP_PICK_An Empty Jar|r on the barrel at the top of Stonewatch Tower
>>|cRXP_WARN_Don't accept the follow up|r
.turnin 248 >> Turn in Looking Further
.isOnQuest 248
step
#requires Eye
.goto Redridge Mountains,28.89,13.20
>>Kill |cRXP_ENEMY_Blackrock Champions|r
.complete 128,1 
.isOnQuest 128
step
#xprate <1.2
#sticky
#softcore
.goto Burning Steppes,78.12,75.48,90,0
.goto Burning Steppes,66.06,21.96
.maxlevel 27
.vendor >> If you haven't found a |T133024:0|t[Bronze Tube], skip the escort quest, run north to Burning Steppes, die on purpose, buy a |T133024:0|t[Bronze Tube] from |cRXP_FRIENDLY_Yuka|r in the cave at Flame's Crest and Hearth back to Redridge
.bronzetube
.target Yuka Screwspigot
step
#som
#sticky
#softcore
.goto Burning Steppes,78.12,75.48,90,0
.goto Burning Steppes,66.06,21.96
.maxlevel 27
.vendor >> If you haven't found a |T133024:0|t[Bronze Tube], skip the escort quest, run north to Burning Steppes, die on purpose, buy a |T133024:0|t[Bronze Tube] from |cRXP_FRIENDLY_Yuka|r in the cave at Flame's Crest and Hearth back to Redridge
.bronzetube
.target Yuka Screwspigot
step
.goto Redridge Mountains,28.388,12.562
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Keeshan|r in the back of Render's Rock
.accept 219 >> Accept Missing In Action
.target Corporal Keeshan
.maxlevel 27
step
.goto Redridge Mountains,33.414,48.499
>>Escort |cRXP_FRIENDLY_Corporal Keeshan|r back to Lakeshire
>>|cRXP_WARN_Be careful to not pull too many mobs right after you leave the cave|r
.complete 219,1
.isOnQuest 219
.target Corporal Keeshan
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 19 >> Turn in Tharil'zun
.isQuestComplete 19
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 115 >> Turn in Shadow Magic
.isQuestComplete 115
step
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 169 >> Turn in Wanted: Gath'Ilzogg
.target Magistrate Solomon
.isQuestComplete 169
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 219 >> Turn in Missing In Action
.isQuestComplete 219
step
.goto Redridge Mountains,29.71,44.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
.turnin 91 >> Turn in Solomon's Law
.isQuestComplete 91
.target Bailiff Conacher
step
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 180 >> Turn in Wanted: Lieutenant Fangore
.isQuestComplete 180
.target Magistrate Solomon
step
.goto Redridge Mountains,30.97,47.27
.target Verner Osgood
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
.turnin 126 >> Turn in Howling in the Hills
.isQuestComplete 126
step
#label RedridgeEndTwo
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
.turnin 128 >> Turn in Blackrock Bounty
.isQuestComplete 128
step
#optional
.abandon 19 >> Abandon Tharil'zun, you won't be heading back to Redridge
step << Mage
.zone Stormwind City >> Teleport to Stormwind City
.itemcount 17031,1 
step
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fly Stormwind >> Fly to Stormwind
.target Ariena Stormfeather
.zoneskip Stormwind City
]]);
