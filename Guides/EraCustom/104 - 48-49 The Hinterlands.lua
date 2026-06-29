RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 40-50 << !Sod
#group RestedXP Horde 50-60 << Sod
#classic
#tbc
#mop
<< Horde
#name 48-49 The Hinterlands
#displayname 50-52 The Hinterlands << Sod
#next 49-50 Feralas
#somname 47-49 The Hinterlands
step
#xprate >2.09
#optional
.maxlevel 51,HinterlandsSkip
step
#completewith next
.zone Durotar >> Leave Orgrimmar
.zoneskip Durotar
.train 3563,1 << Mage
step
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
.zoneskip Tirisfal Glades
.train 3563,1 << Mage
step << Mage
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
.zoneskip Undercity
.train 3563,3
step << Mage
.goto Undercity,84.18,15.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lexington|r
.train 3563 >> Train |T135766:0|t[Teleport: Undercity]
.target Lexington Mortaim
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannah|r
.vendor >>|cRXP_BUY_Buy at least four|r |cRXP_BUY_Rune of Teleportation|r |cRXP_BUY_from her|r
.collect 17031,4,7840,1 
.target Hannah Akeley
step
.goto Undercity,73.20,32.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oran|r
.accept 2995 >>Accept Lines of Communication
.target Oran Snakewrithe
step
#xprate <1.99
#completewith next
.goto Undercity,47.20,59.69,0
.goto Undercity,47.20,59.69,12,0
.goto Undercity,43.55,68.11,12,0
.goto Undercity,45.20,71.67,12 >>Travel toward |cRXP_FRIENDLY_Zinge|r
.isOnQuest 864
step
#xprate <1.99
.goto Undercity,50.00,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zinge|r
.turnin 864 >>Turn in Return to Apothecary Zinge
.target Apothecary Zinge
.isOnQuest 864
step
.goto Undercity,53.77,54.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'dugur|r
.turnin 728 >> Turn in To the Undercity for Yagyin's Digest
.target Keeper Bel'dugur
.isOnQuest 728
.dungeon ULDA
step
.goto Undercity,62.31,48.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patrick|r
.turnin 2342 >> Turn in Reclaimed Treasures
.target Patrick Garrett
.dungeon ULDA
.isQuestComplete 2342
step
#xprate <2.1
.goto Undercity,65.99,44.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William|r
.bankwithdraw 4589 >> Withdraw |T135992:0|t[Long Elegant Feathers] from the bank 
.target William Montague
.isQuestAvailable 7842
step
#xprate <2.1
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
.collect 4589,10,7842,1 >>|cRXP_BUY_Buy|r |T135992:0|t[Long Elegant Feathers] |cRXP_BUY_from the Auction House|r
.target Auctioneer Rhyker
.zoneskip Undercity,1
step << Undead !Warlock
#season 0
#optional
#completewith next
.subzone 159 >> Travel to Brill
.xp <40,1
.money <90
.skill riding,75,1
step << Undead !Warlock
#season 0
#optional
.goto Tirisfal Glades,60.09,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velma|r and |cRXP_FRIENDLY_Zachariah|r
.train 10906 >>Train |T136103:0|t[Undead Horsemanship]
.vendor >>|cRXP_BUY_Buy a|r |T132264:0|t[|cFF0070FFSkeletal Horse|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step << Undead !Warlock
#season 2
#optional
#completewith next
.subzone 159 >> Travel to Brill
.xp <40,1
.money <45
.skill riding,75,1
step << Undead !Warlock
#season 2
#optional
.goto Tirisfal Glades,60.09,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velma|r and |cRXP_FRIENDLY_Zachariah|r
.train 10906 >>Train |T136103:0|t[Undead Horsemanship]
.vendor >>|cRXP_BUY_Buy a|r |T132264:0|t[|cFF0070FFSkeletal Horse|r]
.xp <40,1
.money <45
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step << !Shaman !Rogue
#xprate >1.99
#label FlyTM1
#completewith VenomBottle
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
>>|cRXP_WARN_Run there instead if you do not have the flight path. Get the flight path in Undercity and Hillsbrad|r
.fly Tarren Mill >>Fly to Tarren Mill
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step
#xprate <1.99 << !Shaman !Rogue
#label FlyTM1
#completewith VenomBottle
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly Tarren Mill >>Fly to Tarren Mill
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step
.goto Hillsbrad Foothills,86.60,29.49,30,0
.goto The Hinterlands,9.7,55.8
.zone The Hinterlands >>Take the mountain path northeast of Durnholde Keep into The Hinterlands
step
#label VenomBottle
.goto The Hinterlands,23.00,57.73
>>Click one of the green |cRXP_PICK_Venom Bottles|r around the camp
.accept 2933 >> Accept Venom Bottles
step
.goto The Hinterlands,26.70,48.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilveradin|r
.turnin 650 >>Turn in Ripple Recovery
.accept 77 >>Accept A Sticky Situation
.target Gilveradin Sunchaser
step
#completewith next
.subzone 3317 >>Travel to Revantusk Village
step
#label ViHo
.goto The Hinterlands,77.52,80.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slagtree|r
.accept 7839 >>Accept Vilebranch Hooligans
.target Smith Slagtree
step
.goto The Hinterlands,78.20,81.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lard|r
.accept 7840 >>Accept Lard Lost His Lunch
.target Lard
step
.goto The Hinterlands,80.40,81.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katoom|r
.accept 7815 >>Accept Snapjaws, Mon!
.accept 7816 >>Accept Gammerita, Mon!
.target Katoom the Angler
step << Hunter
#completewith next
.goto The Hinterlands,79.10,79.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Markhor|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Saltwater Snapjaw|r shortly
.target Huntsman Markhor
step << Hunter
#loop
.goto The Hinterlands,80.00,58.80,0
.goto The Hinterlands,80.00,58.80,50,0
.goto The Hinterlands,77.20,61.80,50,0
.goto The Hinterlands,77.20,64.20,50,0
.goto The Hinterlands,74.80,68.60,50,0
.goto The Hinterlands,75.60,72.00,50,0
.goto The Hinterlands,78.20,69.20,50,0
.goto The Hinterlands,78.00,64.20,50,0
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Saltwater Snapjaw|r to tame it|r 
.train 17267 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 7)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Saltwater Snapjaw
.xp <49,1
step << Hunter
.goto The Hinterlands,79.10,79.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Markhor|r
.stable >> Abandon the |cRXP_ENEMY_Saltwater Snapjaw|r and retrieve your regular pet
.target Huntsman Markhor
.train 17267,3
.zoneskip The Hinterlands,1
.xp <49,1 
step
#xprate <2.1
#completewith Gammerita
>>Loot the |cRXP_PICK_Pupellyverbos Port Bottles|r along the shore
.complete 580,1 
.isOnQuest 580
step
#completewith next
>>Kill |cRXP_ENEMY_Saltwater Snapjaws|r
.complete 7815,1 
.mob Saltwater Snapjaw
step
#label Gammerita
#loop
.goto The Hinterlands,78.83,76.26,0
.goto The Hinterlands,81.87,49.36,70,0
.goto The Hinterlands,79.86,60.32,70,0
.goto The Hinterlands,78.54,67.85,70,0
.goto The Hinterlands,79.14,71.45,70,0
.goto The Hinterlands,77.47,75.83,70,0
.goto The Hinterlands,78.83,76.26,70,0
>>Kill |cRXP_ENEMY_Gammerita|r. Loot her for |cRXP_LOOT_Katoom's Best Lure|r
>>|cRXP_WARN_She patrols the length of the coast. Kite her to the guards. If you can't re-leash her consistently, wait until she is close to the village|r
.complete 7816,1 
.unitscan Gammerita
step
>>Click |cRXP_PICK_Cortello's Riddle|r beneath the waterfall
.goto The Hinterlands,80.80,46.80
.turnin 626 >>Turn in Cortello's Riddle
.isOnQuest 626
step
.goto The Hinterlands,84.40,41.30
>>Click |cRXP_PICK_Lard's Picnic Basket|r. Kill at least one of the 3 |cRXP_ENEMY_Vilebranch Kidnappers|r that spawn. Loot it for |cRXP_LOOT_Lard's Lunch|r
>>|cRXP_WARN_All of the mobs have|r |T135358:0|t[Execute]|cRXP_WARN_. Be extremely careful on this quest, try not to let your health dip near 20%|r
.complete 7840,1 
.unitscan Vilebranch Kidnapper
step
#xprate <2.1
#completewith next
>>Loot the |cRXP_PICK_Pupellyverbos Port Bottles|r along the shore
.complete 580,1 
.isOnQuest 580
step
#loop
.goto The Hinterlands,80.00,58.80,0
.goto The Hinterlands,80.00,58.80,50,0
.goto The Hinterlands,77.20,61.80,50,0
.goto The Hinterlands,77.20,64.20,50,0
.goto The Hinterlands,74.80,68.60,50,0
.goto The Hinterlands,75.60,72.00,50,0
.goto The Hinterlands,78.20,69.20,50,0
.goto The Hinterlands,78.00,64.20,50,0
>>Kill |cRXP_ENEMY_Saltwater Snapjaws|r
.complete 7815,1 
.mob Saltwater Snapjaw
step
#xprate <2.1
#loop
.goto The Hinterlands,78.83,76.26,0
.goto The Hinterlands,79.86,60.32,80,0
.goto The Hinterlands,78.54,67.85,80,0
.goto The Hinterlands,79.14,71.45,80,0
.goto The Hinterlands,77.47,75.83,80,0
.goto The Hinterlands,78.83,76.26,80,0
>>Loot the |cRXP_PICK_Pupellyverbos Port Bottles|r along the shore
.complete 580,1 
.isOnQuest 580
step
#completewith next
.goto The Hinterlands,77.28,78.64,100,0
.subzone 3317 >>Travel to Revantusk Village
step
#requires Bottles
.goto The Hinterlands,80.30,81.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katoom|r
.turnin 7815 >>Turn in Snapjaws, Mon!
.turnin 7816 >>Turn in Gammerita, Mon!
.target Katoom the Angler
step
.goto The Hinterlands,78.20,81.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lard|r
.turnin 7840 >>Turn in Lard Lost His Lunch
.target Lard
step
.goto The Hinterlands,78.80,78.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yayo'jin|r
.accept 7844 >>Accept Cannibalistic Cousins
.target Mystic Yayo'jin
step
.goto The Hinterlands,79.40,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Otho|r
.accept 7841 >>Accept Message to the Wildhammer
.target Otho Moji'ko
step
.goto The Hinterlands,79.10,79.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Markhor|r
.accept 7828 >>Accept Stalking the Stalkers
.accept 7829 >>Accept Hunt the Savages
.accept 7830 >>Accept Avenging the Fallen
.target Huntsman Markhor
step << Rogue
#season 2
#completewith next
.subzone 1917 >>Travel to the Shaol'watha ruins
step << Rogue
#season 2
.goto The Hinterlands,72.76,52.91
>>Cast |T136175:0|t[Blind] on the |cRXP_ENEMY_Vilebranch Mask|r, then loot the |cRXP_PICK_Treasure of the Bat|r chest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Focus|r]
.collect 221433,1 
.mob Vilebranch Mask
.train 432291,1
step << Rogue
#season 2
.itemcount 221433,1
.use 221433
.train 432291 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Focus|r] |cRXP_WARN_to train|r |T236274:0|t[Focused Attacks]
step << Warrior
#season 2
#sticky
#label GeodeHammer
#completewith Bucket
>>|cRXP_WARN_Look for a|r |T133054:0|t|cRXP_LOOT_Geode Hammer|r |cRXP_WARN_which can drop from any of the|r |cRXP_ENEMY_Witherbark Trolls|r. |cRXP_WARN_You will need it to unlock|r |T132364:0|t[Wrecking Crew]
.collect 220912,1 
.mob Witherbark Sadist
.mob Witherbark Scalper
.mob Witherbark Zealot
.mob Witherbark Hideskinner
.mob Witherbark Venomblood
.train 427084,1
step << Warrior
#season 2
#sticky
#requires GeodeHammer
#label BrokenGeodeHammer
#completewith Bucket
.equip 16,220912 >>Equip the |T133054:0|t|cRXP_LOOT_Geode Hammer|r as your mainhand weapon. Continue fighting mobs untill the hammer breaks and turns into a |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r
.collect 220914,1 
.train 427084,1
step << Warrior
#season 2
#sticky
#requires BrokenGeodeHammer
#label RuneOfTheDemolition
#completewith Bucket
>>Right click on the |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r to loot it for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r]
.collect 220913,1 
.train 427084,1
step << Warrior
#season 2
#sticky
#requires RuneOfTheDemolition
#completewith Bucket
.train 427084 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r] |cRXP_WARN_to learn|r |T132364:0|t[Wrecking Crew]
.use 220913
step
#completewith Bucket
>>Kill |cRXP_ENEMY_Silvermane Stalkers|r
.complete 7828,1 
.mob Silvermane Stalker
step
#completewith Bucket
.use 9618 >>Kill |cRXP_ENEMY_Savage Owlbeasts|r and use the |T133841:0|t[Wildkin Muisek Vessel] near their corpses
>>|cRXP_WARN_This item has a cooldown and only works on one corpse at a time, even if they're stacked|r
.complete 7829,1 
.complete 3123,1 
.mob Savage Owlbeast
step
#completewith Bucket
>>Kill |cRXP_ENEMY_Vilebranch Scalpers|r and |cRXP_ENEMY_Vilebranch Soothsayers|r
>>|cRXP_ENEMY_Vilebranch Scalpers|r |cRXP_WARN_have Execute. Be extremely careful on this quest, try not to let your health dip near 20%|r
.complete 7844,1 
.mob +Vilebranch Scalper
.complete 7844,2 
.mob +Vilebranch Soothsayer
step
#label Bucket
#loop
.goto The Hinterlands,72.53,52.92,0
.goto The Hinterlands,71.14,48.64,0
.goto The Hinterlands,66.09,44.71,0
.goto The Hinterlands,57.57,42.50,0
.goto The Hinterlands,53.18,39.20,0
.goto The Hinterlands,72.53,52.92,25,0
.goto The Hinterlands,71.14,48.64,25,0
.goto The Hinterlands,66.09,44.71,25,0
.goto The Hinterlands,57.57,42.50,25,0
.goto The Hinterlands,53.18,39.20,25,0
>>Loot |cRXP_PICK_Slagtree's Lost Tools|r (a small bucket)
>>|cRXP_WARN_The bucket can spawn in 5 locations, they are marked on your map|r
.complete 7839,1 
step
#completewith next
.goto The Hinterlands,58.7,41.9,50,0
.subzone 351 >>Travel northwest, then enter the cave, Skulk Rock
step
#loop
.goto The Hinterlands,56.53,43.94,0
.goto The Hinterlands,57.28,43.86,30,0
.goto The Hinterlands,59.77,42.41,30,0
.goto The Hinterlands,56.53,43.94,30,0
.goto The Hinterlands,58.36,42.63,30,0
.goto The Hinterlands,57.56,39.83,30,0
>>Loot the |cRXP_PICK_Horde Supply Crates|r for their |cRXP_LOOT_Hinterlands Honey Ripple|r
.complete 77,1 
step
#optional
#completewith QuelDanilLodge
.use 9618 >>Kill |cRXP_ENEMY_Savage Owlbeasts|r and use the |T133841:0|t[Wildkin Muisek Vessel] near their corpses
>>|cRXP_WARN_This item has a cooldown and only works on one corpse at a time, even if they're stacked|r
.complete 7829,1 
.complete 3123,1 
.mob Savage Owlbeast
step
#completewith next
>>Kill |cRXP_ENEMY_Silvermane Howlers|r
.complete 7828,2 
.mob Silvermane Howler
step
#label QuelDanilLodge
.goto The Hinterlands,31.06,47.84,50,0
.subzone 350 >>Travel west to Quel'Danil Lodge
.isOnQuest 7841
step
#requires QuelDanilLodge
#completewith Escort
>>Kill |cRXP_ENEMY_Highvale High Elves|r
>>|cRXP_WARN_Be careful with your health!|r |cRXP_ENEMY_Highvale Rangers|r |cRXP_WARN_can Faerie Fire, making escape more difficult|r << Rogue
.complete 7841,1 
.mob +Highvale Scout
.complete 7841,2 
.mob +Highvale Outrunner
.complete 7841,3 
.mob +Highvale Ranger
.complete 7841,4 
.mob +Highvale Marksman
step
.goto The Hinterlands,29.60,48.70
>>Click the |cRXP_PICK_Highvale Notes|r on the ground
.complete 2995,2 
step
.goto The Hinterlands,28.60,46.10
>>Click the |cRXP_PICK_Highvale Report|r on the table
.complete 2995,3 
step
.goto The Hinterlands,32.00,46.90
>>Click the |cRXP_PICK_Highvale Records|r on the ground
.complete 2995,1 
step
.goto The Hinterlands,30.73,46.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rin'ji|r
>>|cRXP_WARN_This will start an escort!|r
.accept 2742,1 >>Accept Rin'ji is Trapped!
.target Rin'ji
step
#label Escort
.goto The Hinterlands,34.98,56.92
>>Escort |cRXP_FRIENDLY_Rin'ji|r
.complete 2742,1 
step
#loop
.goto The Hinterlands,33.00,51.60,0
.goto The Hinterlands,33.00,51.60,50,0
.goto The Hinterlands,30.40,51.00,50,0
.goto The Hinterlands,29.60,48.60,50,0
.goto The Hinterlands,28.60,46.60,50,0
.goto The Hinterlands,29.60,48.60,50,0
.goto The Hinterlands,32.20,47.60,50,0
.goto The Hinterlands,32.60,43.60,50,0
.goto The Hinterlands,33.80,44.80,50,0
.goto The Hinterlands,33.80,48.60,50,0
>>Finish killing |cRXP_ENEMY_Highvale High Elves|r
>>|cRXP_WARN_Be careful with your health;|r |cRXP_ENEMY_Highvale Rangers|r |cRXP_WARN_can Faerie Fire, making escape more difficult|r << Rogue
.complete 7841,1 
.mob +Highvale Scout
.complete 7841,2 
.mob +Highvale Outrunner
.complete 7841,3 
.mob +Highvale Ranger
.complete 7841,4 
.mob +Highvale Marksman
step
#completewith Tragan
>>Kill |cRXP_ENEMY_Silvermane Howlers|r
.complete 7828,2 
.mob Silvermane Howler
step
#completewith JinthaAlor
+|cRXP_WARN_You should now start to look for a group for the Jintha'Alor quests (5man)
.group
step
#label Tragan
.goto The Hinterlands,40.00,59.90
>>Swim to the bottom of the pond, then loot the |cRXP_PICK_Mushroom|r for a |cRXP_LOOT_Violet Tragan|r
.complete 2641,1 
step
#loop
.goto The Hinterlands,38.80,50.80,0
.goto The Hinterlands,51.00,41.60,60,0
.goto The Hinterlands,51.40,47.80,60,0
.goto The Hinterlands,51.20,57.20,60,0
.goto The Hinterlands,50.60,63.60,60,0
.goto The Hinterlands,49.60,59.80,60,0
.goto The Hinterlands,45.60,58.80,60,0
.goto The Hinterlands,43.20,61.80,60,0
.goto The Hinterlands,39.20,63.20,60,0
.goto The Hinterlands,36.80,58.60,60,0
.goto The Hinterlands,39.40,55.80,60,0
.goto The Hinterlands,38.80,50.80,60,0
.goto The Hinterlands,39.40,46.20,60,0
.goto The Hinterlands,43.40,46.40,60,0
.goto The Hinterlands,38.80,50.80,60,0
>>Finish killing |cRXP_ENEMY_Silvermane Howlers|r
.complete 7828,2 
.mob Silvermane Howler
step << Warrior
#season 2
#sticky
#label GeodeHammer
#completewith Soothsayers
>>|cRXP_WARN_Look for a|r |T133054:0|t|cRXP_LOOT_Geode Hammer|r |cRXP_WARN_which can drop from any of the|r |cRXP_ENEMY_Witherbark Trolls|r. |cRXP_WARN_You will need it to unlock|r |T132364:0|t[Wrecking Crew]
.collect 220912,1 
.mob Witherbark Sadist
.mob Witherbark Scalper
.mob Witherbark Zealot
.mob Witherbark Hideskinner
.mob Witherbark Venomblood
.train 427084,1
step << Warrior
#season 2
#sticky
#requires GeodeHammer
#label BrokenGeodeHammer
#completewith Soothsayers
.equip 16,220912 >>Equip the |T133054:0|t|cRXP_LOOT_Geode Hammer|r as your mainhand weapon. Continue fighting mobs untill the hammer breaks and turns into a |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r
.collect 220914,1 
.train 427084,1
step << Warrior
#season 2
#sticky
#requires BrokenGeodeHammer
#label RuneOfTheDemolition
#completewith Soothsayers
>>Right click on the |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r to loot it for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r]
.collect 220913,1 
.train 427084,1
step << Warrior
#season 2
#sticky
#requires RuneOfTheDemolition
#completewith Soothsayers
.train 427065 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r] |cRXP_WARN_to learn|r |T132364:0|t[Wrecking Crew]
.use 220913
.train 427084,1
step
#label Soothsayers
#loop
.goto The Hinterlands,53.27,39.91,0
.goto The Hinterlands,66.28,43.71,0
.goto The Hinterlands,71.13,49.10,0
.goto The Hinterlands,45.60,63.40,0
.goto The Hinterlands,45.60,63.40,50,0
.goto The Hinterlands,44.40,67.00,50,0
.goto The Hinterlands,46.40,68.80,50,0
.goto The Hinterlands,49.60,65.20,50,0
.goto The Hinterlands,50.60,65.80,50,0
.goto The Hinterlands,50.60,62.40,50,0
>>Finish killing |cRXP_ENEMY_Vilebranch Scalpers|r and |cRXP_ENEMY_Vilebranch Soothsayers|r around the base of the temple
>>|cRXP_ENEMY_Vilebranch Scalpers|r |cRXP_WARN_have Execute. Be extremely careful on this quest, try not to let your health dip near 20%|r
>>|cRXP_WARN_Do not go to the top! There are high level elites|r
.complete 7844,1 
.mob +Vilebranch Scalper
.complete 7844,2 
.mob +Vilebranch Soothsayer
step << Warrior
#season 2
#label GeodeHammerThree
#loop
.goto The Hinterlands,45.60,63.40,0
.goto The Hinterlands,45.60,63.40,50,0
.goto The Hinterlands,44.40,67.00,50,0
.goto The Hinterlands,46.40,68.80,50,0
.goto The Hinterlands,49.60,65.20,50,0
.goto The Hinterlands,50.60,65.80,50,0
.goto The Hinterlands,50.60,62.40,50,0
>>|cRXP_WARN_Look for a|r |T133054:0|t|cRXP_LOOT_Geode Hammer|r |cRXP_WARN_which can drop from any of the|r |cRXP_ENEMY_Witherbark Trolls|r. |cRXP_WARN_You will need it to unlock|r |T132364:0|t[Wrecking Crew]
.collect 220912,1 
.mob Witherbark Sadist
.mob Witherbark Scalper
.mob Witherbark Zealot
.mob Witherbark Hideskinner
.mob Witherbark Venomblood
.train 427084,1
step << Warrior
#season 2
#sticky
#requires GeodeHammerThree
#label BrokenGeodeHammerThree
#completewith HinterlandsEnd
.equip 16,220912 >>Equip the |T133054:0|t|cRXP_LOOT_Geode Hammer|r as your mainhand weapon. Continue fighting mobs untill the hammer breaks and turns into a |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r
.collect 220914,1 
.train 427084,1
step << Warrior
#season 2
#sticky
#requires BrokenGeodeHammerThree
#label RuneOfTheDemolitionThree
#completewith HinterlandsEnd
>>Right click on the |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r to loot it for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r]
.collect 220913,1 
.train 427084,1
step << Warrior
#season 2
#sticky
#requires RuneOfTheDemolitionThree
#completewith HinterlandsEnd
.train 427084 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r] |cRXP_WARN_to learn|r |T132364:0|t[Wrecking Crew]
.use 220913
step
#optional
#completewith SkylordPlume
>>Kill |cRXP_ENEMY_Silvermane Stalkers|r
.complete 7828,1 
.mob Silvermane Stalker
step
#optional
#completewith Stalkers
.use 9618 >>Kill |cRXP_ENEMY_Savage Owlbeasts|r and use the |T133841:0|t[Wildkin Muisek Vessel] near their corpses
>>|cRXP_WARN_This item has a cooldown and only works on one corpse at a time, even if they're stacked|r
.complete 7829,1 
.complete 3123,1 
.mob Savage Owlbeast
step
#label SkylordPlume
#loop
.goto The Hinterlands,50.60,53.00,0
.goto The Hinterlands,53.00,56.60,60,0
.goto The Hinterlands,54.00,54.20,60,0
.goto The Hinterlands,56.00,51.60,60,0
.goto The Hinterlands,58.60,53.00,60,0
.goto The Hinterlands,61.00,54.80,60,0
.goto The Hinterlands,64.20,56.60,60,0
.goto The Hinterlands,63.80,53.60,60,0
.goto The Hinterlands,64.60,48.60,60,0
.goto The Hinterlands,66.60,42.60,60,0
.goto The Hinterlands,61.40,42.40,60,0
.goto The Hinterlands,60.60,48.20,60,0
.goto The Hinterlands,59.80,52.20,60,0
.goto The Hinterlands,57.00,50.20,60,0
.goto The Hinterlands,54.60,47.00,60,0
.goto The Hinterlands,51.00,44.00,60,0
.goto The Hinterlands,50.60,53.00,60,0
>>Find and kill a |cRXP_ENEMY_Razorbeak Skylord|r. Loot it for its |cRXP_LOOT_Plume|r
.complete 7830,1 
.unitscan Razorbeak Skylord
step
#label Stalkers
#loop
.goto The Hinterlands,70.60,63.40,0
.goto The Hinterlands,70.60,63.40,60,0
.goto The Hinterlands,70.60,57.40,60,0
.goto The Hinterlands,73.20,52.60,60,0
.goto The Hinterlands,69.00,50.60,60,0
.goto The Hinterlands,69.00,45.60,60,0
.goto The Hinterlands,66.60,48.00,60,0
.goto The Hinterlands,63.20,47.80,60,0
.goto The Hinterlands,61.60,41.80,60,0
.goto The Hinterlands,58.60,46.80,60,0
.goto The Hinterlands,56.20,46.80,60,0
.goto The Hinterlands,54.40,44.00,60,0
.goto The Hinterlands,53.60,49.20,60,0
.goto The Hinterlands,53.20,55.60,60,0
.goto The Hinterlands,55.60,51.40,60,0
.goto The Hinterlands,58.60,53.20,60,0
.goto The Hinterlands,60.80,55.60,60,0
.goto The Hinterlands,64.00,54.60,60,0
.goto The Hinterlands,66.60,57.20,60,0
.goto The Hinterlands,68.40,62.60,60,0
>>Finish killing |cRXP_ENEMY_Silvermane Stalkers|r
.complete 7828,1 
.mob Silvermane Stalker
step
#loop
.goto The Hinterlands,65.71,57.44,0
.goto The Hinterlands,65.71,57.44,60,0
.goto The Hinterlands,63.13,48.55,60,0
.goto The Hinterlands,61.16,41.89,60,0
.goto The Hinterlands,54.55,51.54,60,0
.goto The Hinterlands,51.88,45.87,60,0
.goto The Hinterlands,55.35,43.69,60,0
.goto The Hinterlands,64.26,47.92,60,0
.goto The Hinterlands,68.40,62.60,60,0
.use 9618 >>Kill |cRXP_ENEMY_Savage Owlbeasts|r and use the |T133841:0|t[Wildkin Muisek Vessel] near their corpses
>>|cRXP_WARN_This item has a cooldown and only works on one corpse at a time, even if they're stacked|r
.complete 7829,1 
.complete 3123,1 
.mob Savage Owlbeast
step
.goto The Hinterlands,86.30,59.00
>>Swim to the island to the far east, then click |cRXP_PICK_Rinji's Secret|r
.turnin 2742 >>Turn in Rin'ji is Trapped!
.accept 2782 >>Accept Rin'ji's Secret
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >>Travel to Revantusk Village
step
.goto The Hinterlands,77.20,80.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slagtree|r
.turnin 7839 >>Turn in Vilebranch Hooligans
.target Smith Slagtree
step
.goto The Hinterlands,78.80,78.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yayo'jin|r
.turnin 7844 >>Turn in Cannibalistic Cousins
.target Mystic Yayo'jin
step
#label JinthaAlor
.goto The Hinterlands,79.08,78.99
>>Click the |cRXP_PICK_Call to Arms!|r wanted poster by the hut
>>|cRXP_WARN_These are 5-man group quests|r
.accept 7861 >>Accept Wanted: Vile Priestess Hexx and Her Minions
.accept 7862 >>Accept Job Opening: Guard Captain of Revantusk Village
.group
step
.goto The Hinterlands,79.10,79.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Markhor|r
.turnin 7828 >>Turn in Stalking the Stalkers
.turnin 7829 >>Turn in Hunt the Savages
.turnin 7830 >>Turn in Avenging the Fallen
.target Huntsman Markhor
step
#label HinterlandsEnd
.goto The Hinterlands,79.30,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Otho|r
.turnin 7841 >>Turn in Message to the Wildhammer
.target Otho Moji'ko
step
.goto The Hinterlands,79.30,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Otho|r
.accept 7842 >>Accept Another Message to the Wildhammer
.turnin 7842 >>Turn in Another Message to the Wildhammer
.target Otho Moji'ko
.itemcount 4589,10
step
#hardcore
.goto The Hinterlands,79.30,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Otho|r
>>|cRXP_WARN_Be aware that performing this quest WILL flag you for PVP in a densely-populated Alliance area|r
.accept 7843 >>Accept Another Message to the Wildhammer
.target Otho Moji'ko
.addquestitem 4589,7842
step
#softcore
.goto The Hinterlands,79.30,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Otho|r
.accept 7843 >>Accept Another Message to the Wildhammer
.target Otho Moji'ko
.addquestitem 4589,7842
step
.goto The Hinterlands,78.20,81.30,15,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lard|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Lard
.subzoneskip 3317,1
.group
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Markhor|r and |cRXP_FRIENDLY_Torntusk|r
>>|cRXP_WARN_These are 5-man group quests|r
.accept 7849 >>Accept Separation Anxiety
.target +Huntsman Markhor
.goto The Hinterlands,79.16,79.53
.accept 7845 >>Accept Kidnapped Elder Torntusk!
.accept 7850 >>Accept Dark Vessels
.target +Primal Torntusk
.goto The Hinterlands,78.20,81.17
.group
step
#completewith Vilebranchs
>>Loot the |cRXP_LOOT_Vessels of Tainted Blood|r on the ground
>>|cRXP_WARN_Don't worry about focusing on this; you can finish it in later steps|r
.complete 7850,1 
.isOnQuest 7850
.group 5
step
#completewith ReKey
>>Kill |cRXP_ENEMY_Vilebranch Trolls|r
>>|cRXP_WARN_Don't worry about focusing on this; you can finish it in later steps|r
.complete 7862,4 
.mob +Vilebranch Soul Eater
.complete 7862,1 
.mob +Vilebranch Berserker
.complete 7862,3 
.mob +Vilebranch Blood Drinker
.complete 7862,2 
.mob +Vilebranch Shadow Hunter
.isOnQuest 7862
.group 5
step
.goto The Hinterlands,62.1,75.3
>>Loot the |cRXP_PICK_Pile of Bones|r at the center of the pit for |cRXP_LOOT_Huntsman Malkhor's Bones|r
.complete 7849,2 
.isOnQuest 7849
.group 5
step
.goto The Hinterlands,58.6,64.9
>>Loot the |cRXP_PICK_Pile of Skulls|r for |cRXP_LOOT_Huntsman Malkhor's Skull|r
.complete 7849,1 
.isOnQuest 7849
.group 5
step
.goto The Hinterlands,59.6,77.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Torntusk|r
.turnin 7845 >>Turn in Kidnapped Elder Torntusk!
.accept 7846 >>Accept Recover the Key!
.target Elder Torntusk
.isOnQuest 7845
.group
step
.goto The Hinterlands,59.6,77.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Torntusk|r
.accept 7846 >>Accept Recover the Key!
.target Elder Torntusk
.isQuestTurnedIn 7845
.group
step
#completewith Hitahya
.goto The Hinterlands,57.26,85.98,20 >>|cRXP_WARN_You can get to the upper level (without fighting through many guards) by doing a jump skip|r
.link https://www.youtube.com/watch?v=UPiNtMem9tM >> Click here for a video guide
.group
step
#completewith Hitahya
>>Kill |cRXP_ENEMY_Vilebranch Aman'zasi Guards|r
.complete 7861,2 
.mob Vilebranch Aman'zasi Guard
.isOnQuest 7861
.group
step
.goto The Hinterlands,59.3,78.2
>>Kill |cRXP_ENEMY_Vile Priestess Hex|r
>>|cRXP_WARN_Be extremely cautious of her Hex ability, which she can potentially spam|r
.complete 7861,1 
.unitscan Vile Priestess Hexx
.isOnQuest 7861
.group 5
step
#completewith next
>>Loot the |cRXP_LOOT_Ancient Egg|r
.complete 4787,1 
.isQuestTurnedIn 3527
.group 5
step
#label Hitahya
.goto The Hinterlands,57.8,86.8
>>Kill |cRXP_ENEMY_Hitah'ya the Keeper|r. Loot her for her |cRXP_LOOT_Key|r
.complete 7846,1 
.unitscan Hitah'ya the Keeper
.isOnQuest 7846
.group 5
step
.goto The Hinterlands,57.60,86.79
>>Loot the |cRXP_LOOT_Ancient Egg|r
.complete 4787,1 
.isQuestTurnedIn 3527
.group 5
step
.goto The Hinterlands,59.6,77.9
>>Kill |cRXP_ENEMY_Vilebranch Aman'zasi Guards|r
.complete 7861,2 
.mob Vilebranch Aman'zasi Guard
.isOnQuest 7846
.group 5
step
.goto The Hinterlands,59.6,77.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Torntusk|r
.turnin 7846 >>Turn in Recover the Key!
.accept 7847 >>Accept Return to Primal Torntusk
.target Elder Torntusk
.isQuestComplete 7846
.group
step
#label ReKey
.goto The Hinterlands,59.6,77.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Torntusk|r
.accept 7847 >>Accept Return to Primal Torntusk
.target Elder Torntusk
.isQuestTurnedIn 7846
.group
step
#label Vilebranchs
.goto The Hinterlands,60.6,65.4
>>Finish killing |cRXP_ENEMY_Vilebranch Trolls|r
>>|cRXP_ENEMY_Soul Eaters|r |cRXP_WARN_are on the 2nd level.|r |cRXP_ENEMY_Berserkers|r |cRXP_WARN_are on the 3rd level.|r |cRXP_ENEMY_Blood Drinkers|r |cRXP_WARN_and|r |cRXP_ENEMY_Shadow Hunters|r |cRXP_WARN_are on the 4th and 5th levels|r
.complete 7862,4 
.mob +Vilebranch Soul Eater
.complete 7862,1 
.mob +Vilebranch Berserker
.complete 7862,3 
.mob +Vilebranch Blood Drinker
.complete 7862,2 
.mob +Vilebranch Shadow Hunter
.isOnQuest 7862
.group 5
step
.goto The Hinterlands,67.9,73.4
>>Finish looting the |cRXP_LOOT_Vessels of Tainted Blood|r on the ground
.complete 7850,1 
.isOnQuest 7850
.group 5
step
#completewith FlyRuneCloth
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >>Travel to Revantusk Village
.group
step
#completewith TorntuskTIs
.goto The Hinterlands,77.76,81.51,6,0
.goto The Hinterlands,77.64,81.92,6,0
.goto The Hinterlands,77.85,82.14,6,0
.goto The Hinterlands,78.09,81.74,4 >>Go upstairs
.group
step
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
.turnin 7862 >>Turn in Job Opening: Guard Captain of Revantusk Village
.turnin 7861 >>Turn in Wanted: Vile Priestess Hexx and Her Minions
.target Primal Torntusk
.isQuestComplete 7862
.isQuestComplete 7861
.group
step
#optional
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
.turnin 7861 >>Turn in Wanted: Vile Priestess Hexx and Her Minions
.target Primal Torntusk
.isQuestComplete 7861
.group
step
#label TorntuskTIs
#optional
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
.turnin 7862 >>Turn in Job Opening: Guard Captain of Revantusk Village
.target Primal Torntusk
.isQuestComplete 7862
.group
step
.goto The Hinterlands,79.16,79.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Markhor|r
.turnin 7849 >>Turn in Separation Anxiety
.target Huntsman Markhor
.isQuestComplete 7849
.group
step
.goto The Hinterlands,78.20,81.30,15,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lard|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Lard
.subzoneskip 3317,1
.group
step
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
.turnin 7845 >>Turn in Kidnapped Elder Torntusk!
.turnin 7850 >>Turn in Dark Vessels
.turnin 7847 >>Turn in Return to Primal Torntusk
.target Primal Torntusk
.isOnQuest 7845
.isQuestComplete 7850
.isOnQuest 7847
.group
step
#optional
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
.turnin 7845 >>Turn in Kidnapped Elder Torntusk!
.target Primal Torntusk
.isOnQuest 7845
.group
step
#optional
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
.turnin 7850 >>Turn in Dark Vessels
.target Primal Torntusk
.isQuestComplete 7850
.group
step
#optional
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
.turnin 7847 >>Turn in Return to Primal Torntusk
.target Primal Torntusk
.isOnQuest 7847
.group
step
#season 0,1
#xprate >1.99
#completewith TrainRuneclothBandage
.goto The Hinterlands,81.70,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorkas|r
>>|cRXP_WARN_If you do not have the Hammerfall flight path, fly to Tarren Mill and run there instead|r
.fly Hammerfall >> Fly to Hammerfall
.target Gorkas
.zoneskip Arathi Highlands
.skill firstaid,<260,1
step
#season 0,1
#xprate <1.99
#label FlyRuneCloth
#completewith TrainRuneclothBandage
.goto The Hinterlands,81.70,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorkas|r
>>|cRXP_WARN_If you do not have the Hammerfall flight path, fly to Tarren Mill and run there instead|r
.fly Hammerfall >> Fly to Hammerfall
.target Gorkas
.zoneskip Arathi Highlands
.skill firstaid,<260,1
step
#season 0,1
#label TrainRuneclothBandage
.goto Arathi Highlands,73.41,36.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gregory Victor|r
.train 18629 >> Train Runecloth Bandage
.target Doctor Gregory Victor
.skill firstaid,<260,1
step
#season 0,1
#optional
#completewith VenomBottleTurnin
.goto Arathi Highlands,73.10,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urda|r
.fly Tarren Mill >>Fly to Tarren Mill
.target Urda
.zoneskip Arathi Highlands,1
step
#season 0,1
#completewith VenomBottleTurnin
.goto The Hinterlands,81.70,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorkas|r
.fly Tarren Mill >>Fly to Tarren Mill
.target Gorkas
.zoneskip The Hinterlands,1
step
#season 0,1
#label VenomBottleTurnin
.goto Hillsbrad Foothills,61.53,19.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 2933 >> Turn in Venom Bottles
.accept 2934 >>Accept Undamaged Venom Sac
.target Apothecary Lydon
step
#season 0,1
#completewith AtalalExile
.goto Hillsbrad Foothills,86.60,29.49,30,0
.goto The Hinterlands,9.7,55.8
.zone The Hinterlands >>Take the mountain path northeast of Durnholde Keep into The Hinterlands
step
#season 2
#optional
.maxlevel 53,IncursionsComplete2
step << skip
#season 2
#completewith HintINCpickups
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly Revantusk Village >> Fly to Revantusk Village
.target Michael Garrett
.zoneskip Hillsbrad Foothills
.zoneskip The Hinterlands
step
#season 2
#completewith next
.goto The Hinterlands,60.81,37.86,20 >> Head to the bridge leading to Seradane
>>|cRXP_WARN_Check your questlog for orphaned/unnecessary quests and abandon them if needed. You will need 10 questlog slots for the incursion quests coming up|r
step
#season 2
#label HintINCpickups
.goto The Hinterlands,61.39,34.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Korlian|r
.accept 82068 >> Accept Fight the Nightmare Incursions
.accept 81789 >> Accept Hinterlands Mission IV: Dragon Intelligence
.accept 81817 >> Accept Hinterlands Mission V: Turtle Intelligence
.accept 81820 >> Accept Hinterlands Mission VI: Moonkin Intelligence
.accept 81826 >> Accept Hinterlands Mission VII: Recover Star-Touched Dragonegg
.accept 81830 >> Accept Hinterlands Mission VIII: Recover Elunar Relic
.accept 81832 >> Accept Hinterlands Mission IX: Recover Dreampearl
.accept 81850 >> Accept Hinterlands Mission XVI: Rescue Elinar Shadowdrinker
.accept 81851 >> Accept Hinterlands Mission XVII: Rescue Serlina Starbright
.accept 81852 >> Accept Hinterlands Mission XVII: Rescue Veanna Cloudsleeper
.target Field Captain Korlian
step
#season 2
.goto The Hinterlands,61.31,34.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Alandra|r
.vendor >>|cRXP_BUY_Buy up to 5|r |T236885:0|t[Major Healing Potions] |cRXP_BUY_from her if you want|r
>>|cRXP_WARN_These can only be used within the incursion zones|r
.target Quartermaster Alandra
step
#season 2
.goto The Hinterlands,61.37,34.63
.aura 444760 >>Enter the |cRXP_PICK_Emerald Dream Portal|r
step
#season 2
#completewith next
.goto The Hinterlands,57.44,38.76,20,0
.subzone 351 >> Travel to Skulk Rock
>>|cRXP_WARN_Avoid running into the |cRXP_ENEMY_Unstable Wisps|r or they will explode dealing around 700 damage to you|r
step
#season 2
#completewith IReport1
.goto The Hinterlands,57.49,39.17,25 >>Enter the cave
step
#season 2
.goto The Hinterlands,57.86,43.22
>>|cRXP_WARN_Go up the ramp to the right|r
>>Open the |cRXP_PICK_Humming Box|r. Loot it for the |T133247:0|t[|cRXP_LOOT_Elunar Relic|r]
.complete 81830,1 
step
#label IReport1
#season 2
.goto The Hinterlands,56.63,43.35
>>Clear to the large room at the bottom of the cave, talk to |cRXP_FRIENDLY_Dreamwarden Valori|r to receive his |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
>>|cRXP_WARN_He is stealthed right next to the|r |cRXP_ENEMY_Doomkin|r |cRXP_WARN_boss. Try to quickly get the intelligence and run away, don't fight the boss|r
>>|cRXP_WARN_You are likely to die doing this quest due to the|r |cRXP_ENEMY_Doomkins|r |cRXP_WARN_high damage but the runback is very short|r
.complete 81820,1 
.target Dreamwarden Valori
.skipgossip
step
#season 2
#completewith next
.goto The Hinterlands,57.44,38.76,20 >>Exit the cave
.subzoneskip 351,1
step
#season 2
.goto The Hinterlands,57.29,42.80
.gossipoption 122151 >>Climb to the top of the Hill. Talk to |cRXP_FRIENDLY_Veanna Cloudsleeper|r laying on the ground. She should start following you around
>>|cRXP_WARN_If she's not there that means someone else is escorting her, skip this step if u can't find her|r
.target Veanna Cloudsleeper
step
#season 2
.goto The Hinterlands,53.58,39.10
.gossipoption 122141 >> Talk to |cRXP_FRIENDLY_Elianar Shadowdrinker|r laying on the ground. He should start following you around
>>|cRXP_WARN_You can talk to him through the back side of the wooden fence without having to go inside|r
>>|cRXP_WARN_If he's not there that means someone else is escorting him, skip this step if u can't find him|r
.target Elianar Shadowdrinker
step
#season 2
#sticky
#completewith next
+|cRXP_WARN_Be careful, if you die all of escort NPCs following you will return to where you picked them up and you will have to find them again|r
step
#season 2
.goto The Hinterlands,46.75,41.23
>>Talk to |cRXP_FRIENDLY_Dreamwarden Laninar|r stealthed in the marked location to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
>>|cRXP_WARN_Don't fight any of the elite dragonkin in the area. If you pull one just CC it, get the report and run away|r
.complete 81789,1 
.target Dreamwarden Laninar
.skipgossip
step
#season 2
>>Loot the |T236997:0|t[|cRXP_LOOT_Star-Touched Dragonegg|r] from inside the tent
>>|cRXP_WARN_Try to go around the outer edge of the walls to avoid pulling any of the elite dragonkin in the area. You can loot the egg through the back of the tent without having to fight any elites|r
.goto 1425/0,-3320.800,474.500
.complete 81826,1 
step
#season 2
.goto The Hinterlands,42.31,31.43
.goto The Hinterlands,60.67,38.32,150 >> Head west into the mountains untill your screen starts glowing green. You will be teleported closer to the starting location
>>|cRXP_WARN_Don't worry, all the escort NPCs will follow you eventually|r
step
#season 2
.goto The Hinterlands,71.10,48.01
.gossipoption 122149 >>Enter the small wooden fort. Talk to |cRXP_FRIENDLY_Serlina Starbright|r laying on the ground. She should start following you around
>>|cRXP_WARN_If she's not there that means someone else is escorting her, skip this step if u can't find her|r
.target Serlina Starbright
step
#season 2
>>Enter the ruins of Shaol'watha and loot a |T237371:0|t[|cRXP_LOOT_Dreampearl|r]
>>|cRXP_WARN_Be careful not to aggro the boss|r |cRXP_ENEMY_Ghamoo-Raja|r
.goto 1425/0,-4355.400,79.400
.complete 81832,1 
step
#season 2
.goto The Hinterlands,73.16,54.08
>>Talk to |cRXP_FRIENDLY_Dreamwarden Sanathel|r stealthed in the marked location to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
.complete 81817,1 
.target Dreamwarden Sanathel
.skipgossip
step
#season 2
.goto The Hinterlands,74.02,56.13
.goto The Hinterlands,60.67,38.32,150 >> Head east untill your screen starts glowing green. You will be teleported closer to the starting location
>>|cRXP_WARN_Don't worry, all the escort NPCs will follow you eventually|r
step
#season 2
.goto The Hinterlands,62.25,22.88
>>Travel toward the bottom of the |cRXP_PICK_Emerald Dream Portal|r
>>|cRXP_WARN_If |cRXP_FRIENDLY_Maseara|r, |cRXP_FRIENDLY_Alyssian|r or |cRXP_FRIENDLY_Doran|r is no longer following you, go back and talk to them again|r
.complete 81850,1 
.mob +Elianar Shadowdrinker
.complete 81851,1 
.mob +Serlina Starbright
.complete 81852,1 
.mob +Veanna Cloudsleeper
step
#season 2
.goto The Hinterlands,61.37,34.63
.aura -444760 >>Exit the |cRXP_PICK_Emerald Dream Portal|r
step
#season 2
.goto The Hinterlands,61.39,34.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Korlian|r
.turnin 82068 >> Turn in Fight the Nightmare Incursions
.turnin 81789 >> Turn in Hinterlands Mission IV: Dragon Intelligence
.turnin 81817 >> Turn in Hinterlands Mission V: Turtle Intelligence
.turnin 81820 >> Turn in Hinterlands Mission VI: Moonkin Intelligence
.turnin 81826 >> Turn in Hinterlands Mission VII: Recover Star-Touched Dragonegg
.turnin 81830 >> Turn in Hinterlands Mission VIII: Recover Elunar Relic
.turnin 81832 >> Turn in Hinterlands Mission IX: Recover Dreampearl
.turnin 81850 >> Turn in Hinterlands Mission XVI: Rescue Elinar Shadowdrinker
.turnin 81851 >> Turn in Hinterlands Mission XVII: Rescue Serlina Starbright
.turnin 81852 >> Turn in Hinterlands Mission XVII: Rescue Veanna Cloudsleeper
.target Field Captain Korlian
step
#season 2
#optional
#label IncursionsComplete2
step
#softcore
.goto The Hinterlands,14.36,48.03
.use 19036 >>|cRXP_WARN_Place the|r |T135125:0|t[Final Message to the Wildhammer] |cRXP_WARN_near the well in Wildhammer|r
>>|cRXP_WARN_Be careful! Using this item will PVP flag you|r
.complete 7843,1 
step
#hardcore
.goto The Hinterlands,14.36,48.03
.use 19036 >>|cRXP_WARN_Place the|r |T135125:0|t[Final Message to the Wildhammer] |cRXP_WARN_near the well in Wildhammer|r
>>|cRXP_WARN_Be careful! Using this item will PVP flag you for 5 minutes! Skip this quest if you want for safety|r
.complete 7843,1 
step
.goto The Hinterlands,26.61,48.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilveradin|r
.turnin 77 >>Turn in A Sticky Situation
.accept 81 >>Accept Ripple Delivery
.target Gilveradin Sunchaser
step
#season 0,1
#completewith AtalalExile
.goto The Hinterlands,35.9,63.9,40,0
.subzone 353 >>Travel southeast to Shadra'Alor
step
#season 0,1
#completewith AtalalExile
>>Kill |cRXP_ENEMY_Witherbark Broodguards|r. Loot them for an |cRXP_LOOT_Undamaged Venom Sac|r
>>|cRXP_WARN_The|r |cRXP_LOOT_Undamaged Venom Sac|r |cRXP_WARN_has a 30 minute duration, so turn it in ASAP|r
.complete 2934,1 
.mob Witherbark Broodguard
step
.goto The Hinterlands,33.70,75.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atal'ai Exile|r
.turnin 1429 >>Turn in The Atal'ai Exile
.accept 1444 >>Accept Return to Fel'Zerul
.target Atal'ai Exile
.isOnQuest 1429
step
#optional
#label AtalalExile
.goto The Hinterlands,33.70,75.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atal'ai Exile|r
.accept 1444 >>Accept Return to Fel'Zerul
.target Atal'ai Exile
.isQuestTurnedIn 1429
step
#season 0,1
#loop
.goto The Hinterlands,33.19,69.66,0
.goto The Hinterlands,36.28,68.43,60,0
.goto The Hinterlands,34.16,67.00,60,0
.goto The Hinterlands,33.19,69.66,60,0
.goto The Hinterlands,30.66,69.71,60,0
.goto The Hinterlands,32.08,73.36,60,0
.goto The Hinterlands,35.48,74.42,60,0
.goto The Hinterlands,35.32,70.90,60,0
.goto The Hinterlands,35.79,64.35,60,0
.goto The Hinterlands,33.19,69.66,60,0
>>Kill |cRXP_ENEMY_Witherbark Broodguards|r. Loot them for an |cRXP_LOOT_Undamaged Venom Sac|r
>>|cRXP_WARN_The|r |cRXP_LOOT_Undamaged Venom Sac|r |cRXP_WARN_has a 30 minute duration, so turn it in ASAP|r
.complete 2934,1 
.mob Witherbark Broodguard
step
.goto The Hinterlands,49.30,37.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
.accept 485 >>Accept Find OOX-09/HL!
.turnin 485 >>Turn in Find OOX-09/HL!
.target Homing Robot OOX-09/HL
.itemcount 8704,1 
.use 8704
step
.goto The Hinterlands,49.35,37.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r to start the escort
.accept 836,1 >>Accept Rescue OOX-09/HL!
.target Homing Robot OOX-09/HL
.isQuestTurnedIn 485
step
.goto The Hinterlands,79.47,61.21
>>Escort |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r to the coast
>>|cRXP_WARN_A pack of 3 level 46|r |cRXP_ENEMY_Marauding Owlbeasts|r |cRXP_WARN_will spawn south of Skulk Rock, on the road. They enrage at low HP, so try to kill one at a time|r
>>|cRXP_WARN_A pack of 3 level 47|r |cRXP_ENEMY_Vilebranch Ambushers|r |cRXP_WARN_will spawn in the woods north of Jintha'Alor. They execute when you're below 20% health. Use long CC if you can, and have the chicken tank one or two of them until it's around half HP|r
.complete 836,1 
.target Homing Robot OOX-09/HL
.mob Marauding Owlbeast
.unitscan Vilebranch Ambusher
.isQuestTurnedIn 485
step
.goto The Hinterlands,86.30,59.00
>>Swim to the island to the far east, then click |cRXP_PICK_Rinji's Secret|r
.turnin 2742 >>Turn in Rin'ji is Trapped!
.accept 2782 >>Accept Rin'ji's Secret
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >>Travel to Revantusk Village
step
.goto The Hinterlands,79.30,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Otho Moji'ko|r
.turnin 7843 >>Turn in The Final Message to the Wildhammer
.target Otho Moji'ko
.isQuestComplete 7843
step << Hunter
#completewith next
.goto The Hinterlands,79.10,79.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Markhor|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Saltwater Snapjaw|r shortly
.target Huntsman Markhor
step << Hunter
#loop
.goto The Hinterlands,80.00,58.80,0
.goto The Hinterlands,80.00,58.80,50,0
.goto The Hinterlands,77.20,61.80,50,0
.goto The Hinterlands,77.20,64.20,50,0
.goto The Hinterlands,74.80,68.60,50,0
.goto The Hinterlands,75.60,72.00,50,0
.goto The Hinterlands,78.20,69.20,50,0
.goto The Hinterlands,78.00,64.20,50,0
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Saltwater Snapjaw|r to tame it|r 
.train 17267 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 7)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Saltwater Snapjaw
.xp <49,1
step
#season 0,1
#completewith DamagedVenonSecTurnin
.goto The Hinterlands,81.70,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorkas|r
.fly Tarren Mill >> Fly to Tarren Mill
.target Gorkas
.zoneskip Hillsbrad Foothills
step
#season 0,1
.goto Hillsbrad Foothills,61.53,19.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
>>|cRXP_WARN_The|r |cRXP_LOOT_Undamaged Venom Sac|r |cRXP_WARN_has a 30 minute duration, so turn it in ASAP|r
.turnin 2934 >>Turn in Undamaged Venom Sac
.target Apothecary Lydon
step << Troll
#season 0,1
.goto Hillsbrad Foothills,61.53,19.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 2935 >> Accept Consult Master Gadrin
.target Apothecary Lydon
.skill riding,75,1
.isQuestTurnedIn 2934
step
#season 2
#xprate >1.99
#completewith TrainRuneclothBandage2
.goto The Hinterlands,81.70,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorkas|r
>>|cRXP_WARN_If you do not have the Hammerfall flight path, fly to Tarren Mill and run there instead|r
.fly Hammerfall >> Fly to Hammerfall
.target Gorkas
.skill firstaid,<260,1
step
#season 2
#xprate <1.99
#completewith TrainRuneclothBandage2
.goto The Hinterlands,81.70,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorkas|r
>>|cRXP_WARN_If you do not have the Hammerfall flight path, fly to Tarren Mill and run there instead|r
.fly Hammerfall >> Fly to Hammerfall
.target Gorkas
.skill firstaid,<260,1
step
#season 2
#label TrainRuneclothBandage2
.goto Arathi Highlands,73.41,36.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gregory Victor|r
.train 18629 >> Train Runecloth Bandage
.target Doctor Gregory Victor
.skill firstaid,<260,1
step
#season 2
#optional
#completewith HinterlandsSkip
.goto Arathi Highlands,73.10,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urda|r
.fly Undercity >>Fly to Undercity
.target Urda
.zoneskip Arathi Highlands,1
step
#season 2
#completewith HinterlandsSkip
.goto The Hinterlands,81.70,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorkas|r
.fly Undercity >>Fly to Undercity
.target Gorkas
.zoneskip The Hinterlands,1
step
#optional
#label DamagedVenonSecTurnin
step
#season 0
#sticky
#completewith EnterMaraudon
.subzone 2100,2 >> Now you should be looking for a group to Maraudon
.dungeon MARA
step << !Mage
#season 0,1
#completewith HinterlandsSkip
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarise|r
.fly Undercity>> Fly to Undercity
.target Zarise
.zoneskip Undercity
step << Mage
#completewith next
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
.zoneskip Undercity
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannah|r
.vendor >>|cRXP_BUY_Buy at least four|r |cRXP_BUY_Rune of Teleportation|r |cRXP_BUY_from her|r
.collect 17031,4 
.target Hannah Akeley
step << Troll
#completewith next
.abandon 2935 >> Abandon Consult Master Gadrin IF you already have a mount. If you don't have a mount, then you can turn this quest in when you get one
step
#xprate <1.5
#era
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
>>|cRXP_BUY_Buy the following from the Auction House|r
>>|cRXP_WARN_Deposit them onto the bank afterwards!|r
.collect 8391,5,2581,1 
.collect 8392,6,2581,1 
.collect 8393,6,2581,1 
.collect 8396,14,2581,1 
.collect 8394,11,2581,1 
.target Auctioneer Rhyker
step
.goto Undercity,73.50,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oran|r
.turnin 2995 >>Turn in Lines of Communication
.turnin 2782 >>Turn in Rin'ji's Secret
.accept 8273 >>Accept Oran's Gratitude
.turnin 8273 >>Turn in Oran's Gratitude
.target Oran Snakewrithe
step
#completewith next
.goto Undercity,47.20,59.69,0
.goto Undercity,47.20,59.69,12,0
.goto Undercity,43.55,68.11,12,0
.goto Undercity,45.20,71.67,12 >>Travel toward |cRXP_FRIENDLY_Cuely|r
step
.goto Undercity,48.50,71.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cuely|r
.accept 3568 >>Accept Seeping Corruption
.target Chemist Cuely
step
#optional
.abandon 7862 >> Abandon Job Opening: Guard Captain of Revantusk Village
.isOnQuest 7862
step
#optional
.abandon 7861 >> Abandon Wanted: Vile Priestess Hexx and Her Minions
.isOnQuest 7861
step
#optional
.abandon 7849 >> Abandon Separation Anxiety
.isOnQuest 7849
step
#optional
.abandon 7845 >> Abandon Kidnapped Elder Torntusk!
.isOnQuest 7845
step
#optional
.abandon 7850 >> Abandon Dark Vessels
.isOnQuest 7850
step
#optional
.abandon 7846 >> Abandon Recover the Key!
.isOnQuest 7846
step
#optional
#label HinterlandsSkip
step
#season 2
#sticky
#completewith EnterMaraudon
.subzone 2100,2 >> Now you should be looking for a group to Maraudon
.dungeon MARA
step
.hs >>Hearth to Tanaris
.use 6948
.cooldown item,6948,>0
.bindlocation 976,1
.subzoneskip 976
step
#optional
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Tanaris >> Fly to Tanaris
.zoneskip Orgrimmar,1
.target Doras
.subzoneskip 976
.cooldown item,6948,<0
step
.goto Tanaris,51.10,26.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2641 >>Turn in Sprinkle's Secret Ingredient
.accept 2661 >>Accept Delivery for Marin
.target Sprinkle
.isQuestComplete 2641
step
#optional
.goto Tanaris,51.10,26.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.accept 2661 >>Accept Delivery for Marin
.target Sprinkle
.isQuestTurnedIn 2641
step
.goto Tanaris,51.80,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin|r
.turnin 2661 >>Turn in Delivery for Marin
.accept 2662 >>Accept Noggenfogger Elixir
.turnin 2662 >>Turn in Noggenfogger Elixir
.target Marin Noggenfogger
.isQuestTurnedIn 2641
step
.goto Tanaris,51.80,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin|r
>>|cRXP_BUY_Buy 2 or more additional stacks of|r |T134863:0|t[Noggenfogger Elixir] |cRXP_BUY_from him|r
>>|T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_can be used to get the|r |T135992:0|t[Slow Fall] |cRXP_WARN_buff which will be needed later in the guide. Put the additional stacks on the bank|r
.collect 8529,60
.target Marin Noggenfogger
.isQuestTurnedIn 2662
.subzoneskip 976,1
step
#optional
.abandon 2641 >>Abandon Sprinkle's Secret Ingredient
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 4787 >> Turn in The Ancient Egg
.target Yeh'kinya
.isQuestComplete 4787
.dungeon ZF
step
#completewith MaraPickups
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Shadowprey Village >>Fly to Shadowprey Village
.target Bulkrek Ragefist
.zoneskip Feralas
.zoneskip Desolace
.dungeon MARA
step
.goto Desolace,23.22,70.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vark|r at the top of the hut
.accept 7029 >> Accept Vyletongue Corruption
.target Vark Battlescar
.dungeon MARA
step
.goto Desolace,26.87,77.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selendra|r
.accept 7064 >> Accept Corruption of Earth and Seed
.target Selendra
.dungeon MARA
step
#label MaraPickups
#loop
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,50.48,86.66,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
.accept 7067 >> Accept The Pariah's Instructions
.target Centaur Pariah
.dungeon MARA
step
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
>>|cRXP_WARN_Have a party member share this quest if possible|r
.accept 7028 >> Accept Twisted Evils
.target Willow
.dungeon MARA
step
.goto Desolace,29.89,62.44,0
.goto 1414,38.43,57.97
.zone 1414 >> Travel to Maraudon
.dungeon MARA
step
#completewith EnterMaraudon
>>Kill all |cRXP_ENEMY_Monsters|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
>>|cRXP_WARN_This can be completed OUTSIDE and INSIDE of the Instance. Don't attempt to complete this now|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
>>Kill |cRXP_ENEMY_The Nameless Prophet|r. Loot it for the |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance. |cRXP_ENEMY_The Nameless Prophets|r may be patrolling|r
.collect 17757,1,7067,1 
.mob The Nameless Prophet
.isOnQuest 7067
.dungeon MARA
step
#completewith next
>>Kill |cRXP_ENEMY_Shadowshard Smashers|r and |cRXP_ENEMY_Shadowshard Rumblers|r. Loot them for their |cRXP_LOOT_Shadowshard Fragments|r
>>|cRXP_WARN_These are only found in the Purple section outside of the Instance|r
.complete 7068,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7068
.dungeon MARA
step
#loop
.goto 1414,38.469,57.287,20,0
.goto 1414,38.380,57.376,30,0
.goto 1414,38.469,57.287,0
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Gelk|r
>>Kill |cRXP_ENEMY_Gelk|r. Loot him for the |T134104:0|t[|cRXP_LOOT_Gem of the Second Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17762,1,7067,1 
.use 17757 
.mob Spirit of Gelk
.mob Gelk
.isOnQuest 7067
.dungeon MARA
step
#loop
.goto 1414,38.13,56.90,60,0
.goto 1414,28.76,56.96,60,0
.goto 1414,38.13,56.90,0
>>Kill |cRXP_ENEMY_Shadowshard Smashers|r and |cRXP_ENEMY_Shadowshard Rumblers|r. Loot them for their |cRXP_LOOT_Shadowshard Fragments|r
>>|cRXP_WARN_These are only found in the Purple section outside of the Instance|r
.complete 7068,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7068
.dungeon MARA
step
.goto 1414,38.497,57.721
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Kolk|r
>>Kill |cRXP_ENEMY_Kolk|r. Loot him for the |T134129:0|t[|cRXP_LOOT_Gem of the First Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17761,1,7067,1 
.use 17757 
.mob Spirit of Kolk
.mob Kolk
.isOnQuest 7067
.dungeon MARA
step
.goto 1414,38.77,58.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
.accept 7044 >> Accept Legends of Maraudon
.target Cavindra
.dungeon MARA
step
.goto 1414,38.928,58.354
>>|cRXP_WARN_Use the|r |T134865:0|t[Coated Cerulean Vial] |cRXP_WARN_in the Orange pool|r
.complete 7029,2 
.use 17693 
.isOnQuest 7029
.dungeon MARA
step
#loop
.goto 1414,39.00,58.32,70,0
.goto 1414,39.13,57.68,60,0
.goto 1414,39.25,57.71,20,0
.goto 1414,39.13,57.68,0
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Magra|r
>>Kill |cRXP_ENEMY_Magra|r. Loot him for the |T134135:0|t[|cRXP_LOOT_Gem of the Third Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17763,1,7067,1 
.use 17757 
.mob Spirit of Magra
.mob Magra
.isOnQuest 7067
.dungeon MARA
step
#label EnterMaraudon
.goto 1414,39.266,58.205
.subzone 2100,2 >> Enter the Maraudon Instance through the Orange side
.dungeon MARA
step
#completewith CrystalCarving
>>Kill any |cRXP_ENEMY_Monster|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
#completewith next
>>|cRXP_WARN_Use the|r |T134804:0|t[Filled Cerulean Vial] |cRXP_WARN_on small flowers/plants inside Orange|r
>>Kill the |cRXP_ENEMY_Noxxious Scions|r that are summoned
.complete 7029,1 
.use 17696 
.isOnQuest 7029
.dungeon MARA
step
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Veng|r
>>Kill |cRXP_ENEMY_Veng|r. Loot him for the |T134116:0|t[|cRXP_LOOT_Gem of the Fifth Khan|r]
>>|cRXP_ENEMY_Veng|r |cRXP_WARN_patrols around INSIDE the Maraudon Orange Instance|r
.collect 17765,1,7067,1 
.use 17757 
.mob Spirit of Veng
.mob Veng
.isOnQuest 7067
.dungeon MARA
step
>>|cRXP_WARN_Use the|r |T134804:0|t[Filled Cerulean Vial] |cRXP_WARN_on small flowers/plants inside Orange|r
>>Kill the |cRXP_ENEMY_Noxxious Scions|r that are summoned
.complete 7029,1 
.use 17696 
.isOnQuest 7029
.dungeon MARA
step
>>Kill |cRXP_ENEMY_Noxxion|r. Loot him for the |cRXP_LOOT_Celebrian Rod|r
>>Kill |cRXP_ENEMY_Lord Vyletongue|r. Loot him for the |cRXP_LOOT_Celebrian Diamond|r
>>|cRXP_ENEMY_Noxxion|r |cRXP_WARN_is in the Orange section and |cRXP_ENEMY_Lord Vyletongue|r in the Purple|r
.complete 7044,2 
.mob +Noxxion
.complete 7044,1 
.mob +Lord Vyletongue
.isOnQuest 7044
.dungeon MARA
step
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Maraudos|r
>>Kill |cRXP_ENEMY_Maraudos|r. Loot him for the |T134132:0|t[|cRXP_LOOT_Gem of the Fourth Khan|r]
>>|cRXP_ENEMY_Maraudos|r |cRXP_WARN_patrols around INSIDE the Maraudon Purple Instance|r
.collect 17764,1,7067,1 
.use 17757 
.mob Spirit of Maraudos
.mob Maraudos
.isOnQuest 7067
.dungeon MARA
step
>>|cRXP_WARN_Channel any of the|r |T134129:0|t|T134104:0|t|T134135:0|t|T134132:0|t|T134116:0|t[|cRXP_LOOT_Gems of the Khans|r] |cRXP_WARN_to create the|r |T133277:0|t[|cRXP_LOOT_Amulet of Union|r]
.complete 7067,1 
.use 17761,1
.use 17762,1
.use 17763,1
.use 17764,1
.use 17765,1
.itemcount 17761,1
.itemcount 17762,1
.itemcount 17763,1
.itemcount 17764,1
.itemcount 17765,1
.isOnQuest 7067
.dungeon MARA
step
>>Kill |cRXP_ENEMY_Celebras the Cursed|r then talk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.turnin 7044 >> Turn in Legends of Maraudon
.isQuestComplete 7044
.mob Celebras the Cursed
.target Celebras the Redeemed
.dungeon MARA
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.accept 7046 >> Accept The Scepter of Celebras
.timer 14,Incantation of Celebras Spawning RP
.target Celebras the Redeemed
.isQuestTurnedIn 7044
.dungeon MARA
step
.cast 6477 >> Click the |cRXP_PICK_Incantation of Celebras|r on the ground
.timer 34,The Scepter of Celebras RP
.isQuestTurnedIn 7044
.dungeon MARA
step
>>|cRXP_WARN_Wait out the RP|r
.complete 7046,1 
.isQuestTurnedIn 7044
.dungeon MARA
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.turnin 7046 >> Turn in The Scepter of Celebras
.isQuestTurnedIn 7044
.target Celebras the Redeemed
.dungeon MARA
step
>>Kill |cRXP_ENEMY_Princess Theradras|r
.complete 7064,1 
.mob Princess Theradras
.isOnQuest 7064
.dungeon MARA
step
#label CrystalCarving
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaetar's Spirit|r
.accept 7066 >> Accept Seed of Life
.target Zaetar's Spirit
.dungeon MARA
step
>>Kill any |cRXP_ENEMY_Monster|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
>>|cRXP_WARN_This can be completed OUTSIDE and INSIDE of the Instance|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
#completewith MaraTurnins
.zone Desolace >> Leave the Maraudon instance
.dungeon MARA
step
.goto Desolace,26.87,77.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selendra|r
.turnin 7064 >> Turn in Corruption of Earth and Seed
.target Selendra
.isQuestComplete 7064
.dungeon MARA
step
.goto Desolace,23.22,70.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vark|r at the top of the hut
.turnin 7029 >> Turn in Vyletongue Corruption
.target Vark Battlescar
.isQuestComplete 7029
.dungeon MARA
step
#loop
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,50.48,86.66,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
.turnin 7067 >> Turn in The Pariah's Instructions
.target Centaur Pariah
.isQuestComplete 7067
.dungeon MARA
step
#label MaraTurnins
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
.turnin 7028 >> Turn in Twisted Evils
.target Willow
.isQuestComplete 7028
.dungeon MARA
step
.hs >>Hearth to Tanaris
.use 6948
.bindlocation 976,1
.subzoneskip 976
.dungeon MARA
step
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Dirge Quikcleave
.subzoneskip 976,1
.dungeon MARA
step
.goto Tanaris,52.30,28.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 10695,10687,10688,10689,10690,17760 >>Put the following on the bank:
>>|T134199:0|t[Seed of Life] 
>>|T132594:0|t[Box of Empty Vials] |cRXP_WARN_(or the|r |T132793:0|t[Empty Vials] |cRXP_WARN_if you openend the box)|r
.target Gimblethorn
.dungeon MARA
.isOnQuest 3568
step
.goto Tanaris,52.30,28.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 10695,10687,10688,10689,10690 >>Put the following on the bank:
>>|T132594:0|t[Box of Empty Vials] |cRXP_WARN_(or the|r |T132793:0|t[Empty Vials] |cRXP_WARN_if you openend the box)|r
.target Gimblethorn
.dungeon !MARA
.isOnQuest 3568
step
#xprate >2.09
#optional
.goto Tanaris,52.30,28.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 10695,10687,10688,10689,10690,17760 >>Put the following on the bank:
>>|T134199:0|t[Seed of Life] 
.target Gimblethorn
.dungeon MARA
.isNotOnQuest 3568
step
#xprate <1.5
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Feralas>>Fly to Feralas
.target Bulkrek Ragefist
.zoneskip Feralas
step
#optional
.abandon 7029 >> Abandon Vyletongue Corruption
.isOnQuest 7029
.dungeon MARA
step
#optional
.abandon 7064 >> Abandon Corruption of Earth and Seed
.isOnQuest 7064
.dungeon MARA
step
#optional
.abandon 7067 >> Abandon The Pariah's Instructions
.isOnQuest 7067
.dungeon MARA
step
#optional
.abandon 7028 >> Abandon Twisted Evils
.isOnQuest 7028
.dungeon MARA
step
#optional
.abandon 7068 >> Abandon Shadowshard Fragments
.isOnQuest 7068
.dungeon MARA
step
#optional
.abandon 7044 >> Abandon Legends of Maraudon
.isOnQuest 7044
.dungeon MARA
]]);
