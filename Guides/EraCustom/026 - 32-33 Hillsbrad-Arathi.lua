RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 32-33 Hillsbrad/Arathi
#next 33-34 Thousand Needles
#displayname 31-33 Wetlands/Hillsbrad << sod
step
#xprate >1.99
#optional
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 289 >> Accept The Cursed Crew
.isQuestTurnedIn 288
step
.goto Wetlands,10.828,60.399
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vincent Hyal|r
.turnin 1301 >> Turn in James Hyal
.accept 1302 >> Accept James Hyal
.target Vincent Hyal
step
#xprate >1.99
.goto Wetlands,10.585,60.592
.target Glorin Steelbrow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 270 >> Turn in The Doomed Fleet
.accept 321 >>Accept Lightforge Iron
step
#completewith next
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
>>|cRXP_WARN_Accepting this quest will make |cRXP_ENEMY_Tapoke "Slim" Jahn|r by the Inn entrance|r |T132320:0|t[Stealth] |cRXP_WARN_and run away outside|r
.turnin 1248 >> Turn in The Missing Diplomat
.accept 1249,1 >> Accept The Missing Diplomat
.target Mikhail
.mob Tapoke "Slim" Jahn
step
.goto Wetlands,10.795,59.616
>>|cRXP_WARN_Quickly run outside!|r
>>|cRXP_WARN_Defeat |cRXP_ENEMY_Tapoke "Slim" Jahn|r. |cRXP_ENEMY_Slim's Friend|r will run away once |cRXP_ENEMY_Tapoke "Slim" Jahn|r submits|r
>>|cRXP_WARN_Use any Crowd Control (CC) on |cRXP_ENEMY_Slim's Friend|r if needed|r
.complete 1249,1 
.mob Tapoke "Slim" Jahn
step
#sticky
#label Mead
#completewith Crew
.goto Wetlands,10.69,60.95,0,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
>>|cRXP_BUY_Buy a|r |T132792:0|t[Flagon of Dwarven Honeymead] |cRXP_BUY_from him|r
.collect 2594,1,288,1 
.isQuestAvailable 288
step
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
>>|cRXP_WARN_Wait out the RP|r
.turnin 1249 >> Turn in The Missing Diplomat
.target Mikhail
step
.goto Wetlands,10.545,60.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
.accept 1250 >> Accept The Missing Diplomat
.target Tapoke "Slim" Jahn
step
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1250 >> Turn in The Missing Diplomat
.accept 1264 >> Accept The Missing Diplomat
.target Mikhail
step
#xprate >1.99
#requires Mead
#label Crew
.goto Wetlands,10.89,59.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 288 >> Accept The Third Fleet
.turnin 288 >> Turn in The Third Fleet
.accept 289 >> Accept The Cursed Crew
.target First Mate Fitzsimmons
step
#xprate >1.99
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.accept 281 >> Accept Reclaiming Goods
.isQuestTurnedIn 279
.target Karl Boran
step
#xprate >1.99
#optional
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.turnin 469 >> Turn in Daily Delivery
.target James Halloran
.isOnQuest 469
step
#xprate >1.99
.isQuestTurnedIn 484
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.accept 471 >> Accept Apprentice's Duties
.target James Halloran
step
#xprate >1.99
.isQuestTurnedIn 279
.goto Wetlands,13.513,41.384
>>Click the |cRXP_PICK_Damaged Crate|r on the ground
.turnin 281 >> Turn in Reclaiming Goods
.accept 284 >> Accept The Search Continues
step
#xprate >1.99
.isQuestTurnedIn 281
.goto Wetlands,13.608,38.214
>>Click the |cRXP_PICK_Sealed Barrel|r on the ground
.turnin 284 >> Turn in The Search Continues
.accept 285 >> Accept Search More Hovels
step
#xprate >1.99
.isQuestTurnedIn 284
.goto Wetlands,13.945,34.809
>>Click the |cRXP_PICK_Half-buried Barrel|r on the ground
.turnin 285 >> Turn in Search More Hovels
.accept 286 >> Accept Return the Statuette
step
#xprate >1.99
#loop
.goto Wetlands,14.00,29.80,0
.goto Wetlands,15.03,24.05,0
.goto Wetlands,14.00,29.80,70,0
.goto Wetlands,15.03,24.05,70,0
>>Kill |cRXP_ENEMY_Cursed Sailors|r, |cRXP_ENEMY_Cursed Marines|r and |cRXP_ENEMY_First Mate Snellig|r. Loot him for his |cRXP_LOOT_Snuffbox|r
.complete 289,1 
.mob +Cursed Sailor
.complete 289,2 
.mob +Cursed Marine
.complete 289,3 
.mob +First Mate Snellig
step
#loop
#xprate >1.99
.isOnQuest 471
.goto Wetlands,18.0,27.0,0
.goto Wetlands,22.8,21.8,0
.goto Wetlands,28.0,18.8,0
.goto Wetlands,18.0,27.0,70,0
.goto Wetlands,22.8,21.8,70,0
.goto Wetlands,28.0,18.8,70,0
>>Kill |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Giant Crocolisk Skin|r
.complete 471,1 
.mob Giant Wetlands Crocolisk
step
#xprate >1.99
.isQuestComplete 471
.goto Wetlands,8.54,55.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.turnin 471 >>Turn in Apprentice's Duties
.target James Halloran
step
#xprate >1.99
.isOnQuest 286
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 286 >> Turn in Return the Statuette
.target Karl Boran
step
#xprate >1.99
>>Click the |cRXP_PICK_Waterlogged Chest|r
.goto Wetlands,12.10,64.19
.turnin 321 >>Turn in Lightforge Iron
.accept 324 >>Accept The Lost Ingots
.isQuestTurnedIn 270
step
#xprate >1.99
.goto Wetlands,12.6,65.2,60,0
.goto Wetlands,10.2,71.0,60,0
.goto Wetlands,7.2,72.6,60,0
.goto Wetlands,12.6,65.2
>>Kill |cRXP_ENEMY_Bluegill Raiders|r. Loot them for |cRXP_LOOT_Ingots|r
.complete 324,1 
.mob Bluegill Raider
.isQuestTurnedIn 270
step
#xprate >1.99
.goto Wetlands,10.89,59.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.turnin 289 >> Turn in The Cursed Crew
.accept 290 >> Accept Lifting the Curse
.target First Mate Fitzsimmons
step
#xprate >1.99
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 324 >>Turn in The Lost Ingots
.accept 322 >>Accept Blessed Arm
.target Glorin Steelbrow
step
#xprate >1.99
.goto Wetlands,10.84,55.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harlo Barnaby|r
.accept 472 >> Accept Fall of Dun Modr
.target Harlo Barnaby
step
#xprate >1.99
#label Halyndor
.goto Wetlands,15.984,23.111,25,0
.goto Wetlands,15.44,23.60
>>Run up the rudder of the ship
>>Kill |cRXP_ENEMY_Captain Halyndor|r. Loot him for the |cRXP_LOOT_Strongbox Key|r
>>|cRXP_WARN_Be careful he can cast|r |T136232:0|t[Ward of the Eye]|cRXP_WARN_ making him|r |cRXP_ENEMY_REFLECT SPELLS|r |cRXP_WARN_for 6 seconds|r
.complete 290,1 
.mob Captain Halyndor
step
#xprate >1.99
.goto Wetlands,14.292,23.609,15,0
.goto Wetlands,14.381,24.047
>>Enter through the large hole on the side of the ship
>>Click |cRXP_PICK_Intrepid's Locked Strongbox|r on the ground
.turnin 290 >>Turn in Lifting the Curse
.accept 292 >>Accept The Eye of Paleth
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r and |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 472 >>Turn in Fall of Dun Modr
.goto Wetlands,49.803,18.257
.accept 631 >>Accept The Thandol Span
.goto Wetlands,49.908,18.233
.target Longbraid the Grim
.target Rhag Garmason
step
#xprate >1.99
.group 3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r and |cRXP_FRIENDLY_Longbraid the Grim|r
.accept 303 >> Accept The Dark Iron War
.target +Motley Garmason
.goto Wetlands,49.665,18.231
.accept 304 >> Accept A Grim Task
.target +Longbraid the Grim
.goto Wetlands,49.803,18.257
step
#xprate >1.99
.group 3
#completewith next
.goto Wetlands,62.48,28.41,40,0
.goto Wetlands,61.83,26.27,40,0
.goto Wetlands,60.01,24.35,40,0
.goto Wetlands,62.48,28.41
>>Kill |cRXP_ENEMY_Dark Iron Dwarves|r, |cRXP_ENEMY_Dark Iron Tunnelers|r, |cRXP_ENEMY_Dark Iron Saboteurs|r and |cRXP_ENEMY_Dark Iron Demolitionists|r
>>|cRXP_ENEMY_Dark Iron Saboteurs|r |cRXP_WARN_will cast|r |T135826:0|t[Sapper Explode] |cRXP_WARN_as they die which deals Fire damage in close proximity|r
>>|cRXP_ENEMY_Dark Iron Demolitionists|r |cRXP_WARN_will continously throw|r |T135826:0|t[Bombs] |cRXP_WARN_from range|r
.complete 303,1 
.mob +Dark Iron Dwarf
.complete 303,2 
.mob +Dark Iron Tunneler
.complete 303,3 
.mob +Dark Iron Saboteur
.complete 303,4 
.mob +Dark Iron Demolitionist
step
#xprate >1.99
.group 3
.goto Wetlands,62.48,28.41
>>Kill |cRXP_ENEMY_Balgaras the Foul|r. Loot him for his |cRXP_LOOT_Ear|r
.complete 304,1 
.mob Balgaras the Foul
step
#xprate >1.99
.group 3
.goto Wetlands,62.48,28.41,40,0
.goto Wetlands,61.83,26.27,40,0
.goto Wetlands,60.01,24.35,40,0
.goto Wetlands,62.48,28.41
>>Kill |cRXP_ENEMY_Dark Iron Dwarves|r, |cRXP_ENEMY_Dark Iron Tunnelers|r, |cRXP_ENEMY_Dark Iron Saboteurs|r and |cRXP_ENEMY_Dark Iron Demolitionists|r
>>|cRXP_ENEMY_Dark Iron Saboteurs|r |cRXP_WARN_will cast|r |T135826:0|t[Sapper Explode] |cRXP_WARN_as they die which deals Fire damage in close proximity|r
>>|cRXP_ENEMY_Dark Iron Demolitionists|r |cRXP_WARN_will continously throw|r |T135826:0|t[Bombs] |cRXP_WARN_from range|r
.complete 303,1 
.mob +Dark Iron Dwarf
.complete 303,2 
.mob +Dark Iron Tunneler
.complete 303,3 
.mob +Dark Iron Saboteur
.complete 303,4 
.mob +Dark Iron Demolitionist
step
#xprate >1.99
.group
.goto Wetlands,49.665,18.231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r
.turnin 303 >> Turn in The Dark Iron War
.target Motley Garmason
.isQuestComplete 303
step
#xprate >1.99
.group
.goto Wetlands,49.803,18.257
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
.turnin 304 >> Turn in A Grim Task
.target Longbraid the Grim
.isQuestComplete 304
step
#xprate >1.99
.goto Wetlands,51.481,8.111,15,0
.goto Wetlands,51.115,8.156,15,0
.goto Wetlands,51.287,7.953
>>Click on |cRXP_PICK_Ebenezer Rustlocke's Corpse|r
>>|cRXP_WARN_Ensure you are on full HP before going down the Spiral Staircase. There are 2 Elite |cRXP_ENEMY_Dark Iron Sabotuers|r. Cast any crowd-control abilities on them when once you go down and then run past them. Run back up and out after|r
.turnin 631 >>Turn in The Thandol Span
.accept 632 >>Accept The Thandol Span
.link https://youtu.be/awe7f-iI-ic >>|cRXP_WARN_Click here for a video guide|r
step
#xprate >1.99
.goto Wetlands,49.908,18.233
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 632 >>Turn in The Thandol Span
.accept 633 >>Accept The Thandol Span
.target Rhag Garmason
step
#xprate >1.99
.goto Arathi Highlands,43.240,92.643
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foggy MacKreel|r
>>|cRXP_WARN_Jump down onto the invisible chain first, then onto the broken beam on the bridge. All classes are able to do this jump. If you are unable to do it, skip this step|r
.accept 647 >>Accept MacKreel's Moonshine
.target Foggy MacKreel
.link https://youtu.be/YZn1Uy47cb8 >>|cRXP_WARN_Click here for a video guide|r
step
#xprate >1.99
.goto Arathi Highlands,44.28,92.877
>>Dive down underwater
>>Open the |cRXP_PICK_Waterlogged Letter|r. Loot it for the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r]
>>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r] to start the quest|r
.collect 4433,1,637
.use 4433
.accept 637 >>Accept Sully Balloo's Letter
step
#xprate >1.99
#completewith PleaTurnin
.goto Arathi Highlands,52.5,90.4,30 >>Swim east toward the ramp here
step
#xprate >1.99
.goto Arathi Highlands,48.789,88.058
>>Click the |cRXP_PICK_Cache of Explosives|r
.complete 633,1 
step
#xprate >1.99
#label PleaTurnin
.goto Wetlands,49.908,18.233
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 633 >>Turn in The Thandol Span
.accept 634 >>Accept Plea To The Alliance
.target Rhag Garmason
step
#xprate >1.99
#completewith next
.goto Arathi Highlands,45.83,47.55,150 >> Travel to Refuge Point
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.goto Arathi Highlands,45.83,47.55
.turnin 634 >>Turn in Plea To The Alliance
.target Captain Nials
step
#xprate >1.99
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.turnin 690 >> Turn in Malin's Request
.isOnQuest 690
.target Skuerto
step
#xprate >1.99
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.goto Arathi Highlands,45.73,46.09
.fp Arathi >> Get the Arathi Highlands Flight Path
.target Cedrik Prose
step 
#xprate >1.99
#softcore
>>Travel to the basement in the Southshore Inn. If you fail the timed quest, abandon it and skip this step
>>If you die, the quest will fail
.goto Arathi Highlands,19.72,29.04,150,0
.goto Hillsbrad Foothills,50.71,58.76,15,0
.goto Hillsbrad Foothills,52.09,58.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmeister Bilger|r
.turnin 647 >>Turn in MacKreel's Moonshine
.target Brewmeister Bilger
step 
#xprate >1.99
#hardcore
>>Travel to the basement in the Southshore Inn. If you fail the timed quest, abandon it and skip this step
.goto Arathi Highlands,19.72,29.04,150,0
.goto Hillsbrad Foothills,50.71,58.76,15,0
.goto Hillsbrad Foothills,52.09,58.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmeister Bilger|r
.turnin 647 >>Turn in MacKreel's Moonshine
.target Brewmeister Bilger
step
#xprate >1.99
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.accept 536 >> Accept Down the Coast
.target Lieutenant Farren Orinelle
step
#xprate <1.99
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Southshore>> Fly to Southshore
.target Shellei Brondir
step
#completewith LeaveSS
>>|cRXP_WARN_The |cRXP_ENEMY_Shadowy Assassin|r attack on Southshore is a random event|r
>>If you ever see a |cRXP_ENEMY_Shadowy Assassin|r in Southshore, kill them. Loot them for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] to start the quest|r
>>|cRXP_WARN_Skip this step if you don't see the event|r
.collect 3668,1,522
.use 3668
.accept 522 >> Accept Assassin's Contract
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,52.421,55.964
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darren Malvew|r
.accept 564 >> Accept Costly Menace
.target Darren Malvew
step
.isOnQuest 538
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 538 >> Turn in Southshore
.target Loremaster Dibbs
step
#xprate <1.99 << !Hunter
.goto Hillsbrad Foothills,50.344,59.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
.accept 659 >> Accept Hints of a New Plague?
.target Phin Odelic
step
#xprate <1.99
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.accept 536 >> Accept Down the Coast
.target Lieutenant Farren Orinelle
step
#xprate <1.99
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Anderson|r
.home >> Set your Hearthstone to Southshore
.target Innkeeper Anderson
step
.goto Hillsbrad Foothills,48.8,64.4,50,0
.goto Hillsbrad Foothills,45.8,63.6,50,0
.goto Hillsbrad Foothills,44.14,67.45,50,0
.goto Hillsbrad Foothills,40.51,69.30,50,0
.goto Hillsbrad Foothills,36.09,69.50,50,0
.goto Hillsbrad Foothills,44.69,67.24
>>Kill |cRXP_ENEMY_Torn Fin Tidehunters|r and |cRXP_ENEMY_Torn Fin Oracles|r
.complete 536,1 
.mob +Torn Fin Tidehunter
.complete 536,2 
.mob +Torn Fin Oracle
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 536 >> Turn in Down the Coast
.accept 559 >> Accept Farren's Proof
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,48.8,64.4,50,0
.goto Hillsbrad Foothills,45.8,63.6,50,0
.goto Hillsbrad Foothills,44.14,67.45,50,0
.goto Hillsbrad Foothills,40.51,69.30,50,0
.goto Hillsbrad Foothills,36.09,69.50,50,0
.goto Hillsbrad Foothills,44.69,67.24,50,0
.goto Hillsbrad Foothills,33.19,69.10,50,0
.goto Hillsbrad Foothills,31.47,72.51,50,0
.goto Hillsbrad Foothills,28.81,73.18,50,0
.goto Hillsbrad Foothills,24.84,70.21,50,0
.goto Hillsbrad Foothills,33.19,69.10
>>Kill |cRXP_ENEMY_Torn Fin Tidehunters|r, |cRXP_ENEMY_Torn Fin Oracles|r, |cRXP_ENEMY_Torn Fin Coastrunners|r and |cRXP_ENEMY_Torn Fin Muckdwellers|r. Loot them for their |cRXP_LOOT_Heads|r
.complete 559,1 
.mob Torn Fin Muckdweller
.mob Torn Fin Coastrunner
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 559 >> Turn in Farren's Proof
.accept 560 >> Accept Farren's Proof
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 560 >> Turn in Farren's Proof
.accept 561 >> Accept Farren's Proof
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.accept 505 >> Accept Syndicate Assassins
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
>>|cRXP_WARN_Don't accept the follow up|r
.turnin 522 >> Turn in Assassin's Contract
.isOnQuest 522
.target Magistrate Henry Maleb
step
#label LeaveSS
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 561 >> Turn in Farren's Proof
.accept 562 >> Accept Stormwind Ho!
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,52.97,64.67,60,0
.goto Hillsbrad Foothills,55.32,63.35,60,0
.goto Hillsbrad Foothills,58.35,66.37,60,0
.goto Hillsbrad Foothills,59.55,73.43,60,0
.goto Hillsbrad Foothills,56.97,67.01
>>Kill |cRXP_ENEMY_Daggerspine Sirens|r and |cRXP_ENEMY_Daggerspine Shorehunters|r
>>|cRXP_WARN_You may need to swim out in the water for them|r
.complete 562,1 
.mob +Daggerspine Shorehunter
.complete 562,2 
.mob +Daggerspine Siren
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 562 >> Turn in Stormwind Ho!
.accept 563 >> Accept Reassignment
.target Lieutenant Farren Orinelle
step
#label start
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
>>|cRXP_BUY_Buy 4|r |T134059:0|t[Soothing Spices] |cRXP_BUY_and 1|r |T132912:0|t[Fine Thread] |cRXP_BUY_from him|r
.collect 3713,4,1218,1 
.collect 2321,1 
.target Micha Yance
.itemcount 3719,1 
.itemcount 2997,1 
step
#label start
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
>>|cRXP_BUY_Buy 4|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from him|r
.collect 3713,4,1218,1 
.target Micha Yance
.itemcount 3719,<1 
.itemcount 2997,<1 
step << Hunter
.goto Hillsbrad Foothills,49.0,55.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarah Raycroft|r upstairs
.vendor >> |cRXP_BUY_Restock on|r |T132382:0|t[Razor Arrows] |cRXP_BUY_if necessary|
.target Sarah Raycroft
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fp Southshore >>Get the Southshore Flight Path
.target Darla Harris
step
#era/som
.goto Hillsbrad Foothills,49.431,55.534
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartolo Ginsetti|r
.accept 565 >> Accept Bartolo's Yeti Fur Cloak
.itemcount 3719,1 
.itemcount 2997,1 
.target Bartolo Ginsetti
step
#xprate <1.99
#era/som
.isOnQuest 689
#completewith next
.goto Hillsbrad Foothills,45.46,31.25,40 >> Enter the Darrow Hill Yeti Cave
step
#xprate <1.99
#era/som
#completewith next
.isOnQuest 565
>>Kill |cRXP_ENEMY_Yetis|r. Loot them for their |cRXP_LOOT_Fur|r
.complete 565,4 
.mob Cave Yeti
.mob Ferocious Yeti
.mob Mountain Yeti
.mob Giant Yeti
.itemcount 3719,1 
.itemcount 2997,1 
step
#xprate <1.99
#era/som
.isOnQuest 689
.goto Hillsbrad Foothills,44.36,26.48,50,0
.goto Hillsbrad Foothills,42.13,32.80,50,0
.goto Hillsbrad Foothills,44.49,29.74
>>Loot the |cRXP_LOOT_Alterac Granite|r on the ground
>>|cRXP_LOOT_Alterac Granite|r |cRXP_WARN_spawns throughout the entire Cave|r
.complete 689,1 
step
#era/som
.isOnQuest 565
.goto Hillsbrad Foothills,44.36,26.48,50,0
.goto Hillsbrad Foothills,42.13,32.80,50,0
.goto Hillsbrad Foothills,44.49,29.74
.goto Alterac Mountains,41.6,65.0,0
.goto Alterac Mountains,36.6,70.6,0
.goto Alterac Mountains,31.2,52.8,0
>>Kill |cRXP_ENEMY_Yeti's|r. Loot them for their |cRXP_LOOT_Fur|r
>>|cRXP_WARN_If all of the |cRXP_ENEMY_Yeti's|r are dead inside of the cave you may kill the |cRXP_ENEMY_Yeti's|r to the north around Alterac Mountains as well|r
.complete 565,4 
.mob Cave Yeti
.mob Ferocious Yeti
.mob Mountain Yeti
.mob Giant Yeti
.itemcount 3719,1 
.itemcount 2997,1 
step
.goto Alterac Mountains,34.3,83.5,50 >> Head to the Alterac Mountains hill located furthest west
step
#completewith FinishSyndicate
.goto Alterac Mountains,30.92,84.58,0,0
>>Kill |cRXP_ENEMY_Mountain Lions|r and |cRXP_ENEMY_Hulking Mountain Lions|r
>>|cRXP_WARN_Check the westernmost hill for all spawns before you head east, kill all|r |cRXP_ENEMY_Hulking Mountain Lions|r |cRXP_WARN_you see as the objective is hard to complete if you skip mobs|r
.complete 564,1 
.mob +Mountain Lion
.complete 564,2 
.mob +Hulking Mountain Lion
step
#completewith next
>>Kill |cRXP_ENEMY_Syndicate Thieves|r and |cRXP_ENEMY_Syndicate Footpads|r
>>|cRXP_WARN_Kill all|r |cRXP_ENEMY_Syndicate|r |cRXP_WARN_mobs you see in the camp on the hill west of the road. This quest objective may be hard to complete if you skip mobs and you'd have to backtrack|r
.complete 505,1 
.mob +Syndicate Footpad
.complete 505,2 
.mob +Syndicate Thief
step
.goto Alterac Mountains,58.317,67.951
>>Click the |cRXP_PICK_Syndicate Documents|r on the table
.accept 510 >> Accept Foreboding Plans
.accept 511 >> Accept Encrypted Letter
step
#label FinishSyndicate
>>Kill |cRXP_ENEMY_Syndicate Thieves|r and |cRXP_ENEMY_Syndicate Footpads|r
.goto Alterac Mountains,58.31,67.92,90,0
.goto Alterac Mountains,48.0,82.0,90,0
.goto Alterac Mountains,58.31,67.92
.goto Alterac Mountains,48.0,82.0,0
.complete 505,1 
.mob +Syndicate Footpad
.complete 505,2 
.mob +Syndicate Thief
step
.goto Alterac Mountains,48.01,77.01,65,0
.goto Alterac Mountains,44.03,78.36,65,0
.goto Alterac Mountains,38.54,87.49,65,0
.goto Alterac Mountains,38.78,91.07,65,0
.goto Alterac Mountains,33.67,83.36,65,0
.goto Alterac Mountains,30.68,85.06,65,0
.goto Alterac Mountains,38.78,91.07
>>Finish off kiling |cRXP_ENEMY_Mountain Lions|r keep killing any |cRXP_ENEMY_Hulking Mountain Lions|r you see
.complete 564,1 
.mob +Mountain Lion
.complete 564,2 
.disablecheckbox
.mob Hulking Mountain Lion
step
#xprate <1.2
.goto Alterac Mountains,71.4,68.6
.goto Alterac Mountains,75.1,64.4,0
.goto Alterac Mountains,78.7,61.2,0
.goto Alterac Mountains,80.8,55.7,0
.goto Alterac Mountains,83.1,52.2,0
.goto Alterac Mountains,69.8,73.7,0
.goto Alterac Mountains,68.2,77.1,0
.goto Alterac Mountains,69.7,72.7,0
>>Kill |cRXP_ENEMY_Snapjaws|r. Loot them for their |cRXP_LOOT_Turtle Meat|r
>>|cRXP_WARN_Go up and down along the River until you've completed it|r
>>|cRXP_WARN_Be careful not to run into|r |cRXP_ENEMY_Narillasanz|r |cRXP_WARN_a level 44 elite red dragon that may be patroling around the area|r
.unitscan Narillasanz
.collect 3712,10,555,1
.mob Snapjaw
step
.goto Alterac Mountains,78.4,48.1
.goto Alterac Mountains,78.1,52.2,0
.goto Alterac Mountains,79.8,50.2,0
.goto Alterac Mountains,64.6,38.3,0
.goto Alterac Mountains,61.8,35.7,0
>>Finish off kiling |cRXP_ENEMY_Hulking Mountain Lions|r. If there's not enough spawns to complete the objective you can find more in the area north of Strahnbrad
>>|cRXP_WARN_Be careful not to run into|r |cRXP_ENEMY_Narillasanz|r |cRXP_WARN_a level 44 elite red dragon that may be patroling around the area|r
.complete 564,2 
.mob Hulking Mountain Lion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.goto Western Plaguelands,42.924,85.061
.fp Chillwind>> Get the Western Plaguelands Flight Path
.target Bibilfaz Featherwhistle
step
#completewith letter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.goto Western Plaguelands,42.924,85.061
.fly Southshore>> Fly to Southshore
.target Bibilfaz Featherwhistle
step
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
>>|cRXP_BUY_Buy 1|r |T132912:0|t[Fine Thread] |cRXP_BUY_from him|r
.collect 2321,1,565,1 
.itemcount 2997,1 
.itemcount 3719,1 
.itemcount 3720,10 
.target Micha Yance
step
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
>>|cRXP_BUY_Buy 1|r |T134059:0|t[Soothing Spice] |cRXP_BUY_from him|r
.collect 3713,1,555,1 
.target Micha Yance
step
.isQuestComplete 565
.goto Hillsbrad Foothills,49.431,55.534
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartolo Ginsetti|r
.turnin 565 >> Turn in Bartolo's Yeti Fur Cloak
.target Bartolo Ginsetti
step
#label letter
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 511 >> Turn in Encrypted Letter
.accept 514 >> Accept Letter to Stormpike
.target Loremaster Dibbs
step
#xprate <1.2
.goto Hillsbrad Foothills,51.885,58.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
.accept 555 >> Accept Soothing Turtle Bisque
.turnin 555 >> Turn in Soothing Turtle Bisque
.target Chef Jessen
.itemcount 3712,10 
step
#xprate >1.19
#ah
.goto Hillsbrad Foothills,51.885,58.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
.accept 555 >> Accept Soothing Turtle Bisque
.turnin 555 >> Turn in Soothing Turtle Bisque
.target Chef Jessen
.itemcount 3712,10
step << Hunter
#xprate >1.99
#completewith fly2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley|r
.goto Hillsbrad Foothills,50.415,58.803
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Plains Creeper|r shortly
.target Wesley
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 505 >> Turn in Syndicate Assassins
.turnin 510 >> Turn in Foreboding Plans
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,52.421,55.964
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darren Malvew|r
.turnin 564 >> Turn in Costly Menace
.target Darren Malvew
step
#xprate <1.99 << !Hunter
#label fly2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>> Fly to Arathi Highlands
.target Darla Harris
.zoneskip Arathi Highlands
step << Hunter
#xprate >1.99
#label courierhunter
.goto Arathi Highlands,41.6,47.8,0
.goto Arathi Highlands,41.8,58.6,0
.goto Arathi Highlands,49.0,50.2,0
.goto Arathi Highlands,41.6,47.8,40,0
.goto Arathi Highlands,41.8,58.6,40,0
.goto Arathi Highlands,49.0,50.2,40,0
.goto Arathi Highlands,48.0,58.6
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find a |cRXP_ENEMY_Plains Creeper|r. Some of their locations are marked on your map|r
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Plains Creeper|r to tame it|r 
.train 17265 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 5)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.unitscan Plains Creeper
step
#xprate <1.99
#era/som
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
>>|cRXP_WARN_While on the flight path try to see if you fly over the|r |cRXP_ENEMY_Forsaken Courier|r|cRXP_WARN_. It travels the road from Go'shek farm to Tarren Mill. Knowing where it is will be useful for a quest soon|r
.accept 681 >> Accept Northfold Manor
.target Captain Nials
.unitscan Forsaken Courier
step
#xprate <1.99
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.turnin 690 >> Turn in Malin's Request
.isOnQuest 690
.target Skuerto
step
#xprate <1.99 << !Hunter
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 659 >> Turn in Hints of a New Plague?
.accept 658 >> Accept Hints of a New Plague?
.target Quae
step
#xprate <1.99
#completewith Northfold
.goto Arathi Highlands,25.68,59.45,15,0
.goto Arathi Highlands,23.76,60.26,15,0
.goto Arathi Highlands,23.76,58.39,35,0
.goto Arathi Highlands,26.966,58.834
>>|cRXP_WARN_Travel to Stromgarde Keep to further train your|r |T135966:0|t[First Aid]
>>|cRXP_WARN_Follow the Arrow very closely once you are inside, as there are a lot of Elite mobs in the Keep|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deneb Walker|r
>>|cRXP_BUY_Buy the|r |T133740:0|t[Expert First Aid - Under Wraps]|cRXP_BUY_,|r |T133735:0|t[Manual: Heavy Silk Bandage] |cRXP_BUY_and|r |T133735:0|t[Manual: Mageweave Bandage] |cRXP_BUY_from him|r
>>|cRXP_FRIENDLY_Deneb Walker|r |cRXP_WARN_also has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_WARN_and|r |T134851:0|t|T134831:0|t[Potions] |cRXP_WARN_as well which you should buy|r << !Warrior !Rogue
>>|cRXP_FRIENDLY_Deneb Walker|r |cRXP_WARN_also has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_WARN_and|r |T134831:0|t[Potions] |cRXP_WARN_as well which you should buy|r << Warrior Rogue
.collect 16084,1 
.collect 16112,1 
.collect 16113,1 
.skill firstaid,151,1 
.target Deneb Walker
step
#xprate <1.99
#completewith courier << !Hunter
#completewith courierhunter << Hunter
.goto Arathi Highlands,60.67,60.98
.goto Hillsbrad Foothills,59.7,20.2,0
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>Kill the |cRXP_ENEMY_Forsaken Courier|r. Loot her for her |cRXP_LOOT_Sealed Folder|r
>>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r spawns next to the Apothecary's hut in Go'shek farm (marked on your map) and walks all the way to Tarren Mill where it despawns.|r
>>|cRXP_WARN_It respawns about every 7 minutes after being killed or reaching Tarren Mill|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find the|r |cRXP_ENEMY_Forsaken Courier|r << Hunter
>>|cRXP_WARN_If you can't see them in Arathi, look for them in Hillsbrad after finishing Northfold Manor|r << Hunter
.complete 658,1 
.unitscan Forsaken Courier
step
#xprate <1.99
#era/som
#label Northfold
.goto Arathi Highlands,33.26,32.60,50,0
.goto Arathi Highlands,30.38,30.68,50,0
.goto Arathi Highlands,31.46,25.36,50,0
.goto Arathi Highlands,33.87,29.13,50,0
.goto Arathi Highlands,31.13,29.47
>>Kill |cRXP_ENEMY_Syndicate Mercenaries|r and |cRXP_ENEMY_Syndicate Highwaymen|r
>>|cRXP_WARN_Be aware |cRXP_ENEMY_Syndicate Highwaymen|r are in|r |T132320:0|t[Stealth] |cRXP_WARN_and can be found around the perimiter of Northfold Manor|r
>>|cRXP_WARN_Cast|r |T136090:0|t[Perception] |cRXP_WARN_to help spot|r |cRXP_ENEMY_Syndicate Highwaymen|r << Human
.complete 681,1 
.mob +Syndicate Highwayman
.complete 681,2 
.mob +Syndicate Mercenary
step << Hunter
#xprate <1.99
#completewith next
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r
step << Hunter
#xprate <1.99
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley|r
.goto Hillsbrad Foothills,50.415,58.803
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Plains Creeper|r shortly
.target Wesley
step << Hunter
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>> Fly to Arathi Highlands
.target Darla Harris
step << Hunter
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Targot Jinglepocket|r
.goto Arathi Highlands,46.4,45.6
.vendor >> |cRXP_BUY_Buy up to a stack of|r |T133969:0|t[Wild Hog Shank] |cRXP_BUY_to serve as pet food|r
.target Targot Jinglepocket
step
#xprate <1.99
#era/som
#label courier
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 681 >> Turn in Northfold Manor
.target Captain Nials
step << Hunter
#xprate <1.99
#label courierhunter
.goto Arathi Highlands,41.6,47.8,0
.goto Arathi Highlands,41.8,58.6,0
.goto Arathi Highlands,49.0,50.2,0
.goto Arathi Highlands,41.6,47.8,40,0
.goto Arathi Highlands,41.8,58.6,40,0
.goto Arathi Highlands,49.0,50.2,40,0
.goto Arathi Highlands,48.0,58.6
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find a |cRXP_ENEMY_Plains Creeper|r. Some of their locations are marked on your map|r
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Plains Creeper|r to tame it|r 
.train 17265 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 5)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.unitscan Plains Creeper
step
#xprate <1.99
.isQuestComplete 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
>>|cRXP_WARN_Don't go out of your way to find the |cRXP_ENEMY_Forsaken Courier|r. You can skip this step and finish it later|r
.turnin 658 >> Turn in Hints of a New Plague?
.target Quae
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << !Hunter
#xprate <1.99
#completewith next
.hs >> Hearth to Southshore if you are far away from the Flight Path
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r or |cRXP_FRIENDLY_Cedrik Prose|r << !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r << Hunter
.goto Hillsbrad Foothills,49.338,52.272,-1
.goto Arathi Highlands,45.73,46.09,-1
.fly Wetlands >> Fly to Wetlands
.target Darla Harris << !Hunter
.target Cedrik Prose
step << !Mage
#xprate >1.99
.hs >> Hearth to Ironforge
.zoneskip Ironforge
step << Mage
#xprate >1.99
.zone Ironforge >> Teleport to Ironforge
step
#xprate >1.99
.goto Ironforge,63.50,67.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Balloo|r
.turnin 637 >> Turn in Sully Balloo's Letter
.timer 17,Sully Balloo's Letter RP
.accept 683 >> Accept Sara Balloo's Plea
.target Sara Balloo
step << Hunter/Warrior
#xprate >1.99
#completewith flyif
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.goto Ironforge,74.645,11.742
.turnin 514 >>Turn in Letter to Stormpike
.target Prospector Stormpike
.isOnQuest 514
step << Warlock
#xprate >1.99
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.acceptmultiple 4736,4738 >> Accept In Search of Menara Voidrender
.target Briarthorn
step << Warlock/Rogue
#xprate >1.99
#completewith flyif
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,50.343,5.657 << Warlock
.trainer >> Train your class spells
.target Fenthwick << Rogue
.target Briarthorn << Warlock
step
#xprate >1.99
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.turnin 683 >> Turn in Sara Balloo's Plea
.accept 686 >> Accept A King's Tribute
.target King Magni Bronzebeard
step << Priest/Paladin
#xprate >1.99
#completewith flyif
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Toldren Deepiron << Priest
.target Brandur Ironhammer << Paladin
step
#xprate >1.99
.goto Ironforge,39.03,88.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.turnin 686 >> Turn in A King's Tribute
step
#label flyif
#xprate >1.99
.goto Ironforge,55.51,47.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Wetlands>> Fly to Wetlands
.target Gryth Thurden
.zoneskip Wetlands
step
#xprate >1.99
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 292 >>Turn in The Eye of Paleth
.accept 293 >>Accept Cleansing the Eye
.target Glorin Steelbrow
]]);
