RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 50-60
#classic
#tbc
#mop
<< Horde
#name 58-59 Winterspring/Silithus I
#next 59-60 Winterspring/Silithus II
step
#completewith ChillyHorns
+Fly or Hearth to Everlook
.zoneskip Winterspring
.dungeon BRD
step
#completewith ChillyHorns
.hs >>Hearth to Everlook
.use 6948
.bindlocation 2255,1
.subzoneskip 255
.zoneskip Winterspring
.dungeon !BRD
step
#label ChillyHorns
.goto Winterspring,61.60,38.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok|r
.accept 4809 >>Accept Chillwind Horns
.target Felnok Steelspring
.isQuestTurnedIn 4808
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.accept 5056 >> Accept Shy-Rotam
.target Storm Shadowhoof
.isQuestTurnedIn 5055
.group
step
#era/som
.goto Winterspring,60.90,37.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi|r
.accept 977 >>Accept Are We There, Yeti?
.target Umi Rumplesnicker
step << Hunter
#completewith next
.goto Winterspring,60.389,37.916
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azzleby|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Winterspring Screecher|r shortly
.target Azzleby
.zoneskip Winterspring,1
step << Hunter
.goto Winterspring,57.8,26.4,70,0
.goto Winterspring,59.6,18.0
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Winterspring Screecher|r to tame it|r
.train 3666 >>|cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 8)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Winterspring Screecher
.zoneskip Winterspring,1
step << Hunter
#completewith next
.subzone 2255 >> Travel to Everlook
step << Hunter
.goto Winterspring,60.389,37.916
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulbrek Firehand|r
.stable >> Withdraw your pet
.target Azzleby
.zoneskip Winterspring,1
step
#completewith next
.subzone 2241 >> Travel to Frostsaber Rock
.isQuestTurnedIn 5055
.group
step
#completewith next
#loop
.goto Winterspring,51.64,11.34,0
.goto Winterspring,50.54,14.27,50,0
.goto Winterspring,48.52,12.15,50,0
.goto Winterspring,49.72,8.84,50,0
.goto Winterspring,48.54,7.89,50,0
.goto Winterspring,49.67,7.03,50,0
.goto Winterspring,51.94,9.31,50,0
.goto Winterspring,51.64,11.34,50,0
>>Kill |cRXP_ENEMY_Frostsabers|r. Loot them for |T133298:0|t[|cRXP_LOOT_Sacred Frostsaber Meat|r]
.collect 12733,1,5056,1 
.mob Frostsaber Pride Watcher
.mob Frostsaber Huntress
.mob Frostsaber Stalker
.mob Frostsaber Cub
.mob Frostsaber
.isQuestTurnedIn 5055
.group 0
step
.goto Winterspring,49.68,9.75
.use 12733 >>|cRXP_WARN_Place the|r |T133298:0|t[|cRXP_LOOT_Sacred Frostsaber Meat|r] |cRXP_WARN_at the stone|r
>>Kill |cRXP_ENEMY_Shy-Rotam|r (60 elite) as she appears
>>|cRXP_WARN_Be careful! She casts|r |T132111:0|t[Terrifying Roar] |cRXP_WARN_(5 second AoE fear)|r
>>|cRXP_WARN_At 50% health she will call |cRXP_ENEMY_Sian-Rotam|r (60 elite) for help|r
.complete 5056,1 
.unitscan Shy-Rotam
.isQuestTurnedIn 5055
.group 3
step
#era/som
#loop
.goto Winterspring,64.00,22.60,0
.goto Winterspring,64.00,22.60,50,0
.goto Winterspring,65.60,23.20,50,0
.goto Winterspring,67.60,22.60,50,0
.goto Winterspring,65.60,19.60,50,0
.goto Winterspring,63.60,16.20,50,0
.goto Winterspring,65.60,19.60,50,0
.goto Winterspring,64.00,20.80,50,0
>>Kill |cRXP_ENEMY_Berserk Owlbeasts|r. Loot them for a |T133298:0|t[|cRXP_LOOT_Blue-feathered Necklace|r]. Use it to accept the quest
.complete 4721,1 
.collect 12558,1,4721,1 
.accept 4882 >>Accept Guarding Secrets
.use 12558
.mob Berserk Owlbeast
step
#completewith next
>>Kill |cRXP_ENEMY_Winterfall Ursa|r, |cRXP_ENEMY_Winterfall Shamans|r and |cRXP_ENEMY_Winterfall Den Watchers|r
>>|cRXP_WARN_If there is too much competition, skip this step|r
.complete 8464,1 
.mob +Winterfall Shaman
.complete 8464,2 
.mob +Winterfall Den Watcher
.complete 8464,3 
.mob +Winterfall Ursa
step
.goto Winterspring,69.62,38.31
>>Kill |cRXP_ENEMY_High Chief Winterfall|r. Loot him for his |T133740:0|t[|cRXP_LOOT_Crudely-written Log|r]. Use it to accept the quest
>>|cRXP_WARN_Kill the|r |cRXP_ENEMY_Winterfall Shaman|r |cRXP_WARN_first and reset afterwards for safety. Use your offensive cooldowns and CC if you can; his frost shock hits hard|r
.complete 5121,1 
.collect 12842,1,5123 
.accept 5123 >>Accept The Final Piece
.use 12842
.mob Winterfall Shaman
.unitscan High Chief Winterfall
step
#loop
.goto Winterspring,67.60,34.10,0
.goto Winterspring,67.60,34.10,50,0
.goto Winterspring,66.40,34.30,50,0
.goto Winterspring,65.90,35.30,50,0
.goto Winterspring,66.60,36.30,50,0
.goto Winterspring,67.50,35.50,50,0
.goto Winterspring,68.40,35.70,50,0
.goto Winterspring,68.30,37.30,50,0
.goto Winterspring,67.50,37.90,50,0
.goto Winterspring,66.80,37.30,50,0
.goto Winterspring,65.60,37.70,50,0
.goto Winterspring,66.70,39.10,50,0
.goto Winterspring,68.00,39.40,50,0
.goto Winterspring,68.80,37.70,50,0
.goto Winterspring,68.40,35.70,50,0
>>Kill |cRXP_ENEMY_Winterfall Ursa|r, |cRXP_ENEMY_Winterfall Shamans|r and |cRXP_ENEMY_Winterfall Den Watchers|r
>>|cRXP_WARN_If there is too much competition, skip this step|r
.complete 8464,1 
.mob +Winterfall Shaman
.complete 8464,2 
.mob +Winterfall Den Watcher
.complete 8464,3 
.mob +Winterfall Ursa
step << Shaman
#season 2
#completewith next
.goto Winterspring,67.93,41.44,50 >> Enter the Yeti cave
step << Shaman
#season 2
#era/som
#completewith PristineHorns
>>Kill |cRXP_ENEMY_Ice Thistle Patriarchs|r and |cRXP_ENEMY_Ice Thistle Matriarchs|r. Loot them for their |cRXP_LOOT_Pristine Yeti Horns|r
.complete 977,1 
.mob Ice Thistle Patriarch
.mob Ice Thistle Matriarch
step << Shaman
#season 2
.goto Winterspring,69.87,37.92
>>|cRXP_WARN_Travel to the back of the Yeti cave and talk to the chained elemental|r |cRXP_FRIENDLY_Frijidar|r
>>|cRXP_WARN_He will become hostile after a few seconds. This is a level 60 elite, bring help if needed or skip this step|r
>>Kill |cRXP_ENEMY_Frijidar|r. Loot it for the |T134419:0|t[|cRXP_LOOT_Rune of the Bound Spirit|r]
.collect 225914,1
.mob Frijidar
.skipgossip
step << Shaman
#season 2
.itemcount 225914,1
.use 225914
.train 440630 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of the Bound Spirit|r] |cRXP_WARN_to learn|r |T237577:0|t[Feral Spirit]
step
#label PristineHorns
#era/som
#loop
.goto Winterspring,66.50,41.70,0
.goto Winterspring,66.50,41.70,40,0
.goto Winterspring,64.90,40.20,40,0
.goto Winterspring,65.90,43.60,40,0
.goto Winterspring,66.20,45.80,40,0
.goto Winterspring,67.60,45.60,40,0
.goto Winterspring,67.60,43.80,40,0
.goto Winterspring,67.20,43.00,40,0
.goto Winterspring,67.60,41.90,40,0
.goto Winterspring,68.40,41.50,40,0
.goto Winterspring,69.00,41.30,40,0
.goto Winterspring,69.50,40.00,40,0
.goto Winterspring,69.80,41.80,40,0
.goto Winterspring,70.10,42.00,40,0
.goto Winterspring,70.30,40.80,40,0
.goto Winterspring,71.30,40.80,40,0
.goto Winterspring,71.80,39.80,40,0
.goto Winterspring,70.50,38.30,40,0
.goto Winterspring,71.80,39.80,40,0
.goto Winterspring,71.30,40.80,40,0
.goto Winterspring,70.30,40.80,40,0
.goto Winterspring,69.50,40.00,40,0
.goto Winterspring,69.00,41.30,40,0
.goto Winterspring,68.40,41.50,40,0
>>Kill |cRXP_ENEMY_Ice Thistle Patriarchs|r and |cRXP_ENEMY_Ice Thistle Matriarchs|r. Loot them for their |cRXP_LOOT_Pristine Yeti Horns|r
.complete 977,1 
.mob Ice Thistle Patriarch
.mob Ice Thistle Matriarch
step
#era/som
#loop
.goto Winterspring,67.60,48.20,0
.goto Winterspring,67.60,48.20,60,0
.goto Winterspring,66.20,52.40,60,0
.goto Winterspring,63.60,47.20,60,0
.goto Winterspring,61.60,45.00,60,0
.goto Winterspring,58.20,45.00,60,0
.goto Winterspring,57.40,46.60,60,0
.goto Winterspring,55.40,49.00,60,0
.goto Winterspring,55.20,46.40,60,0
.goto Winterspring,48.60,45.00,60,0
.goto Winterspring,44.80,42.20,60,0
.goto Winterspring,44.00,36.00,60,0
.goto Winterspring,48.00,36.60,60,0
.goto Winterspring,49.40,34.40,60,0
.goto Winterspring,54.00,36.80,60,0
.goto Winterspring,56.60,25.60,60,0
.goto Winterspring,55.60,22.40,60,0
.goto Winterspring,58.00,19.80,60,0
.goto Winterspring,60.60,23.60,60,0
.goto Winterspring,66.40,26.80,60,0
.goto Winterspring,65.60,32.60,60,0
.goto Winterspring,62.40,36.20,60,0
.goto Winterspring,61.20,41.60,60,0
>>Kill all |cRXP_ENEMY_Chillwind Chimaeras|r north of Everlook. Loot them for their |cRXP_LOOT_Horns|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
.isOnQuest 4809
step << !Shaman
#completewith WinterspringEnd
#softcore
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r in Everlook
step << Shaman
#completewith WinterspringEnd
.hs >>Hearth or Astrall Recall to Everlook
.use 6948
.bindlocation 2255,1
.subzoneskip 255
step << Shaman
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizzie|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Vizzie
.isQuestComplete 4809
step
#era/som
.goto Winterspring,61.6,38.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok|r
.turnin 4809 >> Turn in Chillwind Horns
.target Felnok Steelspring
.isQuestComplete 4809
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.turnin 5056 >> Turn in Shy-Rotam
.target Storm Shadowhoof
.isQuestComplete 5056
.group
step
#optional
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.turnin 5057 >>Turn in Past Endeavors
.target Storm Shadowhoof
.isOnQuest 5057
.group
step
#era/som
.goto Winterspring,60.90,37.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi|r
.turnin 977 >>Turn in Are We There, Yeti?
.accept 5163 >>Accept Are We There, Yeti?
.target Umi Rumplesnicker
step
#era/som
.goto Winterspring,61.50,38.60
.use 12928 >>|cRXP_WARN_Use the|r |T133003:0|t[Mechanical Yeti] |cRXP_WARN_on|r |cRXP_FRIENDLY_Legacki|r
.complete 5163,1 
.target Legacki
step << !Shaman
#label WinterspringEnd
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizzie|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Vizzie
.subzoneskip 2255,1
step
#completewith next
.goto Winterspring,31.30,45.20,60 >> Travel back to |cRXP_FRIENDLY_Donova|r
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 5121 >>Turn in High Chief Winterfall
.turnin 5123 >>Turn in The Final Piece
.accept 5128 >>Accept Words of the High Chief
.target Donova Snowden
step
.goto Winterspring,27.736,34.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
.turnin 8464 >> Turn in Winterfall Activity
.target Salfa
.isQuestComplete 8464
step << !Druid
#completewith RabineSaturna
.goto Winterspring,27.40,33.64,40,0
.goto Winterspring,25.70,31.93,40,0
.goto Winterspring,25.35,31.36,40,0
.goto Winterspring,26.36,28.04,40,0
.goto Winterspring,26.61,24.49,40,0
.goto Winterspring,26.59,24.17
.zone Moonglade >>Enter the tunnel, then take the north exit into Moonglade
step << Druid
#completewith RabineSaturna
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 22829 >>Train your class spells
.target Loganaar
.xp <56,1
.xp >58,1
step << Druid
#label DruidTraining10
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9850 >>Train your class spells
.target Loganaar
.xp <58,1
step
#label RabineSaturna
.goto Moonglade,51.70,45.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine|r
.turnin 1123 >>Turn in Rabine Saturna
.accept 1124 >>Accept Wasteland
.target Rabine Saturna
step
.goto Moonglade,51.68,45.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine|r, then work through his dialogue
>>|cRXP_WARN_Skip this step if the Dire Maul dialogue is not available. It will be available if you have gone to Dire Maul's outdoor zone/discovered Dire Maul at any point|r
.accept 5527 >>Accept A Reliquary of Purity
.target Rabine Saturna
.skipgossip
step
#era/som
#completewith GuardingsTI2
.goto Moonglade,32.10,66.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faustron|r
.fp Moonglade >>Get the Moonglade Flight Path << !Druid
.fly Felwood >>Fly to Felwood
.target Faustron
.zoneskip Felwood
step
#era/som
.goto Felwood,34.80,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trull|r
.turnin 4721 >>Turn in Wild Guardians
.turnin 4882 >>Turn in Guarding Secrets
.accept 4883 >>Accept Guarding Secrets
.target Trull Failbane
.isQuestComplete 4721
step
#era/som
#label GuardingsTI2
.goto Felwood,34.80,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trull|r
.turnin 4882 >>Turn in Guarding Secrets
.accept 4883 >>Accept Guarding Secrets
.target Trull Failbane
step
#era/som
.goto Felwood,51.14,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek|r
.turnin 5128 >>Turn in Words of the High Chief
.target Kelek Skykeeper
.isQuestTurnedIn 5123
step
#xprate <2.0
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4084 >> Turn in Silver Heart
.accept 4005 >> Accept Aquementas
.target Eridan Bluewind
step
#xprate <2.0
#era/som
#softcore
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4084 >> Turn in Silver Heart
.accept 4005 >> Accept Aquementas
.target Eridan Bluewind
step << !Mage
#completewith next
.subzone 431 >> Travel to Splintertree Post
.cooldown item,6948,<0,1
step << !Mage
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fly Azshara >>Fly to Azshara
.target Vhulgra
.cooldown item,6948,<0,1
.zoneskip Azshara
step << !Mage
#completewith next
.hs >>Hearth to Winterspring
.use 6948
.bindlocation 2255,1
.subzoneskip 255
.cooldown item,6948,>0,1
step << !Mage
.goto Winterspring,61.36,38.83,30 >>Arrive in Winterspring
.zoneskip Winterspring
step << !Mage
#completewith AndronsPaymentTI
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r
.fly Azshara >>Fly to Azshara
.target Yugrek
.zoneskip Winterspring,1
step << Mage
#completewith AndronsPaymentTI
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
step << Mage
#completewith AndronsPaymentTI
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Azshara >>Fly to Azshara
.target Doras
.zoneskip Azshara
step
#label AndronsPaymentTI
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
.turnin 3564 >>Turn in Andron's Payment to Jediga
.target Jediga
.isOnQuest 3564
step << !Mage
.goto Azshara,22.00,49.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
.fly Thunder Bluff >>Fly to Thunder Bluff
.target Kroum
.zoneskip Azshara,1
step << !Mage
#optional
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r
.fly Thunder Bluff >>Fly to Thunder Bluff
.target Yugrek
.zoneskip Winterspring,1
step << !Mage
#optional
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fly Thunder Bluff >>Fly to Thunder Bluff
.target Vhulgra
.zoneskip Felwood,1
step << Mage
.cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleport: Thunder Bluff]
.zoneskip Thunder Bluff
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurston|r
.train 10157 >> Train your class spells
.target Thurston Xane
.xp <56,1
.xp >58,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurston|r
.train 10054 >> Train your class spells
.target Thurston Xane
.xp <58,1
step
#ah
#completewith next
+If you bought enough cloth earlier, go to the mailbox and retrieve the following:
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
.goto Thunder Bluff,43.3,42.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rumstag|r
>>|cRXP_WARN_Disable any other addons that automatically turn in reputation items, or you'll be told to buy cloth again later|r
>>|cRXP_WARN_Skip any of the donations which you do not have enough cloth for|r
.turnin 7820 >>Turn in A Donation of Wool
.turnin 7821 >>Turn in A Donation of Silk
.turnin 7822 >>Turn in A Donation of Mageweave
.turnin 7823 >>Turn in A Donation of Runecloth
.target Auctioneer Stampi
.target Rumstag Proudstrider
step
.goto Thunder Bluff,75.80,31.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
.turnin 4987 >>Turn in Glyphed Oaken Branch
.turnin 4883 >>Turn in Guarding Secrets
.target Nara Wildmane
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14305 >>Train your class spells
.target Urek Thunderhorn
.xp <56,1
.xp >58,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14322 >>Train your class spells
.target Urek Thunderhorn
.xp <58,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 20662 >>Train your class spells
.target Ker Ragetotem
.xp <56,1
.xp >58,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11597 >> Train your class spells
.target Ker Ragetotem
.xp <58,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 10432 >>Train your class spells
.target Tigor Skychaser
.xp <56,1
.xp >58,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 10473 >>Train your class spells
.target Tigor Skychaser
.xp <58,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai|r
.train 10929 >> Train your class spells
.target Malakai Cross
.xp <56,1
.xp >58,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai|r
.train 10947 >> Train your class spells
.target Malakai Cross
.xp <58,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 22829 >>Train your class spells
.target Turak Runetotem
.xp <56,1
.xp >58,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.train 9850 >>Train your class spells
.target Tura
.xp <58,1
step
#completewith PCQPU
.goto Thunder Bluff,47.02,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Tanaris >>Fly to Tanaris
.target Tal
.zoneskip Tanaris
step
#era/som
.goto Tanaris,51.56,26.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 4504 >>Accept Super Sticky
.target Tran'rek
step
#era/som
.goto Tanaris,51.10,26.90
.use 12928 >>|cRXP_WARN_Use the|r |T133003:0|t[Mechanical Yeti] |cRXP_WARN_on|r |cRXP_FRIENDLY_Sprinkle|r
.complete 5163,2 
.target Sprinkle
step
#label PCQPU
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pestlezugg|r
.accept 4507 >>Accept Pawn Captures Queen
.target Alchemist Pestlezugg
step
#era/som
#softcore
.isQuestTurnedIn 4084
#completewith SummonAquementas
>>|cRXP_WARN_Open|r |T133647:0|t[Eridan's Supplies] |cRXP_WARN_for the|r |T133742:0|t[Book of Aquor]|cRXP_WARN_,|r |cRXP_LOOT_Silvery Claws|r |cRXP_WARN_and|r |cRXP_LOOT_Irontree Heart|r
.use 11617 
.collect 11169,1,4005,1 
.collect 11172,11,4005,1 
.collect 11173,1,4005,1 
step
#era/som
#softcore
.isQuestTurnedIn 4084
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >> Travel to Lost Rigger Cove
step
#era/som
#softcore
.isQuestTurnedIn 4084
#completewith next
#label SummonAquementas
.goto Tanaris,70.43,49.90
.cast 13978 >> |cRXP_WARN_Use the|r |T133742:0|t[Book of Aquor] |cRXP_WARN_to summon |cRXP_ENEMY_Aquementas|r at the stone summoning circle within Lost Rigger Cove|r
.timer 15,Aquementas RP
.use 11617 
.use 11169 
step
#era/som
#softcore
.isQuestTurnedIn 4084
.goto Tanaris,70.43,49.93
>>Kill |cRXP_ENEMY_Aquementas|r
.complete 4005,1 
.use 11617 
.use 11169 
.mob Aquementas
step
#xprate <2.0
#era/som
#hardcore
#hardcoreserver
#completewith SummonAquementas
>>Open |T133647:0|t[Eridan's Supplies] for the |T133742:0|t[Book of Aquor], |cRXP_LOOT_Silvery Claws|r and |cRXP_LOOT_Irontree Heart|r
.use 11617 
.collect 11169,1,4005,1 
.collect 11172,11,4005,1 
.collect 11173,1,4005,1 
step
#xprate <2.0
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >> Travel to Lost Rigger Cove
step
#xprate <2.0
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
#completewith next
#label SummonAquementas
.goto Tanaris,70.43,49.90
.cast 13978 >> |cRXP_WARN_Use the|r |T133742:0|t[Book of Aquor] |cRXP_WARN_to summon |cRXP_ENEMY_Aquementas|r at the stone summoning circle within Lost Rigger Cove|r
.timer 15,Aquementas RP
.use 11617 
.use 11169 
step
#xprate <2.0
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
.goto Tanaris,70.43,49.93
>>Kill |cRXP_ENEMY_Aquementas|r
.complete 4005,1 
.use 11617 
.use 11169 
.mob Aquementas
step
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Un'Goro Crater >>Fly to Un'Goro Crater
.target Bulkrek Ragefist
.zoneskip Un'Goro Crater
step
#xprate <2.0
#era/som
#softcore
.isQuestComplete 4005
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 4005 >> Turn in Aquementas
.accept 3961 >> Accept Linken's Adventure
.target J.D. Collie
step
#xprate <2.0
#era/som
#optional
#softcore
.isQuestTurnedIn 4005
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 3961 >> Accept Linken's Adventure
.target J.D. Collie
step
#xprate <2.0
#era/som
#hardcore
#hardcoreserver
.isQuestComplete 4005
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 4005 >> Turn in Aquementas
.accept 3961 >> Accept Linken's Adventure
.target J.D. Collie
step
#xprate <2.0
#era/som
#hardcore
#optional
#hardcoreserver
.isQuestTurnedIn 4005
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 3961 >> Accept Linken's Adventure
.target J.D. Collie
step
#xprate <2.0
#era/som
#softcore
.isQuestTurnedIn 4084
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3961 >> Turn in Linken's Adventure
.accept 3962 >> Accept It's Dangerous to Go Alone
.target Linken
step
#xprate <2.0
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3961 >> Turn in Linken's Adventure
.accept 3962 >> Accept It's Dangerous to Go Alone
.target Linken
step
#xprate <2.0
#som
#phase 3-6
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3914 >>Turn in Linken's Sword 
.accept 3941 >>Accept A Gnome's Assistance 
.target Linken
.isQuestTurnedIn 4005
step
#xprate <2.0
#som
#phase 3-6
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 3941 >>Turn in A Gnome's Assistance 
.timer 25,A Gnome's Assistance RP
.accept 3942 >>Accept Linken's Memory 
.target J.D. Collie
.isQuestTurnedIn 4005
step
#era/som
.goto Un'Goro Crater,43.70,9.40
.use 12928 >>|cRXP_WARN_Use the|r |T133003:0|t[Mechanical Yeti] |cRXP_WARN_on|r |cRXP_FRIENDLY_Quixxil|r
.complete 5163,3 
.target Quixxil
step
#era/som
#loop
.goto Un'Goro Crater,47.20,14.70,0
.goto Un'Goro Crater,47.20,14.70,60,0
.goto Un'Goro Crater,48.10,17.70,60,0
.goto Un'Goro Crater,49.80,20.60,60,0
.goto Un'Goro Crater,51.30,23.90,60,0
.goto Un'Goro Crater,53.60,22.70,60,0
.goto Un'Goro Crater,54.50,27.00,60,0
.goto Un'Goro Crater,52.20,27.60,60,0
.goto Un'Goro Crater,49.20,31.20,60,0
.goto Un'Goro Crater,48.00,36.30,60,0
.goto Un'Goro Crater,46.60,30.50,60,0
.goto Un'Goro Crater,48.20,24.70,60,0
.goto Un'Goro Crater,47.80,20.50,60,0
.goto Un'Goro Crater,43.70,21.10,60,0
.goto Un'Goro Crater,41.30,21.00,60,0
.goto Un'Goro Crater,42.80,15.90,60,0
>>Kill |cRXP_ENEMY_Tar Elementals|r. Loot them for their |cRXP_LOOT_Super Sticky Tar|r
>>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Tar Lords|r |cRXP_WARN_cast Entangling Roots|r << !Warrior !Rogue !Shaman
>>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Tar Lords|r |cRXP_WARN_cast Entangling Roots.|r |cRXP_ENEMY_Tar Beasts|r |cRXP_WARN_can disarm you for four seconds when they are hit|r << Warrior/Rogue/Shaman
.complete 4504,1 
.mob Tar Beast
.mob Tar Creeper
.mob Tar Lord
.mob Tar Lurker
step
#xprate <2.0
#softcore
#era/som
.isOnQuest 3962
#completewith next
>>|cRXP_WARN_Make your way to the top of Fire Plume Ridge|r
.cast 14247 >>|cRXP_WARN_Equip the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_in your off-hand|r
>>|cRXP_WARN_Use the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_on |cRXP_ENEMY_Blazerunner|r to dispel his aura. His aura will knock you back, and he can periodically recast it during combat. Ensure someone is always ready to use the|r |T135467:0|t[Silver Totem of Aquementas]
.use 11522 
step
#xprate <2.0
#softcore
#era/som
.isOnQuest 3962
.goto Un'Goro Crater,49.401,49.305
>>|cRXP_WARN_Use the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_on |cRXP_ENEMY_Blazerunner|r to dispel his aura|r
>>Kill |cRXP_ENEMY_Blazerunner|r
.complete 3962,1 
.use 11522 
.mob Blazerunner
step
#xprate <2.0
#softcore
#era/som
.isOnQuest 3962
.goto Un'Goro Crater,50.279,49.973
>>Open the |cRXP_PICK_Ornate Chest|r. Loot it for the |cRXP_LOOT_Golden Flame|r
.complete 3962,2 
step
#xprate <2.0
#era/som
#hardcore
#hardcoreserver
.isOnQuest 3962
#completewith next
>>|cRXP_WARN_Make your way to the top of Fire Plume Ridge|r
.cast 14247 >>|cRXP_WARN_Equip the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_in your off-hand|r
>>|cRXP_WARN_Use the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_on |cRXP_ENEMY_Blazerunner|r to dispel his aura. His aura will knock you back, and he can periodically recast it during combat. Ensure you or a party member is always ready to use the|r |T135467:0|t[Silver Totem of Aquementas]
.use 11522 
step
#xprate <2.0
#era/som
#hardcore
#hardcoreserver
.isOnQuest 3962
.goto Un'Goro Crater,49.401,49.305
>>|cRXP_WARN_Use the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_on |cRXP_ENEMY_Blazerunner|r to dispel his aura|r
>>Kill |cRXP_ENEMY_Blazerunner|r
.complete 3962,1 
.use 11522 
.mob Blazerunner
step
#xprate <2.0
#era/som
#hardcore
#hardcoreserver
.isOnQuest 3962
.goto Un'Goro Crater,50.279,49.973
>>Open the |cRXP_PICK_Ornate Chest|r. Loot it for the |cRXP_LOOT_Golden Flame|r
.complete 3962,2 
step
.goto Un'Goro Crater,50.15,79.98,40,0
.goto Un'Goro Crater,49.74,82.52,30,0
.goto Un'Goro Crater,45.19,82.20,30,0
.goto Un'Goro Crater,43.41,80.98
>>Go deep into the silithid hive, until you reach a tall crystal in a round chamber
.use 11833 >>Use your |T134809:0|t[Gorishi Queen Lure] to summon the |cRXP_ENEMY_Gorishi Hive Queen|r. Kill her, then loot her |cRXP_LOOT_Gorishi Queen Brain|r
>>|cRXP_WARN_Proceed with caution, clear the room before summoning the queen, this quest is hard, you have to deal with 3 waves of 3 mobs and you only have 1 attempt on this quest (so it's optional). Remember to kill mobs outside the room so you can eat/drink after|r
>>|cRXP_WARN_Be careful, as this quest is VERY Hard if you haven't done it before|r
.complete 4507,1 
.link https://youtu.be/eaqyd9KEIQ4 >> CLICK HERE if you need a reference
step
#completewith next
.goto Silithus,88.09,23.43,70,0
.goto Un'Goro Crater,30.15,10.41,70,0
.goto Un'Goro Crater,25.14,12.71,70,0
.goto Silithus,81.87,18.93
.zone Silithus >>Head to Silithus
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo|r
.turnin 1124 >>Turn in Wasteland
.accept 1125 >>Accept The Spirits of Southwind
.target Layo Starstrike
step
#completewith end
.xpto60 >> Skip to the part 2 of the guide once you have enough xp to ding 60
step
#phase 4
.goto Silithus,51.80,38.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix|r on the second floor of the inn
.accept 8277 >>Accept Deadly Desert Venom
.target Beetix Ficklespragg
step << Mage/Hunter/Warlock
#phase 4
.goto Silithus,51.30,38.20
>>Click on the |cRXP_PICK_Wanted Poster|r
.accept 8283 >>Accept Wanted - Deathclasp, Terror of the Sands
.solo
step
#phase 4
.goto Silithus,51.30,38.20
>>Click on the |cRXP_PICK_Wanted Poster|r
.accept 8283 >>Accept Wanted - Deathclasp, Terror of the Sands
.group
step
#phase 4
#completewith next
.goto Silithus,51.15,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proudhorn|r
.accept 8280 >>Accept Securing the Supply Lines
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,49.60,37.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larksbane|r
.accept 8284 >>Accept The Twilight Mystery
.target Geologist Larksbane
step
#phase 4
.goto Silithus,49.20,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mar'alith|r
.accept 8304 >>Accept Dearest Natalia
.target Commander Mar'alith
step
#phase 4
.goto Silithus,48.57,37.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor|r
.accept 8318 >>Accept Secret Communication
.target Bor Wildmane
step
#phase 4
#completewith s1
>>Kill |cRXP_ENEMY_Dredge Strikers|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
#completewith s1
>>Kill |cRXP_ENEMY_Stonelash Scorpids|r and |cRXP_ENEMY_Sand Skitterers|r. Loot them for their |cRXP_LOOT_Stingers|r and |cRXP_LOOT_Fangs|r
.complete 8277,1 
.mob +Stonelash Scorpid
.complete 8277,2 
.mob +Sand Skitterer
step
#completewith Spirits
.use 20461 >>Keep an eye out for |T133463:0|t[|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r] dropped by |cRXP_ENEMY_Hive'Ashi Drones|r. If it drops, use it to start the quest
.collect 20461,1,8308 
.accept 8308 >>Accept Brann Bronzebeard's Lost Letter
step
#softcore
#completewith next
>>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r
>>|cRXP_WARN_They have a high chance to spawn a|r |cRXP_ENEMY_Hive'Ashi Drone|r |cRXP_WARN_after dying|r
.complete 1125,1 
.mob +Tortured Druid
.complete 1125,2 
.mob +Tortured Sentinel
step
#hardcore
#completewith next
>>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r
>>|cRXP_WARN_Be careful! They have a high chance to spawn a|r |cRXP_ENEMY_Hive'Ashi Drone|r |cRXP_WARN_after dying|r
>>|cRXP_WARN_Make sure to only pull one at a time!|r
.complete 1125,1 
.mob +Tortured Druid
.complete 1125,2 
.mob +Tortured Sentinel
step
.goto Silithus,63.22,55.35
>>Loot the |cRXP_PICK_Dusty Reliquary|r inside the lodge for the |cRXP_LOOT_Reliquary of Purity|r
.complete 5527,1 
.isOnQuest 5527
step
#softcore
#label Spirits
#loop
.goto Silithus,61.60,48.60,0
.goto Silithus,61.60,48.60,50,0
.goto Silithus,63.80,48.60,50,0
.goto Silithus,63.60,51.60,50,0
.goto Silithus,62.60,55.60,50,0
.goto Silithus,62.60,58.60,50,0
.goto Silithus,60.00,55.80,50,0
.goto Silithus,60.60,52.80,50,0
>>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r
>>|cRXP_WARN_They have a high chance to spawn a|r |cRXP_ENEMY_Hive'Ashi Drone|r |cRXP_WARN_after dying|r
.complete 1125,1 
.mob +Tortured Druid
.complete 1125,2 
.mob +Tortured Sentinel
step
#hardcore
#label Spirits
#loop
.goto Silithus,61.60,48.60,0
.goto Silithus,61.60,48.60,50,0
.goto Silithus,63.80,48.60,50,0
.goto Silithus,63.60,51.60,50,0
.goto Silithus,62.60,55.60,50,0
.goto Silithus,62.60,58.60,50,0
.goto Silithus,60.00,55.80,50,0
.goto Silithus,60.60,52.80,50,0
>>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r
>>|cRXP_WARN_Be careful! They have a high chance to spawn a|r |cRXP_ENEMY_Hive'Ashi Drone|r |cRXP_WARN_after dying|r
>>|cRXP_WARN_Make sure to only pull one at a time!|r
.complete 1125,1 
.mob +Tortured Druid
.complete 1125,2 
.mob +Tortured Sentinel
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo|r
.turnin 1125 >>Turn in The Spirits of Southwind
.accept 1126 >>Accept Hive in the Tower
.target Layo Starstrike
step
#completewith SilithidObject
.use 20461 >>Keep an eye out for |T133463:0|t[|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r] dropped by |cRXP_ENEMY_Hive'Ashi Drones|r. If it drops, use it to start the quest
.collect 20461,1,8308 
.accept 8308 >>Accept Brann Bronzebeard's Lost Letter
step
#label SilithidObject
.goto Silithus,60.22,52.55
>>Click on the |cRXP_PICK_Gooey Nest|r at the top of the tower
>>Kill the two |cRXP_ENEMY_Hive'Ashi Ambushers|r that spawn on the top floor. Loot them for a |cRXP_LOOT_Encrusted Silithid Object|r
>>|cRXP_WARN_Be careful! Three|r |cRXP_ENEMY_Hive'Ashi Drones|r |cRXP_WARN_will spawn when you enter the bottom floor of the tower!|r
.complete 1126,1 
.mob Hive'Ashi Drone
.mob Hive'Ashi Ambusher
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo|r
.turnin 1126 >>Turn in Hive in the Tower
.accept 6844 >>Accept Umber, Archivist
.target Layo Starstrike
step
#phase 4
#label s1
#loop
.goto Silithus,19.50,21.10,0
.goto Silithus,19.50,21.10,50,0
.goto Silithus,20.10,15.50,50,0
.goto Silithus,21.50,12.80,50,0
.goto Silithus,21.70,9.40,50,0
.goto Silithus,24.10,9.80,50,0
.goto Silithus,26.60,13.30,50,0
.goto Silithus,24.10,15.50,50,0
.goto Silithus,21.50,22.00,50,0
>>Loot the blue |cRXP_PICK_Glowing Tablets|r on the ground for |cRXP_LOOT_Twilight Tablet Fragments|r
.complete 8284,1 
step
#phase 4
#completewith next
>>Kill |cRXP_ENEMY_Dredge Strikers|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
#loop
.goto Silithus,51.60,16.40,0
.goto Silithus,51.60,16.40,70,0,0
.goto Silithus,54.60,13.20,70,0,0
.goto Silithus,58.40,13.60,70,0,0
.goto Silithus,62.60,16.60,70,0,0
.goto Silithus,61.40,21.60,70,0,0
.goto Silithus,63.20,24.00,70,0,0
.goto Silithus,64.80,28.20,70,0,0
.goto Silithus,67.60,32.00,70,0,0
.goto Silithus,60.60,30.60,70,0,0
.goto Silithus,56.40,32.80,70,0,0
.goto Silithus,53.00,28.00,70,0,0
.goto Silithus,54.80,21.80,70,0,0
>>Kill |cRXP_ENEMY_Stonelash Scorpids|r and |cRXP_ENEMY_Sand Skitterers|r. Loot them for their |cRXP_LOOT_Stingers|r and |cRXP_LOOT_Fangs|r
.complete 8277,1 
.mob +Stonelash Scorpid
.complete 8277,2 
.mob +Sand Skitterer
step
#phase 4
#loop
.goto Silithus,63.20,24.00,0
.goto Silithus,51.60,16.40,70,0,0
.goto Silithus,54.60,13.20,70,0,0
.goto Silithus,58.40,13.60,70,0,0
.goto Silithus,62.60,16.60,70,0,0
.goto Silithus,61.40,21.60,70,0,0
.goto Silithus,63.20,24.00,70,0,0
.goto Silithus,64.80,28.20,70,0,0
.goto Silithus,67.60,32.00,70,0,0
.goto Silithus,60.60,30.60,70,0,0
.goto Silithus,56.40,32.80,70,0,0
.goto Silithus,53.00,28.00,70,0,0
.goto Silithus,54.80,21.80,70,0,0
>>Kill |cRXP_ENEMY_Dredge Strikers|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
.goto Silithus,49.70,37.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larksbane|r
.turnin 8284 >>Turn in The Twilight Mystery
.accept 8285 >>Accept The Deserter
.target Geologist Larksbane
step
#phase 4
.goto Silithus,51.15,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proudhorn|r
.turnin 8280 >>Turn in Securing the Supply Lines
.accept 8281 >>Accept Stepping Up Security
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.80,38.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix|r
.turnin 8277 >>Turn in Deadly Desert Venom
.accept 8278 >>Accept Noggle's Last Hope
.target Beetix Ficklespragg
step
#phase 4
#completewith Deserter
.goto Silithus,39.31,53.33,0
>>Kill |cRXP_ENEMY_Dredge Crushers|r
>>|cRXP_WARN_Don't focus on this; you can finish it later|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
#completewith Deserter
.goto Silithus,62.52,64.00,0
.goto Silithus,50.73,55.99,0
>>Kill |cRXP_ENEMY_Stonelash Flayers|r and |cRXP_ENEMY_Stonelash Pincers|r. Loot them for their |cRXP_LOOT_Stingers|r
>>Kill |cRXP_ENEMY_Rock Stalkers|r. Loot them for their |cRXP_LOOT_Fangs|r
>>|cRXP_WARN_Don't focus on this; you can finish it later|r
.complete 8278,1 
.mob +Stonelash Flayer
.complete 8278,2 
.mob +Stonelash Pincer
.complete 8278,3 
.mob +Rock Stalker
step
#phase 4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar|r and |cRXP_FRIENDLY_Frankal|r
.complete 8304,2 
.target +Rutgar Glyphshaper
.goto Silithus,41.27,88.45
.complete 8304,1 
.target +Frankal Stonebridge
.goto Silithus,40.81,88.86
.skipgossip
step
.goto Silithus,41.30,88.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar|r again
.turnin 8308 >>Turn in Brann Bronzebeard's Lost Letter
.target Rutgar Glyphshaper
.isOnQuest 8308
step
#phase 4
#label Deserter
.goto Silithus,67.19,69.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit|r
.turnin 8285 >>Turn in The Deserter
.accept 8279 >>Accept The Twilight Lexicon
.target Hermit Ortell
step
#phase 4
#completewith next
>>Kill |cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
#loop
.goto Silithus,62.20,63.20,0
.goto Silithus,62.20,63.20,70,0
.goto Silithus,57.00,59.20,70,0
.goto Silithus,50.80,58.00,70,0
.goto Silithus,47.80,54.60,70,0
.goto Silithus,40.80,50.20,70,0
.goto Silithus,34.60,49.40,70,0
.goto Silithus,36.20,39.40,70,0
.goto Silithus,33.60,34.60,70,0
.goto Silithus,27.80,43.40,70,0
.goto Silithus,33.00,49.00,70,0
.goto Silithus,34.60,53.60,70,0
.goto Silithus,34.60,60.40,70,0
.goto Silithus,34.20,65.40,70,0
.goto Silithus,39.40,64.60,70,0
.goto Silithus,42.60,61.40,70,0
.goto Silithus,48.80,62.40,70,0
.goto Silithus,52.80,63.00,70,0
.goto Silithus,59.00,64.40,70,0
.goto Silithus,62.60,66.20,70,0
>>Kill |cRXP_ENEMY_Stonelash Pincers|r. Loot them for their |cRXP_LOOT_Stingers|r
.complete 8278,2 
.mob Stonelash Pincer
step
#phase 4
#loop
.goto Silithus,62.20,63.20,0
.goto Silithus,62.20,63.20,70,0
.goto Silithus,57.00,59.20,70,0
.goto Silithus,50.80,58.00,70,0
.goto Silithus,47.80,54.60,70,0
.goto Silithus,40.80,50.20,70,0
.goto Silithus,34.60,49.40,70,0
.goto Silithus,36.20,39.40,70,0
.goto Silithus,33.60,34.60,70,0
.goto Silithus,27.80,43.40,70,0
.goto Silithus,33.00,49.00,70,0
.goto Silithus,34.60,53.60,70,0
.goto Silithus,34.60,60.40,70,0
.goto Silithus,34.20,65.40,70,0
.goto Silithus,39.40,64.60,70,0
.goto Silithus,42.60,61.40,70,0
.goto Silithus,48.80,62.40,70,0
.goto Silithus,52.80,63.00,70,0
.goto Silithus,59.00,64.40,70,0
.goto Silithus,62.60,66.20,70,0
>>Kill |cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
#loop
.goto Silithus,42.60,86.40,0
.goto Silithus,42.60,86.40,70,0
.goto Silithus,38.60,87.40,70,0
.goto Silithus,38.20,83.20,70,0
.goto Silithus,34.00,76.60,70,0
.goto Silithus,32.00,81.00,70,0
.goto Silithus,27.60,85.20,70,0
.goto Silithus,24.60,82.00,70,0
.goto Silithus,23.40,77.20,70,0
.goto Silithus,27.60,76.40,70,0
.goto Silithus,31.60,74.80,70,0
.goto Silithus,34.60,71.40,70,0
.goto Silithus,38.60,69.20,70,0
.goto Silithus,43.00,68.40,70,0
.goto Silithus,46.80,69.60,70,0
.goto Silithus,44.20,75.60,70,0
.goto Silithus,45.40,80.20,70,0
.goto Silithus,45.40,85.60,70,0
>>Kill |cRXP_ENEMY_Stonelash Flayers|r and |cRXP_ENEMY_Rock Stalkers|r. Loot them for their |cRXP_LOOT_Stingers|r and |cRXP_LOOT_Fangs|r
.complete 8278,1 
.mob +Stonelash Flayer
.complete 8278,3 
.mob +Rock Stalker
step
#phase 4
.goto Silithus,51.15,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proudhorn|r
.turnin 8281 >>Turn in Stepping Up Security
.target Windcaller Proudhorn
step
#phase 4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix|r and |cRXP_FRIENDLY_Noggle|r
.turnin 8278 >>Turn in Noggle's Last Hope
.target +Beetix Ficklespragg
.goto Silithus,51.80,38.51
.accept 8282 >>Accept Noggle's Lost Satchel
.target +Noggle Ficklespragg
.goto Silithus,51.62,38.50
step
#phase 4
.goto Silithus,49.20,34.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mar'alith|r
.turnin 8304 >>Turn in Dearest Natalia
.target Commander Mar'alith
step
#phase 4
#completewith LexiconChapter2
>>Kill |cRXP_ENEMY_Twilight Cultists|r. Loot them for their |cRXP_LOOT_Encrypted Twilight Texts|r
>>|cRXP_ENEMY_Twilight Keepers|r|cRXP_WARN_,|r |cRXP_ENEMY_Overlords|r |cRXP_WARN_and|r |cRXP_ENEMY_Masters|r |cRXP_WARN_have very high burst potential|r
.collect 20404,10,8323,1 
.mob Twilight Stonecaller
.mob Twilight Avenger
.mob Twilight Geolord
.mob Twilight Flamereaver
.mob Twilight Master
.mob Twilight Overlord
.mob Twilight Marauder
step
#phase 4
.goto Silithus,40.86,42.22
>>Kill |cRXP_ENEMY_Twilight Keeper Havunth|r. Loot him for his |cRXP_LOOT_Twilight Lexicon Chapter|r
>>He patrols the east side of the camp that's just southwest of Cenarion Hold
>>|cRXP_WARN_Be careful, he has very high burst|r
.complete 8279,3 
.unitscan Twilight Keeper Havunth
step
#phase 4
.goto Silithus,26.34,36.62
>>Kill |cRXP_ENEMY_Twilight Keeper Mayna|r. Loot her for her |cRXP_LOOT_Twilight Lexicon Chapter|r
>>She patrols the camp far west of Cenarion Hold
>>|cRXP_WARN_Be careful, she has Psychic Scream (instant fear)|r
.complete 8279,1 
.unitscan Twilight Keeper Mayna
step
#phase 4
#label LexiconChapter2
.goto Silithus,16.08,86.37
>>Kill |cRXP_ENEMY_Twilight Keeper Exeter|r. Loot him for his |cRXP_LOOT_Twilight Lexicon Chapter|r
>>He's at the back of the camp very far to the southwest of Cenarion Hold/northwest of Ahn'Qiraj
>>|cRXP_WARN_Be careful, he has a stun and mortal strike|r
.complete 8279,2 
.unitscan Twilight Keeper Exeter
step
#phase 4
#loop
.goto Silithus,38.31,46.42,0
.goto Silithus,27.93,30.66,0
.goto Silithus,20.47,86.11,0
.goto Silithus,38.31,46.42,80,0
.goto Silithus,27.93,30.66,80,0
.goto Silithus,20.47,86.11,80,0
>>Kill |cRXP_ENEMY_Twilight Cultists|r. Loot them for their |cRXP_LOOT_Encrypted Twilight Texts|r
>>|cRXP_ENEMY_Twilight Keepers|r|cRXP_WARN_,|r |cRXP_ENEMY_Overlords|r |cRXP_WARN_and|r |cRXP_ENEMY_Masters|r |cRXP_WARN_have very high burst potential|r
.collect 20404,10,8323,1 
.mob Twilight Stonecaller
.mob Twilight Avenger
.mob Twilight Geolord
.mob Twilight Flamereaver
.mob Twilight Master
.mob Twilight Overlord
.mob Twilight Marauder
step
#phase 4
#completewith next
>>Loot |cRXP_LOOT_Noggle's Satchel|r
.complete 8282,1 
.unitscan Deathclasp
.group
step
#phase 4
.goto Silithus,45.00,92.20
>>Split pull the adds that patrol with |cRXP_ENEMY_Deathclasp|r. Kite them until |cRXP_ENEMY_Deathclasp|r resets, then kill them
>>Kill |cRXP_ENEMY_Deathclasp|r. Loot him for his |cRXP_LOOT_Pincer|r. Do everything that you can to prevent him from getting into melee range
>>|cRXP_WARN_This quest mob hits hard and has a poison debuff that can stun for 8 seconds. This quest is extremely dangerous if you are unfamiliar/unprepared; skip it if necessary|r
.complete 8283,1 
.mob Stonelash Flayer
.unitscan Deathclasp
.group 3
step
#phase 4
.goto Silithus,44.50,91.40
>>Loot |cRXP_LOOT_Noggle's Satchel|r on the ground
.complete 8282,1 
.unitscan Deathclasp
.group
step << Mage/Hunter/Warlock
#phase 4
#completewith next
>>Loot |cRXP_LOOT_Noggle's Satchel|r
.complete 8282,1 
.unitscan Deathclasp
.solo
step << Mage/Hunter/Warlock
#phase 4
.goto Silithus,45.00,92.20
>>Split pull the adds that patrol with |cRXP_ENEMY_Deathclasp|r. Kite them until |cRXP_ENEMY_Deathclasp|r resets, then kill them
>>Kill |cRXP_ENEMY_Deathclasp|r. Loot him for his |cRXP_LOOT_Pincer|r. Do everything that you can to prevent him from getting into melee range
>>|cRXP_WARN_This quest mob hits hard and has a poison debuff that can stun for 8 seconds. This quest is extremely dangerous if you are unfamiliar/unprepared; skip it if necessary|r
.complete 8283,1 
.mob Stonelash Flayer
.unitscan Deathclasp
.solo
step << Mage/Hunter/Warlock
#phase 4
.goto Silithus,44.50,91.40
>>Loot |cRXP_LOOT_Noggle's Satchel|r on the ground
.complete 8282,1 
.unitscan Deathclasp
.solo
step << !Mage !Hunter !Warlock
#phase 4
.goto Silithus,44.50,91.40
>>Loot |cRXP_LOOT_Noggle's Satchel|r on the ground
>>|cRXP_WARN_Be careful not to aggro Deathclasp|r
.complete 8282,1 
.unitscan Deathclasp
.solo
step
#phase 4
.goto Silithus,67.20,69.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit|r
.turnin 8279 >>Turn in The Twilight Lexicon
.accept 8287 >>Accept A Terrible Purpose
.accept 8323 >>Accept True Believers
.turnin 8323 >>Turn in True Believers
.target Hermit Ortell
step << skip
.goto Silithus,67.20,69.24
.goto Silithus,47.21,37.93,30 >>|cRXP_WARN_Jump onto one of the standing torches in the cave. Perform a Logout Skip by logging out and back in|r
.link https://www.youtube.com/watch?v=bFS4TUbJse8&ab_channel=RestedXP >> |cRXP_WARN_CLICK HERE for an example|r
step
#phase 4
.goto Silithus,51.62,38.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noggle|r
.turnin 8282 >>Turn in Noggle's Lost Satchel
.target Noggle Ficklespragg
step
#phase 4
.goto Silithus,50.80,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vish|r
.turnin 8283 >>Turn in Wanted - Deathclasp, Terror of the Sands
.target Vish Kozus
.isQuestComplete 8283
.group
step << Mage/Warlock/Hunter
#phase 4
.goto Silithus,50.80,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vish Kozus|r
.turnin 8283 >> Turn in Wanted - Deathclasp, Terror of the Sands
.target Vish Kozus
.solo
step
#phase 4
.goto Silithus,49.20,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mar'alith|r
.turnin 8287 >>Turn in A Terrible Purpose
.target Commander Mar'alith
step
#phase 4
#loop
.goto Silithus,38.80,45.40,0
.goto Silithus,38.80,45.40,50,0
.goto Silithus,38.20,43.80,50,0
.goto Silithus,38.80,42.60,50,0
.goto Silithus,40.40,42.40,50,0
.goto Silithus,41.40,45.60,50,0
.goto Silithus,40.00,46.20,50,0
>>Kill |cRXP_ENEMY_Twilight Cultists|r. Loot them for their |cRXP_LOOT_Encrypted Twilight Texts|r
>>|cRXP_ENEMY_Twilight Keepers|r|cRXP_WARN_,|r |cRXP_ENEMY_Overlords|r |cRXP_WARN_and|r |cRXP_ENEMY_Masters|r |cRXP_WARN_have very high burst potential|r
.complete 8318,1 
.mob Twilight Stonecaller
.mob Twilight Avenger
.mob Twilight Geolord
.mob Twilight Flamereaver
.mob Twilight Master
.mob Twilight Overlord
.mob Twilight Marauder
step
#phase 4
.goto Silithus,48.57,37.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor|r
.turnin 8318 >>Turn in Secret Communication
.target Bor Wildmane
step
#xprate <2.0
#hardcoreserver
#era/som
#completewith next
.goto Silithus,48.69,36.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runk|r
.fly Un'Goro >>Fly to Un'Goro Crater
.target Runk Windtamer
.zoneskip Un'Goro Crater
step
#xprate <2.0
#hardcoreserver
#era/som
.isQuestComplete 3962
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3962 >> Turn in It's Dangerous to Go Alone
.target Linken
step
#xprate <2.0
#softcore
#era/som
#completewith next
.goto Silithus,48.69,36.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runk|r
.fly Un'Goro >>Fly to Un'Goro Crater
.target Runk Windtamer
.zoneskip Un'Goro Crater
step
#xprate <2.0
#softcore
#era/som
.isQuestComplete 3962
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3962 >> Turn in It's Dangerous to Go Alone
.target Linken
step
#xprate <2.0
#optional
.abandon 3962 >> Abandon It's Dangerous to Go Alone
step
#xprate <2.0
#completewith end
.goto Silithus,48.69,36.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runk|r
.fly Tanaris >>Fly to Tanaris
.target Runk Windtamer
.zoneskip Silithus,1
step
#completewith end
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
.fly Tanaris >>Fly to Tanaris
.target Gryfe
.zoneskip Un'Goro Crater,1
step
.goto Tanaris,51.56,26.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 4504 >>Turn in Super Sticky
.target Tran'rek
step
#label end
.goto Tanaris,50.88,26.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pestlezugg|r
.turnin 4507 >>Turn in Pawn Captures Queen
.accept 4509 >>Accept Calm Before the Storm
.target Alchemist Pestlezugg
]]);
