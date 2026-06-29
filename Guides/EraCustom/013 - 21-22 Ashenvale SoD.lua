RXPGuides.RegisterGuide([[
#xprate >1.59
#version 23
#group RestedXP Alliance 20-30
#season 1
#version 23
#classic
#tbc
#mop
<< Alliance
#name 21-22 Ashenvale SoD
#displayname 21-22 Ashenvale
#next 22-24 Wetlands SoD
step << NightElf
#completewith Tear
.abandon 986 >> Abandon A Lost Master
step << Hunter
#completewith next
.goto Ashenvale,36.506,50.361
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maluressian|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Ashenvale Bear|r and |cRXP_ENEMY_Ghostpaw Runner|r shortly
.target Maluressian
step << Hunter
.goto Ashenvale,36.4,59.8
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
#optional
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 990 >> Turn in Trek to Ashenvale
.accept 991 >> Accept Raene's Cleansing
.accept 1054 >> Accept Culling the Threat
.target Raene Wolfrunner
.isOnQuest 990
step
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.accept 991 >> Accept Raene's Cleansing
.accept 1054 >> Accept Culling the Threat
.target Raene Wolfrunner
step
#completewith AshEnd
.goto Ashenvale,36.99,49.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
.home >> Set your Hearthstone to Astranaar
.target Innkeeper Kimlya
step
.goto Ashenvale,37.36,51.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r inside
.turnin 1020 >> Turn in Orendil's Cure
.timer 26,Orendil's Cure RP
.accept 1033 >> Accept Elune's Tear
.target Pelturas Whitemoon
step
#label Tear
.goto Ashenvale,46.37,46.38
>>Loot |cRXP_LOOT_Elune's Tear|r on the ground
.complete 1033,1 
step
.goto Ashenvale,37.36,51.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r inside
.turnin 1033 >> Turn in Elune's Tear
.timer 17,Elune's Tear RP
.accept 1034 >> Accept The Ruins of Stardust
.target Pelturas Whitemoon
step
#season 0,1 << Druid
#completewith next
+|cRXP_WARN_Start assembling a group for The Wailing Caverns|r
.dungeon WC
step
.goto Ashenvale,33.30,67.79
>>Loot the |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
>>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
.complete 1034,1 
step
#season 0,1 << Druid
.goto Ashenvale,69.71,86.87,50,0
.goto The Barrens,48.98,5.42,35,0
.goto The Barrens,49.07,12.80,50,0
.goto The Barrens,53.87,21.52,120,0
.goto The Barrens,59.15,25.48,120,0
.goto The Barrens,63.087,37.607
.subzone 392 >> Travel to Ratchet in The Barrens. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
.dungeon WC << !Warlock
step
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fp Ratchet >> Get the Ratchet Flight Path
.target Bragok
.dungeon WC << !Warlock
step
.dungeon WC
#label Trouble
.goto The Barrens,63.087,37.607
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
.accept 959 >> Accept Trouble at the Docks
.target Crane Operator Bigglefuzz
step << Warlock
#season 0,1
.goto The Barrens,49.307,57.095
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takar the Seer|r
.turnin 1716 >> Turn in Devourer of Souls
.accept 1738 >> Accept Heartswood
.accept 65602 >> Accept What is Love?
.target Takar the Seer
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
.target +Nalpak
.goto 1414,51.912,55.422 
.accept 1487 >> Accept Deviate Eradication
.target +Ebru
.goto 1414,51.918,55.444 
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
.target +Nalpak
.goto 1414,51.912,55.422 
.turnin 1487 >> Turn in Deviate Eradication
.target +Ebru
.goto 1414,51.918,55.444 
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
step << Warlock
.goto 1413,43.940,89.441,45,0
.goto 1413,43.458,90.044,45,0
.goto 1414,50.888,70.360
>>|cRXP_WARN_Zone into Razorfen Kraul in The Barrens|r
>>|cRXP_WARN_Avoid |cRXP_ENEMY_Razorfen Servitors|r outside if possible|r
>>|cRXP_WARN_Once inside:|r
.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Click here to Copy + Paste this macro into chat to ghetto hearth back to Astranaar|r
.zone Darkshore >>|cRXP_WARN_If you are unable to do this, make your way back to Ashenvale|r
.cooldown item,6948,<0
.dungeon !WC
step
#optional
#completewith Turtles
.hs >> Hearth to Astranaar
.cooldown item,6948,>0,1 << Warlock
.zoneskip Ashenvale
.dungeon WC << !Warlock
step
.goto Ashenvale,37.36,51.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.turnin 1034 >> Turn in The Ruins of Stardust
.target Pelturas Whitemoon
step << Warlock
.goto Ashenvale,34.849,50.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haljan Oakheart|r
>>|cRXP_BUY_Buy a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_along with 2|r |T135435:0|t[Simple Wood]
>>|cRXP_WARN_You'll need this for a quest later|r
.collect 4471,1 
.collect 4470,2 
.target Haljan Oakheart
.isOnQuest 65602
step
#optional
#completewith next
.goto 1440,34.786,44.885,20,0
.goto 1440,34.869,43.443,30,0
.goto 1440,38.023,38.727,60 >> Take the mountain shortcut toward the east entrance of Thistlefur Village
step
#optional
.goto Ashenvale,36.06,36.59,0
.goto Ashenvale,37.00,33.77,0
.goto Ashenvale,35.88,31.90,0
.goto Ashenvale,38.73,36.32,0
.goto Ashenvale,39.59,36.31,60,0
.goto Ashenvale,38.73,36.32,60,0
.goto Ashenvale,36.06,36.59,60,0
.goto Ashenvale,37.00,33.77,60,0
.goto Ashenvale,35.88,31.90,60,0
.goto Ashenvale,39.595,36.309
>>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_WARN_Be careful as he is level 25 and usually surrounded by mobs. Try to create enough space to kill him whilst avoiding killing as many nearby |cRXP_ENEMY_Thistlefurs|r as possible|r
>>|cRXP_WARN_He patrols around the northern parts of Thistlefur Village|r
.complete 1054,1 
.unitscan Dal Bloodclaw
.xp <21,1 << !Warlock !Rogue !Warrior
.xp <22,1 << Warrior/Rogue
step
#optional
#completewith Heartswood << Warlock
#completewith Teronis << !Warlock
.goto 1440,31.197,37.266,30,0
.goto 1440,30.535,36.210,20,0 << Warlock
.goto 1440,30.656,33.960,20 >>Carefully take the mountain shortcut down toward the |cRXP_LOOT_Heartswood|r << Warlock
.goto 1440,24.727,38.184 << !Warlock
.subzone 413 >>Carefully take the mountain shortcut down toward Maestra's Post << !Warlock
step << Warlock
#optional
#completewith Unlit
.goto Ashenvale,31.25,30.70
>>Kill the |cRXP_ENEMY_Dark Strand|r. Loot them for the |cRXP_LOOT_Glowing Soul Gem|r
.complete 970,1 
.mob Dark Strand Excavator
.mob Dark Strand Enforcer
.mob Dark Strand Cultist
.mob Dark Strand Adept
step << Warlock
#label Heartswood
.goto Ashenvale,31.50,31.50
>>Loot the |cRXP_LOOT_Heartswood|r
.complete 1738,1 
step << Warlock
#optional
#label Unlit
#completewith next
.goto Ashenvale,26.78,22.42,150 >>Travel toward the |T135434:0|t[Unlit Torch]
step << Warlock
.goto Ashenvale,26.78,22.42
>>Loot the |T135434:0|t[Unlit Torch] on the table
.collect 190307,1,65602,1 
step << Warlock
#optional
#completewith next
.cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
.usespell 818
step << Warlock
.goto Ashenvale,26.78,22.42
>>Use the |T135434:0|t[Unlit Torch] on the |T135805:0|t[Basic Campfire] to create a |T135432:0|t[Burning Torch]
.collect 190308,1,65602,1 
.use 190307
step << Warlock
.goto 1440,26.682,22.561
.cast 367062 >>Use the |T135432:0|t[Burning Torch] on the |cRXP_PICK_Archaeologist's Cart|r to start a fire
.use 190308
.isOnQuest 65602
step << Warlock
.goto 1440,26.315,22.126,8,0
.goto 1440,26.334,22.315,8,0
.goto 1440,26.465,22.294,8,0
.goto 1440,26.614,22.027
>>Go into the house, then go upstairs. Loot the |cRXP_LOOT_Wooden Figurine|r on the table
.complete 65602,1 
step << Warlock
.goto Ashenvale,26.19,38.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 970 >> Turn in The Tower of Althalaxx
.target Delgren the Purifier
.isQuestComplete 970
step
#label Teronis
.goto Ashenvale,20.31,42.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teronis' Corpse|r in the middle of the lake
*|cRXP_WARN_Be careful as the |cRXP_ENEMY_Saltspittle Oracles|r cast |T136052:0|t[Healing Wave] |cRXP_WARN_(Ranged Cast: Heals themselves or an ally to full health), and|r |T136115:0|t[Shock] |cRXP_WARN_(Ranged Instant: Instantly deals about 90 damage)|r
*|cRXP_WARN_Be careful of the |cRXP_ENEMY_Saltspittle Murlocs|r underwater around|r |cRXP_FRIENDLY_Teronis' Corpse|r
.turnin 991 >> Turn in Raene's Cleansing
.accept 1023 >> Accept Raene's Cleansing
.target Teronis' Corpse
step
#loop
.goto 1440,19.386,41.543,0
.goto 1440,21.684,42.170,0
.goto 1440,20.920,40.653,0
.goto 1440,19.386,41.543,50,0
.goto 1440,20.406,44.562,50,0
.goto 1440,21.124,43.513,50,0
.goto 1440,21.684,42.170,50,0
.goto 1440,21.665,41.215,50,0
.goto 1440,20.920,40.653,50,0
>>Kill |cRXP_ENEMY_Saltspittle Puddlejumpers|r, |cRXP_ENEMY_Saltspittle Muckdwellers|r, |cRXP_ENEMY_Saltspittle Warriors|r, and |cRXP_ENEMY_Saltspittle Oracles|r. Loot them for the |cRXP_LOOT_Glowing Gem|r and their |cRXP_LOOT_Murloc Fins|r
>>|cRXP_WARN_Save the |cRXP_LOOT_Murloc Fins|r for later|r
*|cRXP_WARN_Be careful as the |cRXP_ENEMY_Saltspittle Oracles|r cast |T136052:0|t[Healing Wave] |cRXP_WARN_(Ranged Cast: Heals themselves or an ally to full health), and|r |T136115:0|t[Shock] |cRXP_WARN_(Ranged Instant: Instantly deals about 90 damage)|r
*|cRXP_WARN_Be careful of the |cRXP_ENEMY_Saltspittle Murlocs|r underwater around|r |cRXP_FRIENDLY_Teronis' Corpse|r
.complete 1023,1 
.collect 1468,8,150,1 
.disablecheckbox
.mob Saltspittle Puddlejumper
.mob Saltspittle Muckdweller
.mob Saltspittle Warrior
.mob Saltspittle Oracle
step
#optional
#completewith next
.goto 1440,17.952,32.324,50,0
.goto Ashenvale,14.79,31.29,20 >> Travel toward |cRXP_FRIENDLY_Talen|r
step
.goto Ashenvale,14.79,31.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
.accept 1007 >> Accept The Ancient Statuette
.target Talen
step
#sticky
#label Heads
#loop
.goto 1440,13.123,29.856,0
.goto 1440,14.039,27.131,0
.goto 1440,12.982,26.628,0
.goto 1440,14.566,23.396,0
.goto 1440,14.218,20.565,0
.waypoint 1440,13.123,29.856,60,0
.waypoint 1440,14.039,27.131,60,0
.waypoint 1440,12.982,26.628,60,0
.waypoint 1440,14.566,23.396,60,0
.waypoint 1440,14.218,20.565,60,0
>>Kill |cRXP_ENEMY_Wrathtail Wave Riders|r and |cRXP_ENEMY_Wrathtail Sorceresses|r. Loot them for their |cRXP_LOOT_Wrathtail Heads|r
.complete 1008,1 
.mob Wrathtail Wave Rider
.mob Wrathtail Sorceress
step
.goto Ashenvale,14.20,20.64
>>Loot the |cRXP_LOOT_Ancient Statuette|r on the ground
.complete 1007,1
step
.goto Ashenvale,14.79,31.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
>>|cRXP_WARN_Wait out the RP|r
.turnin 1007 >> Turn in The Ancient Statuette
.timer 22,The Ancient Statuette RP
.accept 1009 >> Accept Ruuzel
.target Talen
step
#optional
.goto 1440,11.040,30.733,70,0
.goto 1440,11.618,28.861,70,0
.goto 1440,12.432,18.828,70,0
.goto 1440,10.045,15.641,70,0
.goto 1440,9.703,14.505,70,0
>>|cRXP_WARN_Check for |cRXP_ENEMY_Lady Vespia|r (rare). If you find her, kill her. Loot her for the |cRXP_LOOT_Ring of Zoram|r
.goto Ashenvale,6.528,13.361,120 >>If you can't find her, travel toward |cRXP_ENEMY_Ruuzel|r
.complete 1009,1 
.disablecheckbox
.unitscan Lady Vespia
.isOnQuest 1009
.itemcount 5445,<1
step << Mage/Warlock
#optional
.goto Ashenvale,6.528,13.361
>>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
>>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
>>|cRXP_WARN_You can also cast|r |T135857:0|t[Blizzard] |cRXP_WARN_to split pull|r |cRXP_ENEMY_Ruuzel|r << Mage
>>|cRXP_WARN_You can also cast|r |T135857:0|t[Rain of Fire] |cRXP_WARN_to split pull|r |cRXP_ENEMY_Ruuzel|r << Warlock
.link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling"|r
.unitscan Lady Vespia
.mob Ruuzel
.complete 1009,1 
.train 10,3 << Mage 
.train 5740,3 << Warlock 
step
#optional
.goto Ashenvale,6.528,13.361
>>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
>>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
>>|cRXP_WARN_If you have any|r |T133717:0|t[Bombs]|cRXP_WARN_/|r[Grenades] |cRXP_WARN_you can also use them to split pull|r |cRXP_ENEMY_Ruuzel|r
.link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling"|r
.unitscan Lady Vespia
.mob Ruuzel
.complete 1009,1 
.skill engineering,<1,1
step
.goto Ashenvale,6.528,13.361
>>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
>>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
.complete 1009,1 
.mob Ruuzel
step
#optional
#requires Heads
#loop
.goto 1440,13.123,29.856,0
.goto 1440,14.039,27.131,0
.goto 1440,12.982,26.628,0
.goto 1440,14.566,23.396,0
.goto 1440,14.218,20.565,0
.goto 1440,13.123,29.856,60,0
.goto 1440,14.039,27.131,60,0
.goto 1440,12.982,26.628,60,0
.goto 1440,14.566,23.396,60,0
.goto 1440,14.218,20.565,60,0
+|cRXP_WARN_Grind until your |T134414:0|t[Hearthstone] is up|r
.mob Wrathtail Wave Rider
.mob Wrathtail Sorceress
.cooldown item,6948,>420,1 
.cooldown item,6948,<180 
step
.goto Ashenvale,14.79,31.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
.turnin 1009 >> Turn in Ruuzel
.target Talen
step
#optional
#completewith AstranaarEnd
.hs >> Hearth to Astranaar
.cooldown item,6948,>180 
.subzoneskip 415
step
#optional
#completewith AstranaarEnd
.subzone 415 >> Return to Astranaar
.cooldown item,6948,<180 
step
#label AshenvaleEnd
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1023 >> Turn in Raene's Cleansing
.turnin 1054 >> Turn in Culling the Threat
.target Raene Wolfrunner
.isQuestComplete 1054
step
#optional
#label AshEnd
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1023 >> Turn in Raene's Cleansing
.target Raene Wolfrunner
step
#optional
#completewith Turtles
.destroy 5505 >> Destroy |T133741:0|t[Teronis' Journal]. You no longer need it
step
#optional
#completewith Turtles
.abandon 1054 >> Abandon Culling the Threat
step
#label AstranaarEnd
.goto Ashenvale,34.67,48.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.turnin 1008 >> Turn in The Zoram Strand
.target Shindrell Swiftfire
step
#optional
#completewith Turtles
.goto Ashenvale,34.40,48.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Darkshore >> Fly to Darkshore
.target Daelyshia
.subzoneskip 442
step
.goto Darkshore,36.096,44.931
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
.turnin 1138 >> Turn in Fruit of the Sea
.target Gubber Blump
step
#label Turtles
.goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
.turnin 4730 >> Turn in Beached Sea Creature
.turnin 4731 >> Turn in Beached Sea Turtle
.turnin 4732 >> Turn in Beached Sea Turtle
.turnin 4733 >> Turn in Beached Sea Creature
step
.goto 1439,37.703,43.393
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
.turnin 4740 >> Turn in WANTED: Murkdeep!
.target Sentinel Glynda Nal'Shea
step
#optional
.goto Darkshore,39.37,43.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
.turnin 995 >> Turn in Escape Through Stealth
.target Terenthis
.isQuestComplete 995
step
.goto 1439,38.325,43.039
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
.turnin 3765 >> Turn in The Corruption Abroad
.target Gershala Nightwhisper
.isOnQuest 3765
step
#optional << Hunter
.goto Darkshore,37.44,41.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
.turnin 731 >> Turn in The Absent Minded Prospector
.accept 741 >> Accept The Absent Minded Prospector << !Dwarf/!Hunter
.isQuestComplete 731
.target Archaeologist Hollee
step
#optional
.goto Darkshore,37.44,41.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
.accept 741 >> Accept The Absent Minded Prospector << !Dwarf/!Hunter
.isQuestComplete 731
.target Archaeologist Hollee
step
#xprate >1.59
#optional
.goto 1439,39.373,43.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
.turnin 986 >> Turn in A Lost Master
.target Terenthis
.isQuestComplete 986
step
#xprate >1.59
#optional
.abandon 986 >> Abandon A Lost Master
step << !NightElf !Dwarf/!Hunter
#optional
#completewith FlightPath
.goto Darkshore,33.17,40.17,40,0
.goto Darkshore,33.17,40.17,0
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the Darnassus boat|r
.zone Teldrassil >> Take the boat to Darnassus
.zoneskip Darnassus
step << !NightElf !Dwarf/!Hunter
#label FlightPath
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fp Teldrassil >> Get the Teldrassil Flight Path
.target Vesprystus
step << !Dwarf/!Hunter
#optional
#completwith next
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Teldrassil >> Fly to Teldrassil
.target Caylais Moonfeather
.zoneskip Darnassus
.zoneskip Teldrassil
.dungeon DM
step << !Dwarf/!Hunter
#optional
#completewith DarnTrain << !Hunter !Mage !Warlock !Paladin
#completewith ProspectorEnd << Hunter/Mage/Warlock/Paladin
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step << !Dwarf/!Hunter
.goto Teldrassil,23.70,64.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
.turnin 741 >> Turn in The Absent Minded Prospector
.accept 942 >> Accept The Absent Minded Prospector
.target Chief Archaeologist Greywhisker
.isQuestComplete 741
.dungeon DM << Hunter
step << !Dwarf/!Hunter
#optional
#label ProspectorEnd
.goto Teldrassil,23.70,64.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
.accept 942 >> Accept The Absent Minded Prospector
.target Chief Archaeologist Greywhisker
.isQuestTurnedIn 741
.dungeon DM << Hunter
step << Druid
#optional
#completewith DarnTrain
.goto 1457,36.203,12.175,15,0
.goto 1457,35.490,10.317,15,0
.goto 1457,33.509,8.340,15 >> Travel to |cRXP_FRIENDLY_Fylerian Nightwing|r inside
step << Druid
.goto 1457,33.509,8.340
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fylerian Nightwing|r
.train 2090 >> Train your class spells
.target Fylerian Nightwing
.xp <22,1
.xp >24,1
step << Druid
#label DarnTrain
.goto 1457,33.509,8.340
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fylerian Nightwing|r
.train 1075 >> Train your class spells
.target Fylerian Nightwing
.xp <24,1
step << Warrior
.goto 1457,58.719,34.887
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.train 6192 >> Train your class spells
.target Arias'ta Bladesinger
.xp <22,1
.xp >24,1
step << Warrior
#label DarnTrain
.goto 1457,58.719,34.887
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.train 5308 >> Train your class spells
.target Arias'ta Bladesinger
.xp <24,1
step << Rogue
#ah
.goto 1457,56.367,51.819,0
.goto 1457,58.774,44.495
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
>>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
.collect 923,1 
.target Ariyell Skyshadow
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
#ssf
.goto 1457,58.774,44.495
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
>>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from her if you can afford it|r
.collect 923,1 
.target Ariyell Skyshadow
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
#optional
#completewith DarkshoreEnd
+|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
.use 923
.itemcount 923,1
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
.xp <21,1
step << Rogue
.goto 1457,33.123,16.269,20,0
.goto 1457,31.592,17.005,8,0
.goto 1457,31.786,18.587,8,0
.goto 1457,32.803,18.613,8,0
.goto 1457,32.947,17.109,8,0
.goto 1457,32.027,16.633,8,0
.goto 1457,31.541,17.897,8,0
.goto 1457,32.291,19.031,8,0
.goto 1457,37.009,21.920
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r underground
.train 1856 >> Train your class spells
.target Syurna
.xp <22,1
.xp >24,1
step << Rogue
#optional
#label DarnTrain
.goto 1457,33.123,16.269,20,0
.goto 1457,31.592,17.005,8,0
.goto 1457,31.786,18.587,8,0
.goto 1457,32.803,18.613,8,0
.goto 1457,32.947,17.109,8,0
.goto 1457,32.027,16.633,8,0
.goto 1457,31.541,17.897,8,0
.goto 1457,32.291,19.031,8,0
.goto 1457,37.009,21.920
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r underground
.train 6762 >> Train your class spells
.target Syurna
.xp <24,1
step << skip 
#completewith next
#optional
.goto 1457,39.787,15.668
.goto 1457,30.746,41.385,40 >>|cRXP_WARN_Jump on top of the stone in the Cenarion Enclave. Perform a Logout Skip by logging out and back in|r
step << Priest
.goto 1457,37.903,82.753
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.train 8103 >> Train your class spells
.target Jandria
.xp <22,1
.xp >24,1
step << Priest
#optional
#label DarnTrain
.goto 1457,37.903,82.753
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.train 1245 >> Train your class spells
.target Jandria
.xp <24,1
step << !Dwarf Hunter
#optional
#label DarnTrain
#completewith next
.goto Darnassus,40.38,8.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
.xp <24,1
step << !Dwarf Hunter
#optional
.goto 1457,42.769,9.978,12,0
.goto 1457,43.668,7.635,12,0
.goto 1457,41.406,6.757,12,0
.goto 1457,42.477,9.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvaria|r upstairs
.train 4198 >> Train your pet skills
.target Silvaria
.xp <24,1
step << !Mage
#xprate >1.59
#optional
.goto 1457,29.179,41.180
.zone Teldrassil >> Take the purple portal to Rut'Theran Village
.zoneskip Darnassus,1
step << !Mage
#xprate >1.59
#label DarkshoreEnd
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Darkshore >> Fly to Darkshore
.zoneskip Teldrassil,1
.target Vesprystus
step << !Mage
#optional
.goto Darkshore,32.44,43.71
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the Menethil Harbor boat|r
.zone Wetlands >> Take the boat to Menethil Harbor
step << Mage
#optional
#completewith next
.cast 3562 >>Cast |T135763:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step << Mage
.goto Ironforge,27.18,8.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << Mage
#optional
.goto Ironforge,55.51,47.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Wetlands >> Fly to Wetlands
.target Gryth Thurden
.zoneskip Wetlands
]]);
