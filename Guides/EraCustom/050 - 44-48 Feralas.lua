RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 40-50
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 44-48 Feralas
#somname 45-47 Feralas
#next 48-49 Tanaris/Hinterlands
step
#season 0
#sticky
#completewith start
+|cRXP_WARN_There is A LOT of grinding required in this segment, you can substitute some of that for Zul'Farrak/Uldaman/Maraudon runs|r
step
#hardcore
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r << !Warlock
.goto The Barrens,63.084,37.163 << Warlock
.goto Tanaris,51.006,29.345 << !Warlock
.fly Thalanaar >> Fly to Thalanaar
.target Bragok << Warlock
.target Bera Stonehammer << !Warlock
step
#season 0
#softcore
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r << !Warlock
.goto The Barrens,63.084,37.163 << Warlock
.goto Tanaris,51.006,29.345 << !Warlock
.fly Feathermoon>> Fly to Feathermoon
.target Bragok << Warlock
.target Bera Stonehammer << !Warlock
step
#hardcore
#completewith next
.goto Feralas,30.239,43.251
.subzone 1116 >> |cRXP_WARN_Run to Feathermoon Stronghold. Be careful of the |cRXP_ENEMY_Horde Guards|r in Camp Mojache en route|r
>>|cRXP_WARN_It is always faster to swim across the water than waiting for the boat|r
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.accept 2821 >> Accept The Mark of Quality
.target Pratt McGrubben
step << Hunter
#completewith next
.goto Feralas,31.466,43.145
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antarius|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Longtooth Runner|r shortly
.target Antarius
step << Hunter
.goto Feralas,29.80,49.19
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Longtooth Runner|r to tame it|r 
.train 17266 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 6)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Longtooth Runner
step
#completewith start
.goto Feralas,31.043,43.116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardrack Greenwell|r
>>|cRXP_WARN_Restock on Food/Water. There is a long grind section ahead|r << !sod
.vendor 7941 >>|cRXP_BUY_Buy 5 stacks of food/water|r << !sod
.vendor 7941 >>|cRXP_BUY_Restock on food/water|r << sod
.collect 4601,5 >>|cRXP_WARN_Buy some|r |T133951:0|t|cRXP_PICK_Soft Banana Bread|r|cRXP_WARN_. You will need at least one for a rune later|r << Hunter sod
.target Mardrack Greenwell
step << Hunter
#completewith start
.goto Feralas,30.645,43.433
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faralorn|r
.vendor 7942 >>|cRXP_BUY_Buy 25 stacks of Ammo|r << !sod
.vendor 7942 >>|cRXP_BUY_Restock on Ammo|r << sod
.target Faralorn
step
.goto Feralas,30.966,43.488
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shyria|r
.home >> Set your Hearthstone to Feralas
.target Innkeeper Shyria
step << Hunter
.goto Feralas,31.466,43.145
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antarius|r
.stable >> Withdraw your pet from the Stable
.target Antarius
.zoneskip Feralas,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r and |cRXP_FRIENDLY_Shandris Feathermoon|r
.accept +4124 >> Accept The Missing Courier
.target Latronicus Moonspear
.goto Feralas,30.379,46.170
.accept 2866 >> Accept The Ruins of Solarsal
.goto Feralas,30.276,46.168
.target +Shandris Feathermoon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r and |cRXP_FRIENDLY_Angelas Moonbreeze|r
.accept 2939 >> Accept In Search of Knowledge
.target +Troyas Moonbreeze
.goto Feralas,31.777,45.498
.accept 2982 >> Accept The High Wilderness
.goto Feralas,31.828,45.611
.target +Angelas Moonbreeze
step
#label start
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
.turnin 4124 >> Turn in The Missing Courier
.accept 4125 >> Accept The Missing Courier
.target Ginro Hearthkindle
step
.goto Feralas,26.316,52.343
>>Click the |cRXP_PICK_Solarsal Gazebo|r
.turnin 2866 >> Turn in The Ruins of Solarsal
.accept 2867 >> Accept Return to Feathermoon Stronghold
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r and |cRXP_FRIENDLY_Latronicus Moonspear|r
.turnin 2867 >> Turn in Return to Feathermoon Stronghold
.accept 3130 >> Accept Against the Hatecrest
.target Latronicus Moonspear
.goto Feralas,30.276,46.168
.turnin 3130 >> Turn in Against the Hatecrest
.accept 2869 >> Accept Against the Hatecrest
.goto Feralas,30.379,46.170
.target +Shandris Feathermoon
step
.goto Feralas,26.6,52.0,70,0
.goto Feralas,26.2,55.2,70,0
.goto Feralas,29.6,53.6,70,0
.goto Feralas,29.0,50.4,70,0
.goto Feralas,26.6,53.4
>>Kill |cRXP_ENEMY_Hatecrest Screamers|r, |cRXP_ENEMY_Hatecrest Wave Riders|r, |cRXP_ENEMY_Hatecrest Warriors|r and |cRXP_ENEMY_Hatecrest Sirens|r. Loot them for their |cRXP_LOOT_Naga Scales|r
.complete 2869,1 
.mob Hatecrest Screamer
.mob Hatecrest Wave Rider
.mob Hatecrest Warrior
.mob Hatecrest Siren
step
.goto Feralas,30.379,46.170
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
.turnin 2869 >> Turn in Against the Hatecrest
.accept 2870 >> Accept Against Lord Shalzaru
.target Latronicus Moonspear
step
#completewith next
.goto Feralas,25.49,64.92,40,0
.goto Feralas,26.13,67.41,30 >> Travel to the Isle of Dread. Enter Shalzaru's Lair
step
.goto Feralas,28.51,70.59
>>Kill |cRXP_ENEMY_Lord Shalzaru|r. Loot him for the |cRXP_LOOT_Mysterious Relic|r
.complete 2870,1 
.mob Lord Shalzaru
step
#era/som
#softcore
>> Do loops around the cave grinding |cRXP_ENEMY_Nagas|r until you get the |T132836:0|t[|cRXP_LOOT_OOX-22/FE Distress Beacon|r]
>>|cRXP_WARN_Don't start the quest for this yet|r
.collect 8705,1,2766,1 
.mob Hatecrest Sorceress
.mob Hatecrest Serpent Guard
.mob Hatecrest Myrmidon
step
.goto Feralas,27.58,69.02
.xp 45+87500 >> Do loops around the cave, grinding |cRXP_ENEMY_Nagas|r to level 45+87500xp
.mob Hatecrest Sorceress
.mob Hatecrest Serpent Guard
.mob Hatecrest Myrmidon
step
#completewith next
.goto Feralas,38.72,75.07,40 >> Exit the naga cave and head southeast towards the ocean
.goto Feralas,41.24,74.54,40 >> Swim to the mainland
step
.goto Feralas,45.44,64.96
>>Click on the |cRXP_PICK_Wrecked Row Boat|r in the water
.turnin 4125 >> Turn in The Missing Courier
.accept 4127 >> Accept Boat Wreckage
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << Mage
#completewith next
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step
#completewith next
.hs >> Hearth to Feathermoon Stronghold
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
.turnin 4127 >> Turn in Boat Wreckage
.accept 4129 >> Accept The Knife Revealed
.target Ginro Hearthkindle
step
.goto Feralas,32.447,43.788
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quintis Jonespyre|r atop the tree house
.turnin 4129 >> Turn in The Knife Revealed
.timer 12,The Knife Revealed RP
.accept 4130 >> Accept Psychometric Reading
.target Quintis Jonespyre
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
.turnin 4130 >> Turn in Psychometric Reading
.accept 4131 >> Accept The Woodpaw Gnolls
.target Ginro Hearthkindle
step
.goto Feralas,30.379,46.170
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
.turnin 2870 >> Turn in Against Lord Shalzaru
.accept 2871 >> Accept Delivering the Relic
.target Latronicus Moonspear
step
.goto Feralas,30.077,45.060
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vestia Moonspear|r
.turnin 2871 >> Turn in Delivering the Relic
.target Vestia Moonspear
step
#completewith next
.goto Feralas,45.07,44.89,150 >> Swim to the mainland
step
#completewith spirits
.goto Feralas,52.05,48.88,0
.goto Feralas,46.6,39.4,0
.goto Feralas,57.8,50.8,0
>>Kill |cRXP_ENEMY_Vale Screechers|r and |cRXP_ENEMY_Rogue Vale Screechers|r
.use 10699 >> |cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses to summon a|r |cRXP_FRIENDLY_Screecher Spirit|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Screecher Spirit|r
.complete 3520,1 
.skipgossip
.mob Vale Screecher
.mob Rogue Vale Screecher
.target Screecher Spirit
step
#era/som
#completewith spirits
.goto Feralas,58.8,59.0,0
>>Kill |cRXP_ENEMY_Ironfur Bears|r, |cRXP_ENEMY_Grizzled Ironfur Bears|r and |cRXP_ENEMY_Groddoc Apes|r. Loot them for their |cRXP_LOOT_Livers|r
.complete 1452,2 
.mob +Ironfur Bear
.mob +Grizzled Ironfur Bear
.complete 1452,3 
.mob +Groddoc Ape
step
.goto Feralas,55.41,45.54
.zone 1414 >> |cRXP_WARN_You must explore the Dire Maul zone as a pre-requisite to unlock a quest later on. Get close to the Dire Maul zone border until your General Chat changes to Dire Maul|r
.link https://youtu.be/RM1fMMfj-kA >> |cRXP_WARN_Click here for video reference|r
step
.goto Feralas,55.63,56.44,50,0
.goto Feralas,53.50,55.47
>>Kill |cRXP_ENEMY_Feral Scar Yetis|r, |cRXP_ENEMY_Enraged Feral Scars|r and |cRXP_ENEMY_Hulking Feral Scars|r. Loot them for their |cRXP_LOOT_Thick Yeti Hides|r
.complete 2821,1 
.mob Feral Scar Yeti
.mob Enraged Feral Scar
.mob Hulking Feral Scar
.train 415428,3 << Hunter sod
step
.use 8705 >> |cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-22/FE Distress Beacon|r] to start the quest|r
.collect 8705,1,2766 
.accept 2766 >> Accept Find OOX-22/FE!
.itemcount 8705,1 
step
.isOnQuest 2766
.goto Feralas,53.353,55.696
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
.turnin 2766 >> Turn in Find OOX-22/FE!
.target Homing Robot OOX-22/FE
step
.isQuestTurnedIn 2766
.goto Feralas,53.353,55.696
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
.accept 2767,1 >> Accept Rescue OOX-22/FE!
.target Homing Robot OOX-22/FE
step
.isOnQuest 2767
.goto Feralas,45.67,43.38
>>Escort the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r to safety
>>|cRXP_WARN_This quest can be hard. You have to fight waves of 3/4 mobs along the way. Skip this step if its too difficult|r
.complete 2767,1
.target Homing Robot OOX-22/FE
step
#loop
#label Egg
.goto Feralas,53.657,74.365,0
.goto Feralas,56.653,75.892,0
.goto Feralas,56.708,76.724,0
.goto Feralas,55.906,76.035,0
.goto Feralas,53.657,74.365,10,0
.goto Feralas,56.653,75.892,10,0
.goto Feralas,56.708,76.724,10,0
.goto Feralas,55.906,76.035,0
>>Loot a |cRXP_LOOT_Hippogryph Egg|r from a nest
.collect 8564,1,2741,1 
step
#label spirits
>>Kill |cRXP_ENEMY_Gordunni Shamans|r, |cRXP_ENEMY_Gordunni Warlocks|r and |cRXP_ENEMY_Gordunni Brutes|r
>>|cRXP_WARN_Prioritize killing |cRXP_ENEMY_Gordunni Shamans|r. You may need to kill other |cRXP_ENEMY_Gordunni Ogres|r to force |cRXP_ENEMY_Gordunni Shamans|r to spawn|r
.complete 2982,2 
.mob +Gordunni Shaman
.goto Feralas,59.54,63.13,60,0
.goto Feralas,58.42,67.08,60,0
.goto Feralas,59.97,66.14,60,0
.goto Feralas,60.91,68.55,60,0
.goto Feralas,59.48,66.77
.goto Feralas,61.70,73.09,0
.goto Feralas,59.11,69.93,0
.complete 2982,1 
.mob +Gordunni Warlock
.goto Feralas,59.54,63.13,60,0
.goto Feralas,58.42,67.08,60,0
.goto Feralas,59.97,66.14,60,0
.goto Feralas,60.91,68.55,60,0
.goto Feralas,59.09,64.45,60,0
.goto Feralas,61.02,56.10,60,0
.goto Feralas,61.43,54.30,60,0
.goto Feralas,59.54,63.13
.goto Feralas,61.70,73.09,0
.goto Feralas,59.11,69.93,0
.complete 2982,3 
.mob +Gordunni Brute
.goto Feralas,59.09,64.45,60,0
.goto Feralas,61.02,56.10,60,0
.goto Feralas,61.43,54.30,60,0
.goto Feralas,61.02,56.10
step
#era/som
#completewith next
.goto Feralas,58.40,55.57,0
.goto Feralas,57.29,54.10,0
.goto Feralas,55.40,53.49,0
.goto Feralas,56.94,60.64,0
.goto Feralas,59.28,60.55,0
>>Kill |cRXP_ENEMY_Ironfur Bears|r, |cRXP_ENEMY_Grizzled Ironfur Bears|r and |cRXP_ENEMY_Groddoc Apes|r. Loot them for their |cRXP_LOOT_Livers|r
.complete 1452,2 
.mob +Ironfur Bear
.mob +Grizzled Ironfur Bear
.complete 1452,3 
.mob +Groddoc Ape
step
.goto Feralas,53.2,47.2,60,0
.goto Feralas,58.0,47.8,60,0
.goto Feralas,60.8,50.8,60,0
.goto Feralas,55.8,54.0,60,0
.goto Feralas,58.6,58.8,60,0
.goto Feralas,60.6,62.2
.goto Feralas,53.2,47.2,0
.goto Feralas,58.0,47.8,0
.goto Feralas,60.8,50.8,0
.goto Feralas,55.8,54.0,0
.goto Feralas,58.6,58.8,0
>>Kill |cRXP_ENEMY_Vale Screechers|r and |cRXP_ENEMY_Rogue Vale Screechers|r
.use 10699 >> |cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses to summon a|r |cRXP_FRIENDLY_Screecher Spirit|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Screecher Spirit|r
.complete 3520,1 
.skipgossip
.mob Vale Screecher
.mob Rogue Vale Screecher
.target Screecher Spirit
step
#era/som
.goto Feralas,58.40,55.57,55,0
.goto Feralas,57.29,54.10,55,0
.goto Feralas,55.40,53.49,55,0
.goto Feralas,56.94,60.64,55,0
.goto Feralas,59.28,60.55
>>Kill |cRXP_ENEMY_Ironfur Bears|r, |cRXP_ENEMY_Grizzled Ironfur Bears|r and |cRXP_ENEMY_Groddoc Apes|r. Loot them for their |cRXP_LOOT_Livers|r
.complete 1452,2 
.mob +Ironfur Bear
.mob +Grizzled Ironfur Bear
.complete 1452,3 
.mob +Groddoc Ape
step
.goto Feralas,66.56,46.87,0
.goto Feralas,66.56,46.87,30,0
.goto Feralas,65.945,45.651
>>|cRXP_WARN_Kill some of the |cRXP_ENEMY_Grimtotem|r around the giant cage containing |cRXP_FRIENDLY_Captured Sprite Darters|r before accepting this escort quest|r
>>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r
.accept 2969 >> Accept Freedom for All Creatures
.target Kindal Moonweaver
.mob Grimtotem Naturalist
.mob Grimtotem Raider
.mob Grimtotem Shaman
step
.goto Feralas,66.666,46.754
>>Click the |cRXP_PICK_Cage Door|r to release the |cRXP_FRIENDLY_Captured Sprite Darters|r
>>Kill any |cRXP_ENEMY_Grimtotem|r that are attacking the |cRXP_FRIENDLY_Captured Sprite Darters|r
>>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
.complete 2969,1
.mob Grimtotem Naturalist
.mob Grimtotem Raider
.mob Grimtotem Shaman
.target Captured Sprite Darter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r and |cRXP_FRIENDLY_Jer'kai Moonweaver|r
.turnin 2969 >> Turn in Freedom for All Creatures
.target +Kindal Moonweaver
.goto Feralas,65.945,45.651
.accept 2970 >> Accept Doling Justice
.goto Feralas,65.946,45.607
.target +Jer'kai Moonweaver
step
#label Grimtotems
.goto Feralas,66.65,46.58,60,0
.goto Feralas,68.70,46.91,60,0
.goto Feralas,69.14,39.10,60,0
.goto Feralas,66.85,38.80,60,0
.goto Feralas,69.14,39.10
.goto Feralas,66.85,38.80,0
>>Kill |cRXP_ENEMY_Grimtotem Naturalists|r, |cRXP_ENEMY_Grimtotem Raiders|r and |cRXP_ENEMY_Grimtotem Shamans|r
>>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
.complete 2970,1 
.mob +Grimtotem Naturalist
.complete 2970,2 
.mob +Grimtotem Raider
.complete 2970,3 
.mob +Grimtotem Shaman
step
#label DolingJustice
.goto Feralas,65.946,45.607
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jer'kai Moonweaver|r
.turnin 2970 >> Turn in Doling Justice
.accept 2972 >> Accept Doling Justice
.target Jer'kai Moonweaver
step
.goto Feralas,73.314,56.311
>>Click the |cRXP_PICK_Large Leather Backpacks|r on the tree
.turnin 4131 >> Turn in The Woodpaw Gnolls
.accept 4135 >> Accept The Writhing Deep
step
.goto Feralas,73.31,56.30
.use 11463 >>|cRXP_WARN_Use the |T133628:0|t[|cRXP_LOOT_Undelivered Parcel|r] to start the quest|r
.collect 11463,1,4281
.accept 4281 >> Accept Thalanaar Delivery
step
#completewith next
.goto Feralas,73.57,63.13,100,0
.goto Feralas,72.78,64.48,15 >> Enter The Writhering Deep Hive from the lower southwest entrance
step
.goto Feralas,72.080,63.713
>>Click the |cRXP_PICK_Zukk'ash Pod|r
>>You must leave your shapeshift form to turn in this quest << Druid
.turnin 4135 >> Turn in The Writhing Deep
.accept 4265 >> Accept Freed from the Hive
.timer 19,Freed from the Hive RP
step
#label Raschal
.goto Feralas,72.080,63.713
>>|cRXP_WARN_Wait out the RP|r
.complete 4265,1
step
#season 0
+Grind until your Hearthstone is off cooldown
.cooldown item,6948,<0
step
#season 0
.goto Feralas,66.65,46.58
.hs >>Hearth to Feathermoon Stronghold
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.turnin 2821 >> Turn in The Mark of Quality
.target Pratt McGrubben
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
.turnin 4265 >> Turn in Freed from the Hive
.accept 4266 >> Accept A Hero's Welcome
.target Ginro Hearthkindle
step
.goto Feralas,30.276,46.168
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
.turnin 4266 >> Turn in A Hero's Welcome
.accept 4267 >> Accept Rise of the Silithid
.target Shandris Feathermoon
step << Hunter
.goto Feralas,30.645,43.433
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faralorn|r
.vendor >>|cRXP_BUY_Buy Ammo if needed|r
.target Faralorn
step << !Warlock !Paladin
#som
#completewith next
.goto Feralas,26.19,67.51
.xp 47.75 >> At this point you should be close to having your mount money, if you're close to the 55g mark, grind |cRXP_ENEMY_nagas|r until you have enough to buy a mount, otherwise skip this step and fly to Teldrassil
step
#completewith next << !Mage !Druid
#completewith druidPort << Druid
#completewith FeralasEnd << Mage
.goto Feralas,26.19,67.51
+Grind |cRXP_ENEMY_Nagas|r until your Hearthstone cooldown is less than 10min, |cRXP_WARN_don't head out to Teldrassil without having your hearthstone ready to go back|r
>>Grind a little bit more if you need money for a mount (100g) << !Paladin !Warlock
step << !Mage !Druid
.goto Feralas,30.239,43.251
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fyldren Moonfeather|r
.fly Teldrassil >> Fly to Teldrassil
.target Fyldren Moonfeather
step << Druid
#label druidPort
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Feralas,1
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
>>|cRXP_WARN_Skip this step if you trained earlier|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.zoneskip Moonglade,1
step << Druid
.goto Moonglade,44.148,45.229
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
.fly Teldrassil >> Fly to Darnassus
.skipgossip
.timer 153,Flight to Darnassus
.target Silva Fil'naveth
.zoneskip Moonglade,1
step << Mage
#label FeralasEnd
.goto Feralas,30.239,43.251
.zone Darnassus >>Teleport to Darnassus
>>If you don't have |T135755:0|t[Teleport: Darnassus] trained then fly there
.zoneskip Feralas,1
step << Mage
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r up stairs
.turnin 4267 >> Turn in Rise of the Silithid
.target Gracina Spiritmight
.zoneskip Darnassus,1
step << Mage
.goto Darnassus,39.094,81.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
.turnin 2972 >> Turn in Doling Justice
.target Tyrande Whisperwind
.zoneskip Darnassus,1
step << Mage
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 3022 >> Turn in Handle With Care
.accept 3661 >> Accept Favored of Elune?
.target Erelas Ambersky
step
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r up stairs
.turnin 2939 >> Turn in In Search of Knowledge
.target Daryn Lightwind
step
.goto Teldrassil,55.219,91.454
>>Click the |cRXP_PICK_Feralas: A History|r book on the ground
.accept 2940 >> Accept Feralas: A History
step
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r
.turnin 2940 >> Turn in Feralas: A History
.accept 2941 >> Accept The Borrower
.target Daryn Lightwind
step
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step << Mage
.goto Darnassus,40.599,82.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elissa Dumas|r
.train 3565 >> Train Teleport: Darnassus
.target Elissa Dumas
step << Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
.zoneskip Darnassus,1
step
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r up stairs
.turnin 4267 >> Turn in Rise of the Silithid
.target Gracina Spiritmight
step
.goto Darnassus,39.094,81.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
.turnin 2972 >> Turn in Doling Justice
.target Tyrande Whisperwind
step
#ah
.goto Darnassus,56.245,54.039,-1
.goto Darnassus,56.374,51.820,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
>>Buy the following items for a faster turn ins at shortly. Skip this step if you wish to not buy any
>>|cRXP_WARN_Remember to check your bank for|r |T134298:0|t[Gorilla Fangs] |cRXP_WARN_before you buy any as you may have found some earlier|r
>>|T133296:0|t[Troll Tribal Necklace]
>>|T134298:0|t[Gorilla Fang]
>>|T134130:0|t[Red Power Crystal]
>>|T134105:0|t[Green Power Crystal]
>>|T134133:0|t[Blue Power Crystal]
>>|T134136:0|t[Yellow Power Crystal]
.collect 9259,5,2880,1 
.collect 2799,10,348,1 
.collect 11186,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
.collect 11188,7,4284,1 
.target Auctioneer Tolon
.target Auctioneer Golothas
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.goto Darnassus,58.72,34.92
.trainer >> Train your class spells
.target Arias'ta Bladesinger
.zoneskip Darnassus,1
step << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.goto Darnassus,31.84,16.69,30,0
.goto Darnassus,37.00,21.92
.trainer >> Train your class spells
.target Syurna
.zoneskip Darnassus,1
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
.zoneskip Darnassus,1
step << NightElf
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jartsam|r and |cRXP_FRIENDLY_Lelanai|r
.train 828 >>Train |T132242:0|t[Tiger Riding]
.goto Darnassus,38.694,15.857
.vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FFFrostsaber|r] |cRXP_BUY_or|r |T132225:0|t[|cFF0070FFNightsaber|r]
.goto Darnassus,38.283,15.365
.xp <40,1
.zoneskip Darnassus,1
.target Jartsam
.target Lelanai
step << Human !Warlock !Paladin
#era
#completewith next
.goto Elwynn Forest,84.0,65.4
+If you still haven't bought your mount and you have 100g, take the boat to Wetlands, fly to Stormwind, head to the Eastvale Logging Camp in Elwynn Forest and buy a mount
step << Dwarf !Paladin
#era
#completewith next
.goto Dun Morogh,63.4,50.6
+If you still haven't bought your mount and you have 100g, take the boat to Wetlands, fly to Ironforge, head to the Amberstill Ranch in Dun Morogh and buy a mount
step << Gnome !Warlock
#era
#completewith next
.goto Dun Morogh,49.2,48.0
+If you still haven't bought your mount and you have 100g, take the boat to Wetlands, fly to Ironforge, head to Kharanos in Dun Morogh and buy a mount
step << Human !Warlock !Paladin
#som
#completewith next
.goto Elwynn Forest,84.0,65.4
+If you still haven't bought your mount and you have 55g, take the boat to Wetlands, fly to Stormwind, head to the Eastvale Logging Camp in Elwynn Forest and buy a mount
step << Dwarf !Paladin
#som
#completewith next
.goto Dun Morogh,63.4,50.6
+If you still haven't bought your mount and you have 55g, take the boat to Wetlands, fly to Ironforge, head to the Amberstill Ranch in Dun Morogh and buy a mount
step << Gnome !Warlock
#som
#completewith next
.goto Dun Morogh,49.2,48.0
+If you still haven't bought your mount and you have 55g, take the boat to Wetlands, fly to Ironforge, head to Kharanos in Dun Morogh and buy a mount
step
#completewith IFUldaAccept
.dungeon Ulda
.zone Ironforge >> Make your way to Ironforge to accept the 2 Uldaman quests there, then head to Loch Modan
step
.dungeon Ulda
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.accept 2398 >> Accept The Lost Dwarves
.target Prospector Stormpike
step
.dungeon Ulda
#label IFUldaAccept
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
.accept 1360 >> Accept Reclaimed Treasures
.target Krom Stoutarm
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.501,47.742
.fly Loch Modan >> Fly to Loch Modan
.target Gryth Thurden
step
.dungeon Ulda
.isQuestTurnedIn 2500 
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
.accept 17 >> Accept Uldaman Reagent Run
.target Ghak Healtouch
step
.dungeon Ulda
.isQuestTurnedIn 739 
.goto Loch Modan,65.93,65.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.accept 704 >> Accept Agmond's Fate
.target Prospector Ironband
step
.dungeon Ulda
#completewith RockEle
.goto Loch Modan,47.04,79.27,0
.goto Loch Modan,46.71,76.90,65,0
.goto Badlands,49.23,7.80
.zone Badlands >> Travel to Badlands
step 
.dungeon Ulda
.goto Badlands,53.027,33.944
>>Click the |cRXP_PICK_Crumpled Map|r on the ground
.accept 720 >> Accept A Sign of Hope
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
.turnin 720 >> Turn in A Sign of Hope
.accept 721 >> Accept A Sign of Hope
.goto Badlands,53.421,43.393
.target Prospector Ryedol
step
.dungeon Ulda
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.accept 709 >> Accept Solution to Doom
.target Theldurin the Lost
step
.dungeon Ulda
.goto Badlands,4.0,80.6
.goto Badlands,15.4,88.6
.goto Badlands,11.0,88.0
.goto Badlands,44.70,12.09
.zone 1415 >> Grind |cRXP_ENEMY_Ogres|r and |cRXP_ENEMY_Greater Rock Elementals|r while looking for a group for Uldaman
step
.dungeon Ulda
#completewith HammertoeGrez
.goto 1415,54.46,57.78
.zone 1415 >> Travel to Uldaman
step
.dungeon Ulda
#completewith HammertoeGrez
>>Loot the |cRXP_LOOT_Carved Stone Urns|r on the ground
>>|cRXP_WARN_This can be only be completed OUTSIDE of Uldaman|r
.complete 704,1 
.isOnQuest 704
step
.dungeon Ulda
#completewith HammertoeGrez
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Uldaman|r
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
.goto 1415,54.040,57.665
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hammertoe Grez|r
.turnin 721 >> Turn in A Sign of Hope
.accept 722 >> Accept Amulet of Secrets
.target Hammertoe Grez
step
.dungeon Ulda
.goto 1415,54.12,58.05,30,0
.goto 1415,54.09,58.21
>>Kill |cRXP_ENEMY_Magregan Deepshadow|r. Loot him for |cRXP_LOOT_Hammertoe's Amulet|r
>>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
.complete 722,1 
.mob Magregan Deepshadow
.isOnQuest 722
step
.dungeon Ulda
.goto 1415,54.140,58.246
>>Open the |cRXP_PICK_Ancient Chest|r. Loot it for the |cRXP_LOOT_Tablet of Ryun'eh|r
>>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
.complete 709,1 
.isOnQuest 709
step
.dungeon Ulda
.goto 1415,53.874,58.577
>>Loot |cRXP_LOOT_Krom Stoutarm's Treasure|r on the ground
>>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
.complete 1360,1 
.isOnQuest 1360
step
.dungeon Ulda
#label HammertoeGrez
.goto 1415,54.040,57.665
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hammertoe Grez|r
.turnin 722 >> Turn in Amulet of Secrets
.accept 723 >> Accept Prospect of Faith
.target Hammertoe Grez
.isQuestTurnedIn 721
step
.dungeon Ulda
.goto 1415,53.85,57.81,55,0
.goto 1415,53.63,58.01,55,0
.goto 1415,54.09,58.03,55,0
.goto 1415,53.85,57.81
>>Loot the |cRXP_LOOT_Carved Stone Urns|r and |cRXP_LOOT_Magenta Fungus Caps|r on the ground
>>|cRXP_WARN_Prioritize the |cRXP_LOOT_Carved Stone Urns|r. This can only be completed OUTSIDE of Uldaman. You can finish the |cRXP_LOOT_Magenta Fungus Caps|r once inside|r
.complete 704,1 
.complete 17,1 
.disablecheckbox
.isOnQuest 704
.isOnQuest 17
step
.dungeon Ulda
.goto 1415,53.85,57.81,55,0
.goto 1415,53.63,58.01,55,0
.goto 1415,54.09,58.03,55,0
.goto 1415,53.85,57.81
>>Loot the |cRXP_LOOT_Carved Stone Urns|r on the ground
>>|cRXP_WARN_This can be only be completed OUTSIDE of Uldaman|r
.complete 704,1 
.isOnQuest 704
step
.dungeon Ulda
.goto 1415,53.850,57.641
.subzone 1337,2 >> Zone into Uldaman
step
.dungeon Ulda
#completewith HiddenChamber
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelog|r
.turnin 2398 >> Turn in The Lost Dwarves
.accept 2240 >> Accept The Hidden Chamber
.target Baelog
.isOnQuest 2398
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelog|r
.accept 2240 >> Accept The Hidden Chamber
.target Baelog
step
.dungeon Ulda
#completewith next
>>Open |cRXP_PICK_Baelog's Chest|r. Loot it for the |T133276:0|t[|cRXP_LOOT_Gni'kiv Medallion|r]
>>Kill |cRXP_ENEMY_Revelosh|r. Loot him for |T135225:0|t[|cRXP_LOOT_The Shaft of Tsol|r]
>>|cRXP_WARN_Note other party members can loot these items, and then combine them to create the|r |T135138:0|t[Staff of Prehistoria]|cRXP_WARN_. Only one person in the group needs to do this|r
.collect 7740,1,2240,1 
.collect 7741,1,2240,1 
.use 7740 
.use 7741 
.mob Revelosh
.isOnQuest 2240
step
.dungeon Ulda
#label HiddenChamber
>>|cRXP_WARN_Use the|r |T133276:0|t[|cRXP_LOOT_Gni'kiv Medallion|r] |cRXP_WARN_and|r |T135225:0|t[|cRXP_LOOT_The Shaft of Tsol|r] |cRXP_WARN_to combine them into the|r |T135138:0|t[Staff of Prehistoria]
>>|cRXP_WARN_Use the|r |T135138:0|t[Staff of Prehistoria] |cRXP_WARN_on the |cRXP_PICK_Keystone|r to summon|r |cRXP_ENEMY_Ironaya|r
>>Kill |cRXP_ENEMY_Ironaya|r. |cRXP_WARN_Run into the Hidden Chamber she came from after|r
.use 7740 
.use 7741 
.use 7733 
.complete 2240,1 
.isOnQuest 2240
step
.dungeon Ulda
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
>>Kill |cRXP_ENEMY_Archaedas|r
>>Click |cRXP_PICK_The Discs of Norgannon|r
.accept 2278 >> Accept The Platinum Discs
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lore Keeper of Norgannon|r
.complete 2278,1 
.skipgossip
.target Lore Keeper of Norgannon
step
.dungeon Ulda
>>Click |cRXP_PICK_The Discs of Norgannon|r
.turnin 2278 >> Turn in The Platinum Discs
.accept 2279 >> Accept The Platinum Discs
step
.dungeon Ulda
+Zone out of Uldaman together as a group to turn in quests in Badlands. The closest exit is the Uldaman backdoor
.zoneskip Badlands
step
.dungeon Ulda
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.turnin 709 >> Turn in Solution to Doom
.target Theldurin the Lost
.isQuestComplete 709
step
.dungeon Ulda
#label HammertoeGrez
.goto Badlands,53.421,43.393
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
.turnin 723 >> Turn in Prospect of Faith
.accept 724 >> Accept Prospect of Faith
.target Prospector Ryedol
.isQuestTurnedIn 721
step
.dungeon Ulda
#completewith UldaLoch
.goto Badlands,49.52,9.83,0
.goto Loch Modan,46.78,78.09
.zone Loch Modan >> Travel to Loch Modan
step
.dungeon Ulda
.goto Loch Modan,65.93,65.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.turnin 704 >> Turn in Agmond's Fate
.target Prospector Ironband
.isQuestComplete 704
step
.dungeon Ulda
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
.turnin 17 >> Turn in Uldaman Reagent Run
.target Ghak Healtouch
.isQuestComplete 17
step
.dungeon Ulda
#label UldaLoch
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
.fly Ironforge >> Fly to Ironforge
.target Thorgrum Borrelson
step
.dungeon Ulda
.goto Ironforge,69.930,18.548
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Explorer Magellas|r
.turnin 2279 >> Turn in The Platinum Discs
.accept 2439 >> Accept The Platinum Discs
.target High Explorer Magellas
.isQuestTurnedIn 2278
step
.dungeon Ulda
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.turnin 2240 >> Turn in The Hidden Chamber
.target Prospector Stormpike
.isQuestComplete 2240
step
.dungeon Ulda
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
.turnin 1360 >> Turn in Reclaimed Treasures
.target Krom Stoutarm
.isQuestComplete 1360
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r and |cRXP_FRIENDLY_Advisor Belgrum|r
.turnin 724 >> Turn in Prospect of Faith
.accept 725 >> Accept Passing Word of a Threat
.target +Historian Karnik
.goto Ironforge,77.539,11.834
.turnin 725 >> Turn in Passing Word of a Threat
.accept 726 >> Accept Passing Word of a Threat
.target +Advisor Belgrum
.goto Ironforge,77.343,9.714
.turnin 726 >> Turn in Passing Word of a Threat
.target +Historian Karnik
.goto Ironforge,77.539,11.834
.isQuestTurnedIn 721
step
.dungeon Ulda
.goto Ironforge,33.874,59.136
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dinita Stonemantle|r
.turnin 2439 >> Turn in The Platinum Discs
.target Dinita Stonemantle
.isQuestTurnedIn 2278
step
.dungeon Ulda
>>|cRXP_WARN_Use the |T133289:0|t[|cRXP_LOOT_Shattered Necklace|r] to start the quest|r
.accept 2198 >> Accept The Shattered Necklace
.use 7666 
.itemcount 7666,1 
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
.goto Ironforge,36.377,3.614
.turnin 2198 >> Turn in The Shattered Necklace
.target Talvash del Kissel
.isOnQuest 2198
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
.goto Ironforge,36.377,3.614
.accept 2199 >> Accept Lore for a Price
.target Talvash del Kissel
.isQuestTurnedIn 2198
step
.dungeon Ulda
.goto Ironforge,36.377,3.614
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
>>Bring 5 |T133215:0|t[Silver Bars] to |cRXP_FRIENDLY_Talvash del Kissel|r
>>|cRXP_WARN_If you are unable to acquire them, abandon this quest|r
.complete 2199,1 
.turnin 2199 >> Turn in Lore for a Price
.target Talvash del Kissel
.isOnQuest 2199
step
.hs >> Hearth to Feralas
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#era/som
.goto Feralas,26.19,67.51
.xp 47 >> Head back to the |cRXP_ENEMY_Naga|r cave and grind to level 47
step
#era
#phase 4
.goto Feralas,26.19,67.51
.xp 48 >> Head back to the |cRXP_ENEMY_Naga|r cave and grind to level 48
step
#era
#phase 1-3
.goto Feralas,26.19,67.51
.xp 48.5 >> Head back to the |cRXP_ENEMY_Naga|r cave and grind to level 48 + 50%
step
#completewith FlyTan
.hs >> Hearth to Feathermoon Stronghold
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
.goto Feralas,31.828,45.611
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
.turnin 2982 >> Turn in The High Wilderness
.accept 3445 >> Accept The Sunken Temple
.target Angelas Moonbreeze
step << Hunter
.goto Feralas,30.645,43.433
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faralorn|r
.vendor >>|cRXP_BUY_Buy Ammo for the next segment|r
.target Faralorn
step
#completewith next
.goto Feralas,30.239,43.251
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fyldren Moonfeather|r
.fly Thalanaar>> Fly to Thalanaar
.target Fyldren Moonfeather
step
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 4281 >> Turn in Thalanaar Delivery
.use 11463 
.target Falfindel Waywarder
step
#label FlyTan
.goto Feralas,89.497,45.853
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
.fly Tanaris>> Fly to Tanaris
.target Thyssiana
]]);
