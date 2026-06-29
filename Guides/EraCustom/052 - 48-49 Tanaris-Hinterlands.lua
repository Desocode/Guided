RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 40-50
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 48-49 Tanaris/Hinterlands
#somname 47-49 Tanaris/Hinterlands
#next 49-50 Tanaris/Un'Goro
step
#season 0
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 6257 >> Withdraw the following items from your bank:
>>|T133707:0|t[Roc Gizzard] (If you have any) 
.target Gimblethorn
step << skip
.goto Tanaris,51.80,28.66
.target Marin Noggenfogger
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.accept 2605 >> Accept The Thirsty Goblin
step
.goto Tanaris,52.51,27.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r
.home >> Set your Hearthstone to Gadgetzan
.target Innkeeper Fizzgrimble
step
.goto Tanaris,52.387,26.968
>>Click the |cRXP_PICK_Egg-O-Matic|r on the ground
.turnin 2741 >> Turn in The Super Egg-O-Matic
.itemcount 8564,1 
step
#optional
+Open your |T132594:0|t[Egg Crate]
.itemcount 8647,1 
.use 8647
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.turnin 2941 >> Turn in The Borrower
.accept 2944 >> Accept The Super Snapper FX
.target Curgle Cranklehop
step
#optional
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2750 >> Accept A Bad Egg
.turnin 2750 >> Turn in A Bad Egg
.target Curgle Cranklehop
.itemcount 8646,1 
step
#optional
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2749 >> Accept An Ordinary Egg
.turnin 2749 >> Turn in An Ordinary Egg
.target Curgle Cranklehop
.itemcount 8645,1 
step
#optional
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2748 >> Accept A Fine Egg
.turnin 2748 >> Turn in A Fine Egg
.target Curgle Cranklehop
.itemcount 8644,1 
step
#optional
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2747 >> Accept An Extraordinary Egg
.turnin 2747 >> Turn in An Extraordinary Egg
.target Curgle Cranklehop
.itemcount 8643,1 
step
#optional
+Open your |T132594:0|t[Box of Rations]
.itemcount 9539,1 
.use 9539
step
#optional
+Open your |T132595:0|t[Box of Spells]
.itemcount 9540,1 
.use 9540
step
#optional
+Open your |T132597:0|t[Box of Goodies]
.itemcount 9541,1 
.use 9541
step << skip
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 3362 >> Accept Thistleshrub Valley
step
#label start
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 992 >> Accept Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
step
#era/som
#completewith vultures
>>Kill |cRXP_ENEMY_Rocs|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>|cRXP_WARN_Don't go out of your way to finish this|r
.complete 1452,1 
.isOnQuest 1452
.mob Roc
.mob Fire Roc
step
.goto Tanaris,39.016,29.244
.use 8584 >> |cRXP_WARN_Use the|r |T134867:0|t[Untapped Dowsing Widget] |cRXP_WARN_at the Sandsorrow Watch pond. Avoid the Elite |cRXP_ENEMY_Sandfury Trolls|r en-route|r
>>|cRXP_WARN_Two level 47/48 |cRXP_ENEMY_Centipaar Tunnelers|r will spawn once you fill the|r |T134867:0|t[Untapped Dowsing Widget]|cRXP_WARN_. You may kill them or run away to reset them|r
.complete 992,1 
.mob Centipaar Tunneler
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 992 >> Turn in Gadgetzan Water Survey
.accept 82 >> Accept Noxious Lair Investigation
.target Senior Surveyor Fizzledowser
step
#label vultures
.goto Tanaris,35.68,39.78,70,0
.goto Tanaris,36.55,41.98,70,0
.goto Tanaris,35.59,44.08,70,0
.goto Tanaris,35.60,48.79,70,0
.goto Tanaris,31.70,49.12,70,0
.goto Tanaris,30.83,46.10,70,0
.goto Tanaris,35.68,39.78
>>Kill |cRXP_ENEMY_Centipaar Sandreavers|r, |cRXP_ENEMY_Centipaar Swarmers|r, |cRXP_ENEMY_Centipaar Stingers|r, |cRXP_ENEMY_Centipaar Tunnelers|r, and |cRXP_ENEMY_Centipaar Wasps|r. Loot them for |cRXP_LOOT_Centipaar Insect Parts|r
>>|cRXP_WARN_Be careful as all |cRXP_ENEMY_Centipaar|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds), |cRXP_ENEMY_Centipaar Sandreavers|r cast|r |T132338:0|t[Arcing Smash] |cRXP_WARN_(Deals an extra melee attack), |cRXP_ENEMY_Centipaar Swarmers|r cast|r |T136122:0|t[Silithid Swarm] |cRXP_WARN_(Summons a 1 health mob every 10 seconds that deals current-level attack damage, instantly dies to AoE), |cRXP_ENEMY_Centipaar Stingers|r cast|r |T132274:0|t[Venom Sting] |cRXP_WARN_(deals 11-12 damage every 5 seconds for 45 seconds), |cRXP_ENEMY_Centipaar Tunnelers|r cast|r |T136231:0|t[Pierce Armor] |cRXP_WARN_(Reduces armor by 50% for 20 seconds), and |cRXP_ENEMY_Centipaar Wasps|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(deals 33-34 damage every 3 seconds for 30 seconds)|r
.complete 82,1 
.mob Centipaar Sandreaver
.mob Centipaar Swarmer
.mob Centipaar Stinger
.mob Centipaar Tunneler
.mob Centipaar Wasp
.mob Silithid Swarm
step
#era/som
.goto Tanaris,55.62,25.46,50,0
.goto Tanaris,53.19,31.69,50,0
.goto Tanaris,49.48,35.85
.goto Tanaris,44.60,39.60,0
>>Kill |cRXP_ENEMY_Rocs|r and |cRXP_ENEMY_Fire Rocs|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>|cRXP_WARN_The |cRXP_ENEMY_Rocs|r share spawns with |cRXP_ENEMY_Starving Blisterpaws|r. You may need to kill |cRXP_ENEMY_Starving Blisterpaws|r to force |cRXP_ENEMY_Rocs|r to spawn|r
.complete 1452,1 
.isOnQuest 1452
.mob Roc
.mob Fire Roc
step << skip
#completewith next
>>Don't go out of your way to kill |cRXP_LOOT_Thistleshrub|r mobs for this quest, you'll have another opportunity to do it later, focus on killing |cRXP_LOOT_Dew Collectors|r
.complete 3362,1
.complete 3362,2
step << skip
.goto Tanaris,28.70,64.06
>> Kill |cRXP_LOOT_Dew Collectors|r. Loot them for the |cRXP_LOOT_Dew Gland|r
.complete 2605,1
step
#season 0
#softcore
#completewith next
.deathskip >>Die and respawn at the Spirit Healer in Gadgetzan
.target Spirit Healer
step << skip
.goto Tanaris,51.80,28.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2605 >> Turn in The Thirsty Goblin
.target Marin Noggenfogger
.accept 2606 >> Accept In Good Taste
step << skip
.goto Tanaris,51.05,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2606 >> Turn in In Good Taste
.target Sprinkle
.accept 2641 >> Accept Sprinkle's Secret Ingredient
step
.goto Tanaris,50.886,26.963
.target Alchemist Pestlezugg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 82 >> Turn in Noxious Lair Investigation
step << skip 
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 10 >> Accept The Scrimshank Redemption
.target Senior Surveyor Fizzledowser
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,51.006,29.345
.fly Theramore >> Fly to Theramore
.target Bera Stonehammer
step
.goto Dustwallow Marsh,71.4,56.1
.zone Wetlands >> Take the boat to Menethil Harbor
.zoneskip The Hinterlands
step
#completewith next
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Hinterlands >> Fly to Hinterlands
.target Shellei Brondir
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.accept 2988 >> Accept Witherbark Cages
.target Gryphon Master Talonaxe
step << skip 
.goto The Hinterlands,14.83,44.56
.target Fraggar Thundermantle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.accept 2880 >> Accept Troll Necklace Bounty
step
#sticky
#completewith FinishFeathers
>>Loot the |cRXP_LOOT_Wildkin Feathers|r on the ground
>>|cRXP_WARN_These are scattered on the ground throughout all of The Hinterlands|r
.complete 3661,1 
step
#era/som
.goto The Hinterlands,26.943,48.588
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
.turnin 1452 >> Turn in Rhapsody's Kalimdor Kocktail
.timer 35,Rhapsody's Kalimdor Kocktail RP
.accept 1469 >> Accept Rhapsody's Tale
.target Rhapsody Shindigger
step
#completewith FinalCages
>>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for their |cRXP_LOOT_Tribal Necklaces|r
.collect 9259,5,2880,1 
.mob Witherbark Venomblood
.mob Witherbark Hideskinner
.mob Witherbark Zealot
.mob Witherbark Scalper
step
.goto The Hinterlands,31.98,57.31
>>Click the |cRXP_PICK_Third Witherbark Cage|r
.complete 2988,3 
step
#label FinalCages
>>Click the |cRXP_PICK_First Witherbark Cage|r and |cRXP_PICK_Second Witherbark Cage|r
.complete 2988,1 
.goto The Hinterlands,23.28,58.81
.complete 2988,2 
.goto The Hinterlands,23.12,58.82
step
#label TrollNecklaces
.goto The Hinterlands,21.92,56.04,70,0
.goto The Hinterlands,25.09,59.20,70,0
.goto The Hinterlands,32.23,58.21
>>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for their |cRXP_LOOT_Tribal Necklaces|r
.collect 9259,5,2880,1 
.mob Witherbark Venomblood
.mob Witherbark Hideskinner
.mob Witherbark Zealot
.mob Witherbark Scalper
step
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.accept 2880 >> Accept Troll Necklace Bounty
.turnin 2880 >> Turn in Troll Necklace Bounty
.accept 2877 >> Accept Skulk Rock Clean-up
.target Fraggar Thundermantle
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.turnin 2988 >> Turn in Witherbark Cages
.accept 2989 >> Accept The Altar of Zul
.target Gryphon Master Talonaxe
step << skip
.goto The Hinterlands,40.63,59.65
>> Loot a |cRXP_PICK_purple mushroom|r underwater
.complete 2641,1
step
.goto The Hinterlands,48.814,68.387
>>|cRXP_WARN_Clear your way to the top of The Altar of Zul. Ensure you are on full HP before you reach the top!|r
>>|cRXP_WARN_Run to the exploration location, then jump off to the side to evade the Elites at the top. Wait on the ledge until you have dropped Combat. Watch the video below for an example|r
.complete 2989,1 
.link https://youtu.be/Z4gDpWTXaFY >> |cRXP_WARN_Click here for video reference|r
step
#label FinishFeathers
.goto The Hinterlands,46.56,40.60,60,0
.goto The Hinterlands,46.24,39.85,60,0
.goto The Hinterlands,57.65,42.83
>>Kill |cRXP_ENEMY_Green Sludges|r and |cRXP_ENEMY_Jade Oozes|r
.complete 2877,1 
.mob +Green Sludge
.complete 2877,2 
.mob +Jade Ooze
step
.goto The Hinterlands,42.5,54.5,70,0
.goto The Hinterlands,33.5,58.1,70,0
.goto The Hinterlands,29.6,62.0,70,0
.goto The Hinterlands,27.7,54.5,70,0
.goto The Hinterlands,21.0,56.1,70,0
.goto The Hinterlands,20.0,48.2,70,0
.goto The Hinterlands,15.7,52.5,70,0
.goto The Hinterlands,28.1,58.1
>>Loot the |cRXP_LOOT_Wildkin Feathers|r on the ground
>>|cRXP_WARN_These are scattered on the ground throughout all of The Hinterlands|r
.complete 3661,1 
step
.use 8704 >>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-09/HL Distress Beacon|r] to start the quest|r
>>|cRXP_WARN_If you are unlucky and have not found it yet, skip this step|r
.collect 8704,1,485,1 
.accept 485 >> Accept Find OOX-09/HL!
.itemcount 8704,1 
step
.isOnQuest 485
.goto The Hinterlands,49.352,37.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
.turnin 485 >> Turn in Find OOX-09/HL!
.target Homing Robot OOX-09/HL
step
.isQuestTurnedIn 485
.goto The Hinterlands,49.352,37.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
.accept 836,1 >> Accept Rescue OOX-09/HL!
.target Homing Robot OOX-09/HL
step
.isOnQuest 836
.goto The Hinterlands,72.46,66.16,40,0
.goto The Hinterlands,76.22,61.81,45,0
.goto The Hinterlands,79.33,61.26
>>Escort the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r to safety
>>|cRXP_WARN_This quest can be hard. You have to fight waves of 3/4 mobs along the way. Skip this step if its too difficult|r
.complete 836,1 
.target Homing Robot OOX-22/FE
step
#completewith GammeritaSnapshot
+Grind until your Hearthstone cooldown is <6min
.cooldown item,6948,<360
step
#completewith next
>>Loot the |cRXP_LOOT_Pupellyverbos Ports|r on the ground
.complete 580,1 
step
#label GammeritaSnapshot
.line The Hinterlands,81.95,49.41,81.21,52.91,81.98,54.30,81.97,56.42,80.77,58.37,80.34,59.40,79.45,60.76,78.69,61.39,76.86,62.73,75.91,63.81,75.29,65.60,76.72,66.85,78.53,67.51,78.60,68.97,77.90,70.97,76.71,71.26,76.52,72.95,77.07,74.64
.goto The Hinterlands,81.95,49.41,70,0
.goto The Hinterlands,81.21,52.91,70,0
.goto The Hinterlands,81.98,54.30,70,0
.goto The Hinterlands,81.97,56.42,70,0
.goto The Hinterlands,80.77,58.37,70,0
.goto The Hinterlands,80.34,59.40,70,0
.goto The Hinterlands,79.45,60.76,70,0
.goto The Hinterlands,78.69,61.39,70,0
.goto The Hinterlands,76.86,62.73,70,0
.goto The Hinterlands,75.91,63.81,70,0
.goto The Hinterlands,75.29,65.60,70,0
.goto The Hinterlands,76.72,66.85,70,0
.goto The Hinterlands,78.53,67.51,70,0
.goto The Hinterlands,78.60,68.97,70,0
.goto The Hinterlands,77.90,70.97,70,0
.goto The Hinterlands,76.71,71.26,70,0
.goto The Hinterlands,76.52,72.95,70,0
.goto The Hinterlands,77.07,74.64,70,0
.goto The Hinterlands,81.21,52.91,70,0
.goto The Hinterlands,75.91,63.81
.use 9328 >> |cRXP_WARN_Use the|r |T134442:0|t[Super Snapper FX] |cRXP_WARN_on|r |cRXP_ENEMY_Gammerita|r
>>|cRXP_WARN_This will cause |cRXP_ENEMY_Gammerita|r to agro you. Be ready to run away after using it|r
.complete 2944,1 
.unitscan Gammerita
step
.goto The Hinterlands,81.7,49.3,70,0
.goto The Hinterlands,79.3,60.5,70,0
.goto The Hinterlands,77.5,70.3,70,0
.goto The Hinterlands,75.7,64.5,70,0
.goto The Hinterlands,81.9,52.9,70,0
.goto The Hinterlands,77.9,65.5
>>Loot the |cRXP_LOOT_Pupellyverbos Ports|r on the ground
.complete 580,1 
step
.goto The Hinterlands,80.78,46.82
>>Click on |cRXP_PICK_Cortello's Treasure|r underwater
.turnin 626 >> Turn in Cortello's Riddle
.isOnQuest 626
step
.goto The Hinterlands,47.20,65.95
+Grind until your Hearthstone is off cooldown
.cooldown item,6948,<0
step
#label HinterlandsEnd
.hs >> Hearth to Tanaris
.cooldown item,6948,>0,1
]]);
