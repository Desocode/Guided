RXPGuides.RegisterGuide([[
#version 23
#season 2
#group RestedXP Alliance 40-50
#classic
#tbc
#mop
<< Alliance
#name 48-50 Tanaris/UnGoro/Hinterlands SoD
#displayname 48-50 Tanaris/UnGoro/Hinterlands
#next RestedXP Alliance 50-60\50-51 Stranglethorn Vale SoD
step
.goto Tanaris,52.462,28.514
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 1691 >> Accept More Wastewander Justice
step
.goto Tanaris,52.819,27.401
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
.accept 5863 >> Accept The Dunemaul Compound
.target Andi Lynn
step
.goto Tanaris,51.835,27.038
>>Click the |cRXP_PICK_Wanted Poster|r
.accept 2781 >> Accept WANTED: Caliph Scorpidsting
.accept 2875 >> Accept WANTED: Andre Firebeard
step << skip
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 3362 >> Accept Thistleshrub Valley
step
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 10 >> Accept The Scrimshank Redemption
step << skip
.goto Tanaris,51.80,28.66
.target Marin Noggenfogger
>>Talk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.accept 2605 >> Accept The Thirsty Goblin
step << skip
.goto Tanaris,51.05,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2641 >> Turn in Sprinkle's Secret Ingredient
.target Sprinkle
.accept 2661 >> Accept Delivery for Marin
step << skip
.goto Tanaris,51.80,28.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2661 >> Turn in Delivery for Marin
.target Marin Noggenfogger
.accept 2662 >> Accept Noggenfogger Elixir
.turnin 2662 >> Turn in Noggenfogger Elixir
step << skip
#completewith tStart
+ Make sure you carry 1 stack of noggenfogger with you at all times, buy 2 extra stacks and bank it
step << skip
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 3362 >> Turn in Thistleshrub Valley
.isQuestComplete 3362
step
#label tStart
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3445 >> Turn in The Sunken Temple
.accept 3444 >> Accept The Stone Circle << Hunter
.target Marvon Rivetseeker
step << Priest
#season 2
#sticky
#completewith Wastewanders
>>Be on the lookout for |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r] that can drop from |cRXP_ENEMY_Wastewander Shadow Mages|r. You will need it for a rune later
.collect 221547,1 
.train 413251,1
step
#completewith next
.goto Tanaris,58.75,39.34,0
.goto Tanaris,58.72,36.54,0
.goto Tanaris,60.07,37.31,0
.goto Tanaris,60.76,32.67,0
.goto Tanaris,63.57,37.80,0
.goto Tanaris,63.89,39.86,0
.goto Tanaris,65.03,39.49,0
.goto Tanaris,65.41,36.62,0
>>Kill |cRXP_ENEMY_Wastewander Rogues|r, |cRXP_ENEMY_Wastewander Assassins|r and |cRXP_ENEMY_Wastewander Shadow Mages|r
>>|cRXP_ENEMY_Wastewander Rogues|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
.complete 1691,1 
.complete 1691,2 
.complete 1691,3 
.mob Wastewander Rogue
.mob Wastewander Assassin
.mob Wastewander Shadow Mage
step
.goto Tanaris,59.4,41.1,60,0
.goto Tanaris,61.8,38.2,60,0
.goto Tanaris,63.6,32.0,60,0
.goto Tanaris,61.0,35.9,60,0
.goto Tanaris,58.9,39.0,60,0
.goto Tanaris,63.6,32.0,60,0
.goto Tanaris,58.9,39.0,60,0
.goto Tanaris,60.85,37.82
>>Kill |cRXP_ENEMY_Caliph Scorpidsting|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Caliph Scorpidsting|r |cRXP_WARN_patrols through Waterspring Field and is accompanied by 2|r |cRXP_ENEMY_Wastewander Rogues|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
#label Wastewanders
.goto Tanaris,58.75,39.34,60,0
.goto Tanaris,58.72,36.54,60,0
.goto Tanaris,60.07,37.31,60,0
.goto Tanaris,60.76,32.67,60,0
.goto Tanaris,63.57,37.80,60,0
.goto Tanaris,63.89,39.86,60,0
.goto Tanaris,65.03,39.49,60,0
.goto Tanaris,65.41,36.62
>>Kill |cRXP_ENEMY_Wastewander Rogues|r, |cRXP_ENEMY_Wastewander Assassins|r and |cRXP_ENEMY_Wastewander Shadow Mages|r
.complete 1691,1 
.complete 1691,2 
.complete 1691,3 
.mob Wastewander Rogue
.mob Wastewander Assassin
.mob Wastewander Shadow Mage
step << Priest
#season 2
.goto Tanaris,58.75,39.34,60,0
.goto Tanaris,58.72,36.54,60,0
.goto Tanaris,60.07,37.31,60,0
.goto Tanaris,60.76,32.67,60,0
.goto Tanaris,63.57,37.80,60,0
.goto Tanaris,63.89,39.86,60,0
.goto Tanaris,65.03,39.49,60,0
.goto Tanaris,65.41,36.62
>>Kill |cRXP_ENEMY_Wastewander Shadow Mages|r untill you loot |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r] from them
.collect 221547,1 
.train 413251,1
step << Priest
#season 2
.itemcount 221547,1
.itemcount 221549,1
.train 413251,1
>>Combine the |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r] with the |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r] to receive |T237018:0|t[|cRXP_LOOT_Deciphered Warlock Notes|r]
.collect 221545,1
.use 221547
.use 221549
step << Priest
#season 2
.goto Tanaris,58.0,36.0
>>Look for a |cRXP_PICK_Cryptic Scroll of Summoning|r on the ground. Walk on top of it and use the |T237018:0|t[|cRXP_LOOT_Deciphered Warlock Notes|r]. This will spawn an |cRXP_ENEMY_Enraged Voidwalker|r a level 43 elite. Kill it and loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Verdant Winter|r]
.collect 221979,1
.mob Enraged Voidwalker
.use 221545
.train 413251,1
.itemcount 221545,1
step << Priest
#season 2
>>Use |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Verdant Winter|r] to learn |T237567:0|t[|cRXP_FRIENDLY_Pain and Suffering|r]
.train 413251
.train 413251,1
.use 221979
step
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >> Travel to Lost Rigger Cove
step << Rogue
#season 2
#sticky
#completewith TanarisPirates
#label CoinPurse
>>Try to cast |r |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Southsea Pirates|r or |cRXP_ENEMY_Southsea Freebooters|r, untill you receive a |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r
.collect 221371,1 - Kidnapper's Coin Purse 1/1
.mob Southsea Pirate
.mob Southsea Freebooter
.train 432273,1
step << Rogue
#season 2
#sticky
#completewith TanarisPirates
#requires CoinPurse
>>Open the |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r and loot it for a |T133302:0|t|cRXP_LOOT_Precious Medalion|r
.collect 221370,1 
.use 221371
.train 432273,1
step
#completewith StoleyShip
>>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
>>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.collect 9250,1,2876,1 
.use 9276 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#completewith StoleyShip
.goto Tanaris,73.37,47.14,0
>>Kill |cRXP_ENEMY_Andre Firebeard|r. Loot him for his |cRXP_LOOT_Head|r
.complete 2875,1 
.mob Andre Firebeard
step
#label StoleyShip
.goto Tanaris,72.15,46.76
>>Travel upstairs in the house
>>Open the |cRXP_PICK_Stolen Cargo|r. Loot it for |cRXP_LOOT_Stoley's Shipment|r
.complete 2873,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
>>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.collect 9250,1,2876,1 
.use 9276 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
.goto Tanaris,73.37,47.14
>>Kill |cRXP_ENEMY_Andre Firebeard|r. Loot him for his |cRXP_LOOT_Head|r
.complete 2875,1 
.mob Andre Firebeard
step
#label TanarisPirates
>>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
>>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]. |cRXP_WARN_Don't go out of your way to farm it|r
>>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet|r
.complete 8366,1 
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,2 
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,3 
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73
.complete 8366,4 
.goto Tanaris,75.17,45.84
.complete 8365,1 
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.collect 9250,1,2876,1 
.disablecheckbox
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.use 9276 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step << Rogue
#season 2
>>Try to cast |r |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Southsea Pirates|r or |cRXP_ENEMY_Southsea Freebooters|r, untill you receive a |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r
.collect 221371,1 - Kidnapper's Coin Purse 1/1
.itemcount 221370,<1 
.mob Southsea Pirate
.mob Southsea Freebooter
.train 432273,1
step << Rogue
#season 2
>>Open the |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r and loot it for a |T133302:0|t|cRXP_LOOT_Precious Medalion|r
.collect 221370,1 
.use 221371
.train 432273,1
step
#completewith console
>>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r] to start the quest|r
.collect 8623,1,351,1 
.use 8623
.accept 351 >> Accept Find OOX-17/TN!
.itemcount 8623,1
step
#completewith next
.goto Tanaris,54.63,70.75,20 >> Enter The Gaping Chasm Hive
step
#label console
.goto Tanaris,55.956,71.164
>>Loot the |cRXP_LOOT_Scrimshank's Surveying Gear|r on the ground
>>|cRXP_WARN_The |cRXP_LOOT_Scrimshank's Surveying Gear|r is inside of the Hive|r
.complete 10,1 
step << Warlock
#completewith next
.abandon 1122 >> |cRXP_WARN_If you're out of quest log space for the Distress Beacon quest, abandon|r Report Back to Fizzlebub
step
.goto Tanaris,60.235,64.714
.use 8623 >>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r] to start the quest|r
>>|cRXP_WARN_Skip this step if you do not have it|r
.collect 8623,1,351,1 
.accept 351 >> Accept Find OOX-17/TN
.itemcount 8623,1
step
.goto Tanaris,60.235,64.714
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
.turnin 351 >> Turn in Find OOX-17/TN!
.isOnQuest 351
.target Homing Robot OOX-17/TN
step
.isQuestTurnedIn 351
.goto Tanaris,60.235,64.714
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
.accept 648,1 >> Accept Rescue OOX-17/TN!
.target Homing Robot OOX-17/TN
step
.isOnQuest 648
.goto Tanaris,66.99,23.14
>>Escort the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r to safety
>>|cRXP_WARN_This quest can be hard. You have to fight waves of 3/4 mobs along the way. Skip this step if its too difficult|r
.complete 648,1 
.target Homing Robot OOX-17/TN
step
#sticky
#label ScheduleEnd
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] to start the quest|r
>>|cRXP_WARN_You may need to accept this after turning in to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and|r |cRXP_FRIENDLY_Stoley|r
.accept 2876 >> Accept Ship Schedules
.itemcount 9250,1 
.use 9250 
.isQuestComplete 648 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 8366 >> Turn in Southsea Shakedown
.turnin 2875 >> Turn in WANTED: Andre Firebeard
.turnin 2876 >> Turn in Ship Schedules
.goto Tanaris,67.058,23.891
.turnin 2873 >> Turn in Stoley's Shipment
.accept 2874 >> Accept Deliver to MacKinley
.goto Tanaris,67.109,23.978
.target Security Chief Bilgewhizzle
.target Stoley
.itemcount 9250,1 
.use 9250 
.isQuestComplete 648 
step
#label SWP
#optional
#requires ScheduleEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 8366 >> Turn in Southsea Shakedown
.turnin 2875 >> Turn in WANTED: Andre Firebeard
.goto Tanaris,67.058,23.891
.turnin 2873 >> Turn in Stoley's Shipment
.accept 2874 >> Accept Deliver to MacKinley
.goto Tanaris,67.109,23.978
.target Security Chief Bilgewhizzle
.target Stoley
.isQuestComplete 648 
step
.goto Tanaris,66.560,22.265
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
.turnin 8365 >> Turn in Pirate Hats Ahoy!
.target Haughty Modiste
.isQuestComplete 648 
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3520 >> Turn in Screecher Spirits
.target Yeh'kinya
.isQuestComplete 648 
step << Rogue
#season 2
.goto Tanaris,67,22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabbey|r the Goblin in one of the northmost huts. Complete the dialogue with him to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r]
.collect 221428,1 
.target Jabbey
.train 432273,1
.itemcount 221370,1
.isQuestComplete 648 
step << Rogue
#season 2
.use 221428
.train 432273 >>|cRXP_WARN_Use the|T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r] |cRXP_WARN_to train|r |T236285:0|t[Unfair Advantage]
.train 432273,1
.isQuestComplete 648 
step << Rogue
#optional
#completewith next
#season 2
.engrave 9 >> Open your character sheet and engrave your bracers with |T236285:0|t[Unfair Advantage]
.train 432273,3
.isQuestComplete 648 
step << Hunter
.goto Tanaris,67.01,21.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabbey|r
.vendor 8139 >> |cRXP_BUY_Buy|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_before leaving the port|r
.target Jabbey
.isQuestComplete 648 
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
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step
.hs >> Hearth to Gadgetzan
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Tanaris,52.462,28.514
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 1691 >> Turn in More Wastewander Justice
.turnin 2781 >> Turn in WANTED: Caliph Scorpidsting
step
#optional 
.goto Tanaris,52.819,27.401
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
.accept 5863 >> Accept The Dunemaul Compound
.target Andi Lynn
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.accept 2605 >> Accept The Thirsty Goblin
.target Marin Noggenfogger
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 10 >> Turn in The Scrimshank Redemption
.accept 110 >> Accept Insect Part Analysis
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 110 >> Turn in Insect Part Analysis
.accept 113 >> Accept Insect Part Analysis
.target Alchemist Pestlezugg
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 3362 >> Accept Thistleshrub Valley
.target Tran'rek
step
.goto Tanaris,50.210,27.483
.target Senior Surveyor Fizzledowser
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 113 >> Turn in Insect Part Analysis
step
.goto Tanaris,66.32,22.48,150 >> Travel to the Steamwheedle Port
.isQuestAvailable 351 
step
#sticky
#label ScheduleEnd
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] to start the quest|r
>>|cRXP_WARN_You may need to accept this after turning in to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and|r |cRXP_FRIENDLY_Stoley|r
.accept 2876 >> Accept Ship Schedules
.itemcount 9250,1 
.use 9250 
.isQuestAvailable 351 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 8366 >> Turn in Southsea Shakedown
.turnin 2875 >> Turn in WANTED: Andre Firebeard
.turnin 2876 >> Turn in Ship Schedules
.goto Tanaris,67.058,23.891
.turnin 2873 >> Turn in Stoley's Shipment
.accept 2874 >> Accept Deliver to MacKinley
.goto Tanaris,67.109,23.978
.target Security Chief Bilgewhizzle
.target Stoley
.itemcount 9250,1 
.use 9250 
.isQuestAvailable 351 
step
#label SWP
#optional
#requires ScheduleEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 8366 >> Turn in Southsea Shakedown
.turnin 2875 >> Turn in WANTED: Andre Firebeard
.goto Tanaris,67.058,23.891
.turnin 2873 >> Turn in Stoley's Shipment
.accept 2874 >> Accept Deliver to MacKinley
.goto Tanaris,67.109,23.978
.target Security Chief Bilgewhizzle
.target Stoley
.isQuestAvailable 351 
step
.goto Tanaris,66.560,22.265
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
.turnin 8365 >> Turn in Pirate Hats Ahoy!
.target Haughty Modiste
.isQuestAvailable 351 
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3520 >> Turn in Screecher Spirits
.target Yeh'kinya
.isQuestAvailable 351 
step << Rogue
#season 2
.goto Tanaris,67,22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabbey|r the Goblin in one of the northmost huts. Complete the dialogue with him to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r]
.collect 221428,1 
.target Jabbey
.train 432273,1
.itemcount 221370,1
.isQuestAvailable 351 
step << Rogue
#season 2
.use 221428
.train 432273 >>|cRXP_WARN_Use the|T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r] |cRXP_WARN_to train|r |T236285:0|t[Unfair Advantage]
.train 432273,1
.isQuestAvailable 351 
step << Rogue
#optional
#completewith next
#season 2
.engrave 9 >> Open your character sheet and engrave your bracers with |T236285:0|t[Unfair Advantage]
.train 432273,3
.isQuestAvailable 351 
step << Hunter
.goto Tanaris,67.01,21.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabbey|r
.vendor 8139 >> |cRXP_BUY_Buy|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_before leaving the port|r
.target Jabbey
.isQuestAvailable 351 
step << !Hunter
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.accept 3444 >> Accept The Stone Circle
.target Marvon Rivetseeker
step
#completewith Ravager
.goto Tanaris,41.50,57.81
.subzone 983 >> Travel to the Dunemaul Compound
step
#completewith next
>>Kill |cRXP_ENEMY_Dunemaul Brutes|r and |cRXP_ENEMY_Dunemaul Enforcers|r
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step
#label Ravager
.goto Tanaris,41.50,57.81
>>Kill |cRXP_ENEMY_Gor'marok the Ravager|r
>>|cRXP_WARN_Be cautious as|r |cRXP_ENEMY_Gor'marok the Ravager|r |cRXP_WARN_can|r |T136224:0|t[Enrage] |cRXP_WARN_and deal significant damage very quickly|r
.complete 5863,3 
.mob Gor'marok the Ravager
step
.goto Tanaris,37.83,56.94,70,0
.goto Tanaris,38.64,51.83,70,0
.goto Tanaris,41.04,51.18,70,0
.goto Tanaris,42.63,55.10,70,0
.goto Tanaris,37.83,56.94,70,0
.goto Tanaris,38.64,51.83,70,0
.goto Tanaris,41.04,51.18,70,0
.goto Tanaris,42.63,55.10
>>Kill |cRXP_ENEMY_Dunemaul Brutes|r and |cRXP_ENEMY_Dunemaul Enforcers|r
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step << Druid
#season 2
#sticky
#completewith Thistleshrubs
#label RagingShamblerIdol
.goto Tanaris,28.2,63.0,40,0
.goto Tanaris,28.2,68.6,40,0
.goto Tanaris,30.8,63.4,40,0
>>Kill |cRXP_ENEMY_Thistleshrub Dew Collector|r and |cRXP_ENEMY_Thistleshrub Rootshaper|r. Loot them for the |T136061:0|t[|cRXP_LOOT_Idol of the Raging Shambler|r] you will need it to unlock a rune
.collect 220915,1
.mob Thistleshrub Dew Collector
.mob Thistleshrub Rootshaper
.train 431449,1
.train 22812,3
step << Druid
#season 2
#optional
#requires RagingShamblerIdol
#completewith Thistleshrubs
.equip 18,220915 >>|cRXP_WARN_Equip the|r |T136061:0|t[|cRXP_FRIENDLY_Idol of the Raging Shambler|r]
+|cRXP_WARN_In order to receive|r |T136097:0|t[Improved Barkskin] |cRXP_WARN_you will need to kill five enemies with nature spells (eg. Wrath) while under the effects of|r |T136097:0|t[Barkskin]. |cRXP_WARN_Try to do this whenever convinient, the rune is not very strong so it's not a high priority|r
.train 22812,3
.train 431449,1
step
.isOnQuest 2605
.isOnQuest 3362
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>>Kill |cRXP_ENEMY_Gnarled Thistleshrubs|r and |cRXP_ENEMY_Thistleshrub Rootshapers|r
>>Kill |cRXP_ENEMY_Thistleshrub Dew Collectors|r. Loot them for the |cRXP_LOOT_Laden Dew Gland|r
>>|cRXP_WARN_Prioritize killing |cRXP_ENEMY_Thistleshrub Dew Collectors|r as the |cRXP_LOOT_Laden Dew Gland|r has a low drop chance|r
.complete 3362,1 
.complete 3362,2 
.complete 2605,1 
.mob Gnarled Thistleshrub
.mob Thistleshrub Rootshaper
.mob Thistleshrub Dew Collector
step
.isOnQuest 2605
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>>Kill |cRXP_ENEMY_Thistleshrub Dew Collectors|r. Loot them for the |cRXP_LOOT_Laden Dew Gland|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
#label Thistleshrubs
.isOnQuest 3362
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>>Kill |cRXP_ENEMY_Gnarled Thistleshrubs|r and |cRXP_ENEMY_Thistleshrub Rootshapers|r
.complete 3362,1 
.complete 3362,2 
.mob Gnarled Thistleshrub
.mob Thistleshrub Rootshaper
step
#completewith next
.goto Tanaris,26.98,56.09,0
.goto Tanaris,26.98,56.09,125,0
.goto Un'Goro Crater,71.63,75.95
.zone 1449 >> Travel to Un'goro Crater
step
.dungeon !ST
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 4289 >> Accept The Apes of Un'Goro
.accept 4290 >> Accept The Fare of Lar'korwi
.target Torwa Pathfinder
step << Druid
#sticky
#season 2
#completewith AMangledJournal
#label HuntressIdol
.train 439765,1
>>Kill |cRXP_ENEMY_Ravasaurs|r, |cRXP_ENEMY_Ravasaur Hunters|r and |cRXP_ENEMY_Venomhide Ravasaurs|r. Loot them for the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r]
.collect 227444,1
.mob Venomhide Ravasaur
.mob Ravasaur Hunter
.mob Ravasaur
step << Druid
#sticky
#season 2
#completewith AMangledJournal
#requires HuntressIdol
#label HuntressIdolEquip
.train 439765,1
.equip 18,227444 >> Equip the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r]
.use 227444
step << Druid
#sticky
#season 2
#completewith AMangledJournal
#requires HuntressIdolEquip
#label HuntressIdolStack
.goto Un'Goro Crater,68.0,51.4
#title Gain 5x |T237556:0|t[Building Inspiration]
.itemcount 227444,1
.train 439765,1
.aura 408828 >> |cRXP_WARN_Attack a |cRXP_ENEMY_Ravasaurs|r until they are down to roughly 5-10% HP and ensure you have 5 combo points on them|r
>>|cRXP_WARN_Once they are 5-10% HP, cast|r |T136090:0|t[Hibernate] |cRXP_WARN_then switch into|r |T132115:0|t[Cat Form] |cRXP_WARN_and cast|r |T132127:0|t[Ferocious Bite] |cRXP_WARN_to kill them to gain a stack of|r |T237556:0|t[Building Inspiration]
>>|cRXP_WARN_Repeat this process 5 times|r
.mob Venomhide Ravasaur
.mob Ravasaur Hunter
.mob Ravasaur
step << Druid
#sticky
#season 2
#completewith AMangledJournal
#requires HuntressIdolStack
.itemcount 227444,1
.use 227444
.train 439765 >> |cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r] |cRXP_WARN_to train|r |T134296:0|t[Improved Swipe]
step
#completewith LeaveUngoro
>>Loot |cRXP_LOOT_Power Crystals|r on the ground as you quest through Un'Goro Crater
>>|cRXP_WARN_Try to complete this now as you work your way up to Marshal's Refuge later|r
.collect 11186,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
.collect 11188,7,4284,1 
step
#completewith LeaveUngoro
>>Loot |cRXP_LOOT_Un'Goro Soil|r on the ground as you quest through Un'Goro Crater
.collect 11018,25 
step
.goto Un'Goro Crater,63.02,68.60
>>Click on the |cRXP_PICK_Wrecked Raft|r
.accept 3844 >> Accept It's a Secret to Everybody
step
.goto Un'Goro Crater,63.107,69.057
>>Click the |cRXP_PICK_Small Pack|r underwater
.turnin 3844 >> Turn in It's a Secret to Everybody
.accept 3845 >> Accept It's a Secret to Everybody
step
.goto Un'Goro Crater,68.73,56.70
>>Loot the |cRXP_LOOT_Piece of Threshadon Carcass|r
.complete 4290,1 
step << !Warrior !Rogue !Paladin !Druid
#completewith MuiginLarion
.subzone 541 >> Travel to Marshal's Refuge
step << !Warrior !Rogue !Paladin !Druid
.goto Un'Goro Crater,44.658,8.098
.use 11107 >> |cRXP_WARN_Open the|r |T133653:0|t[Small Pack]
.complete 3845,1 
.complete 3845,2 
.complete 3845,3 
.isOnQuest 3845
step << !Warrior !Rogue !Paladin !Druid
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3845 >> Turn in It's a Secret to Everybody
.accept 3908 >> Accept It's a Secret to Everybody
.target Linken
step << !Warrior !Rogue !Paladin !Druid
.destroy 11108 >> Destroy the |T134944:0|t[Faded Photograph]
.destroy 3108 >> Destroy the |T135427:0|t[Heavy Throwing Daggers] << !Rogue
>>|cRXP_WARN_You no longer need these|r
step << !Warrior !Rogue !Paladin !Druid
.goto Un'Goro Crater,43.947,7.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
>>|cRXP_WARN_Use |T133743:0|t[A Mangled Journal] to start the quest|r
.collect 11116,1,3884,1 
.accept 3884 >> Accept Williden's Journal
.turnin 3884 >> Turn in Williden's Journal
.use 11116
.itemcount 11116,1
.target Williden Marshal
step << !Warrior !Rogue !Paladin !Druid
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
>>|cRXP_WARN_Skip this step if you don't have all 7 Power Crystals, you will finish it later|r
.accept 4284 >> Accept Crystals of Power
.turnin 4284 >> Turn in Crystals of Power
.itemcount 11186,7 
.itemcount 11185,7 
.itemcount 11184,7 
.itemcount 11188,7 
.target J.D. Collie
step << !Warrior !Rogue !Paladin !Druid
#label MuiginLarion
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
.fp Un'Goro >> Get the Un'Goro Crater Flight Path
.target Gryfe
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4290 >> Turn in The Fare of Lar'korwi
.accept 4291 >> Accept The Scent of Lar'korwi
.target Torwa Pathfinder
step
.goto Un'Goro Crater,67.324,73.041,8,0
.goto Un'Goro Crater,66.601,66.727,8,0
.goto Un'Goro Crater,60.926,72.234,8,0
.goto Un'Goro Crater,62.285,65.985,8,0
.goto Un'Goro Crater,63.240,77.350,8,0
.goto Un'Goro Crater,67.324,73.041,8,0
.goto Un'Goro Crater,66.601,66.727
.goto Un'Goro Crater,67.324,73.041,0
.goto Un'Goro Crater,60.926,72.234,0
.goto Un'Goro Crater,62.285,65.985,0
.goto Un'Goro Crater,63.240,77.350,0
>>Kill |cRXP_ENEMY_Lar'korwi Mates|r. Loot them for their |cRXP_LOOT_Ravasaur Pheromone Glands|r
>>|cRXP_WARN_Walking over |cRXP_PICK_Raptor Nests|r on the ground will trigger a |cRXP_ENEMY_Lar'korwi Mate|r to spawn|r
.complete 4291,1 
.mob Lar'korwi Mate
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4291 >> Turn in The Scent of Lar'korwi
.accept 4292 >> Accept The Bait for Lar'korwi
.target Torwa Pathfinder
step
#label AMangledJournal
.goto Un'Goro Crater,67.324,73.041,70,0
.goto Un'Goro Crater,66.601,66.727,70,0
.goto Un'Goro Crater,60.926,72.234,70,0
.goto Un'Goro Crater,62.285,65.985,70,0
.goto Un'Goro Crater,63.240,77.350,70,0
.goto Un'Goro Crater,67.324,73.041,70,0
.goto Un'Goro Crater,66.601,66.727
>>Kill |cRXP_ENEMY_Ravasaurs|r. Loot them for |T133743:0|t[A Mangled Journal]
>>|cRXP_WARN_Any mob in Un'Goro Crater may drop it|r
>>|cRXP_WARN_Use |T133743:0|t[A Mangled Journal] to start the quest|r
.collect 11116,1,3884,1 
.use 11116
step << Warrior/Rogue/Paladin/Druid
#completewith LeaveUngoro
.subzone 541 >> Travel to Marshal's Refuge
step << Warrior/Rogue/Paladin/Druid
.goto Un'Goro Crater,44.658,8.098
.use 11107 >> |cRXP_WARN_Open the|r |T133653:0|t[Small Pack]
.complete 3845,1 
.complete 3845,2 
.complete 3845,3 
.isOnQuest 3845
step << Warrior/Rogue/Paladin/Druid
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3845 >> Turn in It's a Secret to Everybody
.accept 3908 >> Accept It's a Secret to Everybody
.target Linken
step << Warrior/Rogue/Paladin/Druid
.destroy 11108 >> Destroy the |T134944:0|t[Faded Photograph]
.destroy 3108 >> Destroy the |T135427:0|t[Heavy Throwing Daggers] << !Rogue
>>|cRXP_WARN_You no longer need these|r
step << Warrior/Rogue/Paladin/Druid
.goto Un'Goro Crater,43.947,7.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
.collect 11116,1,3884,1 
.accept 3884 >> Accept Williden's Journal
.turnin 3884 >> Turn in Williden's Journal
.use 11116
.itemcount 11116,1
.target Williden Marshal
step << Warrior/Rogue/Paladin/Druid
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
>>|cRXP_WARN_Skip this step if you don't have all 7 Power Crystals, you will finish it later|r
.accept 4284 >> Accept Crystals of Power
.turnin 4284 >> Turn in Crystals of Power
.itemcount 11186,7 
.itemcount 11185,7 
.itemcount 11184,7 
.itemcount 11188,7 
.target J.D. Collie
step << Warrior/Rogue/Paladin/Druid
#label LeaveUngoro
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
.fp Un'Goro >> Get the Un'Goro Crater Flight Path
>>Fly or Hearth to Gadgetzan. Make sure you have the Flight Path before you Hearth
.zoneskip Tanaris
.target Gryfe
step << !Warrior !Rogue !Paladin !Druid
#label LeaveUngoro
#softcore
.hs >> Hearth to Tanaris
>>Alternatively you can run to Tanaris, die on purpose and respawn at Gadgetzan
.zoneskip Tanaris
step << !Warrior !Rogue !Paladin !Druid
#label LeaveUngoro
#hardcore
.hs >> Hearth to Tanaris
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip Tanaris
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 2799,4098 >> Withdraw the following items from your bank:
>>|T133469:0|t[Carefully Folded Note] (If you have it) 
>>|T134298:0|t[Gorilla Fangs] (If you have any) 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 11568,11569,11570,11830,11018,11133,11114,11831,11116,11184,11185,11186,11188 >> Deposit the following items in your bank:
>>|T133635:0|t[Torwa's Pouch] 
>>|T133849:0|t[Un'Goro Soil] 
>>|T135357:0|t[Linken's Training Sword] 
>>|T133743:0|t[A Mangled Journal]
>>All the |T134133:0|t[Power Crystals] if you have any 
.target Gimblethorn
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2605 >> Turn in The Thirsty Goblin
.accept 2606 >> Accept In Good Taste
.target Marin Noggenfogger
step
.goto Tanaris,52.819,27.401
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
.turnin 5863 >> Turn in The Dunemaul Compound
.target Andi Lynn
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 3362 >> Turn in Thistleshrub Valley
.target Tran'rek
step
.goto Tanaris,51.059,26.873
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2606 >> Turn in In Good Taste
.accept 2641 >> Accept Sprinkle's Secret Ingredient
.target Sprinkle
step
.goto Tanaris,50.210,27.483
.target Senior Surveyor Fizzledowser
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 162 >> Accept Rise of the Silithid
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,51.006,29.345
.fly Theramore >> Fly to Theramore
.target Bera Stonehammer
step << !Mage
.goto Dustwallow Marsh,71.4,56.1
.zone Wetlands >> Take the boat to Menethil Harbor
.zoneskip The Hinterlands
step << !Mage
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r inside
.home >> Set your Hearthstone to Menethil Harbor
.target Innkeeper Helbrek
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
step
#sticky
#label FinishFeathers
#xprate <2.5
>>Loot the |cRXP_LOOT_Wildkin Feathers|r on the ground
.complete 3661,1 
.isOnQuest 3661
step << Paladin
#season 2
.train 429139,1 
.train 5502,3 
.goto The Hinterlands,33.0,44.0
>>|cRXP_WARN_This step can only be completed if the SERVER TIME is between 9pm and 3am. The mob won't be there otherwise|r
>>Cast |T135974:0|t[|cRXP_FRIENDLY_Sense Undead|r] and go to the Quel'Danil Lodge. Look for a |cRXP_PICK_Vengeful Spirit|r there, a level 45 undead. Kill it and loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r]
*The |cRXP_ENEMY_Vengeful Spirit|r walks around the lake
.collect 220165,1
.mob Vengeful Spirit
step << Paladin
#season 2
.itemcount 220165,1
.use 220165
.train 429249 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r] |cRXP_WARN_to train|r |T236260:0|t[|cRXP_FRIENDLY_Wrath|r]
step << Warrior
#season 2
#sticky
#label GeodeHammer
#completewith TrollNecklaces
>>|cRXP_WARN_Look for a|r |T133054:0|t|cRXP_LOOT_Geode Hammer|r |cRXP_WARN_which can drop from any of the|r |cRXP_ENEMY_Witherbark Trolls|r. |cRXP_WARN_You will need it to unlock|r |T132364:0|t[Wrecking Crew]
.collect 220912,1 
.mob Witherbark Sadist
.mob Witherbark Scalper
.mob Witherbark Zealot
.mob Witherbark Hideskinner
.mob Witherbark Venomblood
.train 427084,1
step << Warrior
#season 2
#sticky
#requires GeodeHammer
#label BrokenGeodeHammer
#completewith TrollNecklaces
.equip 16,220912 >>Equip the |T133054:0|t|cRXP_LOOT_Geode Hammer|r as your mainhand weapon. Continue fighting mobs untill the hammer breaks and turns into a |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r
.collect 220914,1 
.train 427084,1
step << Warrior
#season 2
#sticky
#requires BrokenGeodeHammer
#label RuneOfTheDemolition
#completewith TrollNecklaces
>>Right click on the |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r to loot it for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r]
.collect 220913,1 
.train 427084,1
step << Warrior
#season 2
#sticky
#requires RuneOfTheDemolition
#completewith TrollNecklaces
.train 427084 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r] |cRXP_WARN_to learn|r |T132364:0|t[Wrecking Crew]
.use 220913
.train 427084,1
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
step << Warrior
#season 2
>>|cRXP_WARN_Look for a|r |T133054:0|t|cRXP_LOOT_Geode Hammer|r |cRXP_WARN_which can drop from any of the|r |cRXP_ENEMY_Witherbark Trolls|r. |cRXP_WARN_You will need it to unlock|r |T132364:0|t[Wrecking Crew]
.collect 220912,1 
.mob Witherbark Sadist
.mob Witherbark Scalper
.mob Witherbark Zealot
.mob Witherbark Hideskinner
.mob Witherbark Venomblood
.train 427084,1
step << Warrior
#season 2
#sticky
#label BrokenGeodeHammerTwo
#completewith HinterlandsEnd
.equip 16,220912 >>Equip the |T133054:0|t|cRXP_LOOT_Geode Hammer|r as your mainhand weapon. Kepp on questing untill it breaks and turns into a |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r
.collect 220914,1 
.train 427084,1
step << Warrior
#season 2
#sticky
#requires BrokenGeodeHammerTwo
#label RuneOfTheDemolitionTwo
#completewith HinterlandsEnd
>>Right click on the |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r to loot it for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r]
.collect 220913,1 
.train 427084,1
step << Warrior
#season 2
#sticky
#requires RuneOfTheDemolitionTwo
#completewith HinterlandsEnd
.train 427084 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r] |cRXP_WARN_to learn|r |T132364:0|t[Wrecking Crew]
.use 220913
.train 427084,1
step
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.accept 2880 >> Accept Troll Necklace Bounty
.turnin 2880 >> Turn in Troll Necklace Bounty
.target Fraggar Thundermantle
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.turnin 2988 >> Turn in Witherbark Cages
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,40.63,59.65
>> Loot a |cRXP_PICK_purple mushroom|r underwater
.complete 2641,1
step
#xprate <2.5
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
.isOnQuest 3661
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
>>|cRXP_WARN_Do not accept the escort, it's not worth the time|r
.turnin 485 >> Turn in Find OOX-09/HL!
.target Homing Robot OOX-09/HL
step
#completewith next
.isOnQuest 836
.goto The Hinterlands,49.352,37.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
.abandon 836 >> Abandon Rescue OOX-09/HL!
.target Homing Robot OOX-09/HL
step
.goto The Hinterlands,60.81,37.86,20 >> Head to the bridge leading to Seradane
>>|cRXP_WARN_Check your questlog for orphaned/unnecessary quests and abandon them if needed. You will need 10 questlog slots for the incursion quests coming up|r
.maxlevel 53
step
>>Cross the bridge and |Tinterface/worldmap/chatbubble_64grey.blp:20|ttalk to |cRXP_FRIENDLY_Field Captain Korlian|r
.goto The Hinterlands,61.4,34.6
.accept 82068 >> Accept Fight the Nightmare Incursions
.accept 81789 >> Accept Hinterlands Mission IV: Dragon Intelligence
.accept 81817 >> Accept Hinterlands Mission V: Turtle Intelligence
.accept 81820 >> Accept Hinterlands Mission VI: Moonkin Intelligence
.accept 81826 >> Accept Hinterlands Mission VII: Recover Star-Touched Dragonegg
.accept 81830 >> Accept Hinterlands Mission VIII: Recover Elunar Relic
.accept 81832 >> Accept Hinterlands Mission IX: Recover Dreampearl
.accept 81850 >> Accept Hinterlands Mission XVI: Rescue Elinar Shadowdrinker
.accept 81851 >> Accept Hinterlands Mission XVII: Rescue Serlina Starbright
.accept 81852 >> Accept Hinterlands Mission XVII: Rescue Veanna Cloudsleeper
.target Field Captain Korlian
.maxlevel 53
step
.goto The Hinterlands,61.4,34.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Alandra|r
.vendor >> |cRXP_BUY_Buy up to 5|r |T236885:0|t[Major Healing Potions] |cRXP_BUY_from her if you want.|r |cRXP_WARN_These can only be used within the incursion zones|r
.target Quartermaster Alandra
.maxlevel 53
step
#completewith next
+|cRXP_WARN_Click on the portal next to the questgiver|r to be phased into the Emerald Dream
step
.goto 1425/0,-3788.100,468.800,20 >> Head towards Skulk Rock. |cRXP_WARN_Avoid running into the |cRXP_ENEMY_Unstable Wisps|r or they will explode dealing around 700 damage to you|r
.maxlevel 53
step
>>Enter the cave and clear up the ramp leading to the right. Loot the chest there for the |T133247:0|t[|cRXP_PICK_Elunar Relic|r]
.goto 1425/0,-3799.300,354.700
.complete 81830,1 
.maxlevel 53
step
>>Clear to the large room at the bottom of the cave, talk to |cRXP_FRIENDLY_Dreamwarden Valori|r to receive his |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
>>|cRXP_WARN_He is stealthed right next to the|r |cRXP_ENEMY_Doomkin|r |cRXP_WARN_boss. Try to quickly get the intelligence and run away, don't fight the boss|r
>>|cRXP_WARN_You are likely to die doing this quest due to the|r |cRXP_ENEMY_Doomkins|r |cRXP_WARN_high damage but the runback is very short|r
.goto 1425/0,-3756.200,357.000
.complete 81820,1 
.target Dreamwarden Valori
.skipgossip
.maxlevel 53
step
.goto The Hinterlands,53.58,39.10
.gossipoption 122141 >> Talk to |cRXP_FRIENDLY_Ealianar Shadowdrinker|r laying on the ground. He should start following you around
>>|cRXP_WARN_You can talk to him through the back side of the wooden fence without having to go inside|r
>>|cRXP_WARN_If he's not there that means someone else is escorting him, skip this step if u can't find him|r
.target Ealianar Shadowdrinker
.maxlevel 53
step
#sticky
#completewith next
+|cRXP_WARN_Be careful, if you die all of escort NPCs following you will return to where you picked them up and you will have to find them again|r
.maxlevel 53
step
.goto The Hinterlands,46.85,41.17
>> Talk to |cRXP_FRIENDLY_Dreamwarden Laninar|r stealthed in the marked location to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
>>|cRXP_WARN_Don't fight any of the elite dragonkin in the area. If you pull one just CC it, get the report and run away|r
.complete 81789,1 
.target Dreamwarden Laninar
.skipgossip
.maxlevel 53
step
>>Loot the |T236997:0|t[|cRXP_PICK_Star-Touched Dragonegg|r] from inside the tent
>>|cRXP_WARN_Try to go around the outer edge of the walls to avoid pulling any of the elite dragonkin in the area. You can loot the egg through the back of the tent without having to fight any elites|r
.goto 1425/0,-3320.800,474.500
.complete 81826,1 
.maxlevel 53
step
.goto The Hinterlands,42.31,31.43
.goto The Hinterlands,60.67,38.32,150 >> Head west into the mountains untill your screen starts glowing green. You will be teleported closer to the starting location
>>|cRXP_WARN_Don't worry, all the escort NPCs will follow you eventually|r
.maxlevel 53
step
.goto The Hinterlands,57.30,42.95
.gossipoption 122151 >>Climb to the top of the Hill. Talk to |cRXP_FRIENDLY_Veanna Cloudsleeper|r laying on the ground. She should start following you around
>>|cRXP_WARN_If she's not there that means someone else is escorting her, skip this step if u can't find her|r
.target Veanna Cloudsleeper
.maxlevel 53
step
.goto The Hinterlands,71.09,48.14
.gossipoption 122149 >> Enter the small wooden fort. Talk to |cRXP_FRIENDLY_Serlina Starbright|r laying on the ground. She should start following you around
>>|cRXP_WARN_If she's not there that means someone else is escorting her, skip this step if u can't find her|r
.target Serlina Starbright
.maxlevel 53
step
>>Enter the ruins of Shaol'watha and loot the |T237371:0|t[|cRXP_PICK_Dreampearl|r]. |cRXP_WARN_Be careful not to aggro the boss|r |cRXP_ENEMY_Ghamoo-Raja|r
.goto 1425/0,-4355.400,79.400
.complete 81832,1 
.maxlevel 53
step
>> Talk to |cRXP_FRIENDLY_Dreamwarden Sanathel|r stealthed in the marked location to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
.goto 1425/0,-4389.800,81.400
.complete 81817,1 
.target Dreamwarden Sanathel
.skipgossip
.maxlevel 53
step
.goto The Hinterlands,74.02,56.13
.goto The Hinterlands,60.67,38.32,150 >> Head east untill your screen starts glowing green. You will be teleported closer to the starting location
>>|cRXP_WARN_Don't worry, all the escort NPCs will follow you eventually|r
.maxlevel 53
step
#requires Turtles
.goto 1425/0,-4010.800,758.000
>>Make sure you got the credit for all of the escort quests. They should all complete by the time you reach the big dream portal
>>|cRXP_WARN_If any of the three NPCs is no longer following you go back and talk to then again|r
>>|cRXP_WARN_Walk back and forth of the pointed marked by your arrow (bottom of the portal ramp) a couple times. This will make the NPCs cross the threshold and give you the credit|r
.complete 81850,1
.complete 81851,1
.complete 81852,1
.maxlevel 53
step
.goto The Hinterlands,61.35,34.58,5 >> Go back through the portal to the real world version of The Hinterlands
.maxlevel 53
step
>>Talk to |cRXP_FRIENDLY_Field Captain Korlian|r
.goto The Hinterlands,61.4,34.6
.turnin 82068 >> Turn in Fight the Nightmare Incursions
.turnin 81789 >> Turn in Hinterlands Mission IV: Dragon Intelligence
.turnin 81817 >> Turn in Hinterlands Mission V: Turtle Intelligence
.turnin 81820 >> Turn in Hinterlands Mission VI: Moonkin Intelligence
.turnin 81826 >> Turn in Hinterlands Mission VII: Recover Star-Touched Dragonegg
.turnin 81830 >> Turn in Hinterlands Mission VIII: Recover Elunar Relic
.turnin 81832 >> Turn in Hinterlands Mission IX: Recover Dreampearl
.turnin 81850 >> Turn in Hinterlands Mission XVI: Rescue Elinar Shadowdrinker
.turnin 81851 >> Turn in Hinterlands Mission XVII: Rescue Serlina Starbright
.turnin 81852 >> Turn in Hinterlands Mission XVII: Rescue Veanna Cloudsleeper
.target Field Captain Korlian
.maxlevel 53
step << !Mage
#completewith GammeritaSnapshot
+Grind until your Hearthstone cooldown is <6min
.cooldown item,6948,<360
step << Rogue
#season 2
.goto The Hinterlands,72,53
>>Look for a small chest in front of an altar in the ruins. It's guarded by a |cRXP_ENEMY_Vilebranch Mask|r use |T136175:0|t[Blind] on it and loot the chest for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Focus|r]
.collect 221433,1 
.mob Vilebranch Mask
.train 400093,1
step << Rogue
#season 2
.itemcount 221433,1
.use 221433
.train 400093 >>|cRXP_WARN_Use the|T134419:0|t[|cRXP_FRIENDLY_Rune of Focus|r] |cRXP_WARN_to train|r |T236274:0|t[Focused Attacks]
.train 400093,1
step
#completewith GammeritaSnapshot
#xprate <2.5
>>Loot the |cRXP_LOOT_Pupellyverbos Ports|r on the ground
.complete 580,1 
step
#label GammeritaSnapshot
#xprate <2.5
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
step << !Mage
.goto The Hinterlands,47.20,65.95
+Grind until your Hearthstone is off cooldown
.cooldown item,6948,<0
step << !Mage
#label HinterlandsEnd
.hs >> Hearth to Menethil Harbor
.cooldown item,6948,>0,1
step << !Mage
#ssf
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
step << !Mage
#ah
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Stormwind >> Fly to Stormwind
.target Shellei Brondir
step << Mage
#completewith next
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << Mage
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Booty Bay>> Fly to Booty Bay
.target Dungar Longdrink
step
>>Go to the bank
#xprate <2.5
.bankdeposit 9328,9330,10819 >> Deposit the following items into your bank:
>>|T134442:0|t[Super Snapper FX] 
>>|T134300:0|t[Snapshot of Gammerita] 
>>|T132927:0|t[Wildkin Feather] 
.target Gimblethorn
step << !Mage
#ssf
.goto Ironforge,18.6,51.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
.home >> Set your Hearthstone to Ironforge
.target Innkeeper Allison
step << !Mage
#ah
.goto StormwindClassic,52.623,65.701
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
.home >> Set your Hearthstone to Stormwind City
.target Innkeeper Firebrew
step << !Mage
#ssf
.goto Ironforge,55.6,48.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Booty Bay>> Fly to Booty Bay
.target Gryth Thurden
step << !Mage
#ah
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Booty Bay>> Fly to Booty Bay
.target Dungar Longdrink
]]);
