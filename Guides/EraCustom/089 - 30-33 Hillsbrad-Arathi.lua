RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 30-40
#xprate <1.99
#classic
#tbc
#mop
<< Horde
#name 30-33 Hillsbrad/Arathi
#next 33-34 Shimmering Flats
#somname 30-32 Hillsbrad/Arathi
step << Mage
#completewith next
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
.zoneskip Undercity
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannah Akeley|r
>>|cRXP_BUY_Buy at least two|r |T134419:0|t[Rune of Teleportation]
.collect 17031,2,1164,1 
.target Hannah Akeley
step << !Mage
#completewith next
.zone Durotar >> Leave Orgrimmar
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
.zoneskip Tirisfal Glades
step
#completewith StealfromThievesPickup
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >> Enter Undercity
.zoneskip Undercity
step
#completewith StealfromThievesPickup
.goto Undercity,66.09,20.06,20,0
.goto Undercity,64.37,23.94,20,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
step << Hunter
.goto Undercity,57.31,32.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
.train 5011 >> Train Crossbows
.train 202 >> Train Two-Handed Swords
.target Archibald
step << Hunter
.goto Undercity,58.82,32.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Buy a|r |T134402:0|t[Heavy Quiver] |cRXP_BUY_and a|r |T135532:0|t[Heavy Crossbow] |cRXP_BUY_from him and fill your quiver with arrows|r
.collect 15809,1,552,1 
.collect 7371,1,552,1 
.collect 3030,2600,552,1 << Hunter 
.money <1.6691
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.0
.target Benijah Fenner
step << Hunter
.goto Undercity,58.82,32.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Buy a|r |T134402:0|t[Heavy Quiver] |cRXP_BUY_from him and fill your quiver with arrows|r
.collect 7371,1,552,1 
.target Benijah Fenner
step << Rogue
.goto Undercity,58.65,33.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_. Buy a|r |T135275:0|t[Broadsword] |cRXP_BUY_from him|r
.collect 2520,1,552,1 
.money <2.2165
.target Geoffrey Hartwell
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
#optional
#completewith StealfromThievesPickup
+|cRXP_WARN_Equip the|r |T135275:0|t[Broadsword]
.use 2520
.itemcount 2520,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
.goto Undercity,58.65,33.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r
.collect 2526,1,552,1 
.money <1.7402
.target Geoffrey Hartwell
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step << Rogue
#optional
#completewith StealfromThievesPickup
+|cRXP_WARN_Equip the|r |T135651:0|t[Main Gauche]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
>>|cRXP_BUY_Buy|r |T134026:0|t[Turtle Meat] |cRXP_BUY_from the Auction House|r
.collect 3712,10,7321,1 
.target Auctioneer Rhyker
.isQuestAvailable 7321
step
#completewith next
.goto Undercity,51.92,64.68,15 >>Travel toward |cRXP_FRIENDLY_Varimathras|r
.isOnQuest 6522
.dungeon RFK
step
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
.turnin 6522 >>Turn in An Unholy Alliance
.target Varimathras
.isOnQuest 6522
.dungeon RFK
step
#completewith next
.goto Undercity,47.20,59.69,0
.goto Undercity,47.20,59.69,12,0
.goto Undercity,43.55,68.11,12,0
.goto Undercity,45.20,71.67,12 >>Travel toward |cRXP_FRIENDLY_Faranell|r
.isQuestComplete 1109
.dungeon RFK
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faranell|r
.turnin 1109 >> Turn in Going, Going, Guano!
.target Master Apothecary Faranell
.isQuestComplete 1109
.dungeon RFK
step
#label StealfromThievesPickup
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genavie |r
.accept 1164 >> Accept To Steal From Thieves
.target Genavie Callow
step
.goto Undercity,62.14,44.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eunice|r
.train 2550 >> Train cooking for a quest later
.target Eunice Burch
step
#ssf
.goto Undercity,62.30,43.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ronald|r. |cRXP_BUY_Buy|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from him|r
.collect 3713,1,7321,1 
.target Ronald Burch
.maxlevel 30
step
#ah
.goto Undercity,62.30,43.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ronald|r. |cRXP_BUY_Buy|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from him|r
.collect 3713,1,7321,1 
.target Ronald Burch
step
.goto Undercity,65.99,44.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William|r
.bankwithdraw 3692 >> Withdraw the |T133730:0|t[|cRXP_LOOT_Hillsbrad Human Skulls|r] from your bank if you have them
.bankwithdraw 3564 >> Withdraw |T132761:0|t[|cRXP_LOOT_Shipment of Iron|r]
.target William Montague
.isQuestTurnedIn 527
step << Druid
#completewith next
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher >> Fly to The Sepulcher
.target Michael Garrett
.zoneskip Hillsbrad Foothills
.zoneskip Silverpine Forest
.isOnQuest 30
step << Druid
#completewith next
.goto Silverpine Forest,36.12,28.30,120 >> Travel north/east toward the Great Sea
.isOnQuest 30
step << Druid
.goto Silverpine Forest,29.58,29.30
>>Loot the |cRXP_PICK_Strange Lockbox|r in the water for the |T133442:0|t[Half Pendant of Aquatic Endurance]
.collect 15882,1,30,1 
.isOnQuest 30
step << Druid
#completewith next
.goto Silverpine Forest,45.62,42.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Tarren Mill >> Fly to Tarren Mill
.target Karos Razok
.zoneskip Silverpine Forest,1
step << !Shaman
#completewith TM2
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly Tarren Mill >> Fly to Tarren Mill
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step << Shaman
#completewith next
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher >> Fly to The Sepulcher
.target Michael Garrett
.zoneskip Silverpine Forest
step << Shaman
.zone Silverpine Forest >> Travel to Silverpine Forest
>>|cRXP_WARN_Follow the link below to open the website unstuck page. Select your current character on the website, but do NOT click anything else yet|r
>>|cRXP_WARN_If this fails, skip this step and run back normally|r
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_CLICK HERE|r
.isOnQuest 63
step << Shaman
#completewith CallofWaterSVP
#label CallofWaterSVP1
.goto Silverpine Forest,42.05,40.62,10,0
.goto Silverpine Forest,41.83,41.16,8 >> Jump up the side of the tree
.isOnQuest 63
step << Shaman
#completewith CallofWaterSVP
#label CallofWaterSVP2
#requires CallofWaterSVP1
.goto Silverpine Forest,38.09,44.40,15 >>Run down the mountain
.isOnQuest 63
step << Shaman
#completewith next
#requires CallofWaterSVP2
.goto Silverpine Forest,38.09,44.40
.aura 8899 >>|cRXP_WARN_Drink the|r |T134754:0|t[Water Sapta] |cRXP_WARN_to see the|r |cRXP_ENEMY_Corrupt Minor Manifestion of Water|r
.use 6637
.isOnQuest 63
step << Shaman
.goto Silverpine Forest,38.50,44.46
>>Kill the |cRXP_ENEMY_Corrupt Minor Manifestion of Water|r. Loot it for the |cRXP_LOOT_Corrupt Manifestation's Bracers|r
.complete 63,1 
.mob Corrupt Minor Manifestation of Water
.isOnQuest 63
step << Shaman
#label CallofWaterSVP
.goto Silverpine Forest,38.26,44.56
>>Click the |cRXP_PICK_Brazier of Everfount|r
.turnin 63 >>Turn in Call of Water
.accept 100 >>Accept Call of Water
.timer 15,Call of Water RP
step << Shaman
.goto Silverpine Forest,38.75,44.63
>>|cRXP_WARN_Wait out the RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Minor Manifestation of Water|r
.turnin 100 >>Turn in Call of Water
.accept 96 >>Accept Call of Water
.target Minor Manifestation of Water
step << Shaman
#completewith next
.goto Silverpine Forest,45.62,42.59,100 >> |cRXP_WARN_If you opened the website unstuck page earlier, you can now log out ingame and then click to move your character to the nearest graveyard (The Sepulcher)|r
>>|cRXP_WARN_If this fails or the page won't load, skip this step|r
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_CLICK HERE|r
.zoneskip Silverpine Forest,1
step << Shaman
#completewith next
.goto Silverpine Forest,45.62,42.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Tarren Mill >> Fly to Tarren Mill
.target Karos Razok
.zoneskip Hillsbrad Foothills
step
#label AgonyPickup
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 509 >> Accept Elixir of Agony
.target Apothecary Lydon
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 529 >> Turn in Battle of Hillsbrad
.accept 532 >> Accept Battle of Hillsbrad
.target High Executor Darthalia
.isQuestComplete 529
step
#optional
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.accept 532 >> Accept Battle of Hillsbrad
.target High Executor Darthalia
.isQuestTurnedIn 529
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krusk|r
.accept 533 >> Accept Infiltration
.target Krusk
.isQuestTurnedIn 498
step
#label TM2
.goto Hillsbrad Foothills,63.88,19.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thaivand|r
.accept 552 >> Accept Helcular's Revenge
.target Novice Thaivand
step << !Warrior
#loop
.goto Alterac Mountains,77.32,63.20,0
.goto Hillsbrad Foothills,68.42,17.01,50,0
.goto Hillsbrad Foothills,70.31,11.72,50,0
.goto Alterac Mountains,74.67,65.36,50,0
.goto Alterac Mountains,77.32,63.20,50,0
.goto Alterac Mountains,80.07,58.61,50,0
.goto Alterac Mountains,84.76,51.26,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Hillsbrad Foothills,68.21,19.09,50,0
.goto Hillsbrad Foothills,68.32,25.16,50,0
.goto Hillsbrad Foothills,67.66,31.88,50,0
.goto Hillsbrad Foothills,67.38,35.69,50,0
.goto Hillsbrad Foothills,63.76,40.24,50,0
.goto Hillsbrad Foothills,61.97,42.50,50,0
.goto Alterac Mountains,89.36,47.26,50,0
>>Travel up and down the river. Kill |cRXP_ENEMY_Snapjaws|r. Loot them for their |T134026:0|t[|cRXP_LOOT_Turtle Meat|r]
.collect 3712,10,7321,1 
.mob Snapjaw
.maxlevel 30
step << Warrior
#completewith next
>>Travel up and down the river. Kill |cRXP_ENEMY_Snapjaws|r. Loot them for their |T134026:0|t[|cRXP_LOOT_Turtle Meat|r]
.collect 3712,10,7321,1 
.mob Snapjaw
.maxlevel 30
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah|r
.turnin 1791 >>Turn in The Windwatcher
.accept 1712 >>Accept Cyclonian
.target Bath'rah the Windwatcher
step << Warrior
#loop
.goto Alterac Mountains,77.32,63.20,0
.goto Alterac Mountains,77.32,63.20,50,0
.goto Alterac Mountains,80.07,58.61,50,0
.goto Alterac Mountains,84.76,51.26,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Hillsbrad Foothills,68.21,19.09,50,0
.goto Hillsbrad Foothills,68.32,25.16,50,0
.goto Hillsbrad Foothills,67.66,31.88,50,0
.goto Hillsbrad Foothills,67.38,35.69,50,0
.goto Hillsbrad Foothills,63.76,40.24,50,0
.goto Hillsbrad Foothills,61.97,42.50,50,0
.goto Alterac Mountains,89.36,47.26,50,0
>>Travel up and down the river. Kill |cRXP_ENEMY_Snapjaws|r. Loot them for their |T134026:0|t[|cRXP_LOOT_Turtle Meat|r]
.collect 3712,10,7321,1 
.mob Snapjaw
.maxlevel 30
step
.goto Hillsbrad Foothills,62.28,19.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christoph|r inside the inn
.accept 7321 >> Accept Soothing Turtle Bisque
.turnin 7321 >> Turn in Soothing Turtle Bisque
.target Christoph Jeffcoat
.itemcount 3712,10 
.skill cooking,<1,1
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shay|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Shay
.isQuestAvailable 529
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'varil|r and |cRXP_FRIENDLY_Wordeen|r
.accept 556 >> Accept Stone Tokens
.target +Keeper Bel'varil
.goto Hillsbrad Foothills,61.60,20.86
.accept 544 >> Accept Prison Break In
.target +Magus Wordeen Voidglare
.goto Hillsbrad Foothills,61.49,20.93
step
#loop
.goto Hillsbrad Foothills,47.90,31.50,0
.goto Hillsbrad Foothills,47.90,31.50,25,0
.goto Hillsbrad Foothills,46.10,33.20,25,0
.goto Hillsbrad Foothills,43.50,27.30,25,0
.goto Hillsbrad Foothills,43.90,30.20,25,0
.goto Hillsbrad Foothills,41.80,30.60,25,0
.goto Hillsbrad Foothills,43.60,24.90,25,0
>>Kill |cRXP_ENEMY_Yetis|r in and around the cave at Darrow Hill. Loot them for |cRXP_LOOT_Helcular's Rod|r
>>|T135471:0|t[Helcular's Rod] |cRXP_WARN_has a fairly low drop rate|r
.complete 552,1 
.mob Cave Yeti
.mob Ferocious Yeti
step
#completewith next
#label Council
.goto Hillsbrad Foothills,29.63,42.33
>>Kill |cRXP_ENEMY_Hillsbrad Councilmen|r
>>|cRXP_WARN_Be careful of their Frost Nova and Frostbolt|r
.complete 532,2 
.mob Hillsbrad Councilman
.isQuestTurnedIn 529
step
>>Kill |cRXP_ENEMY_Magistrate Burnside|r and |cRXP_ENEMY_Clerk Horrace Whitesteed |r inside Hillsbrad Town Hall
>>Loot the |cRXP_LOOT_Hillsbrad Town Registry|r and burn the |cRXP_PICK_Hillsbrad Proclamation|r
.complete 532,1 
.complete 567,1 
.goto Hillsbrad Foothills,29.67,41.64
.complete 532,4 
.goto Hillsbrad Foothills,29.52,41.53
.complete 532,3 
.goto Hillsbrad Foothills,29.73,41.75
.isQuestTurnedIn 529
.mob Magistrate Burnside
step
.goto Hillsbrad Foothills,29.63,42.33
>>Finish killing |cRXP_ENEMY_Hillsbrad Councilmen|r
>>|cRXP_WARN_Be careful of their Frost Nova and Frostbolt|r
.complete 532,2 
.mob Hillsbrad Councilman
.isQuestTurnedIn 529
step
#completewith next
.subzone 272 >> Return to Tarren Mill
step
#requires Council
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 532 >> Turn in Battle of Hillsbrad
.accept 539 >> Accept Battle of Hillsbrad
.target High Executor Darthalia
.isQuestTurnedIn 529
step
#hardcore
.goto Hillsbrad Foothills,63.88,19.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thaivand|r
.turnin 552 >> Turn in Helcular's Revenge
.target Novice Thaivand
step
#softcore
.goto Hillsbrad Foothills,63.88,19.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Thaivand|r
.turnin 552 >> Turn in Helcular's Revenge
.accept 553 >> Accept Helcular's Revenge
.target Novice Thaivand
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,1800,539,1 << Hunter 
.target Kayren Soothallow
.itemcount 3030,<1000
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shay|r
>>|cRXP_BUY_Buy a|r |T132795:0|t[Southshore Stout] |cRXP_BUY_from him|r
.collect 3703,1,533,1 
.target Innkeeper Shay
.isQuestTurnedIn 498
step
#completewith next
.goto Hillsbrad Foothills,50.45,49.21,0
>>|cRXP_WARN_Be careful! Do not get too close to Southshoure (south) as |cRXP_ENEMY_Soutshore Guards|r could kill you|r
>>|cRXP_ENEMY_Soutshore Guards|r |cRXP_WARN_have a huge agro range|r
step
.goto Hillsbrad Foothills,26.95,59.55,100 >> Run to Azurelode Mine
.isOnQuest 546
step
#completewith Hacket
>>Kill |cRXP_ENEMY_Hillsbrad|r mobs. Loot them for their |cRXP_LOOT_Skulls|r
.complete 546,1 
.isOnQuest 546
step
#completewith next
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
>>Kill |cRXP_ENEMY_Miner Hackett|r
.complete 567,3 
.unitscan Miner Hackett
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,31.21,56.01
>>Kill |cRXP_ENEMY_Foreman Bonds|r and |cRXP_ENEMY_Hillsbrad Miners|r
>>|cRXP_ENEMY_Foreman Bonds|r |cRXP_WARN_is located in the center of the mine's lowest floor|r
>>|cRXP_WARN_At 30% or less health, |cRXP_ENEMY_Foreman Bonds|r instantly summons two |cRXP_ENEMY_Dun Garok Soldiers|r (level 30) to defend him|r
.complete 539,1 
.mob +Foreman Bonds
.complete 539,2 
.isQuestTurnedIn 528
step
#label Hacket
#loop
.goto Hillsbrad Foothills,31.8,52.5,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
>>Kill |cRXP_ENEMY_Miner Hackett|r
.complete 567,3 
.unitscan Miner Hackett
.isQuestTurnedIn 528
step
#loop
.goto Hillsbrad Foothills,31.15,54.73,0
.goto Hillsbrad Foothills,29.69,58.03,15,0
.goto Hillsbrad Foothills,28.17,57.27,15,0
.goto Hillsbrad Foothills,26.48,58.74,15,0
.goto Hillsbrad Foothills,27.39,59.38,15,0
.goto Hillsbrad Foothills,27.48,57.60,15,0
.goto Hillsbrad Foothills,28.06,55.12,15,0
.goto Hillsbrad Foothills,28.33,53.10,15,0
.goto Hillsbrad Foothills,31.15,54.73,15,0
>>Finish killing |cRXP_ENEMY_Hillsbrad|r mobs. Loot them for their |cRXP_LOOT_Skulls|r
.complete 546,1 
.isQuestTurnedIn 528
step
#era
#loop
.goto Hillsbrad Foothills,31.15,54.73,0
.goto Hillsbrad Foothills,29.69,58.03,15,0
.goto Hillsbrad Foothills,28.17,57.27,15,0
.goto Hillsbrad Foothills,26.48,58.74,15,0
.goto Hillsbrad Foothills,27.39,59.38,15,0
.goto Hillsbrad Foothills,27.48,57.60,15,0
.goto Hillsbrad Foothills,28.06,55.12,15,0
.goto Hillsbrad Foothills,28.33,53.10,15,0
.goto Hillsbrad Foothills,31.15,54.73,15,0
.xp 31 >> Grind to 31 in Azurelode Mine. Return to Tarren Mill if you need to restock
step
#completewith next
+|cRXP_WARN_This next quest can be quite hard, be extra careful!|r
step
#completewith Belamoore
>>Kill all |cRXP_ENEMY_Dalaran Humanoids|r. Loot them for their |cRXP_LOOT_Worn Stone Tokens|r
>>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Dalaran Shield Guards'|r |cRXP_WARN_glowing|r |T136173:0|t[Violet Shield Effect] |cRXP_WARN_ buff. It lasts eight seconds and returns 85 damage upon being struck in melee|r << !Mage !Priest !Warlock
.complete 556,1 
step
.goto Alterac Mountains,20.14,84.28,20,0
.goto Alterac Mountains,20.33,86.31,12,0
.goto Alterac Mountains,19.93,85.94
>>Kill |cRXP_ENEMY_Ricter|r, |cRXP_ENEMY_Alina|r and |cRXP_ENEMY_Dermot|r. Loot them for their |cRXP_LOOT_Bloodstones|r
.complete 544,2 
.mob +Ricter
.complete 544,3 
.mob +Alina
.complete 544,1 
.mob +Dermot
step
#completewith next
.goto Alterac Mountains,18.70,84.38,10 >> Enter the western building
step
#label Belamoore
.goto Alterac Mountains,18.29,82.83,8,0
.goto Alterac Mountains,17.65,84.11,8,0
.goto Alterac Mountains,17.76,83.18
>>Kill |cRXP_ENEMY_Kegan Darkmar|r on the second floor of the building. Loot him for his |cRXP_LOOT_Bloodstone|r
>>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Warden Belamoore|r|cRXP_WARN_. Kill her prior to attacking|r |cRXP_ENEMY_Kegan Darkmar|r
.complete 544,4 
.mob Kegan Darkmar
.mob Warden Belamoore
step
#loop
.goto Alterac Mountains,20.10,86.20,0
.goto Alterac Mountains,20.10,86.20,40,0
.goto Alterac Mountains,17.90,83.00,40,0
.goto Alterac Mountains,10.70,76.60,40,0
.goto Alterac Mountains,19.40,75.60,40,0
>>Finish killing the |cRXP_ENEMY_Dalaran Humanoids|r. Loot them for their |cRXP_LOOT_Worn Stone Tokens|r
>>|cRXP_WARN_Be careful of |cRXP_ENEMY_Dalaran Shield Guards'|r |cRXP_WARN_glowing|r |T136173:0|t[Violet Shield Effect] |cRXP_WARN_ buff. It lasts eight seconds and returns 85 damage upon being struck in melee|r << !Mage !Priest !Warlock
.complete 556,1 
.mob Dalaran Shield Guard
.mob Dalaran Theurgist
.mob Dalaran Worker
.mob Dalaran Summoner
step
#optional
#completewith Frostmaw
.destroy 3711 >>|cRXP_WARN_Destroy|r |T133736:0|t[Belamoore's Research Journal] |cRXP_WARN_as it's not needed for anything|r
step
#completewith Frostmaw
#loop
.goto Alterac Mountains,41.83,76.57,0
.goto Alterac Mountains,29.12,77.98,30,0
.goto Alterac Mountains,30.69,82.31,30,0
.goto Alterac Mountains,30.48,87.06,30,0
.goto Alterac Mountains,35.35,82.68,30,0
.goto Alterac Mountains,42.83,82.98,30,0
.goto Alterac Mountains,41.83,76.57,30,0
>>Kill |cRXP_ENEMY_Mountain Lions|r. Loot them for a |T134368:0|t[|cRXP_LOOT_Fresh Carcass|r]
>>|T134368:0|t[|cRXP_LOOT_Fresh Carcass|r] |cRXP_WARN_disappears after 30 minutes|r
.collect 5810,1 
.mob Feral Mountain Lion
.mob Mountain Lion
.mob Starving Mountain Lion
.mob Hulking Mountain Lion
.isOnQuest 1136
step
#softcore
.goto Alterac Mountains,37.54,66.24
>>Charge the |cRXP_PICK_Flame of Uzel|r inside the Growless Cave
.complete 553,3 
step
.goto Alterac Mountains,37.56,68.22
.use 5810 >> Use the |T134368:0|t[|cRXP_LOOT_Fresh Carcass|r] inside Growless Cave to summon |cRXP_ENEMY_Frostmaw|r. Kill him and loot him for his |cRXP_LOOT_Mane|r
>>|cRXP_WARN_Frostmaw is level 37. Clear a kiting path outside the cave before summoning him!|r
>>|cRXP_WARN_This quest is HARD! You could postpone this until after Arathi when you are 1-2 levels higher|r
>>|cRXP_WARN_Place a|r |T13809:0|t[Frost Trap] |cRXP_WARN_outside to kite him easily|r << Hunter
>>|cRXP_WARN_Use|r |T132298:0|t[Kidney Shot] |cRXP_WARN_and|r |T132155:0|t[Gouge] |cRXP_WARN_to run away from him to use|r |T135426:0|t[Thrown] |cRXP_WARN_and to restore energy. Save|r |T136205:0|t[Evasion] |cRXP_WARN_and|r |T132307:0|t[Sprint] |cRXP_WARN_for when he dodges both|r << Rogue
>>|cRXP_WARN_Use|r |T132336:0|t[Retaliation] |cRXP_WARN_if you have it up. Use|r |T132154:0|t[Intimidating Shout] |cRXP_WARN_to get a full bandage off, but make sure he has no |T132090:0|t[Bleeds] when you do so|r << Warrior
>>|cRXP_WARN_Kite him with rank 1|r |T135846:0|t[Frostbolts] |cRXP_WARN_if mana becomes an issue. Remember that he will resist spells at a high frequency|r << Mage
>>|cRXP_WARN_Use your mana mainly on|r |T136207:0|t[Shadow Word Pain] |cRXP_WARN_and healing as he is likely to resist a lot|r << Priest
>>|cRXP_WARN_Use|r |T136183:0|t[Fear] |cRXP_WARN_as much as possible but remember that he will resist spells at a high frequency|r << Warlock
>>|cRXP_WARN_Stay in|r |T132276:0|t[Bear Form] |cRXP_WARN_as much as possible, only come out to heal|r << Druid
>>|cRXP_WARN_Don't waste mana on Shock abilities, he will resist too much. Try to kite him with|r |T136102:0|t[Earthbind Totem] |cRXP_WARN_and save mana for healing|r << Shaman
.complete 1136,1 
.unitscan Frostmaw
.isOnQuest 1136
.xp >35,1
step
.goto Alterac Mountains,37.56,68.22
.use 5810 >> Use the |T134368:0|t[|cRXP_LOOT_Fresh Carcass|r] inside Growless Cave to summon |cRXP_ENEMY_Frostmaw|r. Kill him and loot him for his |cRXP_LOOT_Mane|r
.complete 1136,1 
.unitscan Frostmaw
.isOnQuest 1136
.xp <35,1
step
#optional
#label Frostmaw
step
#completewith next
.goto Alterac Mountains,39.90,80.93,0
+|cRXP_WARN_Be careful of the |cRXP_ENEMY_Alliance Guards|r at the Alterac Valley cave as you move south! They have a large agro pull and will kill you in 2 hits|r
>>|cRXP_WARN_Check the map to see their location|r
.unitscan Southshore Guard
step
#softcore
.goto Hillsbrad Foothills,46.22,31.86,30,0
.goto Hillsbrad Foothills,43.89,28.06
>>Charge the |cRXP_PICK_Flame of Azel|r inside the Darrow Hill cave
.complete 553,1 
step
#softcore
.goto Hillsbrad Foothills,44.7,28.6,20,0
.goto Hillsbrad Foothills,44.2,26.7
>>Charge the |cRXP_PICK_Flame of Veraz|r
>>|cRXP_WARN_It's located on the lower floor on the Northern side of the cave|r
.complete 553,2 
step
#completewith next
.goto Alterac Mountains,57.17,69.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Henchman Valik|r
>>|cRXP_WARN_Trade the|r |T132795:0|t[Southshore Stout] |cRXP_WARN_for the|r |cRXP_LOOT_Syndicate Missive|r
>>|cRXP_WARN_He may be hostile. If so, kill him and wait for his respawn. Alternatively kill|r |cRXP_ENEMY_Syndicate|r |cRXP_WARN_to obtain the|r |cRXP_LOOT_Syndicate Missive|r
.complete 533,1 
.target Henchman Valik
.itemcount 3703,1 
.isQuestTurnedIn 498
step
#loop
.goto Alterac Mountains,48.86,82.87,0
.goto Alterac Mountains,46.51,81.74,50,0
.goto Alterac Mountains,48.86,82.87,50,0
.goto Alterac Mountains,48.78,80.96,50,0
.goto Alterac Mountains,56.38,66.23,50,0
.goto Alterac Mountains,57.85,69.74,50,0
.goto Alterac Mountains,59.14,69.36,50,0
.goto Alterac Mountains,59.53,66.50,50,0
.goto Alterac Mountains,58.30,66.67,50,0
.goto Alterac Mountains,48.86,82.87,50,0
>>Kill |cRXP_ENEMY_Syndicate Thieves|r and |cRXP_ENEMY_Syndicate Footpads|r. Loot them for a |cRXP_LOOT_Syndicate Missive|r
.complete 533,1 
.mob Syndicate Footpad
.mob Syndicate Thief
.isQuestTurnedIn 498
step
#completewith next
.subzone 272 >> Return to Tarren Mill
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'varil|r and |cRXP_FRIENDLY_Wordeen|r
.turnin 556 >> Turn in Stone Tokens
.target +Keeper Bel'varil
.goto Hillsbrad Foothills,61.60,20.86
.turnin 544 >> Turn in Prison Break In
.target +Magus Wordeen Voidglare
.goto Hillsbrad Foothills,61.49,20.93
step
.goto Hillsbrad Foothills,62.11,19.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samsa|r
.turnin 546 >> Turn in Souvenirs of Death
.target Deathguard Samsa
.isQuestComplete 546
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 567 >> Turn in Dangerous!
.target High Executor Darthalia
.isQuestComplete 567
step
#optional
.abandon 567 >>Abandon Dangerous!
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 539 >> Turn in Battle of Hillsbrad
.target High Executor Darthalia
.isQuestComplete 539
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.accept 541 >> Accept Battle of Hillsbrad
.target High Executor Darthalia
.isQuestTurnedIn 539
.group
step
.goto Hillsbrad Foothills,62.76,20.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humbert|r
.accept 547 >> Accept Humbert's Sword
.target Deathguard Humbert
.group
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krusk|r
.turnin 533 >> Turn in Infiltration
.target Krusk
.isQuestComplete 533
step
#optional
#completewith MudsnoutBlossoms
.destroy 3703 >>|cRXP_WARN_Destroy the|r |T132795:0|t[Southshore Stout] |cRXP_WARN_as you no longer need it|r
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,1800,676,1 << Hunter 
.target Kayren Soothallow
.itemcount 3030,<1200
step
.goto Hillsbrad Foothills,62.79,19.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shay|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Shay
.isQuestAvailable 676
step
.goto Hillsbrad Foothills,61.86,19.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallow|r
.accept 676 >> Accept The Hammer May Fall
.target Tallow
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 509 >> Accept Elixir of Agony
.target Apothecary Lydon
step
#softcore
.goto Hillsbrad Foothills,52.9,53.4
.goto Hillsbrad Foothills,63.88,19.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Thaivand|r
>>|cRXP_WARN_Turn this quest in as fast as possible. There are high level|r |cRXP_WARN_Southshore Guards|r |cRXP_WARN_in the area that will attack you. You will most likely die|r
.turnin 553 >> Turn in Helcular's Revenge
.target Novice Thaivand
step << Shaman
#season 2
#completewith next
>>Kill |cRXP_ENEMY_Mudsnout Shamans|r. Loot them for the |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r
.collect 206387,1 
.mob Mudsnout Shaman
.train 410095,1
step
#label MudsnoutBlossoms
#loop
.goto Hillsbrad Foothills,64.68,62.01,0
.goto Hillsbrad Foothills,64.67,60.01,20,0
.goto Hillsbrad Foothills,63.02,61.19,20,0
.goto Hillsbrad Foothills,63.45,62.50,20,0
.goto Hillsbrad Foothills,64.68,62.01,20,0
>>Loot the |cRXP_PICK_White Mushrooms|r around Nethander Stead for |cRXP_LOOT_Mudsnout Blossoms|r
.complete 509,1 
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
.collect 206387,1 
.mob Mudsnout Shaman
.train 410095,1
step << Shaman
#season 2
#completewith next
+|cRXP_WARN_Keep the|r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r |cRXP_WARN_in your inventory. The next time in Orgrimmar you must enter Ragefire Chasm to take lava damage to unlock this rune|r
.itemcount 206387,1 
.train 410095,1
step
#completewith DunGarok
.goto Hillsbrad Foothills,70.76,78.14,150 >> Travel to Dun Garok
.group
step
#label DunGarok
#loop
.goto Hillsbrad Foothills,71.26,75.17,0
.goto Hillsbrad Foothills,71.26,75.17,25,0
.goto Hillsbrad Foothills,69.11,75.18,25,0
.goto Hillsbrad Foothills,68.59,78.47,25,0
.goto Hillsbrad Foothills,69.66,78.68,25,0
.goto Hillsbrad Foothills,71.01,79.09,25,0
.goto Hillsbrad Foothills,70.57,79.70,25,0
.goto Hillsbrad Foothills,71.48,81.57,25,0
.goto Hillsbrad Foothills,71.72,80.64,25,0
.goto Hillsbrad Foothills,71.98,81.24,25,0
.goto Hillsbrad Foothills,72.57,80.52,25,0
.goto Hillsbrad Foothills,72.20,80.00,25,0
.goto Hillsbrad Foothills,72.87,79.79,25,0
.goto Hillsbrad Foothills,72.40,79.28,25,0
.goto Hillsbrad Foothills,71.84,78.26,25,0
.goto Hillsbrad Foothills,71.32,78.69,25,0
>>Kill |cRXP_ENEMY_Dun Garok Soldiers|r and |cRXP_ENEMY_Captain Ironhill|r. Loot them for |cRXP_LOOT_Humbert's Sword|r
>>|cRXP_WARN_Be careful on your way in and out of Dun Garok; there are multiple patrols on the road and in the stronghold|r
.complete 541,1 
.mob +Dun Garok Mountaineer
.complete 541,2 
.mob +Dun Garok Rifleman
.complete 541,3 
.mob +Dun Garok Priest
.complete 541,4 
.unitscan +Captain Ironhill
.complete 547,1 
.mob +Dun Garok Mountaineer
.mob +Dun Garok Rifleman
.mob +Dun Garok Priest
.group 4
step
.goto Arathi Highlands,20.19,29.54
.zone Arathi Highlands >> Travel to Arathi Highlands
.zoneskip Arathi Highlands
step
#hardcore
#completewith WitherbarkArrive
.goto Arathi Highlands,45.78,43.61,0
+|cRXP_WARN_Be careful of getting too close to Refuge Point (Alliance base) in the centre of the zone.|r |cRXP_ENEMY_Refuge Point Defenders|r |cRXP_WARN_can kill you|r
.unitscan Refuge Point Defender
step << Shaman
#season 2
.train 416054,1
.goto Arathi Highlands,35.51,44.26,0
.goto Arathi Highlands,31.91,41.15,50,0
.goto Arathi Highlands,35.53,40.93,50,0
.goto Arathi Highlands,35.51,44.26,50,0
.goto Arathi Highlands,34.40,44.25,12,0
.goto Arathi Highlands,31.08,43.68,12,0
.goto Arathi Highlands,34.40,44.25,12,0
>>Kill |cRXP_ENEMY_Boulderfist Ogres|r and |cRXP_ENEMY_Boulderfist Enforcers|r. Loot them for a |T134921:0|t|cRXP_LOOT_[Ogre Lightning Rod]|r
>>|cRXP_WARN_Be careful. They can buff themselves with|r |T132154:0|t[Fist of Stone] |cRXP_WARN_(+100 damage each hit and 75% reduced movement speed)|r
.complete 676,1 
.mob +Boulderfist Ogre
.complete 676,2 
.mob +Boulderfist Enforcer
.collect 213426,1 
step << Shaman
#season 2
.train 416054,1
.goto Arathi Highlands,33.45,44.49
.cast 434350 >>Click the |cRXP_PICK_Soft Soil|r to insert the |T134921:0|t|cRXP_LOOT_[Lightning Rod]|r into the ground.
step << Shaman
#season 2
.train 416054,1
>>Cast |T136048:0|t[Lightning Bolt] 10 times on the |cRXP_ENEMY_Lightning Rod|r
>>Kill |cRXP_ENEMY_Tamkar|r or kite him as he spawns. Loot him for the |T134419:0|t[Rune of Power]
>>|cRXP_WARN_He will die automatically after 30 seconds so you can kite him instead of killing him|r
.collect 213093,1 
.mob Lightning Rod
.mob Tamkar
step << Shaman
#season 2
.train 416054 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Power] |cRXP_WARN_to learn|r |T134337:0|t[Power Surge]
step
#loop
.goto Arathi Highlands,35.51,44.26,0
.goto Arathi Highlands,31.91,41.15,50,0
.goto Arathi Highlands,35.53,40.93,50,0
.goto Arathi Highlands,35.51,44.26,50,0
.goto Arathi Highlands,34.40,44.25,12,0
.goto Arathi Highlands,31.08,43.68,12,0
.goto Arathi Highlands,34.40,44.25,12,0
>>Kill |cRXP_ENEMY_Boulderfist Ogres|r and |cRXP_ENEMY_Boulderfist Enforcers|r in and around Boulder'gor
>>|cRXP_WARN_Be careful. They can buff themselves with|r |T132154:0|t[Fist of Stone] |cRXP_WARN_(+100 damage each hit and 75% reduced movement speed)|r
.complete 676,1 
.mob +Boulderfist Ogre
.complete 676,2 
.mob +Boulderfist Enforcer
step
.goto Arathi Highlands,54.20,38.20
>>Kill |cRXP_ENEMY_Marcel|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_He uses|r |T132362:0|t[Shield Wall] |cRXP_WARN_(-75% damage for 10s) and|r |T132357:0|t[Shield Bash] |cRXP_WARN_(interrupt)|r
.complete 1164,2 
.unitscan Marcel Dabyrie
step
.goto Arathi Highlands,56.40,36.10
>>Kill |cRXP_ENEMY_Kenata|r. Loot her for her |cRXP_LOOT_Head|r
>>|cRXP_WARN_This can be quite hard. Be very careful|r << Rogue/Warrior/Shaman
.complete 1164,1 
.unitscan Kenata Dabyrie
step
.goto Arathi Highlands,56.50,38.70
>>Kill |cRXP_ENEMY_Fardel|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Be careful of his high-damage poison and|r |T132152:0|t[Thrash]
.complete 1164,3 
.unitscan Fardel Dabyrie
step
.goto Arathi Highlands,62.50,33.80
>>Click the |cRXP_PICK_Shards of Myzrael|r
.accept 642 >> Accept The Princess Trapped
step
#completewith next
.goto Arathi Highlands,73.52,33.20,150 >> Travel to Hammerfall
.subzoneskip 321
step
.goto Arathi Highlands,73.10,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urda|r
.fp Hammerfall >> Get the Hammerfall flight path
.target Urda
.isQuestAvailable 672,671
step
.goto Arathi Highlands,74.20,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
.turnin 676 >> Turn in The Hammer May Fall
.accept 677 >> Accept Call to Arms
.target Drum Fel
step
.goto Arathi Highlands,73.84,32.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Adegwa|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Adegwa
.isQuestAvailable 672,671
step
.goto Arathi Highlands,72.64,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'mul|r
.accept 655 >> Accept Hammerfall
.target Gor'mul
step
.goto Arathi Highlands,74.60,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
.turnin 655 >> Turn in Hammerfall
.accept 672 >> Accept Raising Spirits
.accept 671 >> Accept Foul Magics
.target Tor'gan
step << Hunter
#completewith next
.goto Arathi Highlands,73.92,33.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharlidun|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Plains Creeper|r shortly
.target Tharlidun
step << Hunter
#loop
.goto Arathi Highlands,69.28,37.53,0
.goto Arathi Highlands,62.09,38.95,0
.goto Arathi Highlands,68.55,51.64,0
.goto Arathi Highlands,69.28,37.53,40,0
.goto Arathi Highlands,62.09,38.95,40,0
.goto Arathi Highlands,68.55,51.64,40,0
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find a |cRXP_ENEMY_Plains Creeper|r. Some of their locations are marked on your map|r
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Plains Creeper|r to tame it|r 
.train 17265 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 5)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.unitscan Plains Creeper
.zoneskip Arathi Highlands,1
step << Hunter
.goto Arathi Highlands,73.92,33.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharlidun|r
.stable >> Abandon the |cRXP_ENEMY_Plains Creeper|r and retrieve your regular pet
.target Tharlidun
.train 17265,3
.zoneskip Arathi Highlands,1
step
#completewith xpgate
>>Kill any |cRXP_ENEMY_Highland Raptor|r that you encounter. Loot them for their |cRXP_LOOT_Eyes|r
>>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Highland Trashers|r, |cRXP_WARN_as they actually|r |T132152:0|t[Thrash]
.complete 672,1 
.mob Highland Strider
.mob Highland Thrasher
step
#loop
.goto Arathi Highlands,34.07,28.35,0
.goto Arathi Highlands,34.07,28.35,50,0
.goto Arathi Highlands,33.36,26.41,50,0
.goto Arathi Highlands,31.79,26.47,50,0
.goto Arathi Highlands,30.83,27.49,50,0
.goto Arathi Highlands,31.01,29.58,50,0
.goto Arathi Highlands,32.32,30.87,50,0
.goto Arathi Highlands,33.36,30.72,50,0
>>Kill |cRXP_ENEMY_Syndicate members|r. Loot them for their |cRXP_LOOT_Amulets|r
>>|cRXP_WARN_Be careful of |cRXP_ENEMY_Syndicate Highwaymen|r; they stealth around the farm's perimeter, and will backstab you if you kite/run away|r
.complete 671,1 
.mob Syndicate Pathstalker
.mob Syndicate Mercenary
.mob Syndicate Highwayman
step
#label xpgate
#loop
.goto Arathi Highlands,34.07,28.35,50,0
.goto Arathi Highlands,33.36,26.41,50,0
.goto Arathi Highlands,31.79,26.47,50,0
.goto Arathi Highlands,30.83,27.49,50,0
.goto Arathi Highlands,31.01,29.58,50,0
.goto Arathi Highlands,32.32,30.87,50,0
.goto Arathi Highlands,33.36,30.72,50,0
.xp 32>> Grind to level 32
step
.goto Arathi Highlands,59.40,42.61
>>Finish killing |cRXP_ENEMY_Highland Raptors|r. Loot them for their |cRXP_LOOT_Eyes|r
>>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Highland Trashers|r, |cRXP_WARN_as they actually|r |T132152:0|t[Thrash]
.complete 672,1 
.mob Highland Strider
.mob Highland Thrasher
step
#label WitherbarkArrive
#completewith WitherbarkTrolls
.goto Arathi Highlands,66.68,62.96,150 >> Travel to Witherbark Village
step
#completewith WitherbarkTrolls
+|cRXP_WARN_Keep an eye out for|r |cRXP_ENEMY_Nimar the Slayer|r |cRXP_WARN_(rare). He can drop powerful BoEs|r
.unitscan Nimar the Slayer
step << Warrior/Hunter
#season 2
#completewith FocusedRage << Warrior
#completewith SteadyShot << Hunter
>>Kill |cRXP_ENEMY_Witherbark Witch Doctors|r, |cRXP_ENEMY_Headhunters|r, and |cRXP_ENEMY_Axe Throwers|r
>>|cRXP_WARN_This next quest can be quite hard, be extra careful|r
.complete 677,3 
.mob +Witherbark Witch Doctor
.complete 677,2 
.mob +Witherbark Headhunter
.complete 677,1 
.mob +Witherbark Axe Thrower
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
.use 216483 >>|cRXP_WARN_This will spawn a |cRXP_ENEMY_Witherbark Goliath|r (lvl 35 elite) as well as 2 additional mobs. It is recommended to find a group or to postpone this until later|r
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
step << Hunter
#season 2
.train 410109,1
#loop
.goto Arathi Highlands,67.8,66.0,0
.goto Arathi Highlands,69.4,63.2,25,0
.goto Arathi Highlands,67.8,66.0,25,0
.goto Arathi Highlands,68.4,68.2,25,0
>>Kill |cRXP_ENEMY_Needletooth|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Steady Shot|r]
>>|cRXP_ENEMY_Needletooth|r |cRXP_WARN_is a fish that swims in the Witherbark Village lake|r
.collect 213122,1
.mob Needletooth
step << Hunter
#label SteadyShot
#season 2
.train 410109 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Steady Shot|r] |cRXP_WARN_to train|r |T132213:0|t[Steady Shot]
.use 213122
.itemcount 213122,1
step
#label WitherbarkTrolls
#loop
.goto Arathi Highlands,71.70,60.30,0
.goto Arathi Highlands,71.70,60.30,50,0
.goto Arathi Highlands,73.40,65.20,50,0
.goto Arathi Highlands,70.60,69.30,50,0
.goto Arathi Highlands,68.30,74.50,50,0
.goto Arathi Highlands,66.20,69.20,50,0
.goto Arathi Highlands,64.80,73.10,50,0
.goto Arathi Highlands,61.30,72.40,50,0
.goto Arathi Highlands,63.30,67.70,50,0
.goto Arathi Highlands,66.50,63.70,50,0
>>Kill |cRXP_ENEMY_Witherbark Witch Doctors|r, |cRXP_ENEMY_Headhunters|r, and |cRXP_ENEMY_Axe Throwers|r
>>|cRXP_WARN_This next quest can be quite hard, be extra careful|r
.complete 677,3 
.mob +Witherbark Witch Doctor
.complete 677,2 
.mob +Witherbark Headhunter
.complete 677,1 
.mob +Witherbark Axe Thrower
step
.goto Arathi Highlands,74.72,36.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Tor'gan|r
.turnin 671 >> Turn in Foul Magics
.turnin 672 >> Turn in Raising Spirits
.accept 674 >> Accept Raising Spirits
.target Tor'gan
step
#label RaisingSpirits
.goto Arathi Highlands,72.64,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Gor'mul|r
.turnin 674 >> Turn in Raising Spirits
.accept 675 >> Accept Raising Spirits
.target Gor'mul
step
.goto Arathi Highlands,74.72,36.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
.turnin 675 >> Turn in Raising Spirits
.target Tor'gan
step
.goto Arathi Highlands,74.24,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Drum|r
.turnin 677 >> Turn in Call to Arms
.target Drum Fel
step
#completewith next
.goto Arathi Highlands,73.10,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urda|r
.fly Tarren Mill >> Fly to Tarren Mill
.target Urda
.zoneskip Hillsbrad Foothills
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Lydon|r
.turnin 509 >> Turn in Elixir of Agony
.accept 513 >> Accept Elixir of Agony
.target Apothecary Lydon
step
.goto Hillsbrad Foothills,62.76,20.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humbert|r
.turnin 547 >> Turn in Humbert's Sword
.target Deathguard Humbert
.isQuestComplete 547
.group
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 541 >> Turn in Battle of Hillsbrad
.accept 550 >> Accept Battle of Hillsbrad
.target High Executor Darthalia
.isQuestComplete 541
.group
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.accept 550 >> Accept Battle of Hillsbrad
.target High Executor Darthalia
.isQuestTurnedIn 541
.group
step
#completewith Frostmaw2
#loop
.goto Alterac Mountains,30.69,82.31,0
.goto Alterac Mountains,29.12,77.98,60,0
.goto Alterac Mountains,30.69,82.31,60,0
.goto Alterac Mountains,30.48,87.06,60,0
.goto Alterac Mountains,35.35,82.68,60,0
.goto Alterac Mountains,42.83,82.98,60,0
.goto Alterac Mountains,41.83,76.57,60,0
>>Kill |cRXP_ENEMY_Mountain Lions|r. Loot them for a |T134368:0|t[|cRXP_LOOT_Fresh Carcass|r]
>>|T134368:0|t[|cRXP_LOOT_Fresh Carcass|r] |cRXP_WARN_disappears after 30 minutes|r
.collect 5810,1 
.mob Feral Mountain Lion
.mob Mountain Lion
.mob Starving Mountain Lion
.mob Hulking Mountain Lion
.isOnQuest 1136
step
.goto Alterac Mountains,37.56,68.22
.use 5810 >> Use the |T134368:0|t[|cRXP_LOOT_Fresh Carcass|r] inside Growless Cave to summon |cRXP_ENEMY_Frostmaw|r. Kill him and loot him for his |cRXP_LOOT_Mane|r
>>|cRXP_WARN_Frostmaw is level 37. Clear a kiting path outside the cave before summoning him!|r
>>|cRXP_WARN_Place a|r |T13809:0|t[Frost Trap] |cRXP_WARN_outside to kite him easily|r << Hunter
>>|cRXP_WARN_Use|r |T132298:0|t[Kidney Shot] |cRXP_WARN_and|r |T132155:0|t[Gouge] |cRXP_WARN_to run away from him to use|r |T135426:0|t[Thrown] |cRXP_WARN_and to restore energy. Save|r |T136205:0|t[Evasion] |cRXP_WARN_and|r |T132307:0|t[Sprint] |cRXP_WARN_for when he dodges both|r << Rogue
>>|cRXP_WARN_Use|r |T132336:0|t[Retaliation] |cRXP_WARN_if you have it up. Use|r |T132154:0|t[Intimidating Shout] |cRXP_WARN_to get a full bandage off, but make sure he has no |T132090:0|t[Bleeds] when you do so|r << Warrior
>>|cRXP_WARN_Kite him with rank 1|r |T135846:0|t[Frostbolts] |cRXP_WARN_if mana becomes an issue. Remember that he will resist spells at a high frequency|r << Mage
>>|cRXP_WARN_Use your mana mainly on|r |T136207:0|t[Shadow Word Pain] |cRXP_WARN_and healing as he is likely to resist a lot|r << Priest
>>|cRXP_WARN_Use|r |T136183:0|t[Fear] |cRXP_WARN_as much as possible but remember that he will resist spells at a high frequency|r << Warlock
>>|cRXP_WARN_Stay in|r |T132276:0|t[Bear Form] |cRXP_WARN_as much as possible, only come out to heal|r << Druid
>>|cRXP_WARN_Don't waste mana on Shock abilities, he will resist too much. Try to kite him with|r |T136102:0|t[Earthbind Totem] |cRXP_WARN_and save mana for healing|r << Shaman
.complete 1136,1 
.unitscan Frostmaw
.isOnQuest 1136
.xp >35,1
step
.goto Alterac Mountains,37.56,68.22
.use 5810 >> Use the |T134368:0|t[|cRXP_LOOT_Fresh Carcass|r] inside Growless Cave to summon |cRXP_ENEMY_Frostmaw|r. Kill him and loot him for his |cRXP_LOOT_Mane|r
.complete 1136,1 
.unitscan Frostmaw
.isOnQuest 1136
.xp <35,1
step << !Mage
#hardcore
#completewith next
.goto Alterac Mountains,39.90,80.93,0
+|cRXP_WARN_Be careful of the |cRXP_ENEMY_Alliance Guards|r at the Alterac Valley cave as you move south! They have a large agro pull and will kill you in 2 hits|r
>>|cRXP_WARN_Check the map to see their location|r
step
#optional
#label Frostmaw2
step << Mage
#completewith Thieves
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
.zoneskip Undercity
.itemcount 17031,1
step << !Mage
#completewith next
.goto Hillsbrad Foothills,60.14,18.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarise|r
.fly Undercity >> Fly to the Undercity
.target Zarise
.zoneskip Undercity
step
#label Thieves
.goto Undercity,63.83,49.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genavie Callow|r
.turnin 1164 >> Turn In To Steal From Thieves
.target Genavie Callow
step << !Druid !Warlock
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
>>|cRXP_BUY_Buy three|r |T134797:0|t[Elixir of Water Breathing] << !Shaman
>>|cRXP_BUY_Buy three|r |T134310:0|t[Shiny Fish Scales] << Shaman
.collect 5996,3 << !Shaman 
.collect 17057,3 << Shaman 
.target Auctioneer Rhyker
.train 131,3 << Shaman 
step << Shaman
#optional
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
>>|cRXP_BUY_Buy three|r |T134797:0|t[Elixir of Water Breathing]
.collect 5996,3 
.target Auctioneer Rhyker
.train 131,1 << Shaman 
step << Warrior
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 11564 >> Train your class spells
.target Angela Curthas
.xp <32,1
.xp >34,1
step << Warrior
#optional
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 8380 >> Train your class spells
.target Angela Curthas
.xp <34,1
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 8623 >> Train your class spells
.target Carolyn Ward
.xp <32,1
.xp >34,1
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 8696 >> Train your class spells
.target Carolyn Ward
.xp <34,1
step << Warlock
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 6229 >> Train your class spells
.target Richard Kerwin
.xp <32,1
.xp >34,1
step << Warlock
#optional
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 7648 >> Train your class spells
.target Richard Kerwin
.xp <34,1
step << Mage
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
.train 8407 >> Train your class spells
.target Anastasia Hartwell
.xp <32,1
.xp >34,1
step << Mage
#optional
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
.train 8492 >> Train your class spells
.target Anastasia Hartwell
.xp <34,1
step << Priest
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lazarus|r
.train 9473 >> Train your class spells
.target Father Lazarus
.xp <32,1
.xp >34,1
step << Priest
#optional
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lazarus|r
.train 8105 >> Train your class spells
.target Father Lazarus
.xp <34,1
step
#completewith next
.goto Undercity,47.20,59.69,0
.goto Undercity,47.20,59.69,12,0
.goto Undercity,43.55,68.11,12,0
.goto Undercity,45.20,71.67,12 >>Travel toward |cRXP_FRIENDLY_Faranell|r
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faranell|r
.turnin 513 >> Turn in Elixir of Agony
.target Master Apothecary Faranell
step
#completewith next
.goto Undercity,51.92,64.68,15 >>Travel toward |cRXP_FRIENDLY_Varimathras|r
.isOnQuest 550
.group
step
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
.turnin 550 >> Turn in Battle of Hillsbrad
.target Varimathras
.isOnQuest 550
.group
step << Druid
#optional
#completewith next
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,36.026,41.374
>>|cRXP_WARN_Combine the two pendants at the Shrine of Remulos for the |r|cRXP_LOOT_Pendant of the Sea Lion|r
.collect 15882,1,30,1,1
.collect 15883,1,30,1,1
.complete 30,1 
.itemcount 15882,1
step << Druid
#optional
.goto Moonglade,56.21,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
.turnin 30 >> Turn in Trial of the Sea lion
.accept 31 >> Accept Aquatic Form
.target Dendrite Starblaze
.itemcount 15885,1
step << Druid
#optional
.goto Moonglade,56.21,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
.accept 31 >> Accept Aquatic Form
.target Dendrite Starblaze
.isQuestTurnedIn 30
step << Druid
#completewith DruidTraining4
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 22568 >> Train your class spells
.target Loganaar
.xp <32,1
.xp >34,1
step << Druid
#label DruidTraining4
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 1823 >> Train your class spells
.target Loganaar
.xp <34,1
step
#completewith next
.hs >> Hearth to Freewind Post
.use 6948
.bindlocation 484,1
.subzoneskip 484
step
.goto Thousand Needles,46.07,51.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Abeqwa|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Abeqwa
step << Druid
#optional
#completewith next
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyse|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.target Nyse
.zoneskip Thunder Bluff
step << Druid
#optional
#completewith next
.goto Thunder Bluff,69.88,30.90,80 >> Travel to the Elder Rise
step << Druid
#optional
.goto Thunder Bluff,76.48,27.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.trainer >> Train your class spells
.turnin 31 >> Turn in Aquatic Form
.target Turak Runetotem
.isOnQuest 31
step << Druid
#optional
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Freewind Post >>Fly to Freewind Post
.target Tal
.zoneskip Thunder Bluff,1
]]);
