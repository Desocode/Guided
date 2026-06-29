RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 50-60
#season 0,1
#classic
#tbc
#mop
#era/som
<< Alliance
#name 51-51 Blasted Lands
#next 51-52 WPL
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy the following items for a faster turn in at Blasted Lands shortly (Only do this if you are below level 52)|r
>>|cRXP_WARN_This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any|r
>>|cRXP_WARN_The|r |T134089:0|t[Imperfect Draenethyst Fragment] |cRXP_WARN_and|r |T134564:0|t[Flawless Draenethyst Sphere] |cRXP_WARN_are rare and may not be on the Auction House|r
.blastedLands
.collect 10593,1,3501,1 
.collect 8244,1,2521,1 
.target Auctioneer Jaxon
step << Hunter
.goto StormwindClassic,49.990,57.641
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frederick Stover|r
.vendor >>|cRXP_BUY_Stock up on|r |T135661:0|t[Jagged Arrows]
.target Frederick Stover
step
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
>>|cRXP_WARN_NOTE: The Blasted Lands part of the guide is a filler section in case you are behind on levels. If you are level 52 or above skip to the next part (WPL)|r
.fly Blasted Lands>> Fly to Blasted Lands
.target Dungar Longdrink
step
.goto Blasted Lands,67.570,19.291
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r atop the Tower
.accept 2783 >> Accept Petty Squabbles
.target Ambassador Ardalan
step
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2783 >> Turn in Petty Squabbles
.accept 2801 >> Accept A Tale of Sorrow
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.complete 2801,1 
.skipgossip
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2801 >> Turn in A Tale of Sorrow
.target Fallen Hero of the Horde
step << Hunter/Rogue
#loop
#completewith next
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,62.48,27.98,0
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_Prioritize |cRXP_ENEMY_Scorpids|r, |cRXP_ENEMY_Vultures|r and |cRXP_ENEMY_Boars|r so you can receive the 25 Agility buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Hunter/Rogue
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
>>|cRXP_WARN_Once you have 3 |cRXP_LOOT_Pincers|r, 2 |cRXP_LOOT_Gizzards|r and 1 |cRXP_LOOT_Lung|r turn in the quest for the 25 Agility buff|r
.collect 8393,3,2585,1 
.collect 8396,2,2585,1 
.collect 8392,1,2585,1 
.accept 2585 >> Accept The Decisive Striker
.disablecheckbox
.turnin 2585 >> Turn in The Decisive Striker
.disablecheckbox
.target Bloodmage Drazial
step << Hunter/Rogue
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
.accept 2585 >> Accept The Decisive Striker
.turnin 2585 >> Turn in The Decisive Striker
.target Bloodmage Drazial
step << Druid/Paladin/Warrior
#completewith next
.blastedLands
#loop
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,62.48,27.98,0
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_Prioritize |cRXP_ENEMY_Hyenas|r, |cRXP_ENEMY_Boars|r and |cRXP_ENEMY_Scorpids|r so you can receive the 25 Strength buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Druid/Paladin/Warrior
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
>>|cRXP_WARN_Once you have 3 |cRXP_LOOT_Jowls|r, 2 |cRXP_LOOT_Lungs|r and 1 |cRXP_LOOT_Pincer|r turn in the quest for the 25 Strength buff|r
.collect 8391,3,2581,1 
.collect 8392,2,2581,1 
.collect 8393,1,2581,1 
.accept 2581 >> Accept Snickerfang Jowls
.disablecheckbox
.turnin 2581 >> Turn in Snickerfang Jowls
.disablecheckbox
.target Bloodmage Drazial
step << Druid/Paladin/Warrior
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
.accept 2581 >> Accept Snickerfang Jowls
.turnin 2581 >> Turn in Snickerfang Jowls
.target Bloodmage Drazial
step
.blastedLands
#loop
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,62.48,27.98,0
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step
.addquestitem 8391,2581
.addquestitem 8392,2583
.addquestitem 8393,2585
.addquestitem 8394,2601
.addquestitem 8396,2603
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Lynnore|r and |cRXP_FRIENDLY_Bloodmage Drazial|r
.accept 2601 >> Accept The Basilisk's Bite
.turnin 2601 >> Turn in The Basilisk's Bite
.target +Bloodmage Lynnore
.accept 2603 >> Accept Vulture's Vigor
.turnin 2603 >> Turn in Vulture's Vigor
.target +Bloodmage Lynnore
.goto Blasted Lands,50.640,14.299
.accept 2585 >> Accept The Decisive Striker
.turnin 2585 >> Turn in The Decisive Striker
.target +Bloodmage Drazial
.accept 2583 >> Accept A Boar's Vitality
.turnin 2583 >> Turn in A Boar's Vitality
.target +Bloodmage Drazial
.accept 2581 >> Accept Snickerfang Jowls
.turnin 2581 >> Turn in Snickerfang Jowls
.target +Bloodmage Drazial
.goto Blasted Lands,50.548,14.204
step
#optional
#completewith BLend
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
.accept 3501 >> Accept Everything Counts In Large Amounts
.turnin 3501 >> Turn in Everything Counts In Large Amounts
.collect 10593,1,3501,1 
.itemcount 10593,1 
.target Kum'isha the Collector
step
#optional
#completewith BLend
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
.accept 2521 >> Accept To Serve Kum'isha
.turnin 2521 >> Turn in To Serve Kum'isha
.collect 8244,1,2521,1 
.itemcount 8244,1 
.target Kum'isha the Collector
step
#label BLend
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Constantine|r
.fly Redridge >> Fly to Redridge
.target Alexandra Constantine
.zoneskip Burning Steppes
step
#completewith next
.goto Burning Steppes,78.7,81.1,60,0
.goto Burning Steppes,77.5,68.0
.zone Burning Steppes >> Travel to Burning Steppes
step
.goto Burning Steppes,82.4,63.6,60,0
.goto Burning Steppes,84.555,68.677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.accept 3823 >> Accept Extinguish the Firegut
.target Oralius
step
.goto Burning Steppes,75.34,48.62,70,0
.goto Burning Steppes,82.89,37.61,70,0
.goto Burning Steppes,80.74,44.38
>>Kill |cRXP_ENEMY_Firegut Ogre Mages|r, |cRXP_ENEMY_Firegut Ogres|r and |cRXP_ENEMY_Firegut Brutes|r
.complete 3823,1 
.mob +Firegut Ogre Mage
.complete 3823,2 
.mob +Firegut Ogre
.complete 3823,3 
.mob +Firegut Brute
step
.goto Burning Steppes,84.555,68.677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 3823 >> Turn in Extinguish the Firegut
.target Oralius
step
.goto Burning Steppes,84.334,68.326
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgun Stoutarm|r
.fp Burning Steppes >> Get the Burning Steppes Flight Path
.fly Ironforge>> Fly to Ironforge << !Mage
.target Borgun Stoutarm
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
]]);
