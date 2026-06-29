RXPGuides.RegisterGuide([[
#version 23
#season 2
#group RestedXP Alliance 20-30
#classic
#tbc
#mop
<< Alliance
#name 24-28 Redridge/Duskwood SoD
#displayname 24-28 Redridge/Duskwood
#next 28-32 Duskwood SoD
step << Hunter
#xprate >1.59
#sticky
#label PetTrain
.goto 1453,61.576,15.998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r inside
.train 4198 >> Train your pet spells
.target Karrina Mekenda
.zoneskip Redridge Mountains
step << Hunter
#xprate >1.59
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r inside
.trainer >> Train your class spells
.target Einris Brightspear
.zoneskip Redridge Mountains
step
#xprate >1.59
#sticky
#requires PetTrain << Hunter
#label UnsentLetter
>>|cRXP_WARN_Use |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r] to start the quest|r
.accept 373 >> Accept The Unsent Letter
.use 2874 
.dungeon DM
.zoneskip Redridge Mountains
step
.goto Stormwind City,55.21,7.04
#requires PetTrain << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Billibub Cogspinner|r doesn't have one|r
.bronzetube
.target Billibub Cogspinner
.zoneskip Redridge Mountains
step
#xprate >1.59 << !Hunter
#requires UnsentLetter
.goto StormwindClassic,48.079,30.913,10,0
.goto StormwindClassic,49.193,30.285
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
.turnin 373 >> Turn in The Unsent Letter
.accept 389 >> Accept Bazil Thredd
.target Baros Alexston
.dungeon DM
.zoneskip Redridge Mountains
step << Warrior
#xprate >1.59
#optional
#completewith next
.goto 1453,74.592,51.567,15,0
.goto 1453,78.011,47.797,15,0
.goto 1453,80.030,45.591,12 >> Travel toward |cRXP_FRIENDLY_Wu Shen|r inside the Command Center
.zoneskip Redridge Mountains
step << Warrior
#xprate >1.59
.goto 1453,78.673,45.791
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu Shen|r inside upstairs
.trainer >> Train your class spells
.target Wu Shen
.zoneskip Redridge Mountains
step << Rogue
#xprate >1.59
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
.trainer >> Train your class spells
.target Osborne the Night Man
.zoneskip Redridge Mountains
step << Paladin
#season 2
#completewith KatherineStart
.goto StormwindClassic,42.77,34.32,10,0
.goto StormwindClassic,41.37,31.53,10,0
.goto StormwindClassic,39.19,31.03,10,0
.goto StormwindClassic,37.23,31.87,12 >>Travel toward |cRXP_FRIENDLY_Katherine the Pure|r inside the Cathedral
.train 410014,1
.isQuestTurnedIn 1649
step << Paladin
#xprate >1.59
#optional
#completewith next
.goto 1453,42.917,34.221,15,0
.goto 1453,41.385,31.547,15,0
.goto 1453,39.810,29.788,15,0
.goto StormwindClassic,42.51,33.51,20 >> Travel to |cRXP_FRIENDLY_Duthorian Rall|r inside the Stormwind Cathedral
step << Paladin
#xprate >1.59
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r. He will give you the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r]
.use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
.collect 6776,1,1649 
.accept 1649 >>Accept The Tome of Valor
.target Duthorian Rall
.dungeon !DM
step << Paladin
#xprate >1.59
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.turnin 1649 >>Turn in The Tome of Valor
.accept 1650 >>Accept The Tome of Valor
.target Duthorian Rall
.dungeon !DM
step << Paladin
#xprate >1.59
#optional
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.turnin 1649 >>Turn in The Tome of Valor
.accept 1650 >>Accept The Tome of Valor
.target Duthorian Rall
.dungeon DM
step << Paladin
#xprate >1.59
#optional
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r. He will give you the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r]
.use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
.collect 6776,1,1649 
.accept 1649 >>Accept The Tome of Valor
.target Duthorian Rall
.dungeon DM
step << Paladin
#xprate >1.59
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.turnin 1652 >>Turn in The Tome of Valor
.target Duthorian Rall
.dungeon DM
step << Paladin
#season 2
#label KatherineStart
.goto StormwindClassic,37.23,31.87
>>Talk to |cRXP_FRIENDLY_Katherine the Pure|r
.turnin 78089 >> Turn in Advice From Stormwind
.accept 78090 >> Accept A Second Opinion
.target Katherine the Pure
.train 410014,1
.isOnQuest 78089
step << Paladin
#season 2
.goto StormwindClassic,37.23,31.87
>>Talk to |cRXP_FRIENDLY_Katherine the Pure|r
.accept 78090 >> Accept A Second Opinion
.target Katherine the Pure
.train 410014,1
.isQuestTurnedIn 78089
step << Paladin
#xprate >1.59
.goto StormwindClassic,38.58,32.00,12,0
.goto StormwindClassic,38.67,32.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.trainer >> Train your class spells
.target Arthur the Faithful
step << Paladin
#season 2
.goto StormwindClassic,38.67,32.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
>>|cRXP_WARN_You need this to acquire|r |T134596:0|t[Engrave Pants - Aura Mastery] |cRXP_WARN_shortly|r
.train 2878 >> Train |T135983:0|t[Turn Undead]
.train 5502 >> Train |T135974:0|t[Sense Undead]
.target Arthur the Faithful
.train 416037,1
.xp <24,1
step << Paladin
#season 2
#completewith next
.goto StormwindClassic,29.04,74.28,10,0
.goto StormwindClassic,27.40,76.48,10,0
.goto StormwindClassic,27.14,77.83,5,0
.goto StormwindClassic,26.12,77.23,8 >>Travel toward |cRXP_FRIENDLY_Ursula Deline|r inside The Slaughtered Lamb
.train 410014,1
.isOnQuest 78090
step << Paladin
#season 2
.goto StormwindClassic,26.12,77.23
>>Talk to |cRXP_FRIENDLY_Ursula Deline|r
.turnin 78090 >> Turn in A Second Opinion
.accept 78091 >> Accept Earning Your Salt
.target Ursula Deline
.train 410014,1
.isOnQuest 78090
step << Paladin
#season 2
.goto StormwindClassic,26.12,77.23
>>Talk to |cRXP_FRIENDLY_Ursula Deline|r
.accept 78091 >> Accept Earning Your Salt
.target Ursula Deline
.train 410014,1
.isQuestTurnedIn 78090
step << Warlock
#sticky
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb. Go downstairs
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus]|cRXP_BUY_ which you will have in a second. If you have extra gold also buy them for your|r |T136221:0|t[Voidwalker]
.target Spackle Thornberry
step << Druid
#season 2
.goto Stormwind City,43.088,80.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1075 >> Turn in A Scroll from Mauren
.target Collin Mauren
.isOnQuest 1075
step
#xprate >1.59 << !Hunter
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.turnin 389 >> Turn in Bazil Thredd
.target Warden Thelwater
.dungeon DM
.dungeon !Stockades
.zoneskip Redridge Mountains
step << Rogue
.isQuestAvailable 2359 
.goto StormwindClassic,52.623,65.701
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
.home >> Set your Hearthstone to Stormwind City
.zoneskip Redridge Mountains
.target Innkeeper Allison
step
.goto StormwindClassic,57.12,57.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
.train 201 >> Train 1h Swords << Mage/Rogue/Warlock
.train 1180 >> Train Daggers << Mage/Druid/Priest
.train 202 >> Train 2h Swords << Warrior/Paladin/Hunter
.target Woo Ping
.zoneskip Redridge Mountains
step << Mage
#completewith next
.goto Stormwind City,56.135,65.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Boucher|r
.vendor >> |cRXP_BUY_Buy a|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
.collect 17031,1 
.target Kyra Boucher
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>Buy the following items for faster turn ins at Duskwood shortly
>>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
>>|T133024:0|t[Bronze Tube]
>>|T134321:0|t[Gooey Spider Leg]
>>|T132794:0|t[Flask of Oil]
.collect 4371,1,174,1 
.collect 2251,6,93,1 
.collect 814,5 
.bronzetube
.target Auctioneer Jaxon
.zoneskip Redridge Mountains
step << !NightElf
#completewith next
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Redridge >> Fly to Redridge Mountains
.target Dungar Longdrink
.zoneskip Stormwind City,1
.zoneskip Redridge Mountains
.xp >25,1,RedridgeEnd
step << NightElf
.dungeon !DM
#completewith next
.goto Stormwind City,71.19,89.10
.zone Elwynn Forest >> Head to Elwynn Forest
step << NightElf
.dungeon DM
#completewith next
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Redridge >> Fly to Redridge Mountains
.target Dungar Longdrink
step << NightElf
.dungeon !DM
#completewith next
.goto Elwynn Forest,65.20,69.80,50 >> Travel to the Tower of Azora. Ascend the tower
.xp >25,1,RedridgeEnd
step << NightElf
#xprate >1.99
.dungeon !DM
.goto Elwynn Forest,65.22,69.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theocritus|r at the top
.accept 94 >> Accept A Watchful Eye
.target Theocritus
.xp >25,1,RedridgeEnd
step << NightElf
#xprate >1.99
.dungeon !DM
#optional
#completewith next
.zone Redridge Mountains >> Travel to Redridge Mountains
.zoneskip Elwynn Forest,1
step << NightElf
#xprate >1.99
.dungeon !DM
#optional
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fp Redridge Mountains >> Get the Redridge Mountains flight path
.target Ariena Stormfeather
step << NightElf Warrior
.dungeon !DM
.goto Redridge Mountains,33.4,48.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.accept 20 >> Accept Blackrock Menace
.target Marshal Marris
step << Warlock
#season 2
#sticky
#completewith RedridgeEndTwo
#label ExplorerImp
>>As you're questing cast |T136163:0|t|cRXP_FRIENDLY_[Drain Soul]|r on mobs untill you receive an |T133257:0|t|cRXP_LOOT_Explorer's Soul|r. |cRXP_WARN_Use it to learn how to summon an|r |T236294:0|t|cRXP_FRIENDLY_[Explorer Imp]|r
.train 445459 >>|cRXP_WARN_Use|r |T133257:0|t|cRXP_LOOT_Explorer's Soul|r |cRXP_WARN_to learn how to summon an|r |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]
.train 445459,1 
.train 1120,3 
.use 221978
step << Warlock/Mage
#season 2
#requires ExplorerImp << Warlock
#sticky
#completewith RedridgeEndTwo
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
#season 2
#requires FelPortalRune
#sticky
#completewith RedridgeEndTwo
.itemcount 221499,1 << Warlock 
.itemcount 223147,1 << Mage 
.train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
.train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
.use 221499 << Warlock
.use 223147 << Mage
step << Paladin
#season 2
#label HistoryBook
#completewith RRstart2
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
>>Run along the road north to Redridge if you don't have the Redridge Flight Path yet
.fly Redridge >> Fly to Redridge Mountains
.target Felicia Maline
.zoneskip Redridge Mountains
step << Warlock
#season 2
.goto Redridge Mountains,74.0,82.2,60,0
.goto Redridge Mountains,77.6,86.6,50,0
.goto Redridge Mountains,76.8,82.2
>>Kill |cRXP_ENEMY_Incinerator Gar'im|r |cRXP_WARN_(lvl 23 elite)|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r]
.collect 211477,1
.unitscan Incinerator Gar'im
.train 416015,1
step << Warlock
#season 2
.use 211477
.itemcount 211477,1
.train 416015 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r] |cRXP_WARN_to train|r |T135789:0|t[Incinerate]
step << Hunter/Warlock
.solo
#label RRstart2
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.accept 19 >> Accept Tharil'zun
.isQuestTurnedIn 20
.xp >25,1,RedridgeEnd
step
.group
#label RRstart2
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.accept 19 >> Accept Tharil'zun
.accept 115 >> Accept Shadow Magic
.isQuestTurnedIn 20
.maxlevel 24
step << !Hunter
.goto Redridge Mountains,31.00,47.30
.target Verner Osgood
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
.accept 126 >> Accept Howling in the Hills
.isQuestTurnedIn 124
.maxlevel 24
step
.group
.goto Redridge Mountains,29.622,46.172
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
.accept 169 >> Accept Wanted: Gath'Ilzogg
.maxlevel 24
step
.goto Redridge Mountains,29.71,44.26
.target Bailiff Conacher
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
.accept 91 >> Accept Solomon's Law
.xp >25,1,RedridgeEnd
step
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
.accept 150 >> Accept Murloc Poachers
.turnin 150 >> Turn in Murloc Poachers
.accept 127 >> Accept Selling Fish << NightElf Warrior
.itemcount 1468,8 << !Warrior 
.isQuestAvailable 150
.maxlevel 24 << NightElf Warrior
step
.goto Redridge Mountains,26.75,46.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
.accept 180 >> Accept Wanted: Lieutenant Fangore
.maxlevel 24
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.accept 34 >> Accept An Unwelcome Guest
.maxlevel 24
step
.goto Redridge Mountains,15.68,49.30
>>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
.complete 34,1
.mob Bellygrub
.isOnQuest 34
step
#label RRstart2 << !Hunter !Warlock
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.turnin 34 >> Turn in An Unwelcome Guest
.isQuestComplete 34
step
.goto Redridge Mountains,23.77,30.48,80,0
.goto Redridge Mountains,27.58,21.78
>>Kill |cRXP_ENEMY_Yowler|r. Loot him for his |cRXP_LOOT_Paw|r
>>|cRXP_WARN_Split pull him using|r |T135857:0|t[Blizzard] |cRXP_WARN_or|r |T135826:0|t[Flamestrike] << Mage
.complete 126,1 
.mob Yowler
.isOnQuest 126
step << NightElf Warrior
#xprate >1.99
#label orcs
>>Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r. Loot them for their |cRXP_LOOT_Axes|r
>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Blackrock Outrunners|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
>>|cRXP_WARN_Alternate between killing |cRXP_ENEMY_Orcs|r and the |cRXP_ENEMY_Murlocs|r marked on the map southwest|r
.goto Redridge Mountains,61.76,43.51
.complete 20,1 
.isOnQuest 20
.mob Blackrock Grunt
.mob Blackrock Outrunner
step << NightElf Warrior
#xprate >1.99
.goto Redridge Mountains,56.4,51.8
>>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
.collect 1468,8,150,1 
.complete 127,1 
.mob Murloc Scout
.mob Murloc Tidecaller
.isOnQuest 150
.isOnQuest 127
step
#completewith Pendants
.goto Redridge Mountains,80.17,37.05
>>Kill |cRXP_ENEMY_Lieutenant Fangore|r. Loot him for his |cRXP_LOOT_Paw|r
>>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_will engage with 2 additional|r |cRXP_ENEMY_Gnolls|r
>>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_is immune to Shadow damage. Ensure you have party members that can help, otherwise you may skip this step|r << Warlock/Priest
.complete 180,1 
.isOnQuest 180
.mob Lieutenant Fangore
step
#sticky
#label Eye
.goto Redridge Mountains,84.50,46.80
>>Click the |cRXP_PICK_Old Lion Statue|r
.turnin 94 >> Turn in A Watchful Eye
.isOnQuest 94
.zoneskip Redridge Mountains,1
step
.group
.goto Redridge Mountains,84.50,46.80
>>Click the |cRXP_PICK_Old Lion Statue|r
.accept 248 >> Accept Looking Further
.isQuestTurnedIn 94
step
#sticky
#optional
#requires Eye
.abandon 94 >> Abandon A Watchful Eye. You won't be heading to Redridge again as you've overleveled it
step
#label Pendants
.goto Redridge Mountains,75.49,41.57,60,0
.goto Redridge Mountains,80.09,36.68,60,0
.goto Redridge Mountains,80.69,46.28,60,0
.goto Redridge Mountains,77.62,42.28,60,0
.goto Redridge Mountains,77.52,36.31
>>Kill the |cRXP_ENEMY_Shadowhides|r. Loot them for their |cRXP_LOOT_Pendants|r
.complete 91,1 
.mob Rabid Shadowhide Gnoll
.mob Shadowhide Gnoll
.mob Shadowhide Assassin
.mob Shadowhide Warrior
.mob Shadowhide Darkweaver
.mob Shadowhide Slayer
.isOnQuest 91
step
#label fangore
.goto Redridge Mountains,80.17,37.05
>>Kill |cRXP_ENEMY_Lieutenant Fangore|r. Loot him for his |cRXP_LOOT_Paw|r
>>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_will engage with 2 additional|r |cRXP_ENEMY_Gnolls|r
>>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_is immune to Shadow damage. Ensure you have party members that can help, otherwise you may skip this step|r << Warlock/Priest
.complete 180,1 
.isOnQuest 180
.mob Lieutenant Fangore
step << Warlock
#season 2
#label WarlockRuneMetamorphosisA
.goto Redridge Mountains,80.2,49.5
>>Loot the |cRXP_PICK_Demonic Reliquary|r at the top of the tower to get the |T134337:0|t[Orb of Des]
>>|cRXP_WARN_This is for your|r |T237558:0|t[Metamorphosis] |cRXP_WARN_rune later. If you don't want to do this, skip this step|r
*|cRXP_WARN_Be careful as it's guarded by an elite. Loot the chest whilst your Voidwalker tanks the mobs|r
.collect 210765,1
.train 403938,1
.dungeon SFK
.isQuestAvailable 78680
step
.group 3
#completewith Gath
>>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
.group 3
#completewith next
.goto Redridge Mountains,71.40,55.07
>>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
.complete 19,1 
.mob Tharil'zun
.isOnQuest 19
step
#label Gath
.group 5
.goto Redridge Mountains,69.599,55.797
>>Enter Stonewatch Keep
>>Kill |cRXP_ENEMY_Gath'Ilzogg|r. Loot him for his |cRXP_LOOT_Head|r
.complete 169,1 
.mob Gath'Ilzogg
.isOnQuest 169
step
#completewith next
>>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
.group 3
.goto Redridge Mountains,71.40,55.07
>>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
.complete 19,1 
.mob Tharil'zun
.isOnQuest 19
step
.group 3
.goto Redridge Mountains,66.68,56.26
>>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step << Hunter/Warlock
.solo
#requires Eye
.goto Redridge Mountains,71.40,55.07
>>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
>>Kite |cRXP_ENEMY_Tharil'zun|r towards Burning Steppes if needed. You can pull him from down below with your pet
>>This quest can be very hard, skip this step if you have to
.link https://youtu.be/oq_VUY1idQw >> |cRXP_WARN_Click here for video reference|r << Warlock/Hunter
.complete 19,1
.mob Tharil'zun
.isOnQuest 19
step
.group 3
.goto Redridge Mountains,63.246,49.840
>>Click |cRXP_PICK_An Empty Jar|r on the barrel at the top of Stonewatch Tower
>>|cRXP_WARN_Don't accept the follow up|r
.turnin 248 >> Turn in Looking Further
.isOnQuest 248
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 19 >> Turn in Tharil'zun
.isQuestComplete 19
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 115 >> Turn in Shadow Magic
.isQuestComplete 115
step
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 169 >> Turn in Wanted: Gath'Ilzogg
.target Magistrate Solomon
.isQuestComplete 169
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 219 >> Turn in Missing In Action
.isQuestComplete 219
step
.goto Redridge Mountains,29.71,44.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
.turnin 91 >> Turn in Solomon's Law
.isQuestComplete 91
.target Bailiff Conacher
step
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 180 >> Turn in Wanted: Lieutenant Fangore
.isQuestComplete 180
.target Magistrate Solomon
step << NightElf Warrior
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 20 >> Turn in Blackrock Menace
.isQuestComplete 20
step << NightElf Warrior
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
.turnin 127 >> Turn in Selling Fish
.turnin 150 >> Turn in Murloc Poachers
.isQuestComplete 127
step
.goto Redridge Mountains,30.97,47.27
.target Verner Osgood
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
.turnin 126 >> Turn in Howling in the Hills
.isQuestComplete 126
step
#label RedridgeEndTwo
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
.turnin 128 >> Turn in Blackrock Bounty
.isQuestComplete 128
step
#xprate >1.99
.dungeon Stockades
.goto Redridge Mountains,26.258,46.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
.accept 386 >> Accept What Comes Around...
.target Guard Berton
step
#xprate >1.99
#label RedridgeEnd
#completewith MadEva
.zone Duskwood >> Head to Duskwood
.goto Duskwood,74.63,46.82
step
#xprate >1.99
#completewith MadEva
.subzone 42 >> Head to Darkshire
.goto Duskwood,73.48,24.84,40,0
.goto Duskwood,75.81,45.29
step
#xprate <1.99
#completewith MadEva
.goto Duskwood,48.0,17.2,0
.goto Duskwood,28.1,28.7,0
.goto Duskwood,48.0,17.2,85,0
.goto Duskwood,75.81,45.29,50 >> Travel to Darkshire
.isOnQuest 226
step
.abandon 148 >> Abandon Supplies from Darkshire. You will miss out on free XP if you turn this in now. It will be completed soon
step
#label MadEva
.goto Duskwood,75.81,45.29
.target Madame Eva
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.accept 66 >> Accept The Legend of Stalvan
.accept 101 >> Accept The Totem of Infliction
step
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
.home >> Set your Hearthstone to Duskwood
.target Innkeeper Trelayne
step
.goto Duskwood,73.59,46.89
.target Commander Althea Ebonlocke
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.accept 56 >> Accept The Night Watch
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 66 >> Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 67 >> Accept The Legend of Stalvan
step
.goto Duskwood,75.33,48.69
.target Elaine Carevin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
.accept 163 >> Accept Raven Hill
.accept 165 >> Accept The Hermit
step
.abandon 95 >> Abandon Sven's Revenge
step
.goto Duskwood,75.33,48.69
.target Elaine Carevin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
.accept 164 >> Accept Deliveries to Sven
>>|cRXP_WARN_If you can't pick up this quest you need to abandon Sven's Revenge from your quest log|r
step
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.fp Duskwood>> Get the Duskwood Flight Path
.target Felicia Maline
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >> Accept Look To The Stars
.turnin 174 >> Turn in Look To The Stars
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 175 >> Accept Look To The Stars
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 175 >> Turn in Look To The Stars
.accept 177 >> Accept Look To The Stars
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith HistoryBook1
>>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
>>|cRXP_WARN_Don't start the quest for it yet|r
.collect 2794,1,337,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
>>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
>>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
.complete 56,1 
.complete 56,2 
.mob Skeletal Warrior
.mob Skeletal Mage
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.goto Duskwood,80.35,69.31,50,0
.goto Duskwood,77.49,71.30,50,0
.goto Duskwood,79.38,73.70,50,0
.goto Duskwood,79.38,70.28
#label HistoryBook1
>>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
>>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
>>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
.complete 56,1 
.complete 56,2 
.mob Skeletal Warrior
.mob Skeletal Mage
step << !Warrior
.goto 1431/0,-438.800,-10793.400,30 >> Head to the path leading into the Twilight Grove
.train 431705,1 << Priest
.train 429308,1 << Mage
.train 431747,1 << Warlock
.train 432297,1 << Rogue
.train 431611,1 << Hunter
.train 431447,1 << Druid
.train 429261,1 << Paladin
step << !Warrior
.goto 1431/0,-376.600,-10768.500,30 >> Go up the path
.train 431705,1 << Priest
.train 429308,1 << Mage
.train 431747,1 << Warlock
.train 432297,1 << Rogue
.train 431611,1 << Hunter
.train 431447,1 << Druid
.train 429261,1 << Paladin
step << !Warrior
>>Look for a Quartermaster of |cRXP_FRIENDLY_The Emerald Wardens|r in the marked location and buy your rune from them
.goto Duskwood,45.6,51.2
.target Quartermaster Falinar
.collect 221480,1 << Mage 
.collect 221481,1 << Priest 
.collect 221482,1 << Warlock 
.collect 221511,1 << Warrior 
.collect 221512,1 << Rogue 
.collect 221515,1 << Hunter 
.collect 221517,1 << Druid 
.collect 223288,1 << Paladin 
.train 431705,1 << Priest
.train 429308,1 << Mage
.train 431747,1 << Warlock
.train 432297,1 << Rogue
.train 431611,1 << Hunter
.train 431447,1 << Druid
.train 429261,1 << Paladin
step << !Warrior
.train 431705 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Nihilist Epiphany|r] |cRXP_WARN_to train|r |T132886:0|t[Void Zone] << Priest
.train 429308 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Molten Armor|r] |cRXP_WARN_to train|r |T132221:0|t[Molten Armor] << Mage
.train 431747 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Affliction|r] |cRXP_WARN_to train|r |T136228:0|t[Unstable Affliction] << Warlock
.train 416066 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Burn|r] |cRXP_WARN_to train|r |T135822:0|t[Burn] << Shaman
.train 432297 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Alclarity|r] |cRXP_WARN_to train|r |T236269:0|t[Cut to the Chase] << Rogue
.train 431611 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Detonation|r] |cRXP_WARN_to train|r |T133713:0|t[T.N.T.] << Hunter
.train 431447 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Bloodshed|r] |cRXP_WARN_to train|r |T304501:0|t[Gore] << Druid
.train 429261 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Hammer|r] |cRXP_WARN_to train|r |T236262:0|t[Improved Hammer of Wrath] << Paladin
.use 221480 << Mage 
.use 221481 << Priest 
.use 221482 << Warlock 
.use 221483 << Shaman 
.use 221512 << Rogue 
.use 221515 << Hunter 
.use 221517 << Druid 
.use 223288,1 << Paladin 
.train 431705,1 << Priest
.train 429308,1 << Mage
.train 431747,1 << Warlock
.train 416066,1 << Shaman
.train 432297,1 << Rogue
.train 431611,1 << Hunter
.train 431447,1 << Druid
.train 429261,1 << Paladin
step << !Warrior
.goto Duskwood,45.6,51.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Falinar|r
.vendor >> |cRXP_BUY_Buy up to 5|r |T134718:0|t[Greater Healing Potions] |cRXP_BUY_from him if you want.|r |cRXP_WARN_These can only be used within the incursion zones|r
.target Quartermaster Falinar
.train 431705,1 << Priest
.train 429308,1 << Mage
.train 431747,1 << Warlock
.train 432297,1 << Rogue
.train 431611,1 << Hunter
.train 431447,1 << Druid
.train 429261,1 << Paladin
step
.goto Duskwood,18.203,56.215
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
.turnin 163 >> Turn in Raven Hill
.accept 5 >> Accept Jitters' Growling Gut
.target Jitters
step
#label Wolves
#completewith BliztikCheck
.goto Duskwood,18.040,54.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bliztik|r upstairs
.vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Bliztik|r doesn't have any|r
.target Bliztik
step
#sticky
#completewith BliztikCheck
.isOnQuest 101
>>Kill |cRXP_ENEMY_spiders|r as you travel. Loot them for |T134799:0|t[|cRXP_LOOT_Vials of Spider Venom|r]
.complete 101,2 
.mob Black Widow Hatchlings
.mob Venom Web Spider
.mob Pygmy Venom Web Spider
step
#label TheHermit
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 165 >> Turn in The Hermit
.target Abercrombie
.accept 148 >> Accept Supplies from Darkshire
step
#label BliztikCheck
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 164 >> Turn in Deliveries to Sven
.target Sven Yorgen
.accept 95 >> Accept Sven's Revenge
step
.zone Westfall >> Travel to Westfall
step
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fp Westfall >> Get the Westfall flight path
.target Thor
step
#completewith next
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Darkshire >> Fly to Darkshire
.target Thor
.zoneskip Duskwood
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
.turnin 5 >> Turn in Jitters' Growling Gut
.target Chef Grual
.accept 93 >> Accept Dusky Crab Cakes
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
.target Chef Grual
.turnin 93 >> Turn in Dusky Crab Cakes
.isQuestComplete 93
.itemcount 2251,6 
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 56 >> Turn in The Night Watch
.target Commander Althea Ebonlocke
.accept 57 >> Accept The Night Watch
step
.dungeon Stockades
.goto Duskwood,71.938,47.778
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
.accept 377 >> Accept Crime and Punishment
.target Councilman Millstipe
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 148 >> Turn in Supplies from Darkshire
.target Madame Eva
.accept 149 >> Accept Ghost Hair Thread
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >> Turn in Look To The Stars
.target Viktori Prism'Antras
step
.goto Duskwood,81.98,59.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 149 >> Turn in Ghost Hair Thread
.target Blind Mary
.accept 154 >> Accept Return the Comb
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 154 >> Turn in Return the Comb
.target Madame Eva
.accept 157 >> Accept Deliver the Thread
step << Paladin
#season 2
#completewith next
>>Kill |cRXP_ENEMY_Defias Night Runners|r, |cRXP_ENEMY_Defias Night Blades|r, and |cRXP_ENEMY_Defias Enchanters|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Night Runners|r and |cRXP_ENEMY_Defias Night Blades|r cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds),|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind. |cRXP_ENEMY_Defias Night Runners|r are|r |T132320:0|t[Stealthed]|cRXP_WARN_, and |cRXP_ENEMY_Defias Enchanters|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(deals about 150 fire damage) and have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows attack and movespeed on hit)|r
.collect 211472,1 
.mob Defias Night Runner
.mob Defias Night Blade
.mob Defias Enchanter
.train 416037,1
.xp <24,1
step
#label FlyBackDuskwood
.goto Duskwood,49.85,77.71
>>Click the |cRXP_PICK_Mound of loose dirt|r on the ground
.turnin 95 >> Turn in Sven's Revenge
.accept 230 >> Accept Sven's Camp
step << Paladin
#season 2
#loop
.goto Duskwood,49.60,75.40,50,0
.goto Duskwood,50.80,70.40,50,0
.goto Duskwood,47.60,75.40,50,0
.goto Duskwood,49.20,71.60,50,0
>>Kill |cRXP_ENEMY_Defias Night Runners|r, |cRXP_ENEMY_Defias Night Blades|r, and |cRXP_ENEMY_Defias Enchanters|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Night Runners|r and |cRXP_ENEMY_Defias Night Blades|r cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds),|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind. |cRXP_ENEMY_Defias Night Runners|r are|r |T132320:0|t[Stealthed]|cRXP_WARN_, and |cRXP_ENEMY_Defias Enchanters|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(deals about 150 fire damage) and have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows attack and movespeed on hit)|r
.collect 211472,1 
.mob Defias Night Runner
.mob Defias Night Blade
.mob Defias Enchanter
.train 416037,1
.xp <24,1
step << Paladin
#season 2
.equip 18,211472 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
.use 211472
.itemcount 211472,1 
.train 416037,1
.xp <24,1
step << Paladin
#season 2
#loop
.goto Duskwood,22.49,47.91,40,0
.goto Duskwood,20.41,47.56,40,0
.goto Duskwood,14.65,47.37,40,0
.goto Duskwood,16.31,44.96,40,0
.goto Duskwood,22.95,40.55,40,0
>>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r
.aura 408828 >>|cRXP_WARN_Cast|r |T135983:0|t[Turn Undead] |cRXP_WARN_and then kill them with|r |T135903:0|t[Exorcism] |cRXP_WARN_5 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
.mob Skeletal Fiend
.mob Skeletal Horror
.itemStat 18,QUALITY,2
.train 416037,1
.xp <24,1
step << Paladin
#season 2
.cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Aura Mastery]
.use 211472
.aura -408828
.train 416037,1
.xp <24,1
step
#sticky
#completewith MoonbrookSt
.isOnQuest 101
>>Kill |cRXP_ENEMY_spiders|r as you travel. Loot them for |T134799:0|t[|cRXP_LOOT_Vials of Spider Venom|r]
.complete 101,2 
.mob Black Widow Hatchlings
.mob Venom Web Spider
.mob Pygmy Venom Web Spider
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 157 >> Turn in Deliver the Thread
.target Abercrombie
.accept 158 >> Accept Zombie Juice
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 230 >> Turn in Sven's Camp
.target Sven Yorgen
.accept 262 >> Accept The Shadowy Figure
step
#completewith MoonbrookSt
.goto Duskwood,33.6,60.4,100,0
.goto Duskwood,12.2,69.8,100,0
.goto Duskwood,10.6,37.0,100,0
.goto Duskwood,12.8,55.6
+|cRXP_WARN_Grind until your Hearthstone cooldown is <5min|r
.cooldown item,6948,<300
step
#completewith MoonbrookSt
.zone Westfall >> Travel to Westfall
step
#label MoonbrookSt
.goto Westfall,41.51,66.72
>>Click the |cRXP_PICK_Old Footlocker|r on the ground
.turnin 67 >> Turn in The Legend of Stalvan
.accept 68 >> Accept The Legend of Stalvan
step << Warrior
#season 2
#completewith next
+Look for |cRXP_ENEMY_Old Murk-Eye|r along the coast and kite him toward |cRXP_FRIENDLY_Captain Grayson|r if you see him
.unitscan Old Murk-Eye
.train 403489,1
step << Warrior
#season 2
.goto Westfall,30.01,86.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
.accept 104 >> Accept The Coastal Menace
.target Captain Grayson
.train 403489,1
step << Warrior
#season 2
.goto Westfall,34.43,83.93,55,0
.goto Westfall,29.55,79.90,60,0
.goto Westfall,28.29,71.07,60,0
.goto Westfall,26.42,65.88,60,0
.goto Westfall,34.43,83.93
.line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
>>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for the |T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
>>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you don't see him along the Longshore, wait for him to spawn in the most southern |cRXP_ENEMY_Murloc|r camp|r
.collect 208741,1 
.unitscan Old Murk-Eye
.train 403489,1
step << Warrior
#season 2
.train 403489 >>|cRXP_WARN_Use the|r |T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r] |cRXP_WARN_to train|r |T132347:0|t[Endless Rage]
.use 208741
.itemcount 208741,1
step 
#completewith next
+Look for |cRXP_ENEMY_Old Murk-Eye|r along the coast and kite him toward |cRXP_FRIENDLY_Captain Grayson|r if you see him
.itemcount 814,5 
.unitscan Old Murk-Eye
.maxlevel 24
step
.goto Westfall,30.01,86.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
.accept 104 >> Accept The Coastal Menace
.accept 103 >> Accept Keeper of the Flame
.target Captain Grayson
.itemcount 814,5 
.maxlevel 24
step
.goto Westfall,34.43,83.93,55,0
.goto Westfall,29.55,79.90,60,0
.goto Westfall,28.29,71.07,60,0
.goto Westfall,26.42,65.88,60,0
.goto Westfall,34.43,83.93
.line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
>>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for his |cRXP_LOOT_Scale|r
>>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you don't see him along the Longshore, wait for him to spawn in the most southern |cRXP_ENEMY_Murloc|r camp|r
.complete 104,1 
.unitscan Old Murk-Eye
.isOnQuest 104
step
.goto Westfall,30.01,86.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
.turnin 104 >> Turn in The Coastal Menace
.turnin 103 >> Turn in Keeper of the Flame
.target Captain Grayson
.isQuestComplete 104
.itemcount 814,5 
step
.goto Westfall,30.01,86.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
.turnin 103 >> Turn in Keeper of the Flame
.itemcount 814,5 
.target Captain Grayson
.addquestitem 814,103
.isOnQuest 103
step
.goto Westfall,30.01,86.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
.turnin 104 >> Turn in The Coastal Menace
.target Captain Grayson
.isQuestComplete 104
step << Druid
#completewith next
.goto Westfall,17.928,33.099,50 >> Swim out to sea
step << Druid
.goto Westfall,17.928,33.099
>>Open the |cRXP_PICK_Strange Lockbox|r. Loot it for the |cRXP_LOOT_Half Pendant of Aquatic Endurance|r
.collect 15882,1,272,1 
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
.goto Moonglade,36.0,41.4
.use 15883 >>|cRXP_WARN_Use the|r |T133443:0|t[Half Pendant of Aquatic Agility] |cRXP_WARN_to combine it with the|r |T133442:0|t[Half Pendant of Aquatic Endurance] |cRXP_WARN_at the Shrine of Remulos|r
.complete 272,1 
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
>>|cRXP_WARN_This will save you time from running back|r
step << Druid
.goto Moonglade,56.209,30.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
.turnin 272 >> Turn in Trial of the Sea Lion
.accept 5061 >> Accept Aquatic Form
.target Dendrite Starblaze
step << Druid
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.trainer >> Train your class spells
.target Loganaar
step << Druid
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
.goto Moonglade,44.147,45.225
.fly Teldrassil>> Fly to Teldrassil
.target Silva Fil'naveth
step << Druid
.goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 5061 >> Turn in Aquatic Form
.target Master Mathias Shaw
step << Paladin
.goto Westfall,42.5,88.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
.turnin 1650 >>Turn in The Tome of Valor
.target Daphne Stilwell
.accept 1651 >>Accept The Tome of Valor
step << Paladin
.goto Westfall,42.5,88.6
.complete 1651,1 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
.turnin 1651 >>Turn in The Tome of Valor
.target Daphne Stilwell
.accept 1652 >>Accept The Tome of Valor
step
.hs >> Hearth to Darkshire
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
.subzoneskip 42 
step
#completewith next
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Darkshire >> Fly back to Darkshire if your HS is on cooldown
.target Thor
.subzoneskip 42 
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >> Accept Look To The Stars
.turnin 174 >> Turn in Look To The Stars
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 175 >> Accept Look To The Stars
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 175 >> Turn in Look To The Stars
.accept 177 >> Accept Look To The Stars
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith next
>>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
>>|cRXP_WARN_Don't start the quest for it yet|r
.collect 2794,1,337,1 
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >> Turn in Look To The Stars
.target Viktori Prism'Antras
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.accept 173 >> Accept Worgen in the Woods
.target Calor
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 262 >> Turn in The Shadowy Figure
.target Madame Eva
.accept 265 >> Accept The Shadowy Search Continues
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 265 >> Turn in The Shadowy Search Continues
.turnin 68 >> Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 266 >> Accept Inquire at the Inn
.accept 69 >> Accept The Legend of Stalvan
step
#label ShadowyRot
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 158 >> Turn in Zombie Juice
.target Tavernkeep Smitts
.accept 156 >> Accept Gather Rot Blossoms
.turnin 266 >> Turn in Inquire at the Inn
.accept 453 >> Accept Finding the Shadowy Figure
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
.target Chef Grual
.turnin 93 >> Turn in Dusky Crab Cakes
.accept 240 >> Accept Return to Jitters
.itemcount 2251,6 
step
#completewith HistoryBook2
>>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
>>|cRXP_WARN_Don't start the quest for it yet|r
.collect 2794,1,337,1 
step
#completewith next
.goto Duskwood,22.95,44.75,150 >> Travel to Raven Hill Cemetery
step
#label HistoryBook2
.goto Duskwood,22.95,44.75,80,0
.goto Duskwood,20.39,47.02,70,0
.goto Duskwood,15.07,46.91,70,0
.goto Duskwood,15.65,42.81,70,0
.goto Duskwood,18.30,47.75,70,0
.goto Duskwood,22.11,46.93,70,0
.goto Duskwood,23.68,42.13,70,0
.goto Duskwood,21.21,47.07
>>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Rot Blossoms|r
.complete 57,1 
.complete 57,2 
.complete 156,1 
.mob Skeletal Fiend
.mob Skeletal Horror
step
.goto Duskwood,18.37,56.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
.turnin 453 >> Turn in Finding the Shadowy Figure
.target Jitters
.accept 268 >> Accept Return to Sven
step
.goto Duskwood,18.37,56.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
.target Jitters
.turnin 240 >> Turn in Return to Jitters
.isOnQuest 240
step
#label Flanks3
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 268 >> Turn in Return to Sven
.accept 323 >> Accept Proving Your Worth
.target Sven Yorgen
step
.goto Duskwood,16.01,38.79
>>Kill |cRXP_ENEMY_Skeletal Raiders|r, |cRXP_ENEMY_Skeletal Healers|r and |cRXP_ENEMY_Skeletal Warders|r
>>|cRXP_WARN_Enter the Dawning Wood Catacombs for the|r |cRXP_ENEMY_Skeletal Warders|r
>>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_a level 35 Elite patrols around the cemetery. Be cautious of him|r
.complete 323,1 
.complete 323,2 
.complete 323,3 
.mob Skeletal Raider
.mob Skeletal Healer
.mob Skeletal Warder
.unitscan Mor'Ladim
step
.goto Duskwood,22.95,44.75,80,0
.goto Duskwood,20.39,47.02,70,0
.goto Duskwood,15.07,46.91,70,0
.goto Duskwood,15.65,42.81,70,0
.goto Duskwood,18.30,47.75,70,0
.goto Duskwood,22.11,46.93,70,0
.goto Duskwood,23.68,42.13,70,0
.goto Duskwood,21.21,47.07
.xp 28-13000 >> Grind skeletons untill you're 13000 xp away from level 28
.dungeon !Stockades
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 323 >> Turn in Proving Your Worth
.target Sven Yorgen
.accept 269 >> Accept Seeking Wisdom
step
#completewith RunStocks
.dungeon Stockades
+You are about to head to Stormwind soon, try to find a group for The Stockades
step
#completewith next
.subzone 87 >> Travel to Goldshire
.isOnQuest 69
step << Warrior
.goto Elwynn Forest,41.087,65.768
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
.trainer >> Train your class spells
.target Lyria Du Lac
step << Paladin
.goto Elwynn Forest,41.096,66.041
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
.trainer >> Train your class spells
.target Brother Wilhelm
step
.goto Elwynn Forest,43.771,65.803
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
.turnin 69 >> Turn in The Legend of Stalvan
.accept 70 >> Accept The Legend of Stalvan
.target Innkeeper Farley
step
#completewith next
.goto Elwynn Forest,43.877,66.546,9 >> Go upstairs
step << Mage
.goto Elwynn Forest,43.25,66.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
.trainer >> Train your class spells
.target Zaldimar Wefhellt
step << Priest
.goto Elwynn Forest,43.283,65.721
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
.trainer >> Train your class spells
.target Priestess Josetta
step << Rogue
.goto Elwynn Forest,43.872,65.937
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
.trainer >> Train your class spells
.target Keryn Sylvius
step
.goto Elwynn Forest,44.302,65.823
>>Open the |cRXP_PICK_Storage Chest|r. Loot it for |cRXP_LOOT_An Undelivered Letter|r
.complete 70,1
step << !Mage
#label RunStocks
#completewith next
.zone Stormwind City >> Travel to Stormwind City
step << Mage
#label RunStocks
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> Teleport to Stormwind
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step
.dungeon Stockades
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70,40,0
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70
.line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
>>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
.accept 388 >> Accept The Color of Blood
.unitscan Nikova Raskol
step
#xprate >1.59 << !Hunter
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.accept 387 >> Accept Quell The Uprising
.turnin 389 >> Turn in Bazil Thredd
.accept 391 >> Accept The Stockade Riots
.target Warden Thelwater
.dungeon DM
.dungeon Stockades
step
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.accept 391 >> Accept The Stockade Riots
.accept 387 >> Accept Quell The Uprising
.target Warden Thelwater
.isQuestTurnedIn 389
.dungeon Stockades
step
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.accept 387 >> Accept Quell The Uprising
.target Warden Thelwater
.dungeon Stockades
step
.dungeon Stockades
.goto StormwindClassic,39.834,54.360
+Find a group to The Stockades
.zoneskip Stormwind City,1 
step
.dungeon Stockades
#label stock1
#sticky
>>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
.complete 387,1 
.complete 387,2 
.complete 387,3 
.complete 388,1 
step
.dungeon Stockades
#label stock2
#sticky
>>Kill |cRXP_ENEMY_Targorr the Dread|r. Loot him for his |cRXP_LOOT_Head|r. |cRXP_ENEMY_Targorr|r has a random spawn location
>>Kill |cRXP_ENEMY_Dextren Ward|r on the west prison wing. Loot him for his |cRXP_LOOT_Hand|r
.complete -386,1 
.complete -377,1 
.mob Targorr the Dread
.mob Dextren Ward
step
.dungeon Stockades
#label Bazil
>>Kill |cRXP_ENEMY_Bazil Thredd|r on the east prison wing. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Ensure you have 3|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for the follow up of this quest chain|r
.complete 391,1 
.collect 4306,3,2746,1 
.isOnQuest 391
.mob Bazil Thredd
step
.dungeon Stockades
#requires stock1
step
.dungeon Stockades
#requires stock2
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.turnin 387 >> Turn in Quell The Uprising
.turnin 391 >> Turn in The Stockade Riots
.accept 392 >> Accept The Curious Visitor
.target Warden Thelwater
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.turnin 387 >> Turn in Quell The Uprising
.target Warden Thelwater
step
.dungeon Stockades
.goto StormwindClassic,49.194,30.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
.turnin 392 >> Turn in The Curious Visitor
.accept 393 >> Accept Shadow of the Past
.target Baros Alexston
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70,40,0
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70
.line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
>>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
.turnin 388 >> Turn in The Color of Blood
.unitscan Nikova Raskol
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 393 >> Turn in Shadow of the Past
.accept 350 >> Accept Look to an Old Friend
.target Master Mathias Shaw
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
.turnin 350 >> Turn in Look to an Old Friend
.accept 2745 >> Accept Infiltrating the Castle
.target Elling Trias
.isQuestTurnedIn 389
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,69.205,14.404
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
.turnin 2745 >> Turn in Infiltrating the Castle
.accept 2746 >> Accept Items of Some Consequence
.target Tyrion
.isQuestTurnedIn 391
step
.dungeon Stockades
#completewith next
.goto Elwynn Forest,32.384,49.866,50 >> Exit Stormwind. Travel to Clara's Farm House in Elwynn Forest
.isQuestTurnedIn 391
step
.dungeon Stockades
#ah
>>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
>>|cRXP_WARN_If you still need|r |T132905:0|t[Silk Cloth] |cRXP_WARN_buy some from the Auction House|r
.complete 2746,2 
.goto Elwynn Forest,33.952,57.162
.complete 2746,1 
.isQuestTurnedIn 391
step
.dungeon Stockades
#ssf
>>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
.complete 2746,2 
.goto Elwynn Forest,33.952,57.162
.complete 2746,1 
.isQuestTurnedIn 391
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,69.205,14.404
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
>>|cRXP_WARN_Ensure your party has all turned in Items of Some Consequence before you accept The Attack!|r
>>|cRXP_WARN_Automatic quest accept has been turned off for this step. Note you may not be able to accept the quest if someone else is in the process of doing it|r
.turnin 2746 >> Turn in Items of Some Consequence
.accept 434,1 >> Accept The Attack!
.timer 124,The Attack! RP
.target Tyrion
.isQuestTurnedIn 391
step 
.dungeon Stockades
.goto StormwindClassic,68.024,14.075
>>|cRXP_WARN_Wait in the center of the courtyard for |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r to arrive. This takes roughly 2 minutes|r
>>Kill |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r
.complete 434,1 
.complete 434,2 
.complete 434,3 
.mob Lord Gregor Lescovar
.mob Marzon the Silent Blade
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
.turnin 434 >> Turn in The Attack!
.accept 394 >> Accept The Head of the Beast
.target Elling Trias
.isQuestTurnedIn 391
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 394 >> Turn in The Head of the Beast
.accept 395 >> Accept Brotherhood's End
.target Master Mathias Shaw
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,49.194,30.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
.turnin 395 >> Turn in Brotherhood's End
.accept 396 >> Accept An Audience with the King
.target Baros Alexston
.isQuestTurnedIn 391
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,70.347,27.208,20 >> Travel to the Stormwind Keep
.isQuestTurnedIn 391
step
.dungeon Stockades
.goto StormwindClassic,78.105,17.750
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r
.turnin 396 >> Turn in An Audience with the King
.target Lady Katrana Prestor
.isQuestTurnedIn 391
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step
.goto Stormwind City,29.528,61.924
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Folsom|r
.turnin 70 >> Turn in The Legend of Stalvan
.target Caretaker Folsom
.accept 72 >> Accept The Legend of Stalvan
step
.goto Stormwind City,29.44,61.52
>>Click the |cRXP_PICK_Sealed Crate|r on the ground
.turnin 72 >> Turn in The Legend of Stalvan
.accept 74 >> Accept The Legend of Stalvan
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
.trainer >> Train your class spells
.target Sheldras Moontree
step
#xprate >1.99
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.target Duthorian Rall
.turnin 1652 >>Turn in The Tome of Valor
step
#xprate >1.99
.isQuestTurnedIn 323
.goto Stormwind City,39.108,27.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop Farthing|r
.turnin 269 >> Turn in Seeking Wisdom
.accept 270 >> Accept The Doomed Fleet
.target Bishop Farthing
step
#xprate >1.99
.goto Stormwind City,38.72,25.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
>>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_walks around through the Cathedral|r
.accept 1274 >> Accept The Missing Diplomat
.target Thomas
step << Warrior
.goto Stormwind City,51.6,12.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrum Axehand|r, buy a |T135576:0|t[Bullova] from him
.collect 2523,1 
.target Kathrum Axehand
step << Hunter
#xprate >1.99
.xp <28,1
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step
#xprate >1.99
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,68.18,29.88,20 >> Travel to the Stormwind Keep
step
#requires Eye
.goto Stormwind City,78.30,25.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop DeLavey|r
.turnin 1274 >> Turn in The Missing Diplomat
.accept 1241 >> Accept The Missing Diplomat
.target Bishop DeLavey
step
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
>>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
.turnin 337 >> Turn in An Old History Book
.accept 538 >> Accept Southshore
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step
.goto Stormwind City,73.17,78.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorgen|r
.turnin 1241 >> Turn in The Missing Diplomat
.accept 1242 >> Accept The Missing Diplomat
.target Jorgen
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1242 >> Turn in The Missing Diplomat
.accept 1243 >> Accept The Missing Diplomat
.target Elling Trias
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>Buy the following items for faster turn ins at Duskwood shortly
>>|T133024:0|t[Bronze Tube]
.collect 4371,1,174,1 
.bronzetube
.target Auctioneer Jaxon
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy 7|r |T134743:0|t[Jungle Remedy] |cRXP_BUY_from the Auction House for a quest later in Stranglethorn Vale|r
>>|cRXP_WARN_This is optional, you may also farm them from the mobs later|r
>>|cRXP_WARN_You may want to buy extra for yourself to use as it cures diseases and removes poisons|r << !Paladin
.collect 2633,7,204,1 
.target Auctioneer Jaxon
step << Mage
#completewith next
.goto Stormwind City,56.135,65.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Boucher|r
.vendor >> |cRXP_BUY_Buy 2|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
.collect 17031,2 
.target Kyra Boucher
step
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Darkshire >> Fly to Duskwood
.target Dungar Longdrink
.dungeon !Stockades
.zoneskip Duskwood
step
#label start
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.goto Stormwind City,66.27,62.12
.fly Redridge >> Fly to Redridge Mountains
.target Dungar Longdrink
.dungeon Stockades
.isQuestComplete 386
step
.dungeon Stockades
.goto Redridge Mountains,26.258,46.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
.turnin 386 >> Turn in What Comes Around...
.target Guard Berton
.isQuestComplete 386
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.goto Redridge Mountains,30.6,59.6
.fly Duskwood>> Fly to Duskwood
.target Ariena Stormfeather
.dungeon Stockades
.zoneskip Redridge Mountains,1
.zoneskip Duskwood
step
#optional
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Darkshire >> Fly to Duskwood
.target Dungar Longdrink
.dungeon Stockades
.zoneskip Stormwind City,1
.zoneskip Duskwood
step
#label dusk2
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 156 >> Turn in Gather Rot Blossoms
.accept 159 >> Accept Juice Delivery
.target Tavernkeep Smitts
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 57 >> Turn in The Night Watch
.accept 58 >> Accept The Night Watch
.target Commander Althea Ebonlocke
step
.dungeon Stockades
.goto Duskwood,71.938,47.778
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
.turnin 377 >> Turn in Crime and Punishment
.target Councilman Millstipe
]]);
