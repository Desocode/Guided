RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#season 0,1
#classic
#tbc
#mop
<< Alliance !Hunter
#name 35-37 Desolace
#next 36-38 Stranglethorn Vale II
#xprate <1.99
step
#label ReclaimersDesolace
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
>>|cRXP_FRIENDLY_Roetten Stonehammer|r |cRXP_WARN_patrols the Hall of Explorers|r
.accept 1453 >> Accept Reclaimers' Business in Desolace
.target Roetten Stonehammer
step << Warrior
.isOnQuest 1791
.goto Ironforge,55.506,47.746
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth|r
.fly Southshore >> Fly to Southshore
.target Gryth Thurden
step << Warrior
.isOnQuest 1791
.goto Alterac Mountains,80.499,66.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1791 >>Turn in The Windwatcher
.accept 1712 >>Accept Cyclonian
.target Bath'rah the Windwatcher
step << Warrior
.isQuestTurnedIn 1791
.goto Alterac Mountains,80.499,66.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.accept 1712 >>Accept Cyclonian
.target Bath'rah the Windwatcher
step << Warrior
.isQuestTurnedIn 1791
#softcore
#completewith next
.deathskip >> Die on purpose and respawn at Southshore
.target Spirit Healer
.zoneskip Wetlands
.zoneskip Ironforge
step << Warrior
.isQuestTurnedIn 1791
#hardcore
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.goto Western Plaguelands,42.924,85.061
.fly Wetlands >> Fly to Wetlands
.target Bibilfaz Featherwhistle
.zoneskip Wetlands
.zoneskip Ironforge
step << Mage
.train 3565,3
.cast 3565 >> Teleport to Darnassus
.usespell 3565
.zoneskip Desolace
step << Mage
.train 3565,3
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Travel through the purple portal to Rut'theran Village
.zoneskip Desolace
step << Mage
.train 3565,3
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Desolace >> Fly to Desolace
.target Vesprystus
.zoneskip Desolace
step
.goto Ironforge,55.506,47.746
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth|r
.fly Wetlands >> Fly to Wetlands
.target Gryth Thurden
.zoneskip Hillsbrad Foothills
.zoneskip Western Plaguelands
.zoneskip Teldrassil
step
.goto Wetlands,7.10,57.96,30,0
.goto Wetlands,4.61,57.26,15 >> Travel to the Menethil Harbor docks
.zone Darkshore >> Take the boat to Darkshore
.zoneskip Teldrassil
step
.goto Darkshore,36.71,44.98,10,0
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Desolace >> Fly to Desolace
.target Caylais Moonfeather
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lyshaerya|r
.goto Desolace,66.275,6.554
.home >> Set your Hearthstone to Nijel's Point
.target Innkeeper Lyshaerya
step
.goto Desolace,66.519,7.907
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.accept 261 >> Accept Down the Scarlet Path
.target Brother Anton
.dungeon SM
step
#xprate <1.2
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.accept 1454 >> Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
#som
#phase 1-2
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.accept 1454 >> Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1453 >> Turn in Reclaimers' Business in Desolace
.accept 1458 >> Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#som
#phase 3-6
.goto Desolace,66.743,10.872
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r
.accept 1387 >> Accept Centaur Bounty
.target Corporal Melkins
step
#era/som
.goto Desolace,66.74,10.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r and |cRXP_FRIENDLY_Captain Pentigast|r
.accept 1387 >> Accept Centaur Bounty
.target +Corporal Melkins
.goto Desolace,66.743,10.872
.accept 1382 >> Accept Strange Alliance
.target +Captain Pentigast
.goto Desolace,66.665,10.933
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.accept 1437 >> Accept Vahlarriel's Search
.target Vahlarriel Demonslayer
step
.goto Desolace,72.96,18.47,70,0
.goto Desolace,79.45,17.65,70,0
.goto Desolace,78.09,22.50,70,0
.goto Desolace,76.32,25.08,70,0
.goto Desolace,73.96,22.05,70,0
.goto Desolace,72.51,17.93
>>Kill |cRXP_ENEMY_Hatefury Satyrs|r. Loot them for their |cRXP_LOOT_Claws|r and |cRXP_LOOT_Horns|r
.complete 1458,1 
.complete 1458,2 
.mob Hatefury Trickster
.mob Hatefury Shadowstalker
.mob Hatefury Hellcaller
.mob Hatefury Betrayer
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1458 >> Turn in Reagents for Reclaimers Inc.
.accept 1459 >> Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#completewith ReagentsOne
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
.complete 1459,1 
.mob +Scorpashi Snapper
.mob +Scorpashi Lasher
.complete 1459,2 
.mob +Aged Kodo
step
.goto Desolace,56.522,17.844
>>Click the |cRXP_PICK_Malem Chest|r on the ground
.turnin 1437 >> Turn in Vahlarriel's Search
.accept 1465 >> Accept Vahlarriel's Search
step
#era/som
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.accept 5741 >> Accept Sceptre of Light
.target Azore Aldamort
step
#era/som
.goto Desolace,36.111,30.451
>>Click |cRXP_PICK_Karnitol's Chest|r on the ground
.turnin 1454 >> Turn in The Karnitol Shipwreck
.accept 1455 >> Accept The Karnitol Shipwreck
step
#era/som
#label ReagentsOne
.goto Desolace,36.069,30.407
>>Click |cRXP_PICK_Rackmore's Log|r on the small barrel
.accept 6161 >> Accept Claim Rackmore's Treasure!
step
#era/som
.goto Desolace,31.4,28.2,70,0
.goto Desolace,34.2,32.6,70,0
.goto Desolace,30.6,34.6,70,0
.goto Desolace,33.2,31.6
>>Kill |cRXP_ENEMY_Drysnap Pincers|r and |cRXP_ENEMY_Drysnap Crawlers|r. Loot them for |cRXP_LOOT_Rackmore's Silver Key|r
>>Use an |T134797:0|t[Elixir of Water Breathing] if you have one << !Warlock
.use 5996 
>>|cRXP_WARN_Buff yourself with|r |T136148:0|t[Underwater Breathing] << Warlock
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
#completewith ReagentsTwo
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
.complete 1459,1 
.mob +Scorpashi Snapper
.mob +Scorpashi Lasher
.complete 1459,2 
.mob +Aged Kodo
step
#era/som
.goto Desolace,60.863,61.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
.accept 5561 >> Accept Kodo Roundup
.target Smeed Scrabblescrew
step
#era/som
.goto Desolace,68.8,71.2,75,0
.goto Desolace,65.2,75.6,75,0
.goto Desolace,70.0,81.0,75,0
.goto Desolace,70.0,74.6,75,0
.goto Desolace,73.8,65.8,75,0
.goto Desolace,69.4,73.4
>>Kill |cRXP_ENEMY_Magram Centaurs|r. Loot them for their |cRXP_LOOT_Ears|r
>>|cRXP_WARN_Continue killing |cRXP_ENEMY_Magram Centaurs|r until you've reached |cRXP_FRIENDLY_Friendly|r reputation standing with Gelkis Clan Centaur|r
.complete 1387,1 
.complete 1382,1 
.mob Magram Marauder
.mob Magram Mauler
.mob Magram Outrunner
.mob Magram Pack Runner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Windchaser
.mob Magram Wrangler
step
.dungeon SM
.goto Desolace,64.30,81.96,70,0
.goto Desolace,64.00,91.70,70,0
.goto Desolace,59.91,89.42,70,0
.goto Desolace,64.00,91.70
>>Kill |cRXP_ENEMY_Undead Ravagers|r
.complete 261,1 
.mob Undead Ravager
step
#era/som
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1382 >>Turn in Strange Alliance
.accept 1384 >>Accept Raid on the Kolkar
.target Uthek the Wise
step
#era/som
.goto Desolace,68.8,71.2,75,0
.goto Desolace,65.2,75.6,75,0
.goto Desolace,70.0,81.0,75,0
.goto Desolace,70.0,74.6,75,0
.goto Desolace,73.8,65.8,75,0
.goto Desolace,69.4,73.4
+Grind until your Hearthstone is off cooldown
.mob Magram Marauder
.mob Magram Mauler
.mob Magram Outrunner
.mob Magram Pack Runner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Windchaser
.mob Magram Wrangler
.cooldown item,6948,<0
step
#era/som
#label ReagentsTwo
#completewith next
.hs >> Hearth to Nijel's Point
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Desolace,66.519,7.907
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.turnin 261 >> Turn in Down the Scarlet Path
.accept 1052 >> Accept Down the Scarlet Path
.target Brother Anton
.dungeon SM
step
#era/som
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1455 >> Turn in The Karnitol Shipwreck
.accept 1456 >> Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.turnin 1465 >> Turn in Vahlarriel's Search
.accept 1438 >> Accept Vahlarriel's Search
.target Vahlarriel Demonslayer
step
#completewith ReagentsThree
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
.complete 1459,1 
.mob +Scorpashi Snapper
.mob +Scorpashi Lasher
.complete 1459,2 
.mob +Aged Kodo
step
#era/som
.goto Desolace,70.0,41.6,70,0
.goto Desolace,73.6,44.6,70,0
.goto Desolace,70.2,47.2,70,0
.goto Desolace,73.4,51.5,70,0
.goto Desolace,71.6,45.6
>>Kill the |cRXP_ENEMY_Kolkar|r. Loot them for their |cRXP_LOOT_Charms|r
.complete 1384,1 
.mob Kolkar Centaur
.mob Kolkar Scout
.mob Kolkar Windchaser
.mob Kolkar Mauler
.mob Kolkar Destroyer
.mob Kolkar Battle Lord
.mob Kolkar Waylayer
.mob Kolkar Ambusher
step
#som
#phase 3-6
.goto Desolace,68.8,71.2,75,0
.goto Desolace,65.2,75.6,75,0
.goto Desolace,70.0,81.0,75,0
.goto Desolace,70.0,74.6,75,0
.goto Desolace,73.8,65.8,75,0
.goto Desolace,69.4,73.4
>>Kill |cRXP_ENEMY_Magram Centaurs|r. Loot them for their |cRXP_LOOT_Ears|r
.complete 1387,1 
.mob Magram Marauder
.mob Magram Mauler
.mob Magram Outrunner
.mob Magram Pack Runner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Windchaser
.mob Magram Wrangler
step
.goto Desolace,62.314,38.965
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
.accept 5501 >> Accept Bone Collector
.target Bibbly F'utzbuckle
step
#era/som
#completewith next
#label ReagentsThree
.goto Desolace,55.75,28.88,110 >> Travel to Thunder Axe Fortress
step
#era/som
.goto Desolace,55.170,30.149
>>Ascend the Watchtower
>>Kill the |cRXP_ENEMY_Burning Blade Seer|r atop the Tower. Loot it for the |cRXP_LOOT_Sceptre|r
>>|cRXP_WARN_There may only ever be 1 |cRXP_ENEMY_Burning Blade Seer|r. You may need to wait for a respawn|r
.complete 5741,1 
.mob Burning Blade Seer
step
#completewith next
.goto Desolace,55.31,27.45,25 >> Enter the main Fortress
step
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
.turnin 1438 >> Turn in Vahlarriel's Search
.accept 1439 >> Accept Search for Tyranis
.target Dalinda Malem
step
#completewith next
.goto Desolace,53.32,29.18,25 >> Enter the secondary Fortress
step
>>Kill |cRXP_ENEMY_Tyranis Malem|r. Loot him for his |cRXP_LOOT_Pendant|r
.goto Desolace,53.008,29.078
.complete 1439,1 
.mob Tyranis Malem
step
#completewith next
.goto Desolace,55.31,27.45,25 >> Travel back towards |cRXP_FRIENDLY_Dalinda Malem|r
step
#completewith next
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
.turnin 1439 >> Turn in Search for Tyranis
.target Dalinda Malem
step
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
>>|cRXP_WARN_This will start an escort quest|r
.accept 1440,1 >> Accept Return to Vahlarriel
.target Dalinda Malem
step
.goto Desolace,58.26,30.94
>>Safely exit Thunder Axe Fortress with |cRXP_FRIENDLY_Dalinda Malem|r
.complete 1440,1 
.target Dalinda Malem
step
#completewith next
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
.complete 1459,1 
.mob +Scorpashi Snapper
.mob +Scorpashi Lasher
.complete 1459,2 
.mob +Aged Kodo
step
#era/som
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.turnin 5741 >> Turn in Sceptre of Light
.accept 6027 >> Accept Book of the Ancients
.target Azore Aldamort
step
#completewith BookofAncients
.goto Desolace,30.12,10.42,225 >> Swim to Ranazjar Isle
step
#era/som
#completewith BookofAncients
>>Kill the |cRXP_ENEMY_Slitherblades|r. Loot them for |cRXP_LOOT_Rackmore's Golden Key|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
#era/som
#completewith BookofAncients
>>Kill |cRXP_ENEMY_Slitherblade Tidehunters|r and |cRXP_ENEMY_Slitherblade Sea Witches|r. Loot them for |cRXP_LOOT_Karnitol's Satchel|r
.complete 1456,1 
.mob Slitherblade Tidehunter
.mob Slitherblade Sea Witch
step
#era/som
.isOnQuest 6027
#label BookofAncients
.goto Desolace,28.250,6.670
>>Click the |cRXP_PICK_Serpent Statue|r to summon |cRXP_ENEMY_Lord Kragaru|r
>>Kill |cRXP_ENEMY_Lord Kragaru|r. Loot him for the |cRXP_LOOT_Book of the Ancients|r
.complete 6027,1 
.mob Lord Kragaru
step
#era/som
#completewith next
>>Kill the |cRXP_ENEMY_Slitherblades|r. Loot them for |cRXP_LOOT_Rackmore's Golden Key|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
#era/som
.goto Desolace,28.06,10.86,70,0
.goto Desolace,30.87,8.41,70,0
.goto Desolace,30.6,15.8,70,0
.goto Desolace,33.2,10.6,70,0
.goto Desolace,30.8,8.0
>>Kill |cRXP_ENEMY_Slitherblade Tidehunters|r and |cRXP_ENEMY_Slitherblade Sea Witches|r. Loot them for |cRXP_LOOT_Karnitol's Satchel|r
>>|cRXP_WARN_You may also find |cRXP_ENEMY_Slitherblade Tidehunters|r and |cRXP_ENEMY_Slitherblade Sea Witches|r in the water|r
.complete 1456,1 
.mob Slitherblade Tidehunter
.mob Slitherblade Sea Witch
step
#era/som
.goto Desolace,28.06,10.86,70,0
.goto Desolace,30.87,8.41,70,0
.goto Desolace,30.6,15.8,70,0
.goto Desolace,33.2,10.6,70,0
.goto Desolace,30.8,8.0
>>Kill the |cRXP_ENEMY_Slitherblades|r. Loot them for |cRXP_LOOT_Rackmore's Golden Key|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
#era/som
>>Click |cRXP_PICK_Rackmore's Chest|r on the ground
.goto Desolace,30.005,8.706
.turnin 6161 >>Turn in Claim Rackmore's Treasure!
step
#completewith ReagentsFive
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
.complete 1459,1 
.mob +Scorpashi Snapper
.mob +Scorpashi Lasher
.complete 1459,2 
.mob +Aged Kodo
step
#era/som
.isQuestComplete 6027
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.turnin 6027 >>Turn in Book of the Ancients
.target Azore Aldamort
step
#era/som
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1384 >>Turn in Raid on the Kolkar
.accept 1370 >>Accept Stealing Supplies
.target Uthek the Wise
step
#era/som
#label ReagentsFive
#completewith next
>>Loot |cRXP_LOOT_Kodo Bones|r around the graveyard
>>|cRXP_WARN_Looting them may cause |cRXP_ENEMY_Kodo Apparitions|r to spawn. |cRXP_ENEMY_Kodo Apparitions|r do not drop|r |cRXP_LOOT_Kodo Bones|r
.complete 5501,1 
step
#era/som
.goto Desolace,51.668,58.244
.goto Desolace,60.863,61.859,0
.use 13892 >>|cRXP_WARN_Use the|r |T132488:0|t[Kodo Kombobulator] |cRXP_WARN_on |cRXP_ENEMY_Ancient Kodos|r and |cRXP_ENEMY_Dying Kodos|r. Take them back to|r |cRXP_FRIENDLY_Smeed|r
>>|cRXP_WARN_You may only take 1 |cRXP_FRIENDLY_Tamed Kodo|r back at a time|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Tamed Kodo|r once you've taken it back to|r |cRXP_FRIENDLY_Smeed|r
.skipgossip
.complete 5561,1 
.target Tamed Kodo
.mob Ancient Kodo
.mob Dying Kodo
.maxlevel 36
step
#era/som
.goto Desolace,52.50,58.56
>>Loot |cRXP_LOOT_Kodo Bones|r around the graveyard
>>|cRXP_WARN_Looting them may cause |cRXP_ENEMY_Kodo Apparitions|r to spawn. |cRXP_ENEMY_Kodo Apparitions|r do not drop|r |cRXP_LOOT_Kodo Bones|r
.complete 5501,1 
step
#era/som
.isQuestComplete 5561
.goto Desolace,60.863,61.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
.turnin 5561 >> Turn in Kodo Roundup
.target Smeed Scrabblescrew
step
#era/som
.abandon 5561 >> Abandon Kodo Roundup you're level 36 or above
.xp <36,1
step
#completewith next
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
.complete 1459,1 
.mob +Scorpashi Snapper
.mob +Scorpashi Lasher
.complete 1459,2 
.mob +Aged Kodo
step
#era/som
.goto Desolace,66.5,80.5,50,0
.goto Desolace,70.9,75.5,50,0
.goto Desolace,72.5,78.6,50,0
.goto Desolace,74.1,72.7,50,0
.goto Desolace,66.5,80.5,50,0
.goto Desolace,70.9,75.5,50,0
.goto Desolace,72.5,78.6,50,0
.goto Desolace,74.1,72.7,50,0
.goto Desolace,70.9,75.5
>>Open the |cRXP_PICK_Sacks of Meat|r. Loot them for the |cRXP_LOOT_Crudely Dried Meats|r
.complete 1370,1 
step
.goto Desolace,52.19,57.50,70,0
.goto Desolace,62.13,60.65,70,0
.goto Desolace,63.86,68.83,70,0
.goto Desolace,52.19,57.50
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Aged Kodo Hides|r
>>|cRXP_WARN_You must complete this step now|r
.complete 1459,2 
.mob Aged Kodo
step
#completewith next
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r, |cRXP_ENEMY_Scorpashi Lashers|r and |cRXP_ENEMY_Scorpashi Venomlashs|r. Loot them for their |cRXP_LOOT_Venom|r
.complete 1459,1 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Scorpashi Venomlash
step
.goto Desolace,62.32,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
.turnin 5501 >> Turn in Bone Collector
.target Bibbly F'utzbuckle
step
.goto Desolace,70.4,63.0,80,0
.goto Desolace,58.6,50.0,80,0
.goto Desolace,41.4,48.2,80,0
.goto Desolace,43.6,75.2
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r, |cRXP_ENEMY_Scorpashi Lashers|r and |cRXP_ENEMY_Scorpashi Venomlashs|r. Loot them for their |cRXP_LOOT_Venom|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
>>|cRXP_WARN_You must complete this step now|r
.complete 1459,1 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Scorpashi Venomlash
step
#era/som
#softcore
#completewith next
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
#era/som
#completewith next
.goto Desolace,36.234,79.245,80 >> Travel to |cRXP_FRIENDLY_Uthek the Wise|r in southern Desolace
step
#era/som
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1370 >>Turn in Stealing Supplies
.accept 1373 >>Accept Ongeku
.target Uthek the Wise
step << !Warlock
.hs >>Hearth to Nijel's Point
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#era/som
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1456 >> Turn in The Karnitol Shipwreck
.accept 1457 >> Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1459 >> Turn in Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
.goto Desolace,66.743,10.872
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r
.turnin 1387 >> Turn in Centaur Bounty
.target Corporal Melkins
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.turnin 1440 >> Turn in Return to Vahlarriel
.target Vahlarriel Demonslayer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.goto Desolace,64.66,10.54
.fly Tanaris >> Fly to Tanaris
.target Baritanas Skyriver
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> Travel to The Shimmering Flats
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1112 >> Turn in Parts for Kravel
.timer 15,Parts for Kravel RP
.target Kravel Koalbeard
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1183 >> Turn in Goblin Sponsorship
.accept 1186 >> Accept The Eighteenth Pilot
.target Pozzik
step
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1186 >> Turn in The Eighteenth Pilot
.accept 1187 >> Accept Razzeric's Tweaking
.target Razzeric
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1114 >> Accept Delivery to the Gnomes
.target Kravel Koalbeard
step
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.turnin 1114 >> Turn in Delivery to the Gnomes
.target Fizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1115 >> Accept The Rumormonger
.target Kravel Koalbeard
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,51.006,29.345
.fly Ratchet >> Fly to Ratchet
.target Bera Stonehammer
step
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> Take the Boat to Booty Bay
]]);
