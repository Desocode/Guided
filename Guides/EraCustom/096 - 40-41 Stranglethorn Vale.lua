RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 40-50
#classic
#tbc
#mop
<< Horde
#name 40-41 Stranglethorn Vale
#next 41-400_41-41 Swamp of Sorrows
step << Mage
#xprate <1.99
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 8423 >> Train your class spells
.target Pephredo
.xp <40,1
.xp >42,1
step << Mage
#xprate <1.99
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 10159 >> Train your class spells
.target Pephredo
.xp <42,1
step << Mage
#xprate <1.99
.goto Orgrimmar,38.70,85.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r at the top of the hut
.train 11417 >> Train |T135744:0|t[Portal: Orgrimmar]
.target Thuul
.xp <40,1
step << Shaman
#xprate <1.99
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 8134 >> Train your class spells
.target Kardris Dreamseeker
.xp <40,1
.xp >42,1
step << Shaman
#xprate <1.99
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 11314 >> Train your class spells
.target Kardris Dreamseeker
.xp <42,1
step << Rogue
#xprate <1.99
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 8624 >> Train your class spells
.target Ormok
.xp <40,1
.xp >42,1
step << Rogue
#xprate <1.99
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 6774 >> Train your class spells
.target Ormok
.xp <42,1
step << Rogue
#xprate <1.99
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r
.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
.target Rekkul
.zoneskip Orgrimmar,1
step << Warlock
#xprate <1.99
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11665 >> Train your class spells
.target Mirket
.xp <40,1
.xp >42,1
step << Warlock
#xprate <1.99
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 6789 >> Train your class spells
.target Mirket
.xp <42,1
step << Warlock
#xprate <1.99
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
.vendor >>Buy any pet upgrades you can afford
.target Kurgul
.zoneskip Orgrimmar,1
step << Hunter
#xprate <1.99
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14324 >> Train your class spells
.target Ormak Grimshot
.xp <40,1
.xp >42,1
step << Hunter
#xprate <1.99
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14289 >> Train your class spells
.target Ormak Grimshot
.xp <42,1
step << Hunter
#optional
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
.train 14925 >> Train your pet spells
.target Xao'tsu
.xp <40,1
.xp >42,1
step << Hunter
#xprate <1.99
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
.train 24561 >> Train your pet spells
.target Xao'tsu
.xp <42,1
step << Hunter
#xprate <1.99
.goto Orgrimmar,78.11,38.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Jin'sora|r
.vendor >> |cRXP_BUY_Buy a|r |T135489:0|t[|cRXP_FRIENDLY_Massive Longbow|r] |cRXP_BUY_from him if it's available|r
.target Jin'sora
.money <6.7952
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
.itemcount 11307,<1
.zoneskip Orgrimmar,1
step << Priest
#xprate <1.99
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 8106 >> Train your class spells
.target Ur'kyo
.xp <40,1
.xp >42,1
step << Priest
#xprate <1.99
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10898 >> Train your class spells
.target Ur'kyo
.xp <42,1
step << Warrior
#xprate <1.99
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11608 >> Train your class spells
.target Grezz Ragefist
.xp <40,1
.xp >42,1
step << Warrior
#xprate <1.99
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11550 >> Train your class spells
.target Grezz Ragefist
.xp <42,1
step
#xprate <1.99
.goto Orgrimmar,75.18,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belgrom Rockmaul|r
.accept 2981 >> Accept A Threat in Feralas
.target Belgrom Rockmaul
step << Orc !Warlock
#season 0
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kildar|r and |cRXP_FRIENDLY_Ogunaro|r
.train 825 >>Train |T136103:0|t[Wolf Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro Wolfrunner
step << Orc !Warlock
#season 2
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kildar|r and |cRXP_FRIENDLY_Ogunaro|r
.train 825 >>Train |T136103:0|t[Wolf Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <45
.skill riding,75,1
.target Kildar
.target Ogunaro Wolfrunner
step << Priest
#season 2
.train 425314,1
>>|cRXP_WARN_Find a Rogue with the|r |T132299:0|t[Master of Subtlety] |cRXP_WARN_rune and|r |T338666:0|t[Jani's Charm] |cRXP_WARN_trinket to|r |T133644:0|t[Pick Pocket] |cRXP_WARN_any |cRXP_ENEMY_Bloodscalp Troll|r in Stranglethorn Vale for the|r |T237446:0|t[Mysterious Troll Scroll]|cRXP_WARN_. A Mage must then use a|r |T135933:0|t[Comprehension Charm] |cRXP_WARN_to decipher it for it to become a |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r]|r
>>|cRXP_WARN_Alternatively buy a|r |T237446:0|t[Mysterious Troll Scroll]|r |cRXP_WARN_from the Auction House and have a Mage decipher it, or buy the already |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r]|r
.use 216880 >>|cRXP_WARN_Use the |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r] to start the quest|r
>>|cRXP_WARN_You may also look for a Priest to share the quest with you|r
.collect 216880,1
.disablecheckbox
.accept 79731 >> Accept The Troll Scroll
step << Shaman/Priest
#season 2
#ah
#optional
#completewith ZeptoUC3
+|cRXP_WARN_Buy|r |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r] |cRXP_WARN_and|r |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r]|cRXP_WARN_from the auction house if possible|r
>>|cRXP_WARN_This will be needed to obtain|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mental Dexterity|r] |cRXP_WARN_later. Both of these items can be farmed alone if they're too expensive|r << Shaman
>>|cRXP_WARN_This will be needed to obtain|r |T135975:0|t[|cRXP_FRIENDLY_Rune of Pain and Suffering|r] |cRXP_WARN_later. Both of these items can be farmed alone if they're too expensive|r << Priest
.train 415991,1 << Priest
.train 416055,1 << Shaman
step << Troll
#season 0
#optional
#completewith next
.subzone 367 >> Travel to Sen'Jin Village
.xp <40,1
.money <90
.skill riding,75,1
step << Troll
#season 0
#optional
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r and |cRXP_FRIENDLY_Zjolnir|r
.train 10861 >>Train |T136103:0|t[Raptor Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFRaptor|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step << Troll
#season 2
#optional
#completewith next
.subzone 367 >> Travel to Sen'Jin Village
.xp <40,1
.money <45
.skill riding,75,1
step << Troll
#season 2
#optional
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r and |cRXP_FRIENDLY_Zjolnir|r
.train 10861 >>Train |T136103:0|t[Raptor Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFRaptor|r]
.xp <40,1
.money <45
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step << Priest
#season 2
.train 425314,1
#completewith next
+|cRXP_WARN_Ensure you have 2 active running|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs before taking the zeppelin|r
step
#xprate >1.99
#optional
#completewith RFDTurnins2X
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Tirisfal Glades >>Take the Zeppelin to Undercity
.zoneskip Tirisfal Glades
.dungeon RFD
step
#xprate >1.99
#optional
.goto Undercity,74.05,33.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew|r
.turnin 3341 >>Turn in Bring the End
.target Andrew Brownell
.isQuestComplete 3341
.dungeon RFD
step
#xprate >1.99
#completewith next
.goto Undercity,51.92,64.68,15 >>Travel toward |cRXP_FRIENDLY_Varimathras|r
.isQuestComplete 6521
.dungeon RFD
step
#xprate >1.99
#label RFDTurnins2X
#optional
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
.turnin 6521 >>Turn in An Unholy Alliance
.target Varimathras
.isQuestComplete 6521
.dungeon RFD
step
#xprate >1.99
#optional
.zone Stranglethorn Vale >>Take the Zeppelin to Stranglethorn Vale
.zoneskip Orgrimmar
.zoneskip Durotar
step
#optional
.abandon 782,709,2202,2418
step << Mage
#optional
.hs >> Hearth to Grom'gol Base Camp
.use 6948
.bindlocation 117,1
.subzoneskip 117
.cooldown item,6948,>0,1
step
#completewith ZeptoUC3
.zone Durotar >> Leave Orgrimmar
.zoneskip Orgrimmar,1
step
#label ZeptoUC3
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Stranglethorn Vale >>Take the Zeppelin to Stranglethorn Vale
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,31.49,29.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Thulbek|r
.home >>Set your Hearthstone to Grom'Gol Base Camp
.target Innkeeper Thulbek
.bindlocation 117
.isQuestAvailable 572
step
.goto Stranglethorn Vale,32.12,29.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
.accept 572 >> Accept Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r
.turnin 1240 >> Turn in The Troll Witchdoctor
.target Kin'weelay
.isQuestTurnedIn 1238
step
.goto Stranglethorn Vale,32.10,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
.accept 584 >> Accept Bloodscalp Clan Heads
.target Nimboya
step
.goto Stranglethorn Vale,32.20,27.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r
.accept 598 >> Accept Split Bone Necklace
.target Kin'weelay
step << Priest
#season 2
.train 425314,1
#loop
.goto Stranglethorn Vale,32.99,38.06,0
.goto Stranglethorn Vale,31.00,42.50,60,0
.goto Stranglethorn Vale,32.99,38.06,50,0
.goto Stranglethorn Vale,31.42,40.17,50,0
.goto Stranglethorn Vale,30.14,43.06,50,0
.goto Stranglethorn Vale,28.36,43.47,50,0
.goto Stranglethorn Vale,28.53,45.96,50,0
.goto Stranglethorn Vale,30.61,44.54,50,0
.goto Stranglethorn Vale,31.80,43.08,50,0
.goto Stranglethorn Vale,33.24,40.38,50,0
.goto Stranglethorn Vale,33.85,38.45,50,0
>>Kill |cRXP_ENEMY_Jungle Stalkers|r. Loot them for their |cRXP_LOOT_Feathers|r
.complete 196,1 
.complete 572,1 
.mob Jungle Stalker
step << Priest
#season 2
.train 425314,1
.goto Stranglethorn Vale,28.961,61.931
>>Click |cRXP_PICK_The Holy Spring|r. Loot it for the |T134712:0|t[|cRXP_LOOT_Holy Spring Water|r]
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Lord Sakrasis|r (level 45 Rare) who guards in front of|r |cRXP_PICK_The Holy Spring|r
.collect 737,1 
.mob Lord Sakrasis
step << Priest
#season 2
.train 425314,1
.goto Stranglethorn Vale,23.569,7.955
.cast 3591 >> |cRXP_WARN_Use the|r |T134712:0|t[|cRXP_LOOT_Holy Spring Water|r] |cRXP_WARN_at the small fountain|r
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
.itemcount 213142,1
step
#completewith TrollHeads
.goto Stranglethorn Vale,23.82,10.78,200 >> Travel to the Ruins of Zul'Kunda
.subzoneskip 102
step
.goto Stranglethorn Vale,23.52,9.53
>>Kill |cRXP_ENEMY_Nezzliok the Dire|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Be careful. |cRXP_ENEMY_Nezzliok|r casts|r |T136115:0|t[Shock]|cRXP_WARN_. An instant 280 damage spell|r
.complete 584,2 
.unitscan Nezzliok the Dire
step
#label TrollHeads
.goto Stranglethorn Vale,23.44,8.14
>>Kill |cRXP_ENEMY_Gan'zulah|r. Loot him for his |cRXP_LOOT_Head|r
.complete 584,1 
.unitscan Gan'zulah
step
#completewith next
.subzone 117 >> Return to Grom'gol Base Camp
step
.goto Stranglethorn Vale,32.22,27.60
>>Click on the |cRXP_PICK_Bubbling Cauldron|r
.turnin 584 >> Turn in Bloodscalp Clan Heads
.accept 585 >> Accept Speaking with Nezzliok
step
#loop
.goto Stranglethorn Vale,32.99,38.06,0
.goto Stranglethorn Vale,31.00,42.50,60,0
.goto Stranglethorn Vale,32.99,38.06,50,0
.goto Stranglethorn Vale,31.42,40.17,50,0
.goto Stranglethorn Vale,30.14,43.06,50,0
.goto Stranglethorn Vale,28.36,43.47,50,0
.goto Stranglethorn Vale,28.53,45.96,50,0
.goto Stranglethorn Vale,30.61,44.54,50,0
.goto Stranglethorn Vale,31.80,43.08,50,0
.goto Stranglethorn Vale,33.24,40.38,50,0
.goto Stranglethorn Vale,33.85,38.45,50,0
>>Kill |cRXP_ENEMY_Jungle Stalkers|r. Loot them for their |cRXP_LOOT_Feathers|r
.complete 196,1 
.complete 572,1 
.mob Jungle Stalker
step << Warlock
#season 2
.train 416017,1
.goto Stranglethorn Vale,31.2,47.4
>>Click the |cRXP_ENEMY_Reckless Warlock|r on the ground. Loot him for |T236297:0|t[Brimstone Carving]
>>|cRXP_WARN_This is a rare enemy and there's a chance it may not be present|r
.collect 213583,1
.unitscan Reckless Warlock
.mob Reckless Warlock
step << Warlock
#season 2
.train 416017,1
>>|cRXP_WARN_Cast|r |T135818:0|t[Hellfire] |cRXP_WARN_to damage yourself below 70% health. Afterwards|r |T236297:0|t[Brimstone Carving] |cRXP_WARN_will transform into|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wickedness|r]
.collect 213102,1 
.itemcount 213583,1
step << Warlock
#season 2
.train 416017 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wickedness|r] |cRXP_WARN_to learn|r |T236295:0|t[Dance of the Wicked]
.use 416017
.itemcount 213102,1
step
#era
#loop
.goto Stranglethorn Vale,40.36,41.93,0
.goto Stranglethorn Vale,40.36,41.93,50,0
.goto Stranglethorn Vale,43.73,41.47,50,0
.goto Stranglethorn Vale,44.73,42.05,50,0
.goto Stranglethorn Vale,43.26,42.29,50,0
.goto Stranglethorn Vale,42.55,41.55,50,0
.goto Stranglethorn Vale,41.48,41.18,50,0
.goto Stranglethorn Vale,41.43,40.36,50,0
>>Kill |cRXP_ENEMY_Venture Co. Goblins|r. Loot them for their |cRXP_LOOT_Crystals|r
.complete 600,1 
.mob Venture Co. Surveyor
.mob Venture Co. Foreman
.mob Venture Co. Strip Miner
.mob Venture Co. Tinkerer
.mob Foreman Cozzle
step << Mage
#season 2
.train 415948,1
.train 401762,1
#completewith SkullNecks
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
#completewith SkullNecks
>>Kill |cRXP_ENEMY_Skullsplitter Mystics|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS]|r and |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r]
.collect 213127,1
.collect 217161,1
.mob Skullsplitter Mystic
.itemcount 211779,1 
step
#completewith SkullP
>>Kill |cRXP_ENEMY_Skullsplitter Trolls|r. Loot them for their |cRXP_LOOT_Tusks|r and |cRXP_LOOT_Necklaces|r
>>|cRXP_WARN_The|r |cRXP_LOOT_Necklaces|r |cRXP_WARN_can be completed later|r
.complete 209,1 
.complete 598,1 
.disablecheckbox
.mob Skullsplitter Mystic
.mob Skullsplitter Warrior
.mob Skullsplitter Axe Thrower
step
.goto Stranglethorn Vale,42.20,36.10
>>Loot the |cRXP_PICK_Ziata'jai Trophy Skulls|r for its |cRXP_LOOT_Trophy|r
.complete 585,2 
step
.goto Stranglethorn Vale,47.60,39.60
>>Loot the |cRXP_PICK_Zul'Mamwe Trophy Skulls|r for its |cRXP_LOOT_Trophy|r
.complete 585,3 
step
#label SkullP
.goto Stranglethorn Vale,46.10,32.30
>>Loot the |cRXP_PICK_Balia'mah Trophy Skulls|r for its |cRXP_LOOT_Trophy|r
.complete 585,1 
step
#label SkullNecks
#loop
.goto Stranglethorn Vale,42.13,36.29,0
.goto Stranglethorn Vale,42.13,36.29,50,0
.goto Stranglethorn Vale,41.89,35.93,50,0
.goto Stranglethorn Vale,42.45,35.03,50,0
.goto Stranglethorn Vale,42.47,33.35,50,0
.goto Stranglethorn Vale,43.47,33.25,50,0
.goto Stranglethorn Vale,45.06,32.39,50,0
.goto Stranglethorn Vale,45.51,31.66,50,0
.goto Stranglethorn Vale,46.42,31.98,50,0
.goto Stranglethorn Vale,47.19,30.85,50,0
.goto Stranglethorn Vale,47.11,32.54,50,0
.goto Stranglethorn Vale,47.13,34.31,50,0
.goto Stranglethorn Vale,45.23,34.47,50,0
.goto Stranglethorn Vale,44.00,35.53,50,0
.goto Stranglethorn Vale,43.44,37.92,50,0
>>Finish killing |cRXP_ENEMY_Skullsplitter Trolls|r. Loot them for their |cRXP_LOOT_Tusks|r and |cRXP_LOOT_Necklaces|r
>>|cRXP_WARN_The|r |cRXP_LOOT_Necklaces|r |cRXP_WARN_can be completed later|r
.complete 209,1 
.complete 598,1 
.disablecheckbox
.mob Skullsplitter Mystic
.mob Skullsplitter Warrior
.mob Skullsplitter Axe Thrower
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
#loop
.goto Stranglethorn Vale,47.2,28.0,0
.goto Stranglethorn Vale,49.8,24.6,0
.goto Stranglethorn Vale,48.4,19.2,0
.goto Stranglethorn Vale,47.26,28.58,50,0
.goto Stranglethorn Vale,49.61,23.98,50,0
.goto Stranglethorn Vale,48.95,19.87,50,0
.goto Stranglethorn Vale,47.26,23.98,50,0
>>Kill |cRXP_ENEMY_Bhag'thera|r. Loot him for his |cRXP_LOOT_Fang|r
>>|cRXP_ENEMY_Bhag'thera|r |cRXP_WARN_can spawn north or west of the Mosh'Ogg Ogre Mound|r
>>|cRXP_WARN_Before engaging|r |cRXP_ENEMY_Bhag'thera|r|cRXP_WARN_, clear the area of|r |cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_to avoid adds|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and locate |cRXP_ENEMY_Bhag'thera|r|r << Hunter
>>|cRXP_WARN_Cast|r |T136034:0|t[Far Sight] |cRXP_WARN_to try and locate |cRXP_ENEMY_Bhag'thera|r|r << Shaman
.complete 193,1 
.mob Shadowmaw Panther
.unitscan Bhag'thera
step
#loop
.goto Stranglethorn Vale,42.33,16.93,0
.goto Stranglethorn Vale,40.41,19.45,0
.goto Stranglethorn Vale,38.69,30.20,0
.goto Stranglethorn Vale,41.35,21.87,0
.goto Stranglethorn Vale,42.33,16.93,50,0
.goto Stranglethorn Vale,41.23,15.30,50,0
.goto Stranglethorn Vale,39.71,16.99,50,0
.goto Stranglethorn Vale,40.41,19.45,50,0
.goto Stranglethorn Vale,39.67,21.60,50,0
.goto Stranglethorn Vale,39.40,25.25,50,0
.goto Stranglethorn Vale,38.69,30.20,50,0
.goto Stranglethorn Vale,39.24,31.33,50,0
.goto Stranglethorn Vale,39.99,28.14,50,0
.goto Stranglethorn Vale,40.61,24.59,50,0
.goto Stranglethorn Vale,41.35,21.87,50,0
>>Kill |cRXP_ENEMY_Snapjaw Crocolisks|r along the river. Loot them for their |cRXP_LOOT_Skin|r
.complete 577,1 
.mob Snapjaw Crocolisk
.maxlevel 41
step
#xprate >1.99
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet|r and |cRXP_FRIENDLY_S. J. Erlgadin|r
.turnin 196 >> Turn in Raptor Mastery
.accept 197 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.66,10.81
.turnin 193 >> Turn in Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.55,10.55
.xp <43,1 
step
.hs >> Hearth to Grom'gol Base Camp
.use 6948
.bindlocation 117,1
.subzoneskip 117
.cooldown item,6948,>0,1
.isQuestComplete 572
step
.subzone 117 >>Travel to Grom'gol Base Camp
.cooldown item,6948,<0
.isQuestComplete 572,598
step
#era
.goto Stranglethorn Vale,31.48,29.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Thulbek|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Thulbek
.subzoneskip 117,1
step << Hunter
#era
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthok|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,2600,669,1 
.target Uthok
.xp >40,1
.subzoneskip 117,1
step << Hunter
#era
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthok|r
>>|cRXP_BUY_Buy|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_from him|r
.collect 11285,2600,669,1 
.target Uthok
.xp <40,1
.subzoneskip 117,1
step
#era
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
.turnin 572 >> Turn in Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
#era
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r
.turnin 598 >> Turn in Split Bone Necklace
.target Kin'weelay
.isQuestComplete 598
step
#era
>>Click on the |cRXP_PICK_Bubbling Cauldron|r
.turnin 585 >> Turn in Speaking with Nezzliok
.accept 1261 >> Accept Marg Speaks
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet|r and |cRXP_FRIENDLY_S. J. Erlgadin|r
.turnin 196 >> Turn in Raptor Mastery
.accept 197 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.66,10.81
.turnin 193 >> Turn in Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.55,10.55
step << Priest
#season 2
.isQuestComplete 79731
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 79731 >> Turn in The Troll Scroll
.target Hemet Nesingwary
]]);
