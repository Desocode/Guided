RXPGuides.RegisterGuide([[
#version 23
#defaultfor Alliance Mage
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 22-26 ADV Wetlands 1 Mage AoE
#next 26-27 ADV Redridge 2 Mage AoE
step
>>Talk to |cRXP_FRIENDLY_Karl|r and |cRXP_FRIENDLY_James|r
.accept 279 >> Accept Claws from the Deep
.target +Karl Boran
.goto Wetlands,8.32,58.57
.accept 484 >> Accept Young Crocolisk Skins
.goto Wetlands,8.55,55.73
.target +James Halloran
step
.goto Wetlands,10.91,59.64
>>Talk to |cRXP_FRIENDLY_Fitzsimmons|r
.accept 463 >>Accept The Greenwarden
.target First Mate Fitzsimmons
step
#completewith next
.goto Wetlands,10.50,60.20
>>Jump onto the Chandelier downstairs
>>Talk to |cRXP_FRIENDLY_Samor|r through the wall
.vendor 1457 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
.target Samor Festivus
step
.goto Wetlands,10.84,60.44
>>Talk to |cRXP_FRIENDLY_Flagongut|r through the wall
.turnin 942 >> Turn in The Absent Minded Prospector
.accept 943 >> Accept The Absent Minded Prospector
.target Archaeologist Flagongut
.isQuestTurnedIn 741
step
.goto Wetlands,10.70,60.95
>>Talk to |cRXP_FRIENDLY_Helbrek|r
.home >> Set your Hearthstone to Menethil Harbor
.target Innkeeper Helbrek
step
.goto Wetlands,11.80,57.99
>>Talk to |cRXP_FRIENDLY_Sida|r
.accept 470 >> Accept Digging Through the Ooze
.target Sida
step
.goto Wetlands,11.50,52.13
>>Talk to |cRXP_FRIENDLY_Tarrel|r
.accept 305 >> Accept In Search of The Excavation Team
.target Tarrel Rockweaver
step << skip
#completewith Merrin
+|cRXP_WARN_Get ready to Logout Skip from the Mushroom in the cave soon|r
step
#completewith next
.goto Wetlands,33.99,41.03,50,0
.goto Wetlands,36.91,43.67,50,0
.goto Wetlands,37.26,47.83,50,0
.goto Wetlands,38.21,50.68,50,0
.goto Wetlands,38.19,50.90,15 >>Travel toward |cRXP_FRIENDLY_Ormer|r
step
.goto Wetlands,38.19,50.90
>>Talk to |cRXP_FRIENDLY_Ormer|r
.accept 294 >> Accept Ormer's Revenge
.target Ormer Ironbraid
step
#label Merrin
.goto Wetlands,38.81,52.39
>>Go into the cave
>>Talk to |cRXP_FRIENDLY_Merrin|r
.turnin 305 >> Turn in In Search of The Excavation Team
.accept 306 >> Accept In Search of The Excavation Team
.target Merrin Rockweaver
step << skip
#completewith next
.goto Wetlands,38.99,52.60
.goto Wetlands,49.47,41.49,50 >>|cRXP_WARN_Jump on top of the Mushroom in the cave. Logout Skip to central Wetlands|r
step
.goto Wetlands,49.92,39.37
>>Talk to |cRXP_FRIENDLY_Einar|r
.accept 469 >> Accept Daily Delivery
.target Einar Stonegrip
step << skip
#completewith next
.goto Wetlands,50.20,37.73,0
.vendor >> Buy Healing Potions from Kixxle if you have money
step
.goto Wetlands,56.32,40.41
>>Talk to |cRXP_FRIENDLY_Rethiel|r
.turnin 463 >> Turn in The Greenwarden
.accept 276 >> Accept Tramping Paws
.target Rethiel the Greenwarden
step
#completewith TwentyFour
>>AoE |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 484,1 
.mob Young Wetlands Crocolisk
step
#loop
.line Wetlands,63.96,63.47,62.66,69.50,55.70,75.19,61.73,72.32,62.66,69.50,63.96,63.47
.goto Wetlands,63.96,63.47,50,0
.goto Wetlands,62.66,69.50,50,0
.goto Wetlands,55.70,75.19,50,0
.goto Wetlands,61.73,72.32,50,0
.goto Wetlands,62.66,69.50,50,0
.goto Wetlands,63.96,63.47,50,0
>>AoE |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mongrels|r
.complete 276,1 
.mob +Mosshide Gnoll
.complete 276,2 
.mob +Mosshide Mongrel
step
#label TwentyFour
#loop
.line Wetlands,63.96,63.47,62.66,69.50,55.70,75.19,61.73,72.32,62.66,69.50,63.96,63.47
.goto Wetlands,63.96,63.47,50,0
.goto Wetlands,62.66,69.50,50,0
.goto Wetlands,55.70,75.19,50,0
.goto Wetlands,61.73,72.32,50,0
.goto Wetlands,62.66,69.50,50,0
.goto Wetlands,63.96,63.47,50,0
.xp 24 >>AoE |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mongrels|r to level 24
.mob Mosshide Gnoll
.mob Mosshide Mongrel
step
#loop
.line Wetlands,63.96,63.47,62.66,69.50,55.70,75.19,61.73,72.32,62.66,69.50,63.96,63.47
.goto Wetlands,63.96,63.47,50,0
.goto Wetlands,62.66,69.50,50,0
.goto Wetlands,55.70,75.19,50,0
.goto Wetlands,61.73,72.32,50,0
.goto Wetlands,62.66,69.50,50,0
.goto Wetlands,63.96,63.47,50,0
>>AoE |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 484,1 
.mob Young Wetlands Crocolisk
step
.goto Wetlands,56.32,40.41
>>Talk to |cRXP_FRIENDLY_Rethiel|r
.turnin 276 >> Turn in Tramping Paws
.accept 277 >> Accept Fire Taboo
.target Rethiel the Greenwarden
step
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step
.goto Stormwind City,38.61,79.39
>>Talk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells (Arcane Explosion r2, Fire Blast r3 (if you don't have them), Conjure Food r1, r2, r3, Counterspell, Fireball r5, Flamestrike r2)
.target Jennea Cannon
step
#completewith next
.hs >> Hearth to Menethil Harbor
step
.goto Wetlands,10.69,60.95
>>Talk to |cRXP_FRIENDLY_Helbrek|r
>>|cRXP_BUY_Buy a|r |T132792:0|t[Flagon of Dwarven Honeymead] |cRXP_BUY_from him|r
>>|cRXP_WARN_Buy level 5-15 food if needed|r
.collect 2594,1,288,1 
.target Innkeeper Helbrek
step
.goto Wetlands,10.90,59.63
>>Talk to |cRXP_FRIENDLY_Fitzsimmons|r
.accept 288 >> Accept The Third Fleet
.turnin 288 >> Turn in The Third Fleet
.accept 289 >> Accept The Cursed Crew
.target First Mate Fitzsimmons
step
.goto Wetlands,11.80,57.99
>>Talk to |cRXP_FRIENDLY_Sida|r
.turnin 470 >> Turn in Digging Through the Ooze
.target Sida
.isQuestComplete 470
step
.goto Wetlands,8.33,56.45
>>Talk to |cRXP_FRIENDLY_Falkan|r
>>|cRXP_BUY_Buy up to two|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from him|r
.collect 17031,2 
step
.goto Wetlands,8.55,55.73
>>Talk to |cRXP_FRIENDLY_James|r
.turnin 484 >> Turn in Young Crocolisk Skins
.accept 471 >> Accept Apprentice's Duties
.turnin 469 >> Turn in Daily Delivery
.target James Halloran
step
.goto Wetlands,9.85,57.37
>>Go into the Barracks, go upstairs (once)
>>Talk to |cRXP_FRIENDLY_Stoutfist|r through the ground by jumping up from the railing
.accept 464 >> Accept War Banners
.target Captain Stoutfist
step
.goto Wetlands,11.50,52.13
>>Talk to |cRXP_FRIENDLY_Tarrel|r
.turnin 306 >> Turn in In Search of The Excavation Team
.target Tarrel Rockweaver
step
.goto Wetlands,13.96,41.82,70,0
.goto Wetlands,16.25,40.11,70,0
.goto Wetlands,18.45,39.57,70,0
.goto Wetlands,19.85,40.39,70,0
.goto Wetlands,18.45,39.57
>>AoE |cRXP_ENEMY_Bluegill Murlocs|r
>>AoE |cRXP_ENEMY_Gobbler|r. Loot him for |cRXP_LOOT_Gobbler's Head|r
>>|cRXP_WARN_Be careful as they both have increased|r |T135849:0|t[Frost Resistance]
.complete 279,1 
.complete 279,2 
.mob Bluegill Murloc
.unitscan Gobbler
step
#completewith next
.goto Wetlands,32.82,35.17,70,0
.goto Wetlands,42.80,32.36,70,0
>>AoE |cRXP_ENEMY_Mosshide Fenrunners|r, |cRXP_ENEMY_Mosshide Trappers|r, and |cRXP_ENEMY_Mosshide Brutes|r. Loot them for |cRXP_LOOT_Crude Flint|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mosshide Fenrunners|r have|r |T132307:0|t[Increased Movespeed] |cRXP_WARN_and run in fear at <25% health, |cRXP_ENEMY_Mosshide Trappers|r cast|r |T132149:0|t[Net]|cRXP_WARN_, and |cRXP_ENEMY_Mosshide Brutes|r deal 2-handed damage|r
>>|cRXP_WARN_If you get|r |T132149:0|t[Netted]|cRXP_WARN_,|r |T135736:0|t[Blink] |cRXP_WARN_away from now on|r
.complete 277,1 
.mob Mosshide Fenrunner
.mob Mosshide Trapper
.mob Mosshide Brute
.isOnQuest 470
step
#loop
.line Wetlands,43.39,28.57,43.01,26.05,43.50,24.49,44.96,24.27,46.55,24.18,47.67,25.43,46.23,26.56,44.20,25.39,43.39,28.57
.goto Wetlands,43.39,28.57,30,0
.goto Wetlands,43.01,26.05,30,0
.goto Wetlands,43.50,24.49,30,0
.goto Wetlands,44.96,24.27,30,0
.goto Wetlands,46.55,24.18,30,0
.goto Wetlands,47.67,25.43,30,0
.goto Wetlands,46.23,26.56,30,0
.goto Wetlands,44.20,25.39,30,0
.goto Wetlands,43.39,28.57,30,0
>>AoE |cRXP_ENEMY_Monstrous Oozes|r, |cRXP_ENEMY_Crimson Oozes|r, and |cRXP_ENEMY_Black Oozes|r in and outside of the Crypt. Loot them for |cRXP_LOOT_Sida's Bag|r
.complete 470,1 
.mob Monstrous Ooze
.mob Crimson Ooze
.mob Black Ooze
step
#completewith MGnolls2
.goto Wetlands,45.03,34.62,70,0
.goto Wetlands,64.27,56.53,70,0
>>AoE |cRXP_ENEMY_Mosshide Fenrunners|r, |cRXP_ENEMY_Mosshide Trappers|r, and |cRXP_ENEMY_Mosshide Brutes|r. Loot them for |cRXP_LOOT_Crude Flint|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mosshide Fenrunners|r have|r |T132307:0|t[Increased Movespeed] |cRXP_WARN_and run in fear at <25% health, |cRXP_ENEMY_Mosshide Trappers|r cast|r |T132149:0|t[Net]|cRXP_WARN_, and |cRXP_ENEMY_Mosshide Brutes|r deal 2-handed damage|r
.complete 277,1 
.mob Mosshide Fenrunner
.mob Mosshide Trapper
.mob Mosshide Brute
.isOnQuest 470
step
#completewith next
.goto Wetlands,32.82,35.17,70,0
.goto Wetlands,42.80,32.36,70,0
.goto Wetlands,45.03,34.62,70,0
.goto Wetlands,64.27,56.53,70,0
>>AoE |cRXP_ENEMY_Mosshide Fenrunners|r, |cRXP_ENEMY_Mosshide Trappers|r, and |cRXP_ENEMY_Mosshide Brutes|r. Loot them for |cRXP_LOOT_Crude Flint|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mosshide Fenrunners|r have|r |T132307:0|t[Increased Movespeed] |cRXP_WARN_and run in fear at <25% health, |cRXP_ENEMY_Mosshide Trappers|r cast|r |T132149:0|t[Net]|cRXP_WARN_, and |cRXP_ENEMY_Mosshide Brutes|r deal 2-handed damage|r
>>|cRXP_WARN_If you get|r |T132149:0|t[Netted]|cRXP_WARN_,|r |T135736:0|t[Blink] |cRXP_WARN_away from now on|r
.complete 277,1 
.mob Mosshide Fenrunner
.mob Mosshide Trapper
.mob Mosshide Brute
.isQuestTurnedIn 470
step
#label MGnolls2
.goto Wetlands,63.96,63.47,70 >> Travel toward the Mosshide Gnolls
.isOnQuest 277
step
#completewith next
>>After killing the |cRXP_ENEMY_Mosshide Mistweaver|r, loot them for |cRXP_LOOT_Crude Flint|r
.complete 277,1 
.mob Mosshide Mistweaver
step
#loop
.line Wetlands,63.96,63.47,62.66,69.50,55.70,75.19,61.73,72.32,62.66,69.50,63.96,63.47
.goto Wetlands,63.96,63.47,50,0
.goto Wetlands,62.66,69.50,50,0
.goto Wetlands,55.70,75.19,50,0
.goto Wetlands,61.73,72.32,50,0
.goto Wetlands,62.66,69.50,50,0
.goto Wetlands,63.96,63.47,50,0
.xp 25 >>AoE |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mongrels|r to level 25
.mob Mosshide Gnoll
.mob Mosshide Mongrel
step
.goto Wetlands,64.56,56.14,70,0
.goto Wetlands,60.33,58.40,70,0
.goto Wetlands,64.56,56.14
>>AoE |cRXP_ENEMY_Mosshide Fenrunners|r. Loot them for their |cRXP_LOOT_Crude Flint|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mosshide Fenrunners|r have|r |T132307:0|t[Increased Movespeed] |cRXP_WARN_and run in fear at <25% health|r
.complete 277,1 
.mob Mosshide Fenrunner
step
.goto Wetlands,56.36,40.48
>>Talk to |cRXP_FRIENDLY_Rethiel|r
.turnin 277 >> Turn in Fire Taboo
.accept 275 >> Accept Blisters on the Land
.target Rethiel the Greenwarden
step
#completewith HarborX
.goto Wetlands,36.41,37.89,70,0
.goto Wetlands,12.53,50.84,70,0
.goto Wetlands,10.92,55.16,70 >> Travel back to Menethil Harbor
.cooldown item,6948,<0
step
#completewith next
.hs >> Hearth to Menethil Harbor
.cooldown item,6948,>0
step
#label HarborX
.goto Wetlands,10.69,60.95
>>Talk to |cRXP_FRIENDLY_Helbrek|r
>>|cRXP_BUY_Buy some|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from him|r
>>|cRXP_WARN_Remember to cast|r |T133968:0|t[Conjure Food Rank 3] |cRXP_WARN_instead of buying food|r
.collect 1708,40,471,1 
.target Innkeeper Helbrek
step
.goto Wetlands,8.33,58.58
>>Talk to |cRXP_FRIENDLY_Karl|r
.turnin 279 >> Turn in Claws from the Deep
.accept 281 >> Accept Reclaiming Goods
.target Karl Boran
step
.goto Wetlands,11.80,57.99
>>Talk to |cRXP_FRIENDLY_Sida|r
.turnin 470 >> Turn in Digging Through the Ooze
.target Sida
step
.goto Wetlands,13.51,41.39
>>Click the |cRXP_PICK_Damaged Crate|r
.turnin 281 >> Turn in Reclaiming Goods
.accept 284 >> Accept The Search Continues
step
.goto Wetlands,13.62,38.20
>>Click the |cRXP_PICK_Sealed Barrel|r in the ground
>>|cRXP_WARN_This has a 5 second cast time|r
.turnin 284 >> Turn in The Search Continues
.accept 285 >> Accept Search More Hovels
step
.goto Wetlands,13.94,34.80
>>Click the |cRXP_PICK_Half-buried Barrel|r in the ground
>>|cRXP_WARN_Be careful as the nearby |cRXP_ENEMY_Bluegill Warriors|r cast|r |T132316:0|t[Hamstring]
.turnin 285 >> Turn in Search More Hovels
.accept 286 >> Accept Return the Statuette
step
#completewith next
.goto Wetlands,17.75,27.70,35,0
.goto Wetlands,19.18,27.77,35,0
.goto Wetlands,20.92,28.82,35,0
.goto Wetlands,19.45,24.30,35,0
.goto Wetlands,20.58,24.25,35,0
.goto Wetlands,23.24,25.27,35,0
.goto Wetlands,22.42,22.37,35,0
.goto Wetlands,25.96,21.38,35,0
.goto Wetlands,27.54,20.60,35,0
.goto Wetlands,28.52,20.98,35,0
>>AoE |cRXP_ENEMY_Fen Creepers|r
>>|cRXP_WARN_Be careful as they are|r |T132320:0|t[Stealthed] |cRXP_WARN_and patrol around in the shallow water slightly|r
.complete 275,1 
.unitscan Fen Creeper
step
#loop
.line Wetlands,17.89,26.93,18.19,23.43,19.20,21.86,20.75,25.75,21.72,20.54,23.16,21.06,25.25,21.30,28.41,18.35,29.43,20.11
.goto Wetlands,17.89,26.93,60,0
.goto Wetlands,18.19,23.43,60,0
.goto Wetlands,19.20,21.86,60,0
.goto Wetlands,20.75,25.75,60,0
.goto Wetlands,21.72,20.54,60,0
.goto Wetlands,23.16,21.06,60,0
.goto Wetlands,25.25,21.30,60,0
.goto Wetlands,28.41,18.35,60,0
.goto Wetlands,29.43,20.11,60,0
>>AoE |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Giant Crocolisk Skin|r
>>|cRXP_WARN_Be careful as they cast|r |T132109:0|t[Tendon Rip] |cRXP_WARN_(reduces movespeed by 70% for 8 seconds)|r
.complete 471,1 
.mob Giant Wetlands Crocolisk
step
#completewith next
.goto Wetlands,29.49,23.64,35,0
.goto Wetlands,30.89,25.27,35,0
.goto Wetlands,27.36,36.83,35,0
.goto Wetlands,25.44,35.49,35,0
>>AoE |cRXP_ENEMY_Fen Creepers|r
>>|cRXP_WARN_Be careful as they are|r |T132320:0|t[Stealthed] |cRXP_WARN_and patrol around in the shallow water slightly|r
.complete 275,1 
.unitscan Fen Creeper
step
.goto Wetlands,22.46,50.45,225 >> Travel toward the Raptors
.isOnQuest 294
step
#completewith Raptors1
>>AoE |cRXP_ENEMY_Black Oozes|r. Loot them for |cRXP_LOOT_Sida's Bag|r
.complete 470,1 
.mob Black Ooze
.isOnQuest 470
step
#completewith next
>>AoE |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
.complete 943,1 
.mob Mottled Raptor
.mob Mottled Screecher
.isOnQuest 943
step
#label Raptors1
.goto Wetlands,22.46,50.45,50,0
.goto Wetlands,23.94,52.70,50,0
.goto Wetlands,26.01,48.83,50,0
.goto Wetlands,29.95,44.03,50,0
.goto Wetlands,22.46,50.45
>>AoE |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mottled Screechers|r cast|r |T132366:0|t[Call For Help] |cRXP_WARN_ (Aggros nearby |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r in a 75 yard radius at <50% health)|r
.complete 294,1 
.mob +Mottled Raptor
.complete 294,2 
.mob +Mottled Screecher
step
#completewith next
.goto Wetlands,33.99,41.03,50,0
.goto Wetlands,36.91,43.67,50,0
.goto Wetlands,37.26,47.83,50,0
.goto Wetlands,38.21,50.68,50,0
.goto Wetlands,36.62,42.17,0
.goto Wetlands,38.19,50.90,15 >>Travel toward |cRXP_FRIENDLY_Ormer|r
>>|cRXP_WARN_Remember to check for the |cRXP_LOOT_Neru Fragment|r (Dirt Patch) behind the tree leading up to|r |cRXP_FRIENDLY_Ormer|r
step
#label Ormer
.goto Wetlands,38.17,50.89
>>Talk to |cRXP_FRIENDLY_Ormer|r
.turnin 294 >> Turn in Ormer's Revenge
.accept 295 >> Accept Ormer's Revenge
.target Ormer Ironbraid
step
#sticky
#label FlagonFoss
.goto Wetlands,38.86,52.20,0,0
>>Loot |cRXP_LOOT_Flagongut's Fossil|r on the ground
.complete 943,2 
.isOnQuest 943
step
>>Talk to |cRXP_FRIENDLY_Whelgar|r
.accept 299 >> Accept Uncovering the Past
.goto Wetlands,38.81,52.39
.target Prospector Whelgar
step
#requires FlagonFoss
.goto Wetlands,36.50,49.72,40 >>Jump down to Whelgar's Excavation
.isOnQuest 299
step
#completewith Fragments
>>AoE |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
.complete 943,1 
.mob Mottled Scythemaw
.mob Mottled Razormaw
.isOnQuest 943
step
#completewith next
>>Loot the |cRXP_LOOT_Fragments|r found all over the Excavation Site
>>|cRXP_LOOT_Ados|r |cRXP_WARN_is a Coffer, |cRXP_LOOT_Modr|r is a small Vase, |cRXP_LOOT_Golm|r is a big Vase, |cRXP_LOOT_Neru|r is a Dirt Patch|r
>>|cRXP_WARN_They can be found near |cRXP_LOOT_Sarltooth|r's platform and on the ledge below it|r
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step
.goto Wetlands,35.17,50.31,70,0
.goto Wetlands,35.71,43.66,70,0
.goto Wetlands,32.66,48.84,70,0
.goto Wetlands,31.26,48.88,70,0
.goto Wetlands,35.17,50.31,70,0
.goto Wetlands,35.71,43.66,70,0
.goto Wetlands,32.66,48.84,70,0
.goto Wetlands,31.26,48.88
>>AoE |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mottled Scytheclaws|r cast|r |T132152:0|t[Rend Flesh] |cRXP_WARN_(32 Damage every 3 sec for 12 sec) and |cRXP_ENEMY_Mottled Razormaws|r cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 6 for 5 minutes)|r
.complete 295,1 
.mob +Mottled Scythemaw
.complete 295,2 
.mob +Mottled Razormaw
step
#label Fragments
>>Loot the |cRXP_LOOT_Fragments|r found all over the Excavation Site
>>|cRXP_PICK_Ados|r |cRXP_WARN_is a Coffer, |cRXP_PICK_Modr|r is a small Vase, |cRXP_PICK_Golm|r is a big Vase, |cRXP_PICK_Neru|r is a Dirt Patch|r
>>|cRXP_WARN_They can be found near |cRXP_LOOT_Sarltooth|r's platform and on the ledge below it|r
.complete 299,1 
.goto Wetlands,33.17,46.40,30,0
.goto Wetlands,34.85,50.39
.complete 299,2 
.goto Wetlands,34.92,47.01,30,0
.goto Wetlands,34.20,47.58,30,0
.goto Wetlands,33.33,49.12
.complete 299,3 
.goto Wetlands,34.96,47.97,30,0
.goto Wetlands,35.23,44.41,30,0
.goto Wetlands,34.25,45.67
.complete 299,4 
.goto Wetlands,36.62,42.17,30,0
.goto Wetlands,33.39,47.50,30,0
.goto Wetlands,32.22,50.81
step
#loop
.line Wetlands,35.17,50.31,35.71,43.66,32.66,48.84,31.26,48.88,35.17,50.31
.goto Wetlands,35.17,50.31,45,0
.goto Wetlands,35.71,43.66,45,0
.goto Wetlands,32.66,48.84,45,0
.goto Wetlands,31.26,48.88,45,0
.goto Wetlands,35.17,50.31,45,0
>>AoE |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
.complete 943,1 
.mob Mottled Scythemaw
.mob Mottled Razormaw
.isOnQuest 943
step
#completewith next
.goto Wetlands,32.27,50.72,50,0
+|cRXP_WARN_Go up the path to |cRXP_ENEMY_Sarltooth|r. Kite him back to |cRXP_FRIENDLY_Ormer|r using|r |T135807:0|t[Fire Blast r1] |cRXP_WARN_and the path you cleared|r
>>|cRXP_WARN_Do NOT kill him until you pick up the next quest|r
.mob Sarltooth
.isOnQuest 295
step
.goto Wetlands,38.18,50.89
>>Talk to |cRXP_FRIENDLY_Ormer|r
>>|cRXP_WARN_===PAY ATTENTION===|r
>>|cRXP_WARN_You MUST pick up the next quest before killing|r |cRXP_ENEMY_Sarltooth|r
.turnin 295 >> Turn in Ormer's Revenge
.accept 296 >> Accept Ormer's Revenge
.target Ormer Ironbraid
step
.goto Wetlands,33.26,51.47
>>Kill |cRXP_ENEMY_Sarltooth|r. Loot him for |cRXP_LOOT_Sarltooth's Talon|r
.complete 296,1 
.mob Sarltooth
step << skip
#completewith next
+|cRXP_WARN_Get ready to Logout Skip from the Mushroom in the cave soon|r
step
>>Talk to |cRXP_FRIENDLY_Ormer|r and |cRXP_FRIENDLY_Whelgar|r
.turnin 296,3 >> Turn in Ormer's Revenge
.target +Ormer Ironbraid
.goto Wetlands,38.18,50.89
.turnin 299 >> Turn in Uncovering the Past
.goto Wetlands,38.81,52.39
.target +Prospector Whelgar
step << skip
.goto Wetlands,38.99,52.60
.goto Wetlands,49.47,41.49,50 >>|cRXP_WARN_Jump on top of the Mushroom in the cave. Logout Skip to central Wetlands|r
.isOnQuest 464
step << skip
#completewith next
.goto Wetlands,49.01,44.86,30 >>Run up the ramp to the Dragonmaw Orcs
.isOnQuest 464
step
.goto Wetlands,47.93,46.45,60,0
.goto Wetlands,45.79,44.46,60,0
.goto Wetlands,42.81,42.60,60,0
.goto Wetlands,47.93,46.45,60,0
.goto Wetlands,45.79,44.46,60,0
.goto Wetlands,42.81,42.60
>>AoE |cRXP_ENEMY_Dragonmaw Raiders|r. Loot them for |cRXP_LOOT_Dragonmaw War Banners|r
>>|cRXP_ENEMY_Be careful as they cast|r |T132149:0|t[Net]
.complete 464,1 
.mob Dragonmaw Raider
step
.goto Wetlands,48.85,37.55,35,0
.goto Wetlands,52.97,36.86,35,0
.goto Wetlands,54.74,37.48,35,0
.goto Wetlands,53.74,40.78,35,0
.goto Wetlands,55.01,46.50,35,0
.goto Wetlands,48.85,37.55,35,0
.goto Wetlands,52.97,36.86,35,0
.goto Wetlands,54.74,37.48,35,0
.goto Wetlands,53.74,40.78,35,0
.goto Wetlands,55.01,46.50
>>AoE |cRXP_ENEMY_Fen Creepers|r
>>|cRXP_WARN_Be careful as they are|r |T132320:0|t[Stealthed] |cRXP_WARN_and patrol around in the shallow water slightly|r
.complete 275,1 
.unitscan Fen Creeper
step
.goto Wetlands,56.36,40.48
>>Talk to |cRXP_FRIENDLY_Rethiel|r
.turnin 275,3 >> Turn in Blisters on the Land
.target Rethiel the Greenwarden
step
#completewith HarborX1
.goto Wetlands,36.41,37.89,70,0
.goto Wetlands,12.53,50.84,70,0
.goto Wetlands,10.92,55.16,70 >> Travel back to Menethil Harbor
.cooldown item,6948,<0
step
#completewith next
.hs >> Hearth to Menethil Harbor
.cooldown item,6948,>0
step
.goto Wetlands,10.84,60.44
>>Talk to |cRXP_FRIENDLY_Flagongut|r through the wall
.turnin 943,1 >> Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
.isOnQuest 943
step
.goto Wetlands,11.80,57.99
>>Talk to |cRXP_FRIENDLY_Sida|r
.turnin 470 >> Turn in Digging Through the Ooze
.target Sida
step
#label HarborX1
.goto Wetlands,9.85,57.37
>>Go into the Barracks, go upstairs (once)
>>Talk to |cRXP_FRIENDLY_Stoutfist|r through the ground by jumping up from the railing
.turnin 464 >> Turn in War Banners
.accept 465 >> Accept Nek'rosh's Gambit
.target Captain Stoutfist
step
.goto Wetlands,8.57,55.73
>>Talk to |cRXP_FRIENDLY_James|r
.turnin 471 >> Turn in Apprentice's Duties
.target James Halloran
step
.goto Wetlands,8.33,56.45
>>Talk to |cRXP_FRIENDLY_Falkan|r
>>|cRXP_BUY_Buy up to two|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from him|r
.collect 17031,2 
step
.goto Wetlands,8.32,58.58
>>Talk to |cRXP_FRIENDLY_Karl|r
.turnin 286,1 >> Turn in Return the Statuette
.target Karl Boran
step
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step
.goto Stormwind City,38.62,79.30
>>Talk to |cRXP_FRIENDLY_Jennea|r
.accept 1939 >> Accept High Sorcerer Andromath
.trainer >> Train your class spells (Cone of Cold, Remove Lesser Curse, Dampen Magic r2)
.target Jennea Cannon
step
#completewith next
.goto Stormwind City,36.30,82.90,6 >>Go through the green portal
step
.goto Stormwind City,37.53,81.65
>>Talk to |cRXP_FRIENDLY_Andromath|r
.turnin 1939 >> Turn in High Sorcerer Andromath
.accept 1938 >> Accept Ur's Treatise on Shadow Magic
.target High Sorcerer Andromath
step
#completewith next
.goto Stormwind City,42.07,79.44,30,0
.goto Stormwind City,45.12,75.37,30,0
.goto Stormwind City,44.33,70.20,30,0
.goto Stormwind City,46.20,67.09,30,0
.goto Stormwind City,49.44,63.25,30,0
.goto Stormwind City,52.20,61.49,30,0
.goto Stormwind City,55.30,68.16,10 >>Enter the Stormwind Bank
>>|cRXP_WARN_As a sidenote, you're fine to vendor|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for now. You don't need to save it until prompted later|r
step
.goto Stormwind City,57.03,72.97
>>Talk to |cRXP_FRIENDLY_Newton|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
.bankdeposit 17056,2592,4306,3339 >> Deposit the following items into the bank:
>>|T132917:0|t[Light Feather]
>>|T132911:0|t[Wool Cloth]
>>|T133849:0|t[Dwarven Tinder]
.target Newton Burnside
step
#label BankDeposit
.goto Stormwind City,57.03,72.97
>>Talk to |cRXP_FRIENDLY_Newton|r
.bankwithdraw 1015,2665,1922,1083,1284 >> Withdraw the following items from your bank:
>>|T133970:0|t[Lean Wolf Flank]
>>|T133849:0|t[Stormwind Seasoning Herbs]
>>|T133629:0|t[Supplies for Sven]
>>|T133277:0|t[Glyph of Azora]
>>|T132761:0|t[Crate of Horseshoes]
.target Newton Burnside
step
#completewith next
.goto Stormwind City,57.10,61.48,30,0
.goto Stormwind City,58.30,59.39,30,0
.goto Stormwind City,63.42,63.75,20,0
.goto Stormwind City,63.14,65.25,15,0
.goto Stormwind City,66.27,62.12,10 >>Travel toward |cRXP_FRIENDLY_Dungar|r
step
.goto Stormwind City,66.27,62.12
>>Talk to |cRXP_FRIENDLY_Dungar|r
.fly Sentinel >> Fly to Westfall
.target Dungar Longdrink
.zoneskip Westfall
.zoneskip Duskwood
]]);
