RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 30-40
#classic
#tbc
#mop
<< Horde
#name 33-34 Shimmering Flats
#displayname 33-35 Shimmering Flats << sod
#next RestedXP Horde 30-40\34-35 Desolace;RestedXP Horde 30-40\35-37 Northern Stranglethorn
#somname 32-33 Shimmering Flats
step
#xprate <2.1
.goto Thousand Needles,45.70,50.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
.accept 5361 >> Accept Family Tree
.target Cliffwatcher Longhorn
.xp <32,1
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
.vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_from him if it's up|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
.isQuestAvailable 1146
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,2600,1146,1 
.target Starn
.subzoneskip 484,1
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Montarr|r
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from him if they're up|r << !Warrior
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_, |r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
.target Montarr
.subzoneskip 484,1
step << Shaman
#completewith next
.goto Thousand Needles,54.7,44.4,30 >> Run up the ramp here
step << Shaman
.goto Thousand Needles,53.5,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prate|r
>>|cRXP_WARN_This turn-in grants a 1-hour buff with +40% move speed, +30% attack speed|r
.turnin 1531 >>Turn in Call of Air
.target Prate Cloudseer
step
.goto Thousand Needles,53.94,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn Plainstalker|r
.turnin 1151 >> Turn in Test of Strength
.target Dorn Plainstalker
.isQuestComplete 1151
step
#optional
#completewith next
.abandon 1151 >>Abandon Test of Strength
step
.goto Thousand Needles,67.58,63.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moktar|r
.turnin 1146 >> Turn in The Swarm Grows
.accept 1147 >> Accept The Swarm Grows
.target Moktar Krin
step
#xprate >1.99
#completewith next
.goto Thousand Needles,77.79,77.26,80 >>Travel to |cRXP_FRIENDLY_Kravel|r
>>Loot |cRXP_PICK_Rocket Car Rubble|r and kill |cRXP_ENEMY_Scorpids|r, |cRXP_ENEMY_Vultures|r, |cRXP_ENEMY_Basilisks|r and |cRXP_ENEMY_Tortoises|r on the way
.complete 1176,1 
.disablecheckbox
.complete 1105,1 
.disablecheckbox
.complete 1104,1 
.disablecheckbox
.complete 1175,1 
.disablecheckbox
.complete 1175,2 
.disablecheckbox
.complete 1110,1 
.disablecheckbox
.mob Salt Flats Scavenger
.mob Salt Flats Vulture
.mob Sparkleshell Snapper
.mob Sparkleshell Borer
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk
.mob Saltstone Crystalhide
.mob Scorpid Reaver
.mob Scorpid Terror
step
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.turnin 1112 >> Turn in Parts for Kravel
.timer 15,Parts for Kravel RP
.accept 1114 >> Accept Delivery to the Gnomes
.accept 1110 >> Accept Rocket Car Parts
.target Kravel Koalbeard
step
#xprate <2.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle|r and |cRXP_FRIENDLY_Wizzle|r
.turnin 1114 >> Turn in Delivery to the Gnomes
.accept 1104 >> Accept Salt Flat Venom
.target +Fizzle Brassbolts
.goto Thousand Needles,78.07,77.13
.accept 1105 >> Accept Hardened Shells
.target +Wizzle Brassbolts
.goto Thousand Needles,78.14,77.12
step
#xprate >1.99
.goto Thousand Needles,78.07,77.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle|r and |cRXP_FRIENDLY_Wizzle|r
.turnin 1114 >> Turn in Delivery to the Gnomes
.target Fizzle Brassbolts
step
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1115 >> Accept The Rumormonger
.target Kravel Koalbeard
step
#xprate <2.0
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.accept 1176 >> Accept Load Lightening
.target Pozzik
step
#xprate <2.0
.goto Thousand Needles,81.64,77.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zherin|r
.accept 1175 >> Accept A Bump in the Road
.target Trackmaster Zherin
step
.goto Thousand Needles,69.66,85.97
.subzone 479 >>Travel to The Rustmaul Dig Site
>>Loot |cRXP_PICK_Rocket Car Rubble|r and kill |cRXP_ENEMY_Scorpids|r, |cRXP_ENEMY_Vultures|r, |cRXP_ENEMY_Basilisks|r and |cRXP_ENEMY_Tortoises|r on the way
.complete 1176,1 
.disablecheckbox
.complete 1105,1 
.disablecheckbox
.complete 1104,1 
.disablecheckbox
.complete 1175,1 
.disablecheckbox
.complete 1175,2 
.disablecheckbox
.complete 1110,1 
.disablecheckbox
.mob Salt Flats Scavenger
.mob Salt Flats Vulture
.mob Sparkleshell Snapper
.mob Sparkleshell Borer
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk
.mob Saltstone Crystalhide
.mob Scorpid Reaver
.mob Scorpid Terror
.isOnQuest 1147
step
#completewith next
>>Kill |cRXP_ENEMY_Silithid Invaders|r, |cRXP_ENEMY_Silithid Invaders|r and |cRXP_ENEMY_Silithid Invaders|r
>>|cRXP_WARN_Be careful! They cry for help when attacked, you could accidently agro multiple nearby mobs|r
.complete 1147,3 
.mob +Silithid Invader
.complete 1147,1 
.mob +Silithid Searcher
.complete 1147,2 
.mob +Silithid Hive Drone
step
#loop
.goto Thousand Needles,67.27,85.30,0
.goto Thousand Needles,67.27,85.30,50,0
.goto Thousand Needles,68.14,85.96,50,0
.goto Thousand Needles,68.03,86.93,50,0
.goto Thousand Needles,68.08,88.54,50,0
.goto Thousand Needles,69.48,89.64,50,0
.goto Thousand Needles,70.31,87.64,50,0
.goto Thousand Needles,71.09,86.23,50,0
.goto Thousand Needles,71.34,84.11,50,0
.goto Thousand Needles,70.51,82.80,50,0
.goto Thousand Needles,68.52,80.87,50,0
.goto Thousand Needles,67.45,82.28,50,0
>>Loot the |cRXP_ENEMY_Silithid|r mobs for a |T135034:0|t[|cRXP_LOOT_Cracked Silithid Carapace|r]. Use it to start the quest
.collect 5877,1,1148,1 
.accept 1148 >> Accept Parts of the Swarm
.use 5877
step
#loop
.goto Thousand Needles,67.27,85.30,0
.goto Thousand Needles,67.27,85.30,50,0
.goto Thousand Needles,68.14,85.96,50,0
.goto Thousand Needles,68.03,86.93,50,0
.goto Thousand Needles,68.08,88.54,50,0
.goto Thousand Needles,69.48,89.64,50,0
.goto Thousand Needles,70.31,87.64,50,0
.goto Thousand Needles,71.09,86.23,50,0
.goto Thousand Needles,71.34,84.11,50,0
.goto Thousand Needles,70.51,82.80,50,0
.goto Thousand Needles,68.52,80.87,50,0
.goto Thousand Needles,67.45,82.28,50,0
>>Kill |cRXP_ENEMY_Silithid Invaders|r, |cRXP_ENEMY_Silithid Searchers|r and |cRXP_ENEMY_Silithid Hive Drones|r. Loot them for their |cRXP_LOOT_Hearts|r, |cRXP_LOOT_Talons|r and |cRXP_LOOT_Carapaces|r
>>|cRXP_WARN_Be careful! They cry for help when attacked, you could accidently agro multiple nearby mobs|r
.complete 1147,3 
.mob +Silithid Invader
.complete 1147,1 
.mob +Silithid Searcher
.complete 1147,2 
.mob +Silithid Hive Drone
.complete 1148,1 
.mob +Silithid Invader
.mob +Silithid Searcher
.mob +Silithid Hive Drone
.complete 1148,2 
.mob +Silithid Invader
.mob +Silithid Searcher
.mob +Silithid Hive Drone
.complete 1148,3 
.mob +Silithid Invader
.mob +Silithid Searcher
.mob +Silithid Hive Drone
step
#completewith ShimmeringFlatsLoop
+|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Salt Flats Vultures|r |cRXP_WARN_can execute. Stay above 20% health!|r
step
#completewith next
.goto Thousand Needles,67.58,63.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Moktar|r
.turnin 1147 >> Turn in The Swarm Grows
.target Moktar Krin
step
#label ShimmeringFlatsLoop
>>|cRXP_WARN_Run circles around The Shimmering Flats until all objectives are complete|r
>>Kill |cRXP_ENEMY_Salt Flats Scavengers|r and |cRXP_ENEMY_Salt Flats Vultures|r. Loot them for their |cRXP_LOOT_Bones|r
>>Kill |cRXP_ENEMY_Sparkleshell Tortoises|r, |cRXP_ENEMY_Sparkleshell Borers|r and |cRXP_ENEMY_Sparkleshell Snappers|r. Loot them for their |cRXP_LOOT_Shells|r
>>Kill |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r and |cRXP_ENEMY_Saltstone Gazers|r
>>Open the |cRXP_PICK_Rocket Car Rubble|r. Loot it for the |cRXP_LOOT_Rocket Car Parts|r
.complete 1176,1 
.mob +Salt Flats Scavenger
.mob +Salt Flats Vulture
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.mob +Sparkleshell Snapper
.mob +Sparkleshell Borer
.mob +Sparkleshell Tortoise
.goto Thousand Needles,82.6,54.8,0
.complete 1104,1 
.mob +Scorpid Reaver
.mob +Scorpid Terror
.goto Thousand Needles,71.8,73.4,0
.complete 1175,1 
.mob +Saltstone Basilisk
.goto Thousand Needles,73.5,59.9,0
.complete 1175,2 
.mob +Saltstone Crystalhide
.goto Thousand Needles,77.65,87.34,0
.complete 1175,3 
.mob +Saltstone Gazer
.goto Thousand Needles,77.65,87.34,0
.complete 1110,1 
step << Warrior
#season 2
.train 403472,1
>>|cRXP_WARN_You will need a shield to get this rune. Skip the following steps if you don't have one|r
.goto Thousand Needles,67.84,89.50,100 >> Travel to the Rustmaul Digsite in |cFFfa9602Thousand Needles|r
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
#completewith next
+|cRXP_WARN_Ensure you have equiped your one-handed weapon and shield|r
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
.train 403472,1
.goto Thousand Needles,67.968,89.800
.cast 5308,20658,20660,20661,20662 >>|cRXP_WARN_Cast|r |T135358:0|t[Execute] |cRXP_WARN_on the |cRXP_ENEMY_Combat Dummy|r, then move across to the next|r |cRXP_ENEMY_Combat Dummy|r
.mob Combat Dummy
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
.train 403472,1
.goto Thousand Needles,67.845,89.511
.cast 355 >>|cRXP_WARN_Cast|r |T136080:0|t[Taunt] |cRXP_WARN_on the |cRXP_ENEMY_Combat Dummy|r, then move across to the next|r |cRXP_ENEMY_Combat Dummy|r
.mob Combat Dummy
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
.train 403472,1
.goto Thousand Needles,67.713,89.245
.cast 72,1671,1672 >>|cRXP_WARN_Cast|r |T132357:0|t[Shield Bash] |cRXP_WARN_on the|r |cRXP_ENEMY_Combat Dummy|r
.mob Combat Dummy
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
.train 403472,1
.goto Thousand Needles,67.933,89.408
>>Open the |cRXP_PICK_Warrior's Bounty|r chest. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r]
.collect 213111,1 
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step << Warrior
#season 2
.train 403472 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r] |cRXP_WARN_to train|r |T132365:0|t[Intervene]
.use 213111
.train 5308,3 
.train 355,3 
.train 72,3 
.train 403338,1 
step
#completewith SetHSCampT
+|cRXP_WARN_Save your|r |T134026:0|t[|cRXP_LOOT_Turtle Meat|r] |cRXP_WARN_for a free quest turn-in later|r
.itemcount 3712,10
.isQuestAvailable 7321
step
.goto Thousand Needles,67.58,63.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Moktar|r
.turnin 1147 >> Turn in The Swarm Grows
.target Moktar Krin
step
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Kravel|r
.turnin 1110 >> Turn in Rocket Car Parts
.accept 5762 >> Accept Hemet Nesingwary
.target Kravel Koalbeard
step
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle|r and |cRXP_FRIENDLY_Wizzle|r
.turnin 1104 >> Turn in Salt Flat Venom
.goto Thousand Needles,78.07,77.13
.turnin 1105 >> Turn in Hardened Shells
.target +Wizzle Brassbolts
.goto Thousand Needles,78.14,77.12
.accept 1106 >> Accept Martek the Exiled
.target +Fizzle Brassbolts
.goto Thousand Needles,78.07,77.13
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle|r and |cRXP_FRIENDLY_Wizzle|r
.turnin 1104 >> Turn in Salt Flat Venom
.target +Fizzle Brassbolts
.goto Thousand Needles,78.07,77.13
.turnin 1105 >> Turn in Hardened Shells
.target +Wizzle Brassbolts
.goto Thousand Needles,78.14,77.12
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1176 >> Turn in Load Lightening
.accept 1178 >> Accept Goblin Sponsorship
.target Pozzik
step
.goto Thousand Needles,81.63,77.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zherin|r
.turnin 1175 >> Turn in A Bump in the Road
.target Trackmaster Zherin
step
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >> Travel to Gadgetzan
.zoneskip Tanaris
step
#xprate <2.1
#completewith next
.goto Tanaris,51.61,25.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Freewind Post >> Fly to Freewind Post
.target Bulkrek Ragefist
.zoneskip The Barrens
step
#xprate <2.1
.goto Thousand Needles,45.70,50.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
.accept 5361 >> Accept Family Tree
.target Cliffwatcher Longhorn
step
#xprate <2.1
#completewith SetHSCampT
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyse|r
.fly Camp Taurajo >> Fly to Camp Taurajo
.target Nyse
.zoneskip Thousand Needles,1
step
#xprate <2.1
#completewith SetHSCampT
.goto Tanaris,51.61,25.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Camp Taurajo >> Fly to Camp Taurajo
.target Bulkrek Ragefist
.zoneskip Tanaris,1
step
#xprate <2.1
.goto The Barrens,45.60,59.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
.home >>Set your Hearthstone to Camp Taurajo
.target Innkeeper Byula
.bindlocation 378
step
#xprate <2.1
#completewith next
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Crossroads >> Fly to The Crossroads
.target Omusa Thunderhorn
.subzoneskip 380
step
#xprate >2.09
#completewith next
.goto Tanaris,51.61,25.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Crossroads >> Fly to The Crossroads
.target Bulkrek Ragefist
.zoneskip The Barrens
step
.goto The Barrens,51.10,29.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korran|r
.turnin 1148 >> Turn in Parts of the Swarm
.accept 1184 >> Accept Parts of the Swarm
.target Korran
step
#xprate >2.09
.goto The Barrens,51.99,29.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
.home >> Set your Hearthstone to Crossroads
.target Innkeeper Boorand Plainswind
.bindlocation 380
step
#optional
#label SetHSCampT
step
#completewith LeaveRatchet
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Ratchet >> Fly to Ratchet
.target Devrak
.subzoneskip 392
step
#sticky
#completewith LeaveRatchet
#season 2
.goto The Barrens,61.8,39.4
>>|cRXP_WARN_If you have |cRXP_LOOT_3 gold|r to spare you can buy a rune from|r |cRXP_FRIENDLY_Grizzby|r |cRXP_WARN_in the Ratchet inn. Judge for yourself if you can afford it and if the rune is useful for your class. You can always buy it later|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r in the inn
.use 210822 << Priest
.use 210820 << Paladin
.use 210654 << Mage
.use 210818 << Hunter
.use 210817 << Druid
.use 210825 << Warrior
.use 210824 << Warlock
.use 210653 << Rogue
.use 210823 << Shaman
.train 415995 >>|cRXP_WARN_Buy and use the|r |T135791:0|t[|cRXP_FRIENDLY_Harmonious Epiphany|r] |cRXP_WARN_to train|r |T237549:0|t[Serendipity] << Priest
.train 410010 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sacrifice|r] |cRXP_WARN_to train|r |T134596:0|t[Engrave Pants - Divine Sacrifice] << Paladin
.train 401761 >>|cRXP_WARN_Buy and use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Rewind Time|r] |cRXP_WARN_to train|r |T237538:0|t[Rewind Time] << Mage
.train 410122 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r] |cRXP_WARN_to train|r |T132266:0|t[Lone Wolf] << Hunter
.train 416042 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Survival|r] |cRXP_WARN_to train|r |T132126:0|t[Survival of the Fittest] << Druid
.train 425445 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Warbringer|r] |cRXP_WARN_to train|r |T236319:0|t[Warbinger] << Warrior
.train 425476 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r] |cRXP_WARN_to train|r |T237562:0|t[Demonic Pact] << Warlock
.train 424990 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Main Gauche|r] |cRXP_WARN_to train|r |T237531:0|t[Main Gauche] << Rogue
.train 410096 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dual Wield Specialization|r] |cRXP_WARN_to train|r |T132686:0|t[Engrave Chest - Dual Wield Specialization] << Shaman
.target Grizzby
.train 415995,1 << Priest
.train 410010,1 << Paladin
.train 401761,1 << Mage
.train 410122,1 << Hunter
.train 416042,1 << Druid
.train 425445,1 << Warrior
.train 425476,1 << Warlock
.train 424990,1 << Rogue
.train 410096,1 << Shaman
step
.goto The Barrens,62.68,37.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zikkel|r
.bankdeposit 4306,15 >> Deposit 15 |T132905:0|t[Silk Cloth] into your bank
.target Zikkel
.itemcount 4306,15
step
.goto The Barrens,62.68,36.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
.turnin 1178 >> Turn in Goblin Sponsorship
.accept 1180 >> Accept Goblin Sponsorship
.target Gazlowe
step << Shaman
.goto The Barrens,65.83,43.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r
.turnin 96 >>Turn in Call of Water
.target Islen Waterseer
step
#label LeaveRatchet
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> Take the boat to Stranglethorn Vale
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,26.30,73.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lozgil|r
.turnin 1180 >> Turn in Goblin Sponsorship
.accept 1181 >> Accept Goblin Sponsorship
.target Wharfmaster Lozgil
step
.goto Stranglethorn Vale,28.30,77.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.accept 575 >> Accept Supply and Demand
.target Drizzlik
step
#season 0,1
.goto Stranglethorn Vale,27.60,77.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scooty|r
.turnin 2842 >>Turn in Chief Engineer Scooty
.target Scooty
step << Warrior/Shaman
#season 0,1 << Shaman
.goto Stranglethorn Vale,28.34,75.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zarena|r
.vendor >>|cRXP_BUY_Buy a|r |T135158:0|t[Big Stick] |cRXP_BUY_or a|r |T135144:0|t[Staff of Protection] |cRXP_BUY_from her if one of them is available|r
.money <5.3896
.target Zarena Cromwind
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r inside the inn
.accept 605 >> Accept Singing Blue Shards
.target Crank Fizzlebub
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 8696 >> Train your class spells
.target Ian Strom
.xp <34,1
.xp >36,1
step << Rogue
#optional
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 8691 >> Train your class spells
>>|T132273:0|t[Instant Poison Rank 3] |cRXP_WARN_requires 160 skill in Poisons!|r
.target Ian Strom
.xp <36,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r and |cRXP_FRIENDLY_Kebok|r on the third floor of the inn
.turnin 1115 >> Turn in The Rumormonger
.accept 201 >> Accept Investigate the Camp
.target +Krazek
.goto Stranglethorn Vale,26.94,77.21
.accept 189 >> Accept Bloodscalp Ears
.accept 213 >> Accept Hostile Takeover
.target +Kebok
.goto Stranglethorn Vale,27.00,77.13
step
.goto Stranglethorn Vale,27.20,76.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron|r on the third floor balcony
.turnin 1181 >> Turn in Goblin Sponsorship
.accept 1182 >> Accept Goblin Sponsorship
.target Baron Revilgaz
step
.goto Stranglethorn Vale,26.90,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gringer|r around the corner of the balcony
.fp Booty Bay >> Get the Booty Bay flight path
.target Gringer
.subzoneskip 35,1
step
.goto Stranglethorn Vale,28.14,78.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Glyx|r
.vendor >> |cRXP_BUY_Buy|r |T134832:0|t[Greater Healing Potions] |cRXP_BUY_from him if they're up|r
.target Glyx Brewright
.subzoneskip 35,1
step << !Mage
#xprate <2.1
#completewith next
.hs >> Hearth to Camp Taurajo
.bindlocation 378,1
.subzoneskip 378
.use 6948
step << !Mage
#xprate <2.1
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step << Mage
#xprate <2.1
.cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleport: Thunder Bluff]
.zoneskip Thunder Bluff
step << !Mage
#xprate >2.09
#completewith VengevulFateTI
.hs >> Hearth to Crossroads
.use 6948
.bindlocation 380,1
.subzoneskip 380
.dungeon RFK
step << !Mage
#xprate >2.09
#completewith VengevulFateTI
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Thunder Bluff >>Fly to Thunder Bluff
.target Devrak
.zoneskip Thunder Bluff
.dungeon RFK
step << Mage
#xprate >2.09
#completewith VengevulFateTI
.cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleport: Thunder Bluff]
.zoneskip Thunder Bluff
.dungeon RFK
step
#label VengevulFateTI
.goto Thunder Bluff,36.01,59.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auld|r
.turnin 1102 >> Turn in A Vengeful Fate
.target Auld Stonespire
.isQuestComplete 1102
.dungeon RFK
]]);
