RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#season 2
#classic
#tbc
#mop
<< Alliance
#name 39-41 Alterac/Arathi SoD
#displayname 39-41 Alterac/Arathi
#next #group RestedXP Alliance 40-50\41-43 STV SoD
step
#sticky
#label Bankandy1
#completewith next
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 6253,3518 >>Withdraw the following items from your bank: << !Warlock
.bankwithdraw 6253,3518 >>Withdraw the following items from your bank: << Warlock
>>|T134940:0|t[Decrypted Letter]
.target Newton Burnside
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 6065,4306 >> Deposit the following items into your bank: << Hunter
.bankdeposit 6065,4306 >>Deposit the Blue Pearls in your bank << !Hunter
>>|T132905:0|t[Silk Cloth] (15)
.target Newton Burnside
.xp >41,1,AlteracSkip << !Warlock !Paladin
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
step << Paladin
#season 2
.train 426178,1
.goto StormwindClassic,52.623,65.701
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
.home >> Set your Hearthstone to Stormwind City
.target Innkeeper Allison
.maxlevel 40
step << !Warrior !Rogue !Druid !Hunter 
.goto Stormwind City,41.497,89.385
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angus Stern|r
.accept 1260 >>Accept Morgan Stern
.target Angus Stern
.solo
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
step << Paladin
#season 2
.train 426178,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine the Pure|r
.goto Stormwind City,37.222,31.855
.turnin 79939 >>Turn in The Broken Hammer
.accept 79940 >>Accept A Lost Brother
.target Katherine the Pure
step << Paladin
#season 2
.train 426178,1
.goto Stormwind City,37.222,31.855
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine the Pure|r
.skipgossip 5492,1
.complete 79940,1
.turnin 79940 >>Turn in A Lost Brother
.target Katherine the Pure
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
.goto Stormwind City,74.010,30.231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
.accept 543 >>Accept The Perenolde Tiara
.target Count Remington Ridgewell
.xp >41,1,AlteracSkipPalaLock
step << Warrior
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
>>|cRXP_WARN_Buy the|r |T133741:0|t|cRXP_LOOT_[Handbook of Meathook]|r |cRXP_WARN_use it after reaching level 40 to learn|r |T132507:0|t[Meathook] << Warrior
.collect 226403,1
.train 403228,1
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
step << Warlock
>>Abandon the following quests, you will pick them up again later
.abandon 196 >> Abandon Raptor Mastery
.abandon 193 >> Abandon Panther Mastery
step << !Mage
#completewith next
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the Tram|r
step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Teleport to Ironforge
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
.isOnQuest 1712
step << Warrior
#season 2
.train 409163,1
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r] |cRXP_BUY_which is required to acquire the|r |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r]
>>|cRXP_WARN_You may skip buying it as the |cRXP_ENEMY_Trolls|r in Arathi Highlands also drop the|r |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r]
.collect 216483,1
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
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.accept 691 >> Accept Worth Its Weight in Gold
.target Apprentice Kryten
.maxlevel 40
step << !Hunter
#season 2
.isOnQuest 79242
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
#completewith next
.zone Wetlands >>Travel to the Arathi Highlands/Wetlands zone border
step << !Hunter
#season 2
.isOnQuest 79242
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.goto Wetlands,58.320,6.927
.cast 6477 >>Enter the |cRXP_PICK_Rowboat|r in the water
.subzoneskip 308
step << NightElf !Hunter
#season 2
.isOnQuest 79242
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.goto Arathi Highlands,93.90,71.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r to receive |cRXP_LOOT_Illari's Key|r
.complete 79242,1 
.collect 212347,1,79242,1 
.skipgossip 215655,1,1,2
.target Illari Duskfeather
step << !NightElf !Hunter
#season 2
.isOnQuest 79242
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
#completewith next
.goto Arathi Highlands,93.90,71.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r. You will have to fight her after
.complete 79242,1 
.skipgossip 215655,1,1,1
.target Illari Duskfeather
step << !NightElf !Hunter
#season 2
.isOnQuest 79242
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.goto Arathi Highlands,93.90,71.49
>>Kill |cRXP_ENEMY_Illari Duskfeather|r. Open the |cRXP_PICK_Dropped Pouch|r she drops on the ground. Loot it for |cRXP_LOOT_Illari's Key|r
.collect 212347,1,79242,1 
.skipgossip 215655,1,1,1
.mob Illari Duskfeather
step << !NightElf !Hunter
#season 2
.isOnQuest 79242
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.goto Arathi Highlands,93.90,71.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r
.complete 79242,1 
.skipgossip
.target Illari Duskfeather
step << !Hunter
#xprate <1.99
#season 2
.isOnQuest 79242
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
>>Click |cRXP_PICK_Illari's Loot Cache|r on the ground
.goto Arathi Highlands,94.154,69.266
.turnin 79242 >>Turn in No Honor Among Thieves
step << !Hunter
#season 2
.isQuestTurnedIn 79242
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] << Priest
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r] << Paladin
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Brain Freeze|r] << Mage
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse|r] << Druid
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r] << Warrior
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness|r] << Warlock
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Poisoned Blade|r] << Rogue
.collect 212552,1 << Priest
.collect 212551,1 << Paladin
.collect 208853,1 << Mage
.collect 212548,1 << Druid
.collect 212562,1 << Warrior
.collect 212561,1 << Warlock
.collect 212559,1 << Rogue
.use 212553 
step << !Hunter
#season 2
.isQuestTurnedIn 79242
.train 431663 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] |cRXP_WARN_to train|r |T136181:0|t[Mind Spike] << Priest
.train 416031 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r] |cRXP_WARN_to train|r |T236246:0|t[The Art of War] << Paladin
.train 401752 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Brain Freeze|r] |cRXP_WARN_to train|r |T236206:0|t[Brain Freeze] << Mage
.train 410029 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse|r] |cRXP_WARN_to train|r |T236151:0|t[Eclipse] << Druid
.train 403467 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r] |cRXP_WARN_to train|r |T132345:0|t[Enraged Regeneration] << Warrior
.train 426452 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness|r] |cRXP_WARN_to train|r |T135823:0|t[Shadow and Flame] << Warlock
.train 425102 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Poisoned Blade|r] |cRXP_WARN_to train|r |T236270:0|t[Poisoned Blade] << Rogue
.use 212552 << Priest
.use 212551 << Paladin
.use 208853 << Mage
.use 212548 << Druid
.use 212562 << Warrior
.use 212561 << Warlock
.use 212559 << Rogue
.itemcount 212552,1 << Priest
.itemcount 212551,1 << Paladin
.itemcount 208853,1 << Mage
.itemcount 212548,1 << Druid
.itemcount 212562,1 << Warrior
.itemcount 212561,1 << Warlock
.itemcount 212559,1 << Rogue
step << !Hunter
#season 2
.isQuestTurnedIn 79242
.goto 1417,89.536,78.149
.cast 6477 >>Enter the |cRXP_PICK_Rowboat|r in the water to get back to Arathi
.subzoneskip 308,1
step
.goto Arathi Highlands,62.50,33.72
>>Click the |cRXP_PICK_Shards of Myzrael|r
.accept 642 >> Accept The Princess Trapped
step
#completewith next
>>Mine the |cRXP_PICK_Lesser Bloodstone Deposits|r. Loot it for |cRXP_LOOT_Lesser Bloodstone Ore|r
>>|cRXP_WARN_These are found inside of the Cave|r
.collect 4278,4,627,1 
.skill mining,<75,1
step
.goto Arathi Highlands,78.59,39.99,50,0
.goto Arathi Highlands,82.02,39.59,40,0
.goto Arathi Highlands,83.12,35.52,40,0
.goto Arathi Highlands,87.11,31.40,25,0
.goto Arathi Highlands,84.30,30.95
>>Kill |cRXP_ENEMY_Drywhisker Kobolds|r, |cRXP_ENEMY_Drywhisker Diggers|r and |cRXP_ENEMY_Drywhisker Surveyors|r. Loot them for their |cRXP_LOOT_Motes|r
>>|cRXP_WARN_The quest turn in for this is inside the Cave. Clear your way to the back while completing it|r
.complete 642,1 
.mob Drywhisker Kobold
.mob Drywhisker Digger
.mob Drywhisker Surveyor
step
.goto Arathi Highlands,87.11,31.40,25,0
.goto Arathi Highlands,84.30,30.95
>>Mine the |cRXP_PICK_Lesser Bloodstone Deposits|r. Loot it for |cRXP_LOOT_Lesser Bloodstone Ore|r
>>|cRXP_WARN_These are found inside of the Cave|r
.collect 4278,4,627,1 
.skill mining,<75,1
step
.goto Arathi Highlands,84.30,30.95
>>Click the |cRXP_PICK_Iridescent Shards|r at the back of the Cave
.turnin 642 >> Turn in The Princess Trapped
.accept 651 >> Accept Stones of Binding
step
#completewith EastBinding
.goto Arathi Highlands,70.34,39.52,140 >> Travel to the Circle of East Binding
step << Warrior
#completewith next
>>Kill |cRXP_ENEMY_Cresting Exiles|r. Loot them for their |cRXP_LOOT_Cresting Charms|r
.collect 4481,8,1712,1 
.mob Cresting Exile
.isOnQuest 1712
step
#label EastBinding
.goto Arathi Highlands,66.710,29.725
>>Open the |cRXP_PICK_Stone of East Binding|r. Loot it for the |cRXP_LOOT_Cresting Key|r
.complete 651,2 
step << Warrior
.goto Arathi Highlands,67.46,28.79,40,0
.goto Arathi Highlands,65.47,28.77,40,0
.goto Arathi Highlands,65.87,31.24,40,0
.goto Arathi Highlands,67.47,30.65,40,0
.goto Arathi Highlands,66.82,29.77
>>Kill |cRXP_ENEMY_Cresting Exiles|r. Loot them for their |cRXP_LOOT_Cresting Charms|r
.collect 4481,8,1712,1 
.mob Cresting Exile
.isOnQuest 1712
step << Warrior
#season 2
.train 409163,1
#completewith WitherbarkCave
+|cRXP_WARN_Considering looking for additional party members in helping you to try acquire the|r |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r] |cRXP_WARN_as it requires killing a level 35 elite and 2 mobs at the same time. It is completed in this area|r
step << Warrior
#season 2
#completewith next
.train 409163,1
>>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for the |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r]
.collect 216483,1
.mob Witherbark Shadow Hunter
.mob Witherbark Axe Thrower
.mob Witherbark Headhunter
.mob Witherbark Witch Doctor
step
>>Kill the |cRXP_ENEMY_Witherbarks|r. Loot them for their |cRXP_LOOT_Witherbark Tusks|r
>>Kill |cRXP_ENEMY_Witherbark Witch Doctors|r. Loot them for their |cRXP_LOOT_Medicine Pouches|r
>>Kill |cRXP_ENEMY_Witherbark Shadow Hunters|r. Loot them for their |cRXP_LOOT_Shadow Hunter Knife|r
>>|cRXP_ENEMY_Witherbark Shadow Hunters|r |cRXP_WARN_are only found inside the Cave|r
.complete 691,1 
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
.complete 691,2 
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
.complete 691,3 
.goto Arathi Highlands,68.38,75.92,30,0
.goto Arathi Highlands,68.20,79.47
.mob Witherbark Shadow Hunter
.mob Witherbark Witch Doctor
.mob Witherbark Shadowcaster
.mob Witherbark Troll
.isOnQuest 691
step << Warrior
#season 2
#completewith next
.train 409163,1
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
>>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for the |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r]
.collect 216483,1
.mob Witherbark Shadow Hunter
.mob Witherbark Axe Thrower
.mob Witherbark Headhunter
.mob Witherbark Witch Doctor
step << Warrior
#season 2
.train 409163,1
#label WitherbarkCave
.goto Arathi Highlands,68.363,75.806,25 >>Enter the Witherbark Cave
step << Warrior
#season 2
.train 409163,1
#completewith next
.goto Arathi Highlands,69.502,81.924
.cast 436278 >> |cRXP_WARN_Use the|r |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r] |cRXP_WARN_at the |cRXP_PICK_Gong|r inside the cave|r
.use 216483 >>|cRXP_WARN_This will spawn a |cRXP_ENEMY_Witherbark Goliath|r (lvl 35 elite) as well as 2 additional mobs|r
step << Warrior
#season 2
.train 409163,1
.goto Arathi Highlands,69.61,81.60
>>Kill the |cRXP_ENEMY_Witherbark Goliath|r. Loot it for the |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r]
.collect 213109,1
.mob Witherbark Goliath
step << Warrior
#season 2
.train 409163 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r] |cRXP_WARN_to train|r |T132345:0|t[Focused Rage]
.use 213109
step << Warrior
#completewith next
>>Kill |cRXP_ENEMY_Thundering Exiles|r. Loot them for their |cRXP_LOOT_Thundering Charms|r
.collect 4480,8,1712,1 
.mob Thundering Exile
.isOnQuest 1712
step
.goto Arathi Highlands,52.042,50.734
>>Open the |cRXP_PICK_Stone of Outer Binding|r. Loot it for the |cRXP_LOOT_Thundering Key|r
.complete 651,3 
step << Warrior
.goto Arathi Highlands,52.74,50.61,40,0
.goto Arathi Highlands,50.97,52.16,40,0
.goto Arathi Highlands,51.52,48.93,40,0
.goto Arathi Highlands,52.12,51.11
>>Kill |cRXP_ENEMY_Thundering Exiles|r. Loot them for their |cRXP_LOOT_Thundering Charms|r
.collect 4480,8,1712,1 
.mob Thundering Exile
.isOnQuest 1712
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.turnin 691 >> Turn in Worth Its Weight in Gold
.target Apprentice Kryten
.isQuestComplete 691
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.accept 693 >> Accept Wand over Fist
.target Skuerto
.isQuestTurnedIn 691
step
#completewith next
.goto Arathi Highlands,54.21,77.80,30 >> Enter the Bolderfist Hall Cave
.isOnQuest 79242
step
.goto Arathi Highlands,54.75,81.87
>>Kill |cRXP_ENEMY_Kor'gresh Coldrage|r. Loot him for |cRXP_LOOT_Trelane's Wand|r
.complete 693,1 
.mob Kor'gresh Coldrage
.isQuestTurnedIn 691
.isOnQuest 79242
step
.goto Wetlands,58.320,6.927
.cast 6477 >>Enter the |cRXP_PICK_Rowboat|r in the water
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
.subzoneskip 308
.isOnQuest 79242
step << NightElf
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
.goto Arathi Highlands,93.90,71.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r to receive |cRXP_LOOT_Illari's Key|r
.complete 79242,1 
.collect 212347,1,79242,1 
.skipgossip 215655,1,1,2
.target Illari Duskfeather
.isOnQuest 79242
step << !NightElf
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
#completewith next
.goto Arathi Highlands,93.90,71.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r. You will have to fight her after
.complete 79242,1 
.skipgossip 215655,1,1,1
.target Illari Duskfeather
.isOnQuest 79242
step << !NightElf
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
.goto Arathi Highlands,93.90,71.49
>>Kill |cRXP_ENEMY_Illari Duskfeather|r. Open the |cRXP_PICK_Dropped Pouch|r she drops on the ground. Loot it for |cRXP_LOOT_Illari's Key|r
.collect 212347,1,79242,1 
.skipgossip 215655,1,1,1
.mob Illari Duskfeather
.isOnQuest 79242
step << !NightElf
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
.goto Arathi Highlands,93.90,71.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r
.complete 79242,1 
.skipgossip
.target Illari Duskfeather
.isOnQuest 79242
step
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>Click |cRXP_PICK_Illari's Loot Cache|r on the ground
.goto Arathi Highlands,94.154,69.266
.turnin 79242 >>Turn in No Honor Among Thieves
.isOnQuest 79242
step
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] << Priest
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r] << Paladin
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Brain Freeze|r] << Mage
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Trapper|r] << Hunter
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse|r] << Druid
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r] << Warrior
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness|r] << Warlock
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Poisoned Blade|r] << Rogue
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Ancestral Awakening|r] << Shaman
.collect 212552,1 << Priest
.collect 212551,1 << Paladin
.collect 208853,1 << Mage
.collect 212549,1 << Hunter
.collect 212548,1 << Druid
.collect 212562,1 << Warrior
.collect 212561,1 << Warlock
.collect 212559,1 << Rogue
.collect 212560,1 << Shaman
.use 212553 
.isQuestTurnedIn 79242
step
.train 431663 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] |cRXP_WARN_to train|r |T136181:0|t[Mind Spike] << Priest
.train 416031 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r] |cRXP_WARN_to train|r |T236246:0|t[The Art of War] << Paladin
.train 401752 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Brain Freeze|r] |cRXP_WARN_to train|r |T236206:0|t[Brain Freeze] << Mage
.train 410118 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Trapper|r] |cRXP_WARN_to train|r |T133882:0|t[Trap Launcher] << Hunter
.train 410029 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse|r] |cRXP_WARN_to train|r |T236151:0|t[Eclipse] << Druid
.train 403467 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r] |cRXP_WARN_to train|r |T132345:0|t[Enraged Regeneration] << Warrior
.train 426452 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness|r] |cRXP_WARN_to train|r |T135823:0|t[Shadow and Flame] << Warlock
.train 425102 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Poisoned Blade|r] |cRXP_WARN_to train|r |T236270:0|t[Poisoned Knife] << Rogue
.train 425883 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Ancestral Awakening|r] |cRXP_WARN_to train|r |T237571:0|t[Ancestral Awakening] << Shaman
.use 212552 << Priest
.use 212551 << Paladin
.use 208853 << Mage
.use 212549 << Hunter
.use 212548 << Druid
.use 212562 << Warrior
.use 212561 << Warlock
.use 212559 << Rogue
.use 212560 << Shaman
.itemcount 212552,1 << Priest
.itemcount 212551,1 << Paladin
.itemcount 208853,1 << Mage
.itemcount 212549,1 << Hunter
.itemcount 212548,1 << Druid
.itemcount 212562,1 << Warrior
.itemcount 212561,1 << Warlock
.itemcount 212559,1 << Rogue
.itemcount 212560,1 << Shaman
.isQuestTurnedIn 79242
step
.goto 1417,89.536,78.149
.cast 6477 >>Enter the |cRXP_PICK_Rowboat|r in the water to get back to Arathi
.subzoneskip 308,1
.isQuestTurnedIn 79242
step << skip 
.group
#completewith next
.goto Arathi Highlands,54.428,80.800
+|cRXP_WARN_Perform a Logout skip on the banner next to |cRXP_ENEMY_Kor'gresh Coldrage|r to teleport closer to Refuge Point. If you are unable to do this just run out normally|r
.link https://youtu.be/SWBtPqm5M0Q?t=61 >> |cRXP_WARN_Click here for video reference|r
.subzoneskip 316,1
step
.group
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
>>|cRXP_WARN_Do not accept the follow up yet|r
.turnin 693 >> Turn in Wand over Fist
step
.goto Arathi Highlands,45.73,46.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.fly Southshore >> Fly to Southshore
.target Cedrik Prose
.zoneskip Hillsbrad Foothills
step
#completewith Analysis
>>|cRXP_WARN_The |cRXP_ENEMY_Shadowy Assassin|r attack on Southshore is a random event|r
>>If you ever see a |cRXP_ENEMY_Shadowy Assassin|r in Southshore, kill them. Loot them for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] to start the quest|r
>>|cRXP_WARN_Skip this step if you don't see the event|r
.collect 3668,1,522
.use 3668
.accept 522 >> Accept Assassin's Contract
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 538 >> Turn in Southshore
.target Loremaster Dibbs
.isOnQuest 538
step
.dungeon SM
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Anderson|r
.home >> Set your Hearthstone to Southshore
.target Innkeeper Anderson
step
#label Analysis
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.accept 500 >> Accept Crushridge Bounty
.target Marshal Redpath
.isQuestTurnedIn 538
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 522 >> Turn in Assassin's Contract
.isOnQuest 522
.target Magistrate Henry Maleb
step
.dungeon !SM
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.accept 523 >> Accept Baron's Demise
.isQuestTurnedIn 522
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 525 >> Turn in Further Mysteries
.accept 537 >> Accept Dark Council
.accept 512 >> Accept Noble Deaths
.target Magistrate Henry Maleb
step
.dungeon SM
#completewith next
.goto Alterac Mountains,58.31,67.92,0
.goto Alterac Mountains,48.0,82.0,0
.zone Silverpine Forest >> Grind the |cRXP_ENEMY_Syndicate|r in Alterac Mountains while looking for a group for Scarlet Monastery
.zoneskip Tirisfal Glades
.mob Syndicate Footpad
.mob Syndicate Thief
step << Paladin
.dungeon !SM
#season 2
.train 426178,1
#completewith next
.goto Alterac Mountains,58.31,67.92,0
.goto Alterac Mountains,48.0,82.0,0
.zone Silverpine Forest >> Grind the |cRXP_ENEMY_Syndicate|r in Alterac Mountains while looking for a group for Scarlet Monastery. You will finish the quest for the |T236263:0|t[Sheath of Light] rune now
.zoneskip Tirisfal Glades
.mob Syndicate Footpad
.mob Syndicate Thief
step << Paladin
#season 2
.train 426178,1
.goto Silverpine Forest,69.95,7.05,150,0
.goto Tirisfal Glades,56.15,64.62,100 >>|cRXP_WARN_You now have to go into Scarlet Monastery and complete a full Cathedral run|r
>>After killing |cRXP_ENEMY_Mograine|r and |cRXP_ENEMY_Whitemane|r, talk to |cRXP_FRIENDLY_Aeonas|r in the back room
.complete 79946,2 
.turnin 79946 >>Turn in A Brother in Need
.accept 79963 >>Accept By The Light's Grace
.target Aeonas
step << Paladin
#season 2
.train 426178,1
>>Heal |cRXP_FRIENDLY_Aenoas|r to full HP
.complete 79963,1 
.target Aeonas
step << Paladin
#season 2
.train 426178,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeonas|r
.turnin 79963 >>Turn in By The Light's Grace
.accept 79970 >>Accept Aeonas the Vindicated
.target Aeonas
step
.dungeon SM
.goto Silverpine Forest,69.95,7.05,150,0
.goto Tirisfal Glades,56.15,64.62,100,0
.goto 1415,47.500,19.652,25,0
.goto 1415,47.792,19.611
.subzone 796,2 >> Enter Scarlet Monastery. Start with Library so you can loot the [|cRXP_FRIENDLY_The Scarlet Key|r] at the end
step
.dungeon SM
#completewith Bosses
>>Loot the |cRXP_LOOT_Mythology of the Titans|r
>>|cRXP_WARN_This can spawn randomly on the ground or in bookshelves throughout the Library wing|r
.complete 1050,1 
.isOnQuest 1050
step
.dungeon SM
#completewith Mythology
>>Open |cRXP_PICK_Doan's Strongbox|r. Loot it for [|cRXP_FRIENDLY_The Scarlet Key|r]
.collect 7146,1 
step
#xprate <1.99
#label Bosses
>>Kill |cRXP_ENEMY_Houndmaster Loksey|r, |cRXP_ENEMY_Herod|r, |cRXP_ENEMY_High Inquisitor Whitemane|r and |cRXP_ENEMY_Scarlet Commander Mograine|r
>>|cRXP_ENEMY_Houndmaster Loksey|r |cRXP_WARN_is located in the Library|r
>>|cRXP_ENEMY_Herod|r |cRXP_WARN_is located in the Armory|r
>>|cRXP_ENEMY_High Inquisitor Whitemane|r |cRXP_WARN_and |cRXP_ENEMY_Scarlet Commander Mograine|r are located in the Cathedral|r
.complete 1053,4 
.complete 1053,3 
.complete 1053,1 
.complete 1053,2 
.isOnQuest 1053
.dungeon SM
step
.dungeon SM
#label Mythology
>>Loot the |cRXP_LOOT_Mythology of the Titans|r
>>|cRXP_WARN_This can spawn randomly on the ground or in bookshelves throughout the Library wing|r
.complete 1050,1 
.isOnQuest 1050
step
.dungeon SM
#completewith next
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << Paladin
.dungeon !SM
#season 2
#optional
.train 426178,1
.hs >> Hearth to Southshore
.subzoneskip 796,1 
step
.dungeon !SM
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.accept 540 >> Accept Preserving Knowledge
.target Loremaster Dibbs
.isQuestTurnedIn 538
step
.dungeon !SM
.goto Alterac Mountains,18.83,78.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver|r
.turnin 602 >> Turn in Magical Analysis
.timer 6,Magical Analysis RP
.accept 603 >> Accept Ansirem's Key
.target Archmage Ansirem Runeweaver
step
#xprate <1.99
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r up stairs
.turnin 1053 >> Turn in In the Name of the Light
.isQuestTurnedIn 1052
.dungeon SM
step
.dungeon SM
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.accept 523 >> Accept Baron's Demise
.isQuestTurnedIn 522
.target Magistrate Henry Maleb
step
.dungeon SM
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.accept 540 >> Accept Preserving Knowledge
.target Loremaster Dibbs
.isQuestTurnedIn 538
step
.dungeon SM
.goto Alterac Mountains,18.83,78.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver|r
.turnin 602 >> Turn in Magical Analysis
.accept 603 >> Accept Ansirem's Key
.target Archmage Ansirem Runeweaver
step
#optional
#completewith Ruins
.goto Alterac Mountains,39.83,62.18,80,0
.goto Alterac Mountains,37.55,61.44,35 >> Travel to the Ruins of Alterac. This location will also serve as your exit route, should you need it
step << skip
#completewith Ruins
>>Kill |cRXP_ENEMY_Crushridge Warmongers|r
>>|cRXP_ENEMY_Crushridge Warmongers|r |cRXP_WARN_call for help at 25% HP|r
.complete 504,1 
.mob Crushridge Warmonger
.isOnQuest 504
step << Paladin
#season 2
#sticky
#softcore
#completewith Tiara
#label DormantRune
.goto Alterac Mountains,39.6,60.8
>>Look for a skeleton on the southern wall of the keep. Loot it for a |T134424:0|t|cRXP_LOOT_Dormant Holy Rune|r. |cRXP_WARN_You will need it to unlock a rune. Hoever to unlock it you will need to use|r |T136106:0|t[|cRXP_FRIENDLY_Divine Intervention|r] |cRXP_WARN_on a player and then get resurrected. You can skip this step if you know you won't be able to find a healer to help|r
.collect 213452,1
.train 415059,1
step << Paladin
#season 2
#sticky
#softcore
#completewith AlteracEnd
#requires DormantRune
.itemcount 213452,1
.train 415059,1
>>If you find a healer you can ask him to resurrect you after you cast |T136106:0|t[|cRXP_FRIENDLY_Divine Intervention|r] on them. Doing so will award you with the |T237537:0|t[|cRXP_FRIENDLY_Guarded by the Light|r] rune
.collect 213132,1 
step
#label Tiara
.goto Alterac Mountains,40.36,47.05,50,0
.goto Alterac Mountains,37.72,52.66,50,0
.goto Alterac Mountains,40.36,47.05
.line Alterac Mountains,35.58,54.44,35.26,54.33,35.20,54.18,35.77,53.74,36.26,55.11,36.66,54.81,36.29,53.75,37.30,52.85,37.59,52.71,38.24,52.79,38.87,51.55,39.28,50.93,39.52,49.71,40.14,47.23,40.91,46.30,40.24,46.09,40.13,47.69,39.19,51.17,38.51,52.01,38.11,52.68,37.46,52.78,36.28,53.71,35.88,52.69,35.52,53.01,35.77,53.74,35.20,54.18,35.26,54.33,35.58,54.44
>>Kill |cRXP_ENEMY_Grel'borg the Miser|r. Loot him for the |cRXP_LOOT_Perenolde Tiara|r
>>|cRXP_ENEMY_Grel'borg the Miser|r |cRXP_WARN_patrols the Ruins of Alterac. He is a level 39 Elite and easy to kill so long as you don't agro additional mobs. His patrol route is marked on your map|r
.complete 543,1 
.isOnQuest 543
.unitscan Grel'borg the Miser
step
#label Ruins
.goto Alterac Mountains,38.421,46.368
>>Enter the Town Hall
>>Open the |cRXP_PICK_Weathered Bookcase|r. Loot it for the |cRXP_LOOT_Worn Leather Book|r
>>|cRXP_WARN_You may kill |cRXP_ENEMY_Muckrake|r or just CC him, loot and then run away|r
.complete 540,2 
.isOnQuest 540
step << skip
.goto Alterac Mountains,38.40,57.80,60,0
.goto Alterac Mountains,37.25,50.39,60,0
.goto Alterac Mountains,38.40,57.80,60,0
.goto Alterac Mountains,36.855,53.237
>>Kill |cRXP_ENEMY_Crushridge Warmongers|r
>>|cRXP_ENEMY_Crushridge Warmongers|r |cRXP_WARN_call for help at 25% HP|r
.complete 504,1 
.mob Crushridge Warmonger
.isOnQuest 504
step
#completewith next
.goto Alterac Mountains,39.66,18.24,100 >> Travel to Dandred's Fold. Be careful of fall damage if dropping down from the Ruins of Alterac
.isOnQuest 504,543,540
step
#completewith ShadowMage
.goto Alterac Mountains,62.39,43.64,0
>>Kill the |cRXP_ENEMY_Syndicate|r. Loot them for their |cRXP_LOOT_Signet Rings|r
>>|cRXP_ENEMY_Syndicate Assassins|r |cRXP_WARN_and |cRXP_ENEMY_Syndicate Spies|r will be in|r |T132320:0|t[Stealth]
.complete 512,1 
.mob Syndicate Assassin
.mob Syndicate Enforcer
.mob Syndicate Saboteur
.mob Syndicate Sentry
.mob Syndicate Spy
.mob Syndicate Wizard
step
.goto Alterac Mountains,39.22,14.31
>>Kill |cRXP_ENEMY_Nagaz|r. Loot him for his |cRXP_LOOT_Head|r
.complete 537,2 
.mob Nagaz
step
.goto Alterac Mountains,39.177,14.661
>>Open the |cRXP_PICK_Worn Wooden Chest|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r]
>>Don't start the quest from this item yet
.collect 3706,1,551,1
step
#completewith next
>>Kill |cRXP_ENEMY_Argus Shadow Mages|r
.complete 537,1 
.mob Argus Shadow Mage
step
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9
>>Kill |cRXP_ENEMY_Baron Vardus|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Baron Vardus|r |cRXP_WARN_can be in the outside camps, as well as the basement Inn of Strahnbrad|r
.complete 523,1 
.isOnQuest 523
.unitscan Baron Vardus
step
#label ShadowMage
.goto Alterac Mountains,62.3,40.6,50,0
.goto Alterac Mountains,63.6,43.7,50,0
.goto Alterac Mountains,57.4,46.2,50,0
.goto Alterac Mountains,62.3,40.6
.goto Alterac Mountains,47.8,17.4,0
.goto Alterac Mountains,53.3,20.7,0
.goto Alterac Mountains,56.1,27.3,0
.goto Alterac Mountains,58.7,30.5,0
>>Kill |cRXP_ENEMY_Argus Shadow Mages|r
>>|cRXP_WARN_You may find |cRXP_ENEMY_Argus Shadow Mages|r in Strahnbrad as well as The Uplands|r
.complete 537,1 
.mob Argus Shadow Mage
step
.goto Alterac Mountains,62.3,40.6,50,0
.goto Alterac Mountains,63.6,43.7,50,0
.goto Alterac Mountains,57.4,46.2,50,0
.goto Alterac Mountains,62.3,40.6
.goto Alterac Mountains,47.8,17.4,0
.goto Alterac Mountains,53.3,20.7,0
.goto Alterac Mountains,56.1,27.3,0
.goto Alterac Mountains,58.7,30.5,0
>>Kill the |cRXP_ENEMY_Syndicate|r. Loot them for their |cRXP_LOOT_Signet Rings|r
>>|cRXP_ENEMY_Syndicate Assassins|r |cRXP_WARN_and |cRXP_ENEMY_Syndicate Spies|r will be in|r |T132320:0|t[Stealth]
.complete 512,1 
.mob Syndicate Assassin
.mob Syndicate Enforcer
.mob Syndicate Saboteur
.mob Syndicate Sentry
.mob Syndicate Spy
.mob Syndicate Wizard
step << Priest
#season 2
#completewith EmpoweredRenew
.train 425309,1
>>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for the |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r]
.collect 213140,1
.mob Crushridge Ogre
.mob Crushridge Brute
step
#label EmpoweredRenew
.goto Alterac Mountains,47.48,58.94,0
.goto Alterac Mountains,51.73,40.23,70,0
.goto Alterac Mountains,45.19,33.91,70,0
.goto Alterac Mountains,51.46,53.84,70,0
.goto Alterac Mountains,48.54,40.72
>>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for their |cRXP_LOOT_Tomes|r and |cRXP_LOOT_Knucklebones|r
.complete 540,1 
.complete 500,1 
.isOnQuest 540
.isOnQuest 500
.mob Crushridge Ogre
.mob Crushridge Brute
step << Mage
#season 2
.train 401749,1
.train 2120,3
.goto Alterac Mountains,60.510,46.286,-1
.goto Alterac Mountains,60.278,44.900,-1
>>|cRXP_WARN_Cast|r |T135826:0|t[Flamestrike] |cRXP_WARN_on the two bellows attached to the blacksmith building in Strahnbrad. Once one of the bellows starts glowing red and fiery, cast|r |T135826:0|t[Flamestrike] |cRXP_WARN_again on the second bellow to ignite it as well. This will trigger the |cRXP_ENEMY_Ancient Fire Elemental|r to spawn|r
>>Kill the |cRXP_ENEMY_Ancient Fire Elemental|r. Loot it for the |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r]
.collect 213113,1
.mob Ancient Fire Elemental
step << Mage
#season 2
.train 401749 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r] |cRXP_WARN_to train|r |T236218:0|t[Hot Streak]
.use 213113
.itemcount 213113,1
step << Priest
#season 2
.train 425309,1
.goto Alterac Mountains,47.48,58.94,0
.goto Alterac Mountains,51.73,40.23,70,0
.goto Alterac Mountains,45.19,33.91,70,0
.goto Alterac Mountains,51.46,53.84,70,0
.goto Alterac Mountains,48.54,40.72
>>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for the |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r]
.collect 213140,1
.mob Crushridge Ogre
.mob Crushridge Brute
step << Priest
#season 2
.train 425309 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r] |cRXP_WARN_to train|r |T236254:0|t[Empowered Renew]
.use 213140
step
.goto Alterac Mountains,59.52,62.68,65,0
.goto Hillsbrad Foothills,71.43,21.04,35,0
.goto Hillsbrad Foothills,84.23,31.99,45,0
.goto The Hinterlands,6.23,61.87
.zone The Hinterlands >> Travel to The Hinterlands
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
.fp Hinterlands >> Get The Hinterlands Flight Path
.target Guthrum Thunderfist
step << Paladin
#season 2
.train 429139,1 
.train 5502,3 
.goto The Hinterlands,33.0,44.0
>>|cRXP_WARN_This step can only be completed if the SERVER TIME is between 9pm and 3am. The mob won't be there otherwise|r
>>Cast |T135974:0|t[|cRXP_FRIENDLY_Sense Undead|r] and go to the Quel'Danil Lodge. Look for a |cRXP_PICK_Vengeful Spirit|r there, a level 45 undead. Kill it and loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r]
*The |cRXP_ENEMY_Vengeful Spirit|r walks around the lake
.collect 220165,1
.mob Vengeful Spirit
step << Paladin
#season 2
.itemcount 220165,1
.use 220165
.train 429249 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r] |cRXP_WARN_to train|r |T236260:0|t[|cRXP_FRIENDLY_Wrath|r]
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
.fly Southshore >> Fly to Southshore
.target Guthrum Thunderfist
step
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 500 >> Turn in Crushridge Bounty
.target Marshal Redpath
.isQuestComplete 500
step << skip
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 504 >> Turn in Crushridge Warmongers
.target Marshal Redpath
.isQuestComplete 504
step
.goto Hillsbrad Foothills,48.145,59.121
.target Magistrate Henry Maleb
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 512 >> Turn in Noble Deaths
.turnin 537 >> Turn in Dark Council
step
.abandon 504 >> Abandon Crushridge Warmongers
step
.goto Hillsbrad Foothills,48.145,59.121
.target Magistrate Henry Maleb
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 523 >> Turn in Baron's Demise
.isOnQuest 523
step
.goto Hillsbrad Foothills,50.570,57.093
>>|cRXP_WARN_Use the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r] to start the quest|r
.collect 3706,1,551,1
.use 3706
.accept 551 >> Accept The Ensorcelled Parchment
.turnin 551 >> Turn in The Ensorcelled Parchment
.accept 554 >> Accept Stormpike's Deciphering
.target Loremaster Dibbs
step
.isQuestComplete 540
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 540 >> Turn in Preserving Knowledge
.accept 542 >> Accept Return to Milton
.target Loremaster Dibbs
step 
.goto Hillsbrad Foothills,50.344,59.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
.accept 659 >> Accept Hints of a New Plague?
.target Phin Odelic
step
#completewith next
+Run from Southshore and check Tarren Mill and then go into Arathi looking for the |cRXP_ENEMY_Forsaken Courier|r
step
.isOnQuest 658
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>Kill the |cRXP_ENEMY_Forsaken Courier|r. Loot her for her |cRXP_LOOT_Sealed Folder|r
>>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
>>If you haven't found her by the time you reached Go'Shek, grind the Orcs there for 5 minutes, then skip the step if she hasn't spawned in Jorell's house by then
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find the|r |cRXP_ENEMY_Forsaken Courier|r << Hunter
.complete 658,1 
.unitscan Forsaken Courier
step
#optional
#completewith NewPlague
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi >> Fly to Arathi Highlands
.target Darla Harris
.isQuestTurnedIn 658
step
#optional
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 659 >> Turn in Hints of a New Plague?
.target Quae
.isQuestComplete 659
step
#optional
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 658 >> Turn in Hints of a New Plague?
.target Quae
.isQuestComplete 658
step
.isQuestTurnedIn 658
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r and |cRXP_FRIENDLY_Kinelory|r
>>|cRXP_WARN_Someone may be doing the |cRXP_FRIENDLY_Kinelory|r escort if she isn't there. Wait until she returns|r
.accept 657 >> Accept Hints of a New Plague?
.goto Arathi Highlands,60.185,53.848
.turnin 657 >> Turn in Hints of a New Plague?
.accept 660,1 >> Accept Hints of a New Plague?
.goto Arathi Highlands,60.238,53.920
.target Quae
.target Kinelory
step
.isQuestTurnedIn 658
>>Escort |cRXP_FRIENDLY_Kinelory|r through Go'Shek Farm
.complete 660,1
.target Kinelory
step
#label NewPlague
.isQuestTurnedIn 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 660 >> Turn in Hints of a New Plague?
.accept 661 >> Accept Hints of a New Plague?
.target Quae
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.accept 693 >> Accept Wand over Fist
.target Skuerto
.isQuestTurnedIn 691
step
#completewith next
.goto Arathi Highlands,54.21,77.80,30 >> Enter the Bolderfist Hall Cave
step
.goto Arathi Highlands,54.75,81.87
>>Kill |cRXP_ENEMY_Kor'gresh Coldrage|r. Loot him for |cRXP_LOOT_Trelane's Wand|r
>>|cRXP_WARN_He will cast|r |T136230:0|t[Trelane's Freezing Touch] |cRXP_WARN_which has a 3 second cast time that silences you for 12 seconds and slows your attack speed by 25%|r
.complete 693,1 
.mob Kor'gresh Coldrage
.isQuestTurnedIn 691
step << skip 
#completewith next
.goto Arathi Highlands,54.428,80.800
+|cRXP_WARN_Perform a Logout skip on the banner next to |cRXP_ENEMY_Kor'gresh Coldrage|r to teleport closer to Refuge Point. If you are unable to do this just run out normally|r
.link https://youtu.be/SWBtPqm5M0Q?t=61 >> |cRXP_WARN_Click here for video reference|r
.subzoneskip 316,1
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.turnin 693 >> Turn in Wand over Fist
.accept 694 >> Accept Trelane's Defenses
.target Skuerto
.isQuestTurnedIn 691
step << Hunter/Druid/Rogue
.solo
.goto Arathi Highlands,46.042,47.764
>>Click the |cRXP_PICK_Wanted Board|r
.accept 684 >> Accept Wanted! Marez Cowl
step
.group
.goto Arathi Highlands,46.042,47.764
>>Click the |cRXP_PICK_Wanted Board|r
.accept 684 >> Accept Wanted! Marez Cowl
.accept 685 >> Accept Wanted! Otto and Falconcrest
step << Warrior
#completewith next
>>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for their |cRXP_LOOT_Burning Charms|r
.collect 4479,8,1712,1 
.mob Burning Exile
.isOnQuest 1712
step << Mage
#season 2
#completewith next
.train 401749,1
>>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r]
>>|cRXP_WARN_Note: This has been reported to have a relatively low drop rate. You may want to consider getting it from Alterac Mountains instead|r
.collect 213113,1
.mob Burning Exile
step
#label WestBinding
.goto Arathi Highlands,25.468,30.110
>>Open the |cRXP_PICK_Stone of West Binding|r. Loot it for the |cRXP_LOOT_Burning Key|r
.complete 651,1 
step << Mage
#season 2
.train 401749,1
.goto Arathi Highlands,67.46,28.79,40,0
.goto Arathi Highlands,65.47,28.77,40,0
.goto Arathi Highlands,65.87,31.24,40,0
.goto Arathi Highlands,67.47,30.65,40,0
.goto Arathi Highlands,66.82,29.77
>>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r]
>>|cRXP_WARN_Note: This has been reported to have a relatively low drop rate. You may want to consider getting it from Alterac Mountains instead|r
.collect 213113,1
.mob Burning Exile
step << Mage
#season 2
.train 401749 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r] |cRXP_WARN_to train|r |T236218:0|t[Hot Streak]
.use 213113
.train 401749,1
.itemcount 213113,1
step << Warrior
.goto Arathi Highlands,67.46,28.79,40,0
.goto Arathi Highlands,65.47,28.77,40,0
.goto Arathi Highlands,65.87,31.24,40,0
.goto Arathi Highlands,67.47,30.65,40,0
.goto Arathi Highlands,66.82,29.77
>>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for their |cRXP_LOOT_Burning Charms|r
.collect 4479,8,1712,1 
.mob Burning Exile
.isOnQuest 1712
step << Warrior
#optional
#completewith next
.goto Alterac Mountains,79.318,66.811 >> Travel to Chillwind Point in Alterac Mountains
step << Warrior
.goto Alterac Mountains,79.318,66.811
>>Click |cRXP_PICK_Bath'rah's Cauldron|r
.complete 1712,3 
.isOnQuest 1712
step << Warrior
#completewith TheSummoning
+Before Accepting The Summoning watch the video below on how to solo |cRXP_ENEMY_Cyclonian|r
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
.isOnQuest 1712
step << Warrior
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1712 >> Turn in Cyclonian
.target Bath'rah the Windwatcher
.isQuestComplete 1712
step << Warrior
#label TheSummoning
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.accept 1713 >> Accept The Summoning
.timer 40,The Summoning RP
>>|cRXP_WARN_Accepting this quest will summon |cRXP_ENEMY_Cyclonian|r. He hits fairly hard, but can be soloed. Be sure to check the video for pointers on how to do so|r
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
.target Bath'rah the Windwatcher
.isQuestTurnedIn 1712
step << Warrior
.goto Alterac Mountains,80.65,62.1
>>Follow |cRXP_FRIENDLY_Bath'rah the Windwatcher|r to where he will summon |cRXP_ENEMY_Cyclonian|r
>>Kill |cRXP_ENEMY_Cyclonian|r. Loot him for his |cRXP_LOOT_Whirlwind Heart|r
>>|cRXP_ENEMY_Cyclonian|r hits fairly hard, but can be soloed. Be sure to check the video for pointers on how to do so|r
.complete 1713,1 
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
.isOnQuest 1713
step << Warrior
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1713 >> Turn in The Summoning
.target Bath'rah the Windwatcher
.isQuestComplete 1713
step << Warrior
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
>>|cRXP_WARN_The |T132403:0|t[|cFF0070FFWhirlwind Axe|r] is the best reward out of them all. However, if you do wish to choose a different weapon, it's only a small loss|r
.turnin 1792 >> Turn in Whirlwind Weapon
.target Bath'rah the Windwatcher
.isQuestTurnedIn 1713
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.goto Western Plaguelands,42.924,85.061
.fly Arathi >> Fly to Arathi Highlands
.target Bibilfaz Featherwhistle
.zoneskip Arathi Highlands
.isQuestTurnedIn 1713
step << Warrior
.abandon 1791 >> Abandon The Windwatcher
step << Warrior
.abandon 1712 >> Abandon Cyclonian
step << Warrior
.abandon 189 >>Abandon Bloodscalp Ears
step
.goto Arathi Highlands,36.229,57.375
>>Click the |cRXP_PICK_Stone of Inner Binding|r
.turnin 651 >> Turn in Stones of Binding
.accept 652 >> Accept Breaking the Keystone
step
.line Arathi Highlands,51.47,62.86,52.40,61.71,52.88,60.55,53.55,59.12,53.50,57.45,56.00,53.72,57.19,53.47,57.83,52.44,58.15,50.90,58.95,49.98,59.25,48.79,63.29,47.45,64.13,46.33,64.67,45.12,65.36,44.70,66.45,41.91,66.46,38.76,67.12,37.75,66.76,36.28,67.13,34.82,66.72,32.40,65.81,31.48,65.32,30.15,65.20,29.17,65.23,28.38,64.45,27.54,64.92,28.84,65.56,29.31,65.94,29.87,65.72,30.38,65.85,33.96,65.85,39.15,65.39,39.96,64.65,40.04,63.83,40.93,64.40,42.42,63.55,43.66,62.72,42.95,61.41,42.66,60.33,43.59,58.51,44.13,57.48,45.04,56.39,46.10,55.30,46.04,54.34,46.32,53.92,47.60,53.39,48.30,53.22,49.35,52.48,49.62,52.20,50.10,51.37,49.86,50.94,50.55,50.15,54.42,49.47,55.75,49.21,56.40,48.59,57.35,47.53,56.82,45.94,56.89,44.73,57.27,44.18,57.62,43.39,57.58,41.99,54.35,41.37,52.86,41.00,51.93,40.26,50.75,39.01,50.91,37.71,49.91,37.26,49.60,36.31,49.65,34.70,49.04,32.84,48.14,31.85,47.98,30.96,45.92,30.53,45.11,29.31,45.06,28.95,43.63,28.32,42.50,27.88,41.11,27.82,39.36,27.14,38.30,27.24,35.22,27.02,33.80,26.63,32.82,26.71,31.35,25.98,30.58,26.50,30.73,26.40,32.32,24.72,34.39,24.09,34.93,23.68,35.34,23.51,35.57,22.92,36.46,22.69,38.23,21.29,39.69,21.85,41.02,21.32,42.13,21.28,43.16,21.29,44.12,22.50,44.63,22.80,45.81,22.95,46.40,24.03,46.68,25.02,47.22,25.65,47.63,26.78,48.39,28.37,49.05,28.44,49.09,29.21,50.19,29.66,51.84,30.25,52.82,30.47,53.30,30.53,54.51,31.28,55.28,39.30,55.96,40.00,57.11,40.35,56.72,40.64,56.41,41.45,57.19,41.84,57.99,42.80,58.55,43.39,58.58,44.48,58.75,45.09,58.86,46.58,59.63,47.74,60.30,48.88,60.56,50.05,62.41,50.33,62.96,51.41,62.92
>>|cRXP_WARN_Be careful, this quest is VERY HARD. Skip this step if you're unable to solo it|r
>>Kill |cRXP_ENEMY_Fozruk|r. Loot him for the |cRXP_LOOT_Rod of Order|r
>>|cRXP_WARN_Focus on killing and interrupting the casts of |cRXP_ENEMY_Sleeby|r, |cRXP_ENEMY_Znort|r and |cRXP_ENEMY_Feeboz|r before killing|r |cRXP_ENEMY_Fozruk|r
>>|cRXP_ENEMY_Fozruk|r |cRXP_WARN_can be CC'd|r
>>|cRXP_WARN_Their patrol path is marked on your map|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find|r |cRXP_ENEMY_Fozruk|r << Hunter
>>|cRXP_WARN_After you deleash the kobolds and have only|r |cRXP_ENEMY_Fozruk|r |cRXP_WARN_on you kill him by keeping him|r |T136183:0|t[Feared] << Warlock
.complete 652,1
.link https://youtu.be/yM9OfJoj5Z8 >> |cRXP_WARN_Click here for video reference|r << Hunter/Warlock
.unitscan Fozruk
.mob Sleeby
.mob Znort
.mob Feeboz
step
.goto Arathi Highlands,36.07,58.09
>>Click on the |cRXP_PICK_Keystone|r
>>|cRXP_WARN_If you are still in a group, hand in this quest while with your party! |cRXP_ENEMY_Thenan|r, a level 42 Elite will spawn. You can either kill him or run away and reset him if you're solo|r
.turnin 652 >> Turn in Breaking the Keystone
.isQuestComplete 652
step
.dungeon !SM
.goto Arathi Highlands,36.07,58.09
>>Click on the |cRXP_PICK_Keystone|r
.accept 653 >> Accept Myzrael's Allies
.isQuestTurnedIn 652
step << Warlock
#season 2
.train 426443,1
#completewith SyndicateConjuror
+|cRXP_WARN_It is recommended you find additional party members for acquiring the|r |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r] |cRXP_WARN_as it requires killing elites in Stromgarde Keep|r
step << Warlock
#season 2
.train 426443,1
#completewith next
.subzone 324 >> Travel to Stromgarde Keep
step << Warlock
#season 2
#label SyndicateConjuror
.train 426443,1
#loop
.goto Arathi Highlands,26.04,62.80,40,0
.goto Arathi Highlands,29.47,64.14,40,0
.goto Arathi Highlands,29.06,60.96,40,0
>>Kill |cRXP_ENEMY_Syndicate Conjurors|r. Loot them for their |T348282:0|t[|cRXP_LOOT_Conjuror's Pendants|r]
>>Kill a |cRXP_ENEMY_Voidwalker Minion|r while you are channelling |T136163:0|t[Drain Soul] on it to receive a |T132885:0|t[|cRXP_LOOT_Soul of the Void|r]
.collect 213573,10
.collect 213572,1
.mob Syndicate Conjuror
.mob Voidwalker Minion
step << Warlock
#season 2
#completewith next
.train 426443,1
.goto Arathi Highlands,29.292,62.283,10 >> |cRXP_WARN_Enter the large house on the lower level of Stromgade Keep, and head up to the 2nd floor|r
step << Warlock
#season 2
#completewith next
.train 426443,1
.goto Arathi Highlands,29.077,63.079
.cast 434994 >> |cRXP_WARN_Use the|r |T348282:0|t[|cRXP_LOOT_Conjuror's Pendants|r] |cRXP_WARN_up stairs next to the floating|r |cRXP_PICK_Void Prism|r |cRXP_WARN_to summon a level 36 elite |cRXP_ENEMY_Void Seeker|r
.use 213573
step << Warlock
#season 2
.train 426443,1
.goto Arathi Highlands,29.077,63.079
>>Kill the |cRXP_ENEMY_Void Seeker|r. Loot it for the |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r]
.collect 213098,1
.mob Void Seeker
step << Warlock
#season 2
.train 426443 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r] |cRXP_WARN_to train|r |T136133:0|t[Invocation]
.use 213098
step << !Warlock
#season 2
#completewith next
.subzone 324 >> Travel to Stromgarde Keep
.goto Arathi Highlands,25.91,54.81
step
.group 4
.goto Arathi Highlands,26.026,65.656
>>Kill |cRXP_ENEMY_Otto|r and |cRXP_ENEMY_Lord Falconcrest|r. Loot them for their |cRXP_LOOT_Heads|r
.complete 685,1 
.complete 685,2 
.mob Otto
.mob Lord Falconcrest
.isOnQuest 685
step << Hunter/Druid/Rogue
.solo
.goto Arathi Highlands,29.599,63.682,0 
.goto Arathi Highlands,29.477,64.149,20,0 
.goto Arathi Highlands,29.624,62.975 
>>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Marez Cowl|r |cRXP_WARN_has 2 different spawn locations. One is on the high ground location, and the other is below behind the house. They are marked on your map|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location she is in|r << Hunter
.complete 684,1 
.unitscan Marez Cowl
.isOnQuest 684
step
#label MarezCowl
.group 2
.goto Arathi Highlands,29.599,63.682,0 
.goto Arathi Highlands,29.477,64.149,20,0 
.goto Arathi Highlands,29.624,62.975 
>>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Marez Cowl|r |cRXP_WARN_has 2 different spawn locations. One is on the high ground location, and the other is below behind the house. They are marked on your map|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location she is in|r << Hunter
.complete 684,1 
.unitscan Marez Cowl
.isOnQuest 684
step
.goto Arathi Highlands,24.14,61.85,30,0
.goto Arathi Highlands,24.25,64.97,30,0
.goto Arathi Highlands,21.22,66.52,40,0
.goto Arathi Highlands,20.21,67.17
>>Kill |cRXP_ENEMY_Boulderfist Shamans|r. Loot them for the |cRXP_LOOT_Azure Agate|r
.complete 694,1 
.mob Boulderfist Shaman
.isOnQuest 694
step
#softcore
#completewith next
.deathskip >> Die and respawn at the Spirit Healer in Refuge Pointe
.target Spirit Healer
.xp <40,1 << Paladin/Warlock
step
.dungeon SM
.goto Arathi Highlands,36.07,58.09
>>Click on the |cRXP_PICK_Keystone|r
.accept 653 >> Accept Myzrael's Allies
.isQuestTurnedIn 652
step << Hunter/Druid/Rogue
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 684 >> Turn in Wanted! Marez Cowl
.target Captain Nials
.isQuestComplete 684
step
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 684 >> Turn in Wanted! Marez Cowl
.turnin 685 >> Turn in Wanted! Otto and Falconcrest
.target Captain Nials
.isQuestComplete 684
.isQuestComplete 685
step
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 684 >> Turn in Wanted! Marez Cowl
.target Captain Nials
.isQuestComplete 684
step
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 685 >> Turn in Wanted! Otto and Falconcrest
.target Captain Nials
.isQuestComplete 685
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.turnin 694 >> Turn in Trelane's Defenses
.target Apprentice Kryten
.isQuestComplete 694
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.accept 695 >> Accept An Apprentice's Enchantment
.target Apprentice Kryten
.isQuestTurnedIn 694
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.turnin 695 >> Turn in An Apprentice's Enchantment
.target Skuerto
.isQuestTurnedIn 694
step
#optional
.destroy 4529 >> Delete the |T134094:0|t[Enchanted Agate] from your bags. It's no longer necessary
step << Warlock/Paladin
.xp 40 >> Grind to level 40
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.goto Arathi Highlands,45.73,46.09
.fly Southshore >> Fly to Southshore
.target Cedrik Prose
.zoneskip Hillsbrad Foothills
.isOnQuest 661
step
.isOnQuest 661
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
.turnin 661 >> Turn in Hints of a New Plague?
step
.dungeon RFD
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
.home >> Set your Hearthstone to Menethil Harbor
.target Innkeeper Helbrek
step
.dungeon SM
.goto Wetlands,9.49,59.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Ironforge>> Fly to Ironforge
.target Shellei Brondir
.isQuestComplete 1050
step
.dungeon RFD
.goto Wetlands,9.49,59.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Ironforge>> Fly to Ironforge
.target Shellei Brondir
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
.turnin 1050 >> Turn in Mythology of the Titans
.target Librarian Mae Paledust
.isQuestComplete 1050
step
#optional
.isOnQuest 554
.goto Ironforge,74.645,11.742
.target Prospector Stormpike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
>>|cRXP_WARN_Skip this step if you are not in Ironforge|r
.turnin 554 >> Turn in Stormpike's Deciphering
step << Warlock
.isOnQuest 653
.goto Ironforge,50.827,5.621
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 653 >> Turn in Myzrael's Allies
.target Gerrig Bonegrip
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.accept 4487 >> Accept Summon Felsteed
.trainer >> Train your class spells
.target Briarthorn
step << Paladin
.dungeon !SM
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Ironforge >> Fly to Ironforge
.dungeon RFD
.goto Ironforge,76.61,51.28,10,0
.zone Stormwind City >> Take the tram to Stormwind
step << Paladin
.dungeon !RFD
.goto Ironforge,76.61,51.28,10,0
.zone Stormwind City >> Take the tram to Stormwind
step << Paladin
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.accept 1661 >>Accept The Tome of Nobility
.turnin 1661 >>Turnin The Tome of Nobility
.target Duthorian Rall
step << Paladin
.goto StormwindClassic,38.67,32.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.trainer >> Train your class spells
.target Arthur the Faithful
step
.dungeon RFD
.goto Stormwind City,39.592,27.199
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.accept 3636 >> Accept Bring the Light
.target Archbishop Benedictus
step
.dungeon RFD
.goto StormwindClassic,39.834,54.360
+Zone into the Stockade in Stormwind
.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Click here to Copy + Paste this macro once you're inside The Stockades to ghetto Hearth to Wetlands|r
.zone Wetlands >>|cRXP_WARN_If you are unable to do this, make your way back to Wetlands|r
step << !Mage
.dungeon !SM
.goto Hillsbrad Foothills,49.338,52.272 << !Warlock !Paladin
.goto Ironforge,55.501,47.742 << Warlock
.goto StormwindClassic,66.277,62.137 << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r << !Warlock !Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r << Paladin
.fly Ironforge >> Fly to Ironforge
.target Darla Harris << !Warlock !Paladin
.target Gryth Thurden << Warlock
.target Dungar Longdrink << Paladin
step << Mage
.dungeon !SM
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Teleport to Ironforge
step
.goto Ironforge,74.645,11.742
.target Prospector Stormpike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.turnin 554 >> Turn in Stormpike's Deciphering
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
.turnin 1050 >> Turn in Mythology of the Titans
.target Librarian Mae Paledust
step
.goto Ironforge,50.827,5.621
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 653 >> Turn in Myzrael's Allies
.target Gerrig Bonegrip
.isQuestTurnedIn 652
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
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
.goto Ironforge,70.856,85.839
.train 14925 >>Train |T132270:0|t[Growl (Rank 5)]
.target Belia Thundergranite
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
step
#completewith next
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
step << Warlock
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
>>|cRXP_WARN_Buy the|r |T133733:0|t|cRXP_LOOT_[Grimoire of Fel Armor]|r |cRXP_WARN_use it once you reach level 50 to learn|r |T136156:0|t[Fel Armor] << Warlock
.collect 403619,1
step
.dungeon RFD
.goto Stormwind City,39.592,27.199
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.turnin 3636 >> Turn in Bring the Light
.target Archbishop Benedictus
.isQuestComplete 3636
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
.goto Stranglethorn Vale,35.556,10.546
.accept 196 >> Accept Raptor Mastery
.goto Stranglethorn Vale,35.658,10.808
.target Sir S. J. Erlgadin
.target Hemet Nesingwary
.isQuestAvailable 193
.isQuestAvailable 196
step << Warlock
.hs >> Hearth to Stormwind
>>|cRXP_BUY_Buy food/water if needed|r
.zoneskip Stormwind City
step << Priest
#season 2
>>|cRXP_WARN_Find a Rogue with the|r |T132299:0|t[Master of Subtlety] |cRXP_WARN_rune and|r |T338666:0|t[Jani's Charm] |cRXP_WARN_trinket to|r |T133644:0|t[Pick Pocket] |cRXP_WARN_any |cRXP_ENEMY_Bloodscalp Troll|r in Stranglethorn Vale for the|r |T237446:0|t[Mysterious Troll Scroll]|cRXP_WARN_. A Mage must then use a|r |T135933:0|t[Comprehension Charm] |cRXP_WARN_to decipher it for it to become a |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r]|r
>>|cRXP_WARN_Alternatively buy a|r |T237446:0|t[Mysterious Troll Scroll]|r |cRXP_WARN_from the Auction House and have a Mage decipher it, or buy the already |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r]|r
.use 216880 >>|cRXP_WARN_Use the |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r] to start the quest|r
>>|cRXP_WARN_You may also look for a Priest to share the quest with you|r
>>|cRXP_WARN_You can also check the AH for the prices of|r |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r] |cRXP_WARN_and|r |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r]|cRXP_WARN_. Buy them if they're affordable. You will need them to unlock|r |T237567:0|t[Pain and Suffering] |cRXP_WARN_later. Both of these items can be farmed alone if they're too expensive|r
.collect 216880,1 
.disablecheckbox
.collect 221547,1 
.collect 221549,1 
.accept 79731 >> Accept The Troll Scroll
step << Priest
#season 2
.train 425314,1
#completewith next
+|cRXP_WARN_Ensure you have 2 active running|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs before flying|r
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <40,1
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <40,1
step << !Warlock
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r
.zoneskip Stranglethorn Vale
step << Warlock
#label start
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Booty Bay>> Fly to Booty Bay
.target Dungar Longdrink
step << Warlock/Paladin
#label AlteracSkipPalaLock
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r
.zoneskip Stranglethorn Vale
step
#optional
#label AlteracSkip
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
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r inside the Inn
.turnin 603 >> Turn in Ansirem's Key
.accept 610 >> Accept "Pretty Boy" Duncan
.target Catelyn the Blade
.isQuestComplete 603
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 621 >> Accept Zanzil's Secret
]]);
