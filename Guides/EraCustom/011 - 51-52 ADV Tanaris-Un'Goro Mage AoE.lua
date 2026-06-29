RXPGuides.RegisterGuide([[
#version 23
#defaultfor Alliance Mage
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 51-52 ADV Tanaris/Un'Goro Mage AoE
#next 52-60 ADV Plaguelands Mage AoE
step
>>Talk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Marin|r
.turnin 2781 >>Turn in WANTED: Caliph Scorpidsting
.target +Chief Engineer Bilgewhizzle
.goto Tanaris,52.46,28.52
.accept 2605 >> Accept The Thirsty Goblin
.goto Tanaris,51.81,28.66
.target +Marin Noggenfogger
step
>>Talk to |cRXP_FRIENDLY_Andi|r, |cRXP_FRIENDLY_Tran'rek|r, and |cRXP_FRIENDLY_Fizzledowser|r
.accept 5863 >> Accept The Dunemaul Compound
.target +Andi Lynn
.goto Tanaris,52.82,27.40
.accept 3362 >> Accept Thistleshrub Valley
.target +Tran'rek
.goto Tanaris,51.56,26.76
.accept 992 >> Accept Gadgetzan Water Survey
.goto Tanaris,50.21,27.48
.target +Senior Surveyer Fizzledowser
step
.goto Tanaris,39.08,29.15
>>|cRXP_WARN_Use the|r |T134867:0|t[Untapped Dowsing Widget] |cRXP_WARN_in the shallow pool|r
>>|cRXP_WARN_Cast|r |T135736:0|t[Blink] |cRXP_WARN_as soon as you finish using the|r |T134867:0|t[Untapped Dowsing Widget] |cRXP_WARN_to avoid aggroing the|r |cRXP_ENEMY_Centipaar Tunnelers|r
.complete 992,1 
.use 8584 
step
.goto Tanaris,50.21,27.48
>>Talk to |cRXP_FRIENDLY_Fizzledowser|r
.turnin 992 >> Turn in Gadgetzan Water Survey
.accept 82 >> Accept Noxious Lair Investigation
.target Senior Surveyer Fizzledowser
step << skip
.goto Tanaris,51.01,29.35
>>Talk to |cRXP_FRIENDLY_Bera|r
.fp Gadgetzan >> Get the Gadgetzan flight path
.target Bera Stonehammer
step
.goto Tanaris,35.68,39.78,70,0
.goto Tanaris,36.55,41.98,70,0
.goto Tanaris,35.59,44.08,70,0
.goto Tanaris,35.60,48.79,70,0
.goto Tanaris,31.70,49.12,70,0
.goto Tanaris,30.83,46.10,70,0
.goto Tanaris,35.68,39.78
>>AoE |cRXP_ENEMY_Centipaar Sandreavers|r, |cRXP_ENEMY_Centipaar Swarmers|r, |cRXP_ENEMY_Centipaar Stingers|r, |cRXP_ENEMY_Centipaar Tunnelers|r, and |cRXP_ENEMY_Centipaar Wasps|r. Loot them for |cRXP_LOOT_Centipaar Insect Parts|r
>>|cRXP_WARN_Be careful as all |cRXP_ENEMY_Centipaar|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds), |cRXP_ENEMY_Centipaar Sandreavers|r cast|r |T132338:0|t[Arcing Smash] |cRXP_WARN_(Deals an extra melee attack), |cRXP_ENEMY_Centipaar Swarmers|r cast|r |T136122:0|t[Silithid Swarm] |cRXP_WARN_(Summons a 1 health mob every 10 seconds that deals current-level attack damage, instantly dies to AoE), |cRXP_ENEMY_Centipaar Stingers|r cast|r |T132274:0|t[Venom Sting] |cRXP_WARN_(deals 11-12 damage every 5 seconds for 45 seconds), |cRXP_ENEMY_Centipaar Tunnelers|r cast|r |T136231:0|t[Pierce Armor] |cRXP_WARN_(Reduces armor by 50% for 20 seconds), and |cRXP_ENEMY_Centipaar Wasps|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(deals 33-34 damage every 3 seconds for 30 seconds)|r
.complete 82,1 
.mob Centipaar Sandreaver
.mob Centipaar Swarmer
.mob Centipaar Stinger
.mob Centipaar Tunneler
.mob Centipaar Wasp
.mob Silithid Swarm
step
#completewith Ravager
>>AoE |cRXP_ENEMY_Dunemaul Enforcers|r and |cRXP_ENEMY_Dunemaul Brutes|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dunemaul Brutes|r cast|r |T132939:0|t[Uppercut] |cRXP_WARN_(Within a 10 yard range, deals an extra 70 damage and knocks up for 1 second)|r
.complete 5863,2 
.mob +Dunemaul Enforcer
.complete 5863,1 
.mob +Dunemaul Brute
step
#completewith next
.goto Tanaris,41.11,57.44,20 >>Go inside the cave
step
#label Ravager
.goto Tanaris,41.50,57.81
>>AoE |cRXP_ENEMY_Gor'marok the Ravager|r
>>|cRXP_WARN_Be careful as he casts |T132939:0|t[Mortal Strike] |cRXP_WARN_(Deals an additional 70 damage),|r |T132939:0|t[Cleave] |cRXP_WARN_(Deals an additional 50 damage), and|r |T132126:0|t[Enrage] |cRXP_WARN_(increases attack speed and increases melee damage by 40)|r
.complete 5863,3 
.mob Gor'marok the Ravager
step
#loop
.line Tanaris,40.95,56.98,39.99,58.13,38.00,59.26,37.79,57.04,38.31,56.21,38.35,54.67,38.23,52.84,39.35,51.13,40.60,50.70,41.24,52.21,42.65,53.29,42.90,54.98,40.95,56.98
.goto Tanaris,40.95,56.98,40,0
.goto Tanaris,39.99,58.13,40,0
.goto Tanaris,38.00,59.26,40,0
.goto Tanaris,37.79,57.04,40,0
.goto Tanaris,38.31,56.21,40,0
.goto Tanaris,38.35,54.67,40,0
.goto Tanaris,38.23,52.84,40,0
.goto Tanaris,39.35,51.13,40,0
.goto Tanaris,40.60,50.70,40,0
.goto Tanaris,41.24,52.21,40,0
.goto Tanaris,42.65,53.29,40,0
.goto Tanaris,42.90,54.98,40,0
.goto Tanaris,40.95,56.98,40,0
>>AoE |cRXP_ENEMY_Dunemaul Enforcers|r and |cRXP_ENEMY_Dunemaul Brutes|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dunemaul Brutes|r cast|r |T132939:0|t[Uppercut] |cRXP_WARN_(Within a 10 yard range, deals an extra 70 damage and knocks up for 1 second)|r
.complete 5863,2 
.mob +Dunemaul Enforcer
.complete 5863,1 
.mob +Dunemaul Enforcer
step
#loop
.line Tanaris,29.92,62.90,28.93,62.12,27.67,63.36,28.27,64.46,27.56,65.69,28.18,66.76,27.68,67.96,27.93,69.10,29.03,67.38,29.76,66.45,30.64,67.24,30.73,65.88,31.22,65.50,31.23,64.59,30.12,64.10,29.92,62.90
.goto Tanaris,29.92,62.90,40,0
.goto Tanaris,28.93,62.12,40,0
.goto Tanaris,27.67,63.36,40,0
.goto Tanaris,28.27,64.46,40,0
.goto Tanaris,27.56,65.69,40,0
.goto Tanaris,28.18,66.76,40,0
.goto Tanaris,27.68,67.96,40,0
.goto Tanaris,27.93,69.10,40,0
.goto Tanaris,29.03,67.38,40,0
.goto Tanaris,29.76,66.45,40,0
.goto Tanaris,30.64,67.24,40,0
.goto Tanaris,30.73,65.88,40,0
.goto Tanaris,31.22,65.50,40,0
.goto Tanaris,31.23,64.59,40,0
.goto Tanaris,30.12,64.10,40,0
.goto Tanaris,29.92,62.90,40,0
>>AoE |cRXP_ENEMY_Gnarled Thistleshrubs|r, |cRXP_ENEMY_Thistleshrub Rootshapers|r, and |cRXP_ENEMY_Thistleshrub Dew Collectors|r
>>Loot the |cRXP_ENEMY_Thistleshrub Dew Collectors|r for the |cRXP_LOOT_Laden Dew Gland|r
.complete 3362,1 
.mob +Gnarled Thistleshrub
.complete 3362,2 
.mob +Thistleshrub Rootshaper
.complete 2605,1 
.mob +Thistleshrub Dew Collector
step
#completewith next
.goto Tanaris,27.24,56.77,50,0
.goto Un'Goro Crater,71.64,75.96,30 >>Travel toward |cRXP_FRIENDLY_Torwa|r
step
.goto Un'Goro Crater,71.64,75.96
>>Talk to |cRXP_FRIENDLY_Torwa|r
.accept 4289 >> Accept The Apes of Un'Goro
.accept 4290 >> Accept The Fare of Lar'korwi
.target Torwa Pathfinder
step
#completewith Scent
>>AoE |cRXP_ENEMY_Venomhide Ravasaurs|r, |cRXP_ENEMY_Ravasaur Runners|r, |cRXP_ENEMY_Ravasaur Hunters|r, and |cRXP_ENEMY_Ravasaurs|r. Loot them for |T133743:0|t[|cRXP_LOOT_A Mangled Journal|r]
>>|cRXP_WARN_Use|r |T133743:0|t[|cRXP_LOOT_A Mangled Journal|r] |cRXP_WARN_to start the quest|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Venomhide Ravasaurs|r cast|r |T132273:0|t[Venomhide Poison] |cRXP_WARN_(deals 35 damage every 3 seconds for 30 seconds)|r|cRXP_WARN_, |cRXP_ENEMY_Ravasaur Runners|r have|r |T132307:0|t[Increased Movespeed]|cRXP_WARN_, |cRXP_ENEMY_Ravasaur Hunters|r cast|r |T132109:0|t[Tendon Rip] |cRXP_WARN_B(reduces movespeed by 70% for 8 seconds), and|r |cRXP_ENEMY_Ravasaurs|r cast|r |T132109:0|t[Rend] |cRXP_WARN_(deals 27 damage every 3 seconds for 15 seconds)|r
.collect 11116,1,3884,1 
.accept 3884 >> Accept Williden's Journal
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Hunter
.mob Ravasaur
.use 11116
step
#completewith Journal
>>Loot the |cRXP_LOOT_Red Power Crystals|r, |cRXP_LOOT_Yellow Power Crystals|r, |cRXP_LOOT_Green Power Crystals|r, and |cRXP_LOOT_Blue Power Crystals|r on the ground
>>|cRXP_WARN_Go out of your way for these if needed|r
.collect 11186,7,4284,1 
.collect 11188,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
step
.goto Un'Goro Crater,68.68,56.71
>>Open the |cRXP_PICK_Fresh Threshadon Carcass|r on the ground. Loot it for a |cRXP_LOOT_Piece of Threshadon Carcass|r
>>|cRXP_WARN_This has a 5 second cast time|r
.complete 4290,1 
step
#label Fare
.goto Un'Goro Crater,71.64,75.96
>>Talk to |cRXP_FRIENDLY_Torwa|r
.turnin 4290 >> Turn in The Fare of Lar'korwi
.accept 4291 >> Accept The Scent of Lar'korwi
.target Torwa Pathfinder
step
.goto Un'Goro Crater,67.34,73.06
>>|cRXP_WARN_Run on top of the nest of eggs to spawn a|r |cRXP_ENEMY_Lar'korwi Mate|r
>>AoE |cRXP_ENEMY_Lar'korwi Mates|r. Loot them for |cRXP_LOOT_Ravasaur Pheromone Glands|r
>>|cRXP_WARN_Be careful as they cast|r |T132109:0|t[Tendon Rip] |cRXP_WARN_B(reduces movespeed by 70% for 8 seconds)|r
complete 4291,1,1 
step
>>Click on |cRXP_PICK_A Wrecked Raft|r and then |cRXP_PICK_A Small Pack|r underwater
.accept 3844 >> Accept It's a Secret to Everybody
.goto Un'Goro Crater,63.01,68.49
.turnin 3844 >> Turn in It's a Secret to Everybody
.accept 3845 >> Accept It's a Secret to Everybody
.goto Un'Goro Crater,63.11,69.06
step
#sticky
#label Pack
>>Open |T133653:0|t[A Small Pack] in your bags. Loot it for the |cRXP_LOOT_Large Compass|r, |cRXP_LOOT_Curled Map Parchment|r, and |cRXP_LOOT_Lion-headed Key|r
.complete 3845,1 
.complete 3845,2 
.complete 3845,3 
.use 11107
step
#sticky
#requires Pack
#label PackDelete
.destroy 3108 >>|cRXP_WARN_Destroy the|r |T135427:0|t[Heavy Throwing Daggers] |cRXP_WARN_from your bags, as it's no longer needed|r
.destroy 11108 >>|cRXP_WARN_Destroy the|r |T134944:0|t[Faded Photograph] |cRXP_WARN_from your bags, as it's no longer needed|r
step
.goto Un'Goro Crater,66.60,66.73
>>|cRXP_WARN_Run on top of the nest of eggs to spawn a|r |cRXP_ENEMY_Lar'korwi Mate|r
>>AoE |cRXP_ENEMY_Lar'korwi Mates|r. Loot them for |cRXP_LOOT_Ravasaur Pheromone Glands|r
>>|cRXP_WARN_Be careful as they cast|r |T132109:0|t[Tendon Rip] |cRXP_WARN_B(reduces movespeed by 70% for 8 seconds)|r
complete 4291,1 
step
#label Scent
.goto Un'Goro Crater,71.64,75.96
>>Talk to |cRXP_FRIENDLY_Torwa|r
.turnin 4291 >> Turn in The Scent of Lar'korwi
.accept 4292 >> Accept The Bait for Lar'korwi
.target Torwa Pathfinder
step
#label Journal
#loop
.line Un'Goro Crater,67.34,73.06,66.60,66.73,68.68,56.71
.goto Un'Goro Crater,67.34,73.06,40,0
.goto Un'Goro Crater,66.60,66.73,40,0
.goto Un'Goro Crater,68.68,56.71,40,0
>>AoE |cRXP_ENEMY_Venomhide Ravasaurs|r, |cRXP_ENEMY_Ravasaur Runners|r, |cRXP_ENEMY_Ravasaur Hunters|r, and |cRXP_ENEMY_Ravasaurs|r. Loot them for |T133743:0|t[|cRXP_LOOT_A Mangled Journal|r]
>>|cRXP_WARN_Use|r |T133743:0|t[|cRXP_LOOT_A Mangled Journal|r] |cRXP_WARN_to start the quest|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Venomhide Ravasaurs|r cast|r |T132273:0|t[Venomhide Poison] |cRXP_WARN_(deals 35 damage every 3 seconds for 30 seconds)|r|cRXP_WARN_, |cRXP_ENEMY_Ravasaur Runners|r have|r |T132307:0|t[Increased Movespeed]|cRXP_WARN_, |cRXP_ENEMY_Ravasaur Hunters|r cast|r |T132109:0|t[Tendon Rip] |cRXP_WARN_B(reduces movespeed by 70% for 8 seconds)|r|cRXP_WARN_, and |cRXP_ENEMY_Ravasaurs|r cast|r |T132109:0|t[Rend] |cRXP_WARN_(deals 27 damage every 3 seconds for 15 seconds)|r
.collect 11116,1,3884,1 
.accept 3884 >> Accept Williden's Journal
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Hunter
.mob Ravasaur
.use 11116
step
#completewith next
.goto Un'Goro Crater,74.12,63.56,100,0
.goto Un'Goro Crater,76.60,43.74,100,0
.goto Un'Goro Crater,72.18,32.85,100,0
.goto Un'Goro Crater,68.18,25.19,100,0
.goto Un'Goro Crater,58.20,18.22,100,0
.goto Un'Goro Crater,51.46,13.68,100,0
>>Loot the |cRXP_LOOT_Red Power Crystals|r, |cRXP_LOOT_Yellow Power Crystals|r, |cRXP_LOOT_Green Power Crystals|r, and |cRXP_LOOT_Blue Power Crystals|r on the ground
>>|cRXP_WARN_Go out of your way for these if needed|r
.collect 11186,7,4284,1 
.collect 11188,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
step
.goto Un'Goro Crater,46.38,13.44
>>Talk to Karna
.accept 4243 >> Accept Chasing A-Me 01
.target Karna Remtravel
step
#requires PackDelete
.goto Un'Goro Crater,51.46,13.68,100,0
.goto Un'Goro Crater,58.20,18.22,100,0
.goto Un'Goro Crater,68.18,25.19,100,0
.goto Un'Goro Crater,72.18,32.85,100,0
.goto Un'Goro Crater,76.60,43.74,100,0
.goto Un'Goro Crater,74.12,63.56,100,0
.goto Un'Goro Crater,76.60,43.74,100,0
.goto Un'Goro Crater,72.18,32.85,100,0
.goto Un'Goro Crater,68.18,25.19,100,0
.goto Un'Goro Crater,58.20,18.22,100,0
.goto Un'Goro Crater,51.46,13.68
>>Loot the |cRXP_LOOT_Red Power Crystals|r, |cRXP_LOOT_Yellow Power Crystals|r, |cRXP_LOOT_Green Power Crystals|r, and |cRXP_LOOT_Blue Power Crystals|r on the ground
>>|cRXP_WARN_Go out of your way for these if needed|r
.collect 11186,7,4284,1 
.collect 11188,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
step
#completewith next
.goto Un'Goro Crater,44.23,11.58,40 >>Travel toward |cRXP_FRIENDLY_Shizzle|r
step
.goto Un'Goro Crater,44.23,11.58
>>Talk to |cRXP_FRIENDLY_Shizzle|r
.accept 4503 >> Accept Shizzle's Flyer
.target Shizzle
step
>>Talk to |cRXP_FRIENDLY_Spraggle|r, Click the |cRXP_PICK_Beware of Pterrordax|r board, and talk to |cRXP_FRIENDLY_Spark|r
.accept 4492 >> Accept Lost!
.target +Spraggle Frock
.goto Un'Goro Crater,43.61,8.50
.accept 4501 >> Accept Beware of Pterrordax
.goto Un'Goro Crater,43.54,8.43
.accept 3882 >> Accept Roll the Bones
.goto Un'Goro Crater,43.50,7.42
.target +Spark Nilminer
step
#completewith next
.goto Un'Goro Crater,43.21,5.86,15,0
.goto Un'Goro Crater,43.13,4.58,15,0
.goto Un'Goro Crater,41.72,4.89,15,0
.goto Un'Goro Crater,41.14,3.95,15,0
.goto Un'Goro Crater,41.09,2.97,15,0
.goto Un'Goro Crater,41.92,2.71,15 >>Travel toward |cRXP_FRIENDLY_Collie|r inside the cave
step
.goto Un'Goro Crater,41.92,2.71
>>Talk to |cRXP_FRIENDLY_Collie|r
.accept 4284 >> Accept Crystals of Power
.turnin 4284 >> Turn in Crystals of Power
.accept 4285 >> Accept The Northern Pylon
.accept 4287 >> Accept The Eastern Pylon
.accept 4288 >> Accept The Western Pylon
.target J.D. Collie
step
#completewith next
.goto Un'Goro Crater,41.09,2.97,15,0
.goto Un'Goro Crater,41.14,3.95,15,0
.goto Un'Goro Crater,41.72,4.89,15,0
.goto Un'Goro Crater,43.13,4.58,15,0
.goto Un'Goro Crater,43.89,7.24,15 >>Travel toward |cRXP_FRIENDLY_Hol'anyee|r outside the cave
step
>>Talk to |cRXP_FRIENDLY_Hol'anyee|r, |cRXP_FRIENDLY_Williden|r, and |cRXP_FRIENDLY_Linken|r
.accept 3883 >> Accept Alien Ecology
.target +Hol'anyee Marshal
.goto Un'Goro Crater,43.89,7.24
.accept 3881 >> Accept Expedition Salvation
.turnin 3884 >> Turn in Williden's Journal
.target +Williden Marshal
.goto Un'Goro Crater,43.95,7.14
.turnin 3845 >> Turn in It's a Secret to Everybody
.goto Un'Goro Crater,44.65,8.10
.target +Linken
step
#completewith next
.goto Un'Goro Crater,51.10,13.41,15,0
.goto Un'Goro Crater,50.46,9.91,50,0
.goto Un'Goro Crater,55.20,13.04,30,0
.goto Un'Goro Crater,58.04,8.60,60,0
>>AoE |cRXP_ENEMY_Pterrordax|r. Loot them for |cRXP_LOOT_Webbed Pterrordax Scales|r
>>|cRXP_WARN_Be careful as they cast|r |T136218:0|t[Terrifying Screech]|cRXP_WARN_, (Instantly fearing you for 4 seconds|r
.complete 4501,1 
.complete 4503,2 
.mob Pterrordax
step
.goto Un'Goro Crater,56.52,12.53
>>Click the |cRXP_PICK_Northern Crystal Pylon|r
.complete 4285,1 
.skipgossip
step
#completewith Ame
>>AoE |cRXP_ENEMY_Un'Goro Gorillas|r, |cRXP_ENEMY_Un'Goro Stompers|r, and |cRXP_ENEMY_Un'Goro Thunderers|r. Loot them for their respective |cRXP_LOOT_Pelts|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Un'Goro Gorillas|r cast|r |T132366:0|t[Call For Help] |cRXP_WARN_(Aggros nearby allies in a 75 yard radius at <50% health,|r |cRXP_ENEMY_Un'Goro Stompers|r cast|r |T132126:0|t[Enrage] |cRXP_WARN_(increases attack speed and increases melee damage by 70), and |cRXP_ENEMY_Un'Goro Thunderers|r cast|r |T136115:0|t[Shock] |cRXP_WARN_(instantly deals about 350 damage)|r
.complete 4289,1 
.mob +Un'Goro Gorilla
.complete 4289,2 
.mob +Un'Goro Stomper
.complete 4289,3 
.mob +Un'Goro Thunderer
step
.goto Un'Goro Crater,63.91,16.51,15 >>Enter the cave
.isOnQuest 4243
step
#label Ame
.goto Un'Goro Crater,65.71,16.74,15,0
.goto Un'Goro Crater,66.71,17.30,20,0
.goto Un'Goro Crater,66.66,16.76
>>Talk to |cRXP_FRIENDLY_A-Me 01|r
.turnin 4243 >> Turn in Chasing A-Me 01
.target A-Me 01
step
#loop
.line Un'Goro Crater,68.07,16.02,69.05,17.65,69.43,16.89,68.53,14.47,68.35,12.82,67.27,15.02,66.24,14.47,65.67,14.77,65.67,16.18,64.13,16.42,63.15,17.94,61.68,17.13,64.13,16.42,65.67,16.18,66.71,17.30,68.07,16.02
.goto Un'Goro Crater,68.07,16.02,20,0
.goto Un'Goro Crater,69.05,17.65,20,0
.goto Un'Goro Crater,69.43,16.89,20,0
.goto Un'Goro Crater,68.53,14.47,20,0
.goto Un'Goro Crater,68.35,12.82,20,0
.goto Un'Goro Crater,67.27,15.02,20,0
.goto Un'Goro Crater,66.24,14.47,20,0
.goto Un'Goro Crater,65.67,14.77,20,0
.goto Un'Goro Crater,65.67,16.18,20,0
.goto Un'Goro Crater,64.13,16.42,20,0
.goto Un'Goro Crater,63.15,17.94,20,0
.goto Un'Goro Crater,61.68,17.13,20,0
.goto Un'Goro Crater,64.13,16.42,20,0
.goto Un'Goro Crater,65.67,16.18,20,0
.goto Un'Goro Crater,66.71,17.30,20,0
.goto Un'Goro Crater,68.07,16.02,20,0
>>AoE |cRXP_ENEMY_Un'Goro Gorillas|r, |cRXP_ENEMY_Un'Goro Stompers|r, and |cRXP_ENEMY_Un'Goro Thunderers|r. Loot them for their respective |cRXP_LOOT_Pelts|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Un'Goro Gorillas|r cast|r |T132366:0|t[Call For Help] |cRXP_WARN_ (Aggros nearby allies in a 75 yard radius at <50% health,|r |cRXP_ENEMY_Un'Goro Stompers|r cast|r |T132126:0|t[Enrage] |cRXP_WARN_(increases attack speed and increases melee damage by 70 at <50% health), and |cRXP_ENEMY_Un'Goro Thunderers|r cast|r |T136115:0|t[Shock] |cRXP_WARN_(instantly deals about 350 damage)|r
.complete 4289,1 
.mob +Un'Goro Gorilla
.complete 4289,2 
.mob +Un'Goro Stomper
.complete 4289,3 
.mob +Un'Goro Thunderer
step
#completewith EasternP
+|cRXP_WARN_Be careful of the patrolling |cRXP_ENEMY_Devilsaurs|r in the zone. Avoid them - Run away if you aggro them|r
.unitscan Ironhide Devilsaur
.unitscan Tyrant Devilsaur
.unitscan Devilsaur
.unitscan King Mosh
step
#completewith next
>>AoE |cRXP_ENEMY_Young Diemetradons|r. Loot them for their |cRXP_LOOT_Webbed Diemetradon Scales|r and |cRXP_LOOT_Dinosaur Bones|r
>>AoE |cRXP_ENEMY_Fledgling Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Young Diemetradons|r cast|r |T132109:0|t[Tendon Rip] |cRXP_WARN_B(reduces movespeed by 70% for 8 seconds), and|r |cRXP_ENEMY_Fledgling Pterrordaxes|r cast|r |T132338:0|t[Swoop] |cRXP_WARN_(deals 50 extra damage and stuns for 2 seconds)|r
.complete 4503,1 
.complete 4503,2 
.complete 3882,1 
step
.goto Un'Goro Crater,68.54,36.54
>>Loot the |cRXP_LOOT_Crate of Foodstuffs|r on the ground
.complete 3881,1 
step
#sticky
#label TorwaPouch
>>Open |T133635:0|t[Torwa's Pouch] in your bags. Loot it for the |T133970:0|t[|cRXP_LOOT_Preserved Threshadon Meat|r] and the |T134743:0|t[|cRXP_LOOT_Preserved Pheromone Mixture|r]
.collect 11569,1,4292,1 
.collect 11570,1,4292,1 
.use 11568
step
#completewith next
.goto Un'Goro Crater,76.71,48.78,20,0
.goto Un'Goro Crater,77.15,49.93,15 >>Travel toward the |cRXP_PICK_Eastern Crystal Pylon|r
step
#label EasternP
.goto Un'Goro Crater,77.15,49.93
>>Click the |cRXP_PICK_Eastern Crystal Pylon|r
.complete 4287,1 
.skipgossip
step
#sticky
#label PTMeat
#requires TorwaPouch
.goto Un'Goro Crater,79.93,49.89
.cast 15118 >>Use the |T133970:0|t[|cRXP_LOOT_Preserved Threshadon Meat|r] on the small rock. Then use the |T134743:0|t[|cRXP_LOOT_Preserved Pheromone Mixture|r] on the |T133970:0|t[|cRXP_LOOT_Preserved Threshadon Meat|r] to summon |cRXP_ENEMY_Lar'korwi|r
>>|cRXP_WARN_This has a 5 second cast time|r
.use 11569
.isOnQuest 4292
step
#sticky
#requires PTMeat
.goto Un'Goro Crater,79.93,49.89
.cast 15119 >>Use the |T134743:0|t[|cRXP_LOOT_Preserved Pheromone Mixture|r] on the |T133970:0|t[|cRXP_LOOT_Preserved Threshadon Meat|r] to summon |cRXP_ENEMY_Lar'korwi|r
>>|cRXP_WARN_This has a 5 second cast time|r
.use 11570
.isOnQuest 4292
step
#requires TorwaPouch
.goto Un'Goro Crater,78.17,50.22
>>Kill |cRXP_ENEMY_Lar'korwi|r. Loot him for |cRXP_LOOT_Lar'korwi's Head|r
>>|cRXP_WARN_Be careful as he casts|r |T132109:0|t[Tendon Rip] |cRXP_WARN_B(reduces movespeed by 70% for 8 seconds)|r
.mob Lar'korwi
step
.goto Un'Goro Crater,71.64,75.96
>>Talk to |cRXP_FRIENDLY_Torwa|r
.turnin 4289 >> Turn in The Apes of Un'Goro
.turnin 4292,2 >> Turn in The Bait for Lar'korwi
.target Torwa Pathfinder
step
.goto Un'Goro Crater,58.05,85.76,40,0
.goto Un'Goro Crater,56.59,88.40,40,0
.goto Un'Goro Crater,57.99,91.33,60,0
.goto Un'Goro Crater,57.23,92.75,60,0
.goto Un'Goro Crater,56.41,91.21,60,0
.goto Un'Goro Crater,55.10,86.84,40,0
.goto Un'Goro Crater,51.08,87.05,40,0
.goto Un'Goro Crater,50.43,90.32,60,0
.goto Un'Goro Crater,49.81,87.39,40,0
.goto Un'Goro Crater,45.67,86.99,40,0
.goto Un'Goro Crater,43.48,92.88,60,0
.goto Un'Goro Crater,42.90,90.89,60,0
.goto Un'Goro Crater,43.59,90.21,60,0
.goto Un'Goro Crater,44.12,87.56,40,0
.goto Un'Goro Crater,58.05,85.76,40,0
.goto Un'Goro Crater,56.59,88.40,40,0
.goto Un'Goro Crater,57.99,91.33,60,0
.goto Un'Goro Crater,57.23,92.75,60,0
.goto Un'Goro Crater,56.41,91.21,60,0
.goto Un'Goro Crater,55.10,86.84,40,0
.goto Un'Goro Crater,51.08,87.05,40,0
.goto Un'Goro Crater,50.43,90.32,60,0
.goto Un'Goro Crater,49.81,87.39,40,0
.goto Un'Goro Crater,45.67,86.99,40,0
.goto Un'Goro Crater,43.48,92.88,60,0
.goto Un'Goro Crater,42.90,90.89,60,0
.goto Un'Goro Crater,43.59,90.21,60,0
.goto Un'Goro Crater,44.12,87.56
>>AoE |cRXP_ENEMY_Pterrordax|r. Loot them for |cRXP_LOOT_Webbed Pterrordax Scales|r
>>|cRXP_WARN_Be careful as they cast|r |T136218:0|t[Terrifying Screech]|cRXP_WARN_, (Instantly fearing you for 4 seconds|r
.complete 4501,1,8 
.complete 4503,2 
.disablecheckbox
.mob Pterrordax
step
#completewith next
.goto Un'Goro Crater,50.01,81.12,18 >>Go inside The Slithering Scar
step
.goto Un'Goro Crater,49.77,82.19,15,0
.goto Un'Goro Crater,49.41,83.43,15,0
.goto Un'Goro Crater,49.13,84.47,15,0
.goto Un'Goro Crater,48.67,85.34
>>Use the |T134864:0|t[Unused Scraping Vial] in the middle of the room for the |cRXP_LOOT_Hive Wall Sample|r
.complete 3883,1 
.use 11132
step
#completewith DiemetradonScales
#label ExitScar
>>|cRXP_WARN_Remember to cast|r |T135841:0|t[Ice Block] |cRXP_WARN_if you got the|r |T136066:0|t[Silithid Pox] debuff|r
.goto Un'Goro Crater,50.01,81.12,18 >>Exit The Slithering Scar
step
#completewith MountainShortcut
#requires ExitScar
+|cRXP_WARN_Be careful of the patrolling |cRXP_ENEMY_Devilsaurs|r in the zone. Avoid them - Run away if you aggro them|r
.unitscan Ironhide Devilsaur
.unitscan Tyrant Devilsaur
.unitscan Devilsaur
.unitscan King Mosh
step
#completewith next
>>AoE |cRXP_ENEMY_Pterrordax|r. Loot them for |cRXP_LOOT_Webbed Pterrordax Scales|r
>>|cRXP_WARN_Be careful as they cast|r |T136218:0|t[Terrifying Screech]|cRXP_WARN_, (Instantly fearing you for 4 seconds|r
.complete 4501,1 
.complete 4503,2 
.mob Pterrordax
step
#label DiemetradonScales
#loop
.line Un'Goro Crater,57.90,72.05,58.88,68.96,57.84,64.82,60.78,62.28,61.83,61.29,60.85,60.02,60.52,52.07,58.49,52.43,57.89,50.65,57.04,51.63,58.61,58.24,57.90,61.98,57.03,62.77,56.34,64.11,55.22,59.86,52.24,58.90,51.90,63.21,52.49,67.57,52.78,70.83,49.84,72.51,48.93,69.18,48.95,63.56,48.88,59.77,45.43,61.34,43.85,61.81,46.87,66.49,46.66,70.43,45.77,71.94,43.74,72.16,43.92,66.39,43.32,64.18,43.47,61.09,46.01,60.14
.goto Un'Goro Crater,57.90,72.05,45,0
.goto Un'Goro Crater,58.88,68.96,45,0
.goto Un'Goro Crater,57.84,64.82,45,0
.goto Un'Goro Crater,60.78,62.28,45,0
.goto Un'Goro Crater,61.83,61.29,45,0
.goto Un'Goro Crater,60.85,60.02,45,0
.goto Un'Goro Crater,60.52,52.07,45,0
.goto Un'Goro Crater,58.49,52.43,45,0
.goto Un'Goro Crater,57.89,50.65,45,0
.goto Un'Goro Crater,57.04,51.63,45,0
.goto Un'Goro Crater,58.61,58.24,45,0
.goto Un'Goro Crater,57.90,61.98,45,0
.goto Un'Goro Crater,57.03,62.77,45,0
.goto Un'Goro Crater,56.34,64.11,45,0
.goto Un'Goro Crater,55.22,59.86,45,0
.goto Un'Goro Crater,52.24,58.90,45,0
.goto Un'Goro Crater,51.90,63.21,45,0
.goto Un'Goro Crater,52.49,67.57,45,0
.goto Un'Goro Crater,52.78,70.83,45,0
.goto Un'Goro Crater,49.84,72.51,45,0
.goto Un'Goro Crater,48.93,69.18,45,0
.goto Un'Goro Crater,48.95,63.56,45,0
.goto Un'Goro Crater,48.88,59.77,45,0
.goto Un'Goro Crater,45.43,61.34,45,0
.goto Un'Goro Crater,43.85,61.81,45,0
.goto Un'Goro Crater,46.87,66.49,45,0
.goto Un'Goro Crater,46.66,70.43,45,0
.goto Un'Goro Crater,45.77,71.94,45,0
.goto Un'Goro Crater,43.74,72.16,45,0
.goto Un'Goro Crater,43.92,66.39,45,0
.goto Un'Goro Crater,43.32,64.18,45,0
.goto Un'Goro Crater,43.47,61.09,45,0
.goto Un'Goro Crater,46.01,60.14,45,0
>>AoE |cRXP_ENEMY_Diemetradons|r. Loot them for their |cRXP_LOOT_Webbed Diemetradon Scales|r and |cRXP_LOOT_Dinosaur Bones|r
.complete 4503,1 
.complete 3882,1 
.mob Diemetradon
step
#loop
.line Un'Goro Crater,57.90,72.05,58.88,68.96,57.84,64.82,60.78,62.28,61.83,61.29,60.85,60.02,60.52,52.07,58.49,52.43,57.89,50.65,57.04,51.63,58.61,58.24,57.90,61.98,57.03,62.77,56.34,64.11,55.22,59.86,52.24,58.90,51.90,63.21,52.49,67.57,52.78,70.83,49.84,72.51,48.93,69.18,48.95,63.56,48.88,59.77,45.43,61.34,43.85,61.81,46.87,66.49,46.66,70.43,45.77,71.94,43.74,72.16,43.92,66.39,43.32,64.18,43.47,61.09,46.01,60.14
.goto Un'Goro Crater,57.90,72.05,45,0
.goto Un'Goro Crater,58.88,68.96,45,0
.goto Un'Goro Crater,57.84,64.82,45,0
.goto Un'Goro Crater,60.78,62.28,45,0
.goto Un'Goro Crater,61.83,61.29,45,0
.goto Un'Goro Crater,60.85,60.02,45,0
.goto Un'Goro Crater,60.52,52.07,45,0
.goto Un'Goro Crater,58.49,52.43,45,0
.goto Un'Goro Crater,57.89,50.65,45,0
.goto Un'Goro Crater,57.04,51.63,45,0
.goto Un'Goro Crater,58.61,58.24,45,0
.goto Un'Goro Crater,57.90,61.98,45,0
.goto Un'Goro Crater,57.03,62.77,45,0
.goto Un'Goro Crater,56.34,64.11,45,0
.goto Un'Goro Crater,55.22,59.86,45,0
.goto Un'Goro Crater,52.24,58.90,45,0
.goto Un'Goro Crater,51.90,63.21,45,0
.goto Un'Goro Crater,52.49,67.57,45,0
.goto Un'Goro Crater,52.78,70.83,45,0
.goto Un'Goro Crater,49.84,72.51,45,0
.goto Un'Goro Crater,48.93,69.18,45,0
.goto Un'Goro Crater,48.95,63.56,45,0
.goto Un'Goro Crater,48.88,59.77,45,0
.goto Un'Goro Crater,45.43,61.34,45,0
.goto Un'Goro Crater,43.85,61.81,45,0
.goto Un'Goro Crater,46.87,66.49,45,0
.goto Un'Goro Crater,46.66,70.43,45,0
.goto Un'Goro Crater,45.77,71.94,45,0
.goto Un'Goro Crater,43.74,72.16,45,0
.goto Un'Goro Crater,43.92,66.39,45,0
.goto Un'Goro Crater,43.32,64.18,45,0
.goto Un'Goro Crater,43.47,61.09,45,0
.goto Un'Goro Crater,46.01,60.14,45,0
>>AoE |cRXP_ENEMY_Pterrordax|r. Loot them for |cRXP_LOOT_Webbed Pterrordax Scales|r
>>|cRXP_WARN_Be careful as they cast|r |T136218:0|t[Terrifying Screech]|cRXP_WARN_, (Instantly fearing you for 4 seconds|r
.complete 4501,1 
.complete 4503,2 
.disablecheckbox
.mob Pterrordax
step
#completewith WesternP
>>AoE |cRXP_ENEMY_Frenzied Pterrordax|r. Loot them for |cRXP_LOOT_Webbed Pterrordax Scales|r
>>|cRXP_WARN_Be careful as they cast|r |T132270:0|t[Terrify]|cRXP_WARN_, (Instantly fearing you for 4 seconds|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
.goto Un'Goro Crater,38.46,66.07
>>Loot the |cRXP_PICK_Research Equipment|r on the ground
>>|cRXP_WARN_This has a 5 second cast time|r
.complete 3881,2 
step
#completewith next
.goto Un'Goro Crater,24.81,60.86,40,0
.goto Un'Goro Crater,23.79,60.51,40,0
.goto Un'Goro Crater,23.88,59.18,15 >>Travel toward the |cRXP_PICK_Western Crystal Pylon|r
step
#label WesternP
.goto Un'Goro Crater,23.88,59.18
>>Click the |cRXP_PICK_Western Crystal Pylon|r
.complete 4288,1 
.skipgossip
step
#completewith next
.goto Un'Goro Crater,20.98,61.58,50,0
.goto Un'Goro Crater,20.07,60.10,50,0
.goto Un'Goro Crater,21.16,58.34,50,0
>>AoE |cRXP_ENEMY_Frenzied Pterrordax|r. Loot them for |cRXP_LOOT_Webbed Pterrordax Scales|r
>>|cRXP_WARN_Be careful as they cast|r |T132270:0|t[Terrify]|cRXP_WARN_, (Instantly fearing you for 4 seconds|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
.goto Un'Goro Crater,30.93,50.44
>>Talk to |cRXP_FRIENDLY_Krakle|r
.accept 974 >> Accept Finding the Source
.target Krakle
step
#completewith Source
.goto Un'Goro Crater,29.58,41.97,60,0
.goto Un'Goro Crater,32.06,43.27,60,0
.goto Un'Goro Crater,32.83,41.89,60,0
.goto Un'Goro Crater,34.76,40.31,60,0
.goto Un'Goro Crater,35.70,35.27,60,0
.goto Un'Goro Crater,36.14,32.17,60,0
.goto Un'Goro Crater,38.16,34.46,60,0
.goto Un'Goro Crater,38.07,39.66,60,0
.goto Un'Goro Crater,40.53,38.07,60,0
.goto Un'Goro Crater,41.71,39.18,60,0
.goto Un'Goro Crater,39.91,42.44,60,0
.goto Un'Goro Crater,39.92,45.11,60,0
.goto Un'Goro Crater,40.05,48.33,60,0
.goto Un'Goro Crater,39.08,49.03,60,0
.goto Un'Goro Crater,38.45,50.68,60,0
>>AoE |cRXP_ENEMY_Frenzied Pterrordax|r. Loot them for |cRXP_LOOT_Webbed Pterrordax Scales|r
>>|cRXP_WARN_Be careful as they cast|r |T132270:0|t[Terrify]|cRXP_WARN_, (Instantly fearing you for 4 seconds|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#completewith next
#label MountainShortcut
.goto Un'Goro Crater,46.31,46.15,15,0
.goto Un'Goro Crater,47.08,47.05,12,0
.goto Un'Goro Crater,47.33,47.62,12,0
.goto Un'Goro Crater,47.97,50.06,12,0
.goto Un'Goro Crater,48.21,50.01,10,0
.goto Un'Goro Crater,48.48,50.00,10 >>|cRXP_WARN_Travel up the shortcut up the mountain along the lava path|r
>>|cRXP_WARN_Try to avoid aggroing any of the |cRXP_ENEMY_Scorching Elementals|r, |cRXP_ENEMY_Living Blazes|r, and |cRXP_ENEMY_Blazing Invaders|r as they are|r |T135824:0|t[Fire Immune]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scorching Elementals|r cast|r |T135827:0|t[Scorch] |cRXP_WARN_(Deals about 150 damage) and |cRXP_ENEMY_Blazing Invaders|r cast|r |T135903:0|t[Blast Wave] |cRXP_WARN_(instantly deals about 500 fire damage)|r
step
.goto Un'Goro Crater,49.67,45.65
>>Use |T132995:0|t[Krakle's Thermometer] at the |cRXP_PICK_Fire Plume Ridge Hot Spot|r
>>|cRXP_WARN_This has a 5 second cast time|r
.use 12472
step
#completewith ShizzleEnd
+|cRXP_WARN_Be careful of the patrolling |cRXP_ENEMY_Devilsaurs|r in the zone. Avoid them - Run away if you aggro them|r
.unitscan Ironhide Devilsaur
.unitscan Tyrant Devilsaur
.unitscan Devilsaur
.unitscan King Mosh
step
#label Source
.goto Un'Goro Crater,30.93,50.44
>>Talk to |cRXP_FRIENDLY_Krakle|r
.turnin 974 >> Turn in Finding the Source
.target Krakle
step
.goto Un'Goro Crater,29.58,41.97,60,0
.goto Un'Goro Crater,32.06,43.27,60,0
.goto Un'Goro Crater,32.83,41.89,60,0
.goto Un'Goro Crater,34.76,40.31,60,0
.goto Un'Goro Crater,35.70,35.27,60,0
.goto Un'Goro Crater,36.14,32.17,60,0
.goto Un'Goro Crater,38.16,34.46,60,0
.goto Un'Goro Crater,38.07,39.66,60,0
.goto Un'Goro Crater,40.53,38.07,60,0
.goto Un'Goro Crater,41.71,39.18,60,0
.goto Un'Goro Crater,39.91,42.44,60,0
.goto Un'Goro Crater,39.92,45.11,60,0
.goto Un'Goro Crater,40.05,48.33,60,0
.goto Un'Goro Crater,39.08,49.03,60,0
.goto Un'Goro Crater,38.45,50.68,60,0
>>AoE |cRXP_ENEMY_Frenzied Pterrordax|r. Loot them for |cRXP_LOOT_Webbed Pterrordax Scales|r
>>|cRXP_WARN_Be careful as they cast|r |T132270:0|t[Terrify]|cRXP_WARN_, (Instantly fearing you for 4 seconds|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#loop
.line Un'Goro Crater,57.90,72.05,58.88,68.96,57.84,64.82,60.78,62.28,61.83,61.29,60.85,60.02,60.52,52.07,58.49,52.43,57.89,50.65,57.04,51.63,58.61,58.24,57.90,61.98,57.03,62.77,56.34,64.11,55.22,59.86,52.24,58.90,51.90,63.21,52.49,67.57,52.78,70.83,49.84,72.51,48.93,69.18,48.95,63.56,48.88,59.77,45.43,61.34,43.85,61.81,46.87,66.49,46.66,70.43,45.77,71.94,43.74,72.16,43.92,66.39,43.32,64.18,43.47,61.09,46.01,60.14
.goto Un'Goro Crater,57.90,72.05,45,0
.goto Un'Goro Crater,58.88,68.96,45,0
.goto Un'Goro Crater,57.84,64.82,45,0
.goto Un'Goro Crater,60.78,62.28,45,0
.goto Un'Goro Crater,61.83,61.29,45,0
.goto Un'Goro Crater,60.85,60.02,45,0
.goto Un'Goro Crater,60.52,52.07,45,0
.goto Un'Goro Crater,58.49,52.43,45,0
.goto Un'Goro Crater,57.89,50.65,45,0
.goto Un'Goro Crater,57.04,51.63,45,0
.goto Un'Goro Crater,58.61,58.24,45,0
.goto Un'Goro Crater,57.90,61.98,45,0
.goto Un'Goro Crater,57.03,62.77,45,0
.goto Un'Goro Crater,56.34,64.11,45,0
.goto Un'Goro Crater,55.22,59.86,45,0
.goto Un'Goro Crater,52.24,58.90,45,0
.goto Un'Goro Crater,51.90,63.21,45,0
.goto Un'Goro Crater,52.49,67.57,45,0
.goto Un'Goro Crater,52.78,70.83,45,0
.goto Un'Goro Crater,49.84,72.51,45,0
.goto Un'Goro Crater,48.93,69.18,45,0
.goto Un'Goro Crater,48.95,63.56,45,0
.goto Un'Goro Crater,48.88,59.77,45,0
.goto Un'Goro Crater,45.43,61.34,45,0
.goto Un'Goro Crater,43.85,61.81,45,0
.goto Un'Goro Crater,46.87,66.49,45,0
.goto Un'Goro Crater,46.66,70.43,45,0
.goto Un'Goro Crater,45.77,71.94,45,0
.goto Un'Goro Crater,43.74,72.16,45,0
.goto Un'Goro Crater,43.92,66.39,45,0
.goto Un'Goro Crater,43.32,64.18,45,0
.goto Un'Goro Crater,43.47,61.09,45,0
.goto Un'Goro Crater,46.01,60.14,45,0
.xp 51+89865 >>AoE |cRXP_ENEMY_Diemetradons|r to 89865+/153900xp
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Young Diemetradons|r cast|r |T132109:0|t[Tendon Rip] |cRXP_WARN_B(reduces movespeed by 70% for 8 seconds), and|r |cRXP_ENEMY_Fledgling Pterrordaxes|r cast|r |T132338:0|t[Swoop] |cRXP_WARN_(deals 50 extra damage and stuns for 2 seconds)|r
.mob Diemetradon
step
#completewith next
.goto Un'Goro Crater,46.31,46.15,15,0
.goto Un'Goro Crater,47.08,47.05,12,0
.goto Un'Goro Crater,47.33,47.62,12,0
.goto Un'Goro Crater,47.97,50.06,12,0
.goto Un'Goro Crater,48.21,50.01,10,0
.goto Un'Goro Crater,48.48,50.00,10,0
.goto Un'Goro Crater,51.04,51.59,15,0
.goto Un'Goro Crater,52.37,50.93,20,0
.goto Un'Goro Crater,51.90,49.84,15 >>Travel toward |cRXP_FRIENDLY_Ringo|r
>>|cRXP_WARN_Travel up the shortcut up the mountain along the lava path, then into the cave|r
>>|cRXP_WARN_Try to avoid aggroing any of the |cRXP_ENEMY_Scorching Elementals|r, |cRXP_ENEMY_Living Blazes|r, and |cRXP_ENEMY_Blazing Invaders|r as they are|r |T135824:0|t[Fire Immune]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scorching Elementals|r cast|r |T135827:0|t[Scorch] |cRXP_WARN_(Deals about 150 damage) and |cRXP_ENEMY_Blazing Invaders|r cast|r |T135903:0|t[Blast Wave] |cRXP_WARN_(instantly deals about 500 fire damage)|r
step
.goto Un'Goro Crater,51.90,49.84
>>Talk to |cRXP_FRIENDLY_Ringo|r to start the escort
.turnin 4492 >> Turn in Lost!
.accept 4491 >> Accept A Little Help From My Friends
.target Ringo
step
#completewith UnGoroEnd
.goto Un'Goro Crater,45.40,12.39,50,0
>>|cRXP_WARN_Escort |cRXP_FRIENDLY_Ringo|r back to|r |cRXP_FRIENDLY_Spraggle|r
>>|cRXP_WARN_Ride back on your mount. Keep |cRXP_FRIENDLY_Ringo|r rendered in as to not fail the escort|r
>>|cRXP_WARN_Use|r |T132805:0|t[Spraggle's Canteen] |cRXP_WARN_on |cRXP_FRIENDLY_Ringo|r whenever he falls over|r
.complete 4491,1 
.target Ringo
.target Spraggle Frock
.use 11804
step
#label ShizzleEnd
.goto Un'Goro Crater,44.23,11.58
>>Talk to |cRXP_FRIENDLY_Shizzle|r
.turnin 4503,3 >> Turn in Shizzle's Flyer
.target Shizzle
step
#label UnGoroEnd
>>Talk to |cRXP_FRIENDLY_Spraggle|r, |cRXP_FRIENDLY_Spark|r, |cRXP_FRIENDLY_Hol'anyee|r, and |cRXP_FRIENDLY_Williden|r
.turnin 4491,3 >> Turn in A Little Help From My Friends
.turnin 4501,2 >> Turn in Beware of Pterrordax
.target +Spraggle Frock
.goto Un'Goro Crater,43.61,8.50
.turnin 3882,1 >> Turn in Roll the Bones
.target +Spark Nilminer
.goto Un'Goro Crater,43.50,7.42
.turnin 3883 >> Turn in Alien Ecology
.target +Hol'anyee Marshal
.goto Un'Goro Crater,43.89,7.24
.turnin 3881 >> Turn in Expedition Salvation
.goto Un'Goro Crater,43.95,7.14
.target +Williden Marshal
step
#completewith next
.goto Un'Goro Crater,43.21,5.86,15,0
.goto Un'Goro Crater,43.13,4.58,15,0
.goto Un'Goro Crater,41.72,4.89,15,0
.goto Un'Goro Crater,41.14,3.95,15,0
.goto Un'Goro Crater,41.09,2.97,15,0
.goto Un'Goro Crater,41.92,2.71,15 >>Travel toward |cRXP_FRIENDLY_Collie|r inside the cave
step
.goto Un'Goro Crater,41.92,2.71
>>Talk to |cRXP_FRIENDLY_Collie|r
.turnin 4285 >> Turn in The Northern Pylon
.turnin 4287 >> Turn in The Eastern Pylon
.turnin 4288 >> Turn in The Western Pylon
.accept 4321 >> Accept Making Sense of It
.turnin 4321 >> Turn in Making Sense of It
.target J.D. Collie
step
#completewith TanarisEnd
.hs >> Hearth to Gadgetzan
step
.goto Tanaris,52.63,28.12
>>Talk to |cRXP_FRIENDLY_Dirge|r
>>|cRXP_BUY_Buy some|r |T134712:0|t[Morning Glory Dew] |cRXP_BUY_and|r |T133971:0|t[Roasted Quail] |cRXP_BUY_from him|r
.collect 8766,200,7261,1 
.collect 8952,200,7261,1 
.target Dirge Quikcleave
step
.goto Tanaris,51.81,28.66
>>Talk to |cRXP_FRIENDLY_Marin|r
.turnin 2605 >> Turn in The Thirsty Goblin
.accept 2606 >> Accept In Good Taste
.target Marin Noggenfogger
step
.goto Tanaris,51.47,28.82
>>Talk to |cRXP_FRIENDLY_Krinkle|r
.vendor 5411 >> Vendor Trash. Repair
.target Krinkle Goodsteel
step
#label TanarisEnd
>>Talk to |cRXP_FRIENDLY_Andi|r, |cRXP_FRIENDLY_Tran'rek|r, |cRXP_FRIENDLY_Sprinkle|r, and |cRXP_FRIENDLY_Pestlezugg|r
.turnin 5863,2 >> Turn in The Dunemaul Compound
.target +Andi Lynn
.goto Tanaris,52.82,27.40
.turnin 3362 >> Turn in Thistleshrub Valley
.target +Tran'rek
.goto Tanaris,51.56,26.76
.turnin 2606 >> Turn in In Good Taste
.target +Sprinkle
.goto Tanaris,51.06,26.87
.turnin 82 >> Turn in Noxious Lair Investigation
.goto Tanaris,50.88,26.96
.target +Alchemist Pestlezugg
]]);
