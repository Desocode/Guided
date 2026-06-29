RXPGuides.RegisterGuide([[
#version 23
#season 2
#group RestedXP Alliance 50-60
#name 50-51 Stranglethorn Vale SoD
#displayname 50-51 Stranglethorn Vale
#next 51-52 Searing Gorge SoD
#classic
#tbc
#mop
<< Alliance
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
.isQuestComplete 2874
step
.goto Stranglethorn Vale,27.135,77.451
.target Whiskey Slim
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
.turnin 580 >> Turn in Whiskey Slim's Lost Grog
.isQuestComplete 580
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
.goto Stranglethorn Vale,29.27,88.32
.complete 608,3 
.goto Stranglethorn Vale,30.58,90.63
.complete 608,1 
.goto Stranglethorn Vale,32.89,88.23
.mob Captain Keelhaul
.mob Fleet Master Firallon
.mob Captain Stillwater
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
.disablecheckbox
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
.link https://youtu.be/6oOXWkEYlTQ >> |cRXP_WARN_Click here for video reference|r
.mob King Mukla
step << !Hunter
.group 3
.goto Stranglethorn Vale,40.94,83.89
>>Kill |cRXP_ENEMY_King Mukla|r. Loot him for the |cRXP_LOOT_Shackle Key|r
>>|cRXP_WARN_You can kite |cRXP_ENEMY_King Mukla|r around the large tree|r
.link https://youtu.be/6oOXWkEYlTQ >> |cRXP_WARN_Click here for video reference|r
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
.link https://www.youtube.com/watch?v=oEw3666RKIE >> |cRXP_WARN_Click here for video reference|r
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
.goto Stranglethorn Vale,26.694,73.613
.turnin 8553 >> Turn in The Captain's Cutlass
.goto Stranglethorn Vale,26.655,73.642
.target Captain Hecklebury Smotts
.target Sprogger
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
#ah
.hs >> Hearthstone to Stormwind
.cooldown item,6948,>0,1
step << !Mage
#ssf
.hs >> Hearthstone to Ironforge
.cooldown item,6948,>0,1
step << !Mage
#ah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >> Fly to Stormwind
.target Gyll
.zoneskip Searing Gorge
.zoneskip Stormwind City
.zoneskip Ironforge
step << !Mage
#ssf
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Ironforge >> Fly to Ironforge
.target Gyll
.zoneskip Searing Gorge
.zoneskip Stormwind City
.zoneskip Ironforge
step << Mage
#ah
#completewith next
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
#ah
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << Mage
#ssf
#completewith next
.zone Ironforge >> Teleport to Ironforge
step << Mage
#ssf
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step
#ah
#completewith GoBL
>>|cRXP_WARN_The next segment (after Blasted Lands) takes place in Searing Gorge. It's going to be EXTREMELY hard to quest there if you happen to start it during the|r |cRXP_ENEMY_Blackrock Eruption|r |cRXP_WARN_event. It occurs at midnight and then every two hours and lasts for an hour|r
>>|cRXP_WARN_This means that you should only aim to start questing in Searing Gorge every odd hour and in the best case scenario you will only have 1 hour to quest untill the event starts.
>>|cRXP_WARN_If the event just started consider doing the Blasted Lands section to wait it out|r and then make sure you're in Searing Gorge as soon as it ends so you can do all the quests in time.
>>|cRXP_WARN_If the event is about to end skip the Blasted Lands section and go to Searing Gorge instead|r
+Click here to hide this message
step
#ah
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 4306 >> Withdraw the following items from your bank:
>>15 |T132905:0|t[Silk Cloth] (If you have them) 
.target Newton Burnside
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy the following items for a faster turn in at Blasted Lands shortly|r
>>|cRXP_WARN_Skip to the next section of the guide (Searing Gorge) if you don't want to buy anything as it's not worth going to Blasted Lands without these items|r
.blastedLands
>>|cRXP_BUY_Buy|r |T132905:0|t[Silk Cloth] |cRXP_BUY_from the Auction House for a quest later in Searing Gorge|r
.collect 4306,15,4449,1 
.target Auctioneer Jaxon
step << Druid
#ah
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
.trainer >> Train your class spells
.target Sheldras Moontree
step << Priest/Paladin
#ah
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
#ah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
#ah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Warrior
#ah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
#ah
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step
#ah
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
>>|cRXP_WARN_NOTE: The Blasted Lands part of the guide is only worth doing if you bought most of the quest items fom the Auction House or decide not to quest in Searing Gorge due to the eruption timer. Skip to the next section of the guide (Searing Gorge) if you don't have the materials from the AH or you know you will be able to quest in Searing Gorge|r
.fly Duskwood >> Fly to Duskwood
.target Dungar Longdrink
step
#ah
.goto Duskwood,90.16,40.74
.zone Deadwind Pass >> Travel east to Deadwind Pass
step
#ah
.goto Deadwind Pass,57.56,42.25
.zone Swamp of Sorrows >> Travel east to the Swamp of Sorrows
step
#ah
#label GoBL
.goto Swamp of Sorrows,34.34,65.27,
.zone Blasted Lands >> Travel south to the Blasted Lands
step << Warlock
#ah
.zoneskip Searing Gorge
#season 2
#sticky
#completewith BLend
#label ExplorerImp
>>As you're questing cast |T136163:0|t|cRXP_FRIENDLY_[Drain Soul]|r on mobs untill you receive an |T133257:0|t|cRXP_LOOT_Explorer's Soul|r. |cRXP_WARN_Use it to learn how to summon an|r |T236294:0|t|cRXP_FRIENDLY_[Explorer Imp]|r
.train 445459 >>|cRXP_WARN_Use|r |T133257:0|t|cRXP_LOOT_Explorer's Soul|r |cRXP_WARN_to learn how to summon an|r |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]
.train 445459,1 
.train 1120,3 
.use 221978
step << Warlock/Mage
#ah
.zoneskip Searing Gorge
#season 2
#requires ExplorerImp << Warlock
#sticky
#completewith BLend
#label FelPortalRune
>>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one summon your |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r] and talk to it while next to a portal to send it on an expedition. After 10-20 minutes it will return with loot and a chance to award you with |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
>>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one close it using a |T134945:0|t[|cRXP_LOOT_Scroll of Spatial Mending|r]. This will award you with |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r] << Mage
>>|cRXP_WARN_Be on the lookout for the portals untill you get the rune|r
.collect 221499,1 << Warlock 
.collect 223147,1 << Mage 
.itemcount 220792,1 << Mage 
.use 223148 << Warlock 
.use 220792 << Mage
.train 429311,1 << Mage
.train 431756,1 << Warlock
.train 1120,3 << Warlock 
.unitscan Fel Sliver
.unitscan Fel Crack
.unitscan Fel Tear
.unitscan Fel Scar
.unitscan Fel Rift
step << Warlock/Mage
#ah
.zoneskip Searing Gorge
#season 2
#requires FelPortalRune
#sticky
#completewith BLend
.itemcount 221499,1 << Warlock 
.itemcount 223147,1 << Mage 
.train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
.train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
.use 221499 << Warlock
.use 223147 << Mage
step
#ah
.zoneskip Searing Gorge
.goto Blasted Lands,67.570,19.291
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r atop the Tower
.accept 2783 >> Accept Petty Squabbles
.target Ambassador Ardalan
step
#ah
.zoneskip Searing Gorge
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2783 >> Turn in Petty Squabbles
.accept 2801 >> Accept A Tale of Sorrow
.target Fallen Hero of the Horde
step
#ah
.zoneskip Searing Gorge
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.complete 2801,1 
.skipgossip
.target Fallen Hero of the Horde
step
#ah
.zoneskip Searing Gorge
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2801 >> Turn in A Tale of Sorrow
.target Fallen Hero of the Horde
step << Hunter/Rogue
#ah
#completewith next
.zoneskip Searing Gorge
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_Prioritize |cRXP_ENEMY_Scorpids|r, |cRXP_ENEMY_Vultures|r and |cRXP_ENEMY_Boars|r so you can receive the 25 Agility buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Hunter/Rogue
#ah
.goto Blasted Lands,50.548,14.204
.zoneskip Searing Gorge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
>>|cRXP_WARN_Once you have 3 |cRXP_LOOT_Pincers|r, 2 |cRXP_LOOT_Gizzards|r and 1 |cRXP_LOOT_Lung|r turn in the quest for the 25 Agility buff|r
.collect 8393,3,2585,1 
.collect 8396,2,2585,1 
.collect 8392,1,2585,1 
.accept 2585 >> Accept The Decisive Striker
.disablecheckbox
.turnin 2585 >> Turn in The Decisive Striker
.disablecheckbox
.target Bloodmage Drazial
step << Hunter/Rogue
#ah
.goto Blasted Lands,50.548,14.204
.zoneskip Searing Gorge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
.accept 2585 >> Accept The Decisive Striker
.turnin 2585 >> Turn in The Decisive Striker
.target Bloodmage Drazial
step << Druid/Paladin/Warrior
#ah
#completewith next
.blastedLands
.zoneskip Searing Gorge
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_Prioritize |cRXP_ENEMY_Hyenas|r, |cRXP_ENEMY_Boars|r and |cRXP_ENEMY_Scorpids|r so you can receive the 25 Strength buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Druid/Paladin/Warrior
#ah
.goto Blasted Lands,50.548,14.204
.zoneskip Searing Gorge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
>>|cRXP_WARN_Once you have 3 |cRXP_LOOT_Jowls|r, 2 |cRXP_LOOT_Lungs|r and 1 |cRXP_LOOT_Pincer|r turn in the quest for the 25 Strength buff|r
.collect 8391,3,2581,1 
.collect 8392,2,2581,1 
.collect 8393,1,2581,1 
.accept 2581 >> Accept Snickerfang Jowls
.disablecheckbox
.turnin 2581 >> Turn in Snickerfang Jowls
.disablecheckbox
.target Bloodmage Drazial
step << Druid/Paladin/Warrior
#ah
.goto Blasted Lands,50.548,14.204
.zoneskip Searing Gorge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
.accept 2581 >> Accept Snickerfang Jowls
.turnin 2581 >> Turn in Snickerfang Jowls
.target Bloodmage Drazial
step
#ah
.blastedLands
.zoneskip Searing Gorge
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step
#ah
.zoneskip Searing Gorge
.addquestitem 8391,2581
.addquestitem 8392,2583
.addquestitem 8393,2585
.addquestitem 8394,2601
.addquestitem 8396,2603
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Lynnore|r and |cRXP_FRIENDLY_Bloodmage Drazial|r
.accept 2601 >> Accept The Basilisk's Bite
.turnin 2601 >> Turn in The Basilisk's Bite
.accept 2603 >> Accept Vulture's Vigor
.turnin 2603 >> Turn in Vulture's Vigor
.goto Blasted Lands,50.640,14.299
.accept 2585 >> Accept The Decisive Striker
.turnin 2585 >> Turn in The Decisive Striker
.accept 2583 >> Accept A Boar's Vitality
.turnin 2583 >> Turn in A Boar's Vitality
.accept 2581 >> Accept Snickerfang Jowls
.turnin 2581 >> Turn in Snickerfang Jowls
.goto Blasted Lands,50.548,14.204
.target Bloodmage Lynnore
.target Bloodmage Drazial
]]);
