RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 50-60
#season 0,1
<< Alliance
#classic
#tbc
#mop
#era/som
#name 52-53 Feralas
#next 53-53 Azshara
step << Hunter
#completewith start
.goto Feralas,31.466,43.145
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antarius|r
.stable >> Withdraw your pet from the Stable
.target Antarius
step
.goto Feralas,30.632,42.706
.target Pratt McGrubben
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
>>|cRXP_WARN_Skip this if you are level 53 or above|r
.accept 7733 >> Accept Improved Quality
.maxlevel 53
step
#label start
.goto Feralas,31.777,45.498
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
.turnin 2943 >> Turn in Return to Troyas
.timer 13,Return to Troyas RP
.accept 2879 >> Accept The Stave of Equinex
.target Troyas Moonbreeze
step
#completewith next
.goto Feralas,44.810,43.423,60 >> Swim to |cRXP_FRIENDLY_Zorbin Fandazzle|r
step
#era
.goto Feralas,44.810,43.423
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
.accept 7003 >> Accept Zapped Giants
.accept 7721 >> Accept Fuel for the Zapping
.target Zorbin Fandazzle
step
#era
#completewith next
#optional
>>Kill |cRXP_ENEMY_Sea Elementals|r and |cRXP_ENEMY_Sea Sprays|r. Loot them for their |cRXP_LOOT_Water Elemental Cores|r
.complete 7721,1 
.mob Sea Elemental
.mob Sea Spray
step
#era
#loop
.goto Feralas,44.6,50.8,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,46.0,63.0,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,44.6,50.8,70,0
.goto Feralas,44.6,46.6,70,0
.goto Feralas,39.0,35.8,70,0
.goto Feralas,35.0,34.6,70,0
.goto Feralas,40.6,38.0,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,46.0,53.0,0
>>Kill |cRXP_ENEMY_Wave Striders|r, |cRXP_ENEMY_Deep Striders|r and |cRXP_ENEMY_Shore Striders|r. Loot them for their |cRXP_LOOT_Miniaturization Residues|r
.use 18904 >>|cRXP_WARN_Use|r [Zorbin's Ultra-Shrinker] |cRXP_WARN_to weaken them|r
.complete 7003,1 
.mob Wave Strider
.mob Deep Strider
.mob Shore Strider
step
#era
#loop
.goto Feralas,44.6,50.8,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,46.0,63.0,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,44.6,50.8,70,0
.goto Feralas,44.6,46.6,70,0
.goto Feralas,39.0,35.8,70,0
.goto Feralas,35.0,34.6,70,0
.goto Feralas,40.6,38.0,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,46.0,53.0,0
>>Kill |cRXP_ENEMY_Sea Elementals|r and |cRXP_ENEMY_Sea Sprays|r. Loot them for their |cRXP_LOOT_Water Elemental Cores|r
.complete 7721,1 
.mob Sea Elemental
.mob Sea Spray
step
#era
.goto Feralas,44.810,43.423
.target Zorbin Fandazzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
.turnin 7003 >> Turn in Zapped Giants
.turnin 7721 >> Turn in Fuel for the Zapping
step
.destroy 18904 >> Destroy |T133003:0|t[Zorbin's Ultra-Shrinker]
step
.isOnQuest 7733
.maxlevel 53
.goto Feralas,54.84,32.84
>>Kill |cRXP_ENEMY_Rage Scar Yetis|r, |cRXP_ENEMY_Elder Rage Scars|r and |cRXP_ENEMY_Ferocious Rage Scars|r. Loot them for their |cRXP_LOOT_Rage Scar Yeti Hide|r and |T134362:0|t[|cRXP_LOOT_Pristine Yeti Hide|r]
>>|cRXP_WARN_Use the |T134362:0|t[|cRXP_LOOT_Pristine Yeti Hide|r] to start the quest|r
>>|cRXP_WARN_If you do not find the |T134362:0|t[|cRXP_LOOT_Pristine Yeti Hide|r], skip it|r
>>|cRXP_WARN_Skip this step entirely if you are level 53 or above|r
.complete 7733,1 
.collect 18969,1,7735 
.disablecheckbox
.accept 7735 >> Accept Pristine Yeti Hide
.disablecheckbox
.use 18969 
.mob Rage Scar Yeti
.mob Elder Rage Scar
.mob Ferocious Rage Scar
step << !Warrior !Rogue !Paladin !Druid
.isOnQuest 4142
.goto Feralas,45.118,25.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
.turnin 4142 >> Turn in A Visit to Gregan
.target Gregan Brewspewer
step
.isOnQuest 3909
.goto Feralas,45.118,25.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
>>|cRXP_BUY_Buy|r |T134006:0|t[Bait]
.collect 11141,1,3909,1 
.target Gregan Brewspewer
step
.goto Feralas,42.388,21.999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rockbiter|r
.accept 2844 >> Accept The Giant Guardian
.target Rockbiter
step
.isOnQuest 3909
#completewith next
.goto Feralas,44.627,10.568
.cast 14008 >> |cRXP_WARN_Place the|r |T134006:0|t[Bait] |cRXP_WARN_on the ground next to |cRXP_FRIENDLY_Miblon Snarltooth|r to distract him|r
.use 11141 
.target Miblon Snarltooth
step
.isOnQuest 3909
.goto Feralas,44.605,10.185,-1
.goto Feralas,44.517,10.220,-1
>>Loot the |cRXP_LOOT_Evoroot|r inside the Ruins
.collect 11242,1,3909,1 
.use 11141 
step
.isOnQuest 2879
>>Loot the |cRXP_PICK_Four Flames|r for the |cRXP_LOOT_Essences|r
.collect 9257,1,2879,1
.goto Feralas,40.538,12.657
.collect 9258,1,2879,1
.goto Feralas,38.507,15.790
.collect 9255,1,2879,1
.goto Feralas,37.750,12.177
.collect 9256,1,2879,1,1 
.goto Feralas,39.927,9.436
step
.goto Feralas,38.224,10.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay Leafrunner|r
>>|cRXP_WARN_This will start an escort quest|r
.turnin 2844 >> Turn in The Giant Guardian
.accept 2845,1 >> Accept Wandering Shay
.target Shay Leafrunner
step
.goto Feralas,38.252,10.293
>>Open |cRXP_PICK_Shay's Chest|r. Loot it for |T133706:0|t[|cRXP_LOOT_Shay's Bell|r]
.complete 2845,1 
.target Shay Leafrunner
step
#completewith Monolith
>>Escort |cRXP_FRIENDLY_Shay Leafrunner|r to safety
.use 9189 >>|cRXP_WARN_Use|r |T133706:0|t[|cRXP_LOOT_Shay's Bell|r] |cRXP_WARN_whenever |cRXP_FRIENDLY_Shay|r wanders away from you|r
>>|cRXP_WARN_If you run too far away from her the quest will fail|r
.complete 2845,2 
.target Shay Leafrunner
step
.isOnQuest 2879
>>Loot the |cRXP_PICK_Four Flames|r for the |cRXP_LOOT_Essences|r
.collect 9257,1,2879,1
.goto Feralas,40.538,12.657
.collect 9258,1,2879,1
.goto Feralas,38.507,15.790
.collect 9255,1,2879,1
.goto Feralas,37.750,12.177
.collect 9256,1,2879,1
.goto Feralas,39.927,9.436
step
.isOnQuest 2879
.goto Feralas,38.88,13.13
.use 9263 >>|cRXP_WARN_Use|r |T135145:0|t[Troyas' Stave] |cRXP_WARN_at the|r |cRXP_PICK_Equinex Monolith|r
.complete 2879,1
step
#label Monolith
.goto Feralas,38.82,13.17
>>Click the |cRXP_PICK_Equinex Monolith|r
.turnin 2879 >> Turn in The Stave of Equinex
.accept 2942 >> Accept The Morrow Stone
step
.goto Feralas,42.38,22.00
>>Escort |cRXP_FRIENDLY_Shay Leafrunner|r to safety
.use 9189 >>|cRXP_WARN_Use|r |T133706:0|t[|cRXP_LOOT_Shay's Bell|r] |cRXP_WARN_whenever |cRXP_FRIENDLY_Shay|r wanders away from you|r
>>|cRXP_WARN_If you run too far away from her the quest will fail|r
.complete 2845,2 
.target Shay Leafrunner
step
.goto Feralas,42.388,21.999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rockbiter|r
.turnin 2845 >> Turn in Wandering Shay
.target Rockbiter
step
#hardcoreserver
.isOnQuest 3909
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
>>|cRXP_WARN_Blizzard has adjusted the quest [The Videre Elixir] so it will no longer kill you on Official Hardcore Servers|r
.accept 4041 >> Accept The Videre Elixir
.turnin 4041 >> Turn in The Videre Elixir
.complete 3909,1 
.target Gregan Brewspewer
step
#softcoreserver
#hardcore
.isOnQuest 3909
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
>>|cRXP_WARN_You may safely complete this quest as part of the quest chain for [The Videre Elixir]|r
.accept 4041 >> Accept The Videre Elixir
.turnin 4041 >> Turn in The Videre Elixir
.complete 3909,1 
.target Gregan Brewspewer
step
#softcoreserver
#softcore
.isOnQuest 3909
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
.accept 4041 >> Accept The Videre Elixir
.turnin 4041 >> Turn in The Videre Elixir
.complete 3909,1 
.target Gregan Brewspewer
step
.dungeon Mara
.goto Feralas,38.82,13.17,0
#completewith StartMara
+Grind |cRXP_ENEMY_Harpies|r in Feralas while you look for a Maraudon group. Head to Desolace and accept The Pariah's Instructions once your group is ready
.mob Northspring Harpy
.mob Northspring Roguefeather
.mob Northspring Slayer
.mob Northspring Windcaller
step
.dungeon Mara
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
.accept 7067 >> Accept The Pariah's Instructions
.target Centaur Pariah
step
.dungeon Mara
#label StartMara
.goto Desolace,29.89,62.44,0
.goto 1414,38.43,57.97
.zone 1414 >> Travel to Maraudon
step
.dungeon Mara
#completewith EnterMaraudon
>>Kill all |cRXP_ENEMY_Monsters|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
>>|cRXP_WARN_This can be completed OUTSIDE and INSIDE of the Instance. Don't attempt to complete this now|r
.complete 7028,1 
.isOnQuest 7028
step
.dungeon Mara
>>Kill |cRXP_ENEMY_The Nameless Prophet|r. Loot it for the |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance. |cRXP_ENEMY_The Nameless Prophets|r may be patrolling|r
.collect 17757,1,7067,1 
.mob The Nameless Prophet
.isOnQuest 7067
step << skip 
.dungeon Mara
#completewith next
>>Kill |cRXP_ENEMY_Shadowshard Smashers|r and |cRXP_ENEMY_Shadowshard Rumblers|r. Loot them for their |cRXP_LOOT_Shadowshard Fragments|r
>>|cRXP_WARN_These are only found in the Purple section outside of the Instance|r
.complete 7070,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7070
step
.dungeon Mara
.goto 1414,38.469,57.287,20,0
.goto 1414,38.380,57.376,30,0
.goto 1414,38.469,57.287
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Gelk|r
>>Kill |cRXP_ENEMY_Gelk|r. Loot him for the |T134104:0|t[|cRXP_LOOT_Gem of the Second Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17762,1,7067,1 
.use 17757 
.mob Spirit of Gelk
.mob Gelk
.isOnQuest 7067
step << skip 
.dungeon Mara
.goto 1414,38.13,56.90,60,0
.goto 1414,28.76,56.96,60,0
.goto 1414,38.13,56.90
>>Kill |cRXP_ENEMY_Shadowshard Smashers|r and |cRXP_ENEMY_Shadowshard Rumblers|r. Loot them for their |cRXP_LOOT_Shadowshard Fragments|r
>>|cRXP_WARN_These are only found in the Purple section outside of the Instance|r
.complete 7070,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7070
step
.dungeon Mara
.goto 1414,38.497,57.721
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Kolk|r
>>Kill |cRXP_ENEMY_Kolk|r. Loot him for the |T134129:0|t[|cRXP_LOOT_Gem of the First Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17761,1,7067,1 
.use 17757 
.mob Spirit of Kolk
.mob Kolk
.isOnQuest 7067
step
.dungeon Mara
.goto 1414,38.77,58.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cavindra|r
.accept 7044 >> Accept Legends of Maraudon
.target Cavindra
step
.dungeon Mara
.goto 1414,38.928,58.354
>>|cRXP_WARN_Use the|r |T134865:0|t[Coated Cerulean Vial] |cRXP_WARN_in the Orange pool|r
.complete 7041,2 
.use 17693 
.isOnQuest 7041
step
.dungeon Mara
.goto 1414,39.00,58.32,70,0
.goto 1414,39.13,57.68,60,0
.goto 1414,39.25,57.71,20,0
.goto 1414,39.13,57.68
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Magra|r
>>Kill |cRXP_ENEMY_Magra|r. Loot him for the |T134135:0|t[|cRXP_LOOT_Gem of the Third Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17763,1,7067,1 
.use 17757 
.mob Spirit of Magra
.mob Magra
.isOnQuest 7067
step
.dungeon Mara
#label EnterMaraudon
.goto 1414,39.266,58.205
.subzone 2100,2 >> Enter the Maraudon Instance through the Orange side
step
.dungeon Mara
#completewith CrystalCarving
>>Kill any |cRXP_ENEMY_Monster|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
.complete 7028,1 
.isOnQuest 7028
step
.dungeon Mara
#completewith next
>>|cRXP_WARN_Use the|r |T134804:0|t[Filled Cerulean Vial] |cRXP_WARN_on small flowers/plants inside Orange|r
>>Kill the |cRXP_ENEMY_Noxxious Scions|r that are summoned
.complete 7041,1 
.use 17696 
.isOnQuest 7041
step
.dungeon Mara
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Veng|r
>>Kill |cRXP_ENEMY_Veng|r. Loot him for the |T134116:0|t[|cRXP_LOOT_Gem of the Fifth Khan|r]
>>|cRXP_ENEMY_Veng|r |cRXP_WARN_patrols around INSIDE the Maraudon Orange Instance|r
.collect 17765,1,7067,1 
.use 17757 
.mob Spirit of Veng
.mob Veng
.isOnQuest 7067
step
.dungeon Mara
>>|cRXP_WARN_Use the|r |T134804:0|t[Filled Cerulean Vial] |cRXP_WARN_on small flowers/plants inside Orange|r
>>Kill the |cRXP_ENEMY_Noxxious Scions|r that are summoned
.complete 7041,1 
.use 17696 
.isOnQuest 7041
step
.dungeon Mara
>>Kill |cRXP_ENEMY_Noxxion|r. Loot him for the |cRXP_LOOT_Celebrian Rod|r
>>Kill |cRXP_ENEMY_Lord Vyletongue|r. Loot him for the |cRXP_LOOT_Celebrian Diamond|r
>>|cRXP_ENEMY_Noxxion|r |cRXP_WARN_is in the Orange section and |cRXP_ENEMY_Lord Vyletongue|r in the Purple|r
.complete 7044,2 
.complete 7044,1 
.isOnQuest 7044
step
.dungeon Mara
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Maraudos|r
>>Kill |cRXP_ENEMY_Maraudos|r. Loot him for the |T134132:0|t[|cRXP_LOOT_Gem of the Fourth Khan|r]
>>|cRXP_ENEMY_Maraudos|r |cRXP_WARN_patrols around INSIDE the Maraudon Purple Instance|r
.collect 17764,1,7067,1 
.use 17757 
.mob Spirit of Maraudos
.mob Maraudos
.isOnQuest 7067
step
.dungeon Mara
>>|cRXP_WARN_Channel any of the|r |T134129:0|t|T134104:0|t|T134135:0|t|T134132:0|t|T134116:0|t[|cRXP_LOOT_Gems of the Khans|r] |cRXP_WARN_to create the|r |T133277:0|t[|cRXP_LOOT_Amulet of Union|r]
.complete 7067,1 
.use 17761,1
.use 17762,1
.use 17763,1
.use 17764,1
.use 17765,1
.itemcount 17761,1
.itemcount 17762,1
.itemcount 17763,1
.itemcount 17764,1
.itemcount 17765,1
.isOnQuest 7067
step
.dungeon Mara
>>Kill |cRXP_ENEMY_Celebras the Cursed|r then talk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.turnin 7044 >> Turn in Legends of Maraudon
.isQuestComplete 7044
.mob Celebras the Cursed
.target Celebras the Redeemed
step
.dungeon Mara
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.accept 7046 >> Accept The Scepter of Celebras
.timer 14,Incantation of Celebras Spawning RP
.isQuestTurnedIn 7044
.target Celebras the Redeemed
step
.dungeon Mara
.cast 6477 >> Click the |cRXP_PICK_Incantation of Celebras|r on the ground
.timer 34,The Scepter of Celebras RP
.isQuestTurnedIn 7044
step
.dungeon Mara
>>|cRXP_WARN_Wait out the RP|r
.complete 7046,1 
.isQuestTurnedIn 7044
step
.dungeon Mara
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.turnin 7046 >> Turn in The Scepter of Celebras
.isQuestTurnedIn 7044
.target Celebras the Redeemed
step
.dungeon Mara
>>Kill |cRXP_ENEMY_Princess Theradras|r
.complete 7065,1 
.mob Princess Theradras
.isOnQuest 7065
step
.dungeon Mara
#label CrystalCarving
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaetar's Spirit|r
.accept 7066 >> Accept Seed of Life
.target Zaetar's Spirit
step
.dungeon Mara
>>Kill any |cRXP_ENEMY_Monster|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
>>|cRXP_WARN_This can be completed OUTSIDE and INSIDE of the Instance|r
.complete 7028,1 
.isOnQuest 7028
step << Druid
.dungeon Mara
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
.dungeon Mara
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << Druid
.dungeon Mara
.isOnQuest 7066
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Keeper Remulos|r
.turnin 7066 >> Turn in Seed of Life
.target Keeper Remulos
step
.dungeon Mara
#softcore
.deathskip >> Die inside Maraudon and respawn in Desolace
step
.dungeon Mara
#softcore
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
.turnin 7028 >> Turn in Twisted Evils
.target Willow
.isQuestComplete 7028
step
.dungeon Mara
#softcore
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
.turnin 7067 >> Turn in The Pariah's Instructions
.target Centaur Pariah
.isQuestComplete 7067
step
.dungeon Mara
.hs >> Hearth to Nijel's Point
step
.dungeon Mara
.goto Desolace,64.64,9.15,0
.goto Desolace,63.827,10.669
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Marandis|r
.turnin 7065 >> Turn in Corruption of Earth and Seed
.target Keeper Marandis
.isQuestComplete 7065
step
.dungeon Mara
.goto Desolace,68.501,8.880
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talendria|r
.turnin 7041 >> Turn in Vyletongue Corruption
.target Talendria
.isQuestComplete 7041
step
.dungeon Mara
#softcore
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.fly Feathermoon>> Fly to Feathermoon
.target Baritanas Skyriver
step
.dungeon Mara
#hardcore
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
.turnin 7028 >> Turn in Twisted Evils
.target Willow
.isQuestComplete 7028
step
.dungeon Mara
#hardcore
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
.turnin 7067 >> Turn in The Pariah's Instructions
.target Centaur Pariah
.isQuestComplete 7067
step
.dungeon Mara
#hardcore
#completewith next
.zone Feralas >> Head back to Feralas
step
.dungeon !Mara
#softcore
#completewith next
.goto Feralas,38.2,24.2
.deathskip >> Die on the west side of the mountain giant area and respawn at Feathermoon
.target Spirit Healer
step
#hardcore
#completewith next
.goto Feralas,31.777,45.498
.goto Feralas,38.2,24.2,0 
.subzone 1116 >> Travel to Feathermoon Stronghold. Swimming across is faster than waiting for the boat
>>Alternatively you may Website Unstuck to Feathermoon Stronghold from the west side of the mountain. The location is marked on your map
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_CLICK HERE|r
step << !Mage
#era
#completewith end2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardrack Greenwell|r << !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardrack Greenwell|r and |cRXP_FRIENDLY_Faralorn|r << Hunter
>>|cRXP_WARN_There is a grinding session ahead|r
.vendor 7941 >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
.target +Mardrack Greenwell
.vendor 7941 >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.target +Mardrack Greenwell
.goto Feralas,31.043,43.116,-1
.vendor 7942 >>|cRXP_BUY_Buy Ammo if needed|r << Hunter
.target +Faralorn << Hunter
.goto Feralas,30.645,43.433,-1 << Hunter
step
.goto Feralas,31.777,45.498
.target Troyas Moonbreeze
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
.turnin 2942 >> Turn in The Morrow Stone
step
.isOnQuest 7733
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.turnin 7733 >> Turn in Improved Quality
.turnin 7735 >> Turn in Pristine Yeti Hide
.itemcount 18969,1 
.use 18969 
.target Pratt McGrubben
step
.isQuestComplete 7733
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.turnin 7733 >> Turn in Improved Quality
.target Pratt McGrubben
step
#optional
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.turnin 7735 >> Turn in Pristine Yeti Hide
.itemcount 18969,1 
.use 18969 
.target Pratt McGrubben
step
#label end2
.goto Feralas,30.239,43.251
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fyldren Moonfeather|r
.fly Ratchet >> Fly to Ratchet
.target Fyldren Moonfeather
]]);
