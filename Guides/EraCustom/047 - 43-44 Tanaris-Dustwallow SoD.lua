RXPGuides.RegisterGuide([[
#version 23
#season 2
#group RestedXP Alliance 40-50
#classic
#tbc
#mop
<< Alliance Warlock
#name 43-44 Tanaris/Dustwallow SoD
#name 43-44 Tanaris/Dustwallow
#next 44-46 Feralas SoD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.goto The Barrens,63.084,37.163
.fly Theramore>> Fly to Theramore
.target Bragok
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
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Tanaris>> Fly to Tanaris
.target Baldruc
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.accept 1690 >> Accept Wastewander Justice
.goto Tanaris,52.462,28.514
.accept 1707 >> Accept Water Pouch Bounty
.goto Tanaris,52.486,28.445
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 3022 >> Accept Handle With Care
.target Curgle Cranklehop
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
step
#completewith PortQ
>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
>>|cRXP_WARN_Kill them en-route to Steamwheedle Port. Don't complete this immediately|r
.goto Tanaris,60.4,24.6,0
.goto Tanaris,63.6,31.0,0
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
.mob Wastewander Bandit
.mob Wastewander Thief
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
.goto Tanaris,67.058,23.891
.turnin 2872 >> Turn in Stoley's Debt
.accept 2873 >> Accept Stoley's Shipment
.goto Tanaris,67.109,23.978
.target Security Chief Bilgewhizzle
.target Stoley
step
.goto Tanaris,60.14,23.42,0
.goto Tanaris,63.85,29.26,50,0
.goto Tanaris,63.63,31.66,50,0
.goto Tanaris,63.27,33.57,50,0
.goto Tanaris,62.77,30.20,50,0
.goto Tanaris,63.93,31.60
>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
.mob Wastewander Bandit
.mob Wastewander Thief
step
#label tend
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.turnin 1690 >> Turn in Wastewander Justice
.goto Tanaris,52.462,28.514
.turnin 1707 >> Turn in Water Pouch Bounty
.goto Tanaris,52.486,28.445
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
step
#completewith NFF
.goto Thousand Needles,78.064,77.126
.zone Thousand Needles >> Travel to The Shimmering Flats
step
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.turnin 1137 >> Turn in News for Fizzle
.target Fizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1119 >> Turn in Zanzil's Mixture and a Fool's Stout
.timer 13,Kravel Koalbeard RP
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
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1189 >> Turn in Safety First
.target Razzeric
step
#label NFF
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.accept 1190 >> Accept Keeping Pace
.target Pozzik
step
#completewith next
.goto Thousand Needles,79.809,77.028
.target Zamek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamek|r create a diversion
.turnin 1191 >> Turn in Zamek's Distraction
.timer 30,Zamek's Distraction RP
step
.goto Thousand Needles,77.208,77.386
>>Click |cRXP_PICK_Rizzle's Unguarded Plans|r on the ground
.turnin 1190 >> Turn in Keeping Pace
.accept 1194 >> Accept Rizzle's Schematics
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1194 >> Turn in Rizzle's Schematics
.target Pozzik
step
.destroy 5866 >> Delete the |T134575:0|t[Sample of Indurium Ore] you do not need it
step
.dungeon ZF
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.accept 2770 >> Accept Gahz'rilla
.target Wizzle Brassbolts
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
>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r and the |cRXP_LOOT_Second Mosh'aru Tablet|r
.complete 2846,1 
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 2846
.isOnQuest 3527
step 
.dungeon ZF
>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r
.complete 2846,1 
.mob Hydromancer Velratha
.isOnQuest 2846
step 
.dungeon ZF
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
.dungeon ZF
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
step
.hs >> Hearth to Theramore
>>|cRXP_BUY_Buy food/water if needed|r
step << Warlock
#completewith next
.goto Dustwallow Marsh,55.26,50.54,45 >> Swim west towards |cRXP_FRIENDLY_Tabetha|r
.isQuestComplete 1799
step << Warlock
#completewith next
+|cRXP_WARN_The follow up quest will have |cRXP_FRIENDLY_Tabetha|r summon |cRXP_ENEMY_Demon of the Orb|r which is a level 40 Elite that you need to kill. This quest is simple so long as you don't agro additional mobs|r
>>|cRXP_WARN_Kill any mobs around |cRXP_FRIENDLY_Tabetha's|r farm before accepting the next quest|r
.isQuestComplete 1799
step << Warlock
.goto Dustwallow Marsh,46.021,57.096
.isOnQuest 1799
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
.turnin 1799 >> Turn in Fragments of the Orb of Orahil
.accept 4961 >> Accept Cleansing of the Orb of Orahil
.target Tabetha
step << Warlock
.goto Dustwallow Marsh,45.87,56.74
>>Kill |cRXP_ENEMY_Demon of the Orb|r
>>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_continously on |cRXP_ENEMY_Demon of the Orb|r until your DoTs kill it|r
.complete 4961,1 
.mob Demon of the Orb
.isOnQuest 4961
step << Warlock
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
.turnin 4961 >> Turn in Cleansing of the Orb of Orahil
.accept 4976 >> Accept Returning the Cleansed Orb
.target Tabetha
.isQuestComplete 4961
step
#softcore
#completewith next
.deathskip >> Die and respawn at the Spirit Healer in Theramore
.target Spirit Healer
step << skip 
#hardcore
.isOnQuest 626
#completewith next
.goto Dustwallow Marsh,30.970,65.965,-1
.goto 1414,53.26,71.18,-1
+|cRXP_WARN_Logout skip on the Mushroom to teleport to the RFD entrance, then zone into RFD|r
.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Click here to Copy + Paste this macro once you're inside RFD to ghetto Hearth to Theramore Isle|r
.link https://youtu.be/WClMOzjgOgc >> |cRXP_WARN_Click here for video reference|r
>>If you are unable to do this, run back to Theramore Isle
step
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Ratchet>> Fly to Ratchet
.target Baldruc
step << Warlock
.goto The Barrens,62.509,35.449
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.turnin -4962 >> Turn in Shard of a Felhound
.turnin -4976 >> Turn in Returning the Cleansed Orb
step << Warlock
.goto The Barrens,62.509,35.449
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
>>|cRXP_WARN_Wait out the RP|r
.accept 4964 >> Accept The Completed Orb of Dar'Orahil
.turnin 4964 >> Turn in The Completed Orb of Dar'Orahil
.isQuestTurnedIn 4962
.isQuestTurnedIn 4976
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankdeposit 5807,6257 >> Deposit the following items into your bank:
>>|T133471:0|t[Fool's Stout Report] 
>>|T133707:0|t[Roc Gizzard] (If you have any) 
.target Fuzruckle
.target Zikkel
]]);
