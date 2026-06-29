RXPGuides.RegisterGuide([[
#version 23
#xprate <2.0
#group RestedXP Horde 50-60
#classic
#tbc
#mop
<< Horde
#name 51-52 Searing Gorge/Burning Steppes
#next 52-53 Azshara
step
#optional
.maxlevel 53,SearingSkip
step
#season 2
#completewith LogoutSkipToBadlands
>>|cRXP_WARN_This next segment takes place in Searing Gorge. It's going to be EXTREMELY hard to quest there if you happen to start it during the|r |cRXP_ENEMY_Blackrock Eruption|r |cRXP_WARN_event. It occurs at midnight and then every two hours and lasts for an hour|r
>>|cRXP_WARN_This means that you should only aim to start questing in Searing Gorge every odd hour and in the best case scenario you will only have 1 hour to quest untill the event starts. Consider either waiting for the event to end to begin questing or skipping this zone entirely|r
+Click here to hide this message
step
#xprate <1.5
.goto Swamp of Sorrows,46.10,54.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breyk|r
.fly Badlands >>Fly to Badlands
.target Breyk
.zoneskip Swamp of Sorrows,1
step
#xprate <1.5
#optional
.goto Stranglethorn Vale,26.90,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|ttalk to |cRXP_FRIENDLY_Gringer|r
.fly Badlands >>Fly to Badlands
.target Gringer
.zoneskip Stranglethorn Vale,1
step
#xprate >1.49
#completewith LogoutSkipToBadlands
>>|cRXP_WARN_If you have the Badlands flight path, talk to |cRXP_FRIENDLY_Gringer|r and fly there instead of taking the transporter|r
.fly Badlands >>Fly to Badlands
.target Gringer
.subzoneskip 133
.subzoneskip 721
.zoneskip Badlands
.zoneskip Dun Morogh
step
#xprate >1.49
#season 0,1
.goto Stranglethorn Vale,27.7,77.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scooty|r
.accept 2843 >> Accept Gnomer-gooooone!
.timer 8,Gnomer-gooooone! RP
.turnin 2843 >> Turn in Gnomer-gooooone!
.target Scooty
step
#xprate >1.49
#season 2
.goto Stranglethorn Vale,27.60,77.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scooty|r
.accept 80134 >>Accept Gnomer-gooooone!
.timer 8,Gnomer-gooooone! RP
.turnin 80134 >>Turn in Gnomer-gooooone!
.target Scooty
step
#xprate >1.49
#completewith next
.goto Stranglethorn Vale,27.64,77.54
.goto Eastern Kingdoms,43.30,53.53,30 >>Step onto the transporter
.subzoneskip 133
.subzoneskip 721
step
#xprate >1.49
.goto Eastern Kingdoms,43.27,53.45,15,0
.goto Eastern Kingdoms,43.41,53.50,15,0
.goto Eastern Kingdoms,43.40,53.76,15,0
.goto Eastern Kingdoms,43.60,53.82,10,0
.goto Eastern Kingdoms,43.43,53.83,20,0
.goto Eastern Kingdoms,43.73,53.90,15 >>Exit Gnomeregan
.zoneskip Dun Morogh
.zoneskip Badlands
step
#xprate >1.49
.goto Dun Morogh,77.40,61.75
>>|cRXP_WARN_Travel to the waypoint arrow in Eastern Dun Morogh. Then use Blizzards character unstuck website (fast and more advanced)|r
>>|cRXP_WARN_Alternatively, travel through Loch Modan into Badlands|r
>>|cRXP_WARN_If you prefer the website method then start loading the website already. It usually takes a couple minutes to load. DO NOT SELECT TO MOVE YOUR CHARACTER YET|r
+Click here to complete this step after deciding which path you will take
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Click here for the unstuck link for US servers
.link https://eu.battle.net/support/en/article/32275 >> Click here for the unstuck link for EU servers
.zoneskip Badlands
.zoneskip Searing Gorge
step
#xprate >1.49
#completewith CaughtSG
.goto Loch Modan,25.34,67.27,0
.goto Loch Modan,24.76,70.59,30,0
.goto Loch Modan,25.10,72.98,30,0
.goto Loch Modan,26.11,75.42,30,0
.goto Loch Modan,23.27,81.30,30,0
.goto Loch Modan,22.82,84.81,30,0
.goto Loch Modan,19.59,87.23,30,0
.goto Loch Modan,20.37,91.08,30,0
.goto Loch Modan,22.33,91.55,30,0
.goto Loch Modan,22.87,94.92,30,0
.goto Badlands,5.73,29.78,0
>>Use the shortcut to get to Badlands faster
.zone Badlands >> Run to the Badlands
.link https://www.youtube.com/watch?v=oNFXup-DCM0 >> CLICK HERE for a video tutorial
.zoneskip Badlands
.zoneskip Searing Gorge
step << skip
#xprate >1.49
#completewith next
.goto Dun Morogh,77.93,62.26,20 >>Enter the building in eastern Dun Morogh
step << skip
#xprate >1.49
.goto Dun Morogh,77.95,62.73
.zone Badlands >>Jump on top of the lantern and log out
.link https://www.youtube.com/watch?v=MdXtOxSxaYo >>Click here for a video guide
.zoneskip Badlands
step
#optional
#label LogoutSkipToBadlands
step
.goto Badlands,3.40,48.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thal'trak|r
>>|cRXP_WARN_You may have to wait for|r |cRXP_FRIENDLY_Thal'trak|r |cRXP_WARN_to finish his RP. Just follow him|r
.accept 3821 >>Accept Dreadmaul Rock
.target Thal'trak Proudtusk
step
#completewith next
>>If you don't have 15 Silk Cloth, collect it from |cRXP_ENEMY_Shadowforge dwarves|r in Angor Fortress or the Hammertoe Dig Site
>>|cRXP_WARN_You will need the cloth for an upcoming quest. Badlands mobs have a substantially higher drop rate than Searing Gorge mobs|r
.collect 4306,15,4449,1 
.xp >53,1
step
.goto Badlands,3.62,61.88,50,0
.goto Searing Gorge,72.34,55.47
.zone Searing Gorge >>Travel to Searing Gorge
step
#label CaughtSG
.goto Searing Gorge,65.55,62.15
>>Click on the |cRXP_PICK_Wooden Outhouse|r
>>|cRXP_WARN_Skip this step if you do not have at least 12|r |T132905:0|t[Silk Cloth]
.accept 4449 >>Accept Caught!
.itemcount 4306,12 
step
#loop
.goto Searing Gorge,63.43,60.91,0
.goto Searing Gorge,69.29,33.39,0
.goto Searing Gorge,63.43,60.91,40,0
.goto Searing Gorge,69.29,33.39,40,0
>>Kill |cRXP_ENEMY_Dark Iron Geologists|r
>>|cRXP_WARN_You may need to travel between the northern camp and the southern digsite to complete this quest|r
>>|cRXP_WARN_Skip this quest for now if there is too much competition|r
.complete 4449,1 
.complete 4449,2 
.mob Dark Iron Geologist
.isOnQuest 4449
step
.goto Searing Gorge,39.10,39.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r, then complete his dialogue
.accept 3441 >>Accept Divine Retribution
.complete 3441,1 
.target Velarok Windblade
.skipgossip
step
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r
.turnin 3441 >>Turn in Divine Retribution
.accept 3442 >>Accept The Flawless Flame
.target Velarok Windblade
step
#completewith next
.goto Searing Gorge,32.50,32.48,30,0
.subzone 1446 >>Travel west up the hill toward Thorium Point
step
.goto Searing Gorge,38.58,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel|r
.accept 7723 >>Accept Curse These Fat Fingers
.accept 7724 >>Accept Fiery Menace!
.accept 7727 >>Accept Incendosaurs? Whateverosaur is More Like It
.target Hansel Heavyhands
step
.goto Searing Gorge,37.64,26.47
>>Click on the |cRXP_PICK_Wanted/Missing/Lost & Found|r board
.accept 7728 >>Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
.accept 7729 >>Accept JOB OPPORTUNITY: Culling the Competition
.accept 7701 >>Accept WANTED: Overseer Maltorius
.group
step
.goto Searing Gorge,37.64,26.47
>>Click on the |cRXP_PICK_Wanted/Missing/Lost & Found|r board
.accept 7728 >>Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
.accept 7729 >>Accept JOB OPPORTUNITY: Culling the Competition
.solo
step << !Shaman !Druid
.goto Searing Gorge,38.58,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burninate|r
.accept 7722 >>Accept What the Flux?
.target Master Smith Burninate
.solo
step
.goto Searing Gorge,38.58,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burninate|r
.accept 7722 >>Accept What the Flux?
.target Master Smith Burninate
.group
step
.goto Searing Gorge,34.84,30.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grisha|r
.fp Thorium >>Get the Searing Gorge Flight Path
.target Grisha
.subzoneskip 1446,1
step
#completewith Spiders
>>Kill |cRXP_ENEMY_War Golems|r and |cRXP_ENEMY_Elementals|r. Loot them for their |cRXP_LOOT_Heart of Flame|r and |cRXP_LOOT_Golem Oil|r
>>|cRXP_WARN_Kill any|r |cRXP_ENEMY_Magma Elementals|r |cRXP_WARN_that you see. They can drop both quest items|r
.complete 3442,1 
.complete 3442,2 
.mob Heavy War Golem
.mob Tempered War Golem
.mob Inferno Elemental
.mob Blazing Elemental
.unitscan Magma Elemental
step
#completewith Elementals
.goto Searing Gorge,32.6,55.0,40,0
.goto Searing Gorge,36.2,61.6,40,0
.goto Searing Gorge,44.6,62.6,40,0
.goto Searing Gorge,52.4,57.8,40,0
.goto Searing Gorge,51.4,55.8,40,0
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for a |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,2 
.mob Dark Iron Lookout
step
#completewith Elementals
.goto Searing Gorge,38.0,49.8,40,0
.goto Searing Gorge,40.8,49.8,40,0
.goto Searing Gorge,42.8,51.6,40,0
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for a |cRXP_LOOT_Smithing Tuyere|r
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
#label Spiders
#loop
.goto Searing Gorge,33.00,39.60,0
.goto Searing Gorge,33.00,39.60,60,0
.goto Searing Gorge,28.80,43.80,60,0
.goto Searing Gorge,27.60,52.00,60,0
.goto Searing Gorge,30.80,59.80,60,0
.goto Searing Gorge,26.60,69.40,60,0
.goto Searing Gorge,22.60,74.00,60,0
.goto Searing Gorge,25.00,76.20,60,0
.goto Searing Gorge,29.60,75.80,60,0
.goto Searing Gorge,30.60,71.80,60,0
.goto Searing Gorge,31.80,66.40,60,0
.goto Searing Gorge,30.80,59.80,60,0
.goto Searing Gorge,27.60,52.00,60,0
.goto Searing Gorge,28.80,43.80,60,0
>>Kill |cRXP_ENEMY_Greater Lava Spiders|r along the western/southwestern mountains
.complete 7724,1 
.mob Greater Lava Spider
step
#completewith next
.goto Searing Gorge,43.61,40.78,0
.goto Searing Gorge,32.54,47.19,0
>>Kill |cRXP_ENEMY_Heavy War Golems|r
.complete 7723,1 
.mob Heavy War Golem
step
#label Elementals
#loop
.goto Searing Gorge,44.00,38.20,0
.goto Searing Gorge,44.00,38.20,60,0
.goto Searing Gorge,46.60,37.80,60,0
.goto Searing Gorge,47.00,41.40,60,0
.goto Searing Gorge,43.60,44.60,60,0
.goto Searing Gorge,40.60,44.80,60,0
.goto Searing Gorge,36.80,47.60,60,0
.goto Searing Gorge,33.20,52.20,60,0
.goto Searing Gorge,34.00,59.60,60,0
.goto Searing Gorge,36.60,62.80,60,0
.goto Searing Gorge,32.60,70.60,60,0
.goto Searing Gorge,30.60,64.60,60,0
.goto Searing Gorge,28.40,64.00,60,0
.goto Searing Gorge,25.60,53.60,60,0
.goto Searing Gorge,32.40,53.60,60,0
.goto Searing Gorge,33.80,47.40,60,0
.goto Searing Gorge,35.60,41.20,60,0
.goto Searing Gorge,37.60,44.60,60,0
.goto Searing Gorge,40.60,42.80,60,0
>>Finish killing |cRXP_ENEMY_War Golems|r and |cRXP_ENEMY_Elementals|r. Loot them for their |cRXP_LOOT_Heart of Flame|r and |cRXP_LOOT_Golem Oil|r
>>|cRXP_WARN_Kill any|r |cRXP_ENEMY_Magma Elementals|r |cRXP_WARN_that you see. They can drop both quest items|r
.complete 3442,1 
.complete 3442,2 
.mob Heavy War Golem
.mob Tempered War Golem
.mob Inferno Elemental
.mob Blazing Elemental
.unitscan Magma Elemental
step
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r
.turnin 3442 >>Turn in The Flawless Flame
.accept 3443 >>Accept Forging the Shaft
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
#season 2
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
#completewith next
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
#loop
.goto Searing Gorge,49.68,31.63,0
.goto Searing Gorge,51.36,32.24,50,0
.goto Searing Gorge,50.35,24.24,50,0
.goto Searing Gorge,46.76,20.91,50,0
.goto Searing Gorge,44.04,25.41,50,0
.goto Searing Gorge,48.64,27.42,50,0
.goto Searing Gorge,49.68,31.63,50,0
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
.goto Searing Gorge,47.54,46.89,30 >>Jump down to the platform, and go inside the cave
.train 427076,3 << Warrior sod 
step
.goto Searing Gorge,51.49,36.55,40,0
#loop
.goto Searing Gorge,51.36,32.24,0
.goto Searing Gorge,51.36,32.24,50,0
.goto Searing Gorge,50.35,24.24,50,0
.goto Searing Gorge,46.76,20.91,50,0
.goto Searing Gorge,44.04,25.41,50,0
.goto Searing Gorge,48.64,27.42,50,0
.goto Searing Gorge,49.68,31.63,50,0
>>Descend to the cave's lower level, then kill |cRXP_ENEMY_Incendosaurs|r
.complete 7727,1 
.mob Incendosaur
.train 427076,3 << Warrior sod 
step
#completewith Shanksinnit
.goto Searing Gorge,48.41,41.08,40,0
.goto Searing Gorge,47.94,47.58,40,0
.goto Searing Gorge,49.86,45.97,40,0
.goto Searing Gorge,49.75,45.82,35 >>Exit the cave, then follow the platform up and re-enter the cave on its higher level
.train 427076,3 << Warrior sod 
step
#completewith Shanksinnit
>>Kill |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r
.complete 7729,1 
.mob +Dark Iron Taskmaster
.complete 7729,2 
.mob +Dark Iron Slaver
.train 427076,3 << Warrior sod 
step
.goto Searing Gorge,40.45,35.75
>>Exit the cave again and re-enter through its right side
>>Kill |cRXP_ENEMY_Overseer Maltorius|r. Loot him for his |cRXP_LOOT_Head|r and loot the |cRXP_PICK_Secret Plans: Fiery Flux|r
>>|cRXP_WARN_This is a challenging fight. Make a path for kiting or escape by clearing the entire room before getting the plans|r
.complete 7722,1 
.complete 7701,1 
.unitscan Overseer Maltorius
.isOnQuest 7701
.group 3
.train 427076,3 << Warrior sod 
step << !Shaman !Druid
.goto Searing Gorge,40.45,35.75
>>Exit the cave again and re-enter through its right side. Clear the entire room before looting the |cRXP_PICK_Secret Plans: Fiery Flux|r to make an escape path
>>|cRXP_WARN_Be careful as this quest can be VERY hard and risky. Don't be ashamed to skip it|r << Warrior/Priest/Rogue
>>|cRXP_WARN_Pull all 3 mobs with your pet and go loot the plans|r << Hunter
>>|cRXP_WARN_Pull all 3 mobs with your Voidwalker and go loot the plans|r << Warlock
>>|cRXP_WARN_Build up 25+ rage, then fear all 3 mobs at the same time and click to loot the plans|r << Warrior
>>|cRXP_WARN_Go pull all 3 mobs and use your AOE fear to loot the plans|r << Priest
>>|cRXP_WARN_With improved gouge this is possible. Use Sap on one target, then prepare yourself near the plans. Use blind on a second target, gouge the third target and instantly start looting the plans (5 sec)|r << Rogue
>>|cRXP_WARN_Use Polymorph on Maltorius then frostnova the other 2 elites and blink to the plans and loot them|r << Mage
.complete 7722,1 
.unitscan Overseer Maltorius
.solo
.train 427076,3 << Warrior sod 
step
#loop
.goto Searing Gorge,46.36,53.91,0
.goto Searing Gorge,46.36,53.91,50,0
.goto Searing Gorge,42.75,54.91,50,0
.goto Searing Gorge,41.35,53.44,50,0
.goto Searing Gorge,37.97,49.17,50,0
.goto Searing Gorge,39.32,44.55,50,0
.goto Searing Gorge,37.97,49.17,50,0
.goto Searing Gorge,35.85,42.12,50,0
.goto Searing Gorge,38.16,38.35,50,0
.goto Searing Gorge,39.24,32.84,50,0
.goto Searing Gorge,41.60,26.95,50,0
.goto Searing Gorge,43.59,22.85,50,0
.goto Searing Gorge,43.46,28.38,50,0
.goto Searing Gorge,46.04,25.49,50,0
.goto Searing Gorge,45.47,30.46,50,0
.goto Searing Gorge,43.13,32.50,50,0
.goto Searing Gorge,43.41,35.64,50,0
.goto Searing Gorge,48.27,43.38,50,0
.goto Searing Gorge,49.88,46.10,50,0
.goto Searing Gorge,48.28,50.79,50,0
>>Kill all |cRXP_ENEMY_Dark Iron Dwarves|r and |cRXP_ENEMY_Slave Workers|r. Loot them for their |cRXP_LOOT_Daggers|r
.complete 3443,1 
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
.mob Dark Iron Slaver
.mob Dark Iron Taskmaster
.mob Dark Iron Geologist
.mob Dark Iron Watchman
.mob Dark Iron Steelshifter
.mob Dark Iron Kidnapper
.train 427076,3 << Warrior sod 
step
#label Shanksinnit
#loop
.goto Searing Gorge,46.36,53.91,0
.goto Searing Gorge,46.36,53.91,50,0
.goto Searing Gorge,42.75,54.91,50,0
.goto Searing Gorge,41.35,53.44,50,0
.goto Searing Gorge,37.97,49.17,50,0
.goto Searing Gorge,39.32,44.55,50,0
.goto Searing Gorge,37.97,49.17,50,0
.goto Searing Gorge,35.85,42.12,50,0
.goto Searing Gorge,38.16,38.35,50,0
.goto Searing Gorge,39.24,32.84,50,0
.goto Searing Gorge,41.60,26.95,50,0
.goto Searing Gorge,43.59,22.85,50,0
.goto Searing Gorge,43.46,28.38,50,0
.goto Searing Gorge,46.04,25.49,50,0
.goto Searing Gorge,45.47,30.46,50,0
.goto Searing Gorge,43.13,32.50,50,0
.goto Searing Gorge,43.41,35.64,50,0
.goto Searing Gorge,48.27,43.38,50,0
.goto Searing Gorge,49.88,46.10,50,0
.goto Searing Gorge,48.28,50.79,50,0
>>Keep killing |cRXP_ENEMY_Dark Iron Dwarves|r until you loot the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Do not accept the quest yet! This may cause questlog issues|r
.collect 11818,1,4451 
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
.mob Dark Iron Slaver
.mob Dark Iron Taskmaster
.mob Dark Iron Geologist
.mob Dark Iron Watchman
.mob Dark Iron Steelshifter
.mob Dark Iron Kidnapper
.train 427076,3 << Warrior sod 
step << skip
#completewith next
.goto Searing Gorge,35.45,23.51,50 >>Logout skip out of the cave. There are MANY different spots you can use
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >> Click HERE for reference
.train 427076,3 << Warrior sod 
step
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r
.turnin 3443 >>Turn in Forging the Shaft
.accept 3452 >>Accept The Flame's Casing
.target Velarok Windblade
step
#softcore
.goto Searing Gorge,26.56,35.03,70,0
#loop
.goto Searing Gorge,24.56,39.25,0
.goto Searing Gorge,24.56,39.25,50,0
.goto Searing Gorge,22.50,39.77,50,0
.goto Searing Gorge,22.18,36.45,50,0
.goto Searing Gorge,24.52,34.62,50,0
.goto Searing Gorge,25.02,31.00,50,0
.goto Searing Gorge,25.74,29.39,50,0
.goto Searing Gorge,22.33,26.85,50,0
.goto Searing Gorge,25.73,25.38,50,0
.goto Searing Gorge,27.43,24.93,50,0
.goto Searing Gorge,25.74,29.39,50,0
.goto Searing Gorge,25.02,31.00,50,0
.goto Searing Gorge,24.52,34.62,50,0
>>Kill |cRXP_ENEMY_Twilight mobs|r. Loot them for the |cRXP_LOOT_Symbol of Ragnaros|r
>>|cRXP_WARN_Be careful as this quest can be VERY hard. Be aware that the|r |cRXP_ENEMY_Dark Shamans|r |cRXP_WARN_have a 2000 health heal, and 500 damage instant shock spell. Group up for this quest if needed|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
#hardcore
.goto Searing Gorge,26.56,35.03,70,0
#loop
.goto Searing Gorge,24.56,39.25,0
.goto Searing Gorge,24.56,39.25,50,0
.goto Searing Gorge,22.50,39.77,50,0
.goto Searing Gorge,22.18,36.45,50,0
.goto Searing Gorge,24.52,34.62,50,0
.goto Searing Gorge,25.02,31.00,50,0
.goto Searing Gorge,25.74,29.39,50,0
.goto Searing Gorge,22.33,26.85,50,0
.goto Searing Gorge,25.73,25.38,50,0
.goto Searing Gorge,27.43,24.93,50,0
.goto Searing Gorge,25.74,29.39,50,0
.goto Searing Gorge,25.02,31.00,50,0
.goto Searing Gorge,24.52,34.62,50,0
>>Kill |cRXP_ENEMY_Twilight mobs|r. Loot them for the |cRXP_LOOT_Symbol of Ragnaros|r
>>|cRXP_WARN_Be careful as this quest can be VERY hard. Be aware that the|r |cRXP_ENEMY_Dark Shamans|r |cRXP_WARN_have a 2000 health heal, and 500 damage instant shock spell.|r
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
#optional
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
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r and |cRXP_FRIENDLY_Maltrake|r
.accept 3462 >>Accept Squire Maltrake
.target +Velarok Windblade
.goto Searing Gorge,39.06,38.99
.turnin 3462 >>Turn in Squire Maltrake
.accept 3463 >>Accept Set Them Ablaze!
.target +Squire Maltrake
.goto Searing Gorge,39.17,39.00
.isQuestTurnedIn 3452
step
#completewith OuthouseAndy
.goto Searing Gorge,34.08,53.99,0
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,2 
.mob Dark Iron Lookout
step
#completewith WarGolems
.goto Searing Gorge,40.90,50.31,0
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
#completewith next
.goto Searing Gorge,43.61,40.78,0
.goto Searing Gorge,32.54,47.19,0
>>Kill |cRXP_ENEMY_Heavy War Golems|r
.complete 7723,1 
.mob Heavy War Golem
step
.goto Searing Gorge,33.30,54.47
>>Climb the tower and click the |cRXP_PICK_Sentry Brazier|r
.use 10515 >>|cRXP_WARN_Equip the|r |T135466:0|t[Torch of Retribution] |cRXP_WARN_to be able light it|r
.complete 3463,4 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
step
#label WarGolems
#loop
.goto Searing Gorge,35.16,45.78,0
.goto Searing Gorge,35.16,45.78,70,0
.goto Searing Gorge,40.40,44.42,70,0
.goto Searing Gorge,45.72,41.98,70,0
.goto Searing Gorge,50.66,39.23,70,0
>>Kill |cRXP_ENEMY_Heavy War Golems|r
.complete 7723,1 
.mob Heavy War Golem
step
#loop
.goto Searing Gorge,40.43,49.37,0
.goto Searing Gorge,42.91,51.73,50,0
.goto Searing Gorge,40.43,49.37,50,0
.goto Searing Gorge,37.81,49.66,50,0
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
.goto Searing Gorge,35.66,60.68
>>Climb the tower and click the |cRXP_PICK_Sentry Brazier|r
.use 10515 >>|cRXP_WARN_Equip the|r |T135466:0|t[Torch of Retribution] |cRXP_WARN_to be able light it|r
.complete 3463,1 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
step
.goto Searing Gorge,44.03,60.90
>>Climb the tower and click the |cRXP_PICK_Sentry Brazier|r
.use 10515 >>|cRXP_WARN_Equip the|r |T135466:0|t[Torch of Retribution] |cRXP_WARN_to be able light it|r
.complete 3463,2 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
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
#season 2
#optional
#completewith next
.engrave 9 >> Open your character sheet and engrave your bracers with |T135548:0|t[Focus Fire]
.train 431601,1
step
#loop
.goto Searing Gorge,63.43,60.91,0
.goto Searing Gorge,69.29,33.39,0
.goto Searing Gorge,63.43,60.91,40,0
.goto Searing Gorge,69.29,33.39,40,0
>>Kill |cRXP_ENEMY_Dark Iron Geologists|r
>>|cRXP_WARN_You may need to travel between the northern camp and the southern digsite to complete this quest|r
.complete 4449,1 
.complete 4449,2 
.mob Dark Iron Geologist
.isOnQuest 4449
step
#label OuthouseAndy
.goto Searing Gorge,65.59,62.17
>>Click on the |cRXP_PICK_Wooden Outhouse|r
.turnin 4449 >>Turn in Caught!
.addquestitem 4306,4449
.isQuestComplete 4449
step
.goto Searing Gorge,65.59,62.17
>>Use the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r] to accept the quest
.collect 11818,1,4451 
.accept 4451 >>Accept The Key to Freedom
.use 11818
step
.goto Searing Gorge,65.59,62.17
>>Click on the |cRXP_PICK_Wooden Outhouse|r
.turnin 4451 >>Turn in The Key to Freedom
step
#label OuthouseAndy
.goto Searing Gorge,50.10,54.70
>>Climb the tower and click the |cRXP_PICK_Sentry Brazier|r
.use 10515 >>|cRXP_WARN_Equip the|r |T135466:0|t[Torch of Retribution] |cRXP_WARN_to be able light it|r
>>|cRXP_WARN_Be careful, it's possible to fall through the bridge on the northern side! Make sure you jump onto the bridge when leaving the tower|r << !Tauren
.complete 3463,3 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
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
.goto Searing Gorge,34.08,53.99
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,2 
.mob Dark Iron Lookout
step
#loop
.goto Searing Gorge,46.36,53.91,0
.goto Searing Gorge,46.36,53.91,50,0
.goto Searing Gorge,42.75,54.91,50,0
.goto Searing Gorge,41.35,53.44,50,0
.goto Searing Gorge,37.97,49.17,50,0
.goto Searing Gorge,39.32,44.55,50,0
.goto Searing Gorge,37.97,49.17,50,0
.goto Searing Gorge,35.85,42.12,50,0
.goto Searing Gorge,38.16,38.35,50,0
.goto Searing Gorge,39.24,32.84,50,0
.goto Searing Gorge,41.60,26.95,50,0
.goto Searing Gorge,43.59,22.85,50,0
.goto Searing Gorge,43.46,28.38,50,0
.goto Searing Gorge,46.04,25.49,50,0
.goto Searing Gorge,45.47,30.46,50,0
.goto Searing Gorge,43.13,32.50,50,0
.goto Searing Gorge,43.41,35.64,50,0
.goto Searing Gorge,48.27,43.38,50,0
.goto Searing Gorge,49.88,46.10,50,0
.goto Searing Gorge,48.28,50.79,50,0
>>Kill |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r
.complete 7729,1 
.mob +Dark Iron Taskmaster
.complete 7729,2 
.mob +Dark Iron Slaver
step
#completewith next
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maltrake|r
.turnin 3463 >>Turn in Set Them Ablaze!
.target Squire Maltrake
.isQuestTurnedIn 3452
step
.goto Searing Gorge,38.85,38.99
>>Open the chest on the ground twice, then open the |cRXP_PICK_Hoard of the Black Dragonflight|r and loot the |cRXP_LOOT_Black Dragonflight Molt|r
.accept 3481 >>Accept Trinkets...
.turnin 3481 >>Turn in Trinkets...
.isQuestTurnedIn 3452
step
#optional
#completewith SGEnd
.destroy 10515 >>|cRXP_WARN_You can destroy the|r |T135466:0|t[Torch of Retribution] |cRXP_WARN_as it's no longer needed|r
step
#completewith next
.goto Searing Gorge,32.50,32.48,30,0
.subzone 1446 >>Travel to Thorium Point
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel|r and |cRXP_FRIENDLY_Scrange|r
.turnin 7723 >>Turn in Curse These Fat Fingers
.turnin 7724 >>Turn in Fiery Menace!
.turnin 7727 >>Turn in Incendosaurs? Whateverosaur is More Like It
.target +Hansel Heavyhands
.goto Searing Gorge,38.58,27.80
.turnin 7728 >>Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass
.target +Taskmaster Scrange
.goto Searing Gorge,38.98,27.50
step
.goto Searing Gorge,37.60,26.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lolo|r
.turnin 7701 >>Turn in WANTED: Overseer Maltorius
.target Lookout Captain Lolo Longstriker
.isQuestComplete 7701
.group
step << !Shaman !Druid
.goto Searing Gorge,38.80,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burninate|r
.turnin 7722 >>Turn in What the Flux?
.target Master Smith Burninate
.isQuestComplete 7722
.solo
step
.goto Searing Gorge,38.80,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burninate|r
.turnin 7722 >>Turn in What the Flux?
.target Master Smith Burninate
.isQuestComplete 7722
.group
step
#label SGEnd
.goto Searing Gorge,38.98,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scrange|r
.turnin 7729 >>Turn in JOB OPPORTUNITY: Culling the Competition
.target Taskmaster Scrange
.isQuestComplete 7729
step << skip
#completewith next
.goto Searing Gorge,69.2,71.6,50,0
.goto Searing Gorge,73.2,76.0,50,0
.goto Searing Gorge,73.61,82.93
+Run down to southeast Searing Gorge where |cRXP_ENEMY_Margol the Rager|r is found. Wait for him to patrol all the way out of his cave, then logout skip from the mushrooms at the back << Druid/Shaman
>>Be careful as |cRXP_ENEMY_Margol|r is IMMUNE to nature spells << Shaman/Druid
+Run down to southeast Searing Gorge where Margol the Rager is found. Wait for him to patrol all the way out of his cave (or kill him), then logout skip from the mushrooms at the back << !Druid !Shaman
.link https://www.youtube.com/watch?v=0_g2SY2JKt8 >> Click HERE for reference
step
#completewith next
.goto Searing Gorge,59.80,77.65,0
.goto Searing Gorge,59.80,77.65,50,0
.goto Searing Gorge,59.57,85.06,20,0
.goto Burning Steppes,46.59,21.45
.zone Burning Steppes >>Travel to southeast Searing Gorge to do a skip through the mountains into Burning Steppes
>>|cRXP_WARN_Alternatively you run through Blackrock Mountain|r
.link https://www.youtube.com/watch?v=tFVsNuMvI5c >> Click HERE for reference
step
.goto Burning Steppes,65.69,24.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahgruk|r
.fp Flame Crest >>Get the Burning Steppes Flight Path
.target Vahgruk
.isQuestAvailable 4726,4296,3821
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee|r and |cRXP_FRIENDLY_Maxwort|r
.accept 4726 >>Accept Broodling Essence
.target +Tinkee Steamboil
.goto Burning Steppes,65.24,24.01
.accept 4296 >>Accept Tablet of the Seven
.target +Maxwort Uberglint
.goto Burning Steppes,65.15,23.94
step << Hunter
#season 2
#sticky
#completewith BSTurnins
#label HitnRunOne
>>While questing be on the lookout for an |cRXP_ENEMY_Escaped Core Hound|r he can spawn in multiple spots in the zone, |cRXP_WARN_check your map for waypoints for possible spawn locations|r. If you find him kill him and loot for the rune of |T132171:0|t[|cRXP_FRIENDLY_Hit and Run|r]
>>|cRXP_WARN_Do not go out of your way to look for him|r
>>TIP: You can use |T132172:0|t[|cRXP_FRIENDLY_Eagle Eye|r] to scout for his position
.goto Burning Steppes,84.8,68.0,0
.goto Burning Steppes,83.8,60.0,0
.goto Burning Steppes,88.6,54.8,0
.goto Burning Steppes,61.6,54.4,0
.goto Burning Steppes,39.8,59.4,0
.goto Burning Steppes,31.8,53.0,0
.goto Burning Steppes,24.8,55.6,0
.unitscan Escaped Core Hound
.collect 226252,1 
step << Hunter
#season 2
#sticky
#completewith BSTurnins
#requires HitnRunOne
.train 440563 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of the Guerrilla|r] |cRXP_WARN_to train|r |T132171:0|t[Hit and Run]
.use 226252
step
#completewith HoardO
.goto Burning Steppes,81.8,27.8,0
.goto Burning Steppes,91.4,32.6,0
.goto Burning Steppes,89.8,54.6,0
.goto Burning Steppes,81.8,60.0,0
.use 12284 >> |cRXP_WARN_Use the|r |T133001:0|t[Draco-Incarcinatrix 900] |cRXP_WARN_on |cRXP_ENEMY_Black Broodlings|r, then kill them. Note that taking damage will stop your cast|r
>>Loot the |cRXP_LOOT_Broodling Essence|r on the ground after they die
.complete 4726,1 
.mob Black Broodling
step
.goto Burning Steppes,54.10,40.70
>>Click the |cRXP_PICK_Stone Placard|r in front of the Dwarf statue to create a |cRXP_LOOT_Tablet Transcript|r
.complete 4296,1 
.skipgossip
step
.goto Burning Steppes,77.68,38.23,60,0
.goto Burning Steppes,79.80,45.60
>>Cross the bridge, then go up the mountain. Click on |cRXP_PICK_Sha'ni Proudtusk's Remains|r atop the altar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sha'ni|r
>>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Firegut Brutes'|r |cRXP_WARN_knockback, as it can knock you off the mountain|r
.turnin 3821 >>Turn in Dreadmaul Rock
.target Sha'ni Proudtusk
step << skip
.goto Burning Steppes,77.20,47.50,25,0
.goto Burning Steppes,82.70,38.90,25,0
.goto Burning Steppes,81.60,48.20
>>Kill |cRXP_ENEMY_Krom'Grul|r. Loot him for |cRXP_LOOT_Sha'ni's Nose-Ring|r
>>|cRXP_WARN_He can spawn in any of three caves; you may have to search. Be careful of|r |cRXP_ENEMY_Firegut Brutes'|r |cRXP_WARN_knockback, as it can knock you off the mountain|r|r
.complete 3822,1 
.target Krom'Grul
step
#label HoardO
.goto Burning Steppes,95.09,31.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus|r
.use 10569>>|cRXP_WARN_Open your|r |T132595:0|t[Hoard of the Black Dragonflight] |cRXP_WARN_if you haven't yet|r
.accept 4022 >>Accept A Taste of Flame
.turnin 4022 >>Turn in A Taste of Flame
.target Cyrus Therepentous
.isQuestTurnedIn 3452
.xp <52,1
step
#loop
.goto Burning Steppes,81.80,27.80,0
.goto Burning Steppes,81.80,27.80,60,0
.goto Burning Steppes,85.80,30.20,60,0
.goto Burning Steppes,90.60,29.80,60,0
.goto Burning Steppes,92.00,39.40,60,0
.goto Burning Steppes,90.60,49.40,60,0
.goto Burning Steppes,88.80,56.20,60,0
.goto Burning Steppes,85.20,61.40,60,0
.goto Burning Steppes,82.00,61.60,60,0
.goto Burning Steppes,84.60,56.00,60,0
.goto Burning Steppes,89.40,52.60,60,0
.goto Burning Steppes,88.60,44.80,60,0
.goto Burning Steppes,91.60,38.40,60,0
.goto Burning Steppes,89.80,33.60,60,0
.goto Burning Steppes,86.40,32.00,60,0
.use 12284 >> |cRXP_WARN_Use the|r |T133001:0|t[Draco-Incarcinatrix 900] |cRXP_WARN_on |cRXP_ENEMY_Black Broodlings|r, then kill them. Note that taking damage will stop your cast|r
>>Loot the |cRXP_LOOT_Broodling Essence|r on the ground after they die
.complete 4726,1 
.mob Black Broodling
step << Warrior
#season 2
.train 440492,1
.goto Burning Steppes,40.4,33.6
.aura 459616 >>|cRXP_WARN_Kill |cRXP_ENEMY_Blackrock Orcs|r at Blackrock Stronghold until you receive the|r |T132353:0|t[Rhythm of War] |cRXP_WARN_buff|r
.mob Blackrock Battlemaster
.mob Blackrock Slayer
.mob Blackrock Warlock
.mob Blackrock Sorcerer
step << Warrior
#season 2
.train 440492,1
.goto Burning Steppes,39.549,27.828
>>|cRXP_WARN_Head to the|r |cRXP_PICK_Altar of Reverence|r
>>|cRXP_WARN_Once there, type "/salute" in your chatbox. This will summon a|r |cRXP_ENEMY_Revered Champion|r
>>Kill the |cRXP_ENEMY_Revered Champion|r, then click the |cRXP_PICK_Altar of Reverence|r after
.accept 84124 >> Accept Legacy of Valor
.turnin 84124 >> Turn in Legacy of Valor
.mob Revered Champion
step << Warrior
#season 2
#completewith next
.train 440492 >>|cRXP_WARN_Use the|r |T133747:0|t[|cRXP_LOOT_Rune of the First Warrior|r] |cRXP_WARN_to learn|r |T237516:0|t[Fresh Meat]
.use 226680
.itemcount 226680,1
step
#label BSTurnins
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee|r and |cRXP_FRIENDLY_Maxwort|r
.turnin 4726 >>Turn in Broodling Essence
.accept 4808 >>Accept Felnok Steelspring
.target +Tinkee Steamboil
.goto Burning Steppes,65.24,24.01
.turnin 4296 >>Turn in Tablet of the Seven
.target +Maxwort Uberglint
.goto Burning Steppes,65.15,23.94
step << skip
.goto Burning Steppes,65.70,24.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahgruk|r
.fly Badlands >>Fly to Badlands
.target Vahgruk
.zoneskip Badlands
step << skip
#completewith next
.goto Badlands,2.81,45.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shul'kar|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Shul'kar
step << skip
.goto Badlands,3.40,48.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thal'trak|r
>>|cRXP_WARN_You may have to wait for Thal'trak to finish his RP. Just follow him|r
.turnin 3822 >>Turn in Krom'Grul
.target Thal'trak Proudtusk
step << Shaman
#season 2
.train 416062,1
#loop
.goto Burning Steppes,62.4,9.0,60,0
.goto Burning Steppes,69.4,31.8,60,0
.goto Burning Steppes,61.4,31.8,60,0
.goto Burning Steppes,51.2,35.6,60,0
.goto Burning Steppes,55.6,49.2,60,0
.goto Burning Steppes,54.8,62.2,60,0
.goto Burning Steppes,35.6,61.6,60,0
.goto Burning Steppes,41.6,43.6,60,0
>>Kill |cRXP_ENEMY_Greater Obsidian Elementals|r. Loot them for the |cRXP_LOOT_Molten Obsidian Core|r
.collect 225676,1
.mob Greater Obsidian Elemental
step << Shaman
#season 2
.train 416062,1
.goto Redridge Mountains,44.6,50.0
>>|cRXP_WARN_You now have 10 minutes to jump into water anywhere in the world|r
>>|cRXP_WARN_Travel to Redridge Mountains and jump into the lake|r
>>|cRXP_WARN_Jumping into water will transform the |cRXP_LOOT_Molten Obsidian Core|r into a|r |T237477:0|t[|cRXP_LOOT_Sooty Obsidian Core|r]
.collect 225675,1
step << Shaman
#season 2
.train 416062,1
.use 225675 >> |cRXP_WARN_Open the|r |T237477:0|t[|cRXP_LOOT_Sooty Obsidian Core|r] |cRXP_WARN_to receive the|r |T134419:0|t[|cRXP_LOOT_Rune of Composure|r]
.collect 225740,1
step << Shaman
#season 2
.itemcount 225740,1
.use 225740
.train 416062 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of Composure|r] |cRXP_WARN_to learn|r |T237586:0|t[Coherence]
step
#optional
#label SearingSkip
step << Druid
#completewith DruidTraining8
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9894 >> Train your class spells
.target Loganaar
.xp <52,1
.xp >54,1
step << Druid
#label DruidTraining8
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9904 >> Train your class spells
.target Loganaar
.xp <54,1
step << !Mage
#completewith next
.hs >>Hearth to Crossroads
.use 6948
.bindlocation 380,1
.subzoneskip 380
step << !Mage
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Orgrimmar >>Fly to Orgrimmar
.target Devrak
.zoneskip Orgrimmar
step << Mage
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
step
#optional
.abandon 795 >> Abandon Seal of the Earth
.isOnQuest 795
step
#optional
.abandon 793 >> Abandon Broken Alliances
.isOnQuest 793
step
#optional
.abandon 7701 >> Abandon WANTED: Overseer Maltorius
.isOnQuest 7701
step
#optional
.abandon 7722 >> Abandon What the Flux?
.isOnQuest 7722
step
#optional
.abandon 3452 >> Abandon The Flame's Casing
.isOnQuest 3452
]]);
