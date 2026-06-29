RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 34-35 Stranglethorn Vale I
#next 35-36 Desolace;36-38 Stranglethorn Vale II << Hunter
#next 35-37 Desolace;36-38 Stranglethorn Vale II << !Hunter
step
.goto Stranglethorn Vale,26.345,73.564
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
.turnin 1180 >>Turn in Goblin Sponsorship
.accept 1181 >>Accept Goblin Sponsorship
.target Wharfmaster Lozgil
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
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 605 >>Accept Singing Blue Shards
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.04,77.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
.home >>Set your Hearthstone to Booty Bay
.target Innkeeper Skindle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
.accept 213 >> Accept Hostile Takeover
.target Kebok
.goto Stranglethorn Vale,27.000,77.124
.accept 198 >>Accept Supplies to Private Thorsen
.accept 201 >>Accept Investigate the Camp
.accept 616 >>Accept The Haunted Isle
.goto Stranglethorn Vale,26.943,77.207
.target Krazek
step
.goto Stranglethorn Vale,27.22,76.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 616 >>Turn in The Haunted Isle
.accept 578 >>Accept The Stone of the Tides
.turnin 1181 >>Turn in Goblin Sponsorship
.accept 1182 >>Accept Goblin Sponsorship
.target Baron Revilgaz
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
step
#xprate >1.99
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step
#xprate >1.99
#sticky
#label Eye
.goto Stormwind City,39.60,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.turnin 293 >> Turn in Cleansing the Eye
.target Archbishop Benedictus
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
step
#xprate >1.99
.dungeon Gnomer
#season 0,1
.goto StormwindClassic,55.511,12.502
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
.turnin 2928 >> Turn in Gyrodrillmatic Excavationators
.target Shoni the Shilent
.isQuestComplete 2928
step << Hunter
#xprate >1.99
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.train 1543 >>Make sure you train |T135815:0|t[|cRXP_FRIENDLY_Flare|r]. You will need it for a rune later
.target Einris Brightspear
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
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Westfall >> Fly to Westfall
.target Gyll
step
#xprate <1.99
#completewith ThorsenR
.goto Duskwood,17.72,29.07
.zone Duskwood >> Travel to Duskwood
step
#xprate >1.99
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 325 >> Turn in Armed and Ready
.accept 55 >> Accept Morbent Fel
.target Sven Yorgen
.isQuestTurnedIn 322
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
#completewith ThorsenR
.goto Duskwood,44.598,87.565,50 >> Travel to northern Stranglethorn Vale
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
.goto Stranglethorn Vale,38.0,3.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.accept 200 >> Accept Bookie Herod
.isQuestTurnedIn 215 
.target Lieutenant Doren
step << Hunter
.goto Stranglethorn Vale,38.0,3.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Bluth|r
.vendor >> |cRXP_BUY_Restock on |r |T132382:0|t[Razor Arrows] |cRXP_BUY_if needed|r
.target Corporal Bluth
step
#completewith Fern
>>Kill |cRXP_ENEMY_Stone Maw Basilisks|r and |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
>>|cRXP_ENEMY_Stone Maw Basilisks|r |cRXP_WARN_and|r |cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
.goto Stranglethorn Vale,24.4,17.2,0
.goto Stranglethorn Vale,48.48,8.85,0
.complete 605,1 
.mob Stone Maw Basilisk
.mob Crystal Spine Basilisk
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
.target +Barnil Stonepot
.goto Stranglethorn Vale,35.662,10.529
.turnin 583 >> Turn in Welcome to the Jungle
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
step
.goto Stranglethorn Vale,35.658,10.808
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 5762 >> Turn in Hemet Nesingwary
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 185 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.accept 190 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
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
#completewith next
.goto Stranglethorn Vale,44.93,10.25,0
>>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
>>|cRXP_ENEMY_Kurzen Medicine Men|r |cRXP_WARN_also drop|r |T134413:0|t[Liferoot]|cRXP_WARN_. Save these for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
>>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
.complete 203,1 
.mob +Kurzen Jungle Fighter
.complete 204,1 
.mob +Kurzen Medicine Man
step
#label Fern
.goto Stranglethorn Vale,44.086,9.538
>>Open the |cRXP_PICK_Kurzen Supplies|r. Loot it for the |cRXP_LOOT_Venom Fern Extract|r
.complete 204,2 
step
.isOnQuest 200
.isQuestTurnedIn 215
#completewith next
.goto Stranglethorn Vale,44.93,10.25,0
>>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
>>|cRXP_ENEMY_Kurzen Medicine Men|r |cRXP_WARN_also drop|r |T134413:0|t[Liferoot]|cRXP_WARN_. Save these for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
>>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
.complete 203,1 
.mob +Kurzen Jungle Fighter
.complete 204,1 
.mob +Kurzen Medicine Man
step
.isOnQuest 200
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>Click on |cRXP_PICK_Bookie Herod's Records|r upstairs in the house
.turnin 200 >> Turn in Bookie Herod
.accept 328 >> Accept The Hidden Key
step
.goto Stranglethorn Vale,44.93,10.25
>>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
>>|cRXP_ENEMY_Kurzen Medicine Men|r |cRXP_WARN_also drop|r |T134413:0|t[Liferoot]|cRXP_WARN_. Save these for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
>>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
.complete 203,1 
.mob +Kurzen Jungle Fighter
.complete 204,1 
.mob +Kurzen Medicine Man
step
.goto Stranglethorn Vale,46.75,15.81
>>Kill |cRXP_ENEMY_Stranglethorn Tigers|r
.complete 186,1 
.mob Stranglethorn Tiger
step
#completewith Prints
>>Kill |cRXP_ENEMY_Venture Co. Geologists|r. Loot them for their |cRXP_LOOT_Crystals|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,42.646,18.353
>>Kill |cRXP_ENEMY_Foreman Cozzle|r atop the Oil Rig. Loot him for his |cRXP_LOOT_Key|r
.collect 5851,1,1182,1 
.mob Foreman Cozzle
step
#label Prints
.goto Stranglethorn Vale,43.332,20.329
>>Open |cRXP_PICK_Cozzle's Footlocker|r. Loot it for the |cRXP_LOOT_Fuel Regulator Blueprints|r
.complete 1182,1 
step
.goto Stranglethorn Vale,45.18,22.65,75,0
.goto Stranglethorn Vale,45.55,18.78,75,0
.goto Stranglethorn Vale,43.42,17.00,75,0
.goto Stranglethorn Vale,45.18,22.65,75,0
.goto Stranglethorn Vale,45.55,18.78
>>Kill |cRXP_ENEMY_Venture Co. Geologists|r. Loot them for their |cRXP_LOOT_Crystals|r
.complete 213,1 
.mob Venture Co. Geologist
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
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
.turnin 203 >> Turn in The Second Rebellion
.turnin 204 >> Turn in Bad Medicine
.target Sergeant Yohwa
step
.goto Stranglethorn Vale,37.740,3.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
.accept 210 >> Accept Krazek's Cookery
.target Corporal Kaleb
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
>>|cRXP_WARN_Don't accept the follow up yet|r
.turnin 215 >> Turn in Jungle Secrets
.isOnQuest 215
.target Lieutenant Doren
step
.goto Stranglethorn Vale,38.01,3.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r
.turnin 198 >>Turn in Supplies to Private Thorsen
.target Private Thorsen
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
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
.turnin 186 >> Turn in Tiger Mastery
.accept 187 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.turnin 190 >>Turn in Panther Mastery
.accept 191 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
step
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
step
#completewith next
>>Kill |cRXP_ENEMY_Panthers|r
.complete 191,1 
.mob Panther
step
.goto Stranglethorn Vale,31.52,16.61,60,0
.goto Stranglethorn Vale,31.91,19.93,60,0
.goto Stranglethorn Vale,34.36,18.58,60,0
.goto Stranglethorn Vale,31.52,16.61,60,0
.goto Stranglethorn Vale,31.91,19.93
>>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
.goto Stranglethorn Vale,30.4,12.4,60,0
.goto Stranglethorn Vale,29.4,8.8,60,0
.goto Stranglethorn Vale,28.2,12.0,60,0
.goto Stranglethorn Vale,28.2,16.4,60,0
.goto Stranglethorn Vale,29.8,11.2
>>Kill |cRXP_ENEMY_Panthers|r
.complete 191,1 
.mob Panther
step
#completewith next
.goto Stranglethorn Vale,27.35,18.52,0
.goto Stranglethorn Vale,25.53,17.73,0
.goto Stranglethorn Vale,23.25,17.21,0
>>Kill |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
>>|cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
.complete 605,1 
.mob Crystal Spine Basilisk
step
.goto Stranglethorn Vale,27.61,15.39,60,0
.goto Stranglethorn Vale,25.91,16.33,60,0
.goto Stranglethorn Vale,24.24,15.84,60,0
.goto Stranglethorn Vale,27.16,16.06
>>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
.complete 194,1 
.mob Stranglethorn Raptor
step
.goto Stranglethorn Vale,27.35,18.52,50,0
.goto Stranglethorn Vale,25.53,17.73,50,0
.goto Stranglethorn Vale,23.25,17.21,50,0
.goto Stranglethorn Vale,25.53,17.73
>>Kill |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
>>|cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
.complete 605,1 
.mob Crystal Spine Basilisk
step
.goto Stranglethorn Vale,21.580,21.842
.goto Stranglethorn Vale,21.580,21.842 >> Travel to the Haunted Island
.complete 578,1 
step
#softcore
#completewith next
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
#completewith next
.goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 194 >> Turn in Raptor Mastery
.accept 195 >>Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
.turnin 187 >> Turn in Tiger Mastery
.accept 188 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.turnin 191 >> Turn in Panther Mastery
.accept 192 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
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
step
#completewith next
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 605 >> Turn in Singing Blue Shards
.target Crank Fizzlebub
step
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
.turnin 213 >>Turn in Hostile Takeover
.target +Kebok
.goto Stranglethorn Vale,27.000,77.124
.turnin 201 >> Turn in Investigate the Camp
.turnin 210 >> Turn in Krazek's Cookery
.target +Krazek
.goto Stranglethorn Vale,26.943,77.207
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
.turnin 213 >>Turn in Hostile Takeover
.target +Kebok
.goto Stranglethorn Vale,27.000,77.124
.turnin 201 >> Turn in Investigate the Camp
.turnin 210 >> Turn in Krazek's Cookery
.accept 189 >> Accept Bloodscalp Ears
.target +Krazek
.goto Stranglethorn Vale,26.943,77.207
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
.accept 1183 >>Accept Goblin Sponsorship
.turnin 578 >> Turn in The Stone of the Tides
.accept 601 >> Accept Water Elementals
.target Baron Revilgaz
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 575 >> Turn in Supply and Demand
.accept 577 >> Accept Some Assembly Required
.target Drizzlik
step
#xprate <1.2
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Duskwood >> Fly to Duskwood
.target Gyll
step
#xprate <1.2
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r in the town hall building
.goto Duskwood,72.6,46.8
.turnin 1041 >> Turn in The Caravan Road
.accept 1042 >> Accept The Carevin Family
.target Clerk Daltry
step
#xprate <1.2
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
.goto Duskwood,75.2,48.8
.turnin 1042 >> Turn in The Carevin Family
.accept 1043 >> Accept The Scythe of Elune
.target Jonathan Carevin
step
#xprate <1.2
#completewith next
.goto Duskwood,73.20,76.19,30 >> Travel to Roland's Doom
.isQuestTurnedIn 1040
step
#xprate <1.2
.isQuestTurnedIn 1040
>>Click the |cRXP_PICK_Mound of Dirt|r at the back of the Cave
.goto Duskwood,73.527,79.143
.complete 1043,1 
step << !Hunter
#xprate <1.2
#softcore
#completewith next
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
#xprate <1.2
#completewith next
.goto Duskwood,75.2,48.8,150 >> Travel to Darkshire
.isQuestTurnedIn 1040
step
#xprate <1.2
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
.goto Duskwood,75.2,48.8
.turnin 1043 >> Turn in The Scythe of Elune
.target Jonathan Carevin
step << Mage
#xprate <1.99
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
#xprate <1.99
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << !Mage
#xprate <1.99
.goto Stranglethorn Vale,27.530,77.787
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.fly Stormwind>> Fly to Stormwind
.target Gyll
.zoneskip Stranglethorn Vale,1
step << !Mage
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.goto Duskwood,77.486,44.287
.fly Stormwind>> Fly to Stormwind
.target Felicia Maline
.zoneskip Duskwood,1
step
#xprate <1.99
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 3721,3521,4521 >> Withdraw the following items from your bank: << Warlock
.bankwithdraw 3721,3521,4521,5996 >> Withdraw the following items from your bank: << !Warlock
>>|T133461:0|t[Farren's Report] 
>>|T134939:0|t[Cleverly Encrypted Letter] (If you found it earlier) 
>>|T135234:0|t[Alterac Granite] 
>>|T134797:0|t[Elixir of Water Breathing] (If you have one) << !Warlock 
.target Newton Burnside
step
#xprate <1.99
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> Deposit the following items into your bank:
>>Deposit any |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
.target Newton Burnside
step << !Warlock
#xprate <1.99
#ah
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
>>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_from the Auction House|r
.collect 5996,1 
.target Newton Burnside
step << Priest/Paladin
#xprate <1.99
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Hunter
#xprate <1.99
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Hunter
#xprate <1.99
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r
.trainer >> Train your pet spells
.target Karrina Mekenda
step
#xprate <1.99
#completewith next
.goto Stormwind City,71.68,25.60,40 >> Travel to the Stormwind Keep
step
#xprate <1.99
.goto Stormwind City,77.30,17.18,25,0
.goto Stormwind City,72.571,15.888
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Major Samuelson|r
.turnin 563 >> Turn in Reassignment
.target Major Samuelson
step
#xprate <1.99
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
>>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
.accept 337 >> Accept An Old History Book
.turnin 337 >> Turn in An Old History Book
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step << Warrior
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
#xprate <1.99
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step
#xprate <1.99
.dungeon Gnomer
#season 0,1
.goto StormwindClassic,55.511,12.502
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
.turnin 2928 >> Turn in Gyrodrillmatic Excavationators
.target Shoni the Shilent
.isQuestComplete 2928
step << !Mage
#xprate <1.99
#completewith ReclaimersDesolace
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the Tram|r
step << Mage
#xprate <1.99
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Teleport to Ironforge
step << Warlock
#xprate <1.99
#label ReclaimersDesolace
#som
#phase 3-6
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
>>|cRXP_FRIENDLY_Roetten Stonehammer|r |cRXP_WARN_patrols the Hall of Explorers|r
.accept 1453 >> Accept Reclaimers' Business in Desolace
.target Roetten Stonehammer
step
#xprate <1.99
#label ReclaimersDesolace
#era/som
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
>>|cRXP_FRIENDLY_Roetten Stonehammer|r |cRXP_WARN_patrols the Hall of Explorers|r
.accept 1453 >> Accept Reclaimers' Business in Desolace
.target Roetten Stonehammer
step << Warlock
#xprate <1.99
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
.turnin 1758 >> Turn in Tome of the Cabal
.target Krom Stoutarm
step << Warlock
#xprate <1.99
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus] |cRXP_BUY_or|r |T136221:0|t[Voidwalker]
.target Jubahl Corpseseeker
step << Warlock
#xprate <1.99
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.trainer >> Train your class spells
.target Briarthorn
step
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.goto Ironforge,74.645,11.742
.turnin 514 >>Turn in Letter to Stormpike
.target Prospector Stormpike
step
#xprate <1.99
.isQuestComplete 689
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.goto Ironforge,39.03,88.05
.turnin 689 >>Turn in A King's Tribute
.timer 60,Marblesten RP
.accept 700 >>Accept A King's Tribute
.target Grand Mason Marblesten
step
#xprate <1.99
.abandon 689 >> Abandon the quest "A King's Tribute" if you haven't collected the granite chunks in Alterac previously
step
#xprate <1.99
.isQuestTurnedIn 689
>>|cRXP_WARN_Wait out the RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.goto Ironforge,39.03,88.05
.accept 700 >>Accept A King's Tribute
.target Grand Mason Marblesten
step
#xprate <1.99
.isQuestTurnedIn 689
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.goto Ironforge,39.09,56.19
.turnin 700 >>Turn in A King's Tribute
.target King Magni Bronzebeard
]]);
