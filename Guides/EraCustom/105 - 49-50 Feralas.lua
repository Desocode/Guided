RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 40-50 << !sod
#group RestedXP Horde 50-60 << sod
#classic
#tbc
#mop
<< Horde
#name 49-50 Feralas
#displayname 52-53 Un'Goro Crater << sod
#next RestedXP Horde 50-60\50-51 Stranglethorn/Blasted Lands;RestedXP Horde 50-60\Searing Gorge/Burning Steppes;RestedXP Horde 50-60\52-53 Azshara
step
#xprate <1.5
.goto Feralas,76.20,43.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.accept 3063 >>Accept Vengeance on the Northspring
.accept 3062 >>Accept Dark Heart
.target Talo Thornhoof
step
#xprate <1.5
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronk|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Bronk
.subzoneskip 1099,1
step
#xprate <1.5
.goto Feralas,74.50,42.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor|r
.accept 7734 >>Accept Improved Quality
.target Jangdor Swiftstrider
step
#xprate <1.5
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.turnin 3123 >>Turn in Testing the Vessel
.accept 3380 >>Accept The Sunken Temple
.accept 3124 >>Accept Hippogryph Muisek
.accept 3128 >>Accept Natural Materials
.target Witch Doctor Uzer'i
step
#xprate <1.5
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.accept 3380 >>Accept The Sunken Temple
.target Witch Doctor Uzer'i
step
#xprate <1.5
#completewith next
.goto Feralas,58.0,53.1,50,0
.goto Feralas,54.2,68.6,0
.subzone 1106 >>Travel southwest to the Frayfeather Highlands
step
#xprate <1.5
#loop
.goto Feralas,55.60,60.60,0
.goto Feralas,55.60,60.60,60,0
.goto Feralas,55.40,64.20,60,0
.goto Feralas,53.80,66.80,60,0
.goto Feralas,54.60,68.60,60,0
.goto Feralas,54.00,71.60,60,0
.goto Feralas,54.20,72.60,60,0
.goto Feralas,55.60,75.20,60,0
.goto Feralas,57.00,74.80,60,0
.goto Feralas,56.00,72.40,60,0
.goto Feralas,55.00,70.60,60,0
.goto Feralas,56.20,66.00,60,0
.goto Feralas,56.80,65.60,60,0
.goto Feralas,57.40,62.60,60,0
.use 9619 >>Kill all types of |cRXP_ENEMY_Frayfeathers|r. Loot them for their |cRXP_LOOT_Fragments|r and |cRXP_LOOT_Resilient Sinew|r
>>Use the |T133841:0|t[Hippogryph Muisek Vessel] on their corpses
>>|cRXP_WARN_This item has a cooldown and only works on one corpse at a time, even if they're stacked|r
.complete 3124,1 
.complete 3128,4 
.complete 3128,3 
.mob Frayfeather Stagwing
.mob Frayfeather Skystormer
.mob Frayfeather Hippogryph
.mob Frayfeather Patriarch
step
#xprate <1.5
#completewith next
.goto Feralas,75.9,43.7,0
.subzone 1099 >>Travel to Camp Mojache
step
#xprate <1.5
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.turnin 3124 >>Turn in Hippogryph Muisek
.accept 3125 >>Accept Faerie Dragon Muisek
.target Witch Doctor Uzer'i
step
#xprate <1.5
#loop
.goto Feralas,66.57,47.74,0
.goto Feralas,69.55,46.96,50,0
.goto Feralas,68.82,48.54,50,0
.goto Feralas,67.69,47.95,50,0
.goto Feralas,66.57,47.74,50,0
.use 9620 >>Kill |cRXP_ENEMY_Sprite Darters|r. Loot them for their |cRXP_LOOT_Minerals|r.
>>Use the |T133841:0|t[Faerie Dragon Muisek Vessel] on their corpses
>>|cRXP_WARN_This item has a cooldown and only works on one corpse at a time, even if they're stacked|r
.complete 3125,1 
.complete 3128,2 
.mob Sprite Darter
step
#xprate <1.5
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.turnin 3125 >>Turn in Faerie Dragon Muisek
.accept 3126 >>Accept Treant Muisek
.target Witch Doctor Uzer'i
step
#xprate <1.5
#loop
.goto Feralas,69.4,44.6,0
.goto Feralas,69.4,44.6,70,0
.goto Feralas,70.6,41.8,70,0
.goto Feralas,75.0,38.6,70,0
.goto Feralas,77.4,40.8,70,0
.goto Feralas,78.6,42.4,70,0
.goto Feralas,79.6,45.4,70,0
.line Feralas,55.8,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >>Kill |cRXP_ENEMY_Wandering Forest Walkers|r. Loot them for their |cRXP_LOOT_Splintered Logs|r
>>Use the |T133841:0|t[Treant Muisek Vessel] on their corpses
>>|cRXP_WARN_The arrow will guide you along their patrol routes, which are outlined on your world map too. The quest item has a cooldown and only works on one corpse at a time, even if they're stacked|r
.collect 9590,1,3128,1 
.collect 9593,1,3126,1 
.unitscan Wandering Forest Walker
step
#xprate <1.5
#loop
.goto Feralas,72.80,50.88,0
.goto Feralas,67.97,59.99,70,0
.goto Feralas,68.99,60.19,70,0
.goto Feralas,69.57,59.39,70,0
.goto Feralas,70.42,57.76,70,0
.goto Feralas,71.48,58.00,70,0
.goto Feralas,72.27,59.39,70,0
.goto Feralas,72.71,58.54,70,0
.goto Feralas,74.24,58.18,70,0
.goto Feralas,74.72,56.33,70,0
.goto Feralas,74.24,58.18,70,0
.goto Feralas,72.89,57.66,70,0
.goto Feralas,72.67,56.02,70,0
.goto Feralas,73.44,54.87,70,0
.goto Feralas,73.60,53.79,70,0
.goto Feralas,73.97,53.33,70,0
.goto Feralas,74.26,53.12,70,0
.goto Feralas,73.94,51.66,70,0
.goto Feralas,72.80,50.88,70,0
.line Feralas,55.8,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >>Kill |cRXP_ENEMY_Wandering Forest Walkers|r. Loot them for their |cRXP_LOOT_Splintered Logs|r
>>Use the |T133841:0|t[Treant Muisek Vessel] on their corpses
>>|cRXP_WARN_The arrow will guide you along their patrol routes, which are outlined on your world map too. The quest item has a cooldown and only works on one corpse at a time, even if they're stacked|r
.collect 9590,2,3128,1 
.collect 9593,2,3126,1 
.unitscan Wandering Forest Walker
step
#xprate <1.5
#loop
.goto Feralas,58.6,52.0,0
.goto Feralas,58.6,52.0,70,0
.goto Feralas,60.0,48.8,70,0
.goto Feralas,57.8,48.0,70,0
.goto Feralas,55.6,47.0,70,0
.goto Feralas,53.2,46.6,70,0
.goto Feralas,51.6,49.0,70,0
.line Feralas,55.8,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >>Kill |cRXP_ENEMY_Wandering Forest Walkers|r. Loot them for their |cRXP_LOOT_Splintered Logs|r
>>Use the |T133841:0|t[Treant Muisek Vessel] on their corpses
>>|cRXP_WARN_The arrow will guide you along their patrol routes, which are outlined on your world map too. The quest item has a cooldown and only works on one corpse at a time, even if they're stacked|r
.collect 9593,3,3126,1 
.unitscan Wandering Forest Walker
step
#xprate <1.5
#completewith next
.goto Feralas,75.9,43.7,0
.subzone 1099 >>Travel to Camp Mojache
step
#xprate <1.5
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.turnin 3126 >>Turn in Treant Muisek
.accept 3127 >>Accept Mountain Giant Muisek
.target Witch Doctor Uzer'i
step
#xprate <1.5
#completewith next
.goto Feralas,51.89,49.82,30,0
.goto Feralas,48.82,45.15,30,0
.goto Feralas,45.67,46.94,30,0
.subzone 1108 >>Travel west to The Forgotten Coast
step
#xprate <1.5
.goto Feralas,44.81,43.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin|r
.accept 7003 >>Accept Zapped Giants
.target Zorbin Fandazzle
step
#xprate <1.5
#completewith ZappedGiants1
+|T133003:0|t[Zorbin's Ultra-Shrinker] |cRXP_WARN_has a 2 hour duration. If it expires you must abandon Zapped Giants and re-start the quest|r
step
#xprate <1.5
#completewith next
>>Keep an eye out for a |T134362:0|t[|cRXP_LOOT_Perfect Yeti Hide|r]
>>|cRXP_WARN_DON'T ACCEPT THE QUEST YET! Skip this step if you don't find one before collecting all of your|r |cRXP_LOOT_Rage Scar Yeti Hides|r
.collect 18972,1 
step
#xprate <1.5
.goto Feralas,52.06,30.72,0
.goto Feralas,52.05,31.82,40,0
#loop
.goto Feralas,52.06,30.72,25,0
.goto Feralas,52.50,29.74,25,0
.goto Feralas,53.09,30.80,25,0
.goto Feralas,52.05,31.82,25,0
.goto Feralas,53.11,31.79,25,0
.goto Feralas,54.33,32.54,25,0
.goto Feralas,55.07,32.27,25,0
.goto Feralas,55.43,33.53,25,0
.goto Feralas,55.81,33.00,25,0
.goto Feralas,54.34,33.21,25,0
.goto Feralas,54.81,33.86,25,0
.goto Feralas,54.34,33.21,25,0
.goto Feralas,55.81,33.00,25,0
.goto Feralas,55.43,33.53,25,0
.goto Feralas,55.07,32.27,25,0
.goto Feralas,54.33,32.54,25,0
.goto Feralas,53.11,31.79,25,0
.goto Feralas,52.05,31.82,25,0
>>Kill |cRXP_ENEMY_Rage Scar Yetis|r. Loot them for their |cRXP_LOOT_Hides|r
.complete 7734,1 
.mob Ferocious Rage Scar
.mob Rage Scar Yeti
.mob Elder Rage Scar
step
#label ZappedGiants1
#xprate <1.5
#loop
.goto Feralas,41.08,24.52,0
.goto Feralas,41.08,24.52,60,0
.goto Feralas,39.36,24.29,60,0
.goto Feralas,38.38,22.21,60,0
.goto Feralas,38.52,20.83,60,0
.goto Feralas,39.47,22.04,60,0
.use 18904 >>Use |T133003:0|t[Zorbin's Ultra-Shrinker] on |cRXP_ENEMY_Land Walkers|r and |cRXP_ENEMY_Cliff Giants|r. Kill them and loot their |cRXP_LOOT_Residue|r
.use 9621 >>Use the |T133841:0|t[Mountain Giant Muisek Vessel] on their corpses
>>|cRXP_WARN_This item has a cooldown and only works on one corpse at a time, even if they're stacked|r
>>|cRXP_WARN_If you run out of spawns, skip this for now as it can be finished later|r
.complete 3127,1 
.complete 7003,1 
.mob Land Walker
.mob Cliff Giant
step
#xprate <1.5
#completewith EdanaKill
.goto Feralas,40.9,12.0,0
.subzone 1114 >>Travel north to the Ruins of Ravenwind
step
#xprate <1.5
#completewith EdanaKill
>>Kill Northspring |cRXP_ENEMY_Harpies|r, |cRXP_ENEMY_Roguefeathers|r, |cRXP_ENEMY_Slayers|r and |cRXP_ENEMY_Windcallers|r
.complete 3063,1 
.mob +Northspring Harpy
.complete 3063,2 
.mob +Northspring Roguefeather
.complete 3063,3 
.mob +Northspring Slayer
.complete 3063,4 
.mob +Northspring Windcaller
step
#xprate <1.5
#label HatetalonHorn
#loop
.goto Feralas,38.61,14.64,0
.goto Feralas,38.62,13.35,50,0
.goto Feralas,38.61,14.64,50,0
.goto Feralas,39.78,14.09,50,0
.goto Feralas,39.95,12.41,50,0
.goto Feralas,40.98,11.09,50,0
.goto Feralas,39.70,11.09,50,0
.goto Feralas,38.83,10.87,50,0
.goto Feralas,38.07,12.04,50,0
>>Kill |cRXP_ENEMY_Northspring Harpies|r. Loot them for the |T134228:0|t[|cRXP_LOOT_Horn of Hatetalon|r]
.collect 9530,1,13062,1 
step
#xprate <1.5
#label EdanaKill
#requires HatetalonHorn
.goto Feralas,40.56,8.58
.use 9530 >>|cRXP_WARN_Use the|r |T134228:0|t[Horn of Hatetalon] |cRXP_WARN_to summon |cRXP_ENEMY_Edana Hatetalon|r (48 elite)|r
>>Kill her and loot her for her |cRXP_LOOT_Heart|r
.complete 3062,1 
.unitscan Edana of Hatetalon
step
#xprate <1.5
#loop
.goto Feralas,38.62,13.35,0
.goto Feralas,38.62,13.35,50,0
.goto Feralas,38.61,14.64,50,0
.goto Feralas,39.78,14.09,50,0
.goto Feralas,39.95,12.41,50,0
.goto Feralas,40.98,11.09,50,0
.goto Feralas,39.70,11.09,50,0
.goto Feralas,38.83,10.87,50,0
.goto Feralas,38.07,12.04,50,0
>>Kill Northspring |cRXP_ENEMY_Harpies|r, |cRXP_ENEMY_Roguefeathers|r, |cRXP_ENEMY_Slayers|r and |cRXP_ENEMY_Windcallers|r
.complete 3063,1 
.mob +Northspring Harpy
.complete 3063,2 
.mob +Northspring Roguefeather
.complete 3063,3 
.mob +Northspring Slayer
.complete 3063,4 
.mob +Northspring Windcaller
step
#xprate <1.5
#loop
.goto Feralas,41.08,24.52,0
.goto Feralas,41.08,24.52,60,0
.goto Feralas,39.36,24.29,60,0
.goto Feralas,38.38,22.21,60,0
.goto Feralas,38.52,20.83,60,0
.goto Feralas,39.47,22.04,60,0
.use 18904 >>Use |T133003:0|t[Zorbin's Ultra-Shrinker] on |cRXP_ENEMY_Land Walkers|r and |cRXP_ENEMY_Cliff Giants|r. Kill them and loot their |cRXP_LOOT_Residue|r
.use 9621 >>Use the |T133841:0|t[Mountain Giant Muisek Vessel] on their corpses
>>|cRXP_WARN_This item has a cooldown and only works on one corpse at a time, even if they're stacked|r
.complete 3127,1 
.complete 7003,1 
.mob Land Walker
.mob Cliff Giant
step
#xprate <1.5
#completewith next
.goto Feralas,44.8,44.0,0
.subzone 1108 >>Travel south to the Forgotten Coast
step
#xprate <1.5
.goto Feralas,44.81,43.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin|r
.turnin 7003 >>Turn in Zapped Giants
.target Zorbin Fandazzle
.isQuestComplete 7003
step << Druid
#xprate <1.5
#completewith DruidTraining11
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#xprate <1.5
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 22828 >> Train your class spells
.target Loganaar
.xp <48,1
.xp >50,1
step << Druid
#xprate <1.5
#label DruidTraining11
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9884 >> Train your class spells
.target Loganaar
.xp <50,1
step
#xprate <1.5
.hs >>Hearth to Gadgetzan
.use 6948
.bindlocation 976,1
.subzoneskip 976
.isQuestAvailable 4290,3844,4284,3884
step
#xprate <1.5
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Dirge Quikcleave
.subzoneskip 976,1
step
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon|r
.turnin 3380 >>Turn in The Sunken Temple
.accept 3444 >>Accept The Stone Circle
.target Marvon Rivetseeker
step
#completewith next
.goto Tanaris,27.00,55.66,150,0
.goto Tanaris,27.00,50.21
.zone Un'Goro Crater >>Travel to Un'Goro Crater
step
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa|r
.accept 4289 >>Accept The Apes of Un'Goro
.accept 4290 >>Accept The Fare of Lar'korwi
.target Torwa Pathfinder
step << Druid
#sticky
#season 2
#completewith BoneBlade
#label HuntressIdol
.train 439765,1
>>Kill |cRXP_ENEMY_Ravasaurs|r, |cRXP_ENEMY_Ravasaur Hunters|r and |cRXP_ENEMY_Venomhide Ravasaurs|r. Loot them for the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r]
.collect 227444,1
.mob Venomhide Ravasaur
.mob Ravasaur Hunter
.mob Ravasaur
step << Druid
#sticky
#season 2
#completewith BoneBlade
#requires HuntressIdol
#label HuntressIdolEquip
.train 439765,1
.equip 18,227444 >> Equip the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r]
.use 227444
step << Druid
#sticky
#season 2
#completewith BoneBlade
#requires HuntressIdolEquip
#label HuntressIdolStack
.goto Un'Goro Crater,68.0,51.4
#title Gain 5x |T237556:0|t[Building Inspiration]
.itemcount 227444,1
.train 439765,1
.aura 408828 >> |cRXP_WARN_Attack a |cRXP_ENEMY_Ravasaurs|r until they are down to roughly 5-10% HP and ensure you have 5 combo points on them|r
>>|cRXP_WARN_Once they are 5-10% HP, cast|r |T136090:0|t[Hibernate] |cRXP_WARN_then switch into|r |T132115:0|t[Cat Form] |cRXP_WARN_and cast|r |T132127:0|t[Ferocious Bite] |cRXP_WARN_to kill them to gain a stack of|r |T237556:0|t[Building Inspiration]
>>|cRXP_WARN_Repeat this process 5 times|r
.mob Venomhide Ravasaur
.mob Ravasaur Hunter
.mob Ravasaur
step << Druid
#sticky
#season 2
#completewith BoneBlade
#requires HuntressIdolStack
.itemcount 227444,1
.use 227444
.train 439765 >> |cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r] |cRXP_WARN_to train|r |T134296:0|t[Improved Swipe]
step
#completewith BoneBlade
>>Loot a |T133743:0|t[|cRXP_LOOT_A Mangled Journal|r]
>>|cRXP_WARN_Any mob in Un'Goro Crater may drop it|r
.collect 11116,1,3884,1 
.use 11116
step
#completewith Scent
>>Kill |cRXP_ENEMY_Ravasaur Raptors|r. Loot them for their |cRXP_LOOT_Claws|r
>>|cRXP_WARN_Don't focus on this quest yet, just kill them if they cross your path|r
.complete 4300,1 
.mob Ravasaur
.mob Ravasaur Hunter
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Matriarch
.isOnQuest 4300
step
#completewith BoneBlade
.goto Un'Goro Crater,70.60,53.26,0
>>Save 25 |cRXP_LOOT_Un'Goro Soil|r that you'll loot from mobs as you quest
.collect 11018,25 
step
#completewith BoneBlade
.goto Un'Goro Crater,73.06,51.57,0
>>Loot 7 |cRXP_LOOT_Power Crystals|r of each color as you quest
.collect 11186,7,4284,1 
.collect 11188,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
step
.goto Un'Goro Crater,63.10,68.60
>>Click the |cRXP_PICK_Wrecked Raft|r
.accept 3844 >>Accept It's a Secret to Everybody
step
.goto Un'Goro Crater,63.10,69.00
>>Go underwater, then click the |cRXP_PICK_Small Pack|r
.turnin 3844 >>Turn in It's a Secret to Everybody
.accept 3845 >>Accept It's a Secret to Everybody
step
.goto Un'Goro Crater,68.80,56.80
>>Loot the |cRXP_PICK_Fresh Threshadon Carcass|r for a |cRXP_LOOT_Piece of Threshadon Carcass|r
.complete 4290,1 
step
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa|r
.turnin 4290 >>Turn in The Fare of Lar'korwi
.accept 4291 >>Accept The Scent of Lar'korwi
.target Torwa Pathfinder
step
#loop
.goto Un'Goro Crater,67.30,73.10,0
.goto Un'Goro Crater,66.60,66.70,0
.goto Un'Goro Crater,67.30,73.10,20,0
.goto Un'Goro Crater,66.60,66.70,20,0
>>Step on the small egg nests to summon |cRXP_ENEMY_Lar'Korwi Mates|r. Kill them and loot them for their |cRXP_LOOT_Glands|r
.complete 4291,1 
.unitscan Lar'Korwi Mate
step
#label Scent
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa|r
.turnin 4291 >>Turn in The Scent of Lar'korwi
.accept 4292 >>Accept The Bait for Lar'korwi
.target Torwa Pathfinder
step
#label BoneBlade
#loop
.goto Un'Goro Crater,68.20,75.00,0
.goto Un'Goro Crater,68.20,75.00,60,0
.goto Un'Goro Crater,67.00,71.20,60,0
.goto Un'Goro Crater,67.80,67.00,60,0
.goto Un'Goro Crater,68.00,61.60,60,0
.goto Un'Goro Crater,64.80,62.60,60,0
.goto Un'Goro Crater,63.00,66.40,60,0
.goto Un'Goro Crater,61.60,70.80,60,0
.goto Un'Goro Crater,59.80,75.20,60,0
.goto Un'Goro Crater,59.40,79.00,60,0
.goto Un'Goro Crater,62.00,82.40,60,0
.goto Un'Goro Crater,61.80,76.00,60,0
.goto Un'Goro Crater,63.60,77.20,60,0
.goto Un'Goro Crater,66.20,77.80,60,0
>>Kill |cRXP_ENEMY_Ravasaur raptors|r. Loot them for their |cRXP_LOOT_Claws|r
.complete 4300,1 
.mob Ravasaur
.mob Ravasaur Hunter
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Matriarchaw
.isOnQuest 4300
step 
>>Loot 7 |cRXP_LOOT_Power Crystals|r of each color
>>|cRXP_WARN_Try to stick to the West/Northwest/North areas. They have lower level mobs to run away from|r
.collect 11186,7,4284,1 
.collect 11188,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
step
#completewith next
.goto Un'Goro Crater,44.70,8.10
.use 11107 >>|cRXP_WARN_Open|r |T133653:0|t[A Small Pack] |cRXP_WARN_for the following:|r
.complete 3845,1 
.complete 3845,2 
.complete 3845,3 
step
#completewith next
.goto Un'Goro Crater,44.6,8.2
.subzone 541 >>Travel north toward Marshal's Refuge
step
.goto Un'Goro Crater,44.70,8.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3845 >>Turn in It's a Secret to Everybody
.accept 3908 >>Accept It's a Secret to Everybody
.target Linken
step
.destroy 11107 >>Destroy |T133653:0|t[A Small Pack]
.destroy 3108 >>Destroy the |T135427:0|t[Heavy Throwing Daggers]
.destroy 11108 >>Destroy the |T134944:0|t[Faded Photograph]
>>|cRXP_WARN_You no longer need these|r
step
.goto Un'Goro Crater,43.947,7.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
.use 11116 >>|cRXP_WARN_Use |T133743:0|t[A Mangled Journal] to start the quest|r
.collect 11116,1,3884,1 
.accept 3884 >> Accept Williden's Journal
.turnin 3884 >> Turn in Williden's Journal
.target Williden Marshal
.itemcount 11116,1
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.90,2.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 4284 >>Accept Crystals of Power
.turnin 4284 >>Turn in Crystals of Power
.target J.D. Collie
step
#completewith FeralasEnd2
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tExit the cave, then talk to |cRXP_FRIENDLY_Gryfe|r
.fp Marshal >>Get the Un'Goro Crater Flight Path
.fly Camp Mojache >>Fly to Camp Mojache
.target Gryfe
.zoneskip Feralas
step
#xprate <1.5
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.turnin 3128 >>Turn in Natural Materials
.turnin 3127 >>Turn in Mountain Giant Muisek
.accept 3129 >>Accept Weapons of Spirit
.target Witch Doctor Uzer'i
step
#xprate >1.49
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.turnin 3123 >>Turn in Testing the Vessel
.target Witch Doctor Uzer'i
.isQuestComplete 3123
step
#xprate <1.5
.goto Feralas,74.43,42.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor|r
.turnin 7734 >>Turn in Improved Quality
.target Jangdor Swiftstrider
step
#xprate <1.5
.goto Feralas,74.43,42.91
.use 18972 >>Use the |T134362:0|t[|cRXP_LOOT_Perfect Yeti Hide|r] to accept the quest
.accept 7738 >>Accept Perfect Yeti Hide
.itemcount 18972,1
step
#xprate <1.5
.goto Feralas,74.43,42.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor|r
.turnin 7738 >>Turn in Perfect Yeti Hide
.target Jangdor Swiftstrider
.isOnQuest 7738
step
#xprate <1.5
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.turnin 3063 >>Turn in Vengeance on the Northspring
.turnin 3062 >>Turn in Dark Heart
.accept 4120 >>Accept The Strength of Corruption
.target Talo Thornhoof
.isQuestComplete 3062
step
#xprate <1.5
#optional
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.turnin 3063 >>Turn in Vengeance on the Northspring
.accept 4120 >>Accept The Strength of Corruption
.target Talo Thornhoof
step
#xprate >1.49
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.accept 4120 >>Accept The Strength of Corruption
.target Talo Thornhoof
step
#xprate <1.5
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.turnin 3129 >>Turn in Weapons of Spirit
.target Witch Doctor Uzer'i
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronk|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Bronk
.subzoneskip 1099,1
step << Druid
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9884 >>Train your class spells
.target Jannos Lighthoof
.xp <50,1
.xp >52,1
.subzoneskip 1099,1
step << Druid
#optional
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9894 >>Train your class spells
.target Jannos Lighthoof
.xp <52,1
.subzoneskip 1099,1
step
#optional
#label FeralasEnd2
step << skip
#season 2
#optional
.maxlevel 53,FeralasIncursionsEnd
step << skip
#season 2
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Greul|r
.home >> Set your Hearthstone to Camp Mojache
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Greul
step << skip
#season 2
.goto Feralas,48.49,12.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Arunnel|r
.accept 81855 >>Accept Feralas Mission I: Defeat Children of Cenarius
.accept 81856 >>Accept Feralas Mission II: Defeat Harpies
.accept 81857 >>Accept Feralas Mission III: Defeat Dragonkin
.accept 81858 >>Accept Feralas Mission IV: Dragon Intelligence
.accept 81859 >>Accept Feralas Mission V: Cenarion Intelligence
.accept 81860 >>Accept Feralas Mission VI: Harpy Intelligence
.accept 81861 >>Accept Feralas Mission VII: Recover Moonglow Dragonegg
.accept 81863 >>Accept Feralas Mission VIII: Recover Keeper's Notes
.accept 81864 >>Accept Feralas Mission IX: Recover Harpy Screed
.accept 81872 >>Accept Feralas Mission XVI: Rescue Mellias Earthtender
.accept 81873 >>Accept Feralas Mission XVII: Rescue Nerene Brooksinger
.accept 81874 >>Accept Feralas Mission XVIII: Rescue Jamniss Treemender
.accept 82068 >>Accept Fight the Nightmare Incursions
.accept 82068 >>Accept Fight the Nightmare Incursions
.target Field Captain Arunnel
step << skip
#season 2
#completewith IncursionsComplete3
.goto Feralas,50.95,11.67,30,0
.goto Feralas,51.28,10.64,20 >>Enter the |cRXP_PICK_Emerald Dream Portal|r
>>|cRXP_WARN_Run straight past the |cRXP_ENEMY_Satyr's|r, |cRXP_ENEMY_Felhounds|r and |cRXP_ENEMY_Imps|r. They will reset agro as you enter the portal|r
.aura 444762
step << skip
#season 2
#completewith DreamWardenGorlas
>>Kill |cRXP_ENEMY_Frenzied Whelps|r and |cRXP_ENEMY_Wyrmkin Berserkers|r
>>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Wyrmkin Berserkers|r |cRXP_WARN_are elite. They can be difficult to solo|r
.complete 81857,1 
.mob +Frenzied Whelp
.complete 81857,2 
.mob +Wyrmkin Berserker
step << skip
#season 2
.goto Feralas,49.64,15.44
.gossipoption 122147 >>Talk to |cRXP_FRIENDLY_Mellias Earthtender|r
.target Mellias Earthtender
.isOnQuest 81872
step << skip
#season 2
.goto Feralas,50.71,17.17
>>Loot a |cRXP_LOOT_Moonglow Dragon Egg|r on the ground
.complete 81861,1 
step << skip
#season 2
.goto Feralas,50.73,19.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Sheldryn|r
.complete 81858,1 
.target Dreamwarden Sheldryn
.skipgossip
step << skip
#completewith RuinsofRav
#season 2
+|cRXP_WARN_Be careful of|r |cRXP_WARN_Alondrius|r|cRXP_WARN_, a boss elite that patrols the road. Try to avoid him|r
.unitscan Alondrius
step << skip
#season 2
#label DreamWardenGorlas
.goto Feralas,47.14,21.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Gorlas|r
.complete 81859,1 
.target Dreamwarden Gorlas
.skipgossip
step << skip
#season 2
#completewith RuinsofRav
>>Kill |cRXP_ENEMY_Lost Daughters|r and |cRXP_ENEMY_Vengeful Sons|r
.complete 81855,1 
.mob +Lost Daughter
.complete 81855,2 
.mob +Vengeful Son
step << skip
#season 2
.goto Feralas,46.63,18.94
>>Loot the |cRXP_LOOT_Mad Keeper's Notes|r on the ground
.complete 81863,1 
step << skip
#season 2
.goto Feralas,45.81,16.47
.gossipoption 122148 >>Talk to |cRXP_FRIENDLY_Nerene Brooksinger|r
.target Nerene Brooksinger
.skipgossip
.isOnQuest 81873
step << skip
#season 2
#label RuinsofRav
#completewith next
.subzone 1114 >>Travel to the Ruins of Ravenwind
step << skip
#season 2
#completewith IncursionsComplete3
>>Kill |cRXP_ENEMY_Dreamspring Roguefeathers|r and |cRXP_ENEMY_Dreamspring Stormcallers|r
.complete 81856,1 
.mob +Dreamspring Roguefeather
.complete 81856,2 
.mob +Dreamspring Stormcaller
step << skip
#season 2
.goto Feralas,38.94,13.13
>>Loot the |cRXP_LOOT_Harpy Screed|r on the ground
>>|cRXP_WARN_This is looted instantly.|r |cRXP_ENEMY_Slirena|r |cRXP_WARN_may attack you, have an escape path cleared|r
.complete 81864,1 
step << skip
#season 2
.goto Feralas,37.71,12.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Anadelle|r
.complete 81860,1 
.target Dreamwarden Anadelle
.skipgossip
step << skip
#season 2
#label IncursionsComplete3
.goto Feralas,40.58,8.09
.gossipoption 122145 >>Talk to |cRXP_FRIENDLY_Jamniss Treemender|r
.target Jamniss Treemender
.isOnQuest 81874
step << skip
#season 2
#loop
.goto Feralas,42.11,9.07,0
.goto Feralas,38.98,16.20,0
.goto Feralas,42.11,9.07,60,0
.goto Feralas,42.19,11.58,60,0
.goto Feralas,41.02,13.08,60,0
.goto Feralas,40.19,15.21,60,0
.goto Feralas,38.98,16.20,60,0
.goto Feralas,38.31,15.77,60,0
.goto Feralas,37.95,14.21,60,0
.goto Feralas,39.42,13.77,60,0
.goto Feralas,39.58,10.69,60,0
>>Kill |cRXP_ENEMY_Dreamspring Roguefeathers|r and |cRXP_ENEMY_Dreamspring Stormcallers|r
.complete 81856,1 
.mob +Dreamspring Roguefeather
.complete 81856,2 
.mob +Dreamspring Stormcaller
step << skip
#season 2
#loop
.goto Feralas,46.44,15.89,0
.goto Feralas,45.36,22.36,0
.goto Feralas,44.45,12.29,50,0
.goto Feralas,46.44,15.89,50,0
.goto Feralas,46.35,18.82,50,0
.goto Feralas,45.36,22.36,50,0
.goto Feralas,45.55,19.10,50,0
>>Kill |cRXP_ENEMY_Lost Daughters|r and |cRXP_ENEMY_Vengeful Sons|r
.complete 81855,1 
.mob +Lost Daughter
.complete 81855,2 
.mob +Vengeful Son
step << skip
#season 2
#loop
.goto Feralas,49.81,15.80,0
.goto Feralas,53.85,12.74,0
.goto Feralas,49.81,15.80,50,0
.goto Feralas,50.68,17.37,50,0
.goto Feralas,51.62,19.54,50,0
.goto Feralas,52.76,16.27,50,0
.goto Feralas,53.68,15.81,50,0
.goto Feralas,53.85,12.74,50,0
.goto Feralas,54.32,10.44,50,0
>>Kill |cRXP_ENEMY_Frenzied Whelps|r and |cRXP_ENEMY_Wyrmkin Berserkers|r
>>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Wyrmkin Berserkers|r |cRXP_WARN_are elite. They can be difficult to solo|r
.complete 81857,1 
.mob +Frenzied Whelp
.complete 81857,2 
.mob +Wyrmkin Berserker
step << skip
#season 2
.goto Feralas,51.00,11.69
>>Travel toward the |cRXP_PICK_Emerald Dream Portal|r
>>|cRXP_WARN_If |cRXP_FRIENDLY_Mellias|r, |cRXP_FRIENDLY_Nerene|r or |cRXP_FRIENDLY_Jamniss|r is no longer following you, go back and talk to them again|r
.complete 81872,1 
.goto Feralas,49.64,15.44,0
.target +Mellias Earthtender
.complete 81873,1 
.goto Feralas,45.81,16.47,0
.target +Nerene Brooksinger
.complete 81874,1 
.goto Feralas,40.58,8.09,0
.target
.target +Jamniss Treemender
step << skip
#season 2
#completewith next
.goto Feralas,50.95,11.67,30,0
.goto Feralas,51.28,10.64,20 >>Exit the |cRXP_PICK_Emerald Dream Portal|r
.aura -444762
step << skip
#season 2
.goto Feralas,48.49,12.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Arunnel|r
.turnin 81855 >>Turn in Feralas Mission I: Defeat Children of Cenarius
.turnin 81856 >>Turn in Feralas Mission II: Defeat Harpies
.turnin 81857 >>Turn in Feralas Mission III: Defeat Dragonkin
.turnin 81858 >>Turn in Feralas Mission IV: Dragon Intelligence
.turnin 81859 >>Turn in Feralas Mission V: Cenarion Intelligence
.turnin 81860 >>Turn in Feralas Mission VI: Harpy Intelligence
.turnin 81861 >>Turn in Feralas Mission VII: Recover Moonglow Dragonegg
.turnin 81863 >>Turn in Feralas Mission VIII: Recover Keeper's Notes
.turnin 81864 >>Turn in Feralas Mission IX: Recover Harpy Screed
.turnin 81872 >>Turn in Feralas Mission XVI: Rescue Mellias Earthtender
.turnin 81873 >>Turn in Feralas Mission XVII: Rescue Nerene Brooksinger
.turnin 81874 >>Turn in Feralas Mission XVIII: Rescue Jamniss Treemender
.turnin 82068 >>Turn in Fight the Nightmare Incursions
.target Field Captain Arunnel
step << skip
#season 2
.hs >> Hearth to Camp Mojache
step << skip
#season 2
#optional
#label FeralasIncursionsEnd
step
#completewith next
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shyn|r
.fly Crossroads >>Fly to Crossroads
.target Shyn
.subzoneskip 380
step
.goto The Barrens,51.99,29.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
.home >> Set your Hearthstone to Crossroads
.target Innkeeper Boorand Plainswind
.bindlocation 380
.train 3567,3 << Mage 
step
#completewith Boat2STV2
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Ratchet >> Fly to Ratchet
.target Devrak
.subzoneskip 392
step
.goto The Barrens,62.50,38.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv|r
.accept 4502 >>Accept Volcanic Activity
.target Liv Rizzlefix
step
.goto The Barrens,62.50,38.60
>>Loot |cRXP_PICK_Marvon's Chest|r outside of the building for the |cRXP_LOOT_Stone Circle|r
.complete 3444,1 
step
#optional
.abandon 3062 >> Abandon Dark Heart
.isOnQuest 3062
step
#optional
.abandon 3123 >>Abandon Testing the Vessel
step
#label Boat2STV2
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>Take the boat to Stranglethorn Vale
.zoneskip Stranglethorn Vale
step
#xprate >1.49
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe|r
.turnin 648 >>Turn in Rescue OOX-17/TN!
.target Oglethorpe Obnoticus
.isQuestComplete 648
step
#xprate >1.49
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe|r
.turnin 836 >>Turn in Rescue OOX-09/HL!
.target Oglethorpe Obnoticus
.isQuestComplete 836
step
#xprate >1.49
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe|r
.turnin 2767 >>Turn in Rescue OOX-22/FE!
.target Oglethorpe Obnoticus
.isQuestComplete 2767
step
#xprate >1.49
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe|r
.accept 3721 >>Accept An OOX of Your Own
.turnin 3721 >>Turn in An OOX of Your Own
.target Oglethorpe Obnoticus
.isQuestTurnedIn 648
.isQuestTurnedIn 836
.isQuestTurnedIn 2767
step
#xprate >1.49
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf"|r
.turnin 2874 >>Turn in Deliver to MacKinley
.target "Sea Wolf" MacKinley
.isOnQuest 2874
step
#xprate >1.49
.goto Stranglethorn Vale,27.10,77.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
.turnin 580 >>Turn in Whiskey Slim's Lost Grog
.target Whiskey Slim
.isQuestComplete 580
step
#xprate >1.49
#era
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.turnin 1122 >>Turn in Report Back to Fizzlebub
.target Crank Fizzlebub
.isOnQuest 1122
step
#xprate >1.49
#optional
.abandon 580 >>Abandon Whiskey Slim's Lost Grog
]]);
