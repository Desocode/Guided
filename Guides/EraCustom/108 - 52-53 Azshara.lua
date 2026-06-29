RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 50-60
#classic
#tbc
#mop
<< Horde
#name 52-53 Azshara
#displayname 53-54 Azshara << sod
#next 53-54 Felwood
step << Druid
#xprate >1.99
#completewith DruidTraining8
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#xprate >1.99
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9894 >> Train your class spells
.target Loganaar
.xp <52,1
.xp >54,1
step << Druid
#xprate >1.99
#label DruidTraining8
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9904 >> Train your class spells
.target Loganaar
.xp <54,1
step << !Mage
#xprate >1.99
#completewith next
.hs >>Hearth to Crossroads
.use 6948
.bindlocation 380,1
.subzoneskip 380
step << !Mage
#xprate >1.99
#completewith ORGsetHS2
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Orgrimmar >>Fly to Orgrimmar
.target Devrak
.zoneskip Orgrimmar
step << Mage
#xprate >1.99
#completewith ORGsetHS2
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
step
#label ORGsetHS2
.goto Orgrimmar,54.10,68.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Gryshka|r
.home >>Set your Hearthstone to Orgrimmar
.target Innkeeper Gryshka
.bindlocation 1637
.train 3567,3 << Mage 
step
.goto Orgrimmar,49.57,69.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karus|r
.bankwithdraw 10695,10687,10688,10689,10690 >>Withdraw the following from the bank:
>>|T132594:0|t[Box of Empty Vials] |cRXP_WARN_(or the|r |T132793:0|t[Empty Vials] |cRXP_WARN_if you openend the box)|r
.target Karus
.dungeon !MARA
.isOnQuest 3568
step
.goto Orgrimmar,49.57,69.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karus|r
.bankwithdraw 10695,10687,10688,10689,10690,17760 >>Withdraw the following from the bank:
>>|T134199:0|t[Seed of Life]
>>|T132594:0|t[Box of Empty Vials] |cRXP_WARN_(or the|r |T132793:0|t[Empty Vials] |cRXP_WARN_if you openend the box)|r
.target Karus
.dungeon MARA
.isOnQuest 3568
step
#xprate >2.09
#optional
.goto Orgrimmar,49.57,69.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karus|r
.bankwithdraw 10695,10687,10688,10689,10690,17760 >>Withdraw the following from the bank:
>>|T134199:0|t[Seed of Life]
.target Karus
.dungeon MARA
.isNotOnQuest 3568
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10467 >> Train your class spells
.target Kardris Dreamseeker
.xp <52,1
.xp >54,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10408 >> Train your class spells
.target Kardris Dreamseeker
.xp <54,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 11342 >> Train your class spells
.target Ormok
.xp <52,1
.xp >54,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 11294 >> Train your class spells
.target Ormok
.xp <54,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r
.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
.target Rekkul
.zoneskip Orgrimmar,1
step << Warlock
#xprate <1.5
#phase 4-6
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.trainer >>Train your class spells
.accept 8419 >>Accept An Imp's Request
.target Mirket
step << Warlock
#xprate >1.49
#phase 4-6
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.trainer >>Train your class spells
.target Mirket
step << Warlock
#phase 1-3
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.trainer >>Train your class spells
.target Mirket
step << Warlock
.goto Orgrimmar,47.55,46.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
.vendor >>Upgrade your pet's abilities
.target Kurgul
.zoneskip Orgrimmar,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 10180 >> Train your class spells
.target Pephredo
.xp <50,1
.xp >52,1
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 10186 >> Train your class spells
.target Pephredo
.xp <52,1
.xp >54,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 10199 >> Train your class spells
.target Pephredo
.xp <54,1
step << Mage
#phase 4-6
.goto Orgrimmar,39.20,86.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthel'nay|r
.accept 8250 >> Accept Magecraft
.target Uthel'nay
step << Priest
#phase 1-3
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10893 >> Train your class spells
.target Ur'kyo
.xp <50,1
.xp >52,1
step << Priest
#phase 1-3
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10946 >> Train your class spells
.target Ur'kyo
.xp <52,1
.xp >54,1
step << Priest
#phase 1-3
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 15267 >> Train your class spells
.target Ur'kyo
.xp <54,1
step << Priest
#xprate <1.5
#phase 4-6
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10946 >> Train your class spells
.accept 8254 >> Accept Cenarion Aid
.target Ur'kyo
step << Priest
#xprate >1.49
#phase 4-6
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10946 >> Train your class spells
.target Ur'kyo
step
.goto Orgrimmar,56.40,46.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zilzibin|r
>>|cRXP_WARN_He is located on the upper level in the Drag|r
.accept 4494 >>Accept March of the Silithid
.target Zilzibin Drumlore
step
.goto Orgrimmar,59.40,36.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dran|r
.turnin 81 >>Turn in Ripple Delivery
.target Dran Droffers
.isOnQuest 81
step
#optional
.abandon 650 >>Abandon Ripple Recovery
step
.goto Orgrimmar,55.60,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jes'rimon|r
>>|cRXP_WARN_He is located at the top of the building|r
.turnin 4300 >>Turn in Bone-Bladed Weapons
.target Jes'rimon
step
.goto Orgrimmar,75.00,34.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belgrom|r
.accept 3504 >>Accept Betrayed
.target Belgrom Rockmaul
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 13543 >>Train your class spells
.target Ormak Grimshot
.xp <52,1
.xp >54,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14290 >>Train your class spells
.target Ormak Grimshot
.xp <54,1
step << Hunter
#xprate <1.5
#phase 4-6
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.accept 8151 >> Accept The Hunter's Charm
.target Ormak Grimshot
step << Hunter
.goto Orgrimmar,66.33,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
.train 24631 >>Train your pet spells
.target Xao'tsu
.xp <54,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11551 >>Train your class spells
.target Grezz Ragefist
.xp <52,1
.xp >54,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11605 >> Train your class spells
.target Grezz Ragefist
.xp <54,1
step << Hunter
.goto Orgrimmar,48.13,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trak'gen|r
>>|cRXP_BUY_Buy|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_from him|r
.collect 11285,2600,3504,1 
.target Trak'gen
.zoneskip Orgrimmar,1
step << Warlock
#ah
#phase 4-6
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
>>|cRXP_BUY_Buy an|r |T132888:0|t[Felcloth] |cRXP_BUY_from the Auction House|r
>>|cRXP_WARN_This is for an instant turn in at Felwood shortly. Skip this step if you wish to not buy any|r
.collect 14256,1,8419,1 
.target Auctioneer Thathung
.zoneskip Orgrimmar,1
step
#completewith next
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Splintertree Post >>Fly to Splintertree Post
.target Doras
.zoneskip Ashenvale
step
.goto Ashenvale,75.37,64.73,20,0
.goto Ashenvale,79.07,55.41,30,0
.goto Ashenvale,91.24,46.47,30,0
.goto Ashenvale,95.33,48.38
.zone Azshara >>Travel to Azshara
step
#xprate <1.5
#optional
.maxlevel 53,UnrestHatredSkip
step
#xprate >1.49
#optional
.maxlevel 52,UnrestHatredSkip
step
.goto Azshara,10.40,74.90,40,0
.goto Azshara,11.40,78.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
.accept 5535 >>Accept Spiritual Unrest
.accept 5536 >>Accept A Land Filled with Hatred
.target Loh'atu
step << Warlock
#season 2
#sticky
#completewith AzsharaEnd
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
#completewith AzsharaEnd
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
#completewith AzsharaEnd
.itemcount 221499,1 << Warlock 
.itemcount 223147,1 << Mage 
.train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
.train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
.use 221499 << Warlock
.use 223147 << Mage
step
#xprate <1.5 << Priest
#phase 4-6
#completewith next
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r << !Priest
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r. Keep 1 |T134437:0|t[Ichor of Undeath] for your class quest << Priest
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
.collect 7972,1 << Priest 
.mob +Highborne Apparition << Priest
.mob +Highborne Lichling << Priest
step << Priest
#xprate >1.49
#phase 4-6
#completewith next
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
step
#phase 1-3
#completewith next
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
step
#loop
.goto Azshara,19.40,64.00,0
.goto Azshara,19.40,64.00,50,0
.goto Azshara,19.60,60.80,50,0
.goto Azshara,21.20,60.80,50,0
.goto Azshara,20.60,63.60,50,0
>>Kill |cRXP_ENEMY_Haldarr Satyrs|r, |cRXP_ENEMY_Haldarr Tricksters|r and |cRXP_ENEMY_Haldarr Felsworn|r
.complete 5536,1 
.mob +Haldarr Satyr
.complete 5536,2 
.mob +Haldarr Trickster
.complete 5536,3 
.mob +Haldarr Felsworn
step
#xprate <1.5 << Priest
#phase 4-6
#loop
.goto Azshara,17.80,67.80,0
.goto Azshara,17.80,67.80,50,0
.goto Azshara,16.60,71.80,50,0
.goto Azshara,14.60,73.60,50,0
.goto Azshara,13.60,72.60,50,0
.goto Azshara,16.60,68.60,50,0
.goto Azshara,17.20,66.00,50,0
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r << !Priest
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r. Keep 1 |T134437:0|t[Ichor of Undeath] for your class quest << Priest
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
.collect 7972,1 << Priest 
.mob +Highborne Apparition << Priest
.mob +Highborne Lichling << Priest
step << Priest
#xprate >1.49
#phase 4-6
#completewith next
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
step
#phase 1-3
#loop
.goto Azshara,17.80,67.80,0
.goto Azshara,17.80,67.80,50,0
.goto Azshara,16.60,71.80,50,0
.goto Azshara,14.60,73.60,50,0
.goto Azshara,13.60,72.60,50,0
.goto Azshara,16.60,68.60,50,0
.goto Azshara,17.20,66.00,50,0
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
step
.goto Azshara,11.36,78.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
.turnin 5535 >>Turn in Spiritual Unrest
.turnin 5536 >>Turn in A Land Filled with Hatred
.target Loh'atu
step
#optional
#label UnrestHatredSkip
step << Priest
#xprate <1.5
#optional
#phase 4-6
#loop
.goto Azshara,17.80,67.80,0
.goto Azshara,17.80,67.80,50,0
.goto Azshara,16.60,71.80,50,0
.goto Azshara,14.60,73.60,50,0
.goto Azshara,13.60,72.60,50,0
.goto Azshara,16.60,68.60,50,0
.goto Azshara,17.20,66.00,50,0
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r. Loot them for a |T134437:0|t[Ichor of Undeath] for your class quest
.collect 7972,1
.mob Highborne Apparition
.mob Highborne Lichling
step
#completewith next
.goto Azshara,22.00,49.70,30,0
.subzone 1237 >> Travel northeast to Valormok
step
.goto Azshara,22.00,49.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
.fp Azshara >>Get the Azshara Flight Path
.target Kroum
.isQuestAvailable 3505,3517,3601
step
.goto Azshara,22.20,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor|r
.turnin 3504 >>Turn in Betrayed
.accept 3505 >>Accept Betrayed
.target Ag'tor Bloodfist
.isOnQuest 3504
step
#optional
.goto Azshara,22.20,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor|r
.accept 3505 >>Accept Betrayed
.target Ag'tor Bloodfist
.isQuestTurnedIn 3504
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
.accept 3517 >>Accept Stealing Knowledge
.target Jediga
step << Mage
#phase 4-6
#completewith next
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
.turnin 3503 >>Turn in Meeting with the Master
.target Sanath Lim-yo
step << Mage
#phase 4-6
.goto Azshara,29.2,40.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
>>|cRXP_WARN_The Archmage wanders his tower|r
.turnin 8250 >>Turn in Magecraft
.accept 8251 >>Accept Magic Dust
.target Archmage Xylem
step << Mage
#phase 4-6
#completewith KJI
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
>>|cRXP_WARN_This will teleport you back down|r
.turnin 3421 >> Turn in Return Trip
.timer 8,Return Trip RP
.target Nyrill
step << Hunter/Priest
#xprate <1.5
#phase 4-6
#completewith next
.goto Azshara,41.61,42.68,50 >> Travel toward |cRXP_FRIENDLY_Ogtinc|r, he is located on a small peak
step << Hunter/Priest
#xprate <1.5
#phase 4-6
.goto Azshara,42.40,42.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
>>|cRXP_WARN_Be careful of falling as you approach him; he's in a precarious spot|r
.turnin 8151 >> Turn in The Hunter's Charm << Hunter
.accept 8153 >>Accept Coursers Antlers << Hunter
.turnin 8254 >>Turn in Cenarion Aid << Priest
.accept 8255 >>Accept Of Coursers We Know << Priest
.target Ogtinc
step << Hunter/Priest
#xprate <1.5
#phase 4-6
#loop
.goto Azshara,48.40,33.20,0
.goto Azshara,48.40,33.20,60,0
.goto Azshara,48.40,16.40,60,0
.goto Azshara,55.20,17.00,60,0
.goto Azshara,59.60,22.90,60,0
.goto Azshara,70.60,28.40,60,0
.goto Azshara,83.20,25.00,60,0
.goto Azshara,76.60,27.30,60,0
.goto Azshara,67.80,27.40,60,0
.goto Azshara,61.40,23.30,60,0
.goto Azshara,55.30,25.30,60,0
.goto Azshara,50.20,25.40,60,0
>>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Antlers|r << Hunter
>>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Glands|r << Priest
>>|cRXP_ENEMY_Mosshoof Coursers|r |cRXP_WARN_share respawn with Hippogryphs and Chimaeras|r
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.mob Mosshoof Courser
step << Hunter
#phase 4-6
#season 0
.goto Azshara,42.40,42.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8153 >>Turn in Coursers Antlers
.accept 8231 >>Accept Wavethrashing
.target Ogtinc
.dungeon ST
.isQuestComplete 8153
step << Hunter
#xprate <1.5
#phase 4-6
.goto Azshara,42.40,42.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8153 >>Turn in Coursers Antlers
.target Ogtinc
.isQuestComplete 8153
step
#label KJI
.goto Azshara,53.45,21.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.accept 3601 >>Accept Kim'jael Indeed!
.target Kim'jael
step
#completewith Magus
>>Loot the |cRXP_PICK_Kim'Jael's Equipment|r boxes scattered around the camp
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step << Mage
#phase 4-6
#loop
.goto Azshara,55.80,25.90,0
.goto Azshara,55.80,25.90,50,0
.goto Azshara,57.80,26.40,50,0
.goto Azshara,58.00,28.20,50,0
.goto Azshara,59.20,29.60,50,0
.goto Azshara,57.90,31.40,50,0
.goto Azshara,57.00,30.30,50,0
.goto Azshara,56.90,27.50,50,0
.goto Azshara,56.00,29.70,50,0
.goto Azshara,55.40,29.70,50,0
>>Kill |cRXP_ENEMY_Blood Elf Reclaimers|r and |cRXP_ENEMY_Blood Elf Surveyors|r. Loot them for their |cRXP_LOOT_Dust|r
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Surveyors|r |cRXP_WARN_have a short cooldown Fire Nova, and|r |cRXP_ENEMY_Reclaimers|r |cRXP_WARN_have a high-damage fireball|r
.complete 3505,1 
.mob +Blood Elf Reclaimer
.complete 3505,2 
.mob +Blood Elf Surveyor
.complete 8251,1 
.mob +Blood Elf Reclaimer
.mob +Blood Elf Surveyor
.isOnQuest 3505
step
#loop
.goto Azshara,55.80,25.90,0
.goto Azshara,55.80,25.90,50,0
.goto Azshara,57.80,26.40,50,0
.goto Azshara,58.00,28.20,50,0
.goto Azshara,59.20,29.60,50,0
.goto Azshara,57.90,31.40,50,0
.goto Azshara,57.00,30.30,50,0
.goto Azshara,56.90,27.50,50,0
.goto Azshara,56.00,29.70,50,0
.goto Azshara,55.40,29.70,50,0
>>Kill |cRXP_ENEMY_Blood Elf Reclaimers|r and |cRXP_ENEMY_Blood Elf Surveyors|r
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Surveyors|r |cRXP_WARN_have a short cooldown Fire Nova, and|r |cRXP_ENEMY_Reclaimers|r |cRXP_WARN_have a high-damage fireball|r
.complete 3505,1 
.mob +Blood Elf Reclaimer
.complete 3505,2 
.mob +Blood Elf Surveyor
.isOnQuest 3505
step
.goto Azshara,59.40,31.20
>>Click the |cRXP_PICK_Kaldorei Tome of Summoning|r on the pedestal in the summoning circle
.complete 3505,3 
.turnin 3505 >>Turn in Betrayed
.isOnQuest 3505
step
.goto Azshara,59.50,31.20
>>Click the |cRXP_PICK_Kaldorei Tome of Summoning|r again
.accept 3506 >>Accept Betrayed
.isQuestTurnedIn 3505
step
#label Magus
.goto Azshara,59.50,31.40
>>Destroy one of the |cRXP_PICK_Arcane Focusing Crystals|r. This will summon a |cRXP_ENEMY_Blood Elf Defender|r
>>After 13 seconds |cRXP_ENEMY_Magus Rimtori|r will spawn. Kill her and loot her for her |cRXP_LOOT_Head|r
.complete 3506,1 
.isQuestTurnedIn 3505
.mob Blood Elf Defender
.unitscan Magus Rimtori
step
#loop
.goto Azshara,58.50,25.00,0
.goto Azshara,58.50,25.00,25,0
.goto Azshara,58.90,28.30,25,0
.goto Azshara,59.60,30.90,25,0
.goto Azshara,57.00,29.90,25,0
.goto Azshara,56.50,28.40,25,0
>>Loot the |cRXP_PICK_Kim'Jael's Equipment|r boxes scattered around the camp
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step
#xprate <1.5
#loop
.goto Azshara,55.80,25.90,50,0
.goto Azshara,57.80,26.40,50,0
.goto Azshara,58.00,28.20,50,0
.goto Azshara,59.20,29.60,50,0
.goto Azshara,57.90,31.40,50,0
.goto Azshara,57.00,30.30,50,0
.goto Azshara,56.90,27.50,50,0
.goto Azshara,56.00,29.70,50,0
.goto Azshara,55.40,29.70,50,0
.xp 53+95000 >> Grind to level 53 95000+/167100
>>|cRXP_WARN_This is your last grinding spot needed before level 60. If you don't want to grind this much you can do a dungeon or two instead|r
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
.goto Azshara,53.45,21.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.turnin 3601 >>Turn in Kim'jael Indeed!
.accept 5534 >>Accept Kim'jael's "Missing" Equipment
.target Kim'jael
step << Hunter
#season 0
#phase 4-6
#completewith next
.goto Azshara,47.80,60.80,50
>>Travel south to the cliff and jump down into the water
step << Hunter
#season 0
#phase 4-6
#loop
.goto Azshara,88.69,25.88,70,0
.goto Azshara,54.2,42.2,70,0
.goto Azshara,59.2,35.6,70,0
.goto Azshara,71.6,36.8,70,0
.goto Azshara,90.4,33.6,70,0
.goto Azshara,87.0,9.0
.goto Azshara,54.2,42.2,0
.goto Azshara,59.2,35.6,0
.goto Azshara,71.6,36.8,0
.goto Azshara,90.4,33.6,0
.goto Azshara,88.69,25.88,0
>>Kill |cRXP_ENEMY_Wavethrashers|r. Loot them for their |cRXP_LOOT_Wavethrasher Scales|r
>>|cRXP_WARN_These can be hard to find. Ensure to use|r |T132328:0|t[Track Beasts] |cRXP_WARN_and cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_around the coast to find them faster|r
.complete 8231,1 
.mob Wavethrasher
.mob Young Wavethrasher
.mob Great Wavethrasher
.dungeon ST
step << Mage
#phase 4-6
#completewith next
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
.turnin 3503 >>Turn in Meeting with the Master
.target Sanath Lim-yo
step << Mage
#phase 4-6
.goto Azshara,29.2,40.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
>>|cRXP_WARN_The Archmage wanders his tower|r
.turnin 8251 >>Turn in Magic Dust
.accept 8252 >>Accept The Siren's Coral
.target Archmage Xylem
step << Mage
#phase 4-6
#completewith SomeRune
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
.turnin 3503 >>Turn in Meeting with the Master
.target Sanath Lim-yo
step
#phase 1-3 << Hunter/Mage
#completewith next
.goto Azshara,47.80,60.80,50,0
>>Travel south to the cliff and jump down into the water
step
#completewith Tablets
>>Kill all |cRXP_ENEMY_Spitelash Nagas|r. Loot them for |cRXP_LOOT_Some Rune|r
.complete 5534,1 
.mob Spitelash Myrmidon
.mob Spitelash Enchantress
.mob Spitelash Battlemaster
.mob Spitelash Siren
step << Mage
#phase 4-6
#completewith SomeRune
>>Kill |cRXP_ENEMY_Spitelash Sirens|r. Loot them for their |cRXP_LOOT_Enchanted Corals|r
.complete 8252,1 
.mob Spitelash Siren
step
#completewith next
.use 10695 >>|cRXP_WARN_Open your|r |T132594:0|t[Box of Empty Vials]
.collect 10687,1,3568,1
.collect 10688,1,3568,1
.collect 10689,1,3568,1
.collect 10690,1,3568,1
step
.goto Azshara,47.50,46.20
.use 10690 >>|cRXP_WARN_Use your|r |T132793:0|t[Empty Vial Labeled #4] |cRXP_WARN_in the centre of the puddle|r
.complete 3568,4 
.isOnQuest 3568
step
.goto Azshara,48.70,48.50
.use 10689 >>|cRXP_WARN_Use your|r |T132793:0|t[Empty Vial Labeled #3] |cRXP_WARN_in the centre of the puddle|r
.complete 3568,3 
.isOnQuest 3568
step
.goto Azshara,47.80,51.30
.use 10688 >>|cRXP_WARN_Use your|r |T132793:0|t[Empty Vial Labeled #2] |cRXP_WARN_in the centre of the puddle|r
.complete 3568,2 
.isOnQuest 3568
step
.goto Azshara,47.80,60.80
.use 10687 >>|cRXP_WARN_Use your|r |T132793:0|t[Empty Vial Labeled #1] |cRXP_WARN_in the centre of the puddle|r
.complete 3568,1 
.isOnQuest 3568
step
#label Tablets
#loop
.goto Azshara,35.86,53.49,0
.goto Azshara,39.80,46.81,40,0
.goto Azshara,39.86,48.72,40,0
.goto Azshara,37.30,48.12,40,0
.goto Azshara,38.55,54.58,40,0
.goto Azshara,40.97,55.00,40,0
.goto Azshara,40.81,62.69,40,0
.goto Azshara,42.95,63.76,40,0
.goto Azshara,38.70,63.30,40,0
.goto Azshara,36.35,58.75,40,0
.goto Azshara,35.92,57.55,40,0
.goto Azshara,34.89,53.93,40,0
.goto Azshara,35.86,53.49,40,0
>>Loot the |cRXP_PICK_Glowing Tablets|r scattered around the ruins
.complete 3517,1 
.complete 3517,2 
.complete 3517,3 
.complete 3517,4 
step
#label SomeRune
#loop
.goto Azshara,44.00,48.20,0
.goto Azshara,44.00,48.20,50,0
.goto Azshara,45.60,43.80,50,0
.goto Azshara,47.00,41.60,50,0
.goto Azshara,48.80,45.00,50,0
.goto Azshara,47.40,49.00,50,0
.goto Azshara,48.20,54.00,50,0
.goto Azshara,48.20,59.80,50,0
.goto Azshara,48.60,64.80,50,0
.goto Azshara,46.20,61.00,50,0
.goto Azshara,45.60,57.80,50,0
.goto Azshara,46.00,52.80,50,0
>>Kill all |cRXP_ENEMY_Spitelash Nagas|r. Loot them for |cRXP_LOOT_Some Rune|r
.complete 5534,1 
.mob Spitelash Myrmidon
.mob Spitelash Enchantress
.mob Spitelash Battlemaster
.mob Spitelash Siren
step << Mage
#phase 4-6
#loop
.goto Azshara,44.00,48.20,0
.goto Azshara,44.00,48.20,50,0
.goto Azshara,45.60,43.80,50,0
.goto Azshara,47.00,41.60,50,0
.goto Azshara,48.80,45.00,50,0
.goto Azshara,47.40,49.00,50,0
.goto Azshara,48.20,54.00,50,0
.goto Azshara,48.20,59.80,50,0
.goto Azshara,48.60,64.80,50,0
.goto Azshara,46.20,61.00,50,0
.goto Azshara,45.60,57.80,50,0
.goto Azshara,46.00,52.80,50,0
>>Kill |cRXP_ENEMY_Spitelash Sirens|r. Loot them for their |cRXP_LOOT_Enchanted Corals|r
.complete 8252,1 
.mob Spitelash Siren
step
#completewith EquipmentTI
.goto Azshara,45.55,37.79,50 >>Run up the hill to leave the Ruins of Eldarath
step << Hunter/Priest
#season 0
#phase 4-6
.goto Azshara,42.40,42.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8231 >>Turn in Wavethrashing << Hunter
.turnin 8255 >>Turn in Accept Of Coursers We Know << Priest
.accept 8256 >>Accept The Ichor of Undeath << Priest
.turnin 8256 >>Turn in The Ichor of Undeath << Priest
.target Ogtinc
.dungeon ST << Hunter
step << Hunter/Priest
#season 0
#phase 4-6
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.accept 8232 >> Accept The Green Drake << Hunter
.accept 8257 >> Accept Blood of Morphaz << Priest
.target Ogtinc
.isQuestTurnedIn 8231 << Hunter
.isQuestTurnedIn 8256 << Priest
.dungeon ST
step
#label EquipmentTI
.goto Azshara,53.45,21.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.turnin 5534 >>Turn in Kim'jael's "Missing" Equipment
.target Kim'jael
step
.goto Azshara,22.60,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
.turnin 3517 >>Turn in Stealing Knowledge
.accept 3561 >>Accept Delivery to Archmage Xylem
.accept 3518 >>Accept Delivery to Magatha
.accept 3541 >>Accept Delivery to Jes'rimon
.target Jediga
step
.goto Azshara,22.26,51.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor|r
.turnin 3506 >>Turn in Betrayed
.accept 3507 >>Accept Betrayed
.target Ag'tor Bloodfist
.isQuestTurnedIn 3505
step
#completewith next
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath|r
.turnin 3503 >>Turn in Meeting with the Master
.target Sanath Lim-yo
step
.goto Azshara,29.7,40.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
.turnin 3561 >>Turn in Delivery to Archmage Xylem
.accept 3565 >>Accept Xylem's Payment to Jediga
.target Archmage Xylem
step << Mage
#phase 4-6
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.turnin 8252 >>Turn in The Siren's Coral
.target Archmage Xylem
.isQuestComplete 8252
step << Mage
#season 0
#phase 4-6
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.accept 8253 >> Accept Destroy Morphaz
.target Archmage Xylem
.isQuestTurnedIn 8252
.dungeon ST
step
#completewith next
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
>>|cRXP_WARN_This will teleport you back down|r
.turnin 3421 >> Turn in Return Trip
.timer 8,Return Trip RP
.target Nyrill
step
.goto Azshara,22.56,51.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
.turnin 3565 >>Turn in Xylem's Payment to Jediga
.target Jediga
step
#label AzsharaEnd
.goto Azshara,21.96,49.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
.fly Splintertree Post >>Fly to Splintertree Post
.target Kroum
.zoneskip Ashenvale
step
.goto Ashenvale,55.78,28.12
.zone Felwood >>Travel to Felwood
]]);
