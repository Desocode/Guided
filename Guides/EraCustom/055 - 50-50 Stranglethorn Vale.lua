RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 50-60
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 50-50 Stranglethorn Vale
#next 50-51 Searing Gorge
step
.goto Stranglethorn Vale,26.694,73.613
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.accept 8551 >> Accept The Captain's Chest
step
.goto Stranglethorn Vale,27.618,76.735
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
.accept 348 >> Accept Stranglethorn Fever
.target Fin Fizracket
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.turnin 2874 >> Turn in Deliver to MacKinley
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.135,77.451
.target Whiskey Slim
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
.turnin 580 >> Turn in Whiskey Slim's Lost Grog
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 1122 >> Turn in Report Back to Fizzlebub
.isOnQuest 1122
step
.goto Stranglethorn Vale,27.173,77.007
.target Fleet Master Seahorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.accept 608 >> Accept The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.turnin 2767 >> Turn in Rescue OOX-22/FE!
.isQuestComplete 2767
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.turnin 648 >> Turn in Rescue OOX-17/TN!
.isQuestComplete 648
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.turnin 836 >> Turn in Rescue OOX-09/HL!
.isQuestComplete 836
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.accept 3721 >> Accept An OOX of Your Own
.turnin 3721 >> Turn in An OOX of Your Own
.isQuestTurnedIn 836
.isQuestTurnedIn 648
.isQuestTurnedIn 2767
step
.group 2 << Warrior/Rogue/Paladin/Mage
.goto Stranglethorn Vale,23.24,71.92
>>Kill |cRXP_ENEMY_Mok'rash|r. Loot him for the |T133694:0|t[|cRXP_LOOT_Monogrammed Sash|r]
>>|cRXP_WARN_Use the |T133694:0|t[|cRXP_LOOT_Monogrammed Sash|r] to start the quest|r
>>|cRXP_WARN_Kite |cRXP_ENEMY_Mok'rash|r around the giant Goblin Statue if needed|r
>>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on him repeatedly|r << Warlock/Priest
>>|cRXP_WARN_Once he is 60% kite him back to Booty Bay with|r |T135928:0|t[Levitate] << Priest
>>|cRXP_WARN_Cast|r 136100[Entangling Roots] |cRXP_WARN_then|r |T136096:0|t[Moonfire] |cRXP_WARN_and|r |T135753:0|t[Starfire] |cRXP_WARN_to bring him down|r << Druid
>>|cRXP_WARN_He has a long respawn timer. Skip this step if he isn't up|r
.collect 3985,1,8552,1 
.use 3985
.accept 8552 >> Accept The Monogrammed Sash
.link https://www.youtube.com/watch?v=xw2mGnQaCQM >> Click here for video reference << Priest
.link https://youtu.be/ZaSOwy1h-ZI >> |cRXP_WARN_Click here for video reference|r << !Warlock !Priest
.link https://youtu.be/cT3Hfq1vZRc >> |cRXP_WARN_Click here for video reference|r << Warlock
.mob Mok'rash
step
#completewith next
.goto Stranglethorn Vale,34.22,73.25,60,0
.goto Stranglethorn Vale,34.01,77.21,60,0
.goto Stranglethorn Vale,32.34,79.44,60,0
.goto Stranglethorn Vale,32.38,82.23,60,0
>>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
>>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r] to start the quest|r
.use 4098
.collect 4098,1,594,1 
.accept 594 >> Accept Message in a Bottle
step
>>Kill |cRXP_ENEMY_Captain Keelhaul|r, |cRXP_ENEMY_Fleet Master Firallon|r and |cRXP_ENEMY_Captain Stillwater|r
>>|cRXP_WARN_They are each found on a Bloodsail Ship, on the second floor|r
.complete 608,2 
.mob +Captain Keelhaul
.goto Stranglethorn Vale,29.27,88.32
.complete 608,3 
.mob +Fleet Master Firallon
.goto Stranglethorn Vale,30.58,90.63
.complete 608,1 
.mob +Captain Stillwater
.goto Stranglethorn Vale,32.89,88.23
step
.goto Stranglethorn Vale,36.29,83.22,60,0
.goto Stranglethorn Vale,36.69,77.51,60,0
.goto Stranglethorn Vale,41.59,76.88,60,0
.goto Stranglethorn Vale,35.28,72.67,60,0
.goto Stranglethorn Vale,37.08,68.55,60,0
.goto Stranglethorn Vale,37.23,65.05,60,0
.goto Stranglethorn Vale,38.66,61.78,60,0
>>Open the |cRXP_PICK_Half-Buried Bottles|r on Jaguero Isle. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
>>|cRXP_WARN_If you can't find any, go back to the mainland and check there|r
>>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r] to start the quest|r
.use 4098
.collect 4098,1,594,1 
.accept 594 >> Accept Message in a Bottle
step
.goto Stranglethorn Vale,38.532,80.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
>>|cRXP_WARN_Beware of |cRXP_ENEMY_Jaguero Stalkers|r in|r |T132320:0|t[Stealth] |cRXP_WARN_throughout the Island|r
.turnin 594 >> Turn in Message in a Bottle
.target Princess Poobah
step
.group << !Hunter
.goto Stranglethorn Vale,38.532,80.580
.target Princess Poobah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.accept 630 >> Accept Message in a Bottle
step << Hunter
.goto Stranglethorn Vale,40.94,83.89
>>Kill |cRXP_ENEMY_King Mukla|r. Loot him for the |cRXP_LOOT_Shackle Key|r
>>|cRXP_WARN_You can kite |cRXP_ENEMY_King Mukla|r around the large tree|r
.complete 630,1 
.link https://youtu.be/SafLjdv2l24 >> |cRXP_WARN_Click here for video reference|r
.mob King Mukla
step << !Hunter
.group 3
.goto Stranglethorn Vale,40.94,83.89
>>Kill |cRXP_ENEMY_King Mukla|r. Loot him for the |cRXP_LOOT_Shackle Key|r
>>|cRXP_WARN_You can kite |cRXP_ENEMY_King Mukla|r around the large tree|r
.link https://youtu.be/SafLjdv2l24 >> |cRXP_WARN_Click here for video reference|r
.complete 630,1 
.mob King Mukla
step
.goto Stranglethorn Vale,38.532,80.580
.target Princess Poobah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.turnin 630 >> Turn in Message in a Bottle
.isQuestComplete 630
step
.goto Stranglethorn Vale,36.95,69.73
>>Kill |cRXP_ENEMY_Gorlash|r. Loot him for |cRXP_LOOT_Smotts' Chest|r
>>|cRXP_WARN_Don't try to solo him unless you're in a group or have cooldowns/potion CDs ready|r << Rogue/Warrior/Paladin
>>|cRXP_WARN_Try to kite him if required to the Booty Bay enterance so guards assist you|r
.link https://youtu.be/-2CfRb_LRDY >> |cRXP_WARN_Click here for a video reference|r
.complete 8551,1 
.mob Gorlash
step
.addquestitem 2799,348
.goto Stranglethorn Vale,35.271,60.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Unbagwa|r
>>|cRXP_WARN_Turn in your 10|r |T134298:0|t[Gorilla Fangs] |cRXP_WARN_to summon|r |cRXP_ENEMY_Mokk the Savage|r
>>Kill |cRXP_ENEMY_Mokk the Savage|r. Loot him for the |cRXP_LOOT_Heart of Mokk|r
>>|cRXP_WARN_You'll have to deal with 3 waves of attacking |cRXP_ENEMY_Gorillas|r. Focus killing |cRXP_ENEMY_Mokk the Savage|r then running away on the final wave|r
>>|cRXP_WARN_This can be difficult to solo. Find a group if required|r
.complete 348,1 
.collect 2799,10 
.disablecheckbox
.link https://youtu.be/dss87zJPA4k >> |cRXP_WARN_Click here for video reference|r
.target Witch Doctor Unbagwa
.mob Mokk the Savage
step
#completewith ReturnBB
.goto Stranglethorn Vale,28.97,73.05,100 >> Travel to Booty Bay
step
.goto Stranglethorn Vale,26.694,73.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.turnin 8551 >> Turn in The Captain's Chest
.turnin 8552 >> Turn in The Monogrammed Sash
.accept 8553 >> Accept The Captain's Cutlass
.isQuestComplete 8551
.isQuestComplete 8552
.target Captain Hecklebury Smotts
step
.goto Stranglethorn Vale,26.694,73.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.turnin 8551 >> Turn in The Captain's Chest
.isQuestComplete 8551
.target Captain Hecklebury Smotts
step
.goto Stranglethorn Vale,26.694,73.613
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.turnin 8552 >> Turn in The Monogrammed Sash
.accept 8553 >> Accept The Captain's Cutlass
.isQuestComplete 8552
step
.isQuestTurnedIn 8552
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r and |cRXP_FRIENDLY_Sprogger|r
.accept 8553 >> Accept The Captain's Cutlass
.target +Captain Hecklebury Smotts
.goto Stranglethorn Vale,26.694,73.613
.turnin 8553 >> Turn in The Captain's Cutlass
.target +Sprogger
.goto Stranglethorn Vale,26.655,73.642
step
.goto Stranglethorn Vale,27.618,76.735
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
.turnin 348 >> Turn in Stranglethorn Fever
.isQuestComplete 348
.target Fin Fizracket
step
.abandon 8551 >> Abandon The Captain's Chest
step
.abandon 348 >> Abandon Stranglethorn Fever
step
.abandon 630 >> Abandon Message in a Bottle
step
#label ReturnBB
.isQuestComplete 608
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 608 >> Turn in The Bloodsail Buccaneers
.target Fleet Master Seahorn
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >> Fly to Stormwind
.target Gyll
.zoneskip Stormwind City
step << Mage
#completewith next
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 4306 >> Withdraw the following items from your bank:
>>15 |T132905:0|t[Silk Cloth] (If you have them) 
.target Newton Burnside
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy|r |T132905:0|t[Silk Cloth] |cRXP_BUY_from the Auction House for a quest later in Searing Gorge|r
.collect 4306,15,4449,1 
.target Auctioneer Jaxon
step
.goto StormwindClassic,52.623,65.701
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
.home >> Set your Hearthstone to Stormwind City
.target Innkeeper Allison
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
.trainer >> Train your class spells
.target Sheldras Moontree
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
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step
#era/som
.goto Stormwind City,64.328,20.627
.target Brohann Caskbelly
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
.turnin 1469 >> Turn in Rhapsody's Tale
.isOnQuest 1469
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Hunter
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r
.trainer >> Retrain your pet. Learn Fire Resistance (Rank 4) and Shadow Resistance (Rank 3)
.target Karrina Mekenda
step << !Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Take the Tram to Ironforge
Step << Mage
.zone Ironforge >> Teleport to Ironforge
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
.trainer >> Train your class spells
.target Briarthorn
step
#hardcore
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Loch Modan>> Fly to Loch Modan
.target Gryth Thurden
step
#hardcore
.goto Loch Modan,31.16,56.48,50 >> Travel south towards the tunnel leading to the Searing Gorge
step
#hardcore
.goto Searing Gorge,78.60,16.4,15 >> Travel through the tunnel into the Searing Gorge
>>|cRXP_WARN_==PAY ATTENTION TO THE UPCOMING SECTION==|r
>>|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
>>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
>>Cross through the tunnel leading from Loch Modan to Searing Gorge. |cRXP_WARN_Open it using the interact button. You DO NOT need to have they key|r
.link https://youtu.be/m_7xE_T2Zes >> |cRXP_WARN_Click here for video reference|r
step
#hardcore
.goto Searing Gorge,32.60,32.60,40,0
.goto Searing Gorge,37.934,30.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
.fp Searing Gorge >> Get the Searing Gorge Flight Path
.target Lanie Reed
step
#softcore
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Thorium Point>> Fly to Searing Gorge
.target Gryth Thurden
]]);
