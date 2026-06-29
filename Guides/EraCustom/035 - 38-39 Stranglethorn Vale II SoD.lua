RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#season 2
#classic
#tbc
#mop
<< Alliance
#name 38-39 Stranglethorn Vale II SoD
#displayname 38-39 Stranglethorn Vale II
#next 39-41 Alterac/Arathi SoD
step
#optional
#xprate >1.99
.goto StormwindClassic,66.277,62.137,-1
.goto Stranglethorn Vale,27.530,77.787,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Duskwood >> Fly to Duskwood
.target Dungar Longdrink
.target Gyll
.zoneskip Stormwind City,1
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Duskwood >> Fly to Duskwood
.target Gyll
step
#xprate >1.99
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 228 >>Turn in Mor'Ladim
.accept 229 >>Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
#xprate >1.99
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
.turnin 229 >>Turn in The Daughter Who Lived
.target Watcher Ladimore
step
.goto Duskwood,44.598,87.565,0
.goto Stranglethorn Vale,40.635,3.514,40,0
.goto Stranglethorn Vale,38.63,5.05
.subzone 99 >> Travel to the Rebel Camp in northern Stranglethorn Vale
step
#completewith next
.goto Stranglethorn Vale,44.93,10.25,0
>>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
>>|cRXP_ENEMY_Kurzen Medicine Men|r |cRXP_WARN_also drop|r |T134413:0|t[Liferoot]|cRXP_WARN_. Save these for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
>>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
.complete 203,1 
.complete 204,1 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step
#label Fern
.goto Stranglethorn Vale,44.086,9.538
>>Open the |cRXP_PICK_Kurzen Supplies|r. Loot it for the |cRXP_LOOT_Venom Fern Extract|r
.complete 204,2 
step
.goto Stranglethorn Vale,44.93,10.25
>>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
>>|cRXP_ENEMY_Kurzen Medicine Men|r |cRXP_WARN_also drop|r |T134413:0|t[Liferoot]|cRXP_WARN_. Save these for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
>>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
.complete 203,1 
.complete 204,1 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
.turnin 203 >> Turn in The Second Rebellion
.turnin 204 >> Turn in Bad Medicine
.target Sergeant Yohwa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r and |cRXP_FRIENDLY_Brother Nimetz|r
.accept 574 >> Accept Special Forces
.goto Stranglethorn Vale,38.017,3.330
.accept 207 >> Accept Kurzen's Mystery << Warrior
.goto Stranglethorn Vale,37.832,3.559
.target Sergeant Yohwa
.target Brother Nimetz
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.accept 200 >> Accept Bookie Herod
.target Lieutenant Doren
step
#optional
.isOnQuest 622
.goto Stranglethorn Vale,37.740,3.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
.turnin 622 >> Turn in Return to Corporal Kaleb
.target Corporal Kaleb
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 195 >> Accept Raptor Mastery
.goto Stranglethorn Vale,35.658,10.808
.accept 188 >> Accept Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.accept 192 >> Accept Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
.isQuestTurnedIn 194
.isQuestTurnedIn 187
.isQuestTurnedIn 191
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>Click on |cRXP_PICK_Bookie Herod's Records|r upstairs in the house
.turnin 200 >> Turn in Bookie Herod
.accept 328 >> Accept The Hidden Key
step
#completewith SpecialForces
.goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step << Rogue
#season 2
.train 425103,1
#completewith next
>>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
.collect 216616,1
.mob Kurzen Elite
.mob Kurzen Subchief
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
.goto Stranglethorn Vale,49.616,7.743
>>Open the |cRXP_PICK_Kurzen Supply Crate|r. Loot it for the |cRXP_LOOT_Kurzen Fighter's Uniform|r
.collect 216617,1
.skill lockpicking,<125,1
step
#completewith next
.isQuestTurnedIn 215
.goto Stranglethorn Vale,49.617,7.562
>>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
.turnin 328 >> Turn in The Hidden Key
.accept 329 >> Accept The Spy Revealed!
step << Rogue
#season 2
.train 425103,1
.goto Stranglethorn Vale,49.943,3.953,40,0
.goto Stranglethorn Vale,49.617,7.562,40,0
.goto Stranglethorn Vale,49.25,6.18
>>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
.collect 216616,1
.mob Kurzen Elite
.mob Kurzen Subchief
.skill lockpicking,<125,1
step
#label SpecialForces
.goto Stranglethorn Vale,46.45,6.89,40,0
.goto Stranglethorn Vale,47.89,7.77,40,0
.goto Stranglethorn Vale,46.45,6.89
>>Kill |cRXP_ENEMY_Kurzen Commandos|r and |cRXP_ENEMY_Kurzen Headshrinkers|r. Loot them for their |T132905:0|t[Silk Cloth]
>>|cRXP_WARN_Be cautious of |cRXP_ENEMY_Kurzen Commandos|r in|r |T132320:0|t[Stealth]
>>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
.collect 4306,15,4449,1,1 
.complete 574,1 
.complete 574,2 
.mob Kurzen Commando
.mob Kurzen Headshrinker
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,49.617,7.562
>>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
.turnin 328 >> Turn in The Hidden Key
.accept 329 >> Accept The Spy Revealed!
step << Rogue
#season 2
.train 425103,1
#completewith next
.goto Stranglethorn Vale,44.261,7.908,60 >> Exit the cave. Travel toward |cRXP_FRIENDLY_Wendel Mathers|r in the tower outside
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
.goto Stranglethorn Vale,44.261,7.908
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r in the tower
>>|cRXP_WARN_He has a respawn timer of around 3 minutes|r
.destroy 216616 >> Hand the |cRXP_LOOT_Compound Cage Key|r to him
.destroy 216617 >> Hand the |cRXP_LOOT_Kurzen Fighter's Uniform|r to him
.skipgossip 218230,1
.target Wendel Mathers
.skill lockpicking,<125,1
step << Warrior
#ah
.goto Stranglethorn Vale,44.5,9.6
>>Kill |cRXP_ENEMY_Kurzen Medicine Men|r. Loot them for their |T134413:0|t[Liferoot]
>>|cRXP_WARN_This is for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest. You may also buy them from the Auction House if you wish. If you will buy them from the Auction House, skip this step|r
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
.complete 1712,1 
.isOnQuest 1712
.mob Kurzen Medicine Man
step << Warrior
.goto Stranglethorn Vale,44.5,9.6
>>Kill |cRXP_ENEMY_Kurzen Medicine Men|r. Loot them for their |T134413:0|t[Liferoot]
>>|cRXP_WARN_This is for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest|r
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
.complete 1712,1 
.isOnQuest 1712
.mob Kurzen Medicine Man
step
.goto Stranglethorn Vale,48.64,22.95,75,0
.goto Stranglethorn Vale,48.86,23.48
.goto Stranglethorn Vale,48.79,19.96
.goto Stranglethorn Vale,36.09,37.29,0
>>Kill |cRXP_ENEMY_Shadowmaw Panthers|r
>>|cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
>>|cRXP_WARN_You can find more further south-west if needed. The location is marked on your map|r
>>|cRXP_WARN_They also share spawns with|r |cRXP_ENEMY_Stranglethorn Tigresses|r
.complete 192,1 
.mob Shadowmaw Panther
.isOnQuest 192
step
#completewith next
>>Kill |cRXP_ENEMY_Lashtail Raptors|r
>>|cRXP_ENEMY_Lashtail Raptors|r |cRXP_WARN_cast|r |T132109:0|t[Lash] |cRXP_WARN_which is a 2 second stun|r
>>|cRXP_WARN_They can also|r |T132343:0|t[Disarm] |cRXP_WARN_you for 5 seconds|r << Warrior/Rogue/Paladin
.complete 195,1 
.mob Lashtail Raptor
.isOnQuest 195
step
.goto Stranglethorn Vale,40.68,21.85,70,0
.goto Stranglethorn Vale,39.71,29.82,70,0
.goto Stranglethorn Vale,37.09,32.60,70,0
.goto Stranglethorn Vale,39.1,27.2,70,0
.goto Stranglethorn Vale,39.61,21.90,70,0
.goto Stranglethorn Vale,40.03,15.67,75,0
.goto Stranglethorn Vale,39.1,27.2
>>Kill |cRXP_ENEMY_Snapjaw Crocolisk|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 577,1 
.mob Snapjaw Crocolisk
step
.goto Stranglethorn Vale,38.10,20.50,70,0
.goto Stranglethorn Vale,36.98,24.90,70,0
.goto Stranglethorn Vale,34.24,26.16,70,0
.goto Stranglethorn Vale,31.37,22.28
>>Kill |cRXP_ENEMY_Lashtail Raptors|r
>>|cRXP_ENEMY_Lashtail Raptors|r |cRXP_WARN_cast|r |T132109:0|t[Lash] |cRXP_WARN_which is a 2 second stun|r
>>|cRXP_WARN_They can also|r |T132343:0|t[Disarm] |cRXP_WARN_you for 5 seconds|r << Warrior/Rogue/Paladin
.complete 195,1 
.mob Lashtail Raptor
.isOnQuest 195
step
>>Kill |cRXP_ENEMY_Sin'Dall|r. Loot her for her |cRXP_LOOT_Paw|r
>>|cRXP_ENEMY_Sin'Dall|r |cRXP_WARN_can be on top of the Plateau, or patrolling around it|r
.goto Stranglethorn Vale,32.23,17.24
.complete 188,1 
.unitscan Sin'Dall
.isOnQuest 188
step << Warrior
#completewith KurzenMystery1
.goto Stranglethorn Vale,25.38,12.55,75,0
.goto Stranglethorn Vale,25.58,10.02,75,0
.goto Stranglethorn Vale,24.00,12.34
.goto Stranglethorn Vale,25.52,9.36,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r and |cRXP_LOOT_Tusks|r
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
>>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
.complete 189,1 
.complete 1712,2 
.collect 4306,15,4449,1,1 
.mob Bloodscalp Scout
.mob Bloodscalp Hunter
.mob Bloodscalp Beastmaster
.mob Bloodscalp Mystic
.isOnQuest 1712
step << Warrior
.isOnQuest 1712
#completewith next
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
.goto Stranglethorn Vale,29.471,19.119,70 >> Travel to the Bal'lal Ruins
step << Warrior
.isOnQuest 1712
.goto Stranglethorn Vale,29.471,19.119
>>Open the |cRXP_PICK_Moon Over the Vale|r. Loot it for |cRXP_LOOT_The First Troll Legend|r
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
.complete 207,1 
step << Warrior
.isOnQuest 1712
#completewith next
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
.goto Stranglethorn Vale,24.719,8.905,150 >> Travel to the Ruins of Zul'Kunda
step << Warrior
.isOnQuest 1712
.goto Stranglethorn Vale,24.719,8.905
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
>>Open |cRXP_PICK_The Emperor's Tomb|r. Loot it for |cRXP_LOOT_The Fourth Troll Legend|r
.complete 207,4 
step << Warrior
#label KurzenMystery1
.isOnQuest 1712
.goto Stranglethorn Vale,22.94,12.01
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
>>Open the |cRXP_PICK_Fall of Gurubashi|r. Loot it for |cRXP_LOOT_The Third Troll Legend|r
.complete 207,3 
step << Warrior
.isOnQuest 1712
.goto Stranglethorn Vale,25.38,12.55,75,0
.goto Stranglethorn Vale,25.58,10.02,75,0
.goto Stranglethorn Vale,24.00,12.34
.goto Stranglethorn Vale,25.52,9.36,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r and |cRXP_LOOT_Tusks|r
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
>>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
.complete 189,1 
.complete 1712,2 
.collect 4306,15,4449,1,1 
.mob Bloodscalp Scout
.mob Bloodscalp Hunter
.mob Bloodscalp Beastmaster
.mob Bloodscalp Mystic
step
#optional
#completewith next
.goto Stranglethorn Vale,21.10,22.84,125 >> Travel to the Haunted Island
step
.goto Stranglethorn Vale,21.10,22.84
>>Kill |cRXP_ENEMY_Lesser Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
.complete 601,1 
.mob Lesser Water Elemental
step << Warrior
#label UnderwaterLegend
.isOnQuest 1712
.goto Stranglethorn Vale,24.765,22.871
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
>>Open |cRXP_PICK_Gri'lek the Wanderer|r underwater. Loot it for |cRXP_LOOT_The Second Troll Legend|r
.complete 207,2 
step
#softcore
#completewith next
>>|cRXP_WARN_Grind mobs untill your hearthstone is off cooldown if it's not yet available|r
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
#softcore
#completewith SpecialForces
+Travel to the Rebel Camp
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r and |cRXP_FRIENDLY_Brother Nimetz|r
.goto Stranglethorn Vale,38.017,3.330
.turnin 207 >> Turn in Kurzen's Mystery
.isQuestComplete 207
step
#softcore
#label SpecialForces
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 574 >> Turn in Special Forces
.accept 202 >> Accept Colonel Kurzen
.turnin 329 >> Turn in The Spy Revealed!
.accept 330 >> Accept Patrol Schedules
.target Lieutenant Doren
step
#softcore
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 574 >> Turn in Special Forces
.accept 202 >> Accept Colonel Kurzen
.target Lieutenant Doren
step
#softcore
.isQuestTurnedIn 215
.goto Stranglethorn Vale,37.66,3.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
.turnin 330 >> Turn in Patrol Schedules
.accept 331 >> Accept Report to Doren
.target Corporal Sethman
step
#softcore
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 331 >> Turn in Report to Doren
.target Lieutenant Doren
step
#completewith next
.goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 195 >> Turn in Raptor Mastery
.accept 196 >>Accept Raptor Mastery
.goto Stranglethorn Vale,35.658,10.808
.target Hemet Nesingwary
.isQuestComplete 195
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
.turnin 188 >> Turn in Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.target Ajeck Rouack
.isQuestComplete 188
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 192 >> Turn in Panther Mastery
.accept 193 >> Accept Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Sir S. J. Erlgadin
.isQuestComplete 192
step
#hardcore
#completewith next
+Travel to the Rebel Camp
step
#hardcore
.goto Stranglethorn Vale,37.832,3.559
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.turnin 207 >> Turn in Kurzen's Mystery
.accept 205 >> Accept Troll Witchery << Mage
.target Brother Nimetz
step
#hardcore
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 574 >> Turn in Special Forces
.accept 202 >> Accept Colonel Kurzen
.turnin 329 >> Turn in The Spy Revealed!
.accept 330 >> Accept Patrol Schedules
.target Lieutenant Doren
step
#hardcore
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 574 >> Turn in Special Forces
.accept 202 >> Accept Colonel Kurzen
.target Lieutenant Doren
step
#hardcore
.isQuestTurnedIn 215
.goto Stranglethorn Vale,37.66,3.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
.turnin 330 >> Turn in Patrol Schedules
.accept 331 >> Accept Report to Doren
.target Corporal Sethman
step
#hardcore
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 331 >> Turn in Report to Doren
.target Lieutenant Doren
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
#completewith BBTurnins
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << Warrior
.goto Stranglethorn Vale,27.000,77.124
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r up stairs on the top floor
.turnin 189 >>Turn in Bloodscalp Ears
.isQuestComplete 189
.target Kebok
step
#label BBTurnins
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 601 >> Turn in Water Elementals
.target Baron Revilgaz
.xp <41,1
step
#label BBTurnins
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 601 >> Turn in Water Elementals
.accept 602 >> Accept Magical Analysis
.target Baron Revilgaz
.maxlevel 40
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
.turnin 577 >> Turn in Some Assembly Required
.target Drizzlik
step << !Mage
#label end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind>> Fly to Stormwind
.target Gyll
.maxlevel 40 << !Warlock !Paladin 
step << Warrior
.abandon 207 >> Abandon Kurzen's Mystery, you will not be completing this quest
step << Warrior
.goto StormwindClassic,58.362,61.678
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
>>|cRXP_BUY_Buy 400|r |T135427:0|t[Wicked Throwing Daggers]
.collect 15327,400 
.target Thurman Mullby
step << Mage
#completewith next
.goto Stranglethorn Vale,27.530,77.787
.zone Stormwind City >> Teleport to Stormwind City
.maxlevel 40
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
.maxlevel 40
]]);
