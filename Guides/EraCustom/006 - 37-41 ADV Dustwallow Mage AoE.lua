RXPGuides.RegisterGuide([[
#version 23
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 37-41 ADV Dustwallow Mage AoE
#next 41-41 ADV Dustwallow/Alterac Mage AoE
step
.goto Dustwallow Marsh,66.50,51.39
>>Talk to |cRXP_FRIENDLY_Helenia|r through the wall
.collect 3713,3,1218,1 
.target Helenia Olden
step
.goto Dustwallow Marsh,66.15,46.06
>>Talk to |cRXP_FRIENDLY_Byron|r
.accept 1282 >>Accept They Call Him Smiling Jim
.target Guard Byron
step
#completewith next
.goto Dustwallow Marsh,66.01,45.24,12,0
.goto Dustwallow Marsh,66.22,45.37,12 >>Go inside the Inn
step
.goto Dustwallow Marsh,66.34,45.47
>>Talk to |cRXP_FRIENDLY_Morgan|r
.turnin 1260 >>Turn in Morgan Stern
.accept 1204 >>Accept Mudrock Soup and Bugs
.target Morgan Stern
step
.goto Dustwallow Marsh,66.59,45.22
>>Talk to |cRXP_FRIENDLY_Janene|r
.home >> Set your Hearthstone to Theramore
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from her|r
.collect 1645,160,1253,1 
.target Innkeeper Janene
step
#completewith next
.goto Dustwallow Marsh,66.22,45.37,12,0
.goto Dustwallow Marsh,66.01,45.24,12,0
.goto Dustwallow Marsh,67.74,47.66,15,0
.goto Dustwallow Marsh,68.14,48.74,15,0
.goto Dustwallow Marsh,67.84,48.52,12,0
.goto Dustwallow Marsh,67.69,48.10,12,0
>>Exit the Inn
>>Enter the keep. Go upstairs
.goto Dustwallow Marsh,67.88,48.24,10 >>Travel toward |cRXP_FRIENDLY_Lendry|r
step
>>Talk to |cRXP_FRIENDLY_Lendry|r, |cRXP_FRIENDLY_Samaul|r, and |cRXP_FRIENDLY_Garran|r
.turnin 1302 >>Turn in James Hyal
.target +Clerk Lendry
.goto Dustwallow Marsh,67.88,48.24
.turnin 1264 >>Turn in The Missing Diplomat
.accept 1265 >>Accept The Missing Diplomat
.target +Commander Samaul
.goto Dustwallow Marsh,68.02,48.70
.turnin 1282 >>Turn in They Call Him Smiling Jim
.goto Dustwallow Marsh,68.21,48.62
.target +Captain Garran Vimes
step
#completewith next
.goto Dustwallow Marsh,60.41,40.85,20,0
.goto Dustwallow Marsh,59.87,40.99,12,0
.goto Dustwallow Marsh,59.66,41.23,12 >>Travel toward |cRXP_FRIENDLY_Tervosh|r
step
.goto Dustwallow Marsh,59.66,41.23
>>Talk to |cRXP_FRIENDLY_Tervosh|r
>>|cRXP_WARN_Wait for |cRXP_FRIENDLY_Tervosh|r to cast|r |T135880:0|t[Proudmoore's Defense] |cRXP_WARN_on you after accepting the quest|r
.turnin 1265 >> Turn in The Missing Diplomat
.accept 1266 >> Accept The Missing Diplomat
.target Archmage Tervosh
step
>>Talk to |cRXP_FRIENDLY_Jarl|r. Click the |cRXP_PICK_Loose Dirt|r
.accept 1218 >>Accept Soothing Spices
.turnin 1218 >>Turn in Soothing Spices
.goto Dustwallow Marsh,55.44,26.27
.accept 1219 >>Accept The Orc Report
.goto Dustwallow Marsh,55.44,25.92
.target "Swamp Eye" Jarl
step
#completewith next
.goto Dustwallow Marsh,56.50,20.49,30 >>Get into the start position for AoEing the Murlocs
step
#loop
.line Dustwallow Marsh,57.08,20.98,57.23,22.54,57.33,15.23,58.46,15.83,54.16,15.10,54.10,19.67,57.08,20.98
.goto Dustwallow Marsh,57.08,20.98,30,0
.goto Dustwallow Marsh,57.23,22.54,30,0
.goto Dustwallow Marsh,57.33,15.23,30,0
.goto Dustwallow Marsh,58.46,15.83,30,0
.goto Dustwallow Marsh,54.16,15.10,30,0
.goto Dustwallow Marsh,54.10,19.67,30,0
.goto Dustwallow Marsh,57.08,20.98,30,0
.xp 38 >> AoE |cRXP_ENEMY_Mirefin Muckdwellers|r, |cRXP_ENEMY_Mirefin Coastrunners|r, |cRXP_ENEMY_Mirefin Puddlejumpers|r, and |cRXP_ENEMY_Mirefin Murlocs|r to Level 38
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mirefin Muckdwellers|r cast|r |T136134:0|t[Creeping Mold] |cRXP_WARN_(20 damage every 10 seconds for 1 min), and |cRXP_ENEMY_Mirefin Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
.mob Mirefin Muckdweller
.mob Mirefin Coastrunner
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Arcane Explosion r4, Conjure Mana Jade, Fire Blast r5)
>>|cRXP_WARN_Do NOT train other spells. You need to start saving gold for your|r |T132247:0|t[Mechanostrider] << Gnome
.target Dink
step
#completewith next
.hs >> Hearth to Theramore
step
.goto Dustwallow Marsh,66.59,45.22
>>Talk to |cRXP_FRIENDLY_Janene|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from her|r
.collect 1645,160,1253,1 
.target Innkeeper Janene
step
.goto Dustwallow Marsh,66.34,45.47
>>Talk to |cRXP_FRIENDLY_Morgan|r
.turnin 1204 >>Turn in Mudrock Soup and Bugs
.target Morgan Stern
.isQuestComplete 1204
step
#sticky
#label OrcReport
.goto Dustwallow Marsh,65.07,47.13,0,0
>>Talk to the |cRXP_FRIENDLY_Theramore Lieutenant|r
.turnin 1219 >>Turn in The Orc Report
.accept 1220 >>Accept Captain Vimes
.target Theramore Lieutenant
step
.goto Dustwallow Marsh,64.60,50.07
>>Talk to |cRXP_FRIENDLY_Marie|r
.vendor 4888 >> Vendor Trash. Repair
.target Marie Holdston
step
#requires OrcReport
#completewith next
>>AoE |cRXP_ENEMY_Mudrock Spikeshells|r. Loot them for |cRXP_LOOT_Forked Mudrock Tongues|r
.complete 1204,1 
step
#requires OrcReport
#loop
.line Dustwallow Marsh,57.08,20.98,57.23,22.54,57.33,15.23,58.46,15.83,54.16,15.10,54.10,11.87,53.99,19.78,57.08,20.98
.goto Dustwallow Marsh,57.08,20.98,30,0
.goto Dustwallow Marsh,57.23,22.54,30,0
.goto Dustwallow Marsh,57.33,15.23,30,0
.goto Dustwallow Marsh,58.46,15.83,30,0
.goto Dustwallow Marsh,54.16,15.10,30,0
.goto Dustwallow Marsh,54.10,11.87,30,0
.goto Dustwallow Marsh,53.99,19.78,30,0
.goto Dustwallow Marsh,57.08,20.98,30,0
.xp 39 >> AoE |cRXP_ENEMY_Mirefin Muckdwellers|r, |cRXP_ENEMY_Mirefin Coastrunners|r, |cRXP_ENEMY_Mirefin Puddlejumpers|r, |cRXP_ENEMY_Mirefin Murlocs|r, and |cRXP_ENEMY_Mudrock Spikeshells|r to Level 39
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mirefin Muckdwellers|r cast|r |T136134:0|t[Creeping Mold] |cRXP_WARN_(20 damage every 10 seconds for 1 min), and |cRXP_ENEMY_Mirefin Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
.mob Mirefin Muckdweller
.mob Mirefin Coastrunner
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mudrock Spikeshell
step
.goto Dustwallow Marsh,45.24,24.66
>>Talk to |cRXP_FRIENDLY_Hendel|r
>>|cRXP_WARN_This will start an event where |cRXP_ENEMY_Hendel|r and his |cRXP_ENEMY_Theramore Sentries|r 3v1 you|r
>>AoE |cRXP_ENEMY_Hendel|r and the |cRXP_ENEMY_Theramore Sentries|r
.turnin 1266 >>Turn in The Missing Diplomat
.accept 1324 >>Accept The Missing Diplomat
.target Private Hendel
step
.goto Dustwallow Marsh,45.24,24.66
>>AoE |cRXP_ENEMY_Hendel|r and the |cRXP_ENEMY_Theramore Sentries|r
>>|cRXP_WARN_Wait out the RP|r
.complete 1324,1 
.mob Private Hendel
step
>>Talk to |cRXP_FRIENDLY_Tervosh|r and |cRXP_FRIENDLY_Jaina|r
.turnin 1324 >>Turn in The Missing Diplomat
.target +Archmage Tervosh
.goto Dustwallow Marsh,45.21,24.30
.turnin 1267 >>Turn in The Missing Diplomat
.goto Dustwallow Marsh,45.22,24.22
.target +Lady Jaina Proudmoore
step
.goto Dustwallow Marsh,35.15,38.26
>>Talk to |cRXP_FRIENDLY_Mudcrush|r
.accept 1177 >> Accept Hungry!
.target Mudcrush Durtfeet
step
>>Click the |cRXP_PICK_Hoofprints|r on the ground, |cRXP_PICK_Theramore Guard Badge|r on the plank, and the |cRXP_PICK_Black Shield|r on the wall
.accept 1284 >> Accept Suspicious Hoofprints
.goto Dustwallow Marsh,29.72,47.66
.accept 1252 >> Accept Lieutenant Paval Reethe
.goto Dustwallow Marsh,29.83,48.24
.accept 1253 >> Accept The Black Shield
.goto Dustwallow Marsh,29.63,48.61
step
#completewith Garran5
.hs >> Hearth to Theramore
step
.goto Dustwallow Marsh,66.59,45.22
>>Talk to |cRXP_FRIENDLY_Janene|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from her|r
.collect 1645,160,1285,1 
.target Innkeeper Janene
step
#completewith next
.goto Dustwallow Marsh,66.22,45.37,12,0
.goto Dustwallow Marsh,66.01,45.24,12,0
.goto Dustwallow Marsh,67.74,47.66,15,0
.goto Dustwallow Marsh,68.14,48.74,15,0
.goto Dustwallow Marsh,67.84,48.52,12,0
.goto Dustwallow Marsh,67.69,48.10,12,0
>>Exit the Inn
>>Enter the keep. Go upstairs
.goto Dustwallow Marsh,68.21,48.62,10 >>Travel toward |cRXP_FRIENDLY_Garran|r
step
#label Garran5
>>Talk to |cRXP_FRIENDLY_Garran|r, |cRXP_FRIENDLY_Tesoran|r, then |cRXP_FRIENDLY_Garran|r again
.turnin 1220 >>Turn in Captain Vimes
.turnin 1252 >>Turn in Lieutenant Paval Reethe
.accept 1259 >>Accept Lieutenant Paval Reethe
.turnin 1253 >>Turn in The Black Shield
.accept 1319 >>Accept The Black Shield
.turnin 1284 >>Turn in Suspicious Hoofprints
.target +Captain Garran Vimes
.goto Dustwallow Marsh,68.21,48.62
.turnin 1259 >>Turn in Lieutenant Paval Reethe
.accept 1285 >>Accept Daelin's Men
.target +Adjutant Tesoran
.goto Dustwallow Marsh,68.05,48.11
.turnin 1285 >>Turn in Daelin's Men
.accept 1286 >>Accept The Deserters
.target +Captain Garran Vimes
.goto Dustwallow Marsh,68.21,48.62
step
#sticky
#label Marie
.goto Dustwallow Marsh,64.60,50.07,-1
>>Talk to |cRXP_FRIENDLY_Marie|r
.vendor 4888 >> Vendor Trash. Repair
.target Marie Holdston
step
.goto Dustwallow Marsh,64.75,50.42,-1
>>Talk to |cRXP_FRIENDLY_Caz|r
.turnin 1319 >>Turn in The Black Shield
.accept 1320 >>Accept The Black Shield
.target Caz Twosprocket
step
#requires Marie
#completewith Level40
>>AoE |cRXP_ENEMY_Mudrock Spikeshells|r. Loot them for |cRXP_LOOT_Forked Mudrock Tongues|r
.complete 1204,1 
step
#requires Marie
#loop
.line Dustwallow Marsh,57.08,20.98,57.23,22.54,57.33,15.23,58.46,15.83,54.16,15.10,54.10,11.87,53.99,19.78,57.08,20.98
.goto Dustwallow Marsh,57.08,20.98,30,0
.goto Dustwallow Marsh,57.23,22.54,30,0
.goto Dustwallow Marsh,57.33,15.23,30,0
.goto Dustwallow Marsh,58.46,15.83,30,0
.goto Dustwallow Marsh,54.16,15.10,30,0
.goto Dustwallow Marsh,54.10,11.87,30,0
.goto Dustwallow Marsh,53.99,19.78,30,0
.goto Dustwallow Marsh,57.08,20.98,30,0
.xp 40 >> AoE |cRXP_ENEMY_Mirefin Muckdwellers|r, |cRXP_ENEMY_Mirefin Coastrunners|r, |cRXP_ENEMY_Mirefin Puddlejumpers|r, |cRXP_ENEMY_Mirefin Murlocs|r, and |cRXP_ENEMY_Mudrock Spikeshells|r. Loot Murlocs for their |cRXP_LOOT_Mirefin Heads|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mirefin Muckdwellers|r cast|r |T136134:0|t[Creeping Mold] |cRXP_WARN_(20 damage every 10 seconds for 1 min), and |cRXP_ENEMY_Mirefin Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
.complete 1177,1 
.mob Mirefin Muckdweller
.mob Mirefin Coastrunner
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mudrock Spikeshell
.itemcount 1177,<12
step
#label Level40
#loop
.line Dustwallow Marsh,57.08,20.98,57.23,22.54,57.33,15.23,58.46,15.83,54.16,15.10,54.10,11.87,53.99,19.78,57.08,20.98
.goto Dustwallow Marsh,57.08,20.98,30,0
.goto Dustwallow Marsh,57.23,22.54,30,0
.goto Dustwallow Marsh,57.33,15.23,30,0
.goto Dustwallow Marsh,58.46,15.83,30,0
.goto Dustwallow Marsh,54.16,15.10,30,0
.goto Dustwallow Marsh,54.10,11.87,30,0
.goto Dustwallow Marsh,53.99,19.78,30,0
.goto Dustwallow Marsh,57.08,20.98,30,0
.xp 40 >> AoE |cRXP_ENEMY_Mirefin Muckdwellers|r, |cRXP_ENEMY_Mirefin Coastrunners|r, |cRXP_ENEMY_Mirefin Puddlejumpers|r, |cRXP_ENEMY_Mirefin Murlocs|r, and |cRXP_ENEMY_Mudrock Spikeshells|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mirefin Muckdwellers|r cast|r |T136134:0|t[Creeping Mold] |cRXP_WARN_(20 damage every 10 seconds for 1 min), and |cRXP_ENEMY_Mirefin Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
.mob Mirefin Muckdweller
.mob Mirefin Coastrunner
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mudrock Spikeshell
step
.goto Dustwallow Marsh,54.10,11.87
>>AoE |cRXP_ENEMY_Mudrock Spikeshells|r. Loot them for |cRXP_LOOT_Forked Mudrock Tongues|r
.complete 1204,1 
.mob Mudrock Spikeshell
step << Gnome
#completewith Pillar
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step << Gnome
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
>>|cRXP_WARN_If you have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold) but NOT your training (1g 35s each spell), skip this step|r
.trainer >> Train your class spells (Ice Armor r2, Flamestrike r4, Conjure Water r5)
.target Dink
step << Gnome skip
#label Pillar
.goto Ironforge,25.30,10.97
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold)|r
.zone Dun Morogh >> |cRXP_WARN_Jump up onto the pillar above |cRXP_FRIENDLY_Toldren|r. Logout skip to Dun Morogh|r
.zoneskip Dustwallow Marsh
step << Gnome
#completewith next
.goto Ironforge,15.16,85.70,20,0
.goto Dun Morogh,49.12,47.95
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold)|r
.zone Dun Morogh >> Exit Ironforge
step << Gnome
.goto Dun Morogh,49.12,47.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milli|r
>>Vendor Trash
+|cRXP_BUY_Buy any|r |T132247:0|t[Mechanostrider] |cRXP_BUY_that you like from her|r
.target Milli Featherwhistle
.itemcount 8563,<1 
.itemcount 8595,<1 
.itemcount 13321,<1 
.itemcount 13322,<1 
.zoneskip Dun Morogh,1
step << Gnome
.goto Dun Morogh,49.14,48.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy|r
.skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
.target Binjy Featherwhistle
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Red Mechanostrider|r] to learn it
.use 8563
.itemcount 8563,1
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Blue Mechanostrider|r] to learn it
.use 8595
.itemcount 8595,1
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Green Mechanostrider|r] to learn it
.use 13321
.itemcount 13321,1
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Unpainted Mechanostrider|r] to learn it
.use 13322
.itemcount 13322,1
.zoneskip Dun Morogh,1
step << Human
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step << Human
.goto Stormwind City,38.62,79.30
>>Talk to |cRXP_FRIENDLY_Jennea|r
>>|cRXP_WARN_If you have enough money after vendoring for your|r |T132261:0|t[Horse Bridle] |cRXP_WARN_(90 Gold) but NOT your training (1g 35s each spell), skip this step|r
.trainer >> Train your class spells (Ice Armor r2, Flamestrike r4, Conjure Water r5)
.target Jennea Cannon
step << Human
.goto Elwynn Forest,32.27,49.70
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132261:0|t[Horse Bridle] |cRXP_WARN_(90 Gold)|r
.zone Elwynn Forest >> Exit Stormwind
step << Human
.goto Elwynn Forest,84.16,65.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katie|r
>>Vendor Trash
+|cRXP_BUY_Buy any|r |T132261:0|t[Horse Bridle] |cRXP_BUY_that you like from her|r
.target Katie Hunter
.itemcount 2414,<1 
.itemcount 5655,<1 
.itemcount 5656,<1 
.zoneskip Elwynn Forest,1
step << Human
.goto Elwynn Forest,84.32,64.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal|r
.skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
.target Randal Hunter
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Pinto Bridle|r] to learn it
.use 2414
.itemcount 2414,1
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Chestnut Mare Bridle|r] to learn it
.use 5655
.itemcount 5655,1
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Brown Horse Bridle|r] to learn it
.use 5656
.itemcount 5656,1
.zoneskip Elwynn Forest,1
step
#completewith JaneneJ1
.hs >> Hearth to Theramore
step
.goto Dustwallow Marsh,66.59,45.22
>>Talk to |cRXP_FRIENDLY_Janene|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from her. If you can't afford it all, buy as much as you can then skip the step|r
.collect 1645,120,992,1 
.target Innkeeper Janene
.skill riding,<75,1
step
#label JaneneJ1
.goto Dustwallow Marsh,66.59,45.22
>>Talk to |cRXP_FRIENDLY_Janene|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from her|r
.collect 1645,120,992,1 
.target Innkeeper Janene
.skill riding,75,1
step
.goto Dustwallow Marsh,66.33,45.47
>>Talk to |cRXP_FRIENDLY_Morgan|r
.turnin 1204 >>Turn in Mudrock Soup and Bugs
.target Morgan Stern
step
.goto Dustwallow Marsh,64.60,50.07
>>Talk to |cRXP_FRIENDLY_Marie|r
.vendor 4888 >> Vendor Trash. Repair
.target Marie Holdston
.zoneskip Dustwallow Marsh,1
step
#loop
.line Dustwallow Marsh,57.08,20.98,57.23,22.54,57.33,15.23,58.46,15.83,54.16,15.10,54.10,11.87,53.99,19.78,57.08,20.98
.goto Dustwallow Marsh,57.08,20.98,30,0
.goto Dustwallow Marsh,57.23,22.54,30,0
.goto Dustwallow Marsh,57.33,15.23,30,0
.goto Dustwallow Marsh,58.46,15.83,30,0
.goto Dustwallow Marsh,54.16,15.10,30,0
.goto Dustwallow Marsh,54.10,11.87,30,0
.goto Dustwallow Marsh,53.99,19.78,30,0
.goto Dustwallow Marsh,57.08,20.98,30,0
.xp 41 >> AoE |cRXP_ENEMY_Mirefin Muckdwellers|r, |cRXP_ENEMY_Mirefin Coastrunners|r, |cRXP_ENEMY_Mirefin Puddlejumpers|r, |cRXP_ENEMY_Mirefin Murlocs|r, and |cRXP_ENEMY_Mudrock Spikeshells|r to Level 41
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mirefin Muckdwellers|r cast|r |T136134:0|t[Creeping Mold] |cRXP_WARN_(20 damage every 10 seconds for 1 min), and |cRXP_ENEMY_Mirefin Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
.mob Mirefin Muckdweller
.mob Mirefin Coastrunner
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mudrock Spikeshell
step
.goto Dustwallow Marsh,35.15,38.26
>>Talk to |cRXP_FRIENDLY_Mudcrush|r
.turnin 1177,2 >> Turn in Hungry!
.target Mudcrush Durtfeet
step
#completewith next
.goto Dustwallow Marsh,35.57,53.67,40,0
.goto Dustwallow Marsh,35.75,53.95,20,0
.goto Dustwallow Marsh,36.09,54.31,10 >>Travel toward |cRXP_ENEMY_Balos|r
step
.goto Dustwallow Marsh,36.09,54.31
>>Defeat |cRXP_ENEMY_Balos|r
>>Talk to |cRXP_FRIENDLY_Balos|r after defeating him
.turnin 1286 >> Turn in The Deserters
.accept 1287 >> Accept The Deserters
.target Balos Jacken
step << Gnome
#completewith Pillar2
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step << Gnome
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
>>|cRXP_WARN_If you have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold) but NOT your training (1g 35s each spell), skip this step|r
.trainer >> Train your class spells (Ice Armor r2, Flamestrike r4, Conjure Water r5)
.target Dink
.istrained 10138 
.skill riding,75,1
step << Gnome
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Ice Armor r2, Flamestrike r4, Conjure Water r5)
.target Dink
.istrained 10138 
.skill riding,<75,1
step << Gnome skip
#label Pillar2
.goto Ironforge,25.30,10.97
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold)|r
.zone Dun Morogh >> |cRXP_WARN_Jump up onto the pillar above |cRXP_FRIENDLY_Toldren|r. Logout skip to Dun Morogh|r
.skill riding,75,1
step << Gnome
#completewith next
.goto Ironforge,15.16,85.70,20,0
.goto Dun Morogh,49.12,47.95
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold)|r
.zone Dun Morogh >> Exit Ironforge
step << Gnome
.goto Dun Morogh,49.12,47.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milli|r
>>Vendor Trash
+|cRXP_BUY_Buy any|r |T132247:0|t[Mechanostrider] |cRXP_BUY_that you like from her|r
.target Milli Featherwhistle
.itemcount 8563,<1 
.itemcount 8595,<1 
.itemcount 13321,<1 
.itemcount 13322,<1 
.zoneskip Dun Morogh,1
step << Gnome
.goto Dun Morogh,49.14,48.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy|r
.skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
.target Binjy Featherwhistle
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Red Mechanostrider|r] to learn it
.use 8563
.itemcount 8563,1
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Blue Mechanostrider|r] to learn it
.use 8595
.itemcount 8595,1
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Green Mechanostrider|r] to learn it
.use 13321
.itemcount 13321,1
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Unpainted Mechanostrider|r] to learn it
.use 13322
.itemcount 13322,1
.zoneskip Dun Morogh,1
step << Human
#completewith HumanM2
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step << Human
.goto Stormwind City,38.62,79.30
>>Talk to |cRXP_FRIENDLY_Jennea|r
>>|cRXP_WARN_If you have enough money after vendoring for your|r |T132261:0|t[Horse Bridle] |cRXP_WARN_(90 Gold) but NOT your training (1g 35s each spell), skip this step|r
.trainer >> Train your class spells (Ice Armor r2, Flamestrike r4, Conjure Water r5)
.target Jennea Cannon
.istrained 10138 
.skill riding,75,1
step << Human
#label HumanM2
.goto Stormwind City,38.62,79.30
>>Talk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells (Ice Armor r2, Flamestrike r4, Conjure Water r5)
.target Jennea Cannon
.istrained 10138 
.skill riding,<75,1
step << Human
.goto Elwynn Forest,32.27,49.70
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132261:0|t[Horse Bridle] |cRXP_WARN_(90 Gold)|r
.zone Elwynn Forest >> Exit Stormwind
.skill riding,75,1
step << Human
.goto Elwynn Forest,84.16,65.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katie|r
>>Vendor Trash
+|cRXP_BUY_Buy any|r |T132261:0|t[Horse Bridle] |cRXP_BUY_that you like from her|r
.target Katie Hunter
.itemcount 2414,<1 
.itemcount 5655,<1 
.itemcount 5656,<1 
.zoneskip Elwynn Forest,1
step << Human
.goto Elwynn Forest,84.32,64.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal|r
.skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
.target Randal Hunter
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Pinto Bridle|r] to learn it
.use 2414
.itemcount 2414,1
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Chestnut Mare Bridle|r] to learn it
.use 5655
.itemcount 5655,1
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Brown Horse Bridle|r] to learn it
.use 5656
.itemcount 5656,1
.zoneskip Elwynn Forest,1
step
#completewith Marie2
.hs >> Hearth to Theramore
step
.goto Dustwallow Marsh,66.59,45.22
>>Talk to |cRXP_FRIENDLY_Janene|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from her. If you can't afford it all, buy as much as you can then skip the step|r
.collect 1645,120,992,1 
.target Innkeeper Janene
.skill riding,<75,1
step
.goto Dustwallow Marsh,66.59,45.22
>>Talk to |cRXP_FRIENDLY_Janene|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from her|r
.collect 1645,120,992,1 
.target Innkeeper Janene
.skill riding,75,1
step
#completewith next
.goto Dustwallow Marsh,66.22,45.37,12,0
.goto Dustwallow Marsh,66.01,45.24,12,0
.goto Dustwallow Marsh,67.74,47.66,15,0
.goto Dustwallow Marsh,68.14,48.74,15,0
.goto Dustwallow Marsh,67.84,48.52,12,0
.goto Dustwallow Marsh,67.69,48.10,12,0
>>Exit the Inn
>>Enter the keep. Go upstairs
.goto Dustwallow Marsh,68.21,48.62,10 >>Travel toward |cRXP_FRIENDLY_Garran|r
step
.goto Dustwallow Marsh,68.21,48.62
>>Talk to |cRXP_FRIENDLY_Garran|r
.turnin 1287 >>Turn in The Deserters
.turnin 1320 >>Turn in The Black Shield
.target Captain Garran Vimes
step
#label Marie2
.goto Dustwallow Marsh,64.60,50.07
>>Talk to |cRXP_FRIENDLY_Marie|r
.vendor 4888 >> Vendor Trash. Repair
.target Marie Holdston
step
#loop
.line Dustwallow Marsh,57.08,20.98,57.23,22.54,57.33,15.23,58.46,15.83,54.16,15.10,54.10,11.87,53.99,19.78,57.08,20.98
.goto Dustwallow Marsh,57.08,20.98,30,0
.goto Dustwallow Marsh,57.23,22.54,30,0
.goto Dustwallow Marsh,57.33,15.23,30,0
.goto Dustwallow Marsh,58.46,15.83,30,0
.goto Dustwallow Marsh,54.16,15.10,30,0
.goto Dustwallow Marsh,54.10,11.87,30,0
.goto Dustwallow Marsh,53.99,19.78,30,0
.goto Dustwallow Marsh,57.08,20.98,30,0
.xp 41+33530 >> AoE |cRXP_ENEMY_Mirefin Muckdwellers|r, |cRXP_ENEMY_Mirefin Coastrunners|r, |cRXP_ENEMY_Mirefin Puddlejumpers|r, |cRXP_ENEMY_Mirefin Murlocs|r, and |cRXP_ENEMY_Mudrock Spikeshells|r to 33530+/95800xp
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mirefin Muckdwellers|r cast|r |T136134:0|t[Creeping Mold] |cRXP_WARN_(20 damage every 10 seconds for 1 min), and |cRXP_ENEMY_Mirefin Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
.mob Mirefin Muckdweller
.mob Mirefin Coastrunner
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mudrock Spikeshell
step
#completewith RidingE2
+|cRXP_WARN_If you have enough money after vendoring for your|r |T132261:0|t[Horse Bridle] |cRXP_WARN_(90 Gold), cast |T135763:0|t[Teleport: Stormwind]|r << Human
+|cRXP_WARN_If you have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold), cast |T135757:0|t[Teleport: Ironforge]|r << Gnome
.skill riding,75,1
.zoneskip Stormwind City << Human
.zoneskip Ironforge << Gnome
step
#loop
.line Dustwallow Marsh,57.08,20.98,57.23,22.54,57.33,15.23,58.46,15.83,54.16,15.10,54.10,11.87,53.99,19.78,57.08,20.98
.goto Dustwallow Marsh,57.08,20.98,30,0
.goto Dustwallow Marsh,57.23,22.54,30,0
.goto Dustwallow Marsh,57.33,15.23,30,0
.goto Dustwallow Marsh,58.46,15.83,30,0
.goto Dustwallow Marsh,54.16,15.10,30,0
.goto Dustwallow Marsh,54.10,11.87,30,0
.goto Dustwallow Marsh,53.99,19.78,30,0
.goto Dustwallow Marsh,57.08,20.98,30,0
.xp 41+43110 >> AoE |cRXP_ENEMY_Mirefin Muckdwellers|r, |cRXP_ENEMY_Mirefin Coastrunners|r, |cRXP_ENEMY_Mirefin Puddlejumpers|r, |cRXP_ENEMY_Mirefin Murlocs|r, and |cRXP_ENEMY_Mudrock Spikeshells|r to 43110+/95800xp
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mirefin Muckdwellers|r cast|r |T136134:0|t[Creeping Mold] |cRXP_WARN_(20 damage every 10 seconds for 1 min), and |cRXP_ENEMY_Mirefin Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
.mob Mirefin Muckdweller
.mob Mirefin Coastrunner
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mudrock Spikeshell
.skill riding,75,1
.zoneskip Stormwind City << Human
.zoneskip Ironforge << Gnome
step << Human
#label RidingE2
.goto Elwynn Forest,32.27,49.70
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132261:0|t[Horse Bridle] |cRXP_WARN_(90 Gold)|r
.zone Elwynn Forest >> Exit Stormwind
.skill riding,75,1
step << Human
.goto Elwynn Forest,84.16,65.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katie|r
>>Vendor Trash
+|cRXP_BUY_Buy any|r |T132261:0|t[Horse Bridle] |cRXP_BUY_that you like from her|r
.target Katie Hunter
.itemcount 2414,<1 
.itemcount 5655,<1 
.itemcount 5656,<1 
.zoneskip Elwynn Forest,1
step << Gnome skip
#label RidingE2
.goto Ironforge,25.30,10.97
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold)|r
.zone Dun Morogh >> |cRXP_WARN_Jump up onto the pillar above |cRXP_FRIENDLY_Toldren|r. Logout skip to Dun Morogh|r
.skill riding,75,1
step << Gnome
#completewith next
.goto Ironforge,15.16,85.70,20,0
.goto Dun Morogh,49.12,47.95
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold)|r
.zone Dun Morogh >> Exit Ironforge
step << Gnome
.goto Dun Morogh,49.12,47.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milli|r
>>Vendor Trash
+|cRXP_BUY_Buy any|r |T132247:0|t[Mechanostrider] |cRXP_BUY_that you like from her|r
.target Milli Featherwhistle
.itemcount 8563,<1 
.itemcount 8595,<1 
.itemcount 13321,<1 
.itemcount 13322,<1 
.zoneskip Dun Morogh,1
step << Gnome
.goto Dun Morogh,49.14,48.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy|r
.skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
.target Binjy Featherwhistle
.zoneskip Dun Morogh,1
]]);
