RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 50-60
#classic
#tbc
#mop
<< Horde
#name 54-55 Un'Goro Crater
#displayname 54-56 Un'Goro Crater << sod
#next 55-56 Felwood/Winterspring
step
#optional << Mage
#completewith StoneCircleTI
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Tanaris >>Fly to Tanaris
.target Omusa Thunderhorn
.zoneskip Tanaris
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pestlezugg|r
.turnin 4494 >>Turn in March of the Silithid
.accept 4496 >>Accept Bungle in the Jungle
.target Alchemist Pestlezugg
step
#label StoneCircleTI
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon|r
.turnin 3444 >>Turn in The Stone Circle
.target Marvon Rivetseeker
step
#completewith next
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Un'Goro Crater>>Fly to Un'Goro Crater
.target Bulkrek Ragefist
.zoneskip Un'Goro Crater
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hol'anyee|r and |cRXP_FRIENDLY_Williden|r
.accept 3883 >>Accept Alien Ecology
.target +Hol'anyee Marshal
.goto Un'Goro Crater,43.89,7.24
.accept 3881 >>Accept Expedition Salvation
.target +Williden Marshal
.goto Un'Goro Crater,43.95,7.14
step
.goto Un'Goro Crater,43.50,7.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark|r
.accept 3882 >>Accept Roll the Bones
.target Spark Nilminer
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.90,2.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 4288 >>Accept The Western Pylon
.accept 4287 >>Accept The Eastern Pylon
.target J.D. Collie
step
.goto Un'Goro Crater,43.61,8.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle|r
.accept 4492 >>Accept Lost!
.target Spraggle Frock
step
.goto Un'Goro Crater,43.55,8.42
>>Click the |cRXP_PICK_Wanted Poster|r
.accept 4501 >>Accept Beware of Pterrordax
step
.goto Un'Goro Crater,45.53,8.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larion|r
.accept 4145 >>Accept Larion and Muigin
.target Larion
step
.goto Tanaris,12.80,8.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
.accept 4503 >>Accept Shizzle's Flyer
.target Shizzle
step
#completewith Mighty
>>Collect |cRXP_LOOT_Un'Goro Soil|r as you quest throught Un'Goro
.collect 11018,25 
step
#completewith Gorillaz
>>Kill some of the |cRXP_ENEMY_Pterrordax|r found north of the Northern Pylon. Loot them for their |cRXP_LOOT_Scales|r
>>|cRXP_WARN_This does not need to be finished now|r
.complete 4501,1 
.complete 4503,2 
step
#completewith Gorillaz
.goto Un'Goro Crater,52.8,13.4,40,0
.goto Un'Goro Crater,53.0,17.6,40,0
.goto Un'Goro Crater,56.6,16.6,40,0
.goto Un'Goro Crater,60.6,20.6,40,0
>>On your way to Fungal Rock, kill |cRXP_ENEMY_Bloodpetal Flayers|r
>>|cRXP_WARN_Their poison deals high damage. Do not focus on this. You can finish it later|r << Warrior/Rogue
>>|cRXP_WARN_Their poison deals high damage and drains mana. Do not focus on this. You can finish it later|r << !Warrior !Rogue
.complete 4145,3 
.mob Bloodpetal Flayer
step
#label Gorillaz
.goto Un'Goro Crater,62.97,17.39,40,0
.subzone 542 >>Travel to Fungal Rock
.isOnQuest 4289
step
#label FungalRock
#loop
.goto Un'Goro Crater,62.86,18.17,0
.goto Un'Goro Crater,61.85,17.71,50,0
.goto Un'Goro Crater,64.32,16.35,25,0
.goto Un'Goro Crater,65.83,15.61,20,0
.goto Un'Goro Crater,68.70,17.13,20,0
.goto Un'Goro Crater,69.52,16.82,20,0
.goto Un'Goro Crater,68.63,14.36,20,0
.goto Un'Goro Crater,68.51,13.27,20,0
.goto Un'Goro Crater,65.64,14.60,20,0
.goto Un'Goro Crater,65.06,16.70,20,0
.goto Un'Goro Crater,63.91,16.35,20,0
.goto Un'Goro Crater,62.86,18.17,20,0
>>Kill |cRXP_ENEMY_Un'Goro Stompers|r, |cRXP_ENEMY_Un'Goro Thunderers|r. and |cRXP_ENEMY_Un'Goro gorillas|r. Loot them for their |cRXP_LOOT_Pelts|r
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Un'Goro Gorillas|r |cRXP_WARN_call for help in a 90 yard range.|r |cRXP_ENEMY_Un'Goro Thunderers|r |cRXP_WARN_have a high-damage, instant shock spell|r
.complete 4289,2 
.mob +Un'Goro Stomper
.complete 4289,3 
.mob +Un'Goro Thunderer
.complete 4289,1 
.mob +Un'Goro Gorilla
step
#completewith Ucha
>>Kill |cRXP_ENEMY_Diemetradons|r. Loot them for their |cRXP_LOOT_Bones|r and |cRXP_LOOT_Scales|r
>>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Elder Diemetradons'|r |cRXP_WARN_Pummel ability, which interrupts spells|r << Warlock/Priest/Mage/Shaman/Druid
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
#loop
.goto Un'Goro Crater,57.60,36.80,0
.goto Un'Goro Crater,57.60,36.80,60,0
.goto Un'Goro Crater,64.40,30.80,60,0
.goto Un'Goro Crater,68.20,24.00,60,0
.goto Un'Goro Crater,71.20,31.00,60,0
.goto Un'Goro Crater,74.20,39.60,60,0
.goto Un'Goro Crater,76.00,47.40,60,0
.goto Un'Goro Crater,74.20,39.60,60,0
.goto Un'Goro Crater,69.40,38.00,60,0
.goto Un'Goro Crater,66.60,35.60,60,0
.goto Un'Goro Crater,60.00,39.40,60,0
>>Kill |cRXP_ENEMY_Bloodpetal Threshers|r, |cRXP_ENEMY_Bloodpetal Lashers|r and |cRXP_ENEMY_Bloodpetal Flayers|r
>>|cRXP_WARN_Their poison deals high damage and they can disarm|r << Warrior/Rogue/Shaman
>>|cRXP_WARN_Their poison deals high damage and drains mana|r << !Warrior !Rogue !Shaman
.complete 4145,4 
.mob +Bloodpetal Thresher
.complete 4145,1 
.mob +Bloodpetal Lasher
.complete 4145,3 
.mob +Bloodpetal Flayer
step
.goto Un'Goro Crater,68.54,36.54
>>Loot the |cRXP_PICK_Crate of Foodstuffs|r on the ground
.complete 3881,1 
step
.goto Un'Goro Crater,77.24,49.96
>>Click the |cRXP_PICK_Eastern Crystal Pylon|r
.complete 4287,1 
.skipgossip
.isOnQuest 4287
step
.goto Un'Goro Crater,79.94,49.88
.use 11568 >>|cRXP_WARN_Open|r |T133635:0|t[Torwa's Pouch]
.use 11569 >>|cRXP_WARN_Stand near the big flat rock, then use the|r |T133970:0|t[Preserved Threshadon Meat]
.use 11570 >>|cRXP_WARN_Use the|r |T134743:0|t[Preserved Pheromone Mixture]
>>Kill |cRXP_ENEMY_Lar'korwi|r as he spawns. Loot him for his |cRXP_LOOT_Head|r
.complete 4292,1 
.mob Lar'korwi
step << Druid
#season 0
#phase 4-6
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa|r
.turnin 4289 >>Turn in The Apes of Un'Goro
.turnin 4292 >>Turn in The Bait for Lar'korwi
.accept 4301 >>Accept The Mighty U'cha
.accept 9052 >>Accept Bloodpetal Poison << Druid
.target Torwa Pathfinder
.dungeon ST
step
#label Ucha
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa|r
.turnin 4289 >>Turn in The Apes of Un'Goro
.turnin 4292 >>Turn in The Bait for Lar'korwi
.accept 4301 >>Accept The Mighty U'cha
.target Torwa Pathfinder
step << Druid
#season 0
#phase 4-6
#completewith Pterrordax
>>Loot |cRXP_PICK_Bloodpetal Sprouts|r around the zone until you have 8 |cRXP_LOOT_Bloodcaps|r
.complete 9052,2 
.dungeon ST
step << Druid
#season 0
#phase 4-6
#completewith HiveSample
.goto Un'Goro Crater,50.59,77.06,0
>>Kill |cRXP_ENEMY_Gorishi Silithid|r. Loot them for a |cRXP_LOOT_Gorishi Scent Gland|r << !Druid
>>Kill |cRXP_ENEMY_Gorishi Silithid|r. Loot them for a |cRXP_LOOT_Gorishi Scent Gland|r and for |cRXP_LOOT_Gorishi Stings|r << Druid
.complete 4496,1 
.complete 9052,1 << Druid 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
.dungeon ST
step
#completewith HiveSample
.goto Un'Goro Crater,50.59,77.06,0
>>Kill |cRXP_ENEMY_Gorishi Silithid|r. Loot them for a |cRXP_LOOT_Gorishi Scent Gland|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
step
.goto Un'Goro Crater,49.96,81.69,15 >>Enter the Silithid cave
.isOnQuest 3883
step
#completewith next
.goto Un'Goro Crater,49.43,82.90,15,0
.goto Un'Goro Crater,49.17,84.51,12 >>Enter the room on the left
step
#label HiveSample
.goto Un'Goro Crater,48.69,85.31
.use 11132 >>|cRXP_WARN_Use your|r |T134864:0|t[Scraping Vial] |cRXP_WARN_in the centre of the room|r
.complete 3883,1 
step << Druid
#season 0
#phase 4-6
#loop
.goto Un'Goro Crater,51.74,75.36,0
.goto Un'Goro Crater,49.44,82.85,40,0
.goto Un'Goro Crater,50.35,79.55,50,0
.goto Un'Goro Crater,48.69,76.45,70,0
.goto Un'Goro Crater,47.58,81.58,70,0
.goto Un'Goro Crater,49.38,82.32,70,0
.goto Un'Goro Crater,52.38,84.31,70,0
.goto Un'Goro Crater,54.03,78.15,70,0
.goto Un'Goro Crater,51.74,75.36,70,0
>>Kill |cRXP_ENEMY_Gorishi Silithid|r. Loot them for a |cRXP_LOOT_Gorishi Scent Gland|r << !Druid
>>Kill |cRXP_ENEMY_Gorishi Silithid|r. Loot them for a |cRXP_LOOT_Gorishi Scent Gland|r and for |cRXP_LOOT_Gorishi Stings|r << Druid
.complete 4496,1 
.complete 9052,1 << Druid 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
.dungeon ST
step
#loop
.goto Un'Goro Crater,51.74,75.36,0
.goto Un'Goro Crater,49.44,82.85,40,0
.goto Un'Goro Crater,50.35,79.55,50,0
.goto Un'Goro Crater,48.69,76.45,70,0
.goto Un'Goro Crater,47.58,81.58,70,0
.goto Un'Goro Crater,49.38,82.32,70,0
.goto Un'Goro Crater,52.38,84.31,70,0
.goto Un'Goro Crater,54.03,78.15,70,0
.goto Un'Goro Crater,51.74,75.36,70,0
>>Kill |cRXP_ENEMY_Gorishi Silithid|r. Loot them for a |cRXP_LOOT_Gorishi Scent Gland|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
step
#completewith next
.goto Un'Goro Crater,44.11,91.63,0
>>Loot the |cRXP_ENEMY_Pterrordax|r you kill for their |cRXP_LOOT_Scales|r
>>|cRXP_WARN_This does not need to be finished now|r
.complete 4503,2 
step
#label Pterrordax
#loop
.goto Un'Goro Crater,43.6,92.4,0
.goto Un'Goro Crater,56.2,88.2,40,0
.goto Un'Goro Crater,57.0,92.6,40,0
.goto Un'Goro Crater,50.4,87.8,40,0
.goto Un'Goro Crater,50.6,89.8,40,0
.goto Un'Goro Crater,43.0,85.2,40,0
.goto Un'Goro Crater,43.6,92.4,40,0
>>Kill |cRXP_ENEMY_Pterrordax|r in the southern mountains
.complete 4501,1 
.unitscan Pterrordax
step << Druid
#season 0
#phase 4-6
#completewith next
>>Finish looting |cRXP_PICK_Bloodpetal Sprouts|r around the zone until you have 8 |cRXP_LOOT_Bloodcaps|r
.complete 9052,2 
.dungeon ST
step << Druid
#season 0
#phase 4-6
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa|r
.turnin 9052 >>Turn in Bloodpetal Poison
.target Torwa Pathfinder
.dungeon ST
step
#completewith FirePlumeRidge
>>Kill |cRXP_ENEMY_Bloodpetal Trappers|r
>>|cRXP_WARN_Their poison deals high damage, and they can cast entangling roots|r << Warrior/Rogue/Shaman
>>|cRXP_WARN_Their poison deals high damage and drains mana. They can cast entangling roots|r << !Warrior !Rogue !Shaman
.complete 4145,2 
.mob Bloodpetal Trapper
step
#completewith FirePlumeRidge
>>Kill |cRXP_ENEMY_Diemetradons|r. Loot them for their |cRXP_LOOT_Bones|r and |cRXP_LOOT_Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
.goto Un'Goro Crater,38.46,66.07
>>Loot the |cRXP_PICK_Research Equipment boxes|r on the ground
.complete 3881,2 
step
.goto Un'Goro Crater,23.87,59.21
>>Click the |cRXP_PICK_Western Crsytal Pylon|r
.complete 4288,1 
.skipgossip
step
#completewith FirePlumeRidge
.goto Un'Goro Crater,20.95,59.45,80,0
.goto Un'Goro Crater,36.76,35.47,0
>>Kill |cRXP_ENEMY_Frenzied Pterrordax|r. Loot them for their |cRXP_LOOT_Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
.goto Un'Goro Crater,30.94,50.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
.accept 974 >>Accept Finding the Source
.target Krakle
step
#label FirePlumeRidge
.goto Un'Goro Crater,47.1,47.1
.subzone 537 >>Travel to Fire Plume Ridge
.isOnQuest 974
step
#completewith HotSpot
.goto Un'Goro Crater,47.1,47.1,10,0
.goto Un'Goro Crater,47.7,48.3,10,0
.goto Un'Goro Crater,48.2,50.1,10,0
.goto Un'Goro Crater,48.6,49.8,20 >>Take the lava path shortcut on the west side of the volcano to the top
step
#completewith next
>>Kill |cRXP_ENEMY_Fire Elementals|r. Loot them for their |cRXP_LOOT_Ash|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
.mob Blazing Invader
step
#label HotSpot
.goto Un'Goro Crater,49.6,45.7
.use 12472 >>|cRXP_WARN_Climb up to the top of the volcano, then use|r |T132995:0|t[Krakle's Thermometer]
.complete 974,1 
step
#optional
#completewith Springs
>>Kill |cRXP_ENEMY_Bloodpetal Trappers|r
>>|cRXP_WARN_Their poison deals high damage, and they can cast entangling roots|r << Warrior/Rogue/Shaman
>>|cRXP_WARN_Their poison deals high damage and drains mana. They can cast entangling roots|r << !Warrior !Rogue !Shaman
.complete 4145,2 
.mob Bloodpetal Trapper
step
#optional
#completewith Springs
>>Kill |cRXP_ENEMY_Diemetradons|r. Loot them for their |cRXP_LOOT_Bones|r and |cRXP_LOOT_Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
#optional
#completewith Springs
>>Kill |cRXP_ENEMY_Frenzied Pterrordax|r. Loot them for their |cRXP_LOOT_Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#label Springs
.goto Un'Goro Crater,30.94,50.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
.turnin 974 >>Turn in Finding the Source
.accept 980 >>Accept The New Springs
.target Krakle
step
#completewith PterrordaxAndys
>>Kill |cRXP_ENEMY_Diemetradons|r. Loot them for their |cRXP_LOOT_Bones|r and |cRXP_LOOT_Scales|r
>>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Elder Diemetradons'|r |cRXP_WARN_Pummel ability, which interrupts spells|r << Warlock/Priest/Mage/Shaman/Druid
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
#completewith next
>>Kill |cRXP_ENEMY_Frenzied Pterrordax|r. Loot them for their |cRXP_LOOT_Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#loop
.goto Un'Goro Crater,31.16,31.18,0
.goto Un'Goro Crater,31.16,31.18,60,0
.goto Un'Goro Crater,40.68,31.29,60,0
.goto Un'Goro Crater,41.51,39.52,60,0
.goto Un'Goro Crater,41.05,43.46,60,0
.goto Un'Goro Crater,39.34,51.44,60,0
.goto Un'Goro Crater,29.37,43.13,60,0
>>Kill |cRXP_ENEMY_Bloodpetal Trappers|r
>>|cRXP_WARN_Their poison deals high damage, and they can cast entangling roots|r << Warrior/Rogue/Shaman
>>|cRXP_WARN_Their poison deals high damage and drains mana. They can cast entangling roots|r << !Warrior !Rogue !Shaman
.complete 4145,2 
.mob Bloodpetal Trapper
step
#label PterrordaxAndys
#loop
.goto Un'Goro Crater,30.80,59.60,0
.goto Un'Goro Crater,36.60,65.80,60,0
.goto Un'Goro Crater,40.80,62.80,60,0
.goto Un'Goro Crater,41.80,56.80,60,0
.goto Un'Goro Crater,40.60,51.20,60,0
.goto Un'Goro Crater,39.60,43.40,60,0
.goto Un'Goro Crater,37.80,36.60,60,0
.goto Un'Goro Crater,32.60,34.40,60,0
.goto Un'Goro Crater,27.60,37.20,60,0
.goto Un'Goro Crater,26.00,45.40,60,0
.goto Un'Goro Crater,26.80,58.20,60,0
.goto Un'Goro Crater,30.80,68.00,60,0
.goto Un'Goro Crater,38.40,74.00,60,0
.goto Un'Goro Crater,40.80,67.20,60,0
.goto Un'Goro Crater,32.80,63.20,60,0
.goto Un'Goro Crater,30.80,59.60,60,0
>>Kill |cRXP_ENEMY_Frenzied Pterrordax|r. Loot them for their |cRXP_LOOT_Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#loop
.goto Un'Goro Crater,40.80,62.80,0
.goto Un'Goro Crater,36.60,65.80,60,0
.goto Un'Goro Crater,40.80,62.80,60,0
.goto Un'Goro Crater,41.80,56.80,60,0
.goto Un'Goro Crater,40.60,51.20,60,0
.goto Un'Goro Crater,39.60,43.40,60,0
.goto Un'Goro Crater,37.80,36.60,60,0
.goto Un'Goro Crater,32.60,34.40,60,0
.goto Un'Goro Crater,27.60,37.20,60,0
.goto Un'Goro Crater,26.00,45.40,60,0
.goto Un'Goro Crater,26.80,58.20,60,0
.goto Un'Goro Crater,30.80,68.00,60,0
.goto Un'Goro Crater,38.40,74.00,60,0
.goto Un'Goro Crater,40.80,67.20,60,0
.goto Un'Goro Crater,32.80,63.20,60,0
.goto Un'Goro Crater,30.80,59.60,60,0
>>Kill |cRXP_ENEMY_Diemetradons|r. Loot them for their |cRXP_LOOT_Bones|r and |cRXP_LOOT_Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
#loop
.goto Un'Goro Crater,46.70,53.20,0
.goto Un'Goro Crater,46.70,53.20,50,0
.goto Un'Goro Crater,49.80,53.90,50,0
.goto Un'Goro Crater,52.20,54.20,50,0
.goto Un'Goro Crater,51.20,51.60,50,0
.goto Un'Goro Crater,53.10,50.40,50,0
.goto Un'Goro Crater,52.60,45.30,50,0
.goto Un'Goro Crater,51.50,46.30,50,0
.goto Un'Goro Crater,50.30,47.70,50,0
.goto Un'Goro Crater,51.30,49.40,50,0
.goto Un'Goro Crater,50.30,47.70,50,0
.goto Un'Goro Crater,49.50,47.30,50,0
.goto Un'Goro Crater,47.80,50.90,50,0
>>Kill |cRXP_ENEMY_Fire Elementals|r. Loot them for their |cRXP_LOOT_Ash|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
.mob Blazing Invader
step
#completewith next
.goto Un'Goro Crater,52.42,51.00,30 >> Enter the cave on the east side of the volcano
step
.goto Un'Goro Crater,51.90,49.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ringo|r
.turnin 4492 >>Turn in Lost!
.accept 4491,1 >>Accept A Little Help From My Friends
.target Ringo
step
.goto Un'Goro Crater,43.62,8.50
.use 11804 >>Escort |cRXP_FRIENDLY_Ringo|r to Marshal's Refuge. Use |T132805:0|t[Spraggle's Canteen] on him when he falls down
>>|cRXP_WARN_Be careful not to ride away too fast from Ringo|r
.complete 4491,1 
.target Ringo
step
.goto Un'Goro Crater,43.61,8.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle|r
.turnin 4501 >>Turn in Beware of Pterrordax
.target Spraggle Frock
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hol'anyee|r and |cRXP_FRIENDLY_Williden|r
.turnin 3883 >>Turn in Alien Ecology
.target +Hol'anyee Marshal
.goto Un'Goro Crater,43.89,7.24
.turnin 3881 >>Turn in Expedition Salvation
.target +Williden Marshal
.goto Un'Goro Crater,43.95,7.14
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.9,2.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r inside the cave
.turnin 4288 >>Turn in the Western Pylon
.turnin 4287 >>Turn in The Eastern Pylon
.accept 4285 >>Accept The Northern Pylon
.target J.D. Collie
step
.goto Un'Goro Crater,43.50,7.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark|r
.turnin 3882 >>Turn in Roll the Bones
.target Spark Nilminer
step
.goto Un'Goro Crater,43.61,8.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle|r
.turnin 4491 >>Turn in A Little Help From My Friends
.target Spraggle Frock
step
.goto Un'Goro Crater,44.23,11.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
.turnin 4503 >>Turn in Shizzle's Flyer
.target Shizzle
step
.goto Un'Goro Crater,45.53,8.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larion|r
.turnin 4145 >>Turn in Larion and Muigin
.accept 4147 >>Accept Marvon's Workshop
.target Larion
step
.goto Un'Goro Crater,46.37,13.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna|r
.accept 4243 >>Accept Chasing A-Me 01
.target Karna Remtravel
step
.goto Un'Goro Crater,56.49,12.44
>>Click the |cRXP_PICK_Northern Crystal Pylon|r
.complete 4285,1 
.skipgossip
.isOnQuest 4285
step
#ssf
.goto Un'Goro Crater,64.17,16.43,40,0
.goto Un'Goro Crater,67.66,16.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHug the right wall as you enter the cave, then talk to |cRXP_FRIENDLY_A-Me 01|r
.turnin 4243 >>Turn in Chasing A-Me 01
.target A-Me 01
step
.goto Un'Goro Crater,68.0,13.2
>>Kill |cRXP_ENEMY_U'cha|r in the back of the cave. Loot him for his |cRXP_LOOT_Pelt|r
.complete 4301,1 
.unitscan U'cha
step
#ah
.goto Un'Goro Crater,67.67,16.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me|r
.turnin 4243 >>Turn in Chasing A-Me 01
.target A-Me 01
step
#ah
.goto Un'Goro Crater,67.67,16.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me|r
.accept 4244 >>Accept Chasing A-Me 01
.turnin 4244 >>Turn in Chasing A-Me 01
.accept 4245,1 >>Accept Chasing A-Me 01
.target A-Me 01
.itemcount 10561,1
step
#ah
#optional
.goto Un'Goro Crater,67.67,16.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me|r
.accept 4245,1 >>Accept Chasing A-Me 01
.target A-Me 01
.isQuestTurnedIn 4244
step
#ah
.goto Un'Goro Crater,46.37,13.43
>>Escort |cRXP_FRIENDLY_A-Me 01|r back to the outside of Marshal's Refuge
.complete 4245,1 
.isOnQuest 4245
step
.goto Un'Goro Crater,46.37,13.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna|r
.turnin 4245 >>Turn in Chasing A-Me 01
.target Karna Remtravel
.isQuestComplete 4245
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.9,2.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r inside the cave
.turnin 4285 >>Turn in The Northern Pylon
.accept 4321 >>Accept Making Sense of It
.turnin 4321 >>Turn in Making Sense of It
.target J.D. Collie
step
#optional
#completewith BungleInJungle
.destroy 11482 >>|cRXP_WARN_Destroy|r |T133740:0|t[Crystal Pylon User's Manual] |cRXP_WARN_as it's not needed for anything|r
step
#label Mighty
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa|r
.turnin 4301 >>Turn in The Mighty U'cha
.target Torwa Pathfinder
step << Druid
#season 0
#phase 4-6
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa|r
.accept 9051 >>Accept Toxic Test
.target Torwa Pathfinder
.isQuestTurnedIn 9052
.dungeon ST
step << Druid 
#season 0
#phase 4-6
>>Track a |cRXP_ENEMY_Devilsaur|r or |cRXP_ENEMY_Ironhide Devilsaur|r
>>|cRXP_WARN_Do not engage a|r |cRXPTyrant Devilsaur|r|cRXP_WARN_; their fear ability is deadly|r
>>|cRXP_WARN_Spam Hibernate on the|r |cRXP_ENEMY_Devilsaur|r|cRXP_WARN_, and nothing else. If it breaks, spam it again.|r
>>|cRXP_ENEMY_Devilsaur|r |cRXP_WARN_have 170% movement speed; they cannot be outrun|r
.use 22432 >>Use your |T135125:0|t[Devilsaur Barb] on it while it's asleep
.complete 9051,1 
.unitscan Devilsaur
.unitscan Ironhide Devilsaur
.unitscan Tyrant Devilsaur
.isQuestTurnedIn 9052
.dungeon ST
step << Druid
#season 0
#phase 4-6
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa|r
.turnin 9051 >>Turn in Toxic Test
.target Torwa Pathfinder
.isQuestComplete 9051
.dungeon ST
step << Druid
#season 0
#phase 4-6
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa|r
.accept 9053 >> Accept A Better Ingredient
.target Torwa Pathfinder
.isQuestTurnedIn 9051
.dungeon ST
step
#loop
.goto Un'Goro Crater,50.93,67.97,0
.goto Un'Goro Crater,46.60,62.37,70,0
.goto Un'Goro Crater,49.25,64.43,70,0
.goto Un'Goro Crater,50.93,67.97,70,0
.goto Un'Goro Crater,55.97,69.52,70,0
.goto Un'Goro Crater,57.84,63.53,70,0
.goto Un'Goro Crater,58.80,57.84,70,0
.goto Un'Goro Crater,58.43,52.67,70,0
.goto Un'Goro Crater,57.94,44.83,70,0
>>Collect |cRXP_LOOT_Un'Goro Soil|r from mobs or |cRXP_PICK_Un'Goro Dirt Piles|r
.collect 11018,25 
step
#hardcore
#completewith next
.subzone 541 >> Travel to Marshal's Refuge
.dungeon !ST
step
#hardcore
#completewith BungleInJungle
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
.fly Tanaris >>Fly to Tanaris
.target Gryfe
.zoneskip Tanaris
.dungeon !ST
step
#completewith next
#softcore
.goto Tanaris,27.06,56.58
.zone Tanaris >> Travel back up to Tanaris
step
#season 0
#completewith next
#hardcore
.goto Tanaris,27.06,56.58
.zone Tanaris >> Travel back up to Tanaris
.dungeon ST
step
#season 0
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.accept 3446 >> Accept Into the Depths
.accept 3447 >> Accept Secret of the Circle
.target Marvon Rivetseeker
.isQuestTurnedIn 3444
.dungeon ST
step
#season 0
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.accept 3528 >> Accept The God Hakkar
.target Yeh'kinya
.isQuestTurnedIn 4787 
.dungeon ST
step
#completewith next
#softcore
.goto Tanaris,27.89,59.02
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r or run back to Gadgetzan
step
#label BungleInJungle
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pestlezugg|r
.turnin 4496 >>Turn in Bungle in the Jungle
.target Alchemist Pestlezugg
step
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Feralas >>Fly to Feralas
.target Bulkrek Ragefist
.zoneskip Feralas
step
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.turnin 4120 >>Turn in The Strength of Corruption
.target Talo Thornhoof
step
#xprate <2.0
#completewith next
.goto Feralas,55.90,46.23,20 >>Travel along the border of Dire Maul to the West Side
step
#xprate <2.0
.goto Feralas,55.41,45.54
.zone 1414 >> |cRXP_WARN_You must explore the Dire Maul zone as a pre-requisite to unlock a quest later on. Get close to the Dire Maul zone border until your General Chat changes to Dire Maul|r
.link https://youtu.be/ayEKuXSUU2A >> |cRXP_WARN_Click here for video reference|r
step
#xprate <2.0
.goto Feralas,50.76,49.83,60,0
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan|r
>>|cRXP_BUY_Buy some|r |T134006:0|t[Bait] |cRXP_BUY_from him|r
.collect 11141,1,3909,1 
.target Gregan Brewspewer
.isOnQuest 3909
step
#xprate <2.0
#completewith next
.goto Feralas,44.627,10.568
.cast 14008 >> |cRXP_WARN_Place the|r |T134006:0|t[Bait] |cRXP_WARN_on the ground next to |cRXP_FRIENDLY_Miblon Snarltooth|r to distract him|r
.use 11141 
.target Miblon Snarltooth
.isOnQuest 3909
step
#xprate <2.0
.goto Feralas,44.605,10.185,-1
.goto Feralas,44.517,10.220,-1
>>Loot the |cRXP_LOOT_Evoroot|r inside the Ruins
.collect 11242,1,3909,1 
.use 11141 
.isOnQuest 3909
step
#xprate <2.0
#hardcoreserver
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
>>|cRXP_WARN_Blizzard has adjusted the quest [The Videre Elixir] so it will no longer kill you on Official Hardcore Servers|r
.accept 4041 >> Accept The Videre Elixir
.turnin 4041 >> Turn in The Videre Elixir
.complete 3909,1 
.target Gregan Brewspewer
.isOnQuest 3909
step
#xprate <2.0
#softcoreserver
#hardcore
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
>>|cRXP_WARN_You may safely complete this quest as part of the quest chain for [The Videre Elixir]|r
.accept 4041 >> Accept The Videre Elixir
.turnin 4041 >> Turn in The Videre Elixir
.complete 3909,1 
.target Gregan Brewspewer
.isOnQuest 3909
step
#xprate <2.0
#softcoreserver
#softcore
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
.accept 4041 >> Accept The Videre Elixir
.turnin 4041 >> Turn in The Videre Elixir
.complete 3909,1 
.target Gregan Brewspewer
.isOnQuest 3909
step << !Mage
#completewith next
.hs >>Hearth to Camp Taurajo
.use 6948
.bindlocation 378,1
.subzoneskip 378
step << !Mage
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Thunder Bluff >>Fly to Thunder Bluff
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleport: Thunder Bluff]
.zoneskip Thunder Bluff
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurston|r
.train 10199 >> Train your class spells
.target Thurston Xane
.xp <54,1
.xp >56,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurston|r
.train 10157 >> Train your class spells
.target Thurston Xane
.xp <56,1
step
#completewith FrontierPickup
#label BluffRunner
.goto Thunder Bluff,41.54,57.87,70,0
.goto Thunder Bluff,52.76,62.07,30,0
.goto Thunder Bluff,55.63,50.08,70,0
.goto Thunder Bluff,41.54,57.87,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bluff Runner Windstrider|r
>>|cRXP_WARN_He patrols the terraces, so you may have to look around for him|r
.accept 1000 >>Accept The New Frontier
.accept 5095 >>Accept A Call to Arms: The Plaguelands!
.unitscan Bluff Runner Windstrider
step
.goto Thunder Bluff,45.80,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pala|r
.accept 3762 >>Accept Assisting Arch Druid Runetotem
.target Innkeeper Pala
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14290 >>Train your class spells
.target Urek Thunderhorn
.xp <54,1
.xp >56,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14305 >>Train your class spells
.target Urek Thunderhorn
.xp <56,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
.train 24631 >>Train your pet spells
.target Hesuwa Thunderhorn
.xp <54,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11605 >>Train your class spells
.target Ker Ragetotem
.xp <54,1
.xp >56,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 20662 >> Train your class spells
.target Ker Ragetotem
.xp <56,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 10408 >>Train your class spells
.target Tigor Skychaser
.xp <54,1
.xp >56,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 10432 >>Train your class spells
.target Tigor Skychaser
.xp <56,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai|r
.train 10900 >> Train your class spells
.target Malakai Cross
.xp <54,1
.xp >56,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai|r
.train 10929 >> Train your class spells
.target Malakai Cross
.xp <56,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 9857 >>Train your class spells
.target Turak Runetotem
.xp <54,1
.xp >56,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 22829 >>Train your class spells
.target Tura
.xp <56,1
step
#optional
#label FrontierPickup
step
#loop
.goto Thunder Bluff,41.54,57.87,70,0
.goto Thunder Bluff,52.76,62.07,30,0
.goto Thunder Bluff,55.63,50.08,70,0
.goto Thunder Bluff,41.54,57.87,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bluff Runner Windstrider|r
>>|cRXP_WARN_He patrols the terraces, so you may have to look around for him|r
.accept 1000 >>Accept The New Frontier
.accept 5095 >>Accept A Call to Arms: The Plaguelands!
.unitscan Bluff Runner Windstrider
step
.goto Thunder Bluff,78.50,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
.turnin 1000 >>Turn in The New Frontier
.accept 1123 >>Accept Rabine Saturna
.turnin 3762 >>Turn in Assisting Arch Druid Runetotem
.accept 3761 >>Accept Un'Goro Soil
.target Arch Druid Hamuul Runetotem
step
.goto Thunder Bluff,77.30,22.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghede|r
.turnin 3761 >>Turn in Un'Goro Soil
.target Ghede
.addquestitem 11018,3761
step
.goto Thunder Bluff,78.40,28.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
.accept 3782 >>Accept Morrowgrain Research
.target Arch Druid Hamuul Runetotem
step
.goto Thunder Bluff,70.20,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.turnin 3518 >>Turn in Delivery to Magatha
.target Magatha Grimtotem
.isOnQuest 3518
step
.goto Thunder Bluff,70.20,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.accept 3562 >>Accept Magatha's Payment to Jediga
.target Magatha Grimtotem
.isQuestTurnedIn 3518
step
.goto Thunder Bluff,71.00,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bashana|r
.turnin 3782 >>Turn in Morrowgrain Research
.target Bashana Runetotem
step
.goto Thunder Bluff,47.02,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Ratchet >>Fly to Ratchet
.target Tal
.zoneskip Thunder Bluff,1
]]);
