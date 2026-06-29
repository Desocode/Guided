RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 40-50
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 49-50 Tanaris/Un'Goro
#next RestedXP Alliance 50-60\50-50 Stranglethorn Vale
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 9328,9330,10819,3900,6287 >> Deposit the following items into your bank:
>>|T132796:0|t[Pupellyverbos Port] 
>>|T134442:0|t[Super Snapper FX] 
>>|T134300:0|t[Snapshot of Gammerita] 
>>|T132927:0|t[Wildkin Feather] 
>>|T134572:0|t[Atal'ai Tablet Fragment] 
.target Gimblethorn
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
.accept 3161 >> Accept Gahz'ridian << !Hunter
.target Marvon Rivetseeker
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
.mob +Wastewander Rogue
.complete 1691,2 
.mob +Wastewander Assassin
.complete 1691,3 
.mob +Wastewander Shadow Mage
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
.mob +Wastewander Rogue
.complete 1691,2 
.mob +Wastewander Assassin
.complete 1691,3 
.mob +Wastewander Shadow Mage
step
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >> Travel to Lost Rigger Cove
step
#completewith StoleyShip
>>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
>>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet|r
.complete 8366,1 
.mob +Southsea Pirate
.complete 8366,2 
.mob +Southsea Freebooter
.complete 8366,3 
.mob +Southsea Dock Worker
.complete 8366,4 
.mob +Southsea Swashbuckler
.complete 8365,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.collect 9250,1,2876,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.use 9276 
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
.mob +Southsea Pirate
.complete 8366,2 
.mob +Southsea Freebooter
.complete 8366,3 
.mob +Southsea Dock Worker
.complete 8366,4 
.mob +Southsea Swashbuckler
.complete 8365,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.collect 9250,1,2876,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.use 9276 
step
.goto Tanaris,73.37,47.14
>>Kill |cRXP_ENEMY_Andre Firebeard|r. Loot him for his |cRXP_LOOT_Head|r
.complete 2875,1 
.mob Andre Firebeard
step
#label TanarisPirates
>>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
>>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet|r
.complete 8366,1 
.mob +Southsea Pirate
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,2 
.mob +Southsea Freebooter
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,3 
.mob +Southsea Dock Worker
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73
.complete 8366,4 
.mob +Southsea Swashbuckler
.goto Tanaris,75.17,45.84
.complete 8365,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
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
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
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
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
step
#era
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
.xp 48 >> Grind to level 48
>>Kill any type of |cRXP_ENEMY_Southsea Pirate|r. Loot them for the |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r]
>>|cRXP_WARN_Do not Accept the quest for this yet|r
>>|cRXP_WARN_If you don't find it by the time you are 49, skip it|r
.collect 8623,1,351,1 
.disablecheckbox
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#era
.xp 49 >> Grind to level 49
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#som
#completewith console
>>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r] to start the quest|r
.collect 8623,1,351,1 
.use 8623
.accept 351 >> Accept Find OOX-17/TN!
.itemcount 8623,1
step << !Hunter
#completewith Ridian
.itemStat 1,QUALITY,>1
.cast 11992 >> Equip the |T133151:0|t[Gahz'ridian Detector]
.use 9978
.isOnQuest 3161
step << !Hunter
#completewith next
>>Kill |cRXP_ENEMY_Dunemaul Brutes|r and |cRXP_ENEMY_Dunemaul Enforcers|r
>>|cRXP_WARN_You will complete this later, you don't need to finish it right now|r
.complete 5863,1 
.mob +Dunemaul Brute
.complete 5863,2 
.mob +Dunemaul Enforcer
step << !Hunter
#label Ridian
.goto Tanaris,46.01,65.13,70,0
.goto Tanaris,47.81,64.83,70,0
.goto Tanaris,41.04,71.69,50,0
.goto Tanaris,39.66,73.51,70,0
.goto Tanaris,46.01,65.13,70,0
.goto Tanaris,47.81,64.83
>>Loot the |cRXP_LOOT_Gahz'ridian|r on the ground around the Ruins
>>|cRXP_WARN_The |cRXP_LOOT_Gahz'ridian|r will show up on your minimap with the|r |T133151:0|t[Gahz'ridian Detector] |cRXP_WARN_equiped|r
.complete 3161,1 
.use 9978
step << !Hunter
#completewith next
.itemStat 1,QUALITY,1
.cast 11992 >> Equip your normal |T133127:0|t[Helmet]
.isOnQuest 3161
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
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 8366 >> Turn in Southsea Shakedown
.turnin 2875 >> Turn in WANTED: Andre Firebeard
.turnin 2876 >> Turn in Ship Schedules
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.058,23.891
.turnin 2873 >> Turn in Stoley's Shipment
.accept 2874 >> Accept Deliver to MacKinley
.target +Stoley
.goto Tanaris,67.109,23.978
.itemcount 9250,1 
.use 9250 
step
#label SWP
#optional
#requires ScheduleEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 8366 >> Turn in Southsea Shakedown
.turnin 2875 >> Turn in WANTED: Andre Firebeard
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.058,23.891
.turnin 2873 >> Turn in Stoley's Shipment
.accept 2874 >> Accept Deliver to MacKinley
.target +Stoley
.goto Tanaris,67.109,23.978
step
.goto Tanaris,66.560,22.265
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
.turnin 8365 >> Turn in Pirate Hats Ahoy!
.target Haughty Modiste
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3520 >> Turn in Screecher Spirits
.target Yeh'kinya
step << Hunter
.goto Tanaris,67.01,21.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabbey|r
.vendor 8139 >> |cRXP_BUY_Buy|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_before leaving the port|r
.target Jabbey
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
step << !Hunter
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3161 >> Turn in Gahz'ridian
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
.mob +Dunemaul Brute
.complete 5863,2 
.mob +Dunemaul Enforcer
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
.mob +Dunemaul Brute
.complete 5863,2 
.mob +Dunemaul Enforcer
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
.mob +Gnarled Thistleshrub
.complete 3362,2 
.mob +Thistleshrub Rootshaper
.complete 2605,1 
.mob +Thistleshrub Dew Collector
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
.mob +Gnarled Thistleshrub
.complete 3362,2 
.mob +Thistleshrub Rootshaper
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
step
.dungeon ST
#phase 4-6
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 4289 >> Accept The Apes of Un'Goro
.accept 4290 >> Accept The Fare of Lar'korwi
.accept 9052 >> Accept Bloodpetal Poison << Druid
.target Torwa Pathfinder
step
.dungeon ST
#phase 1-3
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 4289 >> Accept The Apes of Un'Goro
.accept 4290 >> Accept The Fare of Lar'korwi
.target Torwa Pathfinder
step << Druid
.dungeon ST
#phase 4-6
.isOnQuest 9052
#completewith AMangledJournal
>>Open the |cRXP_PICK_Bloodpetal Sprouts|r on the ground. Loot them for |cRXP_LOOT_Bloodcaps|r
.complete 9052,2 
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
.goto Un'Goro Crater,42.942,9.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muigin|r
.accept 4141 >> Accept Muigin and Larion
.target Muigin
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
step << !Warrior !Rogue !Paladin !Druid
.goto Un'Goro Crater,75.6,44.4,80,0
.goto Un'Goro Crater,69.6,22.6,80,0
.goto Un'Goro Crater,57.6,37.6,80,0
.goto Un'Goro Crater,74.6,39.8,80,0
.goto Un'Goro Crater,67.6,32.6,80,0
.goto Un'Goro Crater,75.6,44.4,80,0
.goto Un'Goro Crater,69.6,22.6,80,0
.goto Un'Goro Crater,57.6,37.6,80,0
.goto Un'Goro Crater,74.6,39.8,80,0
.goto Un'Goro Crater,67.6,32.6
>>Kill |cRXP_ENEMY_Bloodpetal Lashers|r, |cRXP_ENEMY_Bloodpetal Threshers|r and |cRXP_ENEMY_Bloodpetal Flayers|r. Loot them for their |cRXP_LOOT_Bloodpetals|r
>>|cRXP_WARN_Complete this as your clear your way back down south toward|r |cRXP_FRIENDLY_Torwa Pathfinder|r
.complete 4141,1 
.mob Bloodpetal Lasher
.mob Bloodpetal Thresher
.mob Bloodpetal Flayer
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
.accept 3884 >> Accept Williden's Journal
.use 11116
step << Druid
.dungeon ST
#phase 4-6
#completewith next
.isOnQuest 9052
>>Open the |cRXP_PICK_Bloodpetal Sprouts|r on the ground. Loot them for |cRXP_LOOT_Bloodcaps|r
>>|cRXP_WARN_You don't need to complete this now. You can finish it when you come to Un'goro again later|r
.complete 9052,2 
step << skip
>> Run north to Marshal's Refuge
.goto Un'Goro Crater,44.23,11.58
.target Shizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
.accept 4503 >> Accept Shizzle's Flyer
>>Skip this step if you're not yet level 49
step << skip
.goto Un'Goro Crater,43.49,7.42
.target Spark Nilminer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
.accept 3882 >> Accept Roll the Bones
>>Skip this step if you're not yet level 49
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
step << skip
#completewith Uend
>> Kill dinos as you quest - This step is going to be finished later, don't go out of your way to complete this
.complete 4503,1
.complete 4503,2
.complete 3882,1
.isOnQuest 4503
.isOnQuest 3882
step << skip
#sticky
#completewith lashers
.goto Un'Goro Crater,67.0,28.0,0
>> Kill level 48-50 Lashers in northeastern Un'goro
.complete 4141,1
step << skip
.goto Un'Goro Crater,69.52,31.02
>> Finish off Muigin and Larion
.complete 4141,1
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
.bankwithdraw 2799,4098,5807,3900,6287 >> Withdraw the following items from your bank:
>>|T133469:0|t[Carefully Folded Note] (If you have it) 
>>|T134298:0|t[Gorilla Fangs] (If you have any) 
>>|T133471:0|t[Fool's Stout Report] 
>>|T132796:0|t[Pupellyverbos Port] 
>>|T134572:0|t[Atal'ai Tablet Fragment] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 11568,11569,11570,11830,11018,11133,11114,11831 >> Deposit the following items in your bank:
>>|T133635:0|t[Torwa's Pouch] 
>>|T133849:0|t[Un'Goro Soil] 
>>|T135357:0|t[Linken's Training Sword] 
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
step << !Warrior !Rogue !Paladin !Druid
#completewith next
.isQuestComplete 4141
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Un'Goro Crater>> Fly to Un'Goro Crater
.target Bera Stonehammer
.zoneskip Tanaris,1
step << !Warrior !Rogue !Paladin !Druid
.isQuestComplete 4141
.goto Un'Goro Crater,42.942,9.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muigin|r
.turnin 4141 >> Turn in Muigin and Larion
.accept 4142 >> Accept A Visit to Gregan
.target Muigin
step << !Warrior !Rogue !Paladin !Druid
.isQuestTurnedIn 4141
.goto Un'Goro Crater,42.942,9.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muigin|r
.accept 4142 >> Accept A Visit to Gregan
.target Muigin
step << !Warrior !Rogue !Paladin !Druid
#optional
.goto Un'Goro Crater,43.947,7.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
>>|cRXP_WARN_Use |T133743:0|t[A Mangled Journal] to start the quest|r
.collect 11116,1,3884,1 
.accept 3884 >> Accept Williden's Journal
.turnin 3884 >> Turn in Williden's Journal
.use 11116
.itemcount 11116,1
.target Williden Marshal
.zoneskip Un'Goro Crater,1 
step << !Warrior !Rogue !Paladin !Druid
#optional
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
.zoneskip Un'Goro Crater,1 
step << !Warrior !Rogue !Paladin !Druid
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
.fly Ratchet >> Fly to Ratchet
.target Gryfe
.zoneskip Un'Goro Crater,1
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Ratchet >> Fly to Ratchet
.target Bera Stonehammer
.zoneskip Tanaris,1
step
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> Take the Boat to Booty Bay
]]);
