RXPGuides.RegisterGuide([[
#version 23
#season 2
#group RestedXP Alliance 50-60
#classic
#tbc
#mop
<< Alliance
#name 51-52 Searing Gorge SoD
#displayname 51-53 Searing Gorge
#next 52-53 Felwood SoD;53-54 UnGoro Crater SoD
step << !Mage
#ah
.zoneskip Searing Gorge
.hs >> Hearthstone to Stormwind
.cooldown item,6948,>0,1
step << !Mage
#ah
.zoneskip Searing Gorge
.goto Blasted Lands,65.6,24.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Constantine|r
.fly Ironforge >> Fly to Ironforge
.target Alexandra Constantine
.cooldown item,6948,<0
.zoneskip Stormwind City
step << !Mage
#ah
.zoneskip Searing Gorge
.goto Stormwind City,66.2,62.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Ironforge >> Fly to Ironforge
.target Dungar Longdrink
.zoneskip Stormwind City,1
step << Mage
#ah
.zoneskip Searing Gorge
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
#ah
.zoneskip Searing Gorge
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step
#ah
.goto Ironforge,18.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
.home Ironforge >> Set your Hearthstone to Ironforge
.target Innkeeper Firebrew
step
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Loch Modan>> Fly to Loch Modan
.target Gryth Thurden
.xp >54,1,SGSkip
step
.goto Loch Modan,31.16,56.48,50 >> Travel south towards the tunnel leading to the Searing Gorge
step
.goto Searing Gorge,79.60,22.1
>>|cRXP_WARN_==PAY ATTENTION TO THE UPCOMING SECTION==|r
>>|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
>>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
>>Cross through the tunnel leading from Loch Modan to Searing Gorge. |cRXP_WARN_Open it using the interact button. You DO NOT need to have they key|r
.zone Searing Gorge >> Run to Searing Gorge
.link https://youtu.be/TFK1Ml8Ce-U >> |cRXP_WARN_Click here for video reference|r
step
.goto Searing Gorge,32.60,32.60,40,0
.goto Searing Gorge,37.934,30.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
.fp Searing Gorge >> Get the Searing Gorge Flight Path
.target Lanie Reed
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
.goto Searing Gorge,33.20,43.58,0
.complete 7724,1 
.goto Searing Gorge,27.56,45.45,0
.mob Heavy War Golem
.mob Greater Lava Spider
step
#completewith FlawlessFlame
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
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
.complete 3442,2 
.mob Inferno Elemental
.mob Blazing Elemental
.mob Magma Elemental
.mob Heavy War Golem
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3442 >> Turn in The Flawless Flame
.accept 3443 >> Accept Forging the Shaft
.target Velarok Windblade
step << Warrior
#season 2
#sticky
#completewith summonIodax
>>|cRXP_WARN_You can unlock a very powerful rune here|r (|T236276:0|t[Taste for Blood]) |cRXP_WARN_but you will need to summon and kill a lvl 50 elite golem with around 12k hp. It's possible to solo however I'd recommend finding a group|r
>>|cRXP_WARN_In order to summon the golem you need to colect 4 parts from the Slag Pits in Searing Gorge. However you don't need to collect them if you can find someone else to summon the boss for you|r
.collect 221258,1 
.collect 221256,1 
.collect 221259,1 
.collect 221257,1 
step << Warrior
#season 2
#label SlagPits
.goto 1427/0,-1247.100,-6906.900,10 >>Enter the Slag Pits through the cave here
.train 427076,1
step << Warrior
#season 2
#sticky
#completewith FieryFlux
.goto Searing Gorge,43.18,35.09,0
.goto Searing Gorge,43.54,31.51,0
.goto Searing Gorge,45.81,25.66,0
.goto Searing Gorge,43.18,35.09,0
>>Kill |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for their |cRXP_LOOT_Thorium Plated Daggers|r and the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Any |cRXP_ENEMY_Dark Iron Dwarf|r may drop |cRXP_LOOT_Thorium Plated Daggers|r and the|r |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Use the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r] to start the quest|r
.complete 7729,1 
.complete 7729,2 
.complete 3443,1 
.collect 11818,1,4451 
.disablecheckbox
.accept 4451 >> Accept The Key to Freedom
.use 11818 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
.train 427076,1
step << Warrior
#season 2
.goto 1427/0,-1257.200,-6764.300
>>Follow the curved path forward after you enter the cave. The |cRXP_LOOT_Right Arm of the Obliterator|r is laying on the ground next to a pile of boxes and barrels
.collect 221256,1 
.train 427076,1
step << Warrior
#season 2
.goto 1427/0,-1161.500,-6756.500,10 >>Run towards and through the gate
.train 427076,1
step << Warrior
#season 2
.goto 1427/0,-1303.200,-6461.500,15 >>Keep going along the path forward. In the big room with a massive golem on the floor take the ramp to the upper level of the Pits
.train 427076,1
step << Warrior
#season 2
.goto 1427/0,-1301.900,-6584.700
>>Loot the |cRXP_LOOT_Right Foot of the Obliterator|r laying on the ground
.collect 221258,1 
.train 427076,1
step << Warrior
#season 2
.isOnQuest 7701
>>Kill |cRXP_ENEMY_Overseer Maltorius|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
.complete 7701,1 
.goto Searing Gorge,40.81,35.77
.mob Overseer Maltorius
.train 427076,1
step << Warrior
#season 2
.isOnQuest 7722
#label FieryFlux
>>Loot the |cRXP_LOOT_Secret Plans: Fiery Flux|r on the bench
>>|cRXP_WARN_Build up 25+ Rage, then cast|r |T132154:0|t[Intimidating Shout] |cRXP_WARN_on all 3 mobs then loot immediately|r << Warrior
>>|cRXP_WARN_After looting, jump down below to the main floor OR the ledge to the right of the plans to evade any mobs you have aggro of|r
>>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
.complete 7722,1 
.goto Searing Gorge,40.447,35.739
.train 427076,1
step << Warrior
.goto Searing Gorge,43.18,35.09,0
.goto Searing Gorge,43.54,31.51,0
.goto Searing Gorge,45.81,25.66,0
.goto Searing Gorge,43.18,35.09,0
>>Kill |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for their |cRXP_LOOT_Thorium Plated Daggers|r and the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Any |cRXP_ENEMY_Dark Iron Dwarf|r may drop |cRXP_LOOT_Thorium Plated Daggers|r and the|r |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Use the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r] to start the quest|r
.complete 7729,1 
.complete 7729,2 
.complete 3443,1 
.collect 11818,1,4451 
.disablecheckbox
.accept 4451 >> Accept The Key to Freedom
.use 11818 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
.train 427076,1
step << Warrior
#season 2
.goto 1427/0,-1387.200,-6722.700,10 >>Head towards the southern end of the bridge
.train 427076,1
step << Warrior
#season 2
.goto 1427/0,-1428.600,-6656.800
>>Jump off the bridge towards the Incendosaur cave. Loot the |cRXP_LOOT_Left Arm of the Obliterator|r from the floor next to the lava pool
.collect 221257,1 
.train 427076,1
step << Warrior
#season 2
#sticky
#completewith next
>>Kill |cRXP_ENEMY_Incendosaurs|r
.complete 7727,1 
.mob Incendosaur
.train 427076,1
step << Warrior
#season 2
.goto 1427/0,-1271.900,-6553.500
>>Go to the very back of the Incendosaur cave. Loot the |cRXP_LOOT_Left Foot of the Obliterator|r from the ground there
.collect 221259,1
.train 427076,1
step << Warrior
#season 2
.goto Searing Gorge,46.66,42.48,40,0
.goto Searing Gorge,51.67,37.02,40,0
.goto Searing Gorge,45.41,21.65
>>Finish off killing the|cRXP_ENEMY_Incendosaurs|r
.complete 7727,1 
.mob Incendosaur
.train 427076,1
step << skip 
#season 2
#completewith next
+Logout skip by jumping on the rock behind the foot and logging out
.link https://youtu.be/oBnDG1AWcxU >> CLICK HERE for reference
.train 427076,1
step
#completewith next
.goto Searing Gorge,47.54,46.89
.subzone 1443 >> Jump down to the platform below and enter the cave. Follow the arrow
.train 427076,3 << Warrior sod 
step
.goto Searing Gorge,46.66,42.48,40,0
.goto Searing Gorge,51.67,37.02,40,0
.goto Searing Gorge,45.41,21.65
>>Kill |cRXP_ENEMY_Incendosaurs|r
.complete 7727,1 
.mob Incendosaur
.train 427076,3 << Warrior sod 
step
.goto Searing Gorge,48.41,41.08,40,0
.goto Searing Gorge,47.94,47.58,40,0
.goto Searing Gorge,49.86,45.97,40,0
.goto Searing Gorge,49.75,45.82,35 >> Run back out of the cave, then follow the platform to the upper entrance of the cave
.isOnQuest 7729,3443,7722,7701
.train 427076,3 << Warrior sod 
step << Hunter SoD/Mage SoD/Warlock SoD
#season 2
#completewith Daggers
#label FireRune
.train 453696,1
.goto 1427/0,-1225.300,-6623.600
>>|cRXP_WARN_Look for a red book on a bench behind|r |cRXP_ENEMY_Overseer Maltorius|r. |cRXP_WARN_Loot it for the rune. Keep in mind you can't do it while in combat|r
>>|cRXP_WARN_If you're higher level you can loot it without pulling|r |cRXP_ENEMY_Overseer Maltorius|r |cRXP_WARN_if you hug the very edge of his balcony, if you can't do it try asking someone to pull him away as you loot the book or kill him and his guards|r
>>|cRXP_WARN_As a Hunter you can pull him away with your pet then cast|r |T132293:0|t[Feign Death] |cRXP_WARN_while next to the book to drop combat and loot it. Make sure you pull the Overseer somewhere oustide of your line of sight or he might put you back in combat|r << Hunter
.collect 226414,1 
step << Hunter SoD/Mage SoD/Warlock SoD
#season 2
.train 453696,1
#completewith Daggers
#requires FireRune
.train 453696 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Fire Specialization|r] to train |T132847:0|t[Fire Specialization]
.itemcount 226414,1
.use 226414
step
#completewith Daggers
.isOnQuest 7701
>>Kill |cRXP_ENEMY_Overseer Maltorius|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Cast|r |T136186:0|t[Rain of Fire] |cRXP_WARN_to split pull him and then cast|r |T136183:0|t[Fear] |cRXP_WARN_on him repeatedly. Ensure you've cleared the area around you first|r << Warlock
>>|cRXP_WARN_Remember to keep|r |T136121:0|t[Shadow Ward] |cRXP_WARN_on yourself as well|r << Warlock
>>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
.complete 7701,1 
.link https://youtu.be/lB2NQ1Ivp28 >> |cRXP_WARN_Click here for video reference|r << Warlock
.goto Searing Gorge,40.81,35.77
.mob Overseer Maltorius
.train 427076,3 << Warrior sod 
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
.train 427076,3 << Warrior sod 
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
.complete 7729,2 
.complete 3443,1 
.collect 11818,1,4451 
.disablecheckbox
.accept 4451 >> Accept The Key to Freedom
.use 11818 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
.train 427076,3 << Warrior sod 
step
.isOnQuest 7701
>>Kill |cRXP_ENEMY_Overseer Maltorius|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Cast|r |T136186:0|t[Rain of Fire] |cRXP_WARN_to split pull him and then cast|r |T136183:0|t[Fear] |cRXP_WARN_on him repeatedly. Ensure you've cleared the area around you first|r << Warlock
>>|cRXP_WARN_Remember to keep|r |T136121:0|t[Shadow Ward] |cRXP_WARN_on yourself as well|r << Warlock
>>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
.complete 7701,1 
.link https://youtu.be/lB2NQ1Ivp28 >> |cRXP_WARN_Click here for video reference|r << Warlock
.goto Searing Gorge,40.81,35.77
.mob Overseer Maltorius
.train 427076,3 << Warrior sod 
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
.train 427076,3 << Warrior sod 
step << skip 
#completewith next
+Logout skip out of the cave. There are MANY different spots you can use
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >> |cRXP_WARN_Click here for video reference|r
.train 427076,3 << Warrior sod 
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
.goto Searing Gorge,39.057,38.990
.turnin 3462 >> Turn in Squire Maltrake
.accept 3463 >> Accept Set Them Ablaze!
.goto Searing Gorge,39.165,38.997
.target Velarok Windblade
.target Squire Maltrake
step
#completewith WarGolem
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
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
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,50.06,54.73,0
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
step << !Warrior !Rogue !Paladin !Warlock
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
step << Warrior/Rogue/Paladin/Warlock
.isQuestTurnedIn 3452
>>Click the |cRXP_PICK_Sentry Braziers|r atop the Towers
>>|cRXP_WARN_You must have the|r |T135466:0|t[Torch of Retribution] |cRXP_WARN_equiped|r
.use 10515 
.complete 3463,4 
.goto Searing Gorge,33.303,54.477
.complete 3463,1 
.goto Searing Gorge,35.667,60.682
step << Warrior/Rogue/Paladin/Warlock
#completewith next
#softcore
.zone 25 >> Travel to the Blackrock Mountain
.train 459313,1
step << Warrior/Rogue/Paladin/Warlock
#softcore
.goto 1415/0,-1232.500,-7612.600,20 >> Travel to the east side of the molten span circle untill you find a doorway leading to a path to the Lower Blackrock Spire
.train 459313,1
step << Warrior/Rogue/Paladin/Warlock
#softcore
.goto 1415/0,-1294.200,-7574.700,5 >> Travel up the path and enter the first side room to your right. |cRXP_WARN_Die inside the room, in range to release next to the red book on the ground|r
.train 459313,1
step << Warrior/Rogue/Paladin/Warlock
.goto 1415/0,-1302.100,-7583.400
>>|cRXP_WARN_Respawn inside a small nook next to the book in a way that won't aggro the mobs standing there. Look for a red book on the ground and loot it for the rune|r
.collect 226694,1 
.train 459313,1
step << Warrior/Rogue/Paladin/Warlock
#softcore
#sticky
#completewith next
.train 459313 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Defense Specialization|r] to train |T134952:0|t[Defense Specialization]
.itemcount 226694,1
.use 226694
.train 459313,1
step << Warrior/Rogue/Paladin/Warlock
.isQuestTurnedIn 3452
>>Click the |cRXP_PICK_Sentry Braziers|r atop the Towers
>>|cRXP_WARN_You must have the|r |T135466:0|t[Torch of Retribution] |cRXP_WARN_equiped|r
.use 10515 
.complete 3463,2 
.goto Searing Gorge,44.030,60.908
.complete 3463,3 
.goto Searing Gorge,50.069,54.737
step << Hunter
#season 2
.goto Searing Gorge,53.29,57.35,5 >>Go to a tree branch located here
.train 431601,1
step << Hunter
#season 2
.goto Searing Gorge,53.10,55.85
>>Carefully walk along the tree branch towards the bird nest. Loot the |cRXP_PICK_Stormcrow Egg|r from it.
.collect 221544,1 
.train 431601,1
step << Hunter
#season 2
.goto 1427/0,-1532.400,-6953.600
>>Walk back along the tree branch. Wait a couple seconds for |cRXP_ENEMY_Enraged Stormcrow|r to spawn. Kill it and loot it for |T134419:0|t[|cRXP_FRIENDLY_Rune of Focused Fire|r]
.collect 221445,1
.mob Enraged Stormcrow
.train 431601,1
step << Hunter
#season 2
.itemcount 221445,1
.use 221445
.train 431601 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Focused Fire|r] |cRXP_WARN_to train|r |T135548:0|t[Focus Fire]
step << Hunter
#optional
#completewith next
#season 2
.engrave 9 >> Open your character sheet and engrave your bracers with |T135548:0|t[Focus Fire]
.train 431601,1
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
step << Warrior
#season 2
#label summonIodax
#optional
#completewith next
.goto 1427/0,-1791.400,-6774.900
.cast 446363 >>Go to the Head of the Obliterator marked on your map. Use the parts you collected to summon |cRXP_ENEMY_Iodax the Obliterator|r.
>>|cRXP_WARN_He is a lvl 50 elite giant with about 12k hp, make sure you have cooldowns ready|r
.unitscan Iodax the Obliterator
.train 427076,1
step << Warrior
#season 2
.goto 1427/0,-1791.400,-6774.900
>>Kill |cRXP_ENEMY_Iodax the Obliterator|r and loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Bloodthirsty|r]
.collect 221267,1 
.unitscan Iodax the Obliterator
.train 427076,1
step << Warrior
#season 2
.train 427076 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Bloodthirsty|r] |cRXP_WARN_to learn|r |T236276:0|t[Taste for Blood]
.use 221267
.train 427076,1
.itemcount 221267,1
step << Warrior
#optional
#completewith next
#season 2
.engrave 1 >> Open your character sheet and engrave your helmet with |T236276:0|t[Taste for Blood]
.train 427076,3
step
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,50.06,54.73,0
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
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
step
.use 10000 >>|cRXP_WARN_Use |T134229:0|t[|cRXP_LOOT_Margol's Horn|r] to start the quest|r
.collect 10000,1,3181,1 
.accept 3181 >> Accept The Horn of the Beast
.mob Margol the Rager
step
#optional
.isOnQuest 3181
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
.fly Loch Modan>> Fly to Loch Modan
.target Lanie Reed
step
#completewith next
#optional
.isOnQuest 3201
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Loch Modan >> Fly to Loch Modan
.target Gryth Thurden
step
#optional
.isOnQuest 3201
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.turnin 3201 >> Turn in At Last!
.target Mountaineer Pebblebitty
step
.abandon 7701 >> Abandon WANTED: Overseer Maltorius
.abandon 7722 >> Abandon What the Flux?
.abandon 3452 >> Abandon The Flame's Casing
step
#optional
.isOnQuest 3181
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.turnin 3181 >> Turn in The Horn of the Beast
.target Mountaineer Pebblebitty
step
#optional
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
step << !Mage
#ssf << !Druid
.hs >> Hearth to Ironforge
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << !Mage !Druid
#ah
.goto Loch Modan,33.8,50.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
.fly Ironforge >> Fly to Ironforge
.zoneskip Ironforge
.target Thorgrum Borrelson
step
#xprate <2.5
#completewith CHam
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Hammerfall|r
>>|cRXP_FRIENDLY_Courier Hammerfall|r |cRXP_WARN_patrols through all of Ironforge|r
.accept 5090 >> Accept A Call to Arms: The Plaguelands!
.unitscan Courier Hammerfall
step
#xprate <2.5
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laris Geardawdle|r
.accept 4512 >> Accept A Little Slime Goes a Long Way
.target Laris Geardawdle
step
#label SGSkip
.isQuestTurnedIn 3181
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
>>|cRXP_FRIENDLY_Curator Thorius|r |cRXP_WARN_patrols through the Hall of Explorers|r
.turnin 3182 >> Turn in Proof of Deed
.accept 3201 >> Accept At Last!
.target Curator Thorius
.isQuestComplete 3182
step
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
>>|cRXP_FRIENDLY_Curator Thorius|r |cRXP_WARN_patrols through the Hall of Explorers|r
.turnin 3368 >> Turn in Suntara Stones
.target Curator Thorius
.isQuestComplete 3368
step
#xprate <2.5
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r
.accept 3448 >> Accept Passing the Burden
.target Historian Karnik
step << Rogue
.goto Ironforge,51.981,14.851
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
.trainer >> Train your class spells
.target Hulfdan Blackbeard
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.trainer >> Train your class spells
.target Briarthorn
step
#era
#phase 4-6
#xprate <2.5
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.accept 8419 >> Accept An Imp's Request
.target Briarthorn
step
#xprate <2.5
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tymor|r
.turnin 3448 >> Turn in Passing the Burden
.accept 3449 >> Accept Arcane Runes
.accept 3450 >> Accept An Easy Pickup
.target Tymor
step << Paladin
.goto Ironforge,23.126,6.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
.trainer >> Train your class spells
.target Brandur Ironhammer
step << Priest
.goto Ironforge,26.970,7.323,15,0
.goto Ironforge,24.337,10.433,5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Rohan|r
.trainer >> Train your class spells
.target High Priest Rohan
step
#xprate <2.5
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankwithdraw 10819,9328,9330 >> Withdraw the following items from your bank:
>>|T132927:0|t[Wildkin Feather] 
>>|T134442:0|t[Super Snapper FX] 
>>|T134300:0|t[Snapshot of Gammerita] 
.target Bailey Stonemantle
step
#sticky
.goto Ironforge,74.082,48.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
>>Do the Gnomeregan cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7807 >> Turn in A Donation of Wool
.turnin 7808 >> Turn in A Donation of Silk
.turnin 7809 >> Turn in A Donation of Mageweave
.turnin 7811 >> Turn in A Donation of Runecloth
.zoneskip Ironforge,1
.target Bubulo Acerbus
step
#sticky
.goto Ironforge,43.224,31.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
>>Do the Ironforge cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7802 >> Turn in A Donation of Wool
.turnin 7803 >> Turn in A Donation of Silk
.turnin 7804 >> Turn in A Donation of Mageweave
.turnin 7805 >> Turn in A Donation of Runecloth
.zoneskip Ironforge,1
.target Mistina Steelshield
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T133021:0|t[Mithril Casing] |cRXP_BUY_from the Auction House. You will need this later for a quest in Un'Goro Crater|r
>>|cRXP_WARN_Skip this step if you can't acquire one|r
.collect 10561,1,4244,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << Warrior
.goto Ironforge,65.905,88.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
.trainer >> Train your class spells
.target Bilban Tosslespanner
step << Hunter
.goto Ironforge,70.889,83.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olmin Burningbeard|r
.trainer >> Train your class spells
.target Olmin Burningbeard
step
#label CHam
#xprate <2.5
.goto Ironforge,70.860,94.570
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiggs Fuselighter|r
.turnin 3450 >> Turn in An Easy Pickup
.accept 3451 >> Accept Signal for Pickup
.turnin 3451 >> Turn in Signal for Pickup
.target Xiggs Fuselighter
step
.abandon 3449 >> Abandon Arcane Runes
>>You can also throw away the |T134537:0|t[Standard Issue Flare Gun] since it's no longer needed
step
#xprate <2.5
.goto Ironforge,33.4,20.0,70,0
.goto Ironforge,25.6,61.6,70,0
.goto Ironforge,64.8,77.8,70,0
.goto Ironforge,70.6,48.0,70,0
.goto Ironforge,65.0,22.6,70,0
.goto Ironforge,50.4,10.4,70,0
.goto Ironforge,32.6,21.0,70,0
.goto Ironforge,40.8,39.4,70,0
.goto Ironforge,51.2,56.6,70,0
.goto Ironforge,55.8,35.2,70,0
.goto Ironforge,33.0,22.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Hammerfall|r
>>|cRXP_FRIENDLY_Courier Hammerfall|r |cRXP_WARN_patrols through all of Ironforge|r
.accept 5090 >> Accept A Call to Arms: The Plaguelands!
.unitscan Courier Hammerfall
step
#completewith next
.isOnQuest 3201
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Loch Modan >> Fly to Loch Modan
.target Gryth Thurden
step
.isOnQuest 3201
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.turnin 3201 >> Turn in At Last!
.target Mountaineer Pebblebitty
step
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum|r
.fly Wetlands>> Fly to Wetlands
.target Thorgrum Borrelson
.zoneskip Ironforge
step
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Wetlands >> Fly to Wetlands
.target Gryth Thurden
.zoneskip Loch Modan
]]);
