RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 20-30
#season 0,1
#classic
#tbc
#mop
<< Alliance
#xprate <1.99
#name 27-29 Wetlands/Hillsbrad
#next RestedXP Alliance 30-40\29-32 Duskwood << Hunter
#next 29-30 Ashenvale; RestedXP Alliance 30-40\29-32 Duskwood<< !Hunter
step
#sticky
.abandon 94 >> Abandon A Watchful Eye
step << Mage
.xp <28,1
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
.trainer >> Train your class spells
.target Elsharin
step
#xprate <1.99
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 916,1451,2378,1130 >> Deposit the following items into your bank:
>>|T133688:0|t[A Torn Journal Page]
>>|T134776:0|t[Bottle of Zombie Juice]
>>|T133718:0|t[Skeleton Finger]
>>|T134799:0|t[Vial of Spider Venom]
.target Newton Burnside
step << Hunter
#xprate <1.99
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 3618,3347,3397,5233,5234 >> Withdraw the following items from your bank:
>>|T134299:0|t[Gobbler's Head] 
>>|T134305:0|t[Bundle of Crocolisk Skins] 
>>|T134304:0|t[Young Crocolisk Skins] 
>>|T134458:0|t[Stone of Relu] << Hunter 
>>|T134434:0|t[Flagongut's Fossil] << Hunter 
.target Newton Burnside
step << Warlock
.xp <28,1
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Head to the Slaughtered Lamb and go downstairs
step << Warlock
.xp <28,1
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Warrior
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.xp <28,1
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step << Druid
.xp <28,1
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
.trainer >> Train your class spells
.target Sheldras Moontree
step << !Priest !Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step
.isQuestTurnedIn 323
.goto Stormwind City,39.108,27.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop Farthing|r
.turnin 269 >> Turn in Seeking Wisdom
.accept 270 >> Accept The Doomed Fleet
.target Bishop Farthing
step
#season 0,1
.goto Stormwind City,40.551,30.959
.target Brother Sarno
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sarno|r
.accept 2923 >> Accept Tinkmaster Overspark
step
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
step
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
>>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
.turnin 337 >> Turn in An Old History Book
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step << Hunter
.xp <28,1
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Mage
#completewith next
.zone Ironforge >> Teleport to Ironforge
.itemcount 17031,1 
step
#completewith next
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
step
#season 0,1
.goto Ironforge,69.540,50.325
.target Tinkmaster Overspark
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
.turnin 2923 >> Turn in Tinkmaster Overspark
step << skip 
.dungeon BFD
.goto Ironforge,50.826,5.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.accept 971 >> Accept Knowledge in the Deeps
.target Gerrig Bonegrip
step
.goto Ironforge,55.51,47.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Wetlands>> Fly to Wetlands
.target Gryth Thurden
step
.goto Wetlands,10.585,60.592
.target Glorin Steelbrow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 270 >> Turn in The Doomed Fleet
.isOnQuest 270
step
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
.home >> Set your Hearthstone to Wetlands
.target Innkeeper Helbrek
step
#completewith next
.goto Wetlands,10.368,61.016,8 >> Travel upstairs towards |cRXP_FRIENDLY_Archaeologist Flagongut|r
.isQuestTurnedIn 942
step
.isQuestTurnedIn 942
.goto Wetlands,10.843,60.435
.target Archaeologist Flagongut
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.accept 943 >> Accept The Absent Minded Prospector
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 289 >> Accept The Cursed Crew
step
.goto Wetlands,11.796,57.991
.target Sida
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
.accept 470 >> Accept Digging Through the Ooze
step
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >> Turn in Claws from the Deep << Hunter
.accept 281 >> Accept Reclaiming Goods
.target Karl Boran
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.turnin -469 >> Turn in Daily Delivery
.turnin -484 >> Turn in Young Crocolisk Skins
.accept 471 >> Accept Apprentice's Duties
.target James Halloran
step << skip
#completewith next
.goto Wetlands,9.86,57.48
.target Captain Stoutfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
.turnin 473 >> Turn in Report to Captain Stoutfist
step
#completewith next
.goto Wetlands,10.28,56.334,20,0
.goto Wetlands,9.742,57.866,15 >> Travel upstairs in Menethil Keep
step
.goto Wetlands,9.861,57.486
.target Captain Stoutfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
.accept 464 >> Accept War Banners
step
.goto Wetlands,9.86,57.48
>> Enter the keep and head upstairs
.target Captain Stoutfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
.accept 464 >> Accept War Banners
step
.goto Wetlands,10.84,55.89
.target Harlo Barnaby
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harlo Barnaby|r
.accept 472 >> Accept Fall of Dun Modr
step
.goto Wetlands,11.458,52.163
.target Tarrel Rockweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.accept 305 >> Accept In Search of The Excavation Team
step
.isQuestTurnedIn 279
.goto Wetlands,13.513,41.384
>>Click the |cRXP_PICK_Damaged Crate|r on the ground
.turnin 281 >> Turn in Reclaiming Goods
.accept 284 >> Accept The Search Continues
step
.isQuestTurnedIn 281
.goto Wetlands,13.608,38.214
>>Click the |cRXP_PICK_Sealed Barrel|r on the ground
.turnin 284 >> Turn in The Search Continues
.accept 285 >> Accept Search More Hovels
step
.isQuestTurnedIn 284
.goto Wetlands,13.945,34.809
>>Click the |cRXP_PICK_Half-buried Barrel|r on the ground
.turnin 285 >> Turn in Search More Hovels
.accept 286 >> Accept Return the Statuette
step
#completewith Gnolls
.goto Wetlands,22.25,20.36,0
>>Kill |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
>>|cRXP_WARN_Do this en route to other quests|r
.complete 471,1 
.mob Giant Wetlands Crocolisk
step
.goto Wetlands,14.00,29.80
.goto Wetlands,15.0,24.0
>>Kill |cRXP_ENEMY_Cursed Sailors|r, |cRXP_ENEMY_Cursed Marines|r and |cRXP_ENEMY_First Mate Snellig|r. Loot him for his |cRXP_LOOT_Snuffbox|r
.complete 289,1 
.mob +Cursed Sailor
.complete 289,2 
.mob +Cursed Marine
.complete 289,3 
.mob +First Mate Snellig
step
#label Gnolls
#completewith slimes
.goto Wetlands,30.8,31.0,0
.goto Wetlands,37.8,29.6,0
.goto Wetlands,43.0,33.2,0
>>Kill the |cRXP_ENEMY_Mosshides|r. Loot them for their |cRXP_LOOT_Crude Flints|r
.complete 277,1 
.isOnQuest 277
.mob Mosshide Brute
.mob Mosshide Trapper
.mob Mosshide Fenrunner
.mob Mosshide Mistweaver
.mob Mosshide Mystic
.mob Mosshide Alpha
step
#label slimes
.goto Wetlands,44.25,25.61
>>Kill |cRXP_ENEMY_Crimson Oozes|r, |cRXP_ENEMY_Monstrous Oozes|r and |cRXP_ENEMY_Black Oozes|r. Loot them for |cRXP_LOOT_Sida's Bag|r
.complete 470,1 
.isOnQuest 470
.mob Crimson Ooze
.mob Monstrous Ooze
.mob Black Ooze
step
#completewith next
.goto Wetlands,30.8,31.0,0
.goto Wetlands,37.8,29.6,0
.goto Wetlands,43.0,33.2,0
>>Kill the |cRXP_ENEMY_Mosshides|r on the way to the Orc camp. Loot them for their |cRXP_LOOT_Crude Flints|r
>>|cRXP_WARN_You don't have to complete this objective now but try to make at least some progress|r
.complete 277,1 
.isOnQuest 277
.mob Mosshide Brute
.mob Mosshide Trapper
.mob Mosshide Fenrunner
.mob Mosshide Mistweaver
.mob Mosshide Mystic
.mob Mosshide Alpha
step
.goto Wetlands,43.04,41.63,80 >> Head to the Dragonmaw Orc encampment
step
.goto Wetlands,43.009,41.675,50,0
.goto Wetlands,40.828,45.966,50,0
.goto Wetlands,45.222,44.251
>>Kill |cRXP_ENEMY_Dragonmaw Orcs|r. Loot them for their |cRXP_LOOT_War Banners|r
>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Dragonmaw Raiders|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
.complete 464,1 
.mob Dragonmaw Raider
.mob Dragonmaw Swamprunner
.mob Dragonmaw Battlemaster
.mob Dragonmaw Shadowwarder
.mob Dragonmaw Centurion
.mob Dragonmaw Bonewarder
step
#completewith next
.goto Wetlands,38.790,48.988,20 >> Head towards the mountain shortcut
step << !Hunter
.goto Wetlands,38.17,50.88
.target Ormer Ironbraid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.accept 294 >> Accept Ormer's Revenge
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrin Rockweaver|r and |cRXP_FRIENDLY_Prospector Whelgar|r
.turnin 305 >> Turn in In Search of The Excavation Team
.accept 306 >> Accept In Search of The Excavation Team
.target +Merrin Rockweaver
.accept 299 >> Accept Uncovering the Past
.target +Prospector Whelgar
.goto Wetlands,38.909,52.340
step
.isQuestTurnedIn 942
.goto Wetlands,38.858,52.208
>>Loot |cRXP_LOOT_Flagongut's Fossil|r on the ground
.complete 943,2 
step << Hunter
.isQuestTurnedIn 942
#sticky
#label fossil2
>>Kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
>>|cRXP_WARN_Don't go out of your way to complete this now. You will kill different |cRXP_ENEMY_Raptors|r later|r
.complete 943,1 
.mob Mottled Raptor
.mob Mottled Screecher
step << Hunter
.goto Wetlands,34.32,51.79,40,0
.goto Wetlands,35.73,49.06,40,0
.goto Wetlands,33.86,46.85,40,0
.goto Wetlands,34.91,44.22,40,0
.goto Wetlands,36.62,42.16
>>Open the |cRXP_PICK_Ancient Relics|r and |cRXP_PICK_Loose Soil|r. Loot them for the |cRXP_LOOT_Fragments|r
>>|cRXP_WARN_The |cRXP_LOOT_Fragments|r have random spawn locations in the Excavation Site|r
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step << Hunter
#requires fossil2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
.turnin 299 >> Turn in Uncovering the Past
.goto Wetlands,38.809,52.386
.target Prospector Whelgar
step
.goto Wetlands,30.8,31.0,80,0
.goto Wetlands,37.8,29.6,80,0
.goto Wetlands,43.0,33.2
>>Kill the |cRXP_ENEMY_Mosshides|r. Loot them for their |cRXP_LOOT_Crude Flints|r
.complete 277,1 
.isOnQuest 277
.mob Mosshide Brute
.mob Mosshide Trapper
.mob Mosshide Fenrunner
.mob Mosshide Mistweaver
.mob Mosshide Mystic
.mob Mosshide Alpha
step
#requires slimes
.isQuestComplete 277
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 277 >> Turn in Fire Taboo
.target Rethiel the Greenwarden
.accept 275 >> Accept Blisters on The Land
step
.isQuestTurnedIn 277
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 277 >> Turn in Fire Taboo
.target Rethiel the Greenwarden
.accept 275 >> Accept Blisters on The Land
step
.goto Wetlands,64.78,75.31
>>Loot the |cRXP_LOOT_Musquash Root|r on the ground
.complete 335,2 
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
>>If you just trained, skip this step
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
>>If you just trained, skip this step
.trainer >> Train your class spells
.target Loganaar
step
#completewith next
.hs >> Hearth to Menethil Harbor
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
>>|cRXP_BUY_Buy some extra|r |T133970:0|t[Mutton Chops] |cRXP_BUY_to serve as pet food if needed|r << Hunter
step
#completewith next
.goto Wetlands,10.368,61.016,8 >> Travel upstairs towards |cRXP_FRIENDLY_Archaeologist Flagongut|r
step
.goto Wetlands,10.843,60.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r upstairs
.turnin 943 >> Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
.isQuestComplete 943
step
.goto Wetlands,10.89,59.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.turnin 289 >> Turn in The Cursed Crew
.accept 290 >> Accept Lifting the Curse
.target First Mate Fitzsimmons
step
.isOnQuest 286
.goto Wetlands,8.359,58.526
.target Karl Boran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 286 >> Turn in Return the Statuette
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwina Monzor|r
.goto Wetlands,11.0,58.6
.vendor >> |cRXP_BUY_Restock on |r |T132382:0|t[Razor Arrows] |cRXP_BUY_if needed|r
.target Edwina Monzor
step
.goto Wetlands,11.796,57.991
.target Sida
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
.turnin 470 >> Turn in Digging Through the Ooze
step
#completewith next
.goto Wetlands,10.28,56.334,20,0
.goto Wetlands,9.742,57.866,15 >> Travel upstairs in Menethil Keep
step
.goto Wetlands,9.861,57.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
.turnin 464 >> Turn in War Banners
.accept 465 >> Accept Nek'rosh's Gambit
.target Captain Stoutfist
step
.goto Wetlands,11.458,52.163
.target Tarrel Rockweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.turnin 306 >> Turn in In Search of The Excavation Team
step
#sticky
#label fossil
.isQuestTurnedIn 942
>>Kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
.complete 943,1 
.mob Mottled Raptor
.mob Mottled Screecher
.mob Mottled Scytheclaw
.mob Mottled Razormaw
step << !Hunter
.goto Wetlands,22.4,50.0,70,0
.goto Wetlands,23.0,55.2,70,0
.goto Wetlands,24.4,52.2,70,0
.goto Wetlands,26.2,47.7,70,0
.goto Wetlands,27.8,44.6,70,0
.goto Wetlands,31.4,42.0,70,0
.goto Wetlands,22.8,50.6
>>Kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r
.complete 294,1 
.mob +Mottled Raptor
.complete 294,2 
.mob +Mottled Screecher
step << !Hunter
.goto Wetlands,37.22,43.89,45,0
.goto Wetlands,38.17,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 294 >>Turn in Ormer's Revenge
.accept 295 >>Accept Ormer's Revenge
.target Ormer Ironbraid
step << !Hunter
#completewith Sarltooth
.goto Wetlands,34.32,51.79,40,0
.goto Wetlands,35.73,49.06,40,0
.goto Wetlands,33.86,46.85,40,0
.goto Wetlands,34.91,44.22,40,0
.goto Wetlands,36.62,42.16
>>Open the |cRXP_PICK_Ancient Relics|r and |cRXP_PICK_Loose Soil|r. Loot them for the |cRXP_LOOT_Fragments|r
>>|cRXP_WARN_The |cRXP_LOOT_Fragments|r have random spawn locations in the Excavation Site|r
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step << !Hunter
.goto Wetlands,35.05,44.06,60,0
.goto Wetlands,34.85,49.36,60,0
.goto Wetlands,30.75,48.50,60,0
.goto Wetlands,34.33,47.81
>>Kill |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r
.complete 295,1 
.mob Mottled Scytheclaw
.complete 295,2 
.mob Mottled Razormaw
step << !Hunter
.goto Wetlands,38.17,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 295 >>Turn in Ormer's Revenge
.accept 296 >>Accept Ormer's Revenge
.target Ormer Ironbraid
step << !Hunter
.isQuestComplete 299
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
.turnin 299 >>Turn in Uncovering the Past
.goto Wetlands,38.809,52.386
.target Prospector Whelgar
step << !Hunter
#label Sarltooth
.goto Wetlands,31.410,49.518,30,0
.goto Wetlands,33.25,51.50
>>Kill |cRXP_ENEMY_Sarltooth|r. Loot him for his |cRXP_LOOT_Talon|r
>>|cRXP_WARN_Be careful as he can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
.complete 296,1 
.unitscan Sarltooth
step << !Hunter
.goto Wetlands,34.32,51.79,40,0
.goto Wetlands,35.73,49.06,40,0
.goto Wetlands,33.86,46.85,40,0
.goto Wetlands,34.91,44.22,40,0
.goto Wetlands,36.62,42.16
>>Open the |cRXP_PICK_Ancient Relics|r and |cRXP_PICK_Loose Soil|r. Loot them for the |cRXP_LOOT_Fragments|r
>>|cRXP_WARN_The |cRXP_LOOT_Fragments|r have random spawn locations in the Excavation Site|r
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step << !Hunter
#requires fossil
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r and |cRXP_FRIENDLY_Prospector Whelgar|r
.turnin 296 >>Turn in Ormer's Revenge
.target +Ormer Ironbraid
.goto Wetlands,38.17,50.88
.turnin 299 >>Turn in Uncovering the Past
.target +Prospector Whelgar
.goto Wetlands,38.809,52.386
step
#completewith next
>>Kill |cRXP_ENEMY_Fen Creepers|r
>>|cRXP_ENEMY_Fen Creepers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth] |cRXP_WARN_along the river streams|r
.complete 275,1 
.mob Fen Creeper
.isOnQuest 275
step
#completewith next
.goto Wetlands,18.0,27.0,70,0
.goto Wetlands,22.8,21.8,70,0
.goto Wetlands,28.0,18.8,70,0
.goto Wetlands,18.0,27.0
>>Kill any |cRXP_ENEMY_Giant Wetlands Crocolisks|r you encounter on the way. Loot them for their |cRXP_LOOT_Skin|r
.complete 471,1 
.mob Giant Wetlands Crocolisk
step
#label Halyndor
.goto Wetlands,15.984,23.111,25,0
.goto Wetlands,15.44,23.60
>>Run up the rudder of the ship
>>Kill |cRXP_ENEMY_Captain Halyndor|r. Loot him for the |cRXP_LOOT_Strongbox Key|r
>>|cRXP_WARN_Be careful he can cast|r |T136232:0|t[Ward of the Eye]|cRXP_WARN_ making him|r |cRXP_ENEMY_REFLECT SPELLS|r |cRXP_WARN_for 6 seconds|r
.complete 290,1 
.mob Captain Halyndor
step
.goto Wetlands,14.292,23.609,15,0
.goto Wetlands,14.381,24.047
>>Enter through the large hole on the side of the ship
>>Click |cRXP_PICK_Intrepid's Locked Strongbox|r on the ground
.turnin 290 >>Turn in Lifting the Curse
.accept 292 >>Accept The Eye of Paleth
step
#completewith next
>>Kill |cRXP_ENEMY_Fen Creepers|r
>>|cRXP_ENEMY_Fen Creepers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth] |cRXP_WARN_along the river streams|r
.complete 275,1 
.mob Fen Creeper
.isOnQuest 275
step
.goto Wetlands,18.0,27.0,70,0
.goto Wetlands,22.8,21.8,70,0
.goto Wetlands,28.0,18.8,70,0
.goto Wetlands,18.0,27.0
>>Kill |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 471,1 
.mob Giant Wetlands Crocolisk
step
#completewith Gambit
.goto Wetlands,27.6,37.2,50,0
.goto Wetlands,40.8,32.8,50,0
.goto Wetlands,46.6,29.6,50,0
.goto Wetlands,48.8,37.2,50,0
.goto Wetlands,54.8,37.8,50,0
.goto Wetlands,27.6,37.2,0
.goto Wetlands,40.8,32.8,0
.goto Wetlands,46.6,29.6,0
.goto Wetlands,48.8,37.2,0
.goto Wetlands,54.8,37.8,0
.goto Wetlands,20.72,28.74,0
>>Kill all |cRXP_ENEMY_Fen Creepers|r you can find as you head towards the Dragonmaw Orc encampment
>>|cRXP_ENEMY_Fen Creepers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth] |cRXP_WARN_along the river streams|r
>>|cRXP_WARN_You don't have to complete this objective now but you should encounter around 8-10 of them while heading east if no one killed them beforehand|r
.complete 275,1 
.mob Fen Creeper
.isOnQuest 275
step
#label Gambit
.solo
.goto Wetlands,47.45,47.01
>>Click the |cRXP_PICK_Dragonmaw Catapult|r
.turnin 465 >>Turn in Nek'rosh's Gambit
.accept 474 >>Accept Defeat Nek'rosh << Hunter/Warlock/Mage
step
#label Gambit
.group
.goto Wetlands,47.45,47.01
>>Click the |cRXP_PICK_Dragonmaw Catapult|r
.turnin 465 >>Turn in Nek'rosh's Gambit
.accept 474 >>Accept Defeat Nek'rosh
step << Hunter/Warlock/Mage
.goto Wetlands,53.2,56.0,40,0
.goto Wetlands,53.2,56.0,0
>>Kill |cRXP_ENEMY_Chieftain Nek'rosh|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_You can split pull Nek'Rosh from the mobs around him by using|r |T136186:0|t[Rain of Fire] << Warlock
>>|cRXP_WARN_You can split pull Nek'Rosh from the mobs around him by using|r |T135857:0|t[Blizzard] << Mage
>>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_is snareable|r
>>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_can be|r |T136183:0|t[Feared] << Warlock
>>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_is immune to Fire damage|r << Mage/Warlock
.complete 474,1 
.mob Chieftain Nek'rosh
.link https://youtu.be/MG-n3xRq-oo >>|cRXP_WARN_Click here for a video guide|r << Warlock
.link https://youtu.be/8PkbHJr4oH0 >>|cRXP_WARN_Click here for a video guide|r << Hunter
step
.group 3
.goto Wetlands,53.2,56.0,40,0
.goto Wetlands,53.2,56.0,0
>>Kill |cRXP_ENEMY_Chieftain Nek'rosh|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_You can split pull Nek'Rosh from the mobs around him by using|r |T136186:0|t[Rain of Fire] << Warlock
>>|cRXP_WARN_You can split pull Nek'Rosh from the mobs around him by using|r |T135857:0|t[Blizzard] << Mage
>>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_is snareable|r
>>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_can be|r |T136183:0|t[Feared] << Warlock/Priest
>>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_is immune to Fire damage|r << Mage/Warlock
.complete 474,1 
.mob Chieftain Nek'rosh
.link https://youtu.be/MG-n3xRq-oo >>|cRXP_WARN_Click here for a video guide|r << Warlock
.link https://youtu.be/8PkbHJr4oH0 >>|cRXP_WARN_Click here for a video guide|r << Hunter
step
#loop
.goto Wetlands,54.8,37.8,0
.goto Wetlands,56.08,46.94,0
.goto Wetlands,54.63,44.27,0
.goto Wetlands,52.84,35.64,0
.goto Wetlands,53.44,31.77,0
.goto Wetlands,51.06,32.72,0
>>Finish off killing |cRXP_ENEMY_Fen Creepers|r, there should be spawns in the ponds north and south of the |cRXP_FRIENDLY_Greenwarden|r (marked on your map)
>>|cRXP_ENEMY_Fen Creepers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
>>|cRXP_WARN_Skip this quest if you can't find any and you aren't close to completing it|r
.complete 275,1 
.mob Fen Creeper
.isOnQuest 275
step
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 275 >>Turn in Blisters on The Land
.target Rethiel the Greenwarden
.isQuestComplete 275
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r and |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 472 >>Turn in Fall of Dun Modr
.target +Longbraid the Grim
.goto Wetlands,49.803,18.257
.accept 631 >>Accept The Thandol Span
.target +Rhag Garmason
.goto Wetlands,49.908,18.233
step
.group 3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r and |cRXP_FRIENDLY_Longbraid the Grim|r
.accept 303 >> Accept The Dark Iron War
.target +Motley Garmason
.goto Wetlands,49.665,18.231
.accept 304 >> Accept A Grim Task
.target +Longbraid the Grim
.goto Wetlands,49.803,18.257
step
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
.group 3
.goto Wetlands,62.48,28.41
>>Kill |cRXP_ENEMY_Balgaras the Foul|r. Loot him for his |cRXP_LOOT_Ear|r
.complete 304,1 
.mob Balgaras the Foul
step
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
.group
.goto Wetlands,49.665,18.231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r
.turnin 303 >> Turn in The Dark Iron War
.target Motley Garmason
.isQuestComplete 303
step
.group
.goto Wetlands,49.803,18.257
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
.turnin 304 >> Turn in A Grim Task
.target Longbraid the Grim
.isQuestComplete 304
step
.goto Wetlands,51.481,8.111,15,0
.goto Wetlands,51.115,8.156,15,0
.goto Wetlands,51.287,7.953
>>Click on |cRXP_PICK_Ebenezer Rustlocke's Corpse|r
>>|cRXP_WARN_Ensure you are on full HP before going down the Spiral Staircase. There are 2 Elite |cRXP_ENEMY_Dark Iron Sabotuers|r. Cast any crowd-control abilities on them when once you go down and then run past them. Run back up and out after|r
.turnin 631 >>Turn in The Thandol Span
.accept 632 >>Accept The Thandol Span
.link https://youtu.be/awe7f-iI-ic >>|cRXP_WARN_Click here for a video guide|r
step
.goto Wetlands,49.908,18.233
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 632 >>Turn in The Thandol Span
.accept 633 >>Accept The Thandol Span
.target Rhag Garmason
step
.goto Arathi Highlands,43.240,92.643
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foggy MacKreel|r
>>|cRXP_WARN_Jump down onto the invisible chain first, then onto the broken beam on the bridge. All classes are able to do this jump. If you are unable to do it, skip this step|r
.accept 647 >>Accept MacKreel's Moonshine
.target Foggy MacKreel
.link https://youtu.be/YZn1Uy47cb8 >>|cRXP_WARN_Click here for a video guide|r
step
#completewith next
+|cRXP_WARN_Keep in mind that MacKreel's Moonshine is a timed quest. You only have 15 minutes to deliver it so do not take breaks during this segment!|r
step
.goto Arathi Highlands,44.28,92.877
>>Dive down underwater
>>Open the |cRXP_PICK_Waterlogged Letter|r. Loot it for the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r]
>>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r] to start the quest|r
.collect 4433,1,637
.use 4433
.accept 637 >>Accept Sully Balloo's Letter
step
#completewith PleaTurnin
.goto Arathi Highlands,52.5,90.4,30 >>Swim east toward the ramp here
step
.goto Arathi Highlands,48.789,88.058
>>Click the |cRXP_PICK_Cache of Explosives|r
.complete 633,1 
step
#label PleaTurnin
.goto Wetlands,49.908,18.233
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 633 >>Turn in The Thandol Span
.accept 634 >>Accept Plea To The Alliance
.target Rhag Garmason
step
#completewith next
.goto Arathi Highlands,45.83,47.55,150 >> Travel to Refuge Point
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.goto Arathi Highlands,45.83,47.55
.turnin 634 >>Turn in Plea To The Alliance
.target Captain Nials
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.goto Arathi Highlands,45.73,46.09
.fp Arathi >> Get the Arathi Highlands Flight Path
.fly Southshore >> Fly to Southshore
.target Cedrik Prose
.dungeon SFK
step
.goto Hillsbrad Foothills,50.71,58.76,15,0
.goto Hillsbrad Foothills,52.09,58.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmeister Bilger|r in the basement
>>|cRXP_WARN_If you fail this timed quest, abandon it and skip this step|r
.turnin 647 >>Turn in MacKreel's Moonshine
.target Brewmeister Bilger
.dungeon SFK
.isOnQuest 647
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.goto Arathi Highlands,45.73,46.09
.fp Arathi >> Get the Arathi Highlands Flight Path
.target Cedrik Prose
.dungeon !SFK
step << skip
#completewith next
.goto Arathi Highlands,27.0,58.8,0
.vendor >> Buy all 3 first aid books inside Stromgarde if you are leveling first aid
step
#completewith Moonshine
+|cRXP_WARN_Be careful not to run into the|r |cRXP_ENEMY_Forsaken Courier|r |cRXP_WARN_who can be patrolling the road from Go'shek Farm to Tarren Mill|r
.unitscan Forsaken Courier
.unitscan Forsaken Bodyguard
step
#completewith SouthshoreEndHunter << Hunter
#completewith SouthshoreEnd << !Hunter
>>|cRXP_WARN_Be careful while entering Southshore!|r Every now and then level 37-38 |T132320:0|t[Stealthed] |cRXP_ENEMY_Shadowy Assassins|r ambush the town!
>>If you manage to kill one you will be able to loot an item that starts a quest: |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]. |cRXP_WARN_The event is rare and the mobs are hard to kill at this level so do not go out of your way to try to get it|r
.unitscan Shadowy Assassin
.collect 3668,1 
step 
#softcore
#label Moonshine
>>Travel to the basement in the Southshore Inn. If you fail the timed quest, abandon it and skip this step
>>If you die, the quest will fail
.goto Arathi Highlands,19.72,29.04,150,0
.goto Hillsbrad Foothills,50.71,58.76,15,0
.goto Hillsbrad Foothills,52.09,58.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmeister Bilger|r
.turnin 647 >>Turn in MacKreel's Moonshine
.target Brewmeister Bilger
.dungeon !SFK
step 
#hardcore
#label Moonshine
>>Travel to the basement in the Southshore Inn. If you fail the timed quest, abandon it and skip this step
.goto Arathi Highlands,19.72,29.04,150,0
.goto Hillsbrad Foothills,50.71,58.76,15,0
.goto Hillsbrad Foothills,52.09,58.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmeister Bilger|r
.turnin 647 >>Turn in MacKreel's Moonshine
.target Brewmeister Bilger
.dungeon !SFK
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley|r
.goto Hillsbrad Foothills,50.415,58.803
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Elder Moss Creeper|r shortly
.target Wesley
step
#label SouthshoreEnd << !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fp Southshore >>Get the Southshore Flight Path
.target Darla Harris
.dungeon !SFK
step << Hunter
.goto Hillsbrad Foothills,56.6,53.8
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Moss Creeper|r to tame it|r 
.train 17264 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.unitscan Elder Moss Creeper
step << Hunter
#label SouthshoreEndHunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley|r
.goto Hillsbrad Foothills,50.415,58.803
.stable >> Withdraw your pet from the stable. Remember to use |T132162:0|t[|cRXP_FRIENDLY_Beast Training|r] to teach it |T132278:0|t[|cRXP_FRIENDLY_Bite|r (Rank 4)]
.target Wesley
step << Hunter
#xprate <1.2
.goto Hillsbrad Foothills,55.72,57.03,60,0
.goto Hillsbrad Foothills,59.83,45.23,60,0
.goto Hillsbrad Foothills,65.43,39.35
.mob Snapjaw
>> Grind |cRXP_ENEMY_Snapjaws|r along the river north |cRXP_WARN_untill your hearthstone is off cooldown|r
.hs >> Hearth to Menethil Harbor
.collect 3712,10 >>Loot them for |cRXP_LOOT_Turtle Meat|r. You will need 10 for a quest later. |cRXP_WARN_Don't go out of your way to farm it now|r
.disablecheckbox
step << !Hunter
#xprate <1.2
#completewith next
.goto Hillsbrad Foothills,55.72,57.03,60,0
.goto Hillsbrad Foothills,59.83,45.23,60,0
.goto Hillsbrad Foothills,65.43,39.35
+Kill |cRXP_ENEMY_Snapjaws|r along the river and farm about 5 |cRXP_LOOT_Turtle Meat|r, you'll need 10 for a quest later, don't go out of your way to kill them
.collect 3712,5
.mob Snapjaw
step
#xprate >1.19 << Hunter
#label end
#completewith next
.hs >>Hearth to Menethil Harbor
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 292 >>Turn in The Eye of Paleth
.accept 293 >>Accept Cleansing the Eye
.accept 321 >>Accept Lightforge Iron
.target Glorin Steelbrow
.isQuestTurnedIn 270
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 292 >>Turn in The Eye of Paleth
.accept 293 >>Accept Cleansing the Eye
.target Glorin Steelbrow
.isQuestAvailable 270
step
#completewith next
.goto Wetlands,10.368,61.016,8 >> Travel upstairs towards |cRXP_FRIENDLY_Archaeologist Flagongut|r
step
.isQuestTurnedIn 942
.goto Wetlands,10.84,60.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.turnin 943 >>Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwina Monzor|r
.goto Wetlands,11.0,58.6
.vendor >> |cRXP_BUY_Restock on |r |T132382:0|t[Razor Arrows] |cRXP_BUY_if needed|r
.target Edwina Monzor
step
>>Click the |cRXP_PICK_Waterlogged Chest|r
.goto Wetlands,12.10,64.19
.turnin 321 >>Turn in Lightforge Iron
.accept 324 >>Accept The Lost Ingots
.isQuestTurnedIn 270
step
.goto Wetlands,12.6,65.2,60,0
.goto Wetlands,10.2,71.0,60,0
.goto Wetlands,7.2,72.6,60,0
.goto Wetlands,12.6,65.2
>>Kill |cRXP_ENEMY_Bluegill Raiders|r. Loot them for |cRXP_LOOT_Ingots|r
.complete 324,1 
.mob Bluegill Raider
.isQuestTurnedIn 270
step << Hunter
#xprate <1.2
.goto Wetlands,9.54,69.70
.xp 29+29000 >> Grind to |cRXP_ENEMY_Murlocs|r 29000/44300 xp
.isQuestComplete 474
.isQuestComplete 471 
.mob Bluegill Raider
step << Hunter
#xprate <1.2
.goto Wetlands,9.54,69.70
.xp 29+31100 >> Grind |cRXP_ENEMY_Murlocs|r to 31100/44300 xp
.itemcount 3348,<6 
.isQuestComplete 474 
.mob Bluegill Raider
step << Hunter
#xprate <1.2
.goto Wetlands,9.54,69.70
.xp 29+31550 >> Grind |cRXP_ENEMY_Murlocs|r to 31550/44300 xp
.itemcount 3625,<1 
.isQuestComplete 471 
.mob Bluegill Raider
step << Hunter
#xprate <1.2
.goto Wetlands,9.54,69.70
.xp 29+33650 >> Grind |cRXP_ENEMY_Murlocs|r to 33650/44300 xp
.itemcount 3625,<1 
.itemcount 3348,<6 
.mob Bluegill Raider
step
.goto Wetlands,8.54,55.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.turnin 471 >>Turn in Apprentice's Duties
.isQuestComplete 471
.target James Halloran
step << Hunter/Warlock/Mage
.solo
.isQuestComplete 474
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r on the top level of the keep
.goto Wetlands,9.86,57.48
.turnin 474 >> Turn in Defeat Nek'rosh
.target Captain Stoutfist
step
.group
.isQuestComplete 474
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r on the top level of the keep
.goto Wetlands,9.86,57.48
.turnin 474 >> Turn in Defeat Nek'rosh
.target Captain Stoutfist
step
.goto Wetlands,10.58,60.59
.abandon 474 >> Abandon Defeat Nek'rosh
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 324 >>Turn in The Lost Ingots
.accept 322 >>Accept Blessed Arm
.target Glorin Steelbrow
.isQuestTurnedIn 270
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.goto Wetlands,9.49,59.70
.fly Ironforge >>Fly to Ironforge
.target Shellei Brondir
.zoneskip Ironforge
]]);
