RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 50-60
#classic
#tbc
#mop
<< Horde
#name 59-60 Winterspring/Silithus II
step
#xprate <2.0
#softcore
#completewith next
.goto Silithus,48.69,36.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runk|r
.fly Un'Goro >>Fly to Un'Goro Crater
.target Runk Windtamer
.zoneskip Un'Goro Crater
step
#xprate <2.0
#era/som
#softcore
.goto Un'Goro Crater,44.65,8.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3962 >>Turn in It's Dangerous to Go Alone 
.target Linken
step
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
step
#completewith next
.hs >>Hearth to Everlook
.use 6948
.bindlocation 2255,1
.subzoneskip 255
.zoneskip Winterspring
step
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizzie|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,60.88,37.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi|r
.turnin 5163 >>Turn in Are We There, Yeti?
.target Umi Rumplesnicker
step << Druid
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << !Druid
#label moonglade
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r
.fly Moonglade >>Fly to Moonglade
.target Yugrek
.zoneskip Moonglade
step
.goto Moonglade,47.736,39.678,30,0
.goto Moonglade,44.88,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
>>|cRXP_FRIENDLY_Umber|r |cRXP_WARN_may be patrolling through Nighthaven|r
.turnin 6844 >>Turn in Umber, Archivist
.accept 6845 >>Accept Uncovering Past Secrets
.target Umber
.isQuestTurnedIn 1126
step
.goto Moonglade,51.68,45.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine|r
.turnin 6845 >>Turn in Uncovering Past Secrets
.target Rabine Saturna
.isQuestTurnedIn 1126
step
.goto Moonglade,51.68,45.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine|r
.turnin 5527 >>Turn in A Reliquary of Purity
.target Rabine Saturna
.isQuestComplete 5527
step
.goto Moonglade,47.736,39.678,30,0
.goto Moonglade,44.88,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
>>|cRXP_FRIENDLY_Umber|r |cRXP_WARN_may be patrolling through Nighthaven|r
.accept 1185 >>Accept Under the Chitin Was...
.turnin 1185 >>Turn in Under the Chitin Was...
.target Umber
.isQuestTurnedIn 1126
step
#completewith next
.zone Felwood >> Run back through the cave to Felwood
.zoneskip Felwood
step
#loop
.goto Felwood,63.19,13.01,0
.goto Felwood,61.67,7.23,50,0
.goto Felwood,62.68,8.39,50,0
.goto Felwood,62.55,10.49,50,0
.goto Felwood,63.19,13.01,50,0
.xpto60 >> Grind |cRXP_ENEMY_Deadwood Furbolgs|r in northern felwood until you have enough XP to ding 60
step
#som
#phase 3-6
.goto Moonglade,32.10,66.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faustron|r
.fly Felwood >>Fly to Felwood
.target Faustron
.zoneskip Felwood
step
#som
#phase 3-6
.goto Felwood,51.30,81.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan|r
.turnin 3942 >>Turn in Linken's Memory 
.target Eridan Bluewind
.isQuestTurnedIn 3912
step
#som
#phase 3-6
.goto Felwood,51.14,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek|r
.turnin 5128 >>Turn in Words of the High Chief
.target Kelek Skykeeper
.isQuestTurnedIn 5123
step << !Mage
#som
#phase 3-6
.goto Felwood,34.44,53.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakkar|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Brakkar
.zoneskip Orgrimmar
step << !Mage
#era/som
.goto Moonglade,32.10,66.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faustron|r
.fly Orgrimmar >>Fly to Orgrimmar
.target Faustron
.zoneskip Orgrimmar
step << Mage
#completewith next
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
step
.goto Orgrimmar,56.50,46.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zilzibin|r
>>|cRXP_WARN_He is located on the upper level in the Drag|r
.turnin 4509 >>Turn in Calm Before the Storm
.accept 4511 >>Accept Calm Before the Storm
.target Zilzibin Drumlore
step
.goto Orgrimmar,49.70,69.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karus|r
.turnin 4511 >>Turn in Calm Before the Storm
.target Karus
step
#ah
#completewith OrgClothTurnins
>>If you bought enough cloth earlier, go to the mailbox and retrieve the following:
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
.goto Orgrimmar,63.62,51.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rashona|r
>>|cRXP_WARN_Disable any other addons that automatically turn in reputation items, or you'll be told to buy cloth again later|r
>>|cRXP_WARN_Skip any of the donations which you do not have enough cloth for|r
.turnin 7826 >>Turn in A Donation of Wool
.turnin 7827 >>Turn in A Donation of Silk
.turnin 7831 >>Turn in A Donation of Mageweave
.turnin 7824 >>Turn in A Donation of Runecloth
.target Rashona Straglash
step
#label OrgClothTurnins
.goto Orgrimmar,37.69,87.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vehena|r
>>|cRXP_WARN_Disable any other addons that automatically turn in reputation items, or you'll be told to buy cloth again later|r
>>|cRXP_WARN_Skip any of the donations which you do not have enough cloth for|r
.turnin 7833 >>Turn in A Donation of Wool
.turnin 7834 >>Turn in A Donation of Silk
.turnin 7835 >>Turn in A Donation of Mageweave
.turnin 7836 >>Turn in A Donation of Runecloth
.target Vehena
]]);
