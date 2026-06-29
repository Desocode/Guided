RXPGuides.RegisterGuide([[
#xprate <1.59
#season 0,1
#version 23
#group RestedXP Alliance 20-30
#classic
#tbc
#mop
<< Alliance !Hunter
#name 21-23 Stonetalon/Ashenvale
#next 23-24 Wetlands
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.accept 1033 >> Accept Elune's Tear
step
.goto Ashenvale,46.37,46.38
>>Loot |cRXP_LOOT_Elune's Tear|r on the ground
.complete 1033,1
step
#xprate >1.49
.goto Ashenvale,36.06,36.59,0
.goto Ashenvale,37.00,33.77,0
.goto Ashenvale,35.88,31.90,0
.goto Ashenvale,38.73,36.32,0
.goto Ashenvale,36.06,36.59,60,0
.goto Ashenvale,37.00,33.77,60,0
.goto Ashenvale,35.88,31.90,60,0
.goto Ashenvale,38.73,36.32,60,0
.goto Ashenvale,39.595,36.309
>>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Dal Bloodclaw|r |cRXP_WARN_patrols Thistlefur Village|r
.complete 1054,1
.unitscan Dal Bloodclaw
step
#xprate >1.49
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1054 >> Turn in Culling the Threat
.target Raene Wolfrunner
step
.goto Ashenvale,37.36,51.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
.turnin 1033 >> Turn in Elune's Tear
.timer 17,Elune's Tear RP
.accept 1034 >> Accept The Ruins of Stardust
step
.goto Ashenvale,33.30,67.79
>>Loot the |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
>>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
.complete 1034,1
step
#completewith mountainskip
.goto Ashenvale,31.67,64.24,15 >> Head to the base of the mountain
.goto Ashenvale,31.21,61.60,15 >>Run straight north while climbing the mountain
.subzoneskip 418,1
step
#xprate <1.5
#completewith next
.goto Ashenvale,27.50,60.76,8 >> Climb the hill next to the big tree to the right of the Fire Scar Shrine entrance
>>Jump over the tree root and hug the right to avoid aggroing mobs
step
#xprate <1.5
#softcore
.goto Ashenvale,25.27,60.68
>>Kill |cRXP_ENEMY_Ilkrud Magthrull|r. Loot him for his |cRXP_LOOT_Tome|r
>>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 Voidwalkers. Stop this cast if you're able to|r
>>|cRXP_WARN_Clear an exit path if needed so you can reset them along with the |cRXP_ENEMY_Succubus|r if needed. You may skip this if it's too difficult and do it in the later Ashenvale section|r
.complete 973,1
.mob Ilkrud Magthrull
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therysil|r
.target Therysil
.goto Ashenvale,22.64,51.91
.turnin 945 >> Turn in Therylune's Escape
.isQuestComplete 945
step
#xprate <1.5
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 973 >> Turn in The Tower of Althalaxx
.isQuestComplete 973
step
#label mountainskip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
.target Talen
.goto Ashenvale,14.79,31.29
.accept 1007 >> Accept The Ancient Statuette
step
#completewith nagas
>>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
>>|cRXP_WARN_Don't go out of your way to complete this yet|r
.mob Wrathtail Wave Rider
.mob Wrathtail Sorceress
.complete 1008,1
step
.goto Ashenvale,14.20,20.64
>>Loot the |cRXP_LOOT_Ancient Statuette|r on the ground
.complete 1007,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1007 >> Turn in The Ancient Statuette
.timer 22,The Ancient Statuette RP
.accept 1009 >> Accept Ruuzel
step
#optional
.goto Ashenvale,6.528,13.361
>>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
>>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
>>|cRXP_WARN_If you have any|r |T133717:0|t[Bombs]|cRXP_WARN_/|r[Grenades] |cRXP_WARN_you can also use them to split pull|r |cRXP_ENEMY_Ruuzel|r
>>|cRXP_WARN_You can also use|r |T135857:0|t[Blizzard] |cRXP_WARN_to split pull|r |cRXP_ENEMY_Ruuzel|r << Mage
>>|cRXP_WARN_You can also use|r |T136186:0|t[Rain of Fire] |cRXP_WARN_to split pull|r |cRXP_ENEMY_Ruuzel|r << Warlock
>>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
.link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling"|r
.unitscan Lady Vespia
.mob Ruuzel
.complete 1009,1
.skill engineering,<1,1
step
#label nagas
.goto Ashenvale,6.528,13.361
>>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
>>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
>>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
>>|cRXP_WARN_You can also use|r |T135857:0|t[Blizzard] |cRXP_WARN_to split pull|r |cRXP_ENEMY_Ruuzel|r << Mage
>>|cRXP_WARN_You can also use|r |T136186:0|t[Rain of Fire] |cRXP_WARN_to split pull|r |cRXP_ENEMY_Ruuzel|r << Warlock
.link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling"|r << Mage/Warlock
.unitscan Lady Vespia
.mob Ruuzel
.complete 1009,1
step
.goto Ashenvale,7.00,15.20,0
.goto Ashenvale,14.46,17.15,0
.goto Ashenvale,14.86,21.06,0
.goto Ashenvale,13.13,25.03,0
.goto Ashenvale,10.89,30.03,0
.goto Ashenvale,7.00,15.20,70,0
.goto Ashenvale,14.46,17.15,70,0
.goto Ashenvale,14.86,21.06,70,0
.goto Ashenvale,13.13,25.03,70,0
.goto Ashenvale,10.89,30.03,70,0
.goto Ashenvale,13.13,25.03,70,0
.goto Ashenvale,14.86,21.06,70,0
.goto Ashenvale,14.46,17.15,70,0
>>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
.mob Wrathtail Wave Rider
.mob Wrathtail Sorceress
.mob Wrathtail Myrmidon
.mob Wrathtail Priestess
.mob Wrathtail Razortail
.mob Wrathtail Sea Witch
.complete 1008,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1009 >> Turn in Ruuzel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teronis' Corpse|r
.target Teronis' Corpse
.goto Ashenvale,20.31,42.33
.turnin 991 >> Turn in Raene's Cleansing
.accept 1023 >> Accept Raene's Cleansing
step
.goto Ashenvale,20.41,43.82,50,0
.goto Ashenvale,19.43,42.09,50,0
.goto Ashenvale,21.01,41.61,50,0
.goto Ashenvale,20.31,42.33
>>Kill |cRXP_ENEMY_Saltspittle Murlocs|r. Loot them for the |cRXP_LOOT_Glowing Gem|r
.mob Saltspittle Warrior
.mob Saltspittle Muckdweller
.mob Saltspittle Oracle
.mob Saltspittle Puddlejumper
.complete 1023,1
step << !Warlock
#softcore
#completewith next
.deathskip >> Die at the east side of the lake and respawn at the Spirit Healer
.target Spirit Healer
step << !Warlock
#hardcore
#completewith next
.goto Ashenvale,34.67,48.83
.subzone 415 >> Travel to Astranaar
step << !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.turnin 1034 >> Turn in The Ruins of Stardust
step << !Warlock
#xprate <1.2
.goto Ashenvale,36.99,49.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
.home 415>> Set your Hearthstone to Astranaar
.target Innkeeper Kimlya
step << !Warlock
#xprate <1.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.target Raene Wolfrunner
.goto Ashenvale,36.61,49.58
.turnin 1023 >> Turn in Raene's Cleansing
.accept 1025 >> Accept An Aggressive Defense
step << !Warlock
#xprate >1.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.target Raene Wolfrunner
.goto Ashenvale,36.61,49.58
.turnin 1023 >> Turn in Raene's Cleansing
step << !Warlock
#completewith next
#label Journal
.destroy 5505 >> Destroy |T133741:0|t[Teronis' Journal]. You no longer need it
step << !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.target Shindrell Swiftfire
.goto Ashenvale,34.67,48.83
.turnin 1008 >> Turn in The Zoram Strand
step << !Warlock
#xprate <1.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.target Shindrell Swiftfire
.goto Ashenvale,34.67,48.83
.accept 1134 >> Accept Pridewings of Stonetalon
step << !Warlock
#completewith AbsentMinded
.goto Ashenvale,34.41,47.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Auberdine >> Fly to Darkshore
.target Daelyshia
step << !Warlock
#requires Journal
.goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
.turnin -4730 >> Turn in Beached Sea Creature
.turnin -4731 >> Turn in Beached Sea Turtle
.turnin -4732 >> Turn in Beached Sea Turtle
.turnin -4733 >> Turn in Beached Sea Creature
step << !Warlock
#map Darkshore
.goto Felwood,18.50,19.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
.turnin 1138 >> Turn in Fruit of the Sea
.isQuestComplete 1138
.target Gubber Blump
step << !Warlock
.goto Darkshore,37.70,43.39
.target Sentinel Glynda Nal'Shea
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
.turnin 4740 >> Turn in WANTED: Murkdeep!
.isQuestComplete 4740
step << !Warlock
.goto Darkshore,39.37,43.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
.turnin 995 >> Turn in Escape Through Stealth
.target Terenthis
.isQuestComplete 995
step << !Warlock
.goto 1439,38.325,43.039
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
.turnin 3765 >> Turn in The Corruption Abroad
.target Gershala Nightwhisper
.isOnQuest 3765
step << !Warlock
#label AbsentMinded
.goto Darkshore,37.44,41.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
.turnin 731 >> Turn in The Absent Minded Prospector
.target Archaeologist Hollee
.accept 741 >> Accept The Absent Minded Prospector
.isQuestComplete 731
step << !Warlock
#optional
.goto Darkshore,37.44,41.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
.target Archaeologist Hollee
.accept 741 >> Accept The Absent Minded Prospector
step << NightElf
#completewith next
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Teldrassil >> Fly to Teldrassil
.target Caylais Moonfeather
step << !Warlock !NightElf
#completewith next
.goto Darkshore,32.75,42.21,60 >> Travel to the Auberdine Docks. Wait for the Rut'theran Village boat
step << !Warlock !NightElf
.goto Darkshore,33.168,40.210
.zone Teldrassil >> Take the boat to Rut'theran Village
.zoneskip Darnassus
step << !Warlock !NightElf
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fp Teldrassil >> Get the Rut'theran Village Flight Path
.target Vesprystus
step << !Warlock
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step << NightElf Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
.goto Darnassus,57.56,46.72
.train 2567 >> Train Thrown
.target Ilyenia Moonfire
step << Druid
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 6125 >> Turn in Power over Poison
.trainer >> Train your class spells
.target Mathrengyl Bearwalker
.isOnQuest 6125
step << Druid
#optional
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.trainer >> Train your class spells
.target Mathrengyl Bearwalker
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.goto Darnassus,58.72,34.92
.trainer >> Train your class spells
.target Arias'ta Bladesinger
step << Rogue
>>Enter the Cenarion Enclave
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.goto Darnassus,31.84,16.69,30,0
.goto Darnassus,37.00,21.92
.trainer >> Train your class spells
.target Syurna
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
step << !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
.target Chief Archaeologist Greywhisker
.goto Teldrassil,23.70,64.51
.turnin 741 >> Turn in The Absent Minded Prospector
.accept 942 >> Accept The Absent Minded Prospector
.isOnQuest 741
step << !Warlock
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
.target Chief Archaeologist Greywhisker
.goto Teldrassil,23.70,64.51
.accept 942 >> Accept The Absent Minded Prospector
step << Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
step << !Warlock
.hs >> Hearth to Astranaar
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
step << Warlock
#completewith next
.goto Ashenvale,34.67,48.83
.subzone 415 >> Travel to Astranaar
step << Warlock
#xprate <1.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.target Shindrell Swiftfire
.goto Ashenvale,34.67,48.83
.turnin 1008 >> Turn in The Zoram Strand
.accept 1134 >> Accept Pridewings of Stonetalon
step << Warlock
#xprate >1.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.target Shindrell Swiftfire
.goto Ashenvale,34.67,48.83
.turnin 1008 >> Turn in The Zoram Strand
step << Warlock
.goto Ashenvale,34.849,50.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haljan Oakheart|r
>>|cRXP_BUY_Buy a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_along with 2|r |T135435:0|t[Simple Wood]
>>|cRXP_WARN_Don't skip this step, you'll need this for a quest later|r
.collect 4471,1 
.collect 4470,2 
.target Haljan Oakheart
step << Warlock
#xprate <1.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.target Raene Wolfrunner
.goto Ashenvale,36.61,49.58
.turnin 1023 >> Turn in Raene's Cleansing
.accept 1025 >> Accept An Aggressive Defense
step << Warlock
#xprate >1.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.target Raene Wolfrunner
.goto Ashenvale,36.61,49.58
.turnin 1023 >> Turn in Raene's Cleansing
step << Warlock
.destroy 5505 >> Destroy |T133741:0|t[Teronis' Journal]. You no longer need it
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.turnin 1034 >> Turn in The Ruins of Stardust
step
.dungeon WC
#completewith TravelRatchet
.goto Ashenvale,20.31,42.33,0
.zone The Barrens >> Grind |cRXP_ENEMY_Saltspittle Murlocs|r while looking for a group for The Wailing Caverns. Their location is marked on your map
.mob Saltspittle Warrior
.mob Saltspittle Muckdweller
.mob Saltspittle Oracle
.mob Saltspittle Puddlejumper
step
.dungeon WC
#label TravelRatchet
.goto Ashenvale,69.71,86.87,50,0
.goto The Barrens,48.98,5.42,35,0
.goto The Barrens,49.07,12.80,50,0
.goto The Barrens,53.87,21.52,120,0
.goto The Barrens,59.15,25.48,120,0
.goto The Barrens,63.087,37.607
.subzone 392 >> Travel to Ratchet in The Barrens. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
step
.dungeon WC
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fp Ratchet >> Get the Ratchet Flight Path
.target Bragok
step
.dungeon WC
.goto The Barrens,63.087,37.607
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
.accept 959 >> Accept Trouble at the Docks
.target Crane Operator Bigglefuzz
step << Warlock
.goto The Barrens,49.307,57.095
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takar the Seer|r
.turnin 1716 >> Turn in Devourer of Souls
.target Takar the Seer
.accept 1738 >> Accept Heartswood
.accept 65602 >> Accept What is Love?
.dungeon WC
step
.dungeon WC
#completewith next
.goto The Barrens,46.95,35.44,0
.goto The Barrens,46.95,35.44,20,0
.goto The Barrens,47.01,34.67,15,0
.goto 1414,51.92,55.27,45,0
.goto 1414,51.82,55.56,20 >> Travel to The Wailing Caverns. Ascend the mountain then drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
.accept 1486 >> Accept Deviate Hides
.goto 1414,51.912,55.422 
.target +Nalpak
.accept 1487 >> Accept Deviate Eradication
.goto 1414,51.918,55.444 
.target +Ebru
step
.dungeon WC
#completewith EnterWC
>>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
.complete 1486,1 
.isOnQuest 1486
step
.dungeon WC
.goto 1414,52.04,55.37,20,0
.goto 1414,52.14,55.14,20,0
.goto 1414,51.82,54.85,20,0
.goto 1414,52.04,55.37,20,0
.goto 1414,52.14,55.14,20,0
.goto 1414,51.82,54.85,20,0
.goto 1414,52.04,55.37,20,0
.goto 1414,52.14,55.14,20,0
.goto 1414,51.82,54.85
>>Kill |cRXP_ENEMY_Mad Magglish|r. Loot him for the |cRXP_LOOT_99-Year-Old Port|r
>>|cRXP_ENEMY_Mad Magglish|r |cRXP_WARN_can spawn in a few locations|r
>>|cRXP_WARN_This quest is completed OUTSIDE of Wailing Caverns|r
.complete 959,1 
.isOnQuest 959
.mob Mad Magglish
step
.dungeon WC
#label EnterWC
.goto 1414,52.37,55.20
+Zone into The Wailing Caverns
.zoneskip 1414,1 
step
.dungeon WC
>>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
.complete 1487,1 
.complete 1487,2 
.complete 1487,3 
.complete 1487,4 
.complete 1486,1 
.disablecheckbox
.isOnQuest 1487
.isOnQuest 1486
step
.dungeon WC
>>Kill all types of |cRXP_ENEMY_Deviate|r creatures
.complete 1487,1 
.complete 1487,2 
.complete 1487,3 
.complete 1487,4 
.isOnQuest 1487
step
.dungeon WC
#completewith next
>>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
.complete 1486,1 
.isOnQuest 1486
step
.dungeon WC
>>Kill |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r and |cRXP_ENEMY_Lady Anacondra|r then talk to the |cRXP_FRIENDLY_Disciple of Naralex|r at the start of the instance to start his escort
>>Escort the |cRXP_FRIENDLY_Disciple of Naralex|r through Wailing Caverns and complete the ritual of awakening
>>Kill |cRXP_ENEMY_Mutanus the Devourer|r. Loot him for the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r]
>>|cRXP_WARN_Use the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r] to start the quest|r
.collect 10441,1,6981,1 
.accept 6981 >> Accept The Glowing Shard
.use 10441 
.skipgossip
.target Disciple of Naralex
.mob Mutanus the Devourer
step
.dungeon WC
>>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
.complete 1486,1 
.isOnQuest 1486
step
.dungeon WC
#completewith RatchetTurnin
.goto The Barrens,62.984,37.218
.subzone 392 >> Travel to Ratchet. You will turn in the quests above WC soon
.isOnQuest 6981,959
step
.dungeon WC
.goto The Barrens,62.984,37.218
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
.complete 6981,1 
.skipgossip 1
.target Sputtervalve
.isOnQuest 6981
step
.dungeon WC
#label RatchetTurnin
.goto The Barrens,63.087,37.607
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
.turnin 959 >> Turn in Trouble at the Docks
.target Crane Operator Bigglefuzz
.isQuestComplete 959
step
.dungeon WC
#completewith next
.goto The Barrens,50.11,35.21,35,0
.goto The Barrens,48.60,33.34,35,0
.goto The Barrens,48.184,32.781,15 >> Ascend the steep mountain above The Wailing Caverns. Follow the Arrow
.isQuestComplete 6981
step
.dungeon WC
.goto The Barrens,48.184,32.781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla Sagewind|r
.turnin 6981 >> Turn in The Glowing Shard
.target Falla Sagewind
.isQuestComplete 6981
step
.dungeon WC
#completewith NalpakEbru
.goto 1414,51.92,55.27,45,0
.goto 1414,51.82,55.56,20 >> Drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
.turnin 1486 >> Turn in Deviate Hides
.goto 1414,51.912,55.422 
.target +Nalpak
.turnin 1487 >> Turn in Deviate Eradication
.goto 1414,51.918,55.444 
.target +Ebru
.isQuestComplete 1486
.isQuestComplete 1487
step
.dungeon WC
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
.turnin 1487 >> Turn in Deviate Eradication
.goto 1414,51.918,55.444 
.target Ebru
.isQuestComplete 1487
step
.dungeon WC
#label NalpakEbru
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
.turnin 1486 >> Turn in Deviate Hides
.goto 1414,51.912,55.422 
.target Nalpak
.isQuestComplete 1486
step
.dungeon WC
.hs >> Hearth to Astranaar << !Warlock
.hs >> Hearth to Auberdine << Warlock
step << Warlock
#map Darkshore
.goto Felwood,18.50,19.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
.turnin 1138 >> Turn in Fruit of the Sea
.isQuestComplete 1138
.target Gubber Blump
.dungeon WC
step << Warlock
.goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
.turnin -4730 >> Turn in Beached Sea Creature
.turnin -4731 >> Turn in Beached Sea Turtle
.turnin -4732 >> Turn in Beached Sea Turtle
.turnin -4733 >> Turn in Beached Sea Creature
.dungeon WC
step << Warlock
.goto Darkshore,37.70,43.39
.target Sentinel Glynda Nal'Shea
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
.turnin 4740 >> Turn in WANTED: Murkdeep!
.dungeon WC
step << Warlock
.goto Darkshore,39.37,43.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
.turnin 995 >> Turn in Escape Through Stealth
.target Terenthis
.isQuestComplete 995
.dungeon WC
step << Warlock
.goto 1439,38.325,43.039
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
.turnin 3765 >> Turn in The Corruption Abroad
.target Gershala Nightwhisper
.isOnQuest 3765
.dungeon WC
step << Warlock
.goto Darkshore,37.44,41.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
.turnin 731 >> Turn in The Absent Minded Prospector
.target Archaeologist Hollee
.accept 741 >> Accept The Absent Minded Prospector
.dungeon WC
.isQuestComplete 731
step << Warlock
#optional
.goto Darkshore,37.44,41.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
.target Archaeologist Hollee
.accept 741 >> Accept The Absent Minded Prospector
.dungeon WC
step << Warlock
#completewith next
.goto Darkshore,32.75,42.21,60 >> Travel to the Auberdine Docks. Wait for the Rut'theran Village boat
.dungeon WC
step << Warlock
.goto Darkshore,33.168,40.210
.zone Teldrassil >> Take the boat to Rut'theran Village
.zoneskip Darnassus
.dungeon WC
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
.target Chief Archaeologist Greywhisker
.goto Teldrassil,23.70,64.51
.turnin 741 >> Turn in The Absent Minded Prospector
.accept 942 >> Accept The Absent Minded Prospector
.isOnQuest 741
.dungeon WC
step << Warlock
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
.target Chief Archaeologist Greywhisker
.goto Teldrassil,23.70,64.51
.accept 942 >> Accept The Absent Minded Prospector
.isOnQuest 741
.dungeon WC
step << Warlock
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Travel through the purple portal to Rut'theran Village
.zoneskip Ashenvale
.zoneskip Darkshore
.dungeon WC
step << Warlock
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fp Teldrassil >> Get the Ruth'theran Village Flight Path
.fly Ashenvale >> Fly to Ashenvale
.target Vesprystus
.zoneskip Ashenvale
.dungeon WC
step << Warlock
#xprate >1.49 << Druid
#season 2 << Druid
.goto Ashenvale,42.50,71.70
.zone Stonetalon Mountains >> Travel to Stonetalon Mountains
step << !Warlock
#xprate <1.5 << Druid
.goto Ashenvale,42.50,71.70
.zone Stonetalon Mountains >> Travel to Stonetalon Mountains
step
#xprate <1.2
#sticky
#completewith wyv1
>>Kill |cRXP_ENEMY_Young Pridewings|r. Loot them for their |cRXP_LOOT_Pridewing Venom Sacs|r
.complete 1134,1
.unitscan Young Pridewing
step << Warlock/Druid
#xprate >1.49 << Druid
#season 2 << Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
.target Kaela Shadowspear
.goto Stonetalon Mountains,59.899,66.844
.turnin 1070 >> Turn in On Guard in Stonetalon
.accept 1085 >> Accept On Guard in Stonetalon
step << !Warlock
#xprate <1.5 << Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
.target Kaela Shadowspear
.goto Stonetalon Mountains,59.899,66.844
.turnin 1070 >> Turn in On Guard in Stonetalon
.accept 1085 >> Accept On Guard in Stonetalon
step << Warlock/Druid
#xprate >1.49 << Druid
#season 2 << Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.target Gaxim Rustfizzle
.goto Stonetalon Mountains,59.516,67.146
.turnin 1085 >> Turn in On Guard in Stonetalon
.accept 1071 >> Accept A Gnome's Respite
step << !Warlock
#xprate <1.5 << Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.target Gaxim Rustfizzle
.goto Stonetalon Mountains,59.516,67.146
.turnin 1085 >> Turn in On Guard in Stonetalon
.accept 1071 >> Accept A Gnome's Respite
step << Warlock/Druid
#xprate >1.49 << Druid
#season 2 << Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.goto Stonetalon Mountains,58.989,62.601
.accept 1093 >> Accept Super Reaper 6000
step << !Warlock
#xprate <1.5 << Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.goto Stonetalon Mountains,58.989,62.601
.accept 1093 >> Accept Super Reaper 6000
step << Warlock/Druid
#xprate >1.49 << Druid
#season 2 << Druid
#sticky
#label sr6000
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>>Kill |cRXP_ENEMY_Venture Co. Operators|r. Loot them for the |cRXP_LOOT_Blueprints|r
.complete 1093,1
.unitscan Venture Co. Operator
step << !Warlock
#sticky
#label sr6000
#xprate <1.5 << Druid
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>>Kill |cRXP_ENEMY_Venture Co. Operators|r. Loot them for the |cRXP_LOOT_Blueprints|r
.complete 1093,1
.unitscan Venture Co. Operator
step << Warlock/Druid
#xprate >1.49 << Druid
#season 2 << Druid
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>>Kill |cRXP_ENEMY_Venture Co. Deforesters|r and |cRXP_ENEMY_Venture Co. Loggers|r
.complete 1071,1
.mob +Venture Co. Logger
.complete 1071,2
.mob +Venture Co. Deforester
step << !Warlock
#xprate <1.5 << Druid
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>>Kill |cRXP_ENEMY_Venture Co. Deforesters|r and |cRXP_ENEMY_Venture Co. Loggers|r
.complete 1071,1
.mob +Venture Co. Logger
.complete 1071,2
.mob +Venture Co. Deforester
step << Warlock/Druid
#xprate >1.49 << Druid
#season 2 << Druid
#requires sr6000
.goto Stonetalon Mountains,58.989,62.601
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.turnin 1093 >> Turn in Super Reaper 6000
.accept 1094 >> Accept Further Instructions << Warlock
.dungeon !WC << Warlock
step
#requires sr6000
#xprate <1.5 << Druid
.goto Stonetalon Mountains,58.989,62.601
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.turnin 1093 >> Turn in Super Reaper 6000
.dungeon WC << Warlock
step << Warlock/Druid
#xprate >1.49 << Druid
#season 2 << Druid
#label wyv1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.goto Stonetalon Mountains,59.516,67.146
.turnin 1071 >> Turn in A Gnome's Respite
.accept 1072 >> Accept An Old Colleague
.accept 1075 >> Accept A Scroll from Mauren
.target Gaxim Rustfizzle
step << !Warlock
#label wyv1
#xprate <1.5 << Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.goto Stonetalon Mountains,59.516,67.146
.turnin 1071 >> Turn in A Gnome's Respite
.accept 1072 >> Accept An Old Colleague
.accept 1075 >> Accept A Scroll from Mauren
.target Gaxim Rustfizzle
step
#xprate <1.2
.goto Stonetalon Mountains,54.04,40.09,60,0
.goto Stonetalon Mountains,53.26,36.83,40,0
.goto Stonetalon Mountains,54.56,38.12
>>Kill |cRXP_ENEMY_Pridewing Wyverns|r and |cRXP_ENEMY_Pridewing Consorts|r. Loot them for their |cRXP_LOOT_Pridewing Venom Sacs|r
.mob Pridewing Wyvern
.mob Pridewing Consort
.complete 1134,1
step << Warlock/Druid
#xprate >1.49 << Druid
#season 2 << Druid
#completewith next
.goto Stonetalon Mountains,37.103,8.100,100 >> Travel to Stonetalon Peak
.zoneskip Stonetalon Mountains,1
step << !Warlock
#xprate <1.5 << Druid
#completewith next
.goto Stonetalon Mountains,37.103,8.100,100 >> Travel to Stonetalon Peak
.zoneskip Stonetalon Mountains,1
step << !Warlock
#xprate <1.5 << Druid
.goto Stonetalon Mountains,37.103,8.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
.target Keeper Albagorm
.turnin 1056 >> Turn in Journey to Stonetalon Peak
step << Warlock/Druid
#xprate >1.49 << Druid
#season 2 << Druid
.goto Stonetalon Mountains,37.103,8.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
.target Keeper Albagorm
.turnin 1056 >> Turn in Journey to Stonetalon Peak
step << !Warlock
#xprate <1.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
.target Teloren
.goto Stonetalon Mountains,36.438,7.181
.fp Stonetalon >> Get the Stonetalon Flight Path
.disablecheckbox
.fly Ashenvale >> Fly to Ashenvale
step << !Warlock
#xprate >1.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
.target Teloren
.goto Stonetalon Mountains,36.438,7.181
.fp Stonetalon >> Get the Stonetalon Flight Path
.disablecheckbox
.fly Darkshore >> Fly to Darkshore
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
.target Teloren
.goto Stonetalon Mountains,36.438,7.181
.fp Stonetalon >> Get the Stonetalon Flight Path
step << Warlock
.goto Stonetalon Mountains,35.595,7.351
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illyanie|r
.vendor >> |cRXP_WARN_Vendor trash|r
.target Illyanie
.dungeon !WC
step << Warlock
#hardcore
.goto Stonetalon Mountains,75.466,91.422,0
.goto Stonetalon Mountains,81.292,96.118,0
.goto The Barrens,35.052,27.025
.zone The Barrens >> Travel to The Barrens
.dungeon !WC
step << Warlock
#hardcore
#completewith next
.goto The Barrens,40.358,24.780,150 >> |cRXP_WARN_FOLLOW THE ARROW TO AVOID |cRXP_ENEMY_BARRENS GUARDS|r!|r
.dungeon !WC
step << Warlock
#softcore
#completewith next
>>Ensure you have at least 4 |T134075:0|t[Soul Shards] before dying intentionally, you're about to spirit res 4 times total
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
.dungeon !WC
step << Warlock
#softcore
.goto The Barrens,35.10,27.80
.zone The Barrens >>Run southeast to The Barrens
.dungeon !WC
step << Warlock
#softcore
#completewith next
.goto The Barrens,50.5,32.5,0
.deathskip >> Once you get to The Barrens, Die and respawn at the Crossroads Graveyard
.target Spirit Healer
.dungeon !WC
step << Warlock
.goto The Barrens,49.307,57.095
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takar the Seer|r
.turnin 1716 >> Turn in Devourer of Souls
.target Takar the Seer
.accept 1738 >> Accept Heartswood
.accept 65602 >> Accept What is Love?
.dungeon !WC
step << Warlock
#softcore
#completewith next
.goto The Barrens,56.60,51.60
.deathskip >> Run northeast. When the zone text changes to Raptor Grounds, Die and respawn at Ratchet
>>Do your best to avoid the |cRXP_ENEMY_Quilboars|r
.dungeon !WC
step << Warlock
#completewith next
.goto The Barrens,62.98,37.21,100 >> Travel to Ratchet
.dungeon !WC
step << Warlock
.goto The Barrens,62.984,37.218
.target Sputtervalve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
.turnin 1094 >> Turn in Further Instructions
.isOnQuest 1094
.dungeon !WC
step << Warlock
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fp Ratchet>> Get the Ratchet Flight Path
.target Bragok
.dungeon !WC
step << Warlock
.hs >> Hearth to Darkshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
.dungeon !WC
step << Warlock
#map Darkshore
.goto Felwood,18.50,19.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
.turnin 1138 >> Turn in Fruit of the Sea
.isQuestComplete 1138
.target Gubber Blump
.dungeon !WC
step << Warlock
.goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
.turnin -4730 >> Turn in Beached Sea Creature
.turnin -4731 >> Turn in Beached Sea Turtle
.turnin -4732 >> Turn in Beached Sea Turtle
.turnin -4733 >> Turn in Beached Sea Creature
.dungeon !WC
step << Warlock
.goto Darkshore,37.70,43.39
.target Sentinel Glynda Nal'Shea
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
.turnin 4740 >> Turn in WANTED: Murkdeep!
.dungeon !WC
step << Warlock
.goto Darkshore,39.37,43.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
.turnin 995 >> Turn in Escape Through Stealth
.target Terenthis
.isQuestComplete 995
.dungeon !WC
step << Warlock
.goto 1439,38.325,43.039
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
.turnin 3765 >> Turn in The Corruption Abroad
.target Gershala Nightwhisper
.isOnQuest 3765
.dungeon !WC
step << Warlock
.goto Darkshore,37.44,41.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
.turnin 731 >> Turn in The Absent Minded Prospector
.target Archaeologist Hollee
.accept 741 >> Accept The Absent Minded Prospector
.dungeon !WC
.isQuestComplete 731
step << Warlock
#optional
.goto Darkshore,37.44,41.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
.target Archaeologist Hollee
.accept 741 >> Accept The Absent Minded Prospector
.dungeon !WC
step << Warlock
#completewith next
.goto Darkshore,32.75,42.21,60 >> Travel to the Auberdine Docks. Wait for the Rut'theran Village boat
.dungeon !WC
step << Warlock
.goto Darkshore,33.168,40.210
.zone Teldrassil >> Take the boat to Rut'theran Village
.zoneskip Darnassus
.dungeon !WC
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
.target Chief Archaeologist Greywhisker
.goto Teldrassil,23.70,64.51
.turnin 741 >> Turn in The Absent Minded Prospector
.accept 942 >> Accept The Absent Minded Prospector
.dungeon !WC
.isOnQuest 741
step << Warlock
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
.target Chief Archaeologist Greywhisker
.goto Teldrassil,23.70,64.51
.accept 942 >> Accept The Absent Minded Prospector
.dungeon !WC
step << Warlock
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Travel through the purple portal to Rut'theran Village
.zoneskip Ashenvale
.zoneskip Darkshore
.dungeon !WC
step << Warlock
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fp Teldrassil >> Get the Ruth'theran Village Flight Path
.fly Ashenvale >> Fly to Ashenvale
.target Vesprystus
.zoneskip Ashenvale
.dungeon !WC
step
#xprate <1.2
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.turnin 1134 >> Turn in Pridewings of Stonetalon
step
#xprate <1.5
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.accept 1054 >> Accept Culling the Threat
step
#xprate <1.2
#completewith next
>>Kill a few |cRXP_ENEMY_Foulweald Warriors|r and |cRXP_ENEMY_Foulweald Totemics|r before heading south toward the |cRXP_ENEMY_Water Elementals|r
>>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Foulweald Ursas|r |cRXP_WARN_can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
>>|cRXP_WARN_You will kill the rest after finishing the Elemental Bracers quest|r
.complete 1025,4,5 
.mob +Foulweald Warrior
.goto Ashenvale,50.08,59.94,70,0
.goto Ashenvale,53.75,63.49,70,0
.goto Ashenvale,54.17,61.69,70,0
.goto Ashenvale,50.08,59.94
.complete 1025,3,4 
.mob +Foulweald Totemic
.goto Ashenvale,50.08,59.94,70,0
.goto Ashenvale,53.75,63.49,70,0
.goto Ashenvale,54.17,61.69,70,0
.goto Ashenvale,50.08,59.94
.complete 1025,2 
.disablecheckbox
.complete 1025,1 
.disablecheckbox
.mob Foulweald Ursa
.mob Foulweald Den Watcher
step
#xprate <1.2
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.accept 1016 >> Accept Elemental Bracers
.target Sentinel Velene Starstrike
step
#xprate <1.2
#optional
#completewith next
.cast 7178 >> |cRXP_WARN_Use your|r |T134797:0|t[Elixir of Water Breathing]
.itemcount 5996,1 
.use 5996 
step
#xprate <1.2
.goto Ashenvale,44.78,70.07,60,0
.goto Ashenvale,48.90,70.05,60,0
.goto Ashenvale,51.28,70.51,60,0
.goto Ashenvale,48.90,70.05
>>Kill |cRXP_ENEMY_Befouled Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
>>|cRXP_WARN_The |cRXP_ENEMY_Befouled Water Elementals|r cast|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Pay attention to your breath timer if you dive underwater to kill them|r
.collect 12220,5,1016,1
.mob Befouled Water Elemental
step
#xprate <1.2
.use 5456 >> |cRXP_WARN_Use the|r |T134943:0|t[Divining Scroll] |cRXP_WARN_to create the|r |T134938:0|t[Divined Scroll]
.complete 1016,1 
step
#xprate <1.2
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.turnin 1016 >> Turn in Elemental Bracers
.target Sentinel Velene Starstrike
step
#xprate <1.2
.goto Ashenvale,50.08,59.94,70,0
.goto Ashenvale,53.75,63.49,70,0
.goto Ashenvale,54.17,61.69,70,0
.goto Ashenvale,56.45,63.62,70,0
.goto Ashenvale,50.08,59.94
>>Kill |cRXP_ENEMY_Foulweald Warriors|r, |cRXP_ENEMY_Foulweald Totemics|r, |cRXP_ENEMY_Foulweald Ursas|r and a |cRXP_ENEMY_Foulweald Den Watcher|r
>>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Foulweald Ursas|r |cRXP_WARN_can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
>>The |cRXP_ENEMY_Foulweald Totemics|r share spawns with |cRXP_ENEMY_Foulweald Warriors|r. You may have to backtrack and kill respawns if you weren't lucky with the spawns
.complete 1025,4 
.mob +Foulweald Warrior
.complete 1025,3 
.mob +Foulweald Totemic
.complete 1025,2 
.mob +Foulweald Ursa
.complete 1025,1 
.mob +Foulweald Den Watcher
step
#xprate <1.2
#completewith next
.zone Azshara >> Travel to Azshara
step
#xprate <1.2
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fp Azshara>> Get the Azshara flight path
.fly Ashenvale>> Fly to Ashenvale
.target Jarrodenus
step
#xprate <1.5
#completewith next
.goto Ashenvale,34.69,44.30,30,0
.goto Ashenvale,35.43,41.46,30,0
.goto Ashenvale,36.28,38.48,30,0
.goto Ashenvale,36.83,37.56,30 >> Travel to Thistlefur Village. Follow the Arrow for a shortcut
step
#xprate <1.5
.goto Ashenvale,36.06,36.59,0
.goto Ashenvale,37.00,33.77,0
.goto Ashenvale,35.88,31.90,0
.goto Ashenvale,38.73,36.32,0
.goto Ashenvale,36.06,36.59,60,0
.goto Ashenvale,37.00,33.77,60,0
.goto Ashenvale,35.88,31.90,60,0
.goto Ashenvale,38.73,36.32,60,0
.goto Ashenvale,39.595,36.309
>>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Dal Bloodclaw|r |cRXP_WARN_patrols Thistlefur Village|r
.complete 1054,1
.unitscan Dal Bloodclaw
step << !Warlock
#xprate <1.5
#softcore
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step << Warlock
#completewith next
.goto Ashenvale,26.73,44.95,100,0
.goto Ashenvale,31.50,31.50,40 >> Travel to The Ruins of Ordil'Aran
step << Warlock
.goto Ashenvale,31.50,31.50
>>Loot the |cRXP_LOOT_Heartswood|r giant tree
.complete 1738,1
step << Warlock
.goto Ashenvale,26.78,22.42
>>Loot the |cRXP_LOOT_Unlit Torch|r on the table
.collect 190307,1,65602,1 
step << Warlock
.goto Ashenvale,26.78,22.42
>>|cRXP_WARN_Create a campfire, then use the Unlit Torch on top of it|r
.collect 190308,1,65602,1 
.use 190307
.usespell 818
step << Warlock
.goto Ashenvale,26.61,22.01
>>Use the Burning Torch on the cart outside next to where you looted the torch, then go upstairs and loot the statue
.complete 65602,1 
step << Warlock
#softcore
#completewith end
.goto Ashenvale,24.5,39.1
.deathskip >> Run to the base of the mountain southwest of the big tower and die then respawn back at Astranaar
.target Spirit Healer
step << Warlock
#hardcore
#completewith next
.goto Ashenvale,34.41,47.98,50 >> Travel to Astranaar
step
#xprate <1.2
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1025 >> Turn in An Aggressive Defense
.turnin 1054 >> Turn in Culling the Threat
.target Raene Wolfrunner
step
#xprate <1.5 << !Warlock
#label end
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Darkshore>> Fly to Darkshore
.target Daelyshia
step
.goto Darkshore,32.44,43.71
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the Menethil Harbor boat|r
.zone Wetlands >> Take the boat to Menethil Harbor
]]);
