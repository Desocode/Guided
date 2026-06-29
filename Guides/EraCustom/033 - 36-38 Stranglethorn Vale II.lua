RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 36-38 Stranglethorn Vale II
#next 38-39 Swamp of Sorrows
step
#xprate <1.99
#sticky
#label BankD1
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankdeposit 6253,3518,5539,6245,5827,3404 >>Deposit the following items into your bank:
>>|T133633:0|t[Karnitol's Satchel]
>>|T134940:0|t[Decrypted Letter]
>>|T133460:0|t[Letter of Commendation]
>>|T133469:0|t[Fizzle Brassbolts' Letter]
>>|T134304:0|t[Buzzard Wing]
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
#xprate <1.99
#sticky
#label BankW1
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankwithdraw 2719,5996 >> Withdraw the |T134238:0|t[Small Brass Key] from your bank (if you have it) << !Warlock
.bankwithdraw 2719 >> Withdraw the |T134238:0|t[Small Brass Key] from your bank (if you have it) << Warlock
>>Withdraw the |T134797:0|t[Elixir or Water Breathing] from your bank (if you have them) << !Warlock
>>If you don't have one or other of the items, skip this step
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step << !Warlock
#xprate <1.99
#softcore
#ah
#requires BankW1
.goto Stranglethorn Vale,26.59,76.37
>>If you didn't have any |T134797:0|t[Elixir or Water Breathing] in your bank, try buying some from the Auction House. Skip this step if you can't find them.
.collect 5996,1 
step
#xprate <1.99
#requires BankW1
.goto Stranglethorn Vale,27.04,77.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
.home >>Set your Hearthstone to Booty Bay
.target Innkeeper Skindle
step
#xprate <1.99
#requires BankW1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r upstairs on the top floor
.turnin 1115 >> Turn in The Rumormonger
.goto Stranglethorn Vale,26.943,77.207
.target Krazek
.isOnQuest 1115
step
#xprate <1.99
#requires BankW1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r up stairs on the top floor
.accept 189 >> Accept Bloodscalp Ears
.goto Stranglethorn Vale,27.000,77.124
.target Kebok
step
#xprate <1.99
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.accept 601 >> Accept Water Elementals
.target Baron Revilgaz
step
#xprate <1.99
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.accept 577 >> Accept Some Assembly Required
.target Drizzlik
step
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Westfall >> Fly to Westfall
.target Gyll
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
>>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
.turnin 228 >>Turn in Mor'Ladim
.accept 229 >>Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
#xprate >1.99
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_she patrols around the Darkshire main square|r
.turnin 229 >>Turn in The Daughter Who Lived
.target Watcher Ladimore
step
#xprate <1.99
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 325 >> Turn in Armed and Ready
.accept 55 >> Accept Morbent Fel
.target Sven Yorgen
step
#xprate <1.99
.goto Duskwood,19.59,37.28
>>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
.complete 228,1 
.unitscan Mor'Ladim
step
#xprate <1.99
#completewith next
>>Clear your way to the 2nd floor of the house
.cast 8913 >>|cRXP_WARN_Equip|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_in your off-hand|r
>>|cRXP_WARN_Use|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
>>|cRXP_WARN_Remember to equip your weapon/off-hand slot after weakening him|r
.use 7297
step
#xprate <1.99
.goto Duskwood,16.90,33.40
>>Kill |cRXP_ENEMY_Morbent Fel|r
>>|cRXP_WARN_This quest can be difficult. If you aren't confident doing it, you may skip this step|r
.complete 55,1 
.use 7297
.mob Morbent Fel
.isOnQuest 55
step
#xprate <1.99
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 55 >> Turn in Morbent Fel
.isQuestComplete 55
.target Sven Yorgen
step
#xprate <1.99
.abandon 55 >> Abandon Morbent Fel
step
#completewith next
.goto Duskwood,44.598,87.565,0
.goto Stranglethorn Vale,40.635,3.514,40,0
.goto Stranglethorn Vale,38.63,5.05
.subzone 99 >> Travel to the Rebel Camp in northern Stranglethorn Vale
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r and |cRXP_FRIENDLY_Brother Nimetz|r
.accept 574 >> Accept Special Forces
.target +Sergeant Yohwa
.goto Stranglethorn Vale,38.017,3.330
.accept 207 >> Accept Kurzen's Mystery
.target +Brother Nimetz
.goto Stranglethorn Vale,37.832,3.559
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.accept 200 >> Accept Bookie Herod
.target Lieutenant Doren
step << Hunter
.goto Stranglethorn Vale,38.0,3.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Bluth|r
.vendor >> |cRXP_BUY_Restock on |r |T132382:0|t[Razor Arrows] |cRXP_BUY_if needed|r
.target Corporal Bluth
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
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
.accept 188 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.accept 192 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>Click on |cRXP_PICK_Bookie Herod's Records|r upstairs in the house
.turnin 200 >> Turn in Bookie Herod
.accept 328 >> Accept The Hidden Key
step
#completewith SpecialForces
.goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
#completewith next
.isQuestTurnedIn 215
.goto Stranglethorn Vale,49.617,7.562
>>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
.turnin 328 >> Turn in The Hidden Key
.accept 329 >> Accept The Spy Revealed!
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
.mob +Kurzen Commando
.complete 574,2 
.mob +Kurzen Headshrinker
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,49.617,7.562
>>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
.turnin 328 >> Turn in The Hidden Key
.accept 329 >> Accept The Spy Revealed!
step << Warrior
#xprate <1.99
#ah
.goto Stranglethorn Vale,44.5,9.6
>>Kill |cRXP_ENEMY_Kurzen Medicine Men|r. Loot them for their |T134413:0|t[Liferoot]
>>|cRXP_WARN_This is for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest. You may also buy them from the Auction House if you wish. If you will buy them from the Auction House, skip this step|r
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
.complete 1712,1 
.isOnQuest 1712
.mob Kurzen Medicine Man
step << Warrior
#xprate <1.99
.goto Stranglethorn Vale,44.5,9.6
>>Kill |cRXP_ENEMY_Kurzen Medicine Men|r. Loot them for their |T134413:0|t[Liferoot]
>>|cRXP_WARN_This is for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest|r
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
.complete 1712,1 
.isOnQuest 1712
.mob Kurzen Medicine Man
step
#loop
.goto Stranglethorn Vale,48.64,22.95,0,55
.goto Stranglethorn Vale,48.79,19.96,0,55
.goto Stranglethorn Vale,48.86,23.48,0,55
.goto Stranglethorn Vale,47.6,24.0,0,55
.goto Stranglethorn Vale,48.0,27.6,0,55
.goto Stranglethorn Vale,45.5,30.3,0,55
.goto Stranglethorn Vale,45.0,26.2,0,55
.goto Stranglethorn Vale,36.09,37.29,0,55
>>Kill |cRXP_ENEMY_Shadowmaw Panthers|r
>>|cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
>>|cRXP_WARN_You can find more further south-west if needed. The location is marked on your map|r
>>|cRXP_WARN_They also share spawns with|r |cRXP_ENEMY_Stranglethorn Tigresses|r|cRXP_WARN_. This means if you see an empty area with no |cRXP_ENEMY_Tigresses|r there is likely a panther there|r
.complete 192,1 
.mob Shadowmaw Panther
step
#completewith next
>>Kill |cRXP_ENEMY_Lashtail Raptors|r
>>|cRXP_ENEMY_Lashtail Raptors|r |cRXP_WARN_cast|r |T132109:0|t[Lash] |cRXP_WARN_which is a 2 second stun|r
>>|cRXP_WARN_They can also|r |T132343:0|t[Disarm] |cRXP_WARN_you for 5 seconds|r << Warrior/Rogue/Paladin
.complete 195,1 
.mob Lashtail Raptor
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
step
>>Kill |cRXP_ENEMY_Sin'Dall|r. Loot her for her |cRXP_LOOT_Paw|r
>>|cRXP_ENEMY_Sin'Dall|r |cRXP_WARN_can be on top of the Plateau, or patrolling around it|r
.goto Stranglethorn Vale,32.23,17.24
.complete 188,1 
.unitscan Sin'Dall
step << Warrior
#xprate <1.99
#completewith KurzenMystery1
.goto Stranglethorn Vale,25.38,12.55,75,0
.goto Stranglethorn Vale,25.58,10.02,75,0
.goto Stranglethorn Vale,24.00,12.34
.goto Stranglethorn Vale,25.52,9.36,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r and |cRXP_LOOT_Tusks|r
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
#xprate <1.99
.isOnQuest 1712
#completewith next
.goto Stranglethorn Vale,29.471,19.119,70 >> Travel to the Bal'lal Ruins
step << Warrior
#xprate <1.99
.isOnQuest 1712
.goto Stranglethorn Vale,29.471,19.119
>>Open the |cRXP_PICK_Moon Over the Vale|r. Loot it for |cRXP_LOOT_The First Troll Legend|r
.complete 207,1 
step << Warrior
#xprate <1.99
.isOnQuest 1712
#completewith next
.goto Stranglethorn Vale,24.719,8.905,150 >> Travel to the Ruins of Zul'Kunda
step << Warrior
#xprate <1.99
.isOnQuest 1712
.goto Stranglethorn Vale,24.719,8.905
>>Open |cRXP_PICK_The Emperor's Tomb|r. Loot it for |cRXP_LOOT_The Fourth Troll Legend|r
.complete 207,4 
step << Warrior
#xprate <1.99
#label KurzenMystery1
.isOnQuest 1712
.goto Stranglethorn Vale,22.94,12.01
>>Open the |cRXP_PICK_Fall of Gurubashi|r. Loot it for |cRXP_LOOT_The Third Troll Legend|r
.complete 207,3 
step << Warrior
#xprate <1.99
.isOnQuest 1712
.goto Stranglethorn Vale,25.38,12.55,75,0
.goto Stranglethorn Vale,25.58,10.02,75,0
.goto Stranglethorn Vale,24.00,12.34
.goto Stranglethorn Vale,25.52,9.36,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r and |cRXP_LOOT_Tusks|r
>>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
.complete 189,1 
.complete 1712,2 
.collect 4306,15,4449,1,1 
.mob Bloodscalp Scout
.mob Bloodscalp Hunter
.mob Bloodscalp Beastmaster
.mob Bloodscalp Mystic
step
#completewith KurzenMystery2
.goto Stranglethorn Vale,25.52,9.36,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r
>>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
.complete 189,1 
.collect 4306,15,4449,1,1 
.mob Bloodscalp Scout
.mob Bloodscalp Hunter
.mob Bloodscalp Beastmaster
.mob Bloodscalp Mystic
step
#optional
#completewith next
.goto Stranglethorn Vale,29.471,19.119,70 >> Travel to the Bal'lal Ruins
step
.goto Stranglethorn Vale,29.471,19.119
>>Open the |cRXP_PICK_Moon Over the Vale|r. Loot it for |cRXP_LOOT_The First Troll Legend|r
.complete 207,1 
step
#optional
#completewith next
.goto Stranglethorn Vale,24.719,8.905,150 >> Travel to the Ruins of Zul'Kunda
step
.goto Stranglethorn Vale,24.719,8.905
>>Open |cRXP_PICK_The Emperor's Tomb|r. Loot it for |cRXP_LOOT_The Fourth Troll Legend|r
.complete 207,4 
step
#label KurzenMystery2
.goto Stranglethorn Vale,22.94,12.01
>>Open the |cRXP_PICK_Fall of Gurubashi|r. Loot it for |cRXP_LOOT_The Third Troll Legend|r
.complete 207,3 
step
.goto Stranglethorn Vale,25.38,12.55,75,0
.goto Stranglethorn Vale,25.58,10.02,75,0
.goto Stranglethorn Vale,24.00,12.34
.goto Stranglethorn Vale,25.52,9.36,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r
>>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
.complete 189,1 
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
step
#completewith UnderwaterLegend
.cast 7178 >> |cRXP_WARN_Use your|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_if you have one|r
.itemcount 5996,1 
.use 5996 
.aura 7178 
step
#ah
#completewith UnderwaterLegend
.goto Stranglethorn Vale,24.9,29.1,0
.goto Stranglethorn Vale,27.6,29.2,0
.goto Stranglethorn Vale,25.4,24.1,0
.goto Stranglethorn Vale,27.5,24.2,0
.goto Stranglethorn Vale,27.23,25.48,0
.goto Stranglethorn Vale,26.40,27.16,0
.goto Stranglethorn Vale,26.51,29.47,0
.goto Stranglethorn Vale,25.96,29.43,0
.goto Stranglethorn Vale,25.67,29.79,0
.goto Stranglethorn Vale,24.56,30.04,0
.goto Stranglethorn Vale,24.06,28.66,0
.goto Stranglethorn Vale,25.32,27.51,0
>>Open the |cRXP_PICK_Giant Clams|r. Loot them for |cRXP_LOOT_Blue Pearls|r. You may also buy these from the Auction House
>>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
.use 5996 
.collect 4611,9,705,1 
step
#ssf
#completewith UnderwaterLegend
.goto Stranglethorn Vale,24.9,29.1,0
.goto Stranglethorn Vale,27.6,29.2,0
.goto Stranglethorn Vale,25.4,24.1,0
.goto Stranglethorn Vale,27.5,24.2,0
.goto Stranglethorn Vale,27.23,25.48,0
.goto Stranglethorn Vale,26.40,27.16,0
.goto Stranglethorn Vale,26.51,29.47,0
.goto Stranglethorn Vale,25.96,29.43,0
.goto Stranglethorn Vale,25.67,29.79,0
.goto Stranglethorn Vale,24.56,30.04,0
.goto Stranglethorn Vale,24.06,28.66,0
.goto Stranglethorn Vale,25.32,27.51,0
>>Open the |cRXP_PICK_Giant Clams|r. Loot them for |cRXP_LOOT_Blue Pearls|r
>>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
.use 5996 
.collect 4611,9,705,1 
step << Hunter
#completewith UnderwaterLegend
#era/som
.goto Stranglethorn Vale,24.42,24.46,0
>>Kill |cRXP_ENEMY_Saltscale Murlocs|r. Loot them for their |cRXP_LOOT_Encrusted Tail Fins|r
>>|cRXP_WARN_Only engage in combat with 1 |cRXP_ENEMY_Murloc|r at a time. Try to avoid |cRXP_ENEMY_Saltscale Oracles|r, |cRXP_ENEMY_Saltscale Foragers|r and|r |cRXP_ENEMY_Saltscale Tide Lords|r |cRXP_WARN_and prioritize killing|r |cRXP_ENEMY_Saltscale Hunters|r
>>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
.use 5996 
.complete 1107,1 
.mob Saltscale Forager
.mob Saltscale Warrior
.mob Saltscale Hunter
.mob Saltscale Oracle
.isOnQuest 1107
step
#label UnderwaterLegend
.goto Stranglethorn Vale,24.765,22.871
>>Open |cRXP_PICK_Gri'lek the Wanderer|r underwater. Loot it for |cRXP_LOOT_The Second Troll Legend|r
.complete 207,2 
step << Hunter
#completewith next
#era/som
.goto Stranglethorn Vale,24.42,24.46,0
>>Kill |cRXP_ENEMY_Saltscale Murlocs|r. Loot them for their |cRXP_LOOT_Encrusted Tail Fins|r
>>|cRXP_WARN_Only engage in combat with 1 |cRXP_ENEMY_Murloc|r at a time. Try to avoid |cRXP_ENEMY_Saltscale Oracles|r, |cRXP_ENEMY_Saltscale Foragers|r and|r |cRXP_ENEMY_Saltscale Tide Lords|r |cRXP_WARN_and prioritize killing|r |cRXP_ENEMY_Saltscale Hunters|r`
>>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
.use 5996 
.complete 1107,1 
.mob Saltscale Forager
.mob Saltscale Warrior
.mob Saltscale Hunter
.mob Saltscale Oracle
.isOnQuest 1107
step
#ah
.goto Stranglethorn Vale,24.9,29.1,90,0
.goto Stranglethorn Vale,27.6,29.2,90,0
.goto Stranglethorn Vale,25.4,24.1,90,0
.goto Stranglethorn Vale,27.5,24.2
>>Open the |cRXP_PICK_Giant Clams|r. Loot them for |cRXP_LOOT_Blue Pearls|r. You may also buy these from the Auction House
>>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
.use 5996 
.collect 4611,9,705,1 
step
#ssf
.goto Stranglethorn Vale,24.9,29.1,90,0
.goto Stranglethorn Vale,27.6,29.2,90,0
.goto Stranglethorn Vale,25.4,24.1,90,0
.goto Stranglethorn Vale,27.5,24.2
>>Open the |cRXP_PICK_Giant Clams|r. Loot them for |cRXP_LOOT_Blue Pearls|r
>>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
.use 5996 
.collect 4611,9,705,1 
step << Hunter
#era/som
.goto Stranglethorn Vale,24.42,24.46,80,0
.goto Stranglethorn Vale,26.6,26.6,80,0
.goto Stranglethorn Vale,24.6,27.2,80,0
.goto Stranglethorn Vale,24.42,24.46
>>Kill |cRXP_ENEMY_Saltscale Murlocs|r. Loot them for their |cRXP_LOOT_Encrusted Tail Fins|r
>>|cRXP_WARN_Only engage in combat with 1 |cRXP_ENEMY_Murloc|r at a time. Try to avoid |cRXP_ENEMY_Saltscale Oracles|r and|r |cRXP_ENEMY_Saltscale Tide Lords|r
>>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
.use 5996 
.complete 1107,1 
.mob Saltscale Forager
.mob Saltscale Warrior
.mob Saltscale Hunter
.mob Saltscale Oracle
.isOnQuest 1107
step
#som
.goto Stranglethorn Vale,25.52,9.36
.xp 38-26000 >>Grind until you are 26k xp away from level 38
step
#xprate <1.2
#optional
.goto Stranglethorn Vale,25.52,9.36
.xp 37+53000 >>Grind until you are 53000/76100 xp into level 37
.isQuestComplete 329 
step
#xprate <1.2
#optional
.goto Stranglethorn Vale,25.52,9.36
.xp 37+57500 >>Grind until you are 57500/76100 xp into level 37
.isQuestAvailable 215 
step
#softcore
#completewith next
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
#softcore
#completewith next
.goto Stranglethorn Vale,38.6,4.4,50 >> Travel to the Rebel Camp
step
#softcore
.goto Stranglethorn Vale,37.832,3.559
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.turnin 207 >> Turn in Kurzen's Mystery
.accept 205 >> Accept Troll Witchery
.target Brother Nimetz
step
#softcore
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
step << Hunter
.goto Stranglethorn Vale,38.0,3.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Bluth|r
.vendor >> |cRXP_BUY_Restock on |r |T132382:0|t[Razor Arrows] |cRXP_BUY_if needed|r
.target Corporal Bluth
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
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 195 >> Turn in Raptor Mastery
.accept 196 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
.turnin 188 >> Turn in Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.turnin 192 >> Turn in Panther Mastery
.accept 193 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
step
#hardcore
#completewith next
+Travel to the Rebel Camp
step
#hardcore
.goto Stranglethorn Vale,37.832,3.559
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.turnin 207 >> Turn in Kurzen's Mystery
.accept 205 >> Accept Troll Witchery
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
step
.isQuestTurnedIn 1114
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
.turnin 189 >> Turn in Bloodscalp Ears
.target +Kebok
.goto Stranglethorn Vale,27.000,77.124
.accept 1116 >> Accept Dream Dust in the Swamp
.target +Krazek
.goto Stranglethorn Vale,26.943,77.207
step
.goto Stranglethorn Vale,27.000,77.124
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r up stairs on the top floor
.turnin 189 >>Turn in Bloodscalp Ears
.target Kebok
step
#completewith end
+Keep the |T133711:0|t[|cRXP_LOOT_Goblin Fishing Poles|r]. They are useful for splitpulling mobs
.link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Click here to watch a video about splitpulling (useful to learn)
step
#label BBTurnins
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 601 >> Turn in Water Elementals
.accept 602 >> Accept Magical Analysis
.target Baron Revilgaz
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 577 >> Turn in Some Assembly Required
.target Drizzlik
step
.xp 38 >> Make sure you are level 38 before starting the next segment
step << !Mage
#label end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind>> Fly to Stormwind
.target Gyll
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
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
]]);
