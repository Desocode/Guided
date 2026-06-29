RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 40-50
#season 0,1
#classic
#tbc
#mop
<< Alliance !Warlock
#name 43-44 Tanaris
#somname 44-45 Tanaris
#next 44-48 Feralas
step
#label FlyTanaris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.goto The Barrens,63.084,37.163
.fly Theramore>> Fly to Theramore
.target Bragok
step
.goto Dustwallow Marsh,68.836,53.225,40,0
.goto Dustwallow Marsh,67.716,51.708
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Groy|r
>>|cRXP_FRIENDLY_Privateer Groy|r |cRXP_WARN_patrols through Theramore Isle|r
.turnin 623 >> Turn in Akiris by the Bundle
.target Privateer Groy
step << Warrior
.goto Dustwallow Marsh,67.875,48.409
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Evencane|r up stairs in the Keep
.trainer >> Train your class spells
.target Captain Evencane
step << Paladin
.goto Dustwallow Marsh,67.396,47.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Karman|r
.trainer >> Train your class spells
.target Brother Karman
step
.skill firstaid,<225,1
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.accept 6624 >> Accept Triage
.target Doctor Gustaf VanHowzen
step
.isOnQuest 6624
.goto Dustwallow Marsh,67.756,48.968
.use 16991 >> |cRXP_WARN_Channel the|r |T133682:0|t[Triage Bandage] |cRXP_WARN_on the |cRXP_FRIENDLY_Alliance Soldiers|r. Prioritize |cRXP_FRIENDLY_Critically Injured Soldiers|r first|r
.complete 6624,1 
.target Critically Injured Alliance Soldier
.target Badly Injured Alliance Soldier
.target Injured Alliance Soldier
step
.isQuestComplete 6624
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.turnin 6624 >> Turn in Triage
.target Doctor Gustaf VanHowzen
step
.isQuestTurnedIn 6624
.destroy 16991 >> Delete the |T133682:0|t[Triage Bandage]. You no longer need it
step
.isQuestComplete 1258
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1258 >> Turn in ... and Bugs
.target Morgan Stern
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Janene|r
.goto Dustwallow Marsh,66.587,45.223
.home >> Set your Hearthstone to Theramore
.target Innkeeper Janene
step
#completewith next
.goto Dustwallow Marsh,54.95,50.70,25 >> Swim to the hill west
step
.isOnQuest 1187
.goto Dustwallow Marsh,54.071,56.490
>>Open the |cRXP_PICK_Gizmorium Shipping Crate|r. Loot it for the |cRXP_LOOT_Seaforium Booster|r
.complete 1187,1 
step
.goto Dustwallow Marsh,31.098,66.145
>>Click the |cRXP_PICK_Musty Scroll|r on the rock
.turnin 625 >> Turn in Cortello's Riddle
.accept 626 >> Accept Cortello's Riddle
.isQuestTurnedIn 624
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
step << Mage
.goto Ironforge,31.33,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginny Longberry|r
.vendor >> |cRXP_BUY_Buy|r |T134419:0|t[Rune of Teleportations] |cRXP_BUY_if needed|r
.collect 17031,10 
.target Ginny Longberry
step
#completewith next
.hs >> Hearth to Theramore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.isOnQuest 626
step
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Tanaris>> Fly to Tanaris
.target Baldruc
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.accept 1690 >> Accept Wastewander Justice
.target +Chief Engineer Bilgewhizzle
.goto Tanaris,52.462,28.514
.accept 1707 >> Accept Water Pouch Bounty
.target +Spigot Operator Luglunket
.goto Tanaris,52.486,28.445
step << Hunter
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laziphus|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Starving Blisterpaw|r shortly
.target Laziphus
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 3022 >> Accept Handle With Care
.target Curgle Cranklehop
.dungeon !ZF
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2864 >> Turn in Tran'rek
.target Tran'rek
step
.goto Tanaris,50.960,27.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shreev|r
.turnin 1188 >> Turn in Safety First
.accept 1189 >> Accept Safety First
.target Shreev
.isOnQuest 1188
step << Hunter
#completewith st2
.goto Tanaris,47.70,27.04,0
.goto Tanaris,47.70,27.04,50,0
.goto Tanaris,53.45,24.29
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Starving Blisterpaw|r to tame it|r 
.train 23111 >>|cRXP_WARN_Attack mobs with it to learn. Do this as you run through Shimmering Flats|r |T132120:0|t[Dash (Rank 2)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Starving Blisterpaw
step
#completewith NFF
.goto Thousand Needles,78.064,77.126
.zone Thousand Needles >> Travel to The Shimmering Flats
step
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.turnin 1137 >> Turn in News for Fizzle
.target Fizzle Brassbolts
.isOnQuest 1137
step
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.accept 2770 >> Accept Gahz'rilla
.target Wizzle Brassbolts
.dungeon ZF
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
>>|cRXP_WARN_This is a timed quest. If it has timed out already, abandon it instead|r
.turnin 1119 >> Turn in Zanzil's Mixture and a Fool's Stout
.timer 13,Kravel Koalbeard RP
.isQuestTurnedIn 1118
.target Kravel Koalbeard
step
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1189 >> Turn in Safety First
.isOnQuest 1189
.target Razzeric
step
#xprate >1.99
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.target Razzeric
.turnin 1187 >> Turn in Razzeric's Tweaking
.isQuestComplete 1187
step
#xprate >1.99
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.target Razzeric
.accept 1188 >> Accept Safety First
.isQuestTurnedIn 1187
step
#label NFF
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.accept 1190 >> Accept Keeping Pace
.target Pozzik
.isQuestTurnedIn 1137
step
#completewith next
.goto Thousand Needles,79.809,77.028
.target Zamek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamek|r create a diversion
.turnin 1191 >> Turn in Zamek's Distraction
.timer 30,Zamek's Distraction RP
.isQuestTurnedIn 1137
step
.goto Thousand Needles,77.208,77.386
>>Click |cRXP_PICK_Rizzle's Unguarded Plans|r on the ground
.turnin 1190 >> Turn in Keeping Pace
.accept 1194 >> Accept Rizzle's Schematics
.isQuestTurnedIn 1137
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1120 >> Accept Get the Gnomes Drunk
.isQuestTurnedIn 1118
.target Kravel Koalbeard
step
.goto Thousand Needles,77.563,76.941
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnome Pit Boss|r
.turnin 1120 >> Turn in Get the Gnomes Drunk
.isQuestTurnedIn 1118
.target Gnome Pit Boss
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1122 >> Accept Report Back to Fizzlebub
.isQuestTurnedIn 1118
.target Kravel Koalbeard
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1194 >> Turn in Rizzle's Schematics
.target Pozzik
.isQuestTurnedIn 1137
step
.destroy 5866 >> Delete the |T134575:0|t[Sample of Indurium Ore] you do not need it
step
#completewith PortQ
.goto Tanaris,50.50,18.52
.zone Tanaris >> Travel to Gadgetzan
step
#xprate >1.99
.goto Tanaris,50.960,27.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shreev|r
.turnin -1188 >> Turn in Safety First
step << Hunter
#label st2
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laziphus|r
.stable >> Withdraw your main pet from the stable
.target Laziphus
step
#completewith Tanaris1end
>>Kill |cRXP_ENEMY_Rocs|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>|cRXP_WARN_Don't go out of your way to finish this|r
.complete 1452,1 
.isOnQuest 1452
.mob Roc
step
#completewith PortQ
>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
>>|cRXP_WARN_Kill them en-route to Steamwheedle Port. Don't complete this immediately|r
.goto Tanaris,60.4,24.6,0
.goto Tanaris,63.6,31.0,0
.complete 1690,1 
.mob +Wastewander Bandit
.complete 1690,2 
.mob +Wastewander Thief
.complete 1707,1 
.mob +Wastewander Bandit
.mob +Wastewander Thief
step
.goto Tanaris,66.560,22.265
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
.accept 8365 >> Accept Pirate Hats Ahoy!
.target Haughty Modiste
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.accept 3520 >> Accept Screecher Spirits
.target Yeh'kinya
step
#label PortQ
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.accept 8366 >> Accept Southsea Shakedown
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.058,23.891
.turnin 2872 >> Turn in Stoley's Debt
.accept 2873 >> Accept Stoley's Shipment
.target +Stoley
.goto Tanaris,67.109,23.978
step
#label WastewanderEnd
.goto Tanaris,60.14,23.42,0
.goto Tanaris,63.85,29.26,50,0
.goto Tanaris,63.63,31.66,50,0
.goto Tanaris,63.27,33.57,50,0
.goto Tanaris,62.77,30.20,50,0
.goto Tanaris,63.93,31.60
>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
.complete 1690,1 
.mob +Wastewander Bandit
.complete 1690,2 
.mob +Wastewander Thief
.complete 1707,1 
.mob +Wastewander Bandit
.mob +Wastewander Thief
step << Hunter
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.accept 3161 >> Accept Gahz'ridian
.target Marvon Rivetseeker
step << Hunter
#completewith next
.itemStat 1,QUALITY,>1
.cast 11992 >> Equip the |T133151:0|t[Gahz'ridian Detector]
.use 9978
.isOnQuest 3161
step << Hunter
.goto Tanaris,41.04,71.69,50,0
.goto Tanaris,39.66,73.51,70,0
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
step << Hunter
#completewith next
.itemStat 1,QUALITY,1
.cast 11992 >> Equip your normal |T133127:0|t[Helmet]
.isOnQuest 3161
step << Hunter
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3161 >> Turn in Gahz'ridian
.target Marvon Rivetseeker
step
#season 0
#label Tanaris1end
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 5807,6257 >> Deposit the following items into your bank:
>>|T133471:0|t[Fool's Stout Report] 
>>|T133707:0|t[Roc Gizzard] (If you have any) 
.target Gimblethorn
step
#label end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.turnin 1690 >> Turn in Wastewander Justice
.target +Chief Engineer Bilgewhizzle
.goto Tanaris,52.462,28.514
.turnin 1707 >> Turn in Water Pouch Bounty
.target +Spigot Operator Luglunket
.goto Tanaris,52.486,28.445
step
.dungeon ZF
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.accept 3042 >> Accept Troll Temper
.target Trenton Lighthammer
step
.dungeon ZF
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 2768 >> Accept Divino-matic Rod
.target Chief Engineer Bilgewhizzle
step
.dungeon ZF
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 2865 >> Accept Scarab Shells
.target Tran'rek
step
.dungeon ZF
.goto Tanaris,73.37,47.14
.goto Tanaris,38.731,19.839
.subzone 978 >> You will now run Zul'Farrak. Grind on |cRXP_ENEMY_Pirates|r while looking for a ZF group
step
.dungeon ZF
.goto Tanaris,38.91,20.78,40,0
.goto Tanaris,38.731,19.839
.subzone 978,2 >> Enter Zul'Farrak
step
.dungeon ZF
#completewith Gahzrilla
>>Kill |cRXP_ENEMY_Trolls|r. Loot them for their |cRXP_LOOT_Troll Temper|r
.complete 3042,1 
.isOnQuest 3042
step
.dungeon ZF
#completewith next
>>Kill |cRXP_ENEMY_Scarabs|r. Loot them for their |cRXP_LOOT_Uncracked Scarab Shell|r
.complete 2865,1 
.isOnQuest 2865
step 
.dungeon ZF
#optional
>>Kill |cRXP_ENEMY_Theka the Martyr|r. Loot him for the |cRXP_LOOT_First Mosh'aru Tablet|r
.complete 3527,1 
.mob Theka the Martyr
.isOnQuest 3527
step
.dungeon ZF
>>Kill |cRXP_ENEMY_Scarabs|r. Loot them for their |cRXP_LOOT_Uncracked Scarab Shell|r
.complete 2865,1 
.isOnQuest 2865
step
.dungeon ZF
#completewith NekrumMedallion
+Ascend the Pyramid
>>Kill the |cRXP_ENEMY_Sandfury Executioner|r. Loot him for the |cRXP_LOOT_Executioner's Key|r
>>|cRXP_WARN_Anyone in the party may loot the|r |cRXP_LOOT_Key|r
>>|cRXP_WARN_Use the|r |cRXP_LOOT_Executioner's Key|r |cRXP_WARN_on one of the |cRXP_PICK_Troll Cages|r to free |cRXP_FRIENDLY_Sergeant Bly|r and his band|r
.collect 8444,1 
.disablecheckbox
.isOnQuest 2991,2768
.mob Sandfury Executioner
step
.dungeon ZF
>>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
>>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Loot him for |cRXP_LOOT_Nekrum's Medallion|r
>>After you kill |cRXP_ENEMY_Nekrum Gutchewer|r, eat and drink then talk to |cRXP_FRIENDLY_Sergeant Bly|r to fight him
>>Kill |cRXP_ENEMY_Sergeant Bly|r. Loot him for the |cRXP_LOOT_Divino-matic Rod|r
.complete 2991,1 
.complete 2768,1 
.isOnQuest 2991
.isOnQuest 2768
.skipgossip
step 
.dungeon ZF
>>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
>>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Loot him for |cRXP_LOOT_Nekrum's Medallion|r
.complete 2991,1 
.isOnQuest 2991
.skipgossip
step
.dungeon ZF
#label NekrumMedallion
>>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
>>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Eat and drink then talk to |cRXP_FRIENDLY_Sergeant Bly|r to fight him
>>Kill |cRXP_ENEMY_Sergeant Bly|r. Loot him for the |cRXP_LOOT_Divino-matic Rod|r
.complete 2768,1 
.isOnQuest 2768
.skipgossip
step 
.dungeon ZF
#optional
>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r and the |cRXP_LOOT_Second Mosh'aru Tablet|r
.complete 2846,1 
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 2846
.isOnQuest 3527
step 
.dungeon ZF
#optional
>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r
.complete 2846,1 
.mob Hydromancer Velratha
.isOnQuest 2846
step 
.dungeon ZF
#optional
>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Second Mosh'aru Tablet|r
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 3527
step
.dungeon ZF
#label Gahzrilla
>>|cRXP_WARN_Use the|r |T133056:0|t[Mallet of Zul'Farrak] |cRXP_WARN_on the |cRXP_PICK_Gong of Zul'Farrak|r to summon|r |cRXP_ENEMY_Gahz'rilla|r
>>Kill |cRXP_ENEMY_Gahz'rilla|r. Loot him for |cRXP_LOOT_Gahz'rilla's Electrified Scale|r
>>|cRXP_WARN_If no one in your party has the|r |T133056:0|t[Mallet of Zul'Farrak] |cRXP_WARN_you will not be able to summon|r |cRXP_ENEMY_Gahz'rilla|r
.complete 2770,1 
.mob Gahz'rilla
.isOnQuest 2770
step
.dungeon ZF
>>Kill |cRXP_ENEMY_Trolls|r. Loot them for their |cRXP_LOOT_Troll Temper|r
.complete 3042,1 
.isOnQuest 3042
step
.dungeon ZF
#completewith ZFTurnIn
.subzone 976 >> Travel to Gadgetzan
step
.dungeon ZF
.isQuestComplete 3042
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.turnin 3042 >> Turn in Troll Temper
.target Trenton Lighthammer
step
.dungeon ZF
.isQuestComplete 2768
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 2768 >> Turn in Divino-matic Rod
.target Chief Engineer Bilgewhizzle
step
.dungeon ZF
.isQuestComplete 2865
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2865 >> Turn in Scarab Shells
.target Tran'rek
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 3022 >> Accept Handle With Care
.target Curgle Cranklehop
.dungeon ZF
step 
.dungeon ZF
#optional
.isQuestComplete 3527
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3527 >> Turn in The Prophecy of Mosh'aru
.target Yeh'kinya
step
.dungeon ZF
#completewith ZFTurnIn
.goto Thousand Needles,77.782,77.263
.subzone 2240 >> Travel to the Mirage Raceway
step 
.dungeon ZF
.isQuestComplete 2770
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.turnin 2770 >> Turn in Gahz'rilla
.target Wizzle Brassbolts
step
.dungeon ZF
#optional
.abandon 2770 >> Abandon Gahz'rilla
]]);
