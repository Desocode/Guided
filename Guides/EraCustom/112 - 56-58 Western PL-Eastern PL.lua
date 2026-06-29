RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 50-60
#classic
#tbc
#mop
<< Horde
#name 56-58 Western PL/Eastern PL
#displayname 57-59 Western PL/Eastern PL << sod
#next 58-59 Winterspring/Silithus I
step
#season 0
#optional
.abandon 3447 >> Abandon Secret of the Circle
.isOnQuest 3447
.dungeon ST
step
#season 0
#optional
.abandon 3528 >> Abandon The God Hakkar
.isOnQuest 3528
.dungeon ST
step
#season 0
#optional
.abandon 4146 >> Abandon Zapper Fuel
.isOnQuest 4146
.dungeon ST
step
#season 0
#optional
.abandon 1445 >> Abandon The Temple of Atal'Hakkar
.isOnQuest 1445
.dungeon ST
step << Mage
#completewith Bulwark1
.goto Tirisfal Glades,61.92,64.85
.zone Tirisfal Glades >> Exit Undercity
.zoneskip Undercity,1
step
#completewith next
.subzone 152 >> Travel toward the Bulwark
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to the Bulwark, then talk to |cRXP_FRIENDLY_Derrington|r
.turnin 5095 >>Turn in A Call to Arms: The Plaguelands!
.accept 5096 >>Accept Scarlet Diversions
.target High Executor Derrington
step
.goto Western Plaguelands,26.55,56.18
>>Click the |cRXP_PICK_Box of Incendiaries|r by the fire
.collect 12814,1,5096,1 
step
.goto Tirisfal Glades,83.19,68.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garush|r
.turnin 6029 >>Turn in The Everlook Report
.turnin 5405 >>Turn in Argent Dawn Commission
.target Argent Officer Garush
.itemcount 12846,<1
step
#optional
.goto Tirisfal Glades,83.19,68.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garush|r
.turnin 5405 >>Turn in Argent Dawn Commission
.target Argent Officer Garush
step
#label Bulwark1
.goto Tirisfal Glades,83.30,72.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mickey|r
.accept 5901 >>Accept A Plague Upon Thee
.target Mickey Levine
step
#completewith next
+|cRXP_WARN_Equip your|r |T133440:0|t[Argent Dawn Commission] |cRXP_WARN_trinket|r
.itemcount 12846,1
.use 12846
step 
.goto Western Plaguelands,40.5,51.8
.use 12807 >>Click the |cRXP_PICK_Command Tent|r, then use your |T132484:0|t[Scourge Banner]
>>|cRXP_WARN_These mobs are relatively difficult and can chain-pull each other, so be careful|r
.complete 5096,1 
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
.turnin 5096 >>Turn in Scarlet Diversions
.accept 5098 >>Accept All Along the Watchtowers
.accept 5228 >>Accept The Scourge Cauldrons
.target High Executor Derrington
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vandis|r
.turnin 5228 >>Turn in The Scourge Cauldrons
.accept 5229 >>Accept Target: Felstone Field
.target Shadow Priestess Vandis
step << Mage
#season 2
#sticky
.train 401764,1
#completewith FelstoneField
#label FelstoneNovice
.goto Western Plaguelands,36.8,54.7,0
>>Look for a frozen |cRXP_FRIENDLY_Novice Frost Mage|r in the marked location on the Felstone Field
>>|cRXP_WARN_Using Fire spells, unfreeze the|r |cRXP_FRIENDLY_Novice Frost Mage|r|cRXP_WARN_. DO NOT KILL HIM!|r
>>|cRXP_WARN_Afterwards cast|r |T136082:0|t[Remove Lesser Curse] |cRXP_WARN_on them and talk to them to receive their|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r] you will need it later to unlock the |T135813:0|t[Overheat] rune
.collect 225938,1
.mob Novice Frost Mage
step
.goto Western Plaguelands,37.12,57.18
>>Kill |cRXP_ENEMY_Cauldron Lord Bilemaw|r. Loot him for his |cRXP_LOOT_Cauldron Key|r
.complete 5229,1 
.unitscan Cauldron Lord Bilemaw
step
.goto Western Plaguelands,37.2,56.8
>>Click the |cRXP_PICK_Scourge Cauldron|r roiling atop the dais
.turnin 5229 >>Turn in Target: Felstone Field
.accept 5230 >>Accept Return to the Bulwark
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the 2nd floor
>>|cRXP_WARN_You can talk to her from outside at the back of the building|r
.accept 5021 >>Accept Better Late Than Never
.target Janice Felstone
step
#label FelstoneField
.goto Western Plaguelands,38.8,55.3
>>Click |cRXP_PICK_Janice's Parcel|r in the barn
>>|cRXP_WARN_You can click it through the hallway wall if you want to skip the mobs inside|r
.turnin 5021 >>Turn in Better Late Than Never
.accept 5023 >>Accept Better Late Than Never
step
#requires FelstoneNovice << sod Mage
#completewith next
.subzone 152 >> Return to The Bulwark
step
#requires FelstoneNovice << sod Mage
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vandis|r
.turnin 5230 >>Turn in Return to the Bulwark
.accept 5231 >>Accept Target: Dalson's Tears
.target Shadow Priestess Vandis
step
.goto Western Plaguelands,42.28,66.05
.use 12815 >>Use your |T135432:0|t[Beacon Torch] on the outside corner of the tower's doorway
>>|cRXP_WARN_Do not engage the elite inside|r
.complete 5098,2 
step << Warlock
#season 2
#label PlaguedSoulShard
.goto Western Plaguelands,50.6,77.6
>>|cRXP_WARN_Cast|r |T136163:0|t[Drain Soul] |cRXP_WARN_on |cRXP_ENEMY_Skeletal Flayers|r until you have received 3|r |cRXP_LOOT_Plagued Soul Shards|r
>>|cRXP_WARN_These are necessary to unlock a very powerful rune:|r |T136226:0|t[Mark of Chaos] |cRXP_WARN_don't skip this step|r
.collect 225929,3
.mob Skeletal Flayer
.train 440924,1
step << Mage
#season 2
#sticky
.train 401764,1
#completewith TowerOne
#label DalsonsNovice
.goto Western Plaguelands,45.1,51.9,0
>>Look for a frozen |cRXP_FRIENDLY_Novice Frost Mage|r in the marked location on the Dalson's Tears
>>|cRXP_WARN_Using Fire spells, unfreeze the|r |cRXP_FRIENDLY_Novice Frost Mage|r|cRXP_WARN_. DO NOT KILL HIM!|r
>>|cRXP_WARN_Afterwards cast|r |T136082:0|t[Remove Lesser Curse] |cRXP_WARN_on them and talk to them to receive their|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r] you will need it later to unlock the |T135813:0|t[Overheat] rune
.collect 225939,1
.mob Novice Frost Mage
step
.goto Western Plaguelands,46.04,52.33
>>Kill |cRXP_ENEMY_Cauldron Lord Malvinous|r. Loot him for his |cRXP_LOOT_Cauldron Key|r
.complete 5231,1 
.unitscan Cauldron Lord Malvinious
step
.goto Western Plaguelands,46.2,52.0
>>Click the |cRXP_PICK_Scourge Cauldron|r roiling atop the dais
.turnin 5231 >>Turn in Target: Dalson's Tears
.accept 5232 >>Accept Return to the Bulwark
step
.goto Western Plaguelands,47.8,50.6
>>Click |cRXP_PICK_Mrs. Dalson's Diary|r
.turnin 5058 >>Turn in Mrs. Dalson's Diary
step
.goto Western Plaguelands,47.49,51.00
>>Kill the |cRXP_ENEMY_Wandering Skeleton|r. Loot it for its |cRXP_LOOT_Outhouse Key|r
>>|cRXP_WARN_Grind Bone Fragments if the skeleton isn't spawned|r
.collect 12738,1 
.unitscan Wandering Skeleton
step
#completewith next
.goto Western Plaguelands,48.2,49.7
>>Click the |cRXP_PICK_Outhouse|r
.turnin 5059 >>Turn in Locked Away
step
.goto Western Plaguelands,48.2,49.7
>>Kill |cRXP_ENEMY_Farmer Dalson|r. Loot him for his |cRXP_LOOT_Cabinet Key|r
.collect 12739,1,5060 
.unitscan Farmer Dalson
step
.goto Western Plaguelands,47.4,49.7
>>Click the |cRXP_PICK_Locked Cabinet|r on the top floor of the house
.turnin 5060 >>Turn in Locked Away
step
#label TowerOne
#requires DalsonsNovice << sod Mage
.goto Western Plaguelands,40.15,71.50
.use 12815 >>Use your |T135432:0|t[Beacon Torch] on the outside corner of the tower's doorway
>>|cRXP_WARN_Do not engage the elite inside|r
.complete 5098,1 
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r on the top floor of the inn
.accept 4971 >>Accept A Matter of Time
.target Chromie
step
.goto Western Plaguelands,44.24,63.06
.use 12815 >>Use your |T135432:0|t[Beacon Torch] on the outside corner of the tower's doorway
>>|cRXP_WARN_Do not engage the elite inside|r
.complete 5098,3 
step
.goto Western Plaguelands,45.8,63.3
.use 12627 >>Spawn the |cRXP_ENEMY_Temporal Parasites|r by using your |T134229:0|t[Temporal Displacer] near the glowing silos
>>|cRXP_WARN_Temporal Parasites spam Slow and can spawn more parasites upon death. Be ready to run to the water if they begin overwhelming you; they cannot swim|r
.complete 4971,1 
.mob Temporal Parasite
step
.goto Western Plaguelands,46.73,71.14
.use 12815 >>Use your |T135432:0|t[Beacon Torch] on the outside corner of the tower's doorway
>>|cRXP_WARN_Do not engage the elite inside|r
.complete 5098,4 
step
#season 0
#completewith next
.goto Western Plaguelands,65.23,86.30,0
.goto Western Plaguelands,65.23,86.30,40,0
.goto The Hinterlands,22.32,27.19,30,0
.goto The Hinterlands,24.37,31.09,30,0
.goto The Hinterlands,23.91,33.27,30,0
.goto The Hinterlands,24.44,36.69,30,0
.goto The Hinterlands,23.87,38.59,30,0
.goto The Hinterlands,24.70,44.70,60 >> Travel south east along a path into The Hinterlands. Follow the waypoint for directions
.dungeon ST
step
#season 0
.goto The Hinterlands,33.751,75.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Atal'ai Exile|r
.turnin 1446 >> Turn in Jammal'an the Prophet
.target Atal'ai Exile
.isQuestComplete 1446
.dungeon ST
step
#season 0
#completewith next
.goto The Hinterlands,24.70,44.70,0
.goto The Hinterlands,24.70,44.70,60,0
.goto The Hinterlands,23.87,38.59,30,0
.goto The Hinterlands,24.44,36.69,30,0
.goto The Hinterlands,23.91,33.27,30,0
.goto The Hinterlands,24.37,31.09,30,0
.goto The Hinterlands,22.32,27.19,30,0
.goto Western Plaguelands,65.23,86.30,40 >> Return to the Western Plaguelands
.zoneskip Western Plaguelands
.isQuestTurnedIn 1446
.dungeon ST
step
#completewith next
.subzone 152 >> Return to The Bulwark
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vandis|r
.turnin 5232 >>Turn in Return to the Bulwark
.accept 5233 >>Accept Target: Writhing Haunt
.target Shadow Priestess Vandis
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
.turnin 5098 >>Turn in All Along the Watchtowers
.accept 838 >>Accept Scholomance
.target High Executor Derrington
step
#optional
#completewith SkeletalFragments
.destroy 12815 >>|cRXP_WARN_Destroy the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_as you no longer need it|r
step
.goto Tirisfal Glades,83.28,69.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dithers|r
.turnin 838 >>Turn in Scholomance
.accept 964 >>Accept Skeletal Fragments
.target Apothecary Dithers
step << Warlock
#season 2
.goto Tirisfal Glades,83.035,72.631
>>|cRXP_WARN_Turn in your |cRXP_LOOT_Plagued Soul Shards|r to |cRXP_FRIENDLY_Prazik Pilfershard|r at The Bulwark to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mark of Chaos|r]
.collect 225688,1
.target Prazik Pilfershard
.train 440924,1
step << Warlock
#season 2
.train 440924 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mark of Chaos|r] |cRXP_WARN_to learn|r |T136226:0|t[Mark of Chaos]
.use 225688
.itemcount 225688,1
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r on the top floor of the inn
.turnin 4971 >>Turn in A Matter of Time
.accept 4972 >>Accept Counting Out Time
.target Chromie
step
#completewith next
>>Loot the |cRXP_PICK_Small Lockboxes|r in the ruined buildings for |cRXP_LOOT_Andorhal Watches|r
.complete 4972,1 
.isOnQuest 4972
step
#label SkeletalFragments
#loop
.goto Western Plaguelands,46.40,70.00,0
.goto Western Plaguelands,46.40,70.00,50,0
.goto Western Plaguelands,45.60,72.20,50,0
.goto Western Plaguelands,42.60,71.40,50,0
.goto Western Plaguelands,41.60,73.20,50,0
.goto Western Plaguelands,38.80,71.00,50,0
.goto Western Plaguelands,38.80,68.20,50,0
.goto Western Plaguelands,40.40,66.40,50,0
.goto Western Plaguelands,42.60,70.00,50,0
.goto Western Plaguelands,43.40,64.40,50,0
.goto Western Plaguelands,45.80,65.80,50,0
>>Kill all |cRXP_ENEMY_Skeletons|r in Andorhal. Loot them for their |cRXP_LOOT_Fragments|r
>>|cRXP_ENEMY_Skeletal Executioners|r |cRXP_WARN_can execute|r
.complete 964,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
.mob Skeletal Warlord
.mob Skeletal Sorcerer
.mob Skeletal Flayer
.mob Skeletal Terror
step
#loop
.goto Western Plaguelands,40.40,66.50,0
.goto Western Plaguelands,40.40,66.50,30,0
.goto Western Plaguelands,38.90,68.10,30,0
.goto Western Plaguelands,41.30,69.80,30,0
.goto Western Plaguelands,42.80,73.90,30,0
.goto Western Plaguelands,43.60,73.40,30,0
.goto Western Plaguelands,45.10,73.70,30,0
.goto Western Plaguelands,46.50,73.00,30,0
.goto Western Plaguelands,44.80,70.50,30,0
.goto Western Plaguelands,42.90,68.50,30,0
.goto Western Plaguelands,40.90,67.20,30,0
>>Loot the |cRXP_PICK_Small Lockboxes|r in the ruined buildings for |cRXP_LOOT_Andorhal Watches|r
.complete 4972,1 
.isOnQuest 4972
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r on the top floor of the inn
.turnin 4972 >>Turn in Counting Out Time
.target Chromie
.isQuestComplete 4972
step << Mage
#season 2
#sticky
.train 401764,1
#completewith WildlifePU
#label WrithingNovice
.goto Western Plaguelands,53.3,64.5,0
>>Look for a frozen |cRXP_FRIENDLY_Novice Frost Mage|r in the marked location on the Writhing Haunt
>>|cRXP_WARN_Using Fire spells, unfreeze the|r |cRXP_FRIENDLY_Novice Frost Mage|r|cRXP_WARN_. DO NOT KILL HIM!|r
>>|cRXP_WARN_Afterwards cast|r |T136082:0|t[Remove Lesser Curse] |cRXP_WARN_on them and talk to them to receive their|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r] you will need it later to unlock the |T135813:0|t[Overheat] rune
.collect 225940,1
.mob Novice Frost Mage
step
.goto Western Plaguelands,53.07,65.97
>>Kill |cRXP_ENEMY_Cauldron Lord Razarch|r. Loot him for his |cRXP_LOOT_Cauldron Key|r
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_have a 5-second long, instant cast AoE stun|r
.complete 5233,1 
.unitscan Cauldron Lord Razarch
step
.goto Western Plaguelands,53.0,65.7
>>Click the |cRXP_PICK_Scourge Cauldron|r roiling atop the dais
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_have a 5-second long, instant cast AoE stun|r
.turnin 5233 >>Turn in Target: Writhing Haunt
.accept 5234 >>Accept Return to the Bulwark
step
#label WildlifePU
#requires WrithingNovice << sod Mage
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris|r inside the house
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_have a 5-second long, instant cast AoE stun|r
.accept 4984 >>Accept The Wildlife Suffers Too
.target Mulgris Deepriver
step
#completewith Businessman
>>Kill |cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Carrion Lurkers|r|cRXP_WARN_. If necessary, kill them to reset the area|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,51.92,28.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta|r
.accept 6004 >>Accept Unfinished Business
.target Kirsta Deepshadow
step
#completewith next
.goto Western Plaguelands,50.43,41.12,70,0
.goto Western Plaguelands,53.50,36.85,70,0
.goto Western Plaguelands,50.43,41.12,70,0
>>Kill |cRXP_ENEMY_Scarlet Mages|r and |cRXP_ENEMY_Scarlet Knights|r
>>|cRXP_WARN_The|r |cRXP_ENEMY_Mages|r |cRXP_WARN_and|r |cRXP_ENEMY_Knights|r |cRXP_WARN_share respawns. If necessary, kill extra mobs to reset the area|r
.complete 6004,3 
.mob +Scarlet Mage
.complete 6004,4 
.mob +Scarlet Knight
step
.goto Western Plaguelands,51.77,44.13,70,0
.goto Western Plaguelands,40.83,52.30,70,0
.goto Western Plaguelands,47.35,51.54,0
.goto Western Plaguelands,51.77,44.13
>>Kill |cRXP_ENEMY_Scarlet Medics|r and |cRXP_ENEMY_Scarlet Hunters|r
>>|cRXP_ENEMY_Medics|r |cRXP_WARN_and|r |cRXP_ENEMY_Hunters|r |cRXP_WARN_can be found in the camps. If necessary, kill extra mobs to reset the area|r
.complete 6004,1 
.mob +Scarlet Medic
.complete 6004,2 
.mob +Scarlet Hunter
step
.goto Western Plaguelands,50.43,41.12,70,0
.goto Western Plaguelands,53.50,36.85,70,0
.goto Western Plaguelands,50.43,41.12
>>Finish killing |cRXP_ENEMY_Scarlet Mages|r and |cRXP_ENEMY_Scarlet Knights|r
>>|cRXP_WARN_The|r |cRXP_ENEMY_Mages|r |cRXP_WARN_and|r |cRXP_ENEMY_Knights|r |cRXP_WARN_share respawns. If necessary, kill extra mobs to reset the area|r
.complete 6004,3 
.mob +Scarlet Mage
.complete 6004,4 
.mob +Scarlet Knight
step
.goto Western Plaguelands,51.92,28.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta|r
.turnin 6004 >>Turn in Unfinished Business
.accept 6023 >>Accept Unfinished Business
.target Kirsta Deepshadow
step
.goto Western Plaguelands,57.83,36.10
>>Kill |cRXP_ENEMY_Huntsman Radley|r
>>|cRXP_WARN_The mobs around her can chain pull easily. The Spellbinders cast Frost Nova|r
.complete 6023,1 
.unitscan Huntsman Radley
step
.goto Western Plaguelands,54.64,23.71
>>Kill |cRXP_ENEMY_Cavalier Durgen|r
>>|cRXP_WARN_This encounter is much more safe if you wait for him to patrol out of the tower before pulling. He has a 5 second, instant cast stun|r
.complete 6023,2 
.unitscan Cavalier Durgen
step
#label Businessman
.goto Western Plaguelands,51.92,28.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta|r
.turnin 6023 >>Turn in Unfinished Business
.target Kirsta Deepshadow
step
#loop
.goto Western Plaguelands,46.80,39.60,0
.goto Western Plaguelands,46.80,39.60,70,0
.goto Western Plaguelands,45.80,46.40,70,0
.goto Western Plaguelands,43.40,54.80,70,0
.goto Western Plaguelands,46.00,59.20,70,0
.goto Western Plaguelands,51.60,61.60,70,0
.goto Western Plaguelands,51.00,53.20,70,0
.goto Western Plaguelands,50.00,46.60,70,0
.goto Western Plaguelands,47.80,43.40,70,0
>>Kill |cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Carrion Lurkers|r|cRXP_WARN_. If necessary, kill them to reset the area|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris|r
.turnin 4984 >>Turn in The Wildlife Suffers Too
.accept 4985 >>Accept The Wildlife Suffers Too
.target Mulgris Deepriver
step
#loop
.goto Western Plaguelands,56.08,63.26,0
.goto Western Plaguelands,56.08,63.26,90,0
.goto Western Plaguelands,60.15,59.93,90,0
.goto Western Plaguelands,59.43,52.40,90,0
.goto Western Plaguelands,68.18,46.23,90,0
>>Kill |cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Plague Lurkers|r|cRXP_WARN_. If necessary, kill them to reset the area|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris|r
>>|cRXP_WARN_Don't accept the follow-up quest yet!|r
.turnin 4985 >>Turn in The Wildlife Suffers Too
.target Mulgris Deepriver
step
#completewith next
.goto Eastern Plaguelands,7.59,43.57,50 >> Travel toward |cRXP_FRIENDLY_Tirion|r in the Eastern Plaguelands
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.accept 5542 >>Accept Demon Dogs
.accept 5543 >>Accept Blood Tinged Skies
.accept 5544 >>Accept Carrion Grubbage
.target Tirion Fordring
step
#completewith WormMeat
>>Kill |cRXP_ENEMY_Carrion Worms|r. Loot them for their |cRXP_LOOT_Meat|r
.complete 5544,1 
.mob Carrion Grub
.mob Carrion Worm
.mob Carrion Devourer
step
#completewith Pamela
>>Kill |cRXP_ENEMY_Plaguebats|r and |cRXP_ENEMY_Plaguehound Runts|r
.complete 5543,1 
.mob +Plaguebat
.complete 5542,1 
.mob +Plaguehound Runt
step
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.accept 6022 >>Accept To Kill With Purpose
.accept 6042 >>Accept Un-Life's Little Annoyances
.target Nathanos Blightcaller
step
.goto Eastern Plaguelands,36.47,90.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela|r
.turnin 5601 >>Turn in Sister Pamela
.accept 5149 >>Accept Pamela's Doll
.target Pamela Redpath
step
.goto Eastern Plaguelands,38.10,92.24
>>Loot the 3 |cRXP_PICK_Doll Parts|r on the floor in ruined buildings
>>|cRXP_WARN_Clicking the doll pieces can spawn a few|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_which have ice armor and frost shock|r
.collect 12886,1,5149,1 
.unitscan Ghost of the Past
step
.goto Eastern Plaguelands,39.64,92.51
>>Loot the 3 |cRXP_PICK_Doll Parts|r on the floor in ruined buildings
>>|cRXP_WARN_Clicking the doll pieces can spawn a few|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_which have ice armor and frost shock|r
.collect 12887,1,5149,1 
.unitscan Ghost of the Past
step
.goto Eastern Plaguelands,39.67,90.24
>>Loot the 3 |cRXP_PICK_Doll Parts|r on the floor in ruined buildings
>>|cRXP_WARN_Clicking the doll pieces can spawn a few|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_which have ice armor and frost shock|r
.collect 12888,1,5149,1 
.unitscan Ghost of the Past
step
.goto Eastern Plaguelands,36.47,90.80
.use 12886 >>|cRXP_WARN_Click|r |T134164:0|t[Pamela's Doll's Head] |cRXP_WARN_to combine the three pieces|r
.complete 5149,1 
step
#label Pamela
.goto Eastern Plaguelands,36.47,90.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela|r
.turnin 5149 >>Turn in Pamela's Doll
.accept 5152 >>Accept Auntie Marlene
.accept 5241 >>Accept Uncle Carlin
.target Pamela Redpath
step
#loop
.goto Eastern Plaguelands,34.16,82.21,0
.goto Eastern Plaguelands,40.09,82.83,70,0
.goto Eastern Plaguelands,43.06,82.47,70,0
.goto Eastern Plaguelands,43.97,74.96,70,0
.goto Eastern Plaguelands,36.35,69.28,70,0
.goto Eastern Plaguelands,30.46,70.17,70,0
.goto Eastern Plaguelands,19.69,68.12,70,0
.goto Eastern Plaguelands,18.24,77.03,70,0
.goto Eastern Plaguelands,24.94,70.55,70,0
.goto Eastern Plaguelands,31.20,72.10,70,0
.goto Eastern Plaguelands,34.16,82.21,70,0
>>Kill |cRXP_ENEMY_Plaguebats|r and |cRXP_ENEMY_Plaguehound Runts|r
.complete 5543,1 
.mob +Plaguebat
.complete 5542,1 
.mob +Plaguehound Runt
step
#completewith next
>>Kill |cRXP_ENEMY_Plaguehound|r and |cRXP_ENEMY_Noxious Plaguebats|r
.complete 5542,2 
.mob +Plaguehound
.complete 6042,1 
.mob +Noxious Plaguebat
step
#completewith RottingUndead
.subzone 2264 >> Travel to Corrin's Crossing
step
#completewith next
>>Kill |cRXP_ENEMY_Undead|r. Loot them for their |cRXP_LOOT_Living Rot|r.
>>|cRXP_WARN_Groups of elites patrol the north and east road. Invisible mobs patrol inside of Corrin's Crossing, so try to pull mobs out|r
.collect 15447,7 
.mob Hate Shrieker
.mob Scourge Warder
.mob Stitched Horror
.mob Gibbering Ghoul
.mob Unseen Servant
.mob Dark Caster
step
#label RottingUndead
#loop
.goto Eastern Plaguelands,58.20,70.20,0
.goto Eastern Plaguelands,58.20,70.20,25,0
.goto Eastern Plaguelands,60.40,71.60,25,0
.goto Eastern Plaguelands,61.00,69.40,25,0
.goto Eastern Plaguelands,61.40,66.40,25,0
.goto Eastern Plaguelands,59.40,66.40,25,0
.goto Eastern Plaguelands,58.00,67.60,25,0
.use 15454 >>|cRXP_WARN_Use the|r |T133748:0|t[Mortar and Pestle] |cRXP_WARN_before the |cRXP_LOOT_Living Rot|r expires|r
.complete 6022,1 
step << Hunter
#season 2
#completewith next
>>Kill |cRXP_ENEMY_Plaguehound|r and |cRXP_ENEMY_Noxious Plaguebats|r
.complete 5542,2 
.mob +Plaguehound
.complete 6042,1 
.mob +Noxious Plaguebat
.train 440557,1
step << Hunter
#season 2
.goto Eastern Plaguelands,74.4,62.7
.goto Eastern Plaguelands,72.5,66.4,0
.goto Eastern Plaguelands,72.6,63.7,0
.goto Eastern Plaguelands,76.7,62.6,0
.goto Eastern Plaguelands,74.8,58.9,0
.goto Eastern Plaguelands,76.7,58.7,0
.goto Eastern Plaguelands,55.6,67.0,0
.goto Eastern Plaguelands,54.3,70.1,0
.goto Eastern Plaguelands,51.9,70.0,0
>>Kill and loot any |cRXP_ENEMY_Rotting Sludges|r and |cRXP_ENEMY_Living Decay|r untill you loot a |T132108:0|t[|cRXP_LOOT_Bubbling Green Ichor|r]. You will need it to get the rune of |T132178:0|t[|cRXP_FRIENDLY_Resourcefulness|r] soon
>>|cRXP_WARN_The ichor is a gray item, be careful not to vendor it!|r
.collect 20770,1 
.train 440557,1
.mob Living Decay
.mob Rotting Sludge
step
#loop
.goto Eastern Plaguelands,77.94,69.64,0
.goto Eastern Plaguelands,46.14,65.32,70,0
.goto Eastern Plaguelands,49.24,61.48,70,0
.goto Eastern Plaguelands,50.26,54.66,70,0
.goto Eastern Plaguelands,55.24,54.72,70,0
.goto Eastern Plaguelands,61.47,61.92,70,0
.goto Eastern Plaguelands,65.18,70.17,70,0
.goto Eastern Plaguelands,69.94,72.99,70,0
.goto Eastern Plaguelands,72.99,75.98,70,0
.goto Eastern Plaguelands,77.94,69.64,70,0
>>Kill |cRXP_ENEMY_Plaguehound|r and |cRXP_ENEMY_Noxious Plaguebats|r
.complete 5542,2 
.mob +Plaguehound
.complete 6042,1 
.mob +Noxious Plaguebat
step
#completewith LHFP
.subzone 2268 >> Travel to Light's Hope Chapel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nicholas|r and |cRXP_FRIENDLY_Carlin|r
.turnin 6030 >>Turn in Duke Nicholas Zverenhoff
.target +Duke Nicholas Zverenhoff
.goto Eastern Plaguelands,81.44,59.81
.turnin 5241 >>Turn in Uncle Carlin
.accept 5211 >>Accept Defenders of Darrowshire
.target +Carlin Redpath
.goto Eastern Plaguelands,81.51,59.77
step
.goto Eastern Plaguelands,79.60,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alen|r
.accept 6021 >>Accept Zaeldarr the Outcast
.accept 5281 >>Accept The Restless Souls
.target Caretaker Alen
step
#label LHFP
.goto Eastern Plaguelands,80.22,57.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Georgia|r
.fp Light's Hope Chapel	>>Get the Light's Hope Chapel flight path
.target Georgia
step
#sticky
#completewith LostSymbol
.goto Eastern Plaguelands,77.11,48.00,0
.goto Eastern Plaguelands,67.30,40.67,0
.goto Eastern Plaguelands,26.48,37.58,0
>>Kill |cRXP_ENEMY_Diseased Flayers|r and |cRXP_ENEMY_Gibbering Ghouls|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that appear over their corpses
>>|cRXP_WARN_These mobs share spawns with a few mob types, so kill everything after all the ghouls have died|r
.complete 5211,1 
.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
.skipgossip
step
#label WormMeat
#loop
.goto Eastern Plaguelands,51.18,39.91,0
.goto Eastern Plaguelands,69.73,50.55,70,0
.goto Eastern Plaguelands,70.42,43.50,70,0
.goto Eastern Plaguelands,70.34,38.47,70,0
.goto Eastern Plaguelands,67.02,34.41,70,0
.goto Eastern Plaguelands,62.69,34.72,70,0
.goto Eastern Plaguelands,50.36,28.49,70,0
.goto Eastern Plaguelands,51.18,39.91,70,0
>>Kill |cRXP_ENEMY_Monstrous Plaguebats|r and |cRXP_ENEMY_Frenzied Plaguehounds|r
>>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Monstrous Plaguebats|r |cRXP_WARN_can silence for 10 seconds in melee range|r << !Rogue !Warrior
.complete 6042,2 
.mob +Monstrous Plaguebat
.complete 5542,3 
.mob +Frenzied Plaguehound
step
#loop
.goto Eastern Plaguelands,67.02,34.41,0
.goto Eastern Plaguelands,69.73,50.55,70,0
.goto Eastern Plaguelands,70.42,43.50,70,0
.goto Eastern Plaguelands,70.34,38.47,70,0
.goto Eastern Plaguelands,67.02,34.41,70,0
.goto Eastern Plaguelands,62.69,34.72,70,0
.goto Eastern Plaguelands,50.36,28.49,70,0
.goto Eastern Plaguelands,51.18,39.91,70,0
>>Kill |cRXP_ENEMY_Carrion Worms|r. Loot them for their |cRXP_LOOT_Meat|r
.complete 5544,1 
.mob Carrion Grub
.mob Carrion Worm
.mob Carrion Devourer
step
#completewith next
.subzone 2277 >> Travel to Plaguewood
step
#loop
.goto Eastern Plaguelands,42.80,34.24,0
.goto Eastern Plaguelands,39.97,21.11,50,0
.goto Eastern Plaguelands,34.90,24.67,50,0
.goto Eastern Plaguelands,30.69,24.99,50,0
.goto Eastern Plaguelands,26.59,23.84,50,0
.goto Eastern Plaguelands,24.19,23.62,50,0
.goto Eastern Plaguelands,21.15,24.05,50,0
.goto Eastern Plaguelands,20.90,29.89,50,0
.goto Eastern Plaguelands,23.75,32.44,50,0
.goto Eastern Plaguelands,26.48,37.58,50,0
.goto Eastern Plaguelands,29.55,34.13,50,0
.goto Eastern Plaguelands,34.89,35.29,50,0
.goto Eastern Plaguelands,42.80,34.24,50,0
>>Loot the tan |cRXP_PICK_Termite Mounds|r for its |cRXP_LOOT_Termites|r
.complete 5901,1 
step << Hunter
#season 2
#label TaintBoarMeat
#sticky
.goto Eastern Plaguelands,17.8,30.2
>>Kill |cRXP_ENEMY_Plagued Swines|r in Terrordale untill you loot a |T134046:0|t[|cRXP_LOOT_Tainted Boar Meat|r]
.collect 225942,1 
.mob Plagued Swine
.train 440557,1
.itemcount 225943,<1
step << Hunter
#season 2
#requires TaintBoarMeat
#label HunkofFlesh
#sticky
>>Use the |T134046:0|t[|cRXP_LOOT_Tainted Boar Meat|r] to combine it with the |T132108:0|t[|cRXP_LOOT_Bubbling Green Ichor|r] and create a |T134047:0|t[Rancid Hunk of Flesh]
.collect 225943,1 
.use 225942
.train 440557,1
.itemcount 225942,1
.itemcount 20770,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEnter the house, then talk to |cRXP_FRIENDLY_Egan|r and |cRXP_FRIENDLY_Augustus|r
.turnin 5281 >>Turn in The Restless Souls
.target +Egan
.goto Eastern Plaguelands,14.45,33.74
.accept 6164 >>Accept Augustus' Receipt Book
.target +Augustus the Touched
.goto Eastern Plaguelands,14.44,33.51
step
.goto Eastern Plaguelands,17.43,31.08
>>Loot |cRXP_PICK_Augustus' Receipt Book|r on the second floor of the inn
.complete 6164,1 
step
.goto Eastern Plaguelands,14.44,33.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augustus|r back in the house
.turnin 6164 >>Turn in Augustus' Receipt Book
.target Augustus the Touched
step
#label AugustusVendor
.goto Eastern Plaguelands,14.44,33.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augustus|r again
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r
step << Hunter
#season 2
#requires HunkofFlesh
.goto Eastern Plaguelands,22.68,37.12,-1
.goto Eastern Plaguelands,19.37,26.42,-1
.goto Eastern Plaguelands,29.83,39.05,-1
>>Look for a |cRXP_ENEMY_Carrion Grub|r or a |cRXP_ENEMY_Carrion Devourer|r. The closest possible spawns to Terrordale are just north and south of it
>>Use the |T134047:0|t[Rancid Hunk of Flesh] on it to feed it. |cRXP_WARN_The grub will spawn a skeleton after a short animation, loot it for|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Resourceful|r]
.use 225943
.collect 225955,1 
.mob Carrion Grub
.mob Carrion Devourer
.train 440557,1
.itemcount 225943,1
step << Hunter
#season 2
.train 440557 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of the Resourceful|r] |cRXP_WARN_to train|r |T132178:0|t[Resourcefulness]
.use 225955
.train 440557,1
.itemcount 225955,1
step
#completewith next
.goto Eastern Plaguelands,27.59,43.33,0
.goto Eastern Plaguelands,16.37,42.00,0
.goto Eastern Plaguelands,27.59,43.33,40,0
.goto Eastern Plaguelands,24.43,41.00,40,0
.goto Eastern Plaguelands,23.33,42.30,40,0
.goto Eastern Plaguelands,21.80,40.36,40,0
.goto Eastern Plaguelands,19.58,42.98,40,0
.goto Eastern Plaguelands,18.71,40.81,40,0
.goto Eastern Plaguelands,16.37,42.00,40,0
.goto Eastern Plaguelands,10.99,47.75,40,0
+Perform the Eastern Plaguelands mountain skip to save time
>>|cRXP_WARN_You MUST have|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_in your bag for this|r << !Mage
.link https://www.youtube.com/watch?v=6VIULBxMyfU >> Click HERE for reference
.use 8529
.isQuestTurnedIn 2641
step
#xprate >2.1
#optional
#completewith next
.goto Eastern Plaguelands,7.59,43.57,50 >>Travel back to |cRXP_FRIENDLY_Tirion|r
.isQuestAvailable 2641
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 5542 >>Turn in Demon Dogs
.turnin 5543 >>Turn in Blood Tinged Skies
.turnin 5544 >>Turn in Carrion Grubbage
.accept 5742 >>Accept Redemption
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
>>|cRXP_WARN_Type /sit when listening to Tirion's Tale. You can be mounted when doing this|r
.complete 5742,1 
.turnin 5742 >>Turn in Redemption
.accept 5781 >>Accept Of Forgotten Memories
.target Tirion Fordring
.skipgossip
step
#xprate <2.0
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.accept 6133 >>Accept The Ranger Lord's Behest
.turnin 6022 >>Turn in To Kill With Purpose
.turnin 6042 >>Turn in Un-Life's Little Annoyances
.target Nathanos Blightcaller
step
#xprate >1.99
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.turnin 6022 >>Turn in To Kill With Purpose
.turnin 6042 >>Turn in Un-Life's Little Annoyances
.target Nathanos Blightcaller
step
.goto Eastern Plaguelands,28.34,86.79
>>Click the |cRXP_PICK_Loose Dirt Mound|r to summon |cRXP_ENEMY_Mercutio Filthgorger|r and 3 |cRXP_ENEMY_Crypt Robbers|r. Kill him, then loot him for his |cRXP_LOOT_Hammer|r
>>|cRXP_WARN_This quest is very dangerous. The|r |cRXP_ENEMY_Crypt Robbers|r |cRXP_WARN_are unusual; they take a LONG time to reset and can re-leash on a split pull|r
>>|cRXP_WARN_This quest is one of the hardest in the game. Skip it if you need to|r << !Mage !Warlock !Hunter !Rogue !Druid
>>|cRXP_WARN_Split pull the pack that spawns with Blizzard. Kite|r |cRXP_ENEMY_Mercutio|r |cRXP_WARN_away until the other mobs break leash|r << Mage
>>|cRXP_WARN_Split pull the pack that spawns with Rain of Fire. Kite|r |cRXP_ENEMY_Mercutio|r |cRXP_WARN_away until the other mobs break leash|r << Warlock
>>|cRXP_WARN_Split pull the pack that spawns with Volley. Kite|r |cRXP_ENEMY_Mercutio|r |cRXP_WARN_away until the other mobs break leash|r << Hunter
>>|cRXP_WARN_Stealth into the middle of the pack that spawns, then de-stealth, immediately aggroing all mobs at once. Keep refreshing leash on|r |cRXP_ENEMY_Mercutio|r |cRXP_WARN_whilst sprinting away from the other mobs|r << Rogue
>>|cRXP_WARN_Stealth into the middle of the pack that spawns, then de-stealth, immediately aggroing all mobs at once. Keep refreshing leash on|r |cRXP_ENEMY_Mercutio|r |cRXP_WARN_whilst dashing away from the other mobs|r << Druid
.complete 5781,1 
.mob Crypt Robber
.unitscan Mercutio Filthgorger
.link https://www.youtube.com/live/svdic7rZYv4?si=ZSkwOWQdlWGDx_yK&t=7175 >> CLICK HERE for reference << Mage/Warlock/Hunter/Druid/Rogue
step
.goto Eastern Plaguelands,27.41,84.92
>>Kill |cRXP_ENEMY_Zaeldarr the Outcast|r inside the crypt. Loot him for his |cRXP_LOOT_Head|r
.complete 6021,1 
.unitscan Zaeldarr the Outcast
step
.goto Eastern Plaguelands,27.28,85.22
>>Click the big |cRXP_PICK_Torn Scroll|r on the ground inside the crypt
.accept 6024 >>Accept Hameya's Plea
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 5781 >>Turn in Of Forgotten Memories
.accept 5845 >>Accept Of Lost Honor
.target Tirion Fordring
.isQuestComplete 5781
step
#optional
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.accept 5845 >>Accept Of Lost Honor
.target Tirion Fordring
.isQuestTurnedIn 5781
step
#completewith Historian
.zone Western Plaguelands >>Enter Western Plaguelands
step
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris|r
.accept 4987 >>Accept Glyphed Oaken Branch
.target Mulgris Deepriver
step
#label Historian
.goto Western Plaguelands,49.13,78.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marlene|r inside the house
.turnin 5152 >>Turn in Auntie Marlene
.accept 5153 >>Accept A Strange Historian
.target Marlene Redpath
step
.goto Western Plaguelands,49.69,76.75
>>Loot |cRXP_PICK_Joseph Redpath's Monument|r for |cRXP_LOOT_Joseph's Wedding Ring|r
.complete 5153,1 
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r on the top floor of the inn
.turnin 5153 >>Turn in A Strange Historian
.accept 5154 >>Accept The Annals of Darrowshire
.target Chromie
step
.goto Western Plaguelands,43.4,69.6
>>Loot |cRXP_PICK_Musty Tomes|r inside the town hall until you loot the |cRXP_LOOT_Annals of Darrowshire|r
>>|cRXP_WARN_Many books are fake and spawn mobs when opened. The real books have entirely white pages, no gray/dark coloration. You may have to click fake books in order to spawn a real one|r
.complete 5154,1 
.link https://i.imgur.com/B2HDb6K.png >> Click HERE for a visual example
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r on the top floor of the inn
.turnin 5154 >>Turn in The Annals of Darrowshire
.accept 5210 >>Accept Brother Carlin
.target Chromie
step
#completewith BulwarkTurnins3
.subzone 152 >> Travel toward the Bulwark
step
.goto Tirisfal Glades,83.28,69.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dithers|r
.turnin 964 >>Turn in Skeletal Fragments
.target Apothecary Dithers
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vandis|r
.turnin 5234 >>Turn in Return to the Bulwark
.accept 5235 >>Accept Target: Gahrron's Withering
.target Shadow Priestess Vandis
step
#label BulwarkTurnins3
.goto Tirisfal Glades,83.29,72.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mickey|r
.turnin 5901 >>Turn in A Plague Upon Thee
.accept 5902 >>Accept A Plague Upon Thee
.target Mickey Levine
step
#optional
.isQuestTurnedIn 5901
.destroy 15043 >>|cRXP_WARN_Delete any left over|r |T134321:0|t[Plagueland Termites]
step << !Mage
#completewith
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >> Travel to Undercity
.zoneskip Undercity
step << Mage
#completewith UCfinalvisit
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
step << Mage
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
.train 10157 >> Train your class spells
.target Anastasia Hartwell
.xp <56,1
.xp >58,1
step << Mage
#optional
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
.train 10054 >> Train your class spells
.target Anastasia Hartwell
.xp <58,1
step << Warlock
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 11689 >> Train your class spells
.target Richard Kerwin
.xp <56,1
.xp >58,1
step << Warlock
#optional
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 11713 >> Train your class spells
.target Richard Kerwin
.xp <58,1
step << Warlock
.goto Undercity,85.70,16.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martha|r
.trainer >>Upgrade your pet's abilities
.target Martha Strain
step << Priest
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lazarus|r
.train 10929 >> Train your class spells
.target Father Lazarus
.xp <56,1
.xp >58,1
step << Priest
#optional
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lazarus|r
.train 10947 >> Train your class spells
.target Father Lazarus
.xp <58,1
step << Warrior
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 20662 >> Train your class spells
.target Angela Curthas
.xp <56,1
.xp >58,1
step << Warrior
#optional
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 11597 >> Train your class spells
.target Angela Curthas
.xp <58,1
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 11300 >> Train your class spells
.target Carolyn Ward
.xp <56,1
.xp >58,1
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 11305 >> Train your class spells
.target Carolyn Ward
.xp <58,1
step
.goto Undercity,69.79,43.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bauhaus|r
.turnin 5023 >>Turn in Better Late Than Never
.accept 5049 >>Accept The Jeremiah Blues
.target Royal Overseer Bauhaus
step
.goto Undercity,67.61,44.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeremiah|r
.turnin 5049 >>Turn in The Jeremiah Blues
.accept 5050 >>Accept Good Luck Charm
.target Jeremiah Payson
step
.goto Undercity,65.99,44.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William|r
.bankwithdraw 10691,10692,10693,10694 >>Withdraw the following from the bank:
>>|T134815:0|t[Filled Vial Labeled #1]
>>|T134822:0|t[Filled Vial Labeled #2]
>>|T134836:0|t[Filled Vial Labeled #3]
>>|T134857:0|t[Filled Vial Labeled #4]
.target William Montague
.isOnQuest 3568
step
#ah
#completewith UCClothTurnins
.goto Undercity,67.66,35.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r
>>|cRXP_BUY_Buy 240 of each type of cloth on the auction house|r
.collect 2592,240 
.collect 4306,240 
.collect 4338,240 
.collect 14047,240 
.target Auctioneer Cain
step
#ah
#completewith next
.goto Undercity,68.15,38.26,0
+Go to the mailbox and retrieve the following:
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
#label UCClothTurnins
.goto Undercity,71.66,29.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ralston|r
>>|cRXP_WARN_Disable any other addons that automatically turn in reputation items, or you'll be told to buy cloth again later|r
>>|cRXP_WARN_Skip any of the donations which you do not have enough cloth for|r
.turnin 7813 >>Turn in A Donation of Wool
.turnin 7814 >>Turn in A Donation of Silk
.turnin 7817 >>Turn in A Donation of Mageweave
.turnin 7818 >>Turn in A Donation of Runecloth
.target Ralston Farnsley
step
#completewith next
.goto Undercity,47.20,59.69,0
.goto Undercity,47.20,59.69,12,0
.goto Undercity,43.55,68.11,12,0
.goto Undercity,45.20,71.67,12 >>Travel toward |cRXP_FRIENDLY_Cuely|r
step
.goto Undercity,48.50,71.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cuely|r
.turnin 3568 >>Turn in Seeping Corruption
.target Chemist Cuely
.isQuestComplete 3568
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cuely|r and |cRXP_FRIENDLY_Thersa|r
.accept 3569 >>Accept Seeping Corruption
.target +Chemist Cuely
.goto Undercity,48.71,71.40
.turnin 3569 >>Turn in Seeping Corruption
.turnin 3570 >>Turn in Seeping Corruption
.target +Thersa Windsong
.goto Undercity,49.03,70.81
.isQuestTurnedIn 3568
step
.goto Undercity,54.81,76.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andron|r
.turnin 3542 >>Turn in Delivery to Andron Gant
.accept 3564 >>Accept Andron's Payment to Jediga
.target Andron Gant
.isOnQuest 3542
step
#optional
.goto Undercity,54.81,76.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andron|r
.accept 3564 >>Accept Andron's Payment to Jediga
.target Andron Gant
.isQuestTurnedIn 3542
step
#phase 6
#ah
.goto Undercity,71.42,46.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stockton|r in the Trade Quarter
>>|cRXP_BUY_Buy the following items from the Auction House. You will need these later for multiple free quest turn ins in EPL|r
>>|cRXP_WARN_There are 5 different quests and each require 30. If you can't get 30 of one type then skip it|r
.collect 22529,30,9136,1 
.collect 22526,30,9126,1 
.collect 22525,30,9124,1 
.collect 22527,30,9128,1 
.collect 22528,30,9131,1 
.target Auctioneer Stockton
step
>>Take out |T134430:0|t[Black Dragonflight Molt] from your bank if you completed the quest in Searing Gorge for it earlier. You will need it
.collect 10575,1,4022,1 
.isQuestTurnedIn 3481
.dungeon BRD
step
#completewith next
.goto Undercity,51.99,64.54,10,0
.goto Undercity,46.25,73.22,10,0
.goto Undercity,45.32,78.32,10,0
.goto Undercity,46.26,83.91,10,0
.goto Undercity,49.03,87.92,10,0
.goto Undercity,52.94,89.60,10 >>Enter the Royal Quarter
step
#label UCfinalvisit
.goto Undercity,58.07,91.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas|r
.accept 5961 >>Accept The Champion of the Banshee Queen
.target Lady Sylvanas Windrunner
step << skip
.goto Undercity,55.22,90.88
.goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in|r
.link https://www.youtube.com/watch?v=jj85AXyF1XE >> |cRXP_WARN_CLICK HERE for an example|r
>>|cRXP_WARN_If you can't do this, just run out of Undercity normally|r
step
#completewith LostSymbol
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly Light's Hope Chapel>>Fly to Light's Hope Chapel
.target Michael Garrett
.zoneskip Eastern Plaguelands
step
.goto Eastern Plaguelands,79.60,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alen|r
.turnin 6021 >>Turn in Zaeldarr the Outcast
.target Caretaker Alen
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin|r
.turnin 5211 >>Turn in Defenders of Darrowshire
.turnin 5210 >>Turn in Brother Carlin
.target Carlin Redpath
.isQuestComplete 5211
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin|r
.turnin 5210 >>Turn in Brother Carlin
.target Carlin Redpath
step
#completewith next
.subzone 2273 >> Travel to Zul'Mashar
step
.goto Eastern Plaguelands,64.25,22.09,50,0
.goto Eastern Plaguelands,68.57,20.95,50,0
.goto Eastern Plaguelands,69.23,18.48
>>Kill |cRXP_ENEMY_Infiltrator Hameya|r. Loot her for her |cRXP_LOOT_Key|r
>>|cRXP_WARN_You should be able to avoid all the mobs en route up the mountain. Run past them all then run up the mountains to the east. Do not go near the graves|r
.complete 6024,1 
.unitscan Infiltrator Hameya
step
#xprate <2.0
#completewith next
.goto Eastern Plaguelands,52.14,18.30,0
>>Loot the |cRXP_LOOT_Quel'Thalas Registry|r on top of the bench
.complete 6133,4 
step
#xprate <2.0
#loop
.goto Eastern Plaguelands,52.88,19.18,0
.goto Eastern Plaguelands,51.75,21.66,40,0
.goto Eastern Plaguelands,50.73,18.33,40,0
.goto Eastern Plaguelands,50.89,16.50,40,0
.goto Eastern Plaguelands,52.97,17.29,40,0
.goto Eastern Plaguelands,52.88,19.18,40,0
>>Kill |cRXP_ENEMY_Pathstriders|r, |cRXP_ENEMY_Rangers|r and |cRXP_ENEMY_Woodsmen|r
>>|cRXP_WARN_These mobs hit very hard for non-elites|r << !Rogue !Druid
>>|cRXP_WARN_These mobs hit very hard for non-elites; remember Pathstrider's Faerie Fire ability, in case you need to escape|r << Rogue/Druid
.complete 6133,1 
.mob +Pathstrider
.complete 6133,2 
.mob +Ranger
.complete 6133,3 
.mob +Woodsman
step
#xprate <2.0
.goto Eastern Plaguelands,52.14,18.30
>>Loot the |cRXP_LOOT_Quel'Thalas Registry|r on top of the bench
.complete 6133,4 
step
#label LostSymbol
.goto Eastern Plaguelands,71.30,33.97
>>Loot the |cRXP_LOOT_Symbol of Lost Honor|r underwater
.complete 5845,1 
.isQuestTurnedIn 5781
step
#loop
.goto Eastern Plaguelands,77.11,48.00,0
.goto Eastern Plaguelands,67.30,40.67,0
.goto Eastern Plaguelands,26.48,37.58,0
.goto Eastern Plaguelands,68.20,40.80,60,0
.goto Eastern Plaguelands,68.60,38.60,60,0
.goto Eastern Plaguelands,66.00,36.00,60,0
.goto Eastern Plaguelands,64.60,38.00,60,0
.goto Eastern Plaguelands,65.40,41.20,60,0
.goto Eastern Plaguelands,66.60,38.60,60,0
.goto Eastern Plaguelands,68.20,40.80,60,0
>>Kill |cRXP_ENEMY_Diseased Flayers|r and |cRXP_ENEMY_Gibbering Ghouls|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that appear over their corpses
>>|cRXP_WARN_These mobs share spawns with a few mob types, so kill everything after all the ghouls have died|r
.complete 5211,1 
.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
.skipgossip
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin|r
.turnin 5211 >>Turn in Defenders of Darrowshire
.target Carlin Redpath
step
#xprate <2.0
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.turnin 5961 >>Turn in The Champion of the Banshee Queen
.turnin 6133 >>Turn in The Ranger Lord's Behest
.target Nathanos Blightcaller
step
#xprate >1.99
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.turnin 5961 >>Turn in The Champion of the Banshee Queen
.target Nathanos Blightcaller
step
.goto Eastern Plaguelands,28.03,86.16
>>Click on the |cRXP_PICK_mound of dirt|r behind the crypt
.turnin 6024 >>Turn in Hameya's Plea
.isQuestComplete 6024
step
#completewith next
.goto Eastern Plaguelands,7.59,43.57,50 >> Travel back to Tirion
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 5845 >>Turn in Of Lost Honor
.accept 5846 >>Accept Of Love and Family
.target Tirion Fordring
.isQuestTurnedIn 5781
step
#completewith next
.goto Western Plaguelands,65.79,75.41,100 >>Swim to Caer Darrow << !Shaman/Priest
.goto Western Plaguelands,65.79,75.41,100 >>Waterwalk to Caer Darrow, or swim << Shaman
.goto Western Plaguelands,65.79,75.41,100 >>Use Levitate and run to Caer Darrow, or swim << Priest
step
.goto Western Plaguelands,65.79,75.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renfray|r
.turnin 5846 >>Turn in Of Love and Family
.target Artist Renfray
.isOnQuest 5846
step << Mage
#season 2
#sticky
.train 401764,1
#completewith Gahrrons
#label GahrronsNovice
.goto Western Plaguelands,64.2,57.7,0
>>Look for a frozen |cRXP_FRIENDLY_Novice Frost Mage|r in the marked location on the Gahrron's Withering
>>|cRXP_WARN_Using Fire spells, unfreeze the|r |cRXP_FRIENDLY_Novice Frost Mage|r|cRXP_WARN_. DO NOT KILL HIM!|r
>>|cRXP_WARN_Afterwards cast|r |T136082:0|t[Remove Lesser Curse] |cRXP_WARN_on them and talk to them to receive their|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r] you will need it later to unlock the |T135813:0|t[Overheat] rune
.collect 225941,1
.mob Novice Frost Mage
step << Mage
#season 2
#sticky
#requires GahrronsNovice
#completewith Gahrrons
#label OverheatRune
.train 401764,1
.use 225938 >> |cRXP_WARN_Use any of the|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r] |cRXP_WARN_to combine them into|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Overheat|r]
.use 225939
.use 225940
.use 225941
.collect 225691,1
step << Mage
#season 2
#sticky
#requires OverheatRune
#completewith Gahrrons
.train 401764 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Overheat|r] |cRXP_WARN_to train|r |T135813:0|t[Overheat]
.use 225691
step
.goto Western Plaguelands,62.80,58.76
>>Kill |cRXP_ENEMY_Cauldron Lord Soulwrath|r. Loot him for his |cRXP_LOOT_Cauldron Key|r
>>|cRXP_WARN_This mob has a 10-second silencing disease|r << !Priest
>>|cRXP_WARN_This mob has a 10-second silencing disease; pre-cast Abolish Disease and keep it up|r << Priest
.complete 5235,1 
.unitscan Cauldron Lord Soulwrath
step
.goto Western Plaguelands,62.5,58.6
>>Click the |cRXP_PICK_Scourge Cauldron|r roiling atop the dais
.turnin 5235 >>Turn in Target: Gahrron's Withering
.accept 5236 >>Accept Return to the Bulwark
step
#label Gahrrons
#requires GahrronsNovice << sod Mage
#completewith next
.subzone 192 >>Travel to Northridge Lumber Camp
step
.goto Western Plaguelands,48.35,32.00
>>Enter the mill. Click the |cRXP_PICK_Northridge Lumber Mill Crate|r by the ramp, then click the |cRXP_PICK_Termite Barrel|r
.turnin 5902 >>Turn in A Plague Upon Thee
.accept 6390 >>Accept A Plague Upon Thee
.skipgossip
step
.goto Western Plaguelands,51.92,28.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave Hearthglen, then talk to |cRXP_FRIENDLY_Kirsta|r
.accept 6025 >>Accept Unfinished Business
.target Kirsta Deepshadow
step
#completewith HearthglenOverlook
.goto Western Plaguelands,45.7,18.8
.subzone 190 >> Travel to Hearthglen
step << Rogue
#season 2
#label ToolboxKey
.train 415918,1
.goto Western Plaguelands,45.0,13.6
>>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Scarlet Workers|r. Loot them for the |cRXP_LOOT_Toolbox Key|r
.collect 227928,1 
.mob Scarlet Worker
step << Rogue
#season 2
.train 415918,1
.goto Western Plaguelands,45.0,14.2
>>Open the |cRXP_PICK_Scarlet Toolbox|r. Loot it for the |cRXP_LOOT_Rusty Crowbar|r
.collect 227932,1 
step << Rogue
#season 2
#sticky
#label SafeboxKey
.goto Western Plaguelands,49.5,18.5
>>Head to the top of the tower in the middle of Hearthglen. Open the |cRXP_PICK_Marked Crate|r there. Loot it for the |T133640:0|t[|cRXP_LOOT_Hidden Bundle|r] and open it to loot a |T134237:0|t[|cRXP_LOOT_Safe Box Key|r]
.collect 227930,1
.train 415918,1
step
#completewith HearthglenOverlook
.subzone 190 >> Travel to Hearthglen
step
#label HearthglenOverlook
.goto Western Plaguelands,47.94,21.43,60,0
.goto Western Plaguelands,43.31,17.34,50,0
.goto Western Plaguelands,45.6,18.6
>>Run up to the top of the tower. Be careful as |cRXP_ENEMY_Scarlet Paladins|r outside can heal
>>|cRXP_WARN_Be mindful that mobs have no Z axis range. They can hit you from the bottom of the tower if they're directly below you|r
>>|cRXP_WARN_Be careful of |cRXP_ENEMY_High Protector Lorik|r (level 61 elite), he patrols around|r
>>|cRXP_WARN_Be careful of the |cRXP_ENEMY_Scarlet Executioner|r that might patrol at the top of the tower|r
.complete 6025,1 
.unitscan High Protector Lorik
.unitscan Scarlet Executioner
step << Rogue
#season 2
#requires SafeboxKey
.goto Western Plaguelands,46.3,14.6
>>Head to the middle floor of the second tower in Hearthglen located on the northern side of the city. Use the |T134237:0|t[|cRXP_LOOT_Safe Box Key|r] to open [|cRXP_PICK_Belavus' Safe Box|r] and loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Crimson Tempest|r]
.collect 227456,1 
.train 415918,1
step << Rogue
#season 2
#sticky
#completewith next
.use 227456
.itemcount 227456,1
.train 415918 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Crimson Tempest|r] |cRXP_WARN_to train|r |T135315:0|t[Crimson Tempest]
.train 415918,1
step
.goto Western Plaguelands,51.92,28.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave Hearthglen, then talk to |cRXP_FRIENDLY_Kirsta|r
.turnin 6025 >>Turn in Unfinished Business
.target Kirsta Deepshadow
step
#completewith next
.subzone 199 >>Travel to Felstone Field
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the 2nd floor
>>|cRXP_WARN_You can talk to her from outside at the back of the building|r
.turnin 5050 >>Turn in Good Luck Charm
.accept 5051 >>Accept Two Halves Become One
.target Janice Felstone
step
#loop
.line Western Plaguelands,36.8,58.6,36.4,56.4,37.4,55.6,38.6,56.2,37.8,57.6,36.8,58.6
.goto Western Plaguelands,36.80,58.60,0
.goto Western Plaguelands,36.80,58.60,50,0
.goto Western Plaguelands,36.40,56.40,50,0
.goto Western Plaguelands,37.40,55.60,50,0
.goto Western Plaguelands,38.60,56.20,50,0
.goto Western Plaguelands,37.80,57.60,50,0
>>Kill the |cRXP_ENEMY_Jabbering Ghoul|r. Loot it for the |cRXP_LOOT_Good Luck Other-Half-Charm|r
.use 12722 >> Use it to create the |cRXP_LOOT_Good Luck Good Luck Charm|r
.complete 5051,1 
.unitscan Jabbering Ghoul
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the 2nd floor
>>|cRXP_WARN_You can talk to her from outside at the back of the building|r
.turnin 5051 >>Turn in Two Halves Become One
.target Janice Felstone
step
#completewith next
.subzone 152 >>Travel back to the Bulwark
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vandis|r
.turnin 5236 >>Turn in Return to the Bulwark
.target Shadow Priestess Vandis
step
.goto Tirisfal Glades,83.30,72.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mickey|r
.turnin 6390 >>Turn in A Plague Upon Thee
.target Mickey Levine
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
.turnin 5238 >>Turn in Mission Accomplished!
.target High Executor Derrington
step
.abandon 4971 >> Abandon A Matter of Time
.isOnQuest 4971
step
.abandon 5781 >> Abandon Of Forgotten Memories
.isOnQuest 5781
step
.abandon 6133 >> Abandon The Ranger Lord's Behest
.isOnQuest 6133
step
.abandon 6024 >> Abandon Hameya's Plea
.isOnQuest 6024
step
.abandon 5168 >> Abandon Heroes of Darrowshire
.isOnQuest 5168
step
.abandon 6025 >> Abandon Unfinished Business
.isOnQuest 6025
step
#ah
#completewith 5TurnIns
.subzone 2268 >>Travel to Light's Hope Chapel
step
#phase 6
#ah
.goto Eastern Plaguelands,80.937,58.515
+|cRXP_WARN_If you bought|r |T133614:0|t[Dark Iron Scraps] |cRXP_WARN_/|r |T134139:0|t[Core of Elements] |cRXP_WARN_/|r |T133571:0|t[Crypt Fiend Parts] |cRXP_WARN_/|r |T133724:0|t[Bone Fragments] |cRXP_WARN_/|r |T136074:0|t[Savage Fronds] |cRXP_WARN_take them out of your mail. If you did not buy any, skip this step|r
.itemcount 22529,<30 
.itemcount 22526,<30 
.itemcount 22525,<30 
.itemcount 22527,<30 
.itemcount 22528,<30 
step
#phase 6
#completewith 5TurnIns
#ah
>>|cRXP_WARN_If you do not have the Reputation required to accept these quests, grind on nearby |cRXP_ENEMY_Undead|r until you are Friendly with the Argent Dawn|r
.reputation 529,friendly
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.200,59.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne|r
.accept 9136 >> Accept Savage Flora
.turnin 9136 >> Turn in Savage Flora
.itemcount 22529,30
.target Rayne
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.505,58.556
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Leopold|r
.accept 9124 >> Accept Cryptstalker Armor Doesn't Make Itself...
.turnin 9124 >> Turn in Cryptstalker Armor Doesn't Make Itself...
.itemcount 22525,30
.target Huntsman Leopold
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.428,58.507
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rohan the Assassin|r
.accept 9126 >> Accept Bonescythe Digs
.turnin 9126 >> Turn in Bonescythe Digs
.itemcount 22526,30
.target Rohan the Assassin
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.523,58.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r
.accept 9128 >> Accept The Elemental Equation
.turnin 9128 >> Turn in The Elemental Equation
.itemcount 22527,30
.target Archmage Angela Dosantos
step
#phase 6
#ah
#optional
#label 5TurnIns
.goto Eastern Plaguelands,81.798,58.079
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korfax|r
.accept 9131 >> Accept Binding the Dreadnaught
.turnin 9131 >> Turn in Binding the Dreadnaught
.itemcount 22528,30
.target Korfax, Champion of the Light
step
.goto Eastern Plaguelands,80.22,57.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Georgia|r
.fly Badlands >>Fly to Badlands
.target Georgia
.zoneskip Badlands
.dungeon BRD
step
#completewith KargathBRDQuests
+You will now begin to collect quests for Blackrock Depths.
>>Blackrock Depths is a very convoluted dungeon. In order to complete all quests in the most efficient way, it is required to leave the dungeon midrun to turn in/accept follow up quests so it may all be completed in 1 run.
>>Try to ensure all party members have the same quests and prequests complete, along with 2-3 hours of playtime.
.dungeon BRD
step
.goto Badlands,3.77,47.47
>>Click the |cRXP_PICK_Wanted Poster|r
.accept 4081 >> Accept KILL ON SIGHT: Dark Iron Dwarves
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thunderheart|r
>>|cRXP_WARN_He may be patrolling around the mountain at Kargath. Find him or wait for him to return|r
.accept 3906 >> Accept Disharmony of Flame
.unitscan Thunderheart
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
.accept 7201 >> Accept The Last Element
.accept 4134 >> Accept Lost Thunderbrew Recipe
.target Shadowmage Vivian Lagrave
.isQuestTurnedIn 3906 
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
.accept 4134 >> Accept Lost Thunderbrew Recipe
.target Shadowmage Vivian Lagrave
.dungeon BRD
step
#label KargathBRDQuests
.goto Badlands,3.03,47.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Theodora Mulvadania|r
.accept 4061 >> Accept The Rise of the Machines
.target Hierophant Theodora Mulvadania
.dungeon BRD
step
#completewith next
+Set your hearthstone to Kargath if you have a mage in your group!
.dungeon BRD
step
.goto Badlands,3.98,44.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorrik|r
.fly Flame Crest >> Fly to Flame Crest
.target Gorrik
.zoneskip Burning Steppes
.dungeon BRD
step
.goto Burning Steppes,65.152,23.911
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
.accept 4123 >> Accept The Heart of the Mountain
.target Maxwort Uberglint
.dungeon BRD
step
.goto Burning Steppes,66.058,21.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yuka Screwspigot|r
.accept 4136 >> Accept Ribbly Screwspigot
.target Yuka Screwspigot
.dungeon BRD
step
#loop
.goto Burning Steppes,62.74,34.92,60,0
.goto Burning Steppes,57.43,36.36,60,0
.goto Burning Steppes,53.03,39.25,60,0
.goto Burning Steppes,59.19,40.17,60,0
.goto Burning Steppes,63.33,43.19,60,0
.goto Burning Steppes,67.37,44.38,60,0
>>Kill |cRXP_ENEMY_War Reavers|r. Loot them for their |cRXP_LOOT_Shards|r
>>|cRXP_WARN_Completing this will unlock an optional BRD quest. It can be skipped|r
.complete 4061,1 
.mob War Reaver
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
>>Select the option: "I present you with proof of my deeds, Cyrus."
.accept 4022 >> Accept A Taste of Flame
.turnin 4022 >> Turn in A Taste of Flame
.itemcount 10575,1 
.target Cyrus Therepentous
.isQuestTurnedIn 3481
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
>>If you are missing the |T134430:0|t[Black Dragonflight Molt] and cannot complete the quest, talk to |cRXP_FRIENDLY_Cyrus|r and select the option: "I do not possess any proof, Cyrus."
>>This will spawn a level 54 Elite Dragon at the entrance of the small cave. Ensure you have party members with you to help kill it, then loot it for the |T134430:0|t[Black Dragonflight Molt]
>>Select the option after: "I present you with proof of my deeds, Cyrus."
.collect 10575,1,4022,1 
.accept 4022 >> Accept A Taste of Flame
.turnin 4022 >> Turn in A Taste of Flame
.target Cyrus Therepentous
.isQuestAvailable 4022
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
.accept 4024 >> Accept A Taste of Flame
.target Cyrus Therepentous
.isQuestTurnedIn 4022
.dungeon BRD
step
#completewith CoreAttunement
.subzone 25 >> Travel to Blackrock Mountain
.dungeon BRD
step
#softcoreserver
#softcore
+Die intentionally in the lava in Blackrock Mountain, ideally near the Molten Core entrance location
>>For this step you must be a |T132331:0|t[Ghost] to talk to |cRXP_FRIENDLY_Franclorn Forgewright|r inside Blackrock Mountain. Resurrect at your corpse once you have the quest
.goto 1415,48.624,64.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Franclorn Forgewright|r
.accept 3801 >> Accept Dark Iron Legacy
.turnin 3801 >> Turn in Dark Iron Legacy
.accept 3802 >> Accept Dark Iron Legacy
.target Franclorn Forgewright
.dungeon BRD
step
#hardcoreserver
.goto 1415,48.656,64.134
.cast 417803 >>|cRXP_WARN_Click the |cRXP_PICK_Brazier of Embersight|r to gain the|r |T136215:0|t[Emberglow Vision] |cRXP_WARN_debuff|r
.dungeon BRD
step
#hardcoreserver
.goto 1415,48.624,64.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Franclorn Forgewright|r
>>|cRXP_WARN_You must have the|r |T136215:0|t[Emberglow Vision] |cRXP_WARN_debuff to see him|r
.accept 3801 >> Accept Dark Iron Legacy
.turnin 3801 >> Turn in Dark Iron Legacy
.accept 3802 >> Accept Dark Iron Legacy
.target Franclorn Forgewright
.dungeon BRD
step
#label CoreAttunement
.goto 1415,48.409,63.815
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lothos Riftwaker|r
.accept 7848 >> Accept Attunement to the Core
.target Lothos Riftwaker
.dungeon BRD
step
>>Kill |cRXP_ENEMY_Overmaster Pyron|r
>>|cRXP_ENEMY_Overmaster Pyron|r |cRXP_WARN_patrols outside of the BRD instance portal|r
.complete 3906,1 
.mob Overmaster Pyron
.isOnQuest 3906
.dungeon BRD
step
#label EnterBRD1
.subzone 1584 >>Enter the Blackrock Depths instance
.dungeon BRD
step
>>Kill |cRXP_ENEMY_Anvilrage Dwarves|r
.complete 4081,1 
.mob +Anvilrage Guardsman
.complete 4081,2 
.mob +Anvilrage Warden
.complete 4081,3 
.mob +Anvilrage Footman
.isOnQuest 4081
.dungeon BRD
step
#completewith next
+Travel back to Kargath
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thunderheart|r
>>|cRXP_WARN_He may be patrolling around the mountain at Kargath. Find him or wait for him to return|r
.turnin 3906 >> Turn in Disharmony of Flame
.unitscan Thunderheart
.isQuestComplete 3906
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thunderheart|r
>>|cRXP_WARN_He may be patrolling around the mountain at Kargath. Find him or wait for him to return|r
.accept 3907 >> Accept Disharmony of Fire
.unitscan Thunderheart
.isQuestTurnedIn 3906
.dungeon BRD
step
.goto Badlands,3.03,47.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Theodora Mulvadania|r
.turnin 4061 >> Turn in The Rise of the Machines
.target Hierophant Theodora Mulvadania
.isQuestComplete 4061
.dungeon BRD
step
.goto Badlands,3.03,47.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Theodora Mulvadania|r
.accept 4062 >> Accept The Rise of the Machines
.target Hierophant Theodora Mulvadania
.isQuestTurnedIn 4061
.dungeon BRD
step
.goto Badlands,5.81,47.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Goretooth|r
.turnin 4081 >> Turn in KILL ON SIGHT: Dark Iron Dwarves
.target Warlord Goretooth
.isQuestComplete 4081
.dungeon BRD
step
.goto Badlands,5.96,47.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galamav the Marksman|r on top of the tower
.accept 3981 >> Accept Commander Gor'shak
.target Galamav the Marksman
.isQuestTurnedIn 3906
.dungeon BRD
step
.goto Badlands,3.97,46.77
>>Click the |cRXP_PICK_Wanted Poster|r
.accept 4082 >> Accept KILL ON SIGHT: High Ranking Dark Iron Officials
.isQuestTurnedIn 4081
.dungeon BRD
step
.goto Badlands,25.95,44.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 4062 >> Turn in The Rise of the Machines
.accept 4063 >> Accept The Rise of the Machines
.target Lotwil Veriatus
.isQuestTurnedIn 4061
.dungeon BRD
step
#label EnterBRD2
.subzone 1584 >>Return to Blackrock Mountain and enter the Blackrock Depths instance
.dungeon BRD
step
#completewith WhatsGoingOn
>>Kill |cRXP_ENEMY_Fire Elementals|r and |cRXP_ENEMY_Golems|r. Loot them for their |cRXP_LOOT_Essence of the Elements|r
>>|cRXP_WARN_This quest does not need to be completed now|r
.complete 7201,1 
.isOnQuest 7201
.dungeon BRD
step
#completewith next
+Complete the Ring of Law boss event, then take the exit up the tunnel and immediately turn right, crossing up over the top of the Ring of Law, making your way to the Vault
.dungeon BRD
step
>>Loot |cRXP_LOOT_The Heart of the Mountain|r inside of the safe wall. It takes 15 seconds for it to respawn
>>There is a trick which allows you to loot it without having to open the safe. View the link below to see how it is done
.complete 4123,1 
.link https://youtu.be/694e1n_aiKY >> Click here to see how to loot the Heart of the Mountain
.isOnQuest 4123
.dungeon BRD
step
>>Kill |cRXP_ENEMY_Fineous Darkvire|r. Loot him for the |cRXP_LOOT_Ironfel|r
.complete 3802,1 
.target Fineous Darkvire
.isOnQuest 3802
.dungeon BRD
step
>>Kill |cRXP_ENEMY_Lord Incendius|r
.complete 3907,1 
.target Lord Incendius
.isOnQuest 3907
.dungeon BRD
step
>>Run back near the location above the Ring of Law
>>Click the |cRXP_PICK_Monument of Franclorn Forgewright|r
.turnin 3802 >> Turn in Dark Iron Legacy
.isQuestComplete 3802
.dungeon BRD
step
#completewith next
>>Kill |cRXP_ENEMY_Anvilrage Dwarves|r
.complete 4082,1 
.mob +Anvilrage Medic
.complete 4082,2 
.mob +Anvilrage Soldier
.complete 4082,3 
.mob +Anvilrage Officer
.isOnQuest 4082
.dungeon BRD
step
>>Head to the Shadowforge Gates at the start of the entrance
>>Kill |cRXP_ENEMY_Bael'Gar|r
.use 11231 >>|cRXP_WARN_Use the|r |T134430:0|t[Altered Black Dragonflight Molt] |cRXP_WARN_on his corpse|r
.complete 4024,1 
.mob Bael'Gar
.isOnQuest 4024
.dungeon BRD
step
>>Finish killing |cRXP_ENEMY_Anvilrage Dwarves|r
.complete 4082,1 
.mob +Anvilrage Medic
.complete 4082,2 
.mob +Anvilrage Soldier
.complete 4082,3 
.mob +Anvilrage Officer
.isOnQuest 4082
.dungeon BRD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Gor'shak|r
>>If your group does not have a Rogue you may need to kill |cRXP_ENEMY_High Interrogator Gerstahn|r for the |cRXP_LOOT_Prison Cell Key|r to open the doors
>>|cRXP_WARN_ENSURE ALL PARTY MEMBERS HAVE AUTO ACCEPT OFF FOR THIS STEP! RestedXP HAS AUTO ACCEPT OFF FOR THIS STEP|r
.turnin 3981 >> Turn in Commander Gor'shak
.accept 3982,1 >> Accept What Is Going On?
.target Commander Gor'shak
.dungeon BRD
step
>>Defend |cRXP_FRIENDLY_Commander Gor'shak|r from the incoming |cRXP_ENEMY_Anvilrage Dwarves|r
.complete 3982,1 
.target Commander Gor'shak
.isQuestTurnedIn 3981
.dungeon BRD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Gor'shak|r
.turnin 3982 >> Turn in What Is Going On?
.accept 4001 >> Accept What Is Going On?
.target Commander Gor'shak
.isQuestTurnedIn 3981
.dungeon BRD
step
#label WhatsGoingOn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kharan Mighthammer|r and listen to his story
>>|cRXP_WARN_He is located accross the hall from|r |cRXP_FRIENDLY_Commander Gor'shak|r
.complete 4001,1 
.target Kharan Mighthammer
.skipgossip
.isQuestTurnedIn 3981
.dungeon BRD
step
#completewith next
+Hearth to Everlook and fly to Orgrimmar. If you have a mage, kindly ask for a portal to Orgrimmar instead
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
.turnin 4001 >> Turn in What Is Going On?
.accept 4002 >> Accept The Eastern Kingdoms
.target Thrall
.isQuestTurnedIn 3982
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r again
.complete 4002,1
.target Thrall
.isQuestTurnedIn 3982
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
.turnin 4002 >> Turn in The Eastern Kingdoms
.accept 4003 >> Accept The Royal Rescue
.target Thrall
.isQuestTurnedIn 3982
.dungeon BRD
step
#completewith EnterBRD3
+Hearth to Kargath if you put your hearthstone there. If you didn't, take the zeppelin to Stranglethorn and fly there instead
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thunderheart|r
>>|cRXP_WARN_He may be patrolling around the mountain at Kargath. Find him or wait for him to return|r
.turnin 3907 >> Turn in Disharmony of Fire
.unitscan Thunderheart
.isQuestComplete 3907
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
.turnin 7201 >> Turn in The Last Element
.target Shadowmage Vivian Lagrave
.isQuestComplete 7201
.dungeon BRD
step
.goto Badlands,5.81,47.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Goretooth|r
.turnin 4082 >> Turn in KILL ON SIGHT: High Ranking Dark Iron Officials
.target Warlord Goretooth
.isQuestComplete 4082
.dungeon BRD
step
#label EnterBRD3
.subzone 1584 >>Enter Blackrock Depths
.dungeon BRD
step
#completewith PrincessSaved
>>Kill |cRXP_ENEMY_Fire Elementals|r and |cRXP_ENEMY_Golems|r. Loot them for their |cRXP_LOOT_Essence of the Elements|r
.complete 7201,1 
.isOnQuest 7201
.dungeon BRD
step
>>Kill |cRXP_ENEMY_Golem Lord Argelmach|r. Loot him for his |cRXP_LOOT_Head|r
>>Kill |cRXP_ENEMY_Golems|r. Loot them for their |cRXP_LOOT_Elemental Cores|r
.complete 4063,1 
.mob +Golem Lord Argelmach
.complete 4063,2 
.mob +Wrath Hammer Construct
.dungeon BRD
step
#completewith next
>>Enter the Bar and go into the small room on the left. Do NOT attack any of the neutral mobs while running through the Bar
>>Click on the 3 |cRXP_PICK_Thunderbrew Lager Kegs|r to destroy them, forcing |cRXP_ENEMY_Hurley Blackbreath|r and his 3 |cRXP_ENEMY_Blackbreath Cronies|r to engage
>>Kill |cRXP_ENEMY_Hurley Blackbreath|r. Loot him for the |cRXP_LOOT_Lost Thunderbrew Recipe|r
.complete 4134,1 
.target Hurley Blackbreath
.isOnQuest 4134
.dungeon BRD
step
>>Enter the Bar and go into the small room on the left. Do NOT attack any of the neutral mobs while running through the Bar
>>Kill |cRXP_ENEMY_Ribbly Screwspigot|r. Loot him for his |cRXP_LOOT_Head|r
>>To engage |cRXP_ENEMY_Ribbly Screwspigot|r you have your tank talk to him, then bring him back along with his |cRXP_ENEMY_Cronies|r into the room with the kegs
.complete 4136,1 
.target Ribbly Screwspigot
.skipgossip
.isOnQuest 4136
.dungeon BRD
step
>>Enter the Bar and go into the small room on the left. Do NOT attack any of the neutral mobs while running through the Bar
>>Click on the 3 |cRXP_PICK_Thunderbrew Lager Kegs|r to destroy them, forcing |cRXP_ENEMY_Hurley Blackbreath|r and his 3 |cRXP_ENEMY_Blackbreath Cronies|r to engage
>>Kill |cRXP_ENEMY_Hurley Blackbreath|r. Loot him for the |cRXP_LOOT_Lost Thunderbrew Recipe|r
.complete 4134,1 
.mob Hurley Blackbreath
.isOnQuest 4134
.dungeon BRD
step
>>Loot the |cRXP_LOOT_Core Fragment|r on the ground outside of the Molten Core instance portal
.complete 7848,1 
.isOnQuest 7848
.dungeon BRD
step
>>Kill |cRXP_ENEMY_Emperor Dagran Thaurissan|r
>>|cRXP_WARN_You must NOT kill |cRXP_ENEMY_Princess Moira Bronzebeard|r in order to complete and turn in this quest|r
>>|cRXP_WARN_Have a party member kite |cRXP_ENEMY_Princess Moira Bronzebeard|r while the rest of the group kills|r |cRXP_ENEMY_Emperor Dagran Thaurissan|r
.complete 4003,1 
.mob Emperor Dagran Thaurissan
.isOnQuest 4003
.dungeon BRD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Moira Bronzebeard|r
.turnin 4003 >> Turn in The Royal Rescue
.accept 4004 >> Accept The Princess Saved?
.target Princess Moira Bronzebeard
.isQuestComplete 4003
.dungeon BRD
step
#label PrincessSaved
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Moira Bronzebeard|r
.accept 4004 >> Accept The Princess Saved?
.target Princess Moira Bronzebeard
.isQuestTurnedIn 4003
.dungeon BRD
step
#completewith KargathTurnins
+Hearth or travel back to Kargath
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
.turnin 4134 >> Turn in Lost Thunderbrew Recipe
.target Shadowmage Vivian Lagrave
.isQuestComplete 4134
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
.turnin 7201 >> Turn in The Last Element
.target Shadowmage Vivian Lagrave
.isQuestComplete 7201
.dungeon BRD
step
#label KargathTurnins
.goto Badlands,25.95,44.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 4063 >> Turn in The Rise of the Machines
.target Lotwil Veriatus
.isQuestTurnedIn 4062
.dungeon BRD
step
.goto Badlands,3.98,44.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorrik|r
.fly Flame Crest >> Fly to Flame Crest
.target Gorrik
.zoneskip Burning Steppes
.dungeon BRD
step
.goto Burning Steppes,65.152,23.911
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
.turnin 4123 >> Turn in The Heart of the Mountain
.target Maxwort Uberglint
.isQuestComplete 4123
.dungeon BRD
step
.goto Burning Steppes,66.058,21.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yuka Screwspigot|r
.turnin 4136 >> Turn in Ribbly Screwspigot
.target Yuka Screwspigot
.isQuestComplete 4136
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
.turnin 4024 >> Turn in A Taste of Flame
.target Cyrus Therepentous
.dungeon BRD
.isQuestComplete 4024
step
.goto 1415,48.409,63.815
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lothos Riftwaker|r
>>|cRXP_WARN_You can either turn this in now or the next time you are in Blackrock Mountain|r
.turnin 7848 >> Turn in Attunement to the Core
.target Lothos Riftwaker
.isQuestComplete 7848
.dungeon BRD
step
#completewith next
+Hearth to Everlook and fly to Orgrimmar. If you have a mage, kindly ask for a portal to Orgrimmar instead
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
.turnin 4004 >> Turn in The Princess Saved?
.target Thrall
.isQuestTurnedIn 4003
.dungeon BRD
]]);
