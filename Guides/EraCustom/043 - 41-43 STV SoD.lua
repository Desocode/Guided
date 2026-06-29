RXPGuides.RegisterGuide([[
#version 23
#season 2
#group RestedXP Alliance 40-50
#classic
#tbc
#mop
<< Alliance
#name 41-43 STV SoD
#displayname 41-43 STV
#next 43-44 Tanaris SoD << !Warlock
#next 43-44 Tanaris/Dustwallow SoD << Warlock
step
#optional
#completewith StvStart
.abandon 543 >> Abandon the Perenolde Tiara
.abandon 514 >> Abandon Letter to Stormpike
.abandon 658 >> Abandon Hints of a New Plague?
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 1118 >> Turn in Back to Booty Bay
.isOnQuest 1118
step << Warlock
.goto Stranglethorn Vale,27.039,77.310
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
.home >> Set your Hearthstone to Booty Bay
.target Innkeeper Skindle
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
.isOnQuest 610
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
.isOnQuest 610
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
.isQuestComplete 610
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
step
#label StvStart
.goto Stranglethorn Vale,31.88,67.28,70,0
.goto Stranglethorn Vale,33.46,65.17,70,0
.goto Stranglethorn Vale,33.43,62.94,70,0
.goto Stranglethorn Vale,34.27,64.75,70,0
.goto Stranglethorn Vale,31.88,67.28,70,0
.goto Stranglethorn Vale,33.46,65.17
>>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for their |cRXP_LOOT_Mistvale Giblets|r and |cRXP_LOOT_Gorilla Fangs|r
>>|cRXP_WARN_Save the |cRXP_LOOT_Gorilla Fangs|r for a later quest|r
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
.isOnQuest 196
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
.goto Stranglethorn Vale,31.12,43.17
>>Kill |cRXP_ENEMY_Tethis|r. Loot him for his |cRXP_LOOT_Talon|r
>>|cRXP_ENEMY_Tethis|r |cRXP_WARN_will patrol around in this location|r
>>Skip this step if you aren't on this quest
.isOnQuest 197
.complete 197,1 
.unitscan Tethis
step << Mage
#season 2
.train 415948,1
.train 401762,1
#completewith SpellfrostFrostfire
>>Kill |cRXP_ENEMY_Skullsplitter Mystics|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS]|r and |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r]
>>|cRXP_WARN_Note: You will need to buy|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from a |cRXP_FRIENDLY_Reagent Vendor|r later to learn the runes|r
.collect 213127,1
.collect 217161,1
.mob Skullsplitter Mystic
.itemcount 211779,<1 
step << Mage
#season 2
.train 415948,1
.train 401762,1
#completewith SpellfrostFrostfire
>>Kill |cRXP_ENEMY_Skullsplitter Mystics|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS]|r and |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r]
.collect 213127,1
.collect 217161,1
.mob Skullsplitter Mystic
.itemcount 211779,1 
step << Mage
#label SpellfrostFrostfire
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22,50,0
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22
.goto Stranglethorn Vale,42.07,36.02,0
.goto Stranglethorn Vale,47.43,40.20,0
.goto Stranglethorn Vale,45.78,42.27,0
>>Kill |cRXP_ENEMY_Skullsplitter Mystics|r and |cRXP_ENEMY_Skullsplitter Witch Doctors|r. Loot them for their |cRXP_LOOT_Skullsplitter Fetishes|r
.complete 205,1 
.mob Skullsplitter Mystic
.mob Skullsplitter Witch Doctor
step << Mage
#season 2
.train 415948,1
.train 401762,1
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22,50,0
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22
.goto Stranglethorn Vale,42.07,36.02,0
.goto Stranglethorn Vale,47.43,40.20,0
.goto Stranglethorn Vale,45.78,42.27,0
>>|cRXP_WARN_Note: You will need to buy|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from a |cRXP_FRIENDLY_Reagent Vendor|r later to learn the runes|r
.collect 213127,1
.collect 217161,1
.mob Skullsplitter Mystic
.itemcount 211779,<1 
step << Mage
#season 2
.train 415948,1
.train 401762,1
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22,50,0
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22
.goto Stranglethorn Vale,42.07,36.02,0
.goto Stranglethorn Vale,47.43,40.20,0
.goto Stranglethorn Vale,45.78,42.27,0
>>Kill |cRXP_ENEMY_Skullsplitter Mystics|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS]|r and |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r]
.collect 213127,1
.collect 217161,1
.mob Skullsplitter Mystic
.itemcount 211779,1 
step << Mage
#season 2
.train 415948 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS|r] |cRXP_WARN_to train|r |T135780:0|t[Spellfrost Bolt]
.train 401762 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r] |cRXP_WARN_to train|r |T236217:0|t[Frostfire Bolt]
.use 213127
.use 217161
.itemcount 211779,1 
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
.isOnQuest 193
step
#completewith next
.goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
.isOnQuest 202
>>Kill |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r
>>Kill |cRXP_ENEMY_Colonel Kurzen|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_If you can't kill |cRXP_ENEMY_Colonel Kurzen|r skip this step|r
.complete 202,1 
.complete 202,2 
.complete 202,3 
.mob Kurzen Elite
.mob Kurzen Subchief
.mob Colonel Kurzen
step << Mage
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
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 193 >> Turn in Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Sir S. J. Erlgadin
.isQuestComplete 193
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 196 >> Turn in Raptor Mastery
.accept 197 >> Accept Raptor Mastery
.goto Stranglethorn Vale,35.658,10.808
.target Hemet Nesingwary
.isQuestComplete 196
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
step
#completewith next
+|cRXP_WARN_PAY CLOSE ATTENTION TO YOUR BREATH BAR|r
.isOnQuest 611
step
#completewith next
.goto Stranglethorn Vale,24.957,23.586
.cast 3678 >> |cRXP_WARN_Use|r |T135637:0|t[Catelyn's Blade] |cRXP_WARN_on the |cRXP_PICK_Altar of the Tides|r underwater to summon|r |cRXP_ENEMY_Gazban|r
.use 4027
step
#label Gazban
.goto Stranglethorn Vale,24.957,23.586
>>Kill |cRXP_ENEMY_Gazban|r. Loot him for the |cRXP_LOOT_Stone of the Tides|r
.complete 611,1 
.mob Gazban
.isOnQuest 611
step
#completewith BBTurnin
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.accept 587 >> Accept Up to Snuff
.goto Stranglethorn Vale,26.920,77.347
.goto Stranglethorn Vale,27.000,77.124
.target Krazek
step
#optional
#label BBTurnin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r and |cRXP_FRIENDLY_Baron Revilgaz|r
.accept 604 >> Accept The Bloodsail Buccaneers
.goto Stranglethorn Vale,27.173,77.007
.turnin 611 >> Turn in The Curse of the Tides
.goto Stranglethorn Vale,27.227,76.870
.target Fleet Master Seahorn
.target Baron Revilgaz
.isQuestComplete 611
step
#label BBTurnin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.accept 604 >> Accept The Bloodsail Buccaneers
.goto Stranglethorn Vale,27.173,77.007
.target Fleet Master Seahorn
.target Baron Revilgaz
.isQuestAvailable 602
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankwithdraw 6065,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> Withdraw the following items from your bank:
>>Any |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
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
step << Priest
#season 2
.train 425314,1
#completewith next
.goto Stranglethorn Vale,28.961,61.931
>>Click |cRXP_PICK_The Holy Spring|r. Loot it for the |T134712:0|t[|cRXP_LOOT_Holy Spring Water|r]
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Lord Sakrasis|r (level 45 Rare) who guards in front of|r |cRXP_PICK_The Holy Spring|r
.collect 737,1 
.mob Lord Sakrasis
step << Priest
#season 2
.train 425314,1
.goto Stranglethorn Vale,28.961,61.931
>>Click |cRXP_PICK_The Holy Spring|r. Loot it for the |T134712:0|t[|cRXP_LOOT_Holy Spring Water|r]
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Lord Sakrasis|r (level 45 Rare) who guards in front of|r |cRXP_PICK_The Holy Spring|r
.collect 737,1 
.mob Lord Sakrasis
step
#completewith BloodsailOne
>>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
>>|cRXP_WARN_Don't start the quest for this yet|r
.collect 4098,1,594,1 
step
#completewith BloodsailOne
>>Kill the |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
.complete 587,1 
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Mage
.mob Bloodsail Raider
.mob Bloodsail Warlock
step
#label BloodsailOne
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
.goto Stranglethorn Vale,31.12,43.17
>>Kill |cRXP_ENEMY_Tethis|r. Loot him for his |cRXP_LOOT_Talon|r
>>|cRXP_ENEMY_Tethis|r |cRXP_WARN_will patrol around in this location|r
.complete 197,1 
.unitscan Tethis
.isOnQuest 197
step
#completewith PagesTurnIn
.goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 197 >> Turn in Raptor Mastery
.accept 208 >> Accept Big Game Hunter
.goto Stranglethorn Vale,35.658,10.808
.target Hemet Nesingwary
.isQuestComplete 197
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
step << Priest
#season 2
#completewith next
.train 425314,1
.subzone 102 >> Travel to the Ruins of Zul'Kunda
step << Priest
#season 2
.train 425314,1
.goto Stranglethorn Vale,23.569,7.955
.cast 3591 >> |cRXP_WARN_Use the|r |T134712:0|t[|cRXP_LOOT_Holy Spring Water|r] |cRXP_WARN_at the small fountain|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gan'zulah|r (level 41) and a small pack of |cRXP_ENEMY_Trolls|r around him to get to the small fountain|r
.use 737
.mob Gan'zulah
step << Priest
#season 2
.train 425314,1
.goto Stranglethorn Vale,23.569,7.955
>>Click the |cRXP_PICK_Fount|r which appears. Loot it for the |T135975:0|t|cRXP_LOOT_[Prophecy of Imprisoned Malice]|r
.collect 213142,1
step << Priest
#season 2
.train 425314 >> |cRXP_WARN_Use the|r |T135975:0|t|cRXP_LOOT_[Prophecy of Imprisoned Malice]|r |cRXP_WARN_to train|r |T237563:0|t[Dispersion]
.use 213142
step << Priest
#season 2
.isQuestComplete 79731
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 79731 >> Turn in The Troll Scroll
.target Hemet Nesingwary
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
.complete 208,1 
.mob King Bangalash
step
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 208 >> Turn in Big Game Hunter
.target Hemet Nesingwary
.isQuestComplete 208
step
#completewith next
.hs >> Hearthstone to Booty Bay
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r and |cRXP_FRIENDLY_Krazek|r
.turnin 587 >> Turn in Up to Snuff
.goto Stranglethorn Vale,26.920,77.347
.accept 2864 >> Accept Tran'rek
.goto Stranglethorn Vale,26.943,77.207
.target Deeg
.target Krazek
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 604 >> Turn in The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
.isQuestTurnedIn 1118
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r and |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 580 >> Accept Whiskey Slim's Lost Grog
.goto Stranglethorn Vale,27.135,77.451
.turnin 621 >> Turn in Zanzil's Secret
.accept 1119 >> Accept Zanzil's Mixture and a Fool's Stout
.goto Stranglethorn Vale,27.120,77.208
.target Whiskey Slim
.target Crank Fizzlebub
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r and |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 580 >> Accept Whiskey Slim's Lost Grog
.goto Stranglethorn Vale,27.135,77.451
.turnin 621 >> Turn in Zanzil's Secret
.goto Stranglethorn Vale,27.120,77.208
.target Whiskey Slim
.target Crank Fizzlebub
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
.goto Stranglethorn Vale,28.591,75.899
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.turnin 576 >> Turn in Keep An Eye Out
.target Dizzy One-Eye
step
#completewith next
.isOnQuest 1119
+|cRXP_WARN_Note the Zanzil's Mixture and a Fool's Stout quest has a 2 hour timer|r
step
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >> Take the Boat to Ratchet
]]);
