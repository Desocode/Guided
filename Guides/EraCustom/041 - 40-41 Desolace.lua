RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 40-50
#season 0,1
#classic
#tbc
#mop
#xprate <1.99
#era/som << !Warlock
<< Alliance !Hunter
#name 40-41 Desolace
#next 41-41 Badlands
step
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Desolace >> Fly to Desolace
.target Baldruc
step
.goto Desolace,66.275,6.554
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lyshaerya|r
.home >> Set your Hearthstone to Desolace
.target Innkeeper Lyshaerya
step
.goto Desolace,66.519,7.907
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.accept 261 >> Accept Down the Scarlet Path
.target Brother Anton
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.accept 1466 >> Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#era/som
#completewith next
.goto Desolace,47.83,61.82,90 >> Travel to |cRXP_FRIENDLY_Hornizz|r at the Kodo Graveyard
step
#era/som
.goto Desolace,47.830,61.825
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
.accept 6134 >> Accept Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
step
.isQuestTurnedIn 1370
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1373 >> Turn in Ongeku
.accept 1374 >> Accept Khan Jehn
.target Uthek the Wise
step << Warlock
.isOnQuest 1799
#completewith ReclaimersDemons
>>Kill |cRXP_ENEMY_Burning Blade Summoners|r. Loot them for their |cRXP_LOOT_Infernal Orb|r
.complete 1799,1 
.mob Burning Blade Summoner
step << Warlock
.isOnQuest 4962
#completewith ReclaimersDemons
.use 12647 >>|cRXP_WARN_Channel the|r |T134129:0|t[Felhas Ruby] |cRXP_WARN_on a |cRXP_ENEMY_Ley Hunter|r, |cRXP_ENEMY_Mana Eater|r or |cRXP_ENEMY_Mage Hunter|r as it is about to die|r
.complete 4962,1 
.mob Ley Hunter
.mob Mana Eater
.mob Mage Hunter
step
#label ReclaimersDemons
.goto Desolace,51.72,83.92,0
>>Kill |cRXP_ENEMY_Ley Hunters|r, |cRXP_ENEMY_Mana Eaters|r and |cRXP_ENEMY_Mage Hunters|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Nether Sisters|r, |cRXP_ENEMY_Nether Maidens|r and |cRXP_ENEMY_Nether Sorceresses|r. Loot them for their |cRXP_LOOT_Wings|r
>>Kill |cRXP_ENEMY_Doomwarder Captains|r. Loot them for their |cRXP_LOOT_Blood|r
>>|cRXP_WARN_Prioritize |cRXP_ENEMY_Doomwarder Captains|r as you may need to wait for their respawns. Regular |cRXP_ENEMY_Doomwarders|r do not drop|r |cRXP_LOOT_Blood|r. You could also ask someone to invite you so you change layers|r
.complete 1466,1 
.mob +Ley Hunter
.mob +Mana Eater
.mob +Mage Hunter
.goto Desolace,50.6,81.6,70,0
.goto Desolace,51.6,85.8,70,0
.goto Desolace,53.6,84.6,70,0
.goto Desolace,53.6,77.6,70,0
.goto Desolace,56.6,75.6,70,0
.goto Desolace,53.0,68.6,70,0
.goto Desolace,53.6,77.6
.complete 1466,2 
.mob +Nether Sister
.mob +Nether Maiden
.mob +Nether Sorceress
.goto Desolace,54.6,78.2,70,0
.goto Desolace,50.6,71.6,70,0
.goto Desolace,48.8,77.6,70,0
.goto Desolace,54.6,78.2,70,0
.goto Desolace,50.6,71.6,70,0
.goto Desolace,48.8,77.6
.complete 1466,3 
.goto Desolace,51.72,83.92
.mob +Doomwarder Captain
step << Warlock
.isOnQuest 1799
#completewith next
>>Kill |cRXP_ENEMY_Burning Blade Summoners|r. Loot them for their |cRXP_LOOT_Infernal Orb|r
.complete 1799,1 
.mob Burning Blade Summoner
step << Warlock
.isOnQuest 4962
.goto Desolace,50.6,81.6,70,0
.goto Desolace,51.6,85.8,70,0
.goto Desolace,53.6,84.6,70,0
.goto Desolace,53.6,77.6,70,0
.goto Desolace,56.6,75.6,70,0
.goto Desolace,53.0,68.6,70,0
.goto Desolace,53.6,77.6
.use 12647 >>|cRXP_WARN_Channel the|r |T134129:0|t[Felhas Ruby] |cRXP_WARN_on a |cRXP_ENEMY_Ley Hunter|r, |cRXP_ENEMY_Mana Eater|r or |cRXP_ENEMY_Mage Hunter|r as it is about to die|r
.complete 4962,1 
.mob Ley Hunter
.mob Mana Eater
.mob Mage Hunter
step << Warlock
.isOnQuest 1799
.goto Desolace,50.4,71.6,70,0
.goto Desolace,49.8,77.8,70,0
.goto Desolace,52.4,83.6,70,0
.goto Desolace,55.0,77.8
>>Kill |cRXP_ENEMY_Burning Blade Summoners|r. Loot them for their |cRXP_LOOT_Infernal Orb|r
.complete 1799,1 
.mob Burning Blade Summoner
step
#completewith next
>>Kill |cRXP_ENEMY_Undead Ravagers|r
.complete 261,1 
.mob Undead Ravager
step
#era/som
.goto Desolace,64.00,91.70
>>|cRXP_WARN_Use the|r |T132763:0|t[Crate of Ghost Magnets] |cRXP_WARN_at the Valley of Bones between the two giant skeleton remains|r
>>Kill |cRXP_ENEMY_Magrami Spectres|r that spawn from it. Loot them for their |cRXP_LOOT_Ghost-o-plasms|r
.complete 6134,1 
.mob Magrami Spectre
step
.goto Desolace,64.30,81.96,70,0
.goto Desolace,64.00,91.70,70,0
.goto Desolace,59.91,89.42,70,0
.goto Desolace,64.00,91.70
>>Kill |cRXP_ENEMY_Undead Ravagers|r
.complete 261,1 
.mob Undead Ravager
step
.isQuestTurnedIn 1370
.goto Desolace,65.94,80.40
>>Kill |cRXP_ENEMY_Khan Jehn|r. Loot him for his |cRXP_LOOT_Head|r
.complete 1374,1 
.mob Khan Jehn
step
#era/som
#softcore
.isQuestComplete 6134
.goto Desolace,47.830,61.825
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
.turnin 6134 >> Turn in Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
step
.isQuestTurnedIn 1370
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1374 >> Turn in Khan Jehn
.target Uthek the Wise
step
#era/som
#hardcore
.isQuestComplete 6134
.goto Desolace,47.830,61.825
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
.turnin 6134 >> Turn in Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
step
#era/som
#optional
.abandon 6134 >> Abandon Ghost-o-plasm Round Up if you did not complete it
step
#softcore
.goto Desolace,41.13,91.72
.zone Feralas >> Head to Feralas
step
#softcore
#completewith end
.goto Feralas,40.6,8.6
>>|cRXP_WARN_Once you get to Feralas, walk along the mountains to the west to avoid aggroing mobs and then die near the stone obelisks|r
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
#softcore
#label end
.goto Feralas,30.238,43.248
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fyldren Moonfeather|r
.fp Feathermoon >> Get the Feathermoon Flight Path
.fly Tanaris >> Fly to Tanaris
.target Fyldren Moonfeather
step
#hardcore
#completewith next
+Travel to Nijel's Point
step
#hardcore
#label end
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
>>|cRXP_WARN_Don't worry about handing in quests yet, you will hearth back to Desolace momentarily|r
.fly Tanaris >> Fly to Tanaris
.target Baritanas Skyriver
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> Travel to The Shimmering Flats
step
#label Martek
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.accept 1106 >> Accept Martek the Exiled
.target Fizzle Brassbolts
step
.isOnQuest 1117
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1117 >> Turn in Rumors for Kravel
.timer 10,Rumors for Kravel RP
.accept 1118 >> Accept Back to Booty Bay
.target Kravel Koalbeard
step
.isQuestTurnedIn 1117
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1118 >> Accept Back to Booty Bay
.target Kravel Koalbeard
step
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1187 >> Turn in Razzeric's Tweaking
.accept 1188 >> Accept Safety First
.target Razzeric
step << Druid
#som
#phase 3-6
#completewith DruidTraining
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <40,1
step << Druid
#era/som
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <40,1
step << Druid
#label DruidTraining
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <40,1
step << Warlock
#som
#phase 3-6
#completewith next
.hs >> Hearth to Desolace
>>|cRXP_BUY_Buy food/water if needed|r
step
#era/som
#completewith next
.hs >> Hearth to Desolace
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << Warlock
#som
#phase 3-6
.goto Desolace,66.519,7.907
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.turnin 261 >> Turn in Down the Scarlet Path
.target Brother Anton
step
#era/som
.goto Desolace,66.519,7.907
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.turnin 261 >> Turn in Down the Scarlet Path
.target Brother Anton
step << Warlock
#som
#phase 3-6
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1466 >> Turn in Reagents for Reclaimers Inc.
.accept 1467 >> Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#era/som
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1466 >> Turn in Reagents for Reclaimers Inc.
.accept 1467 >> Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step << !Mage
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.fly Theramore >> Fly to Theramore
.target Baritanas Skyriver
step << !Mage
.goto Dustwallow Marsh,71.46,56.30
.zone Wetlands >> Take the boat to Menethil Harbor
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << Mage
.goto Ironforge,31.33,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginny Longberry|r
.vendor >> |cRXP_BUY_Buy|r |T134419:0|t[Rune of Teleportations] |cRXP_BUY_if needed|r
.collect 17031,10 
.target Ginny Longberry
step << !Mage
#label end
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
.turnin 1050 >> Turn in Mythology of the Titans
.target Librarian Mae Paledust
]]);
