RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 40-50
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 41-43 STV/Swamp of Sorrows
#somname 41-44 STV/Swamp of Sorrows
#next 43-44 Tanaris << !Warlock
#next 43-44 Tanaris/Dustwallow << Warlock
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.goto Ironforge,35.90,60.17
.bankwithdraw 3684,3660,5826,4502 >> Withdraw the following items from your bank:
>>|T134332:0|t[Kravel's Scheme] 
>>|T134116:0|t[Sample Elven Gem] 
>>|T132767:0|t[Perenolde Tiara] (If you have it) 
>>|T132761:0|t[Tomes of Alterac] (If you have it) 
.target Bailey Stonemantle
step << !Druid !Hunter !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,27.18,8.60 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Dink << Mage
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
.xp >42,1 << Hunter
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
.goto Ironforge,70.856,85.839
.trainer >> Ensure your pets |T135850:0|t[Frost Resistance] is maxed
.target Belia Thundergranite
.xp >42,1 << Hunter
step << Hunter
.goto Ironforge,71.6,66.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skolmin Goldfury|r inside, on the upper level
>>|cRXP_BUY_Check if|r |cRXP_FRIENDLY_Skolmin|r |cRXP_BUY_has a|r |T135489:0|t[|cRXP_FRIENDLY_Massive Longbow|r] |cRXP_BUY_in stock (it's a limited supply item, |cRXP_WARN_he won't always have it|r). If he has one, buy it.|r |cRXP_WARN_It is a VERY POWERFUL level 42+ weapon|r
.vendor >> |cRXP_BUY_Restock on|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_if needed|r
>>Skip this step if he doesn't have one
.collect 11307,1 
.target Skolmin Goldfury
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.96
.itemcount 11307,<1 
step
#completewith start
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the tram|r
step
.goto Stormwind City,74.010,30.231
.target Count Remington Ridgewell
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
.turnin 543 >> Turn in The Perenolde Tiara
.isQuestComplete 543
step
.goto Stormwind City,74.182,7.465
.target Milton Sheaf
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
.turnin 542 >> Turn in Return to Milton
.isOnQuest 542
step << Hunter
#sticky
#label PetTrain
.goto 1453,61.576,15.998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r inside
.train 4198 >> Train your pet spells
.target Karrina Mekenda
.xp <42,1
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r inside
.trainer >> Train your class spells
.target Einris Brightspear
.xp <42,1
step
.dungeon RFD
.goto Stormwind City,39.592,27.199
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.turnin 3636 >> Turn in Bring the Light
.target Archbishop Benedictus
.isQuestComplete 3636
step << skip
#era/som
.goto Stormwind City,41.52,64.38
>> Run upstairs and turn in Mazen's Behest
.target Mazen Mac'Nadir
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazen Mac'Nadir|r
.accept 1363 >> Accept Mazen's Behest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Dellis|r
.turnin 1363 >> Turn in Mazen's Behest
.target Acolyte Dellis
.accept 1364 >> Accept Mazen's Behest
step
#completewith next
.goto Stormwind City,37.94,82.52,15 >> Travel towards |cRXP_FRIENDLY_High Sorcerer Andromath|r in the Mage Tower
step
.goto Stormwind City,37.52,81.65
.target High Sorcerer Andromath
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
.accept 1477 >> Accept Vital Supplies
step << Hunter
.goto Stormwind City,50.2,57.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frederick Stover|r inside, on the upper level
>>|cRXP_BUY_Check if|r |cRXP_FRIENDLY_Frederick|r |cRXP_BUY_has a|r |T135489:0|t[|cRXP_FRIENDLY_Massive Longbow|r] |cRXP_BUY_in stock (it's a limited supply item, |cRXP_WARN_he won't always have it|r). If he has one, buy it.|r |cRXP_WARN_It is a VERY POWERFUL level 42+ weapon|r
.vendor >> |cRXP_BUY_Restock on|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_if needed|r
>>Skip this step if he doesn't have one
.collect 11307,1 
.target Frederick Stover
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.96
.itemcount 11307,<1 
step
#ah
.goto Stormwind City,57.06,73.05
.goto Stormwind City,53.612,59.764
+|cRXP_WARN_Check your bank for any missing|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_and buy any that you still need from the Auction House|r
>>|cRXP_WARN_Chapter.1 requires: Pages 1,4,6,8|r
>>|cRXP_WARN_Chapter.2 requires: Pages 10,11,14,16|r
>>|cRXP_WARN_Chapter.3 requires: Pages 18,20,21,24|r
>>|cRXP_WARN_Chapter.4 requires: Pages 25,26,27|r
>>|cRXP_WARN_Place any newly bought Pages into your bank. Skip this step if you aren't able to acquire them|r
.target Newton Burnside
.target Auctioneer Jaxon
step << Warlock
.goto StormwindClassic,52.623,65.701
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
.home >> Set your Hearthstone to Stormwind City
.target Innkeeper Allison
step << Warlock
#completewith next
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Westfall >> Fly to Westfall
.target Dungar Longdrink
step << Warlock
#completewith next
.goto Stranglethorn Vale,35.658,10.808,100 >> Travel to Nesingwary's Expedition in STV
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.accept 193 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
.accept 196 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
step << Warlock
.hs >> Hearth to Stormwind
>>|cRXP_BUY_Buy food/water if needed|r
.zoneskip Stormwind City
step
#label start
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Booty Bay>> Fly to Booty Bay
.target Dungar Longdrink
step
.isQuestComplete 1116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r up stairs
.goto Stranglethorn Vale,26.943,77.207
.turnin 1116 >>Turn in Dream Dust in the Swamp
.target Krazek
step
#optional
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.accept 627 >> Accept Favor for Krazek
.turnin 627 >> Turn in Favor for Krazek
.accept 622 >> Accept Return to Corporal Kaleb
.itemcount 4278,4 
.target Krazek
step
#optional
.isQuestTurnedIn 627
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.accept 622 >> Accept Return to Corporal Kaleb
.target Krazek
step
.goto Stranglethorn Vale,27.000,77.124
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
.accept 209 >> Accept Skullsplitter Tusks
.target Kebok
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 669 >> Turn in Sunken Treasure
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r inside the Inn
.turnin 603 >> Turn in Ansirem's Key
.accept 610 >> Accept "Pretty Boy" Duncan
.target Catelyn the Blade
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 600 >> Accept Venture Company Mining
.accept 621 >> Accept Zanzil's Secret
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 1118 >> Turn in Back to Booty Bay
.timer 6,Back to Booty Bay RP
.isOnQuest 1118
step
.goto Stranglethorn Vale,27.039,77.310
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
.home >> Set your Hearthstone to Booty Bay
.target Innkeeper Skindle
step
.goto Stranglethorn Vale,26.756,76.383
.target Privateer Bloads
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
.accept 617 >> Accept Akiris by the Bundle
step
.goto Stranglethorn Vale,27.782,77.071
.target "Sea Wolf" MacKinley
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.accept 606 >> Accept Scaring Shaky
step
.goto Stranglethorn Vale,28.294,77.592
.target Drizzlik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.accept 628 >> Accept Excelsior
step
.goto Stranglethorn Vale,28.096,76.217
.target First Mate Crazz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
.accept 595 >> Accept The Bloodsail Buccaneers
step
#completewith next
>>Kill |cRXP_ENEMY_"Pretty Boy" Duncan|r. Loot him for |cRXP_LOOT_Catelyn's Blade|r
.complete 610,1
.mob "Pretty Boy" Duncan
step
.goto Stranglethorn Vale,27.278,69.521
>>Click the |cRXP_PICK_Bloodsail Correspondence|r on top of the barrel
.turnin 595 >> Turn in The Bloodsail Buccaneers
.accept 597 >> Accept The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,27.40,69.39
>>Kill |cRXP_ENEMY_"Pretty Boy" Duncan|r. Loot him for |cRXP_LOOT_Catelyn's Blade|r
.complete 610,1
.mob "Pretty Boy" Duncan
step
.goto Stranglethorn Vale,28.096,76.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
.turnin 597 >> Turn in The Bloodsail Buccaneers
.accept 599 >> Accept The Bloodsail Buccaneers
.target First Mate Crazz
step
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r
.turnin 610 >> Turn in "Pretty Boy" Duncan
.accept 611 >> Accept The Curse of the Tides
.target Catelyn the Blade
step << !Warlock
.goto Stranglethorn Vale,26.920,77.347
.target Deeg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
.accept 587 >> Accept Up to Snuff
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 599 >> Turn in The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,28.591,75.899
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.accept 576 >> Accept Keep An Eye Out
.target Dizzy One-Eye
step << Hunter
#completewith BBTurnin
+Remember to equip the |T135489:0|t[Massive Longbow] as soon as you hit level 42
.itemcount 11307,1
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.96
step
#completewith next
>>Keep any |T134298:0|t[|cRXP_LOOT_Gorilla Fangs|r] you might loot. You will need 10 for a quest later
.collect 2799,10 
step
.goto Stranglethorn Vale,31.88,67.28,70,0
.goto Stranglethorn Vale,33.46,65.17,70,0
.goto Stranglethorn Vale,33.43,62.94,70,0
.goto Stranglethorn Vale,34.27,64.75,70,0
.goto Stranglethorn Vale,31.88,67.28,70,0
.goto Stranglethorn Vale,33.46,65.17
>>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for their |cRXP_LOOT_Mistvale Giblets|r and |cRXP_LOOT_Gorilla Fangs|r
.complete 606,1 
.mob Elder Mistvale Gorilla
step
.goto Stranglethorn Vale,27.27,49.48,70,0
.goto Stranglethorn Vale,28.13,47.27,70,0
.goto Stranglethorn Vale,28.66,43.72,70,0
.goto Stranglethorn Vale,31.22,43.40,70,0
.goto Stranglethorn Vale,31.85,40.88
>>Kill |cRXP_ENEMY_Jungle Stalkers|r
.complete 196,1 
.mob Jungle Stalker
step
#optional
.goto Stranglethorn Vale,28.41,46.88,0
.goto Stranglethorn Vale,31.12,43.17,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,31.76,41.34,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,27.6,39.4,0
.goto Stranglethorn Vale,28.6,42.4,0
.goto Stranglethorn Vale,33.4,39.4,0
.goto Stranglethorn Vale,31.6,40.4,0
.goto Stranglethorn Vale,31.12,43.17
>>Kill |cRXP_ENEMY_Tethis|r. Loot him for his |cRXP_LOOT_Talon|r
>>|cRXP_ENEMY_Tethis|r |cRXP_WARN_can spawn in any of the spots marked on your map|r
>>You can use your [|cRXP_FRIENDLY_Eagle Eye|r] to find him << Hunter
.isOnQuest 197
.complete 197,1 
.unitscan Tethis
step
.goto Stranglethorn Vale,41.65,43.69,40,0
.goto Stranglethorn Vale,41.79,41.17,40,0
.goto Stranglethorn Vale,41.65,43.69
>>Kill |cRXP_ENEMY_Venture Co. Foremen|r, |cRXP_ENEMY_Venture Co. Surveyors|r, |cRXP_ENEMY_Venture Co. Strip Miners|r and |cRXP_ENEMY_Venture Co. Tinkerers|r. Loot them for their |cRXP_LOOT_Singing Blue Crystals|r
.complete 600,1 
.mob Venture Co. Foreman
.mob Venture Co. Surveyor
.mob Venture Co. Strip Miner
.mob Venture Co. Tinkerer
step
#label SpellfrostFrostfire
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22,50,0
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22
.goto Stranglethorn Vale,42.07,36.02,0
.goto Stranglethorn Vale,47.43,40.20,0
.goto Stranglethorn Vale,45.78,42.27,0
>>Kill any |cRXP_ENEMY_Skullsplitter Trolls|r. Loot them for their |cRXP_LOOT_Skullsplitter Tusks|r
>>Kill |cRXP_ENEMY_Skullsplitter Mystics|r and |cRXP_ENEMY_Skullsplitter Witch Doctors|r. Loot them for their |cRXP_LOOT_Skullsplitter Fetishes|r
.complete 209,1 
.complete 205,1 
.mob Skullsplitter Mystic
.mob Skullsplitter Witch Doctor
step
.goto Stranglethorn Vale,47.2,28.0,35,0
.goto Stranglethorn Vale,49.8,24.6,35,0
.goto Stranglethorn Vale,48.4,19.2,35,0
.goto Stranglethorn Vale,49.54,24.17
.goto Stranglethorn Vale,47.2,28.0,0
.goto Stranglethorn Vale,49.8,24.6,0
.goto Stranglethorn Vale,48.4,19.2,0
>>Kill |cRXP_ENEMY_Bhag'thera|r. Loot him for the |cRXP_LOOT_Fang of Bhag'thera|r
>>|cRXP_ENEMY_Bhag'thera|r |cRXP_WARN_can spawn north or west of the Mosh'Ogg Ogre Mound|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and locate|r |cRXP_ENEMY_Bhag'thera|r << Hunter
.complete 193,1 
.unitscan Bhag'thera
step
#completewith next
.goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
.isOnQuest 202
>>Kill |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r
>>Kill |cRXP_ENEMY_Colonel Kurzen|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_If you can't kill |cRXP_ENEMY_Colonel Kurzen|r skip this step|r
.complete 202,1 
.mob +Kurzen Elite
.complete 202,2 
.mob +Kurzen Subchief
.complete 202,3 
.mob +Colonel Kurzen
step
.goto Stranglethorn Vale,37.832,3.559
.target Brother Nimetz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.turnin 205 >> Turn in Troll Witchery
step
.goto Stranglethorn Vale,38.042,3.012
.target Lieutenant Doren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 202 >> Turn in Colonel Kurzen
.isQuestComplete 202
step
#optional
.isOnQuest 622
.goto Stranglethorn Vale,37.740,3.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
.turnin 622 >> Turn in Return to Corporal Kaleb
.target Corporal Kaleb
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 193 >> Turn in Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
.turnin 196 >> Turn in Raptor Mastery
.accept 197 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
.turnin -78823 >>Turn in Terror of the Desert Skies << Hunter SoD
step
.goto Stranglethorn Vale,21.55,16.57,70,0
.goto Stranglethorn Vale,22.64,18.29,70,0
.goto Stranglethorn Vale,25.53,19.22,70,0
.goto Stranglethorn Vale,29.00,21.44,70,0
.goto Stranglethorn Vale,30.02,26.92,70,0
.goto Stranglethorn Vale,29.00,21.44,70,0
.goto Stranglethorn Vale,25.53,19.22,70,0
.goto Stranglethorn Vale,22.64,18.29,70,0
.goto Stranglethorn Vale,21.55,16.57
>>Kill a |cRXP_ENEMY_Elder Saltwater Crocolisk|r. Loot it for its |cRXP_LOOT_Elder Crocolisk Skin|r
.complete 628,1 
.unitscan Elder Saltwater Crocolisk
step << !Warlock
#completewith Gazban
#optional
+|cRXP_WARN_PAY CLOSE ATTENTION TO YOUR BREATH BAR|r
.isOnQuest 611
.itemcount 5996,<1 
step << !Warlock !Druid
#completewith Gazban
#optional
.cast 7178 >> |cRXP_WARN_Use your|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_if you have one|r
>>|cRXP_WARN_PAY CLOSE ATTENTION TO YOUR BREATH BAR IF YOU DO NOT HAVE ONE!|r
.use 5996 
.aura 7178
.isOnQuest 611
.itemcount 5996,1 
step
#completewith Gazban
#optional
.goto Stranglethorn Vale,24.957,23.586
.cast 3678 >> |cRXP_WARN_Use|r |T135637:0|t[Catelyn's Blade] |cRXP_WARN_on the |cRXP_PICK_Altar of the Tides|r underwater to summon|r |cRXP_ENEMY_Gazban|r
.use 4027
.isOnQuest 611
step
#label Gazban
.goto Stranglethorn Vale,24.957,23.586
>>Kill |cRXP_ENEMY_Gazban|r. Loot him for the |cRXP_LOOT_Stone of the Tides|r
.complete 611,1 
.isOnQuest 611
.mob Gazban
step
#completewith BBTurnin
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 600 >> Turn in Venture Company Mining
.target Crank Fizzlebub
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r and |cRXP_FRIENDLY_Kebok|r
.accept 587 >> Accept Up to Snuff
.target +Krazek
.goto Stranglethorn Vale,26.920,77.347
.turnin 209 >> Turn in Skullsplitter Tusks
.target +Kebok
.goto Stranglethorn Vale,27.000,77.124
step << !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
.turnin 209 >> Turn in Skullsplitter Tusks
.goto Stranglethorn Vale,27.000,77.124
.target Kebok
step
#label BBTurnin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r and |cRXP_FRIENDLY_Baron Revilgaz|r
.accept 604 >> Accept The Bloodsail Buccaneers
.target +Fleet Master Seahorn
.goto Stranglethorn Vale,27.173,77.007
.turnin 611 >> Turn in The Curse of the Tides
.target +Baron Revilgaz
.goto Stranglethorn Vale,27.227,76.870
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankwithdraw 6065,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> Withdraw the following items from your bank:
>>Any |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
>>|T133461:0|t[Khadgar's Essays on Dimensional Convergence] (If you have it) 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
#ah
.goto Stranglethorn Vale,26.588,76.348
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer O'reely|r
+|cRXP_WARN_Buy any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you are missing|r
>>|cRXP_WARN_Ch.1: 1,4,6,8|r
>>|cRXP_WARN_Ch.2: 10,11,14,16|r
>>|cRXP_WARN_Ch.3: 18,20,21,24|r
>>|cRXP_WARN_Ch.4: 25,26,27|r
>>|cRXP_WARN_Skip this step if you aren't able to acquire them|r
.target Auctioneer O'reely
step
.goto Stranglethorn Vale,26.896,73.590
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
.turnin 606 >> Turn in Scaring Shaky
.target "Shaky" Phillipe
.accept 607 >> Accept Return to MacKinley
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.turnin 607 >> Turn in Return to MacKinley
.accept 609 >> Accept Voodoo Dues
.target "Sea Wolf" MacKinley
step
#label start2
.goto Stranglethorn Vale,28.294,77.592
.target Drizzlik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 628 >> Turn in Excelsior
step
#completewith Reed
#label ReedGotoOne
#optional
.goto Stranglethorn Vale,27.6,70.0,50 >> Head past the pirate camp north of Booty Bay
step
#requires ReedGotoOne
#completewith Reed
.goto Stranglethorn Vale,26.1,67.0,50 >> Head through the bridge to the island
step
#label Reed
.goto Stranglethorn Vale,27.04,63.00,60,0
.goto Stranglethorn Vale,26.32,60.20,60,0
.goto Stranglethorn Vale,25.12,60.07,60,0
.goto Stranglethorn Vale,24.69,64.29,60,0
.goto Stranglethorn Vale,25.99,62.45
>>Kill |cRXP_ENEMY_Naga Explorers|r on the island. Loot them for their |cRXP_LOOT_Akiris Reeds|r
.complete 617,1 
.mob Naga Explorer
step
.goto Stranglethorn Vale,32.9,74.1,100 >> Head to the beach east of booty bay
step
#completewith Bloodsails
>>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
>>|cRXP_WARN_Don't start the quest for this yet|r
.collect 4098,1,594,1 
step
#completewith next
>>Kill the |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
.complete 587,1 
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Mage
.mob Bloodsail Raider
.mob Bloodsail Warlock
step
#label Bloodsails
.goto Stranglethorn Vale,31.76,79.45,100,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20,70,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20
>>Kill |cRXP_ENEMY_Bloodsail Swashbucklers|r
>>Loot the |cRXP_LOOT_Bloodsail Charts|r and |cRXP_LOOT_Bloodsail Orders|r. These can spawn randomly at one of the camps or in the small rowboat
.complete 604,1 
.complete 604,2 
.complete 604,3 
.mob Bloodsail Swashbuckler
step
#completewith CRiddle
>>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
>>|cRXP_WARN_Don't start the quest for this yet|r
.collect 4098,1,594,1 
step
#completewith CRiddle
>>Kill the |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
.complete 587,1 
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Mage
.mob Bloodsail Raider
.mob Bloodsail Warlock
step
.goto Stranglethorn Vale,31.76,79.45,100,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20,70,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20
>>Kill |cRXP_ENEMY_Bloodsail Swashbucklers|r
>>Loot the |cRXP_LOOT_Bloodsail Charts|r and |cRXP_LOOT_Bloodsail Orders|r. These can spawn randomly at one of the camps or in the small rowboat
.complete 604,1 
.complete 604,2 
.complete 604,3 
.mob Bloodsail Swashbuckler
step
#label CRiddle
>>|cRXP_WARN_Search the Bloodsail Ships for|r |T134939:0|t[|cRXP_LOOT_Cortello's Riddle|r]|cRXP_WARN_. It can spawn on any of the 3 ships|r
>>|cRXP_WARN_Use |T134939:0|t[|cRXP_LOOT_Cortello's Riddle|r] to start the quest|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location it is in|r << Hunter
.goto Stranglethorn Vale,29.27,88.32,0
.goto Stranglethorn Vale,30.58,90.63,0
.goto Stranglethorn Vale,32.89,88.23,0
.goto Stranglethorn Vale,30.7,88.6
.collect 4056,1,624,1 
.accept 624 >> Accept Cortello's Riddle
.use 4056
step
#completewith next
>>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
>>|cRXP_WARN_Don't start the quest for this yet|r
.collect 4098,1,594,1 
step
.goto Stranglethorn Vale,31.76,79.45,100,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20,70,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20
>>Kill the |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
.complete 587,1 
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Mage
.mob Bloodsail Raider
.mob Bloodsail Warlock
step
#completewith Chucky
.goto Stranglethorn Vale,39.99,58.24
.subzone 311 >> Travel to the Ruins of Aboraz
step
#completewith next
.goto Stranglethorn Vale,39.99,58.24,0
.goto Stranglethorn Vale,34.92,51.84,0
>>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
#label Chucky
.goto Stranglethorn Vale,39.99,58.24
>>Kill |cRXP_ENEMY_Chucky "Ten Thumbs"|r. Loot him for his |cRXP_LOOT_Huge Ring|r
.complete 609,3 
.mob Chucky "Ten Thumbs"
step
#completewith FinalZanzil
.goto Stranglethorn Vale,34.92,51.84
.subzone 477 >> Travel to the Ruins of Jubuwal
step
#completewith FinalZanzil
.goto Stranglethorn Vale,39.99,58.24,0
.goto Stranglethorn Vale,34.92,51.84,0
>>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
#completewith next
.goto Stranglethorn Vale,34.92,51.84
>>Kill |cRXP_ENEMY_Jon-Jon the Crow|r. Loot him for his |cRXP_LOOT_Golden Spyglass|r
.complete 609,2 
.mob Jon-Jon the Crow
step
.goto Stranglethorn Vale,35.26,51.28
>>Kill |cRXP_ENEMY_Maury "Club Foot" Wilkins|r. Loot him for his |cRXP_LOOT_Clubbed Foot|r
.complete 609,1 
.mob Maury "Club Foot" Wilkins
step
#label FinalZanzil
.goto Stranglethorn Vale,34.92,51.84
>>Kill |cRXP_ENEMY_Jon-Jon the Crow|r. Loot him for his |cRXP_LOOT_Golden Spyglass|r
.complete 609,2 
.mob Jon-Jon the Crow
step
.goto Stranglethorn Vale,34.92,51.84,70,0
.goto Stranglethorn Vale,39.99,58.24,70,0
.goto Stranglethorn Vale,34.92,51.84,70,0
.goto Stranglethorn Vale,39.99,58.24,70,0
.goto Stranglethorn Vale,34.92,51.84
.goto Stranglethorn Vale,39.99,58.24,0
>>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
.goto Stranglethorn Vale,28.41,46.88,0
.goto Stranglethorn Vale,31.12,43.17,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,31.76,41.34,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,27.6,39.4,0
.goto Stranglethorn Vale,28.6,42.4,0
.goto Stranglethorn Vale,33.4,39.4,0
.goto Stranglethorn Vale,31.6,40.4,0
.goto Stranglethorn Vale,31.12,43.17
>>Kill |cRXP_ENEMY_Tethis|r. Loot him for his |cRXP_LOOT_Talon|r
>>|cRXP_ENEMY_Tethis|r |cRXP_WARN_can spawn in any of the spots marked on your map|r
>>You can use your [|cRXP_FRIENDLY_Eagle Eye|r] to find him << Hunter
.complete 197,1 
.unitscan Tethis
step
#completewith PagesTurnIn
.goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 197 >> Turn in Raptor Mastery
.accept 208 >> Accept Big Game Hunter
.goto Stranglethorn Vale,35.658,10.808
.target Hemet Nesingwary
step
#label PagesTurnIn
.goto Stranglethorn Vale,35.662,10.528
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
>>|cRXP_WARN_Turn in all your|r |T134332:0|t[Green Hills of Stranglethorn - Pages]
>>|cRXP_WARN_Skip this step if you don't have all the|r |T133677:0|t[Green Hills of Stranglethorn - Chapters]
.accept 338 >> Accept The Green Hills of Stranglethorn
.accept 339 >> Accept Chapter I
.accept 340 >> Accept Chapter II
.accept 341 >> Accept Chapter III
.accept 342 >> Accept Chapter IV
.turnin 339 >> Turn in Chapter I
.turnin 340 >> Turn in Chapter II
.turnin 341 >> Turn in Chapter III
.turnin 342 >> Turn in Chapter IV
.turnin 338 >> Turn in The Green Hills of Stranglethorn
.target Barnil Stonepot
step
#optional
#completewith next
+|cRXP_WARN_Use the|r |T133581:0|t[Flash Bomb] |cRXP_WARN_on |cRXP_ENEMY_King Bangalash|r when he is at 55%|r
.itemcount 4852,1
.use 4852
step
.goto Stranglethorn Vale,38.20,35.57
>>Kill |cRXP_ENEMY_King Bangalash|r. Loot him for the |cRXP_LOOT_Head of Bangalash|r
>>|cRXP_ENEMY_King Bangalash|r |cRXP_WARN_will spawn 2 |cRXP_ENEMY_Panthers|r at 50% health. Try to CC him just before 50% if possible so it prevents him from spawning any|r
>>If you saved the |T133581:0|t[|cRXP_LOOT_Flash Bomb|r] from the Badlands you can use it to |T136183:0|t[|cRXP_FRIENDLY_Fear|r] him. |cRXP_WARN_This fear DOES NOT break on damage making it very useful for bringing him below the 50% threshold while CCd|r
.complete 208,1 
.mob King Bangalash
.use 4852
step
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 208 >> Turn in Big Game Hunter
.target Hemet Nesingwary
.isQuestComplete 208
step
#completewith next
.goto Duskwood,44.6,86.4
.zone Duskwood >> Travel north into Duskwood and head to Darkshire
step
.goto Duskwood,75.779,46.159
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watchmaster Sorigal|r
.turnin 1477 >> Turn in Vital Supplies
.accept 1395 >> Accept Supplies for Nethergarde
.target Watchmaster Sorigal
step
.goto Duskwood,88.47,41.00,50,0
.goto Deadwind Pass,48.02,34.60,60,0
.goto Deadwind Pass,58.43,41.51,50 >> Travel to Swamp of Sorrows
.zoneskip Swamp of Sorrows
step
.goto Swamp of Sorrows,22.87,48.18
>>Click |cRXP_PICK_A Soggy Scroll|r in the water under the bridge
.turnin 624 >> Turn in Cortello's Riddle
.accept 625 >> Accept Cortello's Riddle
.isOnQuest 624
step
.goto Swamp of Sorrows,22.87,48.18
>>Click |cRXP_PICK_A Soggy Scroll|r in the water under the bridge
.accept 625 >> Accept Cortello's Riddle
.isQuestTurnedIn 624
step
.isOnQuest 1364
#completewith mazens
>>Kill |cRXP_ENEMY_Swampwalkers|r, |cRXP_ENEMY_Swampwalker Elders|r, |cRXP_ENEMY_Tangled Horrors|r and |cRXP_ENEMY_Mire Lords|r. Loot them for |cRXP_LOOT_Khadgar's Essays|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
#era/som
.goto Swamp of Sorrows,26.74,59.82
.target Watcher Biggs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.accept 1398 >> Accept Driftwood
step
#era/som
#completewith next
.goto Swamp of Sorrows,79.81,6.90,0
.goto Swamp of Sorrows,90.41,23.85,0
.goto Swamp of Sorrows,94.83,48.68,0
.goto Swamp of Sorrows,82.18,91.74,0
>>Loot |cRXP_LOOT_Sundried Driftwood|r on the ground along the coast
.complete 1398,1 
step
#era/som
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,82.18,91.74,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07
>>Kill |cRXP_ENEMY_Silt Crawlers|r and |cRXP_ENEMY_Monstrous Crawlers|r. Loot them for their |cRXP_LOOT_Pristine Crawler Legs|r
.complete 1258,1 
.mob Silt Crawler
.mob Monstrous Crawler
.isOnQuest 1258
step
#era/som
#label mazens
.goto Swamp of Sorrows,79.81,6.90,0
.goto Swamp of Sorrows,90.41,23.85,0
.goto Swamp of Sorrows,94.83,48.68,0
.goto Swamp of Sorrows,82.18,91.74,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,82.18,91.74,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07
>>Loot |cRXP_LOOT_Sundried Driftwood|r on the ground along the coast
.complete 1398,1 
step
.isOnQuest 1364
.goto Swamp of Sorrows,6.99,31.62,70,0
.goto Swamp of Sorrows,14.97,37.31
>>Kill |cRXP_ENEMY_Swampwalkers|r, |cRXP_ENEMY_Swampwalker Elders|r, |cRXP_ENEMY_Tangled Horrors|r and |cRXP_ENEMY_Mire Lords|r. Loot them for |cRXP_LOOT_Khadgar's Essays|r
>>|cRXP_WARN_The drop rate of this item is very low. Once there is no more to kill in Misty Valley, skip this step|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
#era/som
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.turnin 1398 >> Turn in Driftwood
.accept 1425 >> Accept Deliver the Shipment
.target Watcher Biggs
step
#completewith ExitBL
.goto Swamp of Sorrows,33.23,67.31,0
.goto Blasted Lands,51.98,7.43
.zone Blasted Lands >> Travel to the Blasted Lands
step
.isQuestComplete 1364
.goto Blasted Lands,67.646,19.165
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Mahar Ba|r atop the Tower
.turnin 1364 >> Turn in Mazen's Behest
.target Watcher Mahar Ba
step
.isOnQuest 1425,1395
.goto Blasted Lands,66.521,21.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
.turnin 1425 >> Turn in Deliver the Shipment
.turnin 1395 >> Turn in Supplies for Nethergarde
.target Quartermaster Lungertz
step
#optional
.goto Blasted Lands,65.54,24.34
.abandon 1364 >> Abandon Mazen's Behest
step
#label ExitBL
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Constantine|r
.fp Blasted Lands >> Get the Blasted Lands Flight Path
.fly Booty Bay >> Fly to Booty Bay
.target Alexandra Constantine
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r and |cRXP_FRIENDLY_Krazek|r
.turnin 587 >> Turn in Up to Snuff
.target +Deeg
.goto Stranglethorn Vale,26.920,77.347
.accept 2864 >> Accept Tran'rek
.target +Krazek
.goto Stranglethorn Vale,26.943,77.207
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 604 >> Turn in The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
.isQuestTurnedIn 1118
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r and |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 580 >> Accept Whiskey Slim's Lost Grog
.target +Whiskey Slim
.goto Stranglethorn Vale,27.135,77.451
.turnin 621 >> Turn in Zanzil's Secret
.accept 1119 >> Accept Zanzil's Mixture and a Fool's Stout
.target +Crank Fizzlebub
.goto Stranglethorn Vale,27.120,77.208
step
#completewith end
.isOnQuest 1119
+|cRXP_WARN_Note the Zanzil's Mixture and a Fool's Stout quest has a 2 hour timer that also ticks while you're offline. |r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r and |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 580 >> Accept Whiskey Slim's Lost Grog
.target +Whiskey Slim
.goto Stranglethorn Vale,27.135,77.451
.turnin 621 >> Turn in Zanzil's Secret
.target +Crank Fizzlebub
.goto Stranglethorn Vale,27.120,77.208
step
.goto Stranglethorn Vale,26.756,76.383
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
.turnin 617 >> Turn in Akiris by the Bundle
.accept 623 >> Accept Akiris by the Bundle
.target Privateer Bloads
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankdeposit 2799,4098 >> Deposit the following items into your bank:
>>|T134298:0|t[Gorilla Fangs] (If you have any) 
>>|T133469:0|t[Carefully Folded Note] (If you have it) 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankwithdraw 5862 >> Withdraw the following items from your bank:
>>|T132385:0|t[Seaforium Booster] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.turnin 609 >> Turn in Voodoo Dues
.accept 2872 >> Accept Stoley's Debt
.target "Sea Wolf" MacKinley
step
#label end
.goto Stranglethorn Vale,28.591,75.899
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.turnin 576 >> Turn in Keep An Eye Out
.target Dizzy One-Eye
step
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >> Take the Boat to Ratchet
]]);
