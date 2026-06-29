RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#classic
#tbc
#mop
#season 2
<< Alliance
#name 36-38 Stranglethorn Vale I SoD
#displayname 36-38 Stranglethorn Vale I
#next 38-39 Stranglethorn Vale II SoD
step
.goto Stranglethorn Vale,26.345,73.564
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
.turnin 1180 >>Turn in Goblin Sponsorship
.accept 1181 >>Accept Goblin Sponsorship
.target Wharfmaster Lozgil
.isOnQuest 1180
step
#season 0,1
#optional
.goto Stranglethorn Vale,27.600,77.481
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scooty|r
.turnin 2904 >> Turn in A Fine Mess
.isQuestComplete 2904
.target Scooty
step
#xprate <1.2
.isQuestTurnedIn 1038
.goto Stranglethorn Vale,27.368,74.079
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
.turnin 1040 >>Turn in Passage to Booty Bay
.accept 1041 >>Accept The Caravan Road
.target Caravaneer Ruzzgot
step
.goto Stranglethorn Vale,27.04,77.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
.home >>Set your Hearthstone to Booty Bay
.target Innkeeper Skindle
step
.goto Stranglethorn Vale,27.0,77.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
.turnin 79235 >> Turn in On the Lam
.isOnQuest 79235
step
.goto Stranglethorn Vale,27.0,77.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
.accept 79236 >> Accept Cherry for Your Thoughts?
.isQuestTurnedIn 79235
step
.goto Stranglethorn Vale,27.04,77.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r buy one |T132790:0|t[Cherry Grog] from him
.collect 4600,1 
.target Innkeeper Skindle
.isOnQuest 79236
step
.goto Stranglethorn Vale,27.0,77.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
.turnin 79236 >> Turn in Cherry for Your Thoughts?
.accept 79242 >> Accept No Honor Among Thieves
.target Tokal
.isOnQuest 79236
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
.goto Stranglethorn Vale,27.000,77.124
.accept 198 >>Accept Supplies to Private Thorsen
.accept 201 >>Accept Investigate the Camp
.accept 616 >>Accept The Haunted Isle
.goto Stranglethorn Vale,26.943,77.207
.target Kebok
.target Krazek
step
.goto Stranglethorn Vale,27.22,76.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 616 >>Turn in The Haunted Isle
.accept 578 >>Accept The Stone of the Tides
.turnin 1181 >>Turn in Goblin Sponsorship
.accept 1182 >>Accept Goblin Sponsorship
.target Baron Revilgaz
.isOnQuest 1181
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.accept 575 >>Accept Supply and Demand
.target Drizzlik
step
.destroy 3898 >>Throw away the |T134939:0|t[Library Scrip]
step << Mage
#xprate >1.99
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
#xprate >1.99
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << !Mage
#xprate >1.99
.goto Stranglethorn Vale,27.530,77.787
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.fly Stormwind>> Fly to Stormwind
.target Gyll
step
#xprate >1.99
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 3721,3521,4521 >> Withdraw the following items from your bank: << Warlock
.bankwithdraw 3721,3521,4521,5996 >> Withdraw the following items from your bank: << !Warlock
>>|T133461:0|t[Farren's Report] 
>>|T134939:0|t[Cleverly Encrypted Letter] (If you found it earlier) 
>>|T134797:0|t[Elixir of Water Breathing] (If you have one) << !Warlock 
.target Newton Burnside
step
#xprate >1.99
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> Deposit the following items into your bank:
>>Deposit any |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
.target Newton Burnside
step << !Warlock
#xprate >1.99
#ah
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
>>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_from the Auction House|r
.collect 5996,1 
.target Newton Burnside
step << Warlock
#xprate >1.99
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Head to the Slaughtered Lamb and go downstairs
step << Warlock
#xprate >1.99
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Paladin/Priest
#xprate >1.99
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step
#xprate >1.99
.goto Stormwind City,51.75,12.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
.turnin 322 >> Turn in Blessed Arm
.accept 325 >> Accept Armed and Ready
.target Grimand Elmore
.isQuestTurnedIn 324
step << Hunter
#xprate >1.99
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.train 1543 >>Make sure you train |T135815:0|t[|cRXP_FRIENDLY_Flare|r]. You will need it for a rune later
.target Einris Brightspear
.train 410116,1
step << Hunter
#xprate >1.99
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
.train 410116,3
step << Hunter
#xprate >1.99
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r
.trainer >> Train your pet spells
.target Karrina Mekenda
step
#xprate >1.99
#completewith next
.goto Stormwind City,71.68,25.60,40 >> Travel to the Stormwind Keep
step
#xprate >1.99
.goto Stormwind City,77.30,17.18,25,0
.goto Stormwind City,72.571,15.888
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Major Samuelson|r
.turnin 563 >> Turn in Reassignment
.target Major Samuelson
step
#xprate >1.99
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
>>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
.accept 337 >> Accept An Old History Book
.turnin 337 >> Turn in An Old History Book
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step << Warrior
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
#xprate >1.99
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step
#xprate >1.99
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Westfall >> Fly to Westfall
.target Dungar Longdrink
step
#xprate >1.99
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 325 >> Turn in Armed and Ready
.accept 55 >> Accept Morbent Fel
.target Sven Yorgen
.isQuestTurnedIn 322
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.accept 55 >> Accept Morbent Fel
.maxlevel 38
step
#xprate >1.99
.goto Duskwood,19.59,37.28
>>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
.complete 228,1 
.unitscan Mor'Ladim
step
#xprate >1.99
#completewith next
>>Clear your way to the 2nd floor of the house
.cast 8913 >>|cRXP_WARN_Equip|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_in your off-hand|r
>>|cRXP_WARN_Use|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
>>|cRXP_WARN_Remember to equip your weapon/off-hand slot after weakening him|r
.use 7297
step
#xprate >1.99
.goto Duskwood,16.90,33.40
>>Kill |cRXP_ENEMY_Morbent Fel|r
>>|cRXP_WARN_This quest can be difficult. If you aren't confident doing it, you may skip this step|r
.complete 55,1 
.use 7297
.mob Morbent Fel
.isOnQuest 55
step
#xprate >1.99
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 55 >> Turn in Morbent Fel
.isQuestComplete 55
.target Sven Yorgen
step
#xprate >1.99
#optional
.abandon 55 >> Abandon Morbent Fel
step
.isOnQuest 231
>>Click |cRXP_PICK_A Weathered Grave|r
.goto Duskwood,17.72,29.07
.turnin 231 >> Turn in A Daughter's Love
step
.destroy 2154 >> Delete the |T133741:0|t[The Story of Morgan Ladimore]
step
>>|cRXP_WARN_At midnight and every 3 hours thereafter a|r |cRXP_ENEMY_Blood Moon PVP event|r |cRXP_WARN_will happen in STV.
>>|cRXP_WARN_THIS WILL MAKE YOU HOSTILE TO FRIENDLY NPCS.|r
>>|cRXP_WARN_To opt out of it and avoid issues while questing talk to the|r |cRXP_FRIENDLY_Zandalarian Emissary|r |cRXP_WARN_on the border of Duskwood and STV. Complete his dialogue and he will grant you with a buff preventing the blood moon from taking effect|r
.goto Duskwood,44.8,85.2,15 >> Travel to northern Stranglethorn Vale
.unitscan Zandalarian Emissary
step
#completewith Fern
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
>>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
>>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
.accept 215 >> Accept Jungle Secrets
.unitscan Private Thorsen
.mob Kurzen's Agent
step
#label ThorsenR
.goto Stranglethorn Vale,37.980,3.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r at the Rebel Camp
>>|cRXP_WARN_If |cRXP_FRIENDLY_Private Thorsen|r isn't at the Rebel Camp he may be in progress for his special event. Skip this step. Look for him down the path if you havn't accepted his quest yet|r
.turnin 198 >>Turn in Supplies to Private Thorsen
.target Private Thorsen
step
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
.accept 203 >>Accept The Second Rebellion
.accept 204 >>Accept Bad Medicine
.target Sergeant Yohwa
step
.goto Stranglethorn Vale,37.740,3.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
.accept 210 >> Accept Krazek's Cookery
.target Corporal Kaleb
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 215 >> Turn in Jungle Secrets
.isOnQuest 215
.target Lieutenant Doren
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.accept 200 >> Accept Bookie Herod
.isQuestAvailable 200
.target Lieutenant Doren
step
#completewith Fern
.goto Stranglethorn Vale,32.6,8.8,0
.goto Stranglethorn Vale,36.8,10.6,0
.goto Stranglethorn Vale,40.8,13.8,0
>>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.accept 583 >> Accept Welcome to the Jungle
.goto Stranglethorn Vale,35.662,10.529
.turnin 583 >> Turn in Welcome to the Jungle
.goto Stranglethorn Vale,35.658,10.808
.target Barnil Stonepot
.target Hemet Nesingwary
step
.goto Stranglethorn Vale,35.658,10.808
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 5762 >> Turn in Hemet Nesingwary
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 185 >> Accept Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.accept 190 >> Accept Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Ajeck Rouack
.target Sir S. J. Erlgadin
.xp >39,1,SkipHemet
step
.goto Stranglethorn Vale,35.40,12.50,50,0
.goto Stranglethorn Vale,33.30,11.90,50,0
.goto Stranglethorn Vale,31.76,9.00,50,0
.goto Stranglethorn Vale,35.40,12.50
>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
.turnin 185 >>Turn in Tiger Mastery
.accept 186 >>Accept Tiger Mastery
.target Ajeck Rouack
step
.goto Stranglethorn Vale,41.50,12.00,50,0
.goto Stranglethorn Vale,42.74,12.40,50,0
.goto Stranglethorn Vale,41.43,9.77,50,0
.goto Stranglethorn Vale,40.67,11.65,50,0
.goto Stranglethorn Vale,41.50,12.00
>>Kill |cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step
.goto Stranglethorn Vale,46.75,15.81
>>Kill |cRXP_ENEMY_Stranglethorn Tigers|r
.complete 186,1 
.mob Stranglethorn Tiger
step
.goto Stranglethorn Vale,42.646,18.353
>>Kill |cRXP_ENEMY_Foreman Cozzle|r atop the Oil Rig. Loot him for his |cRXP_LOOT_Key|r
.collect 5851,1,1182,1 
.mob Foreman Cozzle
.isOnQuest 1182
step
#label Prints
.goto Stranglethorn Vale,43.332,20.329
>>Open |cRXP_PICK_Cozzle's Footlocker|r. Loot it for the |cRXP_LOOT_Fuel Regulator Blueprints|r
.complete 1182,1 
.isOnQuest 1182
step
.goto Stranglethorn Vale,41.50,12.00,50,0
.goto Stranglethorn Vale,42.74,12.40,50,0
.goto Stranglethorn Vale,41.43,9.77,50,0
.goto Stranglethorn Vale,40.67,11.65,50,0
.goto Stranglethorn Vale,41.50,12.00
>>Kill |cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step
#completewith next
.goto Stranglethorn Vale,32.6,8.8,0
.goto Stranglethorn Vale,36.8,10.6,0
.goto Stranglethorn Vale,40.8,13.8,0
>>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 194 >> Accept Raptor Mastery
.goto Stranglethorn Vale,35.658,10.808
.turnin 186 >> Turn in Tiger Mastery
.accept 187 >> Accept Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.turnin 190 >>Turn in Panther Mastery
.accept 191 >> Accept Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#label SkipHemet
.goto Stranglethorn Vale,32.6,8.8,60,0
.goto Stranglethorn Vale,36.8,10.6,60,0
.goto Stranglethorn Vale,40.8,13.8,60,0
.goto Stranglethorn Vale,32.6,8.8,60,0
.goto Stranglethorn Vale,36.8,10.6,60,0
.goto Stranglethorn Vale,40.8,13.8,60,0
.goto Stranglethorn Vale,36.8,10.6
>>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step << Hunter
#season 2
.train 410116,1 >>|cRXP_WARN_You will need |T135815:0|t[Flare] to get this rune, skip it if you don't have the spell|r
.goto Stranglethorn Vale,31.84,15.61
+|cRXP_WARN_Travel to the arrow location and run around until the buff called|r |T132118:0|t[Danger!] |cRXP_WARN_appears on you|r
.aura 435548
.aura 435428
.aura 435546
.train 1543,3
.train 410116,1
step << Hunter
#season 2
.train 410116,1
.goto Stranglethorn Vale,31.84,15.61
#completewith next
.cast 1543 >>|cRXP_WARN_Cast|r |T135815:0|t[Flare] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Bloodscalp Guerrilla|r
.usespell 1543
.train 1543,3
.train 410116,1
step << Hunter
#season 2
.train 410116,1
.goto Stranglethorn Vale,31.84,15.61
>>Kill the |cRXP_ENEMY_Bloodscalp Guerrilla|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Scrapper|r]
.collect 213126,1
.mob Bloodscalp Guerrilla
.train 1543,3
step << Hunter
#season 2
.itemcount 213126,1
.use 213126
.train 410116 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Scrapper|r] |cRXP_WARN_to train|r |T132147:0|t[Dual-Wield Specialization]
.train 1543,3
step << Hunter
#optional
#completewith next
#season 2
.engrave 8 >> Open your character sheet and engrave your boots with |T132147:0|t[Dual-Wield Specialization]
.train 1543,3
step
#completewith next
>>Kill |cRXP_ENEMY_Panthers|r
.complete 191,1 
.mob Panther
.isOnQuest 191
step
.goto Stranglethorn Vale,31.52,16.61,60,0
.goto Stranglethorn Vale,31.91,19.93,60,0
.goto Stranglethorn Vale,34.36,18.58,60,0
.goto Stranglethorn Vale,31.52,16.61,60,0
.goto Stranglethorn Vale,31.91,19.93
>>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
.isOnQuest 187
step
.goto Stranglethorn Vale,30.4,12.4,60,0
.goto Stranglethorn Vale,29.4,8.8,60,0
.goto Stranglethorn Vale,28.2,12.0,60,0
.goto Stranglethorn Vale,28.2,16.4,60,0
.goto Stranglethorn Vale,29.8,11.2
>>Kill |cRXP_ENEMY_Panthers|r
.complete 191,1 
.mob Panther
.isOnQuest 191
step
.goto Stranglethorn Vale,27.61,15.39,60,0
.goto Stranglethorn Vale,25.91,16.33,60,0
.goto Stranglethorn Vale,24.24,15.84,60,0
.goto Stranglethorn Vale,27.16,16.06
>>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
.complete 194,1 
.mob Stranglethorn Raptor
.isOnQuest 194
step
.goto Stranglethorn Vale,21.580,21.842
.goto Stranglethorn Vale,21.580,21.842 >> Travel to the Haunted Island
.complete 578,1 
step << !Hunter
#softcore
#completewith next
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
#completewith next
.goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 194 >> Turn in Raptor Mastery
.accept 195 >>Accept Raptor Mastery
.goto Stranglethorn Vale,35.658,10.808
.target Hemet Nesingwary
.isQuestComplete 194
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
.turnin 187 >> Turn in Tiger Mastery
.accept 188 >> Accept Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.target Ajeck Rouack
.isQuestComplete 187
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 191 >> Turn in Panther Mastery
.accept 192 >> Accept Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Sir S. J. Erlgadin
.isQuestComplete 191
step << Druid
#completewith next
>>|cRXP_WARN_If your hearthstone is not off cooldown yet, start doing the first Kurzen quest untill it's ready|r
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step
#completewith next
>>|cRXP_WARN_If your hearthstone is not off cooldown yet, start doing the first Kurzen quest untill it's ready|r << !Druid
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
.goto Stranglethorn Vale,27.000,77.124
.turnin 201 >> Turn in Investigate the Camp
.turnin 210 >> Turn in Krazek's Cookery
.accept 189 >> Accept Bloodscalp Ears << Warrior
.goto Stranglethorn Vale,26.943,77.207
.target Kebok
.target Krazek
step
#optional
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.accept 627 >> Accept Favor for Krazek
.turnin 627 >> Turn in Favor for Krazek
.accept 622 >> Accept Return to Corporal Kaleb
.itemcount 4278,4 
.target Krazek
step
#optional
.isQuestTurnedIn 627
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.accept 622 >> Accept Return to Corporal Kaleb
.target Krazek
step
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 1182 >>Turn in Goblin Sponsorship
.turnin 578 >> Turn in The Stone of the Tides
.accept 601 >> Accept Water Elementals
.target Baron Revilgaz
.isOnQuest 1182
step << Rogue
#season 2
.train 425103,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Aransas|r
>>She will give you |T133640:0|t[|cRXP_LOOT_Captain Aransas' Reward|r]
.goto Stranglethorn Vale,27.681,76.648
.skipgossip
.collect 216618,1
.target Captain Aransas
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
.use 216618 >>Open |T133640:0|t[|cRXP_LOOT_Captain Aransas' Reward|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r] and |T338666:0|t[|cRXP_FRIENDLY_Jani's Charm|r]
>>|cRXP_WARN_Do NOT destroy|r |T338666:0|t[|cRXP_FRIENDLY_Jani's Charm|r] |cRXP_WARN_as it is used for gather future runes|r
.collect 213136,1
.skill lockpicking,<125,1
step << Rogue
#season 2
.itemcount 213136,1
.use 213136
.train 425103 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r] |cRXP_WARN_to train|r |T132299:0|t[Master of Subtlety]
.skill lockpicking,<125,1
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 575 >> Turn in Supply and Demand
.accept 577 >> Accept Some Assembly Required
.target Drizzlik
]]);
