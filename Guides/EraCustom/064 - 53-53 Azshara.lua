RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 50-60
#season 0,1
#classic
#tbc
#mop
<< Alliance
#era/som
#name 53-53 Azshara
#next 53-54 UnGoro Crater
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankdeposit 11682,11511,11947,11949 >> Deposit the following items into your bank:
>>|T134870:0|t[Eridan's Vial] 
>>|T134249:0|t[Cenarion Beacon] 
>>|T134815:0|t[Filled Cursed Ooze Jar] 
>>|T134857:0|t[Filled Tainted Ooze Jar] 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankwithdraw 10445,10444 >> Withdraw the following items from your bank:
>>|T134537:0|t[Standard Issue Flare Gun] 
>>|T132594:0|t[Drawing Kit] 
.target Fuzruckle
.target Zikkel
step
#optional
.isQuestTurnedIn 2662
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>Take out any |T134863:0|t[Noggenfogger Elixirs] from your bank if you have any. Ideally 15-20 or so. You will use them for a quest later. It's no big deal if you don't have them
.collect 8529,20 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,62.05,39.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
.home >> Set your Hearthstone to Ratchet
.target Innkeeper Wiley
step
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Azshara >> Fly to Azshara
.target Bragok
step << Mage
.dungeon ST
#phase 4-6
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
>>|cRXP_WARN_This will teleport you to the top of the mountain|r
.turnin 3503 >> Turn in Meeting with the Master
.target Sanath Lim-yo
step << Mage
.dungeon ST
#phase 4-6
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.accept 8251 >> Accept Magic Dust
.target Archmage Xylem
step << Mage
.dungeon ST
#phase 4-6
#completewith KJI
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
>>|cRXP_WARN_This will teleport you back down|r
.turnin 3421 >> Turn in Return Trip
.timer 8,Return Trip RP
.target Nyrill
step << Hunter
#phase 4-6
.isOnQuest 8151
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8151 >> Turn in The Hunter's Charm
.target Ogtinc
step << Hunter/Priest
#phase 4-6
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.accept 8153 >> Accept Courser Antlers << Hunter
.accept 8255 >> Accept Of Coursers We Know << Priest
.target Ogtinc
step << Hunter/Priest
#phase 4-6
#completewith Missing
>>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Perfect Courser Antlers|r << Hunter
>>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Healthy Courser Glands|r << Priest
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.mob Mosshoof Courser
step << Rogue
.dungeon ST
#phase 4-6
.goto Azshara,48.42,30.29,70,0
.goto Azshara,44.34,26.09,70,0
.goto Azshara,45.26,21.60
>>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Timbermaw Shamans|r. Loot them for the |cRXP_LOOT_Sealed Azure Bag|r
>>|cRXP_WARN_You may have to tick the [At War] checkbox for [Timbermaw Hold] in your Reputation pane to make them hostile towards you|r
.complete 8234,1 
.mob Timbermaw Shaman
step
#era
#label KJI
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.accept 3601 >> Accept Kim'jael Indeed!
.target Kim'jael
step << Mage
.dungeon ST
#phase 4-6
#completewith next
>>Kill |cRXP_ENEMY_Blood Elf Reclaimers|r and |cRXP_ENEMY_Blood Elf Surveyors|r. Loot them for their |cRXP_LOOT_Glittering Dust|r
.complete 8251,1 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
#era
.goto Azshara,55.97,29.98,30,0
.goto Azshara,56.55,28.36,30,0
.goto Azshara,57.71,31.13,50,0
.goto Azshara,59.17,31.93,40,0
.goto Azshara,58.96,28.23,30,0
.goto Azshara,56.55,28.36
>>Open the |cRXP_PICK_Kim'jael's Equipment|r. Loot it for |cRXP_LOOT_Kim'Jael's Compass|r, |cRXP_LOOT_Kim'Jael's Scope|r, |cRXP_LOOT_Kim'Jael's Stuffed Chicken|r and |cRXP_LOOT_Kim'Jael's Wizzlegoober|r
>>|cRXP_PICK_Kim'jael's Equipment|r |cRXP_WARN_boxes are scattered throughout the |cRXP_ENEMY_Blood Elf|r camp|r
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step << Mage
.dungeon ST
#phase 4-6
.goto Azshara,55.97,29.98,30,0
.goto Azshara,56.55,28.36,30,0
.goto Azshara,57.71,31.13,50,0
.goto Azshara,59.17,31.93,40,0
.goto Azshara,58.96,28.23,30,0
.goto Azshara,56.55,28.36
>>Kill |cRXP_ENEMY_Blood Elf Reclaimers|r and |cRXP_ENEMY_Blood Elf Surveyors|r. Loot them for their |cRXP_LOOT_Glittering Dust|r
.complete 8251,1 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
#era
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.turnin 3601 >> Turn in Kim'jael Indeed!
.accept 5534 >> Accept Kim'jael's "Missing" Equipment
.target Kim'jael
step << Mage/Rogue
.dungeon ST
#phase 4-6
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
>>|cRXP_WARN_This will teleport you to the top of the mountain|r
.turnin 3503 >> Turn in Meeting with the Master
.target Sanath Lim-yo
step << Mage/Rogue
.dungeon ST
#phase 4-6
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.turnin 8251 >> Turn in Magic Dust << Mage
.accept 8252 >> Accept The Siren's Coral << Mage
.turnin 8234 >> Turn in Sealed Azure Bag << Rogue
.accept 8235 >> Accept Encoded Fragments << Rogue
.target Archmage Xylem
step << Rogue
.dungeon ST
#phase 4-6
.isQuestTurnedIn 8234
#completewith next
+|cRXP_WARN_Ensure you have to unticked the [At War] checkbox for [Timbermaw Hold] in your Reputation pane to make them non-hostile towards you again|r
step << Mage/Rogue
.dungeon ST
#phase 4-6
#completewith RuneRubbing
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
>>|cRXP_WARN_This will teleport you back down|r
.turnin 3421 >> Turn in Return Trip
.timer 8,Return Trip RP
.target Nyrill
step << Mage
.dungeon ST
#phase 4-6
#completewith RuneRubbing
>>Kill |cRXP_ENEMY_Spitelash Siren|r. Loot them for their |cRXP_LOOT_Enchanted Corals|r
.complete 8252,1 
.mob Spitelash Siren
step
#era
#completewith RuneRubbing
>>|cRXP_ENEMY_Spitelash Myrmidons|r and |cRXP_ENEMY_Spitelash Siren|r. Loot them for |cRXP_LOOT_Some Rune|r
.complete 5534,1 
.mob Spitelash Myrmidon
.mob Spitelash Siren
step
#label RuneRubbing
>>Click the |cRXP_PICK_Runes|r. Loot them for the |cRXP_LOOT_Rubbings|r
.complete 3449,2 
.goto Azshara,39.57,50.32
.complete 3449,1 
.goto Azshara,36.95,53.18
.complete 3449,3 
.goto Azshara,39.33,55.42
.complete 3449,4 
.goto Azshara,42.34,64.14
step << Mage
.dungeon ST
#phase 4-6
#completewith next
>>Kill |cRXP_ENEMY_Spitelash Sirens|r. Loot them for their |cRXP_LOOT_Enchanted Corals|r
.complete 8252,1 
.mob Spitelash Siren
step
.goto Azshara,43.0,45.6,70,0
.goto Azshara,47.0,41.6,70,0
.goto Azshara,47.4,65.0,70,0
.goto Azshara,46.0,52.8
>>|cRXP_ENEMY_Spitelash Myrmidons|r and |cRXP_ENEMY_Spitelash Sirens|r. Loot them for |cRXP_LOOT_Some Rune|r
.complete 5534,1 
.mob Spitelash Myrmidon
.mob Spitelash Siren
step << Mage
.dungeon ST
#phase 4-6
.goto Azshara,43.0,45.6,70,0
.goto Azshara,47.0,41.6,70,0
.goto Azshara,47.4,65.0,70,0
.goto Azshara,46.0,52.8
>>Kill |cRXP_ENEMY_Spitelash Sirens|r. Loot them for their |cRXP_LOOT_Enchanted Corals|r
.complete 8252,1 
.mob Spitelash Siren
step
#era
#label Missing
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.turnin 5534 >> Turn in Kim'jael's "Missing" Equipment
.target Kim'jael
step << Rogue
.dungeon ST
#phase 4-6
.goto Azshara,66.6,25.6,70,0
.goto Azshara,68.8,29.4,70,0
.goto Azshara,74.2,29.6,70,0
.goto Azshara,76.6,25.0,70,0
.goto Azshara,80.8,24.6,70,0
.goto Azshara,86.6,19.6,70,0
.goto Azshara,74.6,12.6,70,0
.goto Azshara,69.0,27.6
>>Kill |cRXP_ENEMY_Forest Oozes|r. Loot them for their |cRXP_LOOT_Encoded Fragments|r
>>|cRXP_WARN_Cast|r |T133644:0|t[Pick Pocket] |cRXP_WARN_on them before you kill them|r
.complete 8235,1 
.mob Forest Ooze
step << Mage/Rogue
.dungeon ST
#phase 4-6
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
>>|cRXP_WARN_This will teleport you to the top of the mountain|r
.turnin 3503 >> Turn in Meeting with the Master
.target Sanath Lim-yo
step << Mage/Rogue
.dungeon ST
#phase 4-6
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.turnin 8252 >> Turn in The Siren's Coral << Mage
.turnin 8235 >> Turn in Encoded Fragments << Rogue
.target Archmage Xylem
step << Mage/Rogue
.dungeon ST
#phase 4-6
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.accept 8253 >> Accept Destroy Morphaz << Mage
.accept 8236 >> Accept The Azure Key << Rogue
.target Archmage Xylem
step << Mage/Rogue
.dungeon ST
#phase 4-6
#completewith ArcaneRunes
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
>>|cRXP_WARN_This will teleport you back down|r
.turnin 3421 >> Turn in Return Trip
.timer 8,Return Trip RP
.target Nyrill
step << Hunter/Priest
#phase 4-6
.goto Azshara,51.0,30.8,80,0
.goto Azshara,47.0,19.0,80,0
.goto Azshara,57.2,21.2,80,0
.goto Azshara,71.0,29.6,80,0
.goto Azshara,75.8,21.8,80,0
.goto Azshara,57.2,21.2
>>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Perfect Courser Antlers|r << Hunter
>>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Healthy Courser Glands|r << Priest
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.mob Mosshoof Courser
step
#era
#phase 4
.goto Azshara,56.55,28.36
.xp 53.5 >> Grind |cRXP_ENEMY_Blood Elves|r until you are 50% into level 53
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
#era
#phase 1-3
.goto Azshara,56.55,28.36
.xp 54+20000 >> Grind |cRXP_ENEMY_Blood Elves|r until you are 20,000XP into level 54
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step << Hunter/Priest
.dungeon ST
#phase 4-6
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8153 >> Turn in Courser Antlers << Hunter
.accept 8231 >> Accept Wavethrashing << Hunter
.turnin 8255 >> Turn in Of Coursers We Know << Priest
.accept 8256 >> Accept The Ichor of Undeath << Priest
.target Ogtinc
step << Hunter/Priest
#era
#phase 4-6
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8153 >> Turn in Courser Antlers << Hunter
.turnin 8255 >> Turn in Of Coursers We Know << Priest
.target Ogtinc
step << Hunter
.dungeon ST
#phase 4-6
.goto Azshara,88.69,25.88,70,0
.goto Azshara,87.0,9.0
.goto Azshara,54.2,42.2,0
.goto Azshara,59.2,35.6,0
.goto Azshara,71.6,36.8,0
.goto Azshara,90.4,33.6,0
.goto Azshara,88.69,25.88,0
>>Kill |cRXP_ENEMY_Wavethrashers|r. Loot them for their |cRXP_LOOT_Wavethrasher Scales|r
>>|cRXP_WARN_These can be hard to find. Ensure to use|r |T132328:0|t[Track Beasts] |cRXP_WARN_and cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_around the coast to find them faster|r
.complete 8231,1 
.mob Wavethrasher
.mob Young Wavethrasher
.mob Great Wavethrasher
step << Priest
#phase 4-6
.goto Azshara,17.12,69.00,60,0
.goto Azshara,14.22,72.74,60,0
.goto Azshara,17.12,69.00
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r. Loot them for an |cRXP_LOOT_Ichor of Undeath|r
.complete 8256,1 
.mob Highborne Apparition
.mob Highborne Lichling
step << Priest
#phase 4-6
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8256 >> Turn in The Ichor of Undeath
.target Ogtinc
step << Hunter/Priest
.dungeon ST
#phase 4-6
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8231 >> Turn in Wavethrashing << Hunter
.accept 8232 >> Accept The Green Drake << Hunter
.accept 8257 >> Accept Blood of Morphaz << Priest
.target Ogtinc
step
#completewith ArcaneRunes
.goto Azshara,62.817,81.843,0
.goto Azshara,68.415,83.442,0
.goto Azshara,74.022,87.468,0
.goto Azshara,62.817,81.843,60,0
.goto Azshara,68.415,83.442,60,0
.goto Azshara,74.022,87.468,40,0
.goto Azshara,77.800,91.327,60 >> Make your way to southern tip Azshara. Follow the arrow
step
#completewith ArcaneRunes
#optional
.use 8529
.cast 16589 >>|cRXP_WARN_Once you are at the top of the mountain, use any|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_you have to try and get the|r |T135992:0|t[Slow Fall] |cRXP_WARN_buff. This isn't required as you can still drop down safely without them. If you do get the buff mount up and jump toward the small island|r
.itemcount 8529,1 
step
#completewith next
.cast 12283 >>|cRXP_WARN_Use the|r |T134537:0|t[Standard Issue Flare Gun] |cRXP_WARN_while on top of the Landing Pad and wait for |cRXP_FRIENDLY_Pilot Xiggs Fuselighter|r to arrive|r
>>|cRXP_WARN_NOTE: It can take a few minutes for him to arrive! Wait patiently...|r
.use 10444
step
#label ArcaneRunes
.goto Azshara,77.800,91.327
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Xiggs Fuselighter|r
>>|cRXP_WARN_Wait patiently for him to arrive! It can take a few minutes|r
.turnin 3449 >> Turn in Arcane Runes
.accept 3461 >> Accept Return to Tymor
.target Pilot Xiggs Fuselighter
step
.destroy 10444 >> Destroy the |T134537:0|t[Standard Issue Flare Gun]
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
.xp <54,1
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
.xp <54,1
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.trainer >> Train your class spells
.target Loganaar
step
.hs >> Hearth to Ratchet
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.solo
.goto The Barrens,65.827,43.776
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen Waterseer|r
.turnin 5158 >> Turn in Seeking Spiritual Aid
.timer 48,Seeking Spiritual Aid RP
.accept 5159 >> Accept Cleansed Water Returns to Felwood
.target Islen Waterseer
step
.dungeon ST
#phase 4-6 << Paladin/Rogue/Mage/Priest/Hunter
.goto The Barrens,65.827,43.776
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen Waterseer|r
>>|cRXP_WARN_Do not accept the follow up quest yet|r
.turnin 5158 >> Turn in Seeking Spiritual Aid
.target Islen Waterseer
step
.group
.goto The Barrens,65.827,43.776
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen Waterseer|r
.turnin 5158 >> Turn in Seeking Spiritual Aid
.target Islen Waterseer
step
.dungeon !ST
#phase 4-6
.goto The Barrens,65.827,43.776
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen Waterseer|r
.accept 5159 >> Accept Cleansed Water Returns to Felwood
.target Islen Waterseer
step
#era/som
.goto The Barrens,62.448,38.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv Rizzlefix|r
.accept 4502 >> Accept Volcanic Activity
.target Liv Rizzlefix
step
.goto The Barrens,62.500,38.546
>>Open |cRXP_PICK_Marvon's Chest|r. Loot it for the |cRXP_LOOT_Stone Circle|r
.complete 3444,1 
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankwithdraw 11568,11569,11570,11830,11018,11114,11831 >> Withdraw the follwing items from your bank:
>>|T133635:0|t[Torwa's Pouch] 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankdeposit 10445,12906 >> Deposit the following items into your bank:
>>|T134754:0|t[Purified Moonwell Water] 
>>|T132594:0|t[Drawing Kit] 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Tanaris>> Fly to Tanaris
.target Bragok
]]);
