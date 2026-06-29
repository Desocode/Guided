RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 50-60
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 50-51 Searing Gorge
#next 51-51 Blasted Lands
step
#completewith next
>>|cRXP_WARN_Make sure you to keep all the|r |T132905:0|t[Silk Cloth] |cRXP_WARN_you find during this segment for a quest later|r
.collect 4306,15,4449,1
step
.group << Rogue/Paladin/Druid
.goto Searing Gorge,38.804,28.510
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Smith Burninate|r
.accept 7722 >> Accept What the Flux?
.target Master Smith Burninate
step
.goto Searing Gorge,38.582,27.807
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
.accept 7723 >> Accept Curse These Fat Fingers
.accept 7724 >> Accept Fiery Menace!
.accept 7727 >> Accept Incendosaurs? Whateverosaur is More Like It
.target Hansel Heavyhands
step
.solo
.goto Searing Gorge,37.645,26.481
>>Click the |cRXP_PICK_Wanted Board|r
.accept 7728 >> Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
.accept 7729 >> Accept JOB OPPORTUNITY: Culling the Competition
.accept 7701 >> Accept WANTED: Overseer Maltorius << Warlock
step
.group << !Warlock
.goto Searing Gorge,37.645,26.481
>>Click the |cRXP_PICK_Wanted Board|r
.accept 7728 >> Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
.accept 7729 >> Accept JOB OPPORTUNITY: Culling the Competition
.accept 7701 >> Accept WANTED: Overseer Maltorius
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3441 >> Accept Divine Retribution
.target Velarok Windblade
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.skipgossip
.complete 3441,1 
.target Velarok Windblade
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3441 >> Turn in Divine Retribution
.accept 3442 >> Accept The Flawless Flame
.target Velarok Windblade
step
#completewith FlawlessFlame
>>Kill |cRXP_ENEMY_Heavy War Golems|r and |cRXP_ENEMY_Greater Lava Spiders|r
.complete 7723,1 
.mob +Heavy War Golem
.goto Searing Gorge,33.20,43.58,0
.complete 7724,1 
.mob +Greater Lava Spider
.goto Searing Gorge,27.56,45.45,0
step
#completewith FlawlessFlame
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.mob +Dark Iron Steamsmith
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.mob +Dark Iron Lookout
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
step
#label FlawlessFlame
.goto Searing Gorge,43.83,35.08,0
.goto Searing Gorge,24.18,54.52,0
.goto Searing Gorge,28.54,64.55,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,30.10,76.16,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,30.10,76.16
>>Kill |cRXP_ENEMY_Inferno Elementals|r, |cRXP_ENEMY_Blazing Elementals|r and |cRXP_ENEMY_Magma Elementals|r. Loot them for their |cRXP_LOOT_Heart of Flames|r
>>Kill |cRXP_ENEMY_Heavy War Golems|r and |cRXP_ENEMY_Magma Elementals|r. Loot them for their |cRXP_LOOT_Golem Oils|r
>>|cRXP_WARN_Prioritize these two objectives|r
.complete 3442,1 
.mob +Inferno Elemental
.mob +Blazing Elemental
.mob +Magma Elemental
.complete 3442,2 
.mob +Magma Elemental
.mob +Heavy War Golem
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3442 >> Turn in The Flawless Flame
.accept 3443 >> Accept Forging the Shaft
.target Velarok Windblade
step
#completewith next
.goto Searing Gorge,47.54,46.89
.subzone 1443 >> Jump down to the platform below and enter the cave. Follow the arrow
step
.goto Searing Gorge,46.66,42.48,40,0
.goto Searing Gorge,51.67,37.02,40,0
.goto Searing Gorge,45.41,21.65
>>Kill |cRXP_ENEMY_Incendosaurs|r
.complete 7727,1 
.mob Incendosaur
step
.goto Searing Gorge,48.41,41.08,40,0
.goto Searing Gorge,47.94,47.58,40,0
.goto Searing Gorge,49.86,45.97,40,0
.goto Searing Gorge,49.75,45.82,35 >> Run back out of the cave, then follow the platform to the upper entrance of the cave
.isOnQuest 7729,3443,7722,7701
step
#completewith Daggers
.isOnQuest 7701
>>Kill |cRXP_ENEMY_Overseer Maltorius|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Cast|r |T136186:0|t[Rain of Fire] |cRXP_WARN_to split pull him and then cast|r |T136183:0|t[Fear] |cRXP_WARN_on him repeatedly. Ensure you've cleared the area around you first|r << Warlock
>>|cRXP_WARN_Remember to keep|r |T136121:0|t[Shadow Ward] |cRXP_WARN_on yourself as well|r << Warlock
>>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
.complete 7701,1 
.link https://youtu.be/k1eJ_LYUeIA >> |cRXP_WARN_Click here for video reference|r << Warlock
.goto Searing Gorge,40.81,35.77
.mob Overseer Maltorius
step
#completewith Daggers
.isOnQuest 7722
>>Loot the |cRXP_LOOT_Secret Plans: Fiery Flux|r on the bench
>>|cRXP_WARN_Pull all 3 mobs with your Pet then loot immediately|r << Hunter
>>|cRXP_WARN_Pull all 3 mobs then cast|r |T136184:0|t[Psychic Scream] |cRXP_WARN_and loot immediately|r << Priest
>>|cRXP_WARN_Pull all 3 with a Voidwalker or Succubus (Seduce one of if using Succubus). You can also use|r |T136183:0|t[Fear] |cRXP_WARN_or|r |T136147:0|t[Howl of Terror] |cRXP_WARN_then loot immediately|r << Warlock
>>|cRXP_WARN_Build up 25+ Rage, then cast|r |T132154:0|t[Intimidating Shout] |cRXP_WARN_on all 3 mobs then loot immediately|r << Warrior
>>|cRXP_WARN_Only attempt this solo if you have 3/3 in|r |T132155:0|t[Improved Gouge] << Rogue
>>|cRXP_WARN_Cast|r |T132310:0|t[Sap] |cRXP_WARN_on one guard, then position your self right next to the|r |cRXP_LOOT_Secret Plans: Fiery Flux|r|cRXP_WARN_.|r |cRXP_WARN_Cast|r |T136175:0|t[Blind] |cRXP_WARN_on another then|r |T132155:0|t[Gouge] |cRXP_WARN_on the last one, ensuring you loot immediately after using|r |T132155:0|t[Gouge] << Rogue
>>|cRXP_WARN_Cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on |cRXP_ENEMY_Overseer Maltorius|r then|r |T135848:0|t[Frost Nova] |cRXP_WARN_the other 2 elites then immediately|r |T135736:0|t[Blink] |cRXP_WARN_in and loot|r << Mage
>>|cRXP_WARN_After looting, jump down below to the main floor OR the ledge to the right of the plans to evade any mobs you have aggro of|r
>>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
.complete 7722,1 
.goto Searing Gorge,40.447,35.739
step
#label Daggers
.goto Searing Gorge,43.18,35.09,60,0
.goto Searing Gorge,43.54,31.51,60,0
.goto Searing Gorge,45.81,25.66,60,0
.goto Searing Gorge,43.18,35.09
>>Kill |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for their |cRXP_LOOT_Thorium Plated Daggers|r and the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Any |cRXP_ENEMY_Dark Iron Dwarf|r may drop |cRXP_LOOT_Thorium Plated Daggers|r and the|r |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Use the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r] to start the quest|r
.complete 7729,1 
.mob +Dark Iron Taskmaster
.complete 7729,2 
.mob +Dark Iron Slaver
.complete 3443,1 
.mob +Dark Iron Taskmaster
.mob +Dark Iron Slaver
.collect 11818,1,4451 
.disablecheckbox
.accept 4451 >> Accept The Key to Freedom
.use 11818 
step
.isOnQuest 7701
>>Kill |cRXP_ENEMY_Overseer Maltorius|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Cast|r |T136186:0|t[Rain of Fire] |cRXP_WARN_to split pull him and then cast|r |T136183:0|t[Fear] |cRXP_WARN_on him repeatedly. Ensure you've cleared the area around you first|r << Warlock
>>|cRXP_WARN_Remember to keep|r |T136121:0|t[Shadow Ward] |cRXP_WARN_on yourself as well|r << Warlock
>>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
.complete 7701,1 
.link https://youtu.be/k1eJ_LYUeIA >> |cRXP_WARN_Click here for video reference|r << Warlock
.goto Searing Gorge,40.81,35.77
.mob Overseer Maltorius
step
.isOnQuest 7722
>>Loot the |cRXP_LOOT_Secret Plans: Fiery Flux|r on the bench
>>|cRXP_WARN_Pull all 3 mobs with your Pet then loot immediately|r << Hunter
>>|cRXP_WARN_Pull all 3 mobs then cast|r |T136184:0|t[Psychic Scream] |cRXP_WARN_and loot immediately|r << Priest
>>|cRXP_WARN_Pull all 3 with a Voidwalker or Succubus (Seduce one of if using Succubus). You can also use|r |T136183:0|t[Fear] |cRXP_WARN_or|r |T136147:0|t[Howl of Terror] |cRXP_WARN_then loot immediately|r << Warlock
>>|cRXP_WARN_Build up 25+ Rage, then cast|r |T132154:0|t[Intimidating Shout] |cRXP_WARN_on all 3 mobs then loot immediately|r << Warrior
>>|cRXP_WARN_Only attempt this solo if you have 3/3 in|r |T132155:0|t[Improved Gouge] << Rogue
>>|cRXP_WARN_Cast|r |T132310:0|t[Sap] |cRXP_WARN_on one guard, then position your self right next to the|r |cRXP_LOOT_Secret Plans: Fiery Flux|r|cRXP_WARN_.|r |cRXP_WARN_Cast|r |T136175:0|t[Blind] |cRXP_WARN_on another then|r |T132155:0|t[Gouge] |cRXP_WARN_on the last one, ensuring you loot immediately after using|r |T132155:0|t[Gouge] << Rogue
>>|cRXP_WARN_Cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on |cRXP_ENEMY_Overseer Maltorius|r then|r |T135848:0|t[Frost Nova] |cRXP_WARN_the other 2 elites then immediately|r |T135736:0|t[Blink] |cRXP_WARN_in and loot|r << Mage
>>|cRXP_WARN_After looting, jump down below to the main floor OR the ledge to the right of the plans to evade any mobs you have aggro of|r
>>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
.complete 7722,1 
.goto Searing Gorge,40.447,35.739
step << skip 
#completewith next
+Logout skip out of the cave. There are MANY different spots you can use
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >> |cRXP_WARN_Click here for video reference|r
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3443 >> Turn in Forging the Shaft
.accept 3452 >> Accept The Flame's Casing
.target Velarok Windblade
step
.goto Searing Gorge,22.98,37.82,70,0
.goto Searing Gorge,27.10,24.40,60,0
.goto Searing Gorge,22.98,37.82
>>Kill |cRXP_ENEMY_Twilight Dark Shamans|r, |cRXP_ENEMY_Twilight Fire Guards|r, |cRXP_ENEMY_Twilight Geomancers|r and |cRXP_ENEMY_Twilight Idolaters|r. Loot them for the |cRXP_LOOT_Symbol of Ragnaros|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
.isQuestComplete 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3452 >> Turn in The Flame's Casing
.accept 3453 >> Accept The Torch of Retribution
.timer 28,The Torch of Retribution RP
.turnin 3453 >> Turn in The Torch of Retribution
.accept 3454 >> Accept The Torch of Retribution
.target Velarok Windblade
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3453 >> Accept The Torch of Retribution
.timer 28,The Torch of Retribution RP
.turnin 3453 >> Turn in The Torch of Retribution
.accept 3454 >> Accept The Torch of Retribution
.target Velarok Windblade
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.055,39.067
>>Click on the |cRXP_PICK_Torch of Retribution|r
.turnin 3454 >> Turn in The Torch of Retribution
step
.isQuestTurnedIn 3452
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r and |cRXP_FRIENDLY_Squire Maltrake|r
.accept 3462 >> Accept Squire Maltrake
.target +Velarok Windblade
.goto Searing Gorge,39.057,38.990
.turnin 3462 >> Turn in Squire Maltrake
.accept 3463 >> Accept Set Them Ablaze!
.target +Squire Maltrake
.goto Searing Gorge,39.165,38.997
step
#completewith WarGolem
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.mob +Dark Iron Steamsmith
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.mob +Dark Iron Lookout
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
step
#completewith next
>>Kill |cRXP_ENEMY_Heavy War Golems|r
.complete 7723,1 
.goto Searing Gorge,33.20,43.58,0
.mob Heavy War Golem
step
>>Kill |cRXP_ENEMY_Greater Lava Spiders|r
.complete 7724,1 
.goto Searing Gorge,32.05,42.00,70,0
.goto Searing Gorge,27.4,45.6,70,0
.goto Searing Gorge,28.4,56.6,70,0
.goto Searing Gorge,30.90,66.71,70,0
.goto Searing Gorge,22.86,76.47,70,0
.goto Searing Gorge,27.56,45.45
.mob Greater Lava Spider
step
#label WarGolem
>>Kill |cRXP_ENEMY_Heavy War Golems|r
.complete 7723,1 
.goto Searing Gorge,50.6,39.6,70,0
.goto Searing Gorge,41.6,41.6,70,0
.goto Searing Gorge,32.8,45.8,70,0
.goto Searing Gorge,32.4,53.6,70,0
.goto Searing Gorge,35.6,40.4,70,0
.goto Searing Gorge,41.6,41.6,70,0
.goto Searing Gorge,33.20,43.58
.mob Heavy War Golem
step
#completewith next
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.mob +Dark Iron Steamsmith
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.mob +Dark Iron Lookout
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,50.06,54.73,0
step
.isQuestTurnedIn 3452
>>Click the |cRXP_PICK_Sentry Braziers|r atop the Towers
>>|cRXP_WARN_You must have the|r |T135466:0|t[Torch of Retribution] |cRXP_WARN_equiped|r
.use 10515 
.complete 3463,4 
.goto Searing Gorge,33.303,54.477
.complete 3463,1 
.goto Searing Gorge,35.667,60.682
.complete 3463,2 
.goto Searing Gorge,44.030,60.908
.complete 3463,3 
.goto Searing Gorge,50.069,54.737
step
#optional
.goto Searing Gorge,65.592,62.172
>>Click on the |cRXP_PICK_Wooden Outhouse|r
.accept 4451 >> Accept The Key to Freedom
.turnin 4451 >> Turn in The Key to Freedom
.use 11818 
.itemcount 11818,1 
step
.goto Searing Gorge,65.592,62.172
>>Click on the |cRXP_PICK_Wooden Outhouse|r
.accept 4449 >> Accept Caught!
step
#sticky
#label DIG
.goto Searing Gorge,63.1,60.9
>>Kill |cRXP_ENEMY_Dark Iron Geologists|r. Loot them for their |cRXP_LOOT_Silk Cloth|r if you still need more
>>|cRXP_WARN_You most likely will have to come back for more |cRXP_ENEMY_Dark Iron Geologists|r later|r
.complete 4449,1 
.collect 4306,15 
.mob Dark Iron Geologist
step
.goto Searing Gorge,71.92,73.79,50,0
.goto Searing Gorge,72.64,79.74
>>Kill |cRXP_ENEMY_Margol the Rager|r. Loot it for |T134229:0|t[|cRXP_LOOT_Margol's Horn|r]
>>|cRXP_WARN_Do not Accept the quest for this yet|r
.collect 10000,1,3181,1 
.mob Margol the Rager
step
#requires DIG
.goto Searing Gorge,65.592,62.172
>>Click on the |cRXP_PICK_Wooden Outhouse|r
.turnin 4449 >> Turn in Caught!
step
.goto Searing Gorge,63.879,60.978
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorius Stonetender|r
>>|cRXP_WARN_This will start an escort. Clear the surrounding area of the pit before accepting this quest|r
.accept 3367 >> Accept Suntara Stones
.target Dorius Stonetender
step
#sticky
#completewith EarlyHorn
#label EarlyHornAccept
.accept 3181 >> Use the [|cRXP_LOOT_Margol's Horn|r] to accept The Horn of the Beast
.itemcount 10000,1 
.use 10000
step
.goto Searing Gorge,74.448,19.287
>>Escort |cRXP_FRIENDLY_Dorius|r to the Loch Modan Pass Gate
.complete 3367,1 
.target Dorius Stonetender
step
.goto Searing Gorge,74.448,19.287
>>Click the |cRXP_PICK_Singed Letter|r on the ground
>>|cRXP_WARN_If the |cRXP_PICK_Singed Letter|r has not spawned, you will need to abandon Suntara Stones and complete the escort again. This is a bug with WoW Classic|r
.turnin 3367 >> Turn in Suntara Stones
.accept 3368 >> Accept Suntara Stones
step
#requires EarlyHornAccept
#label EarlyHorn
.isOnQuest 3181
>>|cRXP_WARN_==PAY ATTENTION TO THE UPCOMING SECTION==|r
>>|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
>>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
>>Cross through the tunnel leading from Searing Gorge to Loch Modan. |cRXP_WARN_Open it using the interact button. You DO NOT need to have they key|r
.goto Loch Modan,18.2,83.8
.zone Loch Modan >> Travel to Loch Modan
.link https://youtu.be/TFK1Ml8Ce-U >> |cRXP_WARN_Click here for video reference|r
step
.isOnQuest 3181
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.turnin 3181 >> Turn in The Horn of the Beast
.target Mountaineer Pebblebitty
step
.isQuestTurnedIn 3181
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.accept 3182 >> Accept Proof of Deed
.target Mountaineer Pebblebitty
step
.isOnQuest 3182
.goto Loch Modan,33.8,50.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
.fly Searing Gorge >> Take the flight path to Searing Gorge
step
.isQuestComplete 7701
.goto Searing Gorge,37.737,26.561
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lookout Captain Lolo Longstriker|r
.turnin 7701 >>Turn in WANTED: Overseer Maltorius
.target Lookout Captain Lolo Longstriker
step
.goto Searing Gorge,38.582,27.807
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
.turnin 7723 >> Turn in Curse These Fat Fingers
.turnin 7724 >> Turn in Fiery Menace!
.turnin 7727 >> Turn in Incendosaurs? Whateverosaur is More Like It
.target Hansel Heavyhands
step
.isQuestComplete 7722
.goto Searing Gorge,38.804,28.510
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Smith Burninate|r
.turnin 7722 >> Turn in What the Flux?
.target Master Smith Burninate
step
#label TPturnins
.goto Searing Gorge,38.973,27.505
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Scrange|r
.turnin 7729 >> Turn in JOB OPPORTUNITY: Culling the Competition
.turnin 7728 >> Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass
.target Taskmaster Scrange
.isQuestComplete 7728
step
.goto Searing Gorge,38.973,27.505
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Scrange|r
.turnin 7729 >> Turn in JOB OPPORTUNITY: Culling the Competition
.target Taskmaster Scrange
.isQuestComplete 7729
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.165,38.997
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Maltrake|r
.turnin 3463 >> Turn in Set Them Ablaze!
.target Squire Maltrake
step
.isQuestTurnedIn 3452
.goto Searing Gorge,38.847,38.985
>>Click the |cRXP_PICK_Hoard of the Black Dragonflight|r on the ground
.accept 3481 >> Accept Trinkets...
.turnin 3481 >> Turn in Trinkets...
step
.isQuestTurnedIn 3452
#completewith TPturnins
.use 10569 >>|cRXP_WARN_Open the|r |T132595:0|t[Hoard of the Black Dragonflight]
+|cRXP_WARN_Ensure you keep the|r |T134430:0|t[Black Dragonflight Molt]|cRXP_WARN_. Do not destroy it. You will need it later|r
step
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.mob +Dark Iron Steamsmith
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.mob +Dark Iron Lookout
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,50.06,54.73,0
step
.goto Searing Gorge,38.973,27.505
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Scrange|r
.turnin 7728 >> Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass
.target Taskmaster Scrange
.isQuestComplete 7728
step
#completewith next
.use 10000 >>|cRXP_WARN_Use |T134229:0|t[|cRXP_LOOT_Margol's Horn|r] to start the quest|r
.collect 10000,1,3181,1 
.accept 3181 >> Accept The Horn of the Beast
.mob Margol the Rager
step
.isOnQuest 3181
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
.fly Loch Modan>> Fly to Loch Modan
.target Lanie Reed
step
.abandon 7701 >> Abandon WANTED: Overseer Maltorius
.abandon 7722 >> Abandon What the Flux?
.abandon 3452 >> Abandon The Flame's Casing
step
.isOnQuest 3181
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.turnin 3181 >> Turn in The Horn of the Beast
.target Mountaineer Pebblebitty
step
.isQuestTurnedIn 3181
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.accept 3182 >> Accept Proof of Deed
.target Mountaineer Pebblebitty
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << Mage
.goto Ironforge,31.33,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginny Longberry|r
.vendor >> |cRXP_BUY_Buy 10|r |T134419:0|t[Rune of Teleportations] |cRXP_BUY_from her|r
.collect 17031,10 
.target Ginny Longberry
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <52,1
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <52,1
step
.hs >> Hearth to Stormwind
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Stormwind City,44.274,73.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clavicus Knavingham|r up stairs
>>Do the Stormwind cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7791 >> Turn in A Donation of Wool
.turnin 7793 >> Turn in A Donation of Silk
.turnin 7794 >> Turn in A Donation of Mageweave
.turnin 7795 >> Turn in A Donation of Runecloth
.target Clavicus Knavingham
]]);
