RXPGuides.RegisterGuide([[
#xprate <1.59
#season 0,1
#version 23
#group RestedXP Alliance 20-30
#version 23
#classic
#tbc
#mop
<< Alliance Hunter
#name 21-23 Ashenvale/Stonetalon
#next 23-24 Wetlands
step
#xprate <1.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.target Shindrell Swiftfire
.goto Ashenvale,34.67,48.83
.turnin 1008 >> Turn in The Zoram Strand
.accept 1134 >> Accept Pridewings of Stonetalon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.target Shindrell Swiftfire
.goto Ashenvale,34.67,48.83
.turnin 1008 >> Turn in The Zoram Strand
step << Hunter
.goto Ashenvale,36.506,50.361
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maluressian|r
.stable >> Stable your pet. You will tame an |cRXP_ENEMY_Ashenvale Bear|r and a |cRXP_ENEMY_Ghostpaw Runner|r shortly
.target Maluressian
step << Hunter
.goto Ashenvale,34.8,50.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haljan Oakheart|r
.vendor >> |cRXP_BUY_Restock on Ammo, |cRXP_WARN_make sure you have at least 10-15 stacks as the next section is a grindy and there won't be any ammo vendor to restock|r|r
.target Haljan Oakheart
step
#xprate <1.59
#completewith taming
>>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone. You will need them for a quest later
.collect 2251,6,93,1 
step << Hunter
#label taming
.goto Ashenvale,39.74,69.35
.goto Ashenvale,34.07,55.0,0
.goto Ashenvale,36.26,59.53,0
.goto Ashenvale,37.53,64.17,0
.goto Ashenvale,41.98,67.39,0
.goto Ashenvale,32.01,54.29,0
.goto Ashenvale,30.16,51.93,0
>>|cRXP_WARN_TIP:|r You can pre place a |T135834:0|t[Freezing Trap] in front of you before you pull the mob to tame to take less damage
>>|cRXP_ENEMY_Ashenvale Bears|r |cRXP_WARN_spawn closer to the Talondeep Path,|r |cRXP_ENEMY_Ghostpaw Runners|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Wildthorn Stalkers|r |cRXP_WARN_which spawn south and west of Astranaar|r
>>If you can't find any wolves try to use |T132172:0|t[Eagle Eye] to look for one
.train 2982 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 3)]
.train 17263 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Ghostpaw Runner|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 3)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Ashenvale Bear
.mob Ghostpaw Runner
step << Hunter
.goto Ashenvale,36.506,50.361
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maluressian|r
.stable >> Withdraw your pet from the Stable
.target Maluressian
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.target Raene Wolfrunner
.goto Ashenvale,36.61,49.58
.turnin 1023 >> Turn in Raene's Cleansing
step << Dwarf Hunter
.goto Ashenvale,36.99,49.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
.home >> Set your Hearthstone to Astranaar
.target Innkeeper Kimlya
.dungeon WC
step
.destroy 5505 >> Destroy |T133741:0|t[Teronis' Journal]. You no longer need it
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.turnin 1034 >> Turn in The Ruins of Stardust
step << Hunter
.dungeon WC
#completewith TravelRatchet
+|cRXP_WARN_Use|r |T132162:0|t[Beast Training] |cRXP_WARN_to teach your pet|r |T132278:0|t[|cRXP_FRIENDLY_Bite (Rank 3)|r] |cRXP_WARN_and/or|r |T132140:0|t[|cRXP_FRIENDLY_Claw (Rank 3)|r]
>>Playing with only |T132278:0|t[|cRXP_FRIENDLY_Bite|r] is the easiest as your pet will not spend all its focus and be able to |T132270:0|t[|cRXP_FRIENDLY_Growl|r] more consistently at a small damage loss |cRXP_WARN_(recomended for beginner/casual players)|r
>>Playing with only |T132140:0|t[|cRXP_FRIENDLY_Claw|r] plays the same as having both damage spells but provides less damage and burst threat so is not reommended unless your pet can't train |T132278:0|t[|cRXP_FRIENDLY_Bite|r]
>>Playing with both |T132278:0|t[|cRXP_FRIENDLY_Bite|r] and |T132140:0|t[|cRXP_FRIENDLY_Claw|r] is the optimal damage setup but is harder to play with since your pet might cast |T132140:0|t[|cRXP_FRIENDLY_Claw|r] instead of |T132270:0|t[|cRXP_FRIENDLY_Growl|r] at times. |cRXP_WARN_(recommended if you like to min/max, you should manually cast |T132270:0|t[|cRXP_FRIENDLY_Growl|r] with this setup)|r
>>|cRXP_WARN_Keep in mind not all pets can train both|r |T132278:0|t[|cRXP_FRIENDLY_Bite|r] |cRXP_WARN_and|r |T132140:0|t[|cRXP_FRIENDLY_Claw|r] |cRXP_WARN_and you might have limited options due to your pet choice|r
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
step
.dungeon WC
#completewith TravelRatchet
.goto Ashenvale,20.31,42.33,0
.zone The Barrens >> Grind |cRXP_ENEMY_Saltspittle Murlocs|r while looking for a group for The Wailing Caverns. Their location is marked on your map
.mob Saltspittle Warrior
.mob Saltspittle Muckdweller
.mob Saltspittle Oracle
.mob Saltspittle Puddlejumper
step
.dungeon WC
#label TravelRatchet
.goto Ashenvale,69.71,86.87,50,0
.goto The Barrens,48.98,5.42,35,0
.goto The Barrens,49.07,12.80,50,0
.goto The Barrens,53.87,21.52,120,0
.goto The Barrens,59.15,25.48,120,0
.goto The Barrens,63.087,37.607
.subzone 392 >> Travel to Ratchet in The Barrens. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
step
.dungeon WC
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fp Ratchet >> Get the Ratchet Flight Path
.target Bragok
step
.dungeon WC
.goto The Barrens,63.087,37.607
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
.accept 959 >> Accept Trouble at the Docks
.target Crane Operator Bigglefuzz
step
.dungeon WC
#completewith next
.goto The Barrens,46.95,35.44,0
.goto The Barrens,46.95,35.44,20,0
.goto The Barrens,47.01,34.67,15,0
.goto 1414,51.92,55.27,45,0
.goto 1414,51.82,55.56,20 >> Travel to The Wailing Caverns. Ascend the mountain then drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
.accept 1486 >> Accept Deviate Hides
.goto 1414,51.912,55.422 
.accept 1487 >> Accept Deviate Eradication
.goto 1414,51.918,55.444 
.target Nalpak
.target Ebru
step
.dungeon WC
#completewith EnterWC
>>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
.complete 1486,1 
.isOnQuest 1486
step
.dungeon WC
.goto 1414,52.04,55.37,20,0
.goto 1414,52.14,55.14,20,0
.goto 1414,51.82,54.85,20,0
.goto 1414,52.04,55.37,20,0
.goto 1414,52.14,55.14,20,0
.goto 1414,51.82,54.85,20,0
.goto 1414,52.04,55.37,20,0
.goto 1414,52.14,55.14,20,0
.goto 1414,51.82,54.85
>>Kill |cRXP_ENEMY_Mad Magglish|r. Loot him for the |cRXP_LOOT_99-Year-Old Port|r
>>|cRXP_ENEMY_Mad Magglish|r |cRXP_WARN_can spawn in a few locations|r
>>|cRXP_WARN_This quest is completed OUTSIDE of Wailing Caverns|r
.complete 959,1 
.isOnQuest 959
.mob Mad Magglish
step
.dungeon WC
#label EnterWC
.goto 1414,52.37,55.20
+Zone into The Wailing Caverns
.zoneskip 1414,1 
step
.dungeon WC
>>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
.complete 1487,1 
.complete 1487,2 
.complete 1487,3 
.complete 1487,4 
.complete 1486,1 
.disablecheckbox
.isOnQuest 1487
.isOnQuest 1486
step
.dungeon WC
>>Kill all types of |cRXP_ENEMY_Deviate|r creatures
.complete 1487,1 
.complete 1487,2 
.complete 1487,3 
.complete 1487,4 
.isOnQuest 1487
step
.dungeon WC
#completewith next
>>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
.complete 1486,1 
.isOnQuest 1486
step
.dungeon WC
>>Kill |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r and |cRXP_ENEMY_Lady Anacondra|r then talk to the |cRXP_FRIENDLY_Disciple of Naralex|r at the start of the instance to start his escort
>>Escort the |cRXP_FRIENDLY_Disciple of Naralex|r through Wailing Caverns and complete the ritual of awakening
>>Kill |cRXP_ENEMY_Mutanus the Devourer|r. Loot him for the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r]
>>|cRXP_WARN_Use the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r] to start the quest|r
.collect 10441,1,6981,1 
.accept 6981 >> Accept The Glowing Shard
.use 10441 
.skipgossip
.target Disciple of Naralex
.mob Mutanus the Devourer
step
.dungeon WC
>>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
.complete 1486,1 
.isOnQuest 1486
step
.dungeon WC
#completewith RatchetTurnin
.goto The Barrens,62.984,37.218
.subzone 392 >> Travel to Ratchet. You will turn in the quests above WC soon
.isOnQuest 6981,959
step
.dungeon WC
.goto The Barrens,62.984,37.218
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
.complete 6981,1 
.skipgossip 1
.target Sputtervalve
.isOnQuest 6981
step
.dungeon WC
#label RatchetTurnin
.goto The Barrens,63.087,37.607
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
.turnin 959 >> Turn in Trouble at the Docks
.target Crane Operator Bigglefuzz
.isQuestComplete 959
step
.dungeon WC
#completewith next
.goto The Barrens,50.11,35.21,35,0
.goto The Barrens,48.60,33.34,35,0
.goto The Barrens,48.184,32.781,15 >> Ascend the steep mountain above The Wailing Caverns. Follow the Arrow
.isQuestComplete 6981
step
.dungeon WC
.goto The Barrens,48.184,32.781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla Sagewind|r
.turnin 6981 >> Turn in The Glowing Shard
.target Falla Sagewind
.isQuestComplete 6981
step
.dungeon WC
#completewith NalpakEbru
.goto 1414,51.92,55.27,45,0
.goto 1414,51.82,55.56,20 >> Drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
.turnin 1486 >> Turn in Deviate Hides
.goto 1414,51.912,55.422 
.target +Nalpak
.turnin 1487 >> Turn in Deviate Eradication
.goto 1414,51.918,55.444 
.target +Ebru
.isQuestComplete 1486
.isQuestComplete 1487
step
.dungeon WC
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
.turnin 1487 >> Turn in Deviate Eradication
.goto 1414,51.918,55.444 
.target Ebru
.isQuestComplete 1487
step
.dungeon WC
#label NalpakEbru
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
.turnin 1486 >> Turn in Deviate Hides
.goto 1414,51.912,55.422 
.target Nalpak
.isQuestComplete 1486
step
.dungeon WC
.hs >> Hearth to Astranaar
step << Hunter
.dungeon WC
.goto Ashenvale,34.8,50.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haljan Oakheart|r
.vendor >> |cRXP_BUY_Restock on Ammo, |cRXP_WARN_make sure you have at least 10-15 stacks as the next section is a grindy and there won't be any ammo vendor to restock|r|r
.target Haljan Oakheart
step << Hunter
.dungeon !WC
#completewith Stonetalon
+|cRXP_WARN_Use|r |T132162:0|t[Beast Training] |cRXP_WARN_to teach your pet|r |T132278:0|t[|cRXP_FRIENDLY_Bite (Rank 3)|r] |cRXP_WARN_and/or|r |T132140:0|t[|cRXP_FRIENDLY_Claw (Rank 3)|r]
>>Playing with only |T132278:0|t[|cRXP_FRIENDLY_Bite|r] is the easiest as your pet will not spend all its focus and be able to |T132270:0|t[|cRXP_FRIENDLY_Growl|r] more consistently at a small damage loss |cRXP_WARN_(recomended for beginner/casual players)|r
>>Playing with only |T132140:0|t[|cRXP_FRIENDLY_Claw|r] plays the same as having both damage spells but provides less damage and burst threat so is not reommended unless your pet can't train |T132278:0|t[|cRXP_FRIENDLY_Bite|r]
>>Playing with both |T132278:0|t[|cRXP_FRIENDLY_Bite|r] and |T132140:0|t[|cRXP_FRIENDLY_Claw|r] is the optimal damage setup but is harder to play with since your pet might cast |T132140:0|t[|cRXP_FRIENDLY_Claw|r] instead of |T132270:0|t[|cRXP_FRIENDLY_Growl|r] at times. |cRXP_WARN_(recommended if you like to min/max, you should manually cast |T132270:0|t[|cRXP_FRIENDLY_Growl|r] with this setup)|r
>>|cRXP_WARN_Keep in mind not all pets can train both|r |T132278:0|t[|cRXP_FRIENDLY_Bite|r] |cRXP_WARN_and|r |T132140:0|t[|cRXP_FRIENDLY_Claw|r] |cRXP_WARN_and you might have limited options due to your pet choice|r
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
step
#xprate <1.59
#completewith Stonetalon
>>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone. You will need them for a quest later
.collect 2251,6,93,1 
step
#label Stonetalon
.goto Ashenvale,42.50,71.70
.zone Stonetalon Mountains >> Travel to Stonetalon Mountains
step
#xprate <1.2
#sticky
#completewith wyv1
>>Kill |cRXP_ENEMY_Young Pridewings|r. Loot them for their |cRXP_LOOT_Pridewing Venom Sacs|r
.complete 1134,1
.unitscan Young Pridewing
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.goto Stonetalon Mountains,58.989,62.601
.accept 1093 >> Accept Super Reaper 6000
.maxlevel 22
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
.target Kaela Shadowspear
.goto Stonetalon Mountains,59.899,66.844
.turnin 1070 >> Turn in On Guard in Stonetalon
.accept 1085 >> Accept On Guard in Stonetalon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.target Gaxim Rustfizzle
.goto Stonetalon Mountains,59.516,67.146
.turnin 1085 >> Turn in On Guard in Stonetalon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.target Gaxim Rustfizzle
.goto Stonetalon Mountains,59.516,67.146
.accept 1071 >> Accept A Gnome's Respite
.maxlevel 22,sturnin
step
#sticky
#label sr6000
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>>Kill |cRXP_ENEMY_Venture Co. Operators|r. Loot them for the |cRXP_LOOT_Blueprints|r
.complete 1093,1
.unitscan Venture Co. Operator
.isOnQuest 1093
step
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>>Kill |cRXP_ENEMY_Venture Co. Deforesters|r and |cRXP_ENEMY_Venture Co. Loggers|r
.complete 1071,1
.mob +Venture Co. Logger
.complete 1071,2
.mob +Venture Co. Deforester
.isOnQuest 1071
step
#xprate <1.2
#label wyv1
.xp 22+6700 >> Grind |cRXP_ENEMY_Goblins|r to level 22 and 6700+xp
step
#label sturnin
#requires sr6000
.goto Stonetalon Mountains,58.989,62.601
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.turnin 1093 >> Turn in Super Reaper 6000
.isQuestComplete 1093
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.goto Stonetalon Mountains,59.516,67.146
.turnin 1071 >> Turn in A Gnome's Respite
.target Gaxim Rustfizzle
.isQuestComplete 1071
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.target Gaxim Rustfizzle
.accept 1072 >> Accept An Old Colleague
.accept 1075 >> Accept A Scroll from Mauren
.isQuestTurnedIn 1071
step
.goto Stonetalon Mountains,51.02,47.51,100 >> Head north to the Mirkfallon Lake
step
#xprate <1.2
.goto Stonetalon Mountains,54.04,40.09,60,0
.goto Stonetalon Mountains,53.26,36.83,40,0
.goto Stonetalon Mountains,54.56,38.12
>>Kill |cRXP_ENEMY_Pridewing Wyverns|r and |cRXP_ENEMY_Pridewing Consorts|r. Loot them for their |cRXP_LOOT_Pridewing Venom Sacs|r
.mob Pridewing Wyvern
.mob Pridewing Consort
.complete 1134,1
step
#completewith next
.goto Stonetalon Mountains,37.103,8.100,100 >> Travel to Stonetalon Peak
step
.goto Stonetalon Mountains,37.103,8.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
.target Keeper Albagorm
.turnin 1056 >> Turn in Journey to Stonetalon Peak
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
.target Teloren
.goto Stonetalon Mountains,36.438,7.181
.fp Stonetalon >> Get the Stonetalon Flight Path
.fly Ashenvale >> Fly to Ashenvale
step
#xprate <1.2
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.turnin 1134 >> Turn in Pridewings of Stonetalon
step
#xprate <1.2
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.accept 1025 >> Accept An Aggressive Defense
step
#xprate <1.5
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.accept 1035 >> Accept Fallen Sky Lake
step
#xprate <1.2
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.accept 1016 >> Accept Elemental Bracers
.target Sentinel Velene Starstrike
step << Hunter
#xprate <1.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danlaar Nightstride|r
.goto Ashenvale,50.137,67.949
.trainer >> Train your class skills
.target Danlaar Nightstride
step
#xprate <1.2
#optional
#completewith next
.cast 7178 >> |cRXP_WARN_Use your|r |T134797:0|t[Elixir of Water Breathing]
.itemcount 5996,1 
.use 5996 
step
#xprate <1.2
.goto Ashenvale,44.78,70.07,60,0
.goto Ashenvale,48.90,70.05,60,0
.goto Ashenvale,51.28,70.51,60,0
.goto Ashenvale,48.90,70.05
>>Kill |cRXP_ENEMY_Befouled Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
>>|cRXP_WARN_The |cRXP_ENEMY_Befouled Water Elementals|r cast|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Pay attention to your breath timer if you dive underwater to kill them|r
.collect 12220,5,1016,1
.mob Befouled Water Elemental
step
#xprate <1.2
.use 5456 >> |cRXP_WARN_Use the|r |T134943:0|t[Divining Scroll] |cRXP_WARN_to create the|r |T134938:0|t[Divined Scroll]
.complete 1016,1 
step
#xprate <1.2
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.turnin 1016 >> Turn in Elemental Bracers
.target Sentinel Velene Starstrike
step
#xprate <1.2
.goto Ashenvale,50.08,59.94,70,0
.goto Ashenvale,53.75,63.49,70,0
.goto Ashenvale,54.17,61.69,70,0
.goto Ashenvale,56.45,63.62,70,0
.goto Ashenvale,50.08,59.94
>>Kill |cRXP_ENEMY_Foulweald Warriors|r, |cRXP_ENEMY_Foulweald Totemics|r, |cRXP_ENEMY_Foulweald Ursas|r and a |cRXP_ENEMY_Foulweald Den Watcher|r
>>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Foulweald Ursas|r |cRXP_WARN_can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
>>The |cRXP_ENEMY_Foulweald Totemics|r share spawns with |cRXP_ENEMY_Foulweald Warriors|r. You may have to backtrack and kill respawns if you weren't lucky with the spawns
.complete 1025,4 
.mob +Foulweald Warrior
.complete 1025,3 
.mob +Foulweald Totemic
.complete 1025,2 
.mob +Foulweald Ursa
.complete 1025,1 
.mob +Foulweald Den Watcher
step
#xprate <1.5
#completewith next
.goto 1440/1,-2331.800,1927.400,0
.goto 1440/1,-2395.500,2032.800,0
+|cRXP_WARN_Be careful about|r |cRXP_ENEMY_Horde Guards|r |cRXP_WARN_as you're making your way to Azshara. Theres two camps of guards (marked on your map) near the road next to Splintertree outpost that you can bodypull if not careful|r
>>|cRXP_WARN_Use|r |T135942:0|t[Track Humanoids] |cRXP_WARN_and watch your minimap to more easily spot where the guards are located|r << Hunter
.unitscan Splintertree Guard
step
#xprate <1.5
.goto Ashenvale,66.649,82.189
>>Kill the |cRXP_ENEMY_Shadethicket Oracle|r. Loot it for the |cRXP_LOOT_Fallen Moonstone|r
>>|cRXP_WARN_This quest can be hard. Kite it along the road east toward Azshara|r
.complete 1035,1
.mob Shadethicket Oracle
step
#xprate <1.5
#label Azshara
.goto Azshara,11.90,77.57
.goto 1440/1,-2331.800,1927.400,0
.goto 1440/1,-2395.500,2032.800,0
>>|cRXP_WARN_Be careful about|r |cRXP_ENEMY_Horde Guards|r |cRXP_WARN_as you're making your way to Azshara. Theres two camps of guards (marked on your map) near the road next to Splintertree outpost that you can bodypull if not careful|r
>>You may encounter a |cRXP_ENEMY_Warsong Outrider|r patrolling the road north-east of Splintertree Post. |cRXP_WARN_You don't have to run around it as it's passive and will not attack you if you don't attack it first|r
>>|cRXP_WARN_Use|r |T135942:0|t[Track Humanoids] |cRXP_WARN_and watch your minimap to more easily spot where the guards are located|r << Hunter
.unitscan Splintertree Guard
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fp Azshara>> Get the Azshara flight path
.target Jarrodenus
step
#xprate <1.5
.hs >> Hearth to Astranaar
>>|cRXP_BUY_Buy food/water if needed|r
.cooldown item,6948,>0,1
step
#xprate <1.5
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fly Ashenvale >> Fly to Ashenvale
.target Jarrodenus
.zoneskip Azshara,1
step
#xprate <1.2
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1025 >> Turn in An Aggressive Defense
.target Raene Wolfrunner
step
#xprate <1.59
#sticky
#completewith TomeTwo
>>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone. You will need them for a quest later
.collect 2251,6,93,1 
step
#completewith next
.goto Ashenvale,34.69,44.30,30,0
.goto Ashenvale,35.43,41.46,30,0
.goto Ashenvale,36.28,38.48,30,0
.goto Ashenvale,36.83,37.56,30 >> Travel to Thistlefur Village. Follow the Arrow for a shortcut
step
.goto Ashenvale,36.06,36.59,0
.goto Ashenvale,37.00,33.77,0
.goto Ashenvale,35.88,31.90,0
.goto Ashenvale,38.73,36.32,0
.goto Ashenvale,36.06,36.59,60,0
.goto Ashenvale,37.00,33.77,60,0
.goto Ashenvale,35.88,31.90,60,0
.goto Ashenvale,38.73,36.32,60,0
.goto Ashenvale,39.595,36.309
>>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Dal Bloodclaw|r |cRXP_WARN_patrols Thistlefur Village|r
.complete 1054,1
.unitscan Dal Bloodclaw
step
#sticky
#completewith TomeTwo
>>Kill and loot |cRXP_WARN_Ghostpaw Runners|r you encounter while questing. Keep any |T133970:0|t[|cRXP_LOOT_Lean Wolf Flanks|r] you get. You will need 10 for a cooking quest later
.collect 1015,10
.mob Ghostpaw Runner
step
#xprate <1.2
#label TomeTwo
#completewith next
.goto Ashenvale,27.50,60.76,8 >> Climb the hill next to the big tree to the right of the Fire Scar Shrine entrance
>>Jump over the tree root and hug the right to avoid aggroing mobs
step
#xprate <1.2
.goto Ashenvale,27.40,63.03,70,0
.goto Ashenvale,25.27,60.68
>>Kill |cRXP_ENEMY_Ilkrud Magthrull|r. Loot him for his |cRXP_LOOT_Tome|r
>>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 Voidwalkers. Stop this cast if you're able to|r
>>|cRXP_WARN_Clear an exit path if needed so you can reset them along with the |cRXP_ENEMY_Succubus|r if needed|r
.complete 973,1
.mob Ilkrud Magthrull
step
#xprate 1.1-1.3
.maxlevel 23
.goto Ashenvale,27.40,63.03,70,0
.goto Ashenvale,25.27,60.68
>>Kill |cRXP_ENEMY_Ilkrud Magthrull|r. Loot him for his |cRXP_LOOT_Tome|r
>>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 Voidwalkers. Stop this cast if you're able to|r
>>|cRXP_WARN_Clear an exit path if needed so you can reset them along with the |cRXP_ENEMY_Succubus|r if needed|r
.complete 973,1
.mob Ilkrud Magthrull
step
#xprate <1.59
#sticky
#completewith AshenEnd
>>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone. You will need them for a quest later
.collect 2251,6,93,1 
step
#sticky
#completewith AshenEnd
>>Kill and loot |cRXP_WARN_Ghostpaw Runners|r you encounter while questing. Keep any |T133970:0|t[|cRXP_LOOT_Lean Wolf Flanks|r] you get. You will need 10 for a cooking quest later
.collect 1015,10
.mob Ghostpaw Runner
step
#label AshenEnd
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 973 >> Turn in The Tower of Althalaxx
.isQuestComplete 973
step
#completewith next
#softcore
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1054 >> Turn in Culling the Threat
step
#xprate <1.5
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.turnin 1035 >> Turn in Fallen Sky Lake
.isQuestComplete 1035
step
#xprate <1.5
#completewith BoatWetlands
.goto Ashenvale,34.849,50.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haljan Oakheart|r
>>|cRXP_BUY_Buy|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_and|r |T135435:0|t[Simple Wood]
>>|cRXP_WARN_Only do this if you have meat to cook while on the boat to Wetlands soon. There is a quest in Duskwood which requires your|r |T133971:0|t[Cooking] |cRXP_WARN_to be 50|r|r
.collect 4471,1 
.collect 4470,1 
.target Haljan Oakheart
.skill cooking,50,1
step
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Darkshore>> Fly to Darkshore
.target Daelyshia
step
#label BoatWetlands
.goto Darkshore,32.44,43.71
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the Menethil Harbor boat|r
.zone Wetlands >> Take the boat to Menethil Harbor
]]);
