RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 38-39 Swamp of Sorrows
#next 39-40 Alterac/Arathi
step << !Mage
#completewith FlyDW
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 4306,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751,5796,4611,3950,5596 >> Deposit the following items into your bank:
>>All |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
>>|T132905:0|t[Silk Cloth] - Ensure you have 15 for later 
>>|T134305:0|t[Encrusted Tail Fins] 
>>|T134564:0|t[Blue Pearls] 
>>|T133633:0|t[Bag of Water Elemental Bracers] 
>>|T134797:0|t[Exlir of Water Breathing] << !Warlock 
.target Newton Burnside
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>Go into The Slaughtered Lamb and go downstairs
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Spackle Thornberry
step << !Warrior !Rogue !Druid !Hunter 
.goto Stormwind City,41.497,89.385
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angus Stern|r
.accept 1260 >>Accept Morgan Stern
.target Angus Stern
.solo
step
.goto Stormwind City,40.71,62.80,25,0
.goto Stormwind City,41.521,64.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazen Mac'Nadir|r
.accept 1363 >>Accept Mazen's Behest
.target Mazen Mac'Nadir
step
.goto Stormwind City,40.996,63.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Dellis|r up stairs
.turnin 1363 >>Turn in Mazen's Behest
.accept 1364 >>Accept Mazen's Behest
.target Acolyte Dellis
.maxlevel 40
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
.accept 1448 >>Accept In Search of The Temple
.target Brohann Caskbelly
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Hunter
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r
.trainer >> Train your pet spells
.target Karrina Mekenda
step << Mage
#completewith FlyDW
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 4306 >> Deposit the following items into your bank:
>>|T132905:0|t[Silk Cloth] - Ensure you have 15 for later 
.target Newton Burnside
step
#label FlyDW
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.goto Stormwind City,66.277,62.137
.fly Duskwood >>Fly to Duskwood
.target Dungar Longdrink
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
>>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
.turnin 228 >>Turn in Mor'Ladim
.accept 229 >>Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_she patrols around the Darkshire main square|r
.turnin 229 >>Turn in The Daughter Who Lived
.target Watcher Ladimore
step
#label TravelSoS
#completewith SoSEntry
.goto Duskwood,89.75,41.31,0
.goto Swamp of Sorrows,6.59,60.19
.zone Swamp of Sorrows >>Travel to Swamp of Sorrows
step
#completewith end
#requires TravelSoS
+While questing in Swamp of Sorrows watch out for |cRXP_ENEMY_Stonard Explorers|r they can be found on roads and in camps scattered around the zone.
>>|cRXP_WARN_While not dangerous on their own any hostile action towards them WILL PVP FLAG YOU|r
.unitscan Stonard Explorer
step
#completewith next
.isQuestTurnedIn 1115
.goto Swamp of Sorrows,13.96,61.67,100,0
.goto Swamp of Sorrows,13.96,61.67,0
>>Kill |cRXP_ENEMY_Adolescent Whelps|r and |cRXP_ENEMY_Dreaming Whelps|r. Loot them for their |cRXP_LOOT_Specks of Dream Dust|r
>>|cRXP_WARN_You won't find enough |cRXP_ENEMY_Whelps|r to finish this quest in 1 pass, so continue with other quests|r
.complete 1116,1 
.mob Adolescent Whelp
.mob Dreaming Whelp
step
#label SoSEntry
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.accept 1396 >>Accept Encroaching Wildlife
.target Watcher Biggs
step
.isOnQuest 1364
#completewith NoboruTurnin
>>Kill |cRXP_ENEMY_Swampwalkers|r, |cRXP_ENEMY_Swampwalker Elders|r, |cRXP_ENEMY_Tangled Horrors|r and |cRXP_ENEMY_Mire Lords|r. Loot them for |cRXP_LOOT_Khadgar's Essays|r
>>|cRXP_WARN_The drop rate of this item is very low. Don't go out of your way to complete this quest|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
.maxlevel 40
step
#completewith Dreamdust2
.goto Swamp of Sorrows,28.20,43.83,0
>>Kill |cRXP_ENEMY_Young Sawtooth Crocolisks|r, |cRXP_ENEMY_Sorrow Spinners|r and |cRXP_ENEMY_Swamp Jaguars|r
.complete 1396,1 
.mob +Young Sawtooth Crocolisk
.complete 1396,2 
.mob +Sorrow Spinner
.complete 1396,3 
.mob +Swamp Jaguar
step
#loop
.goto Swamp of Sorrows,32.81,38.68,70,0
.goto Swamp of Sorrows,34.88,45.88,70,0
.goto Swamp of Sorrows,38.34,38.75,70,0
.goto Swamp of Sorrows,40.53,32.83,70,0
.goto Swamp of Sorrows,45.18,36.70,70,0
.goto Swamp of Sorrows,50.58,39.02,70,0
.goto Swamp of Sorrows,55.50,36.75,70,0
.line Swamp of Sorrows,55.70,34.14,55.92,35.96,55.57,37.64,53.27,38.99,51.27,38.82,48.70,38.56,47.29,38.39,46.52,38.69,45.67,36.55,44.34,34.66,42.27,32.14,40.86,32.36,40.23,34.79,38.81,35.80,38.08,41.22,37.91,43.29,36.75,46.43,33.50,44.03,33.37,40.43,32.61,38.67,32.16,37.15,32.26,36.24,33.44,40.35,33.46,43.98,36.65,46.42,37.85,43.51,38.10,40.89,38.48,37.66,38.84,35.82,40.41,34.13,40.87,32.43,42.18,32.07,44.92,35.47,45.66,36.52,46.35,38.74,47.56,38.35,52.43,39.04,53.25,39.13,55.39,37.60
>>Kill |cRXP_ENEMY_Noboru the Cudgel|r. Loot him for |T133485:0|t[|cRXP_LOOT_Noboru's Cudgel|r]
.use 6196 >>|cRXP_WARN_Use |T133485:0|t[|cRXP_LOOT_Noboru's Cudgel|r] to start the quest|r
>>|cRXP_ENEMY_Noboru the Cudgel|r |cRXP_WARN_patrols a large section of Swamp of Sorrows. The patrol path is marked on your map. He spawns where the patrol route starts on the eastern point|r
.collect 6196,1,1392,1 
.accept 1392 >>Accept Noboru the Cudgel
.unitscan Noboru the Cudgel
step
#label NoboruTurnin
.goto Swamp of Sorrows,25.983,31.412
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
.turnin 1392 >>Turn in Noboru the Cudgel
.accept 1389 >>Accept Draenethyst Crystals
.target Magtoor
step
.isOnQuest 1364
#completewith Dreamdust2
.goto Swamp of Sorrows,15.8,38.5,0
.goto Swamp of Sorrows,12.4,36.5,0
.goto Swamp of Sorrows,12.9,31.9,0
.goto Swamp of Sorrows,8.7,32.4,0
>>Kill |cRXP_ENEMY_Swampwalkers|r, |cRXP_ENEMY_Swampwalker Elders|r, |cRXP_ENEMY_Tangled Horrors|r and |cRXP_ENEMY_Mire Lords|r. Loot them for |cRXP_LOOT_Khadgar's Essays|r
>>Grind |cRXP_ENEMY_Swampwalkers|r |cRXP_WARN_in the Misty Valley(marked on your map) to wait for|r |cRXP_ENEMY_Whelp|r |cRXP_WARN_respawns if you don't loot 10 dream dust and there is no more mobs|r
>>|cRXP_WARN_The drop rate of this item is very low. Don't go out of your way to complete this quest|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
.maxlevel 40
step
#label Dreamdust2
.goto Swamp of Sorrows,16.6,55.8,70,0
.goto Swamp of Sorrows,12.4,64.6,70,0
.goto Swamp of Sorrows,16.6,63.8,70,0
.goto Swamp of Sorrows,14.2,58.8
.goto Swamp of Sorrows,61.8,54.6,0
>>Kill all the |cRXP_ENEMY_Adolescent Whelps|r and |cRXP_ENEMY_Dreaming Whelps|r respawns. Loot them for their |cRXP_LOOT_Specks of Dream Dust|r
.complete 1116,1 
.isQuestTurnedIn 1115
.mob Adolescent Whelp
.mob Dreaming Whelp
.mob Green Wyrmkin
.mob Green Scalebane
.mob Scalebane Captain
step
>>Kill |cRXP_ENEMY_Young Sawtooth Crocolisks|r, |cRXP_ENEMY_Sorrow Spinners|r and |cRXP_ENEMY_Swamp Jaguars|r
.complete 1396,1 
.mob +Young Sawtooth Crocolisk
.goto Swamp of Sorrows,23.0,45.6,70,0
.goto Swamp of Sorrows,26.6,36.2,70,0
.goto Swamp of Sorrows,39.0,34.8,70,0
.goto Swamp of Sorrows,34.2,49.8,70,0
.goto Swamp of Sorrows,26.6,52.4,70,0
.goto Swamp of Sorrows,26.6,36.2,70,0
.goto Swamp of Sorrows,39.0,34.8,70,0
.goto Swamp of Sorrows,34.2,49.8,70,0
.goto Swamp of Sorrows,26.6,52.4
.complete 1396,2 
.mob +Sorrow Spinner
.goto Swamp of Sorrows,19.2,54.6,70,0
.goto Swamp of Sorrows,25.0,61.6,70,0
.goto Swamp of Sorrows,33.2,51.8,70,0
.goto Swamp of Sorrows,26.6,47.0,70,0
.goto Swamp of Sorrows,37.6,30.0,70,0
.goto Swamp of Sorrows,44.0,42.4,70,0
.goto Swamp of Sorrows,26.6,47.0
.complete 1396,3 
.mob +Swamp Jaguar
.goto Swamp of Sorrows,22.8,42.4,70,0
.goto Swamp of Sorrows,33.6,54.0,70,0
.goto Swamp of Sorrows,47.8,39.8,70,0
.goto Swamp of Sorrows,26.2,35.2,70,0
.goto Swamp of Sorrows,23.2,59.8,70,0
.goto Swamp of Sorrows,44.0,41.6
step
#label wildlife2
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.turnin 1396 >>Turn in Encroaching Wildlife
.accept 1421 >>Accept The Lost Caravan
.target Watcher Biggs
step
.isOnQuest 1364
#completewith end
>>Kill |cRXP_ENEMY_Swampwalkers|r, |cRXP_ENEMY_Swampwalker Elders|r, |cRXP_ENEMY_Tangled Horrors|r and |cRXP_ENEMY_Mire Lords|r. Loot them for |cRXP_LOOT_Khadgar's Essays|r
>>|cRXP_WARN_The drop rate of this item is very low. Don't go out of your way to complete this quest|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
.maxlevel 40
step
#completewith next
.goto Swamp of Sorrows,57.29,30.73,200 >> Travel to Fallow Sanctuary
step
#completewith EscortGalen
.isOnQuest 1373
.goto Swamp of Sorrows,65.036,21.976,0
.goto Swamp of Sorrows,60.537,23.175,0
>>Kill |cRXP_ENEMY_Ongeku|r. Loot him for his |cRXP_LOOT_Shard|r
>>|cRXP_ENEMY_Ongeku|r |cRXP_WARN_can be in a random location throughout Fallow Sanctuary|r
.complete 1373,1 
.unitscan Ongeku
step
#completewith OngekuShard
.isOnQuest 1389
>>Loot the |cRXP_LOOT_Draenethyst Crystals|r on the ground
.goto Swamp of Sorrows,63.26,22.35,0
.complete 1389,1 
step
.isOnQuest 1421
>>Open the |cRXP_PICK_Caravan Chest|r. Loot it for the |cRXP_LOOT_Wizards' Reagents|r
>>|cRXP_WARN_Avoid going through the middle of Fallow Sanctuary|r
.goto Swamp of Sorrows,64.468,18.313
.complete 1421,1 
step
.goto Swamp of Sorrows,65.471,18.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Goodward|r
>>|cRXP_WARN_This will start an escort quest|r
.accept 1393 >>Accept Galen's Escape
.target Galen Goodward
step
#label EscortGalen
.isOnQuest 1393
.goto Swamp of Sorrows,53.045,29.644
>>Escort |cRXP_FRIENDLY_Galen|r through Fallow Sanctuary to safety
.complete 1393,1 
.target Galen Goodward
step
#label OngekuShard
.isOnQuest 1373
.goto Swamp of Sorrows,65.036,21.976,0
.goto Swamp of Sorrows,65.036,21.976,55,0
.goto Swamp of Sorrows,60.537,23.175
>>Kill |cRXP_ENEMY_Ongeku|r. Loot him for his |cRXP_LOOT_Shard|r
>>|cRXP_ENEMY_Ongeku|r |cRXP_WARN_can be in a random location throughout Fallow Sanctuary|r
.complete 1373,1 
.unitscan Ongeku
step
.isQuestComplete 1393
.goto Swamp of Sorrows,47.806,39.760
>>Click |cRXP_PICK_Galen's Strongbox|r on the ground
.turnin 1393 >>Turn in Galen's Escape
step
.isQuestComplete 1389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
.goto Swamp of Sorrows,25.983,31.412
.turnin 1389 >>Turn in Draenethyst Crystals
.target Magtoor
step
#optional
.xp <39,1
.abandon 1389 >>Abandon Draenethyst Crystals if you haven't completed it yet. This quest is not worth doing if you are level 39 or above
step
#optional
.isOnQuest 1389
>>Loot the |cRXP_LOOT_Draenethyst Crystals|r on the ground
.goto Swamp of Sorrows,65.15,21.92,70,0
.goto Swamp of Sorrows,61.22,22.97,70,0
.goto Swamp of Sorrows,57.43,26.08,70,0
.goto Swamp of Sorrows,55.20,28.24,70,0
.goto Swamp of Sorrows,57.43,26.08
.complete 1389,1 
step
#optional
.isQuestComplete 1389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
.goto Swamp of Sorrows,25.983,31.412
.turnin 1389 >>Turn in Draenethyst Crystals
.target Magtoor
step
.isQuestComplete 1421
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.goto Swamp of Sorrows,26.74,59.82
.turnin 1421 >>Turn in The Lost Caravan
.target Watcher Biggs
step
#label end
.goto Swamp of Sorrows,67.00,47.00
>>Swim to the middle of the Pool of Tears
>>Be careful not to run too close to Stonard on your way there. Avoid fighting any of the higher level dragonkin on the way as well
.complete 1448,1 
step
.goto Swamp of Sorrows,28.20,43.83
+Grind until your Hearthstone is off cooldown
.cooldown item,6948,<0
.zoneskip Swamp of Sorrows,1
step
#completewith Bankandy1
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip Swamp of Sorrows,1
step << Rogue
.goto Stranglethorn Vale,26.817,77.149
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_FRIENDLY_Ian Strom|r up stairs
.trainer >> Train your class spells
.target Ian Strom
step
#label DreamDustintheSwamp
.isQuestComplete 1116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r up stairs
.goto Stranglethorn Vale,26.943,77.207
.turnin 1116 >>Turn in Dream Dust in the Swamp
.timer 11,Dream Dust in the Swamp RP
.target Krazek
step
.isQuestTurnedIn 1115
>>|cRXP_WARN_Wait out the RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.goto Stranglethorn Vale,26.943,77.207
.accept 1117 >>Accept Rumors for Kravel
.target Krazek
step << !Mage
#label Bankandy1
.zoneskip Stormwind City
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >>Fly to Stormwind
.target Gyll
step << Mage
#completewith next
.goto Stranglethorn Vale,27.530,77.787
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
#label SWTele << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step
#sticky
#label Bankandy1
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 6253,3518,5539,6245,3960,5796,5847,5996 >>Withdraw the following items from your bank: << !Warlock
.bankwithdraw 6253,3518,5539,6245,3960,5796,5847 >>Withdraw the following items from your bank: << Warlock
>>|T134797:0|t[Exlir of Water Breathing] << !Warlock
>>|T134940:0|t[Decrypted Letter]
>>|T133460:0|t[Letter of Commendation]
>>|T133633:0|t[Karnitol's Satchel]
>>|T133633:0|t[Bag of Water Elemental Bracers]
>>|T134305:0|t[Encrusted Tail Fins]
>>|T134302:0|t[Mirefin Head]
.target Newton Burnside
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 6065,4611,4306 >> Deposit the following items into your bank: << Hunter
.bankdeposit 6065,4306 >>Deposit the Blue Pearls in your bank << !Hunter
>>|T134564:0|t[Blue Pearls]
>>|T132905:0|t[Silk Cloth] (15)
>>|T133461:0|t[Khadgar's Essays on Dimensional Convergence] (if you have it) << Hunter
.target Newton Burnside
step << Hunter
.goto Stormwind City,50.2,57.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frederick Stover|r inside, on the upper level
>>|cRXP_BUY_Check if|r |cRXP_FRIENDLY_Frederick|r |cRXP_BUY_has a|r |T135489:0|t[|cRXP_FRIENDLY_Massive Longbow|r] |cRXP_BUY_in stock (it's a limited supply item, |cRXP_WARN_he won't always have it|r). If he has one, buy it.|r |cRXP_WARN_It is a VERY POWERFUL level 42+ weapon|r
.vendor >> |cRXP_BUY_Restock on|r |T132382:0|t[Razor Arrows] |cRXP_BUY_if needed|r
>>Skip this step if he doesn't have one
.collect 11307,1 
.target Frederick Stover
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.96
.itemcount 11307,<1 
step << Priest
#requires Bankandy1
#completewith next
.goto Stormwind City,44.21,70.03,40,0
.goto Stormwind City,42.85,65.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r
>>|cRXP_BUY_Buy a|r |T135139:0|t[Pitchwood Wand] |cRXP_BUY_from her if it's better than your current wand. Equip it at 40|r
.collect 5238,1 
.target Ardwyn Cailen
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step
.goto Stormwind City,74.010,30.231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
.accept 543 >>Accept The Perenolde Tiara
.target Count Remington Ridgewell
step
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
.turnin 1448 >>Turn in In Search of The Temple
.accept 1449 >>Accept To The Hinterlands
.target Brohann Caskbelly
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Hunter
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r
.trainer >> Train your pet spells
.target Karrina Mekenda
step << !Mage
#completewith FlyArathi
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the Tram|r
step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Teleport to Ironforge
step
#xprate <1.99
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
.turnin 1457 >> Turn in The Karnitol Shipwreck
.target Roetten Stonehammer
.isOnQuest 1457
step
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.accept 525 >> Accept Further Mysteries
.target Prospector Stormpike
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warlock
#xprate >1.99
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
.turnin 1758 >> Turn in Tome of the Cabal
.isOnQuest 1758
.target Krom Stoutarm
step
#ah
#completewith FlyArathi
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T135326:0|t[|cRXP_FRIENDLY_Moonsteel Broadsword|r] |cRXP_BUY_from the Auction House|r
>>This is for a free 3,450 XP turnin in Dustwallow Marsh later. Skip this step if you're unable to acquire one
.collect 3853,1,1203,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
.zoneskip Ironforge,1
step << !Warlock
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_from the Auction House|r
>>It is very important you try to buy one here as it will making questing coming up in Arathi Highlands soon much easier. Skip this step if you're unable to acquire one
.collect 5996,1,664,1
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_WARN_Level up your|r |T135966:0|t[First Aid] |cRXP_WARN_to 225 if possible as you're about to head to Theramore and can complete the|r |T135966:0|t[First Aid] |cRXP_WARN_quest there. If you can't reach 225 now, skip this step. You will complete it later|r
+|cRXP_BUY_Buy|r |T132892:0|t[Mageweave Cloth] |cRXP_BUY_from the Auction House if required|r
.skill firstaid,225,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << Warrior
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy the following from the Auction House. It isn't required but will save you time later when going for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r]
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
>>|T133434:0|t[Burning Charm]
>>|T133435:0|t[Thundering Charm]
>>|T133438:0|t[Cresting Charm]
.collect 4479,8,1714,1 
.collect 4480,8,1714,1 
.collect 4481,8,1714,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
.accept 1050 >> Accept Mythology of the Titans
.target Librarian Mae Paledust
step
#label FlyArathi
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Arathi >> Fly to Arathi Highlands
.target Gryth Thurden
.zoneskip Ironforge,1
]]);
