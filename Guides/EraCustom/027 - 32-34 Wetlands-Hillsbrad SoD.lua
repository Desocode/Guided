RXPGuides.RegisterGuide([[
#version 23
#season 2
#group RestedXP Alliance 30-40
#classic
#tbc
#mop
<< Alliance
#name 32-34 Wetlands/Hillsbrad SoD
#displayname 32-34 Wetlands/Hillsbrad
#next 34-36 Thousand Needles SoD
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
.goto Wetlands,10.69,60.95,0,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
>>|cRXP_BUY_Buy a|r |T132792:0|t[Flagon of Dwarven Honeymead] |cRXP_BUY_from him|r
.collect 2594,1,288,1 
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
.goto Wetlands,10.89,59.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 288 >> Accept The Third Fleet
.turnin 288 >> Turn in The Third Fleet
.target First Mate Fitzsimmons
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
.goto Wetlands,49.665,18.231
.accept 304 >> Accept A Grim Task
.goto Wetlands,49.803,18.257
.target Motley Garmason
.target Longbraid the Grim
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
.complete 303,2 
.complete 303,3 
.complete 303,4 
.mob Dark Iron Dwarf
.mob Dark Iron Tunneler
.mob Dark Iron Saboteur
.mob Dark Iron Demolitionist
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
.complete 303,2 
.complete 303,3 
.complete 303,4 
.mob Dark Iron Dwarf
.mob Dark Iron Tunneler
.mob Dark Iron Saboteur
.mob Dark Iron Demolitionist
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
.link https://youtu.be/EmcLDfGL_xg >>|cRXP_WARN_Click here for a video guide|r
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
#xprate <1.99
.goto Hillsbrad Foothills,48.8,64.4,50,0
.goto Hillsbrad Foothills,45.8,63.6,50,0
.goto Hillsbrad Foothills,44.14,67.45,50,0
.goto Hillsbrad Foothills,40.51,69.30,50,0
.goto Hillsbrad Foothills,36.09,69.50,50,0
.goto Hillsbrad Foothills,44.69,67.24
>>Kill |cRXP_ENEMY_Torn Fin Tidehunters|r and |cRXP_ENEMY_Torn Fin Oracles|r
.complete 536,1 
.complete 536,2 
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
step
#xprate <1.99
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 536 >> Turn in Down the Coast
.accept 559 >> Accept Farren's Proof
.target Lieutenant Farren Orinelle
step
#xprate <1.99
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
#xprate <1.99
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 559 >> Turn in Farren's Proof
.accept 560 >> Accept Farren's Proof
.target Lieutenant Farren Orinelle
step
#xprate <1.99
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 560 >> Turn in Farren's Proof
.accept 561 >> Accept Farren's Proof
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
>>|cRXP_WARN_Don't accept the follow up|r
.turnin 522 >> Turn in Assassin's Contract
.isOnQuest 522
.target Magistrate Henry Maleb
step
#xprate <1.99
#label LeaveSS
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 561 >> Turn in Farren's Proof
.accept 562 >> Accept Stormwind Ho!
.target Lieutenant Farren Orinelle
step
#xprate <1.99
.goto Hillsbrad Foothills,52.97,64.67,60,0
.goto Hillsbrad Foothills,55.32,63.35,60,0
.goto Hillsbrad Foothills,58.35,66.37,60,0
.goto Hillsbrad Foothills,59.55,73.43,60,0
.goto Hillsbrad Foothills,56.97,67.01
>>Kill |cRXP_ENEMY_Daggerspine Sirens|r and |cRXP_ENEMY_Daggerspine Shorehunters|r
>>|cRXP_WARN_You may need to swim out in the water for them|r
.complete 562,1 
.complete 562,2 
.mob Daggerspine Shorehunter
.mob Daggerspine Siren
step
#xprate <1.99
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 562 >> Turn in Stormwind Ho!
.accept 563 >> Accept Reassignment
.target Lieutenant Farren Orinelle
step
#label start
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
>>|cRXP_BUY_Buy 4|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from him|r
.collect 3713,4,1218,4 
.target Micha Yance
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fp Southshore >>Get the Southshore Flight Path
.target Darla Harris
step
.goto Alterac Mountains,58.317,67.951
>>Click the |cRXP_PICK_Syndicate Documents|r on the table
.accept 510 >> Accept Foreboding Plans
.accept 511 >> Accept Encrypted Letter
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
>>|cRXP_BUY_Buy 1|r |T134059:0|t[Soothing Spice] |cRXP_BUY_from him|r
.collect 3713,1,555,1 
.target Micha Yance
step
#label letter
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 511 >> Turn in Encrypted Letter
.accept 514 >> Accept Letter to Stormpike
.target Loremaster Dibbs
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
.turnin 510 >> Turn in Foreboding Plans
.target Magistrate Henry Maleb
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
.accept 681 >> Accept Northfold Manor
.target Captain Nials
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
step << Hunter
#season 2
.train 410109,1
.goto Arathi Highlands,67.8,66.0
>>Kill |cRXP_ENEMY_Needletooth|r. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Steady Shot|r]
>>|cRXP_ENEMY_Needletooth|r |cRXP_WARN_is a fish that swims in the Witherbark Village lake|r
.collect 213122,1
.mob Needletooth
step << Hunter
#season 2
.train 410109 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Steady Shot|r] |cRXP_WARN_to train|r |T132213:0|t[Steady Shot]
.use 213122
.itemcount 213122,1
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
]]);
