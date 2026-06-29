RXPGuides.RegisterGuide([[
#version 23
#season 2
#xprate <2.5
#group RestedXP Alliance 50-60
#classic
#tbc
#mop
<< Alliance
#name 52-53 Felwood SoD
#displayname 52-53 Felwood
#next 53-54 UnGoro Crater SoD
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << !Mage
.goto Wetlands,4.61,57.26
.zone Darkshore >> Take the boat to Darkshore
step << !Mage
.goto Darkshore,37.04,44.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaussiy|r
.home >> Set your Hearthstone to Auberdine
.target Innkeeper Shaussiy
step << !Mage
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Teldrassil >> Fly to Teldrassil
.target Caylais Moonfeather
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 3661 >> Turn in Favored of Elune?
.target Erelas Ambersky
.isQuestComplete 3661
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
>>|cRXP_WARN_Skip this step if you aren't above level 52. You'll do it later|r
.accept 978 >> Accept Moontouched Wildkin
.isQuestAvailable 978
.target Erelas Ambersky
.xp <52,1
step << !Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r upstairs
.turnin 2944 >> Turn in The Super Snapper FX
.isQuestComplete 2944
.target Daryn Lightwind
step << !Mage
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step << Mage
#completewith ExitDarn
.zone Darnassus >> Teleport to Darnassus
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Idriana|r, |cRXP_FRIENDLY_Garryeth|r or |cRXP_FRIENDLY_Lairn|r
.bankdeposit 12724,10444,10445 >> Deposit the follwing items:
>>|T134144:0|t[Janice's Parcel] 
>>|T134537:0|t[Standard Issue Flare Gun] 
>>|T132594:0|t[Drawing Kit] 
.target Idriana
.target Garryeth
.target Lairn
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Idriana|r, |cRXP_FRIENDLY_Garryeth|r or |cRXP_FRIENDLY_Lairn|r
.bankwithdraw 9368,11466,8594,11133,11912,11018 >> Withdraw the following items:
>>|T133347:0|t[Jer'kai's Signet Ring] 
>>|T134943:0|t[Raschal's Report] 
>>|T134331:0|t[Insect Analysis Report] 
>>|T135357:0|t[Linken's Training Sword] 
>>|T132763:0|t[Package of Empty Ooze Containers] 
>>|T133849:0|t[Un'Goro Soil] (If you have 20) 
.target Idriana
.target Garryeth
.target Lairn
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.goto Darnassus,58.718,34.905
.trainer >> Train your class spells
.target Arias'ta Bladesinger
step << !Mage
.goto Darnassus,67.424,15.646
.home >> Set your Hearthstone to Darnassus
step << Priest
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.trainer >> Train your class spells
.target Syurna
step << Druid
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.trainer >> Train your class spells
.target Mathrengyl Bearwalker
step
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r
.turnin 162 >> Turn in Rise of the Silithid
.turnin 4267 >> Turn in Rise of the Silithid
.accept 4493 >> Accept March of the Silithid
.target Gracina Spiritmight
.isQuestComplete 162
step
.goto Darnassus,39.094,81.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
.turnin 2972 >> Turn in Doling Justice
.target Tyrande Whisperwind
.isQuestComplete 2972
step
#optional
.goto Darnassus,67.427,15.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Saelienne|r
.accept 3763 >> Accept Assisting Arch Druid Staghelm
.itemcount 11018,20 
.target Innkeeper Saelienne
step
#optional
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 3763 >> Turn in Assisting Arch Druid Staghelm
.itemcount 11018,20 
.target Arch Druid Fandral Staghelm
step
#optional
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.accept 3764 >> Accept Un'Goro Soil
.itemcount 11018,20 
.target Arch Druid Fandral Staghelm
step
#optional
.goto Darnassus,31.485,8.237
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenal|r
.turnin 3764 >> Turn in Un'Goro Soil
.itemcount 11018,20 
.target Jenal
step << Priest
#era
#phase 4-6
#ah
#xprate <2.5
.goto Darnassus,56.245,54.039,-1
.goto Darnassus,56.374,51.820,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
>>|cRXP_BUY_Buy a|r |T134797:0|t[Ichor of Undeath] |cRXP_BUY_from the Auction House. You will need this later for your Sunken Temple class quest|r
>>|cRXP_WARN_Skip this step if you can't acquire one|r
.collect 7972,1,8256,1 
.target Auctioneer Tolon
.target Auctioneer Golothas
step << Warlock
#era
#phase 4-6
#ah
#xprate <2.5
.goto Darnassus,56.245,54.039,-1
.goto Darnassus,56.374,51.820,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
>>Buy the following items for a instant turn in at Felwood shortly. Skip this step if you wish to not buy any
>>|T132888:0|t[Felcloth]
.collect 14256,1,8419,1 
.target Auctioneer Tolon
.target Auctioneer Golothas
step
#label ExitDarn
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal to Rut'theran Village
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 3661 >> Turn in Favored of Elune?
.target Erelas Ambersky
.isQuestComplete 3661
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
>>|cRXP_WARN_Skip this step if you aren't above level 52. You'll do it later|r
.accept 978 >> Accept Moontouched Wildkin
.target Erelas Ambersky
.isQuestAvailable 978
.xp <52,1
step << Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r upstairs
.turnin 2944 >> Turn in The Super Snapper FX
.isQuestAvailable 978
.target Daryn Lightwind
step
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
>>|cRXP_WARN_Head to Felwood, you will have to run there if you don't have either of the Azshara or Ashenvale flight paths|r
.fly Darkshore >> Fly to Azshara or Ashenvale if you have either of those flight paths. If not then fly to Darkshore and run towards Felwood
.target Vesprystus
step
#completewith next
.goto Ashenvale,55.97,31.97,0
.goto Felwood,54.14,86.83
.zone Felwood >> Travel to Felwood
step
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
.accept 4101 >> Accept Cleansing Felwood
.target Arathandris Silversky
step
.goto Felwood,50.927,85.005
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
.accept 8460 >> Accept Timbermaw Ally
.target Grazle
step
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
>>Kill |cRXP_ENEMY_Deadwood Warriors|r, |cRXP_ENEMY_Deadwood Pathfinders|r and |cRXP_ENEMY_Deadwood Gardeners|r
.complete 8460,1 
.complete 8460,2 
.complete 8460,3 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,50.927,85.005
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
.turnin 8460 >> Turn in Timbermaw Ally
.accept 8462 >> Accept Speak to Nafien
.target Grazle
step
#era
#completewith RepCheck
.goto Felwood,46.68,88.03,0
.goto Felwood,48.22,93.81,0
.reputation 576,unfriendly
>>Grinding reputation to Unfriendly can be a wise choice as this will make the Furbolgs in the northern tunnel not aggressive towards you. You can also do this later up north but they are higher level
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.accept 5155 >> Accept Forces of Jaedenar
.goto Felwood,51.21,82.10
.target Greta Mosshoof
step
.goto Felwood,50.889,81.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
.accept 5156 >> Accept Verifying the Corruption
.target Taronn Redfeather
step
#label RepCheck
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.accept 4421 >> Accept The Corruption of the Jadefire
.goto Felwood,51.350,81.511
.target Eridan Bluewind
step
>>Kill |cRXP_ENEMY_Jadefire Felsworns|r, |cRXP_ENEMY_Jadefire Shadowstalkers|r, |cRXP_ENEMY_Jadefire Rogues|r and |cRXP_ENEMY_Xavathras|r
.complete 4421,1 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,2 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,3 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,4 
.goto Felwood,32.23,67.10
.mob Jadefire Felsworn
.mob Jadefire Shadowstalker
.mob Jadefire Rogue
.mob Xavathras
step << Warlock
#era
#phase 4-6
.isOnQuest 8419
.goto Felwood,43.27,84.98,45,0
.goto Felwood,43.41,88.13,70,0
.goto Felwood,39.45,84.55
>>Kill |cRXP_ENEMY_Jadefire Satyrs|r and |cRXP_ENEMY_Jadefire Felsworns|r. Loot them for a Felcloth
.collect 14256,1,8419,1 
.mob Jadefire Satyr
.mob Jadefire Felsworn
step
#completewith next
.use 11912 >> |cRXP_WARN_Open the|r |T132763:0|t[Package of Empty Ooze Containers]
.collect 11914,6 
.collect 11948,6 
step
.goto Felwood,40.77,66.86
>>Kill |cRXP_ENEMY_Cursed Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Cursed Ooze Jars] |cRXP_WARN_on their corpses|r
.complete 4512,1 
.use 11912 
.use 11914 
.mob Cursed Ooze
step << Warlock
#phase 4-6
.isQuestComplete 8419
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8419 >> Turn in An Imp's Request
.accept 8421 >> Accept The Wrong Stuff
.target Impsy
.dungeon ST
step << Warlock
#phase 4-6
.isQuestTurnedIn 8419
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.accept 8421 >> Accept The Wrong Stuff
.dungeon ST
.target Impsy
step << Warlock
#phase 4-6
.isOnQuest 8421
#completewith FinalOoze
.goto Felwood,40.48,59.07,0
.goto Felwood,39.98,54.76,0
>>Kill |cRXP_ENEMY_Tainted Oozes|r. Loot them for their |cRXP_LOOT_Bloodvenom Essences|r
.complete 8421,2 
.mob Tainted Ooze
.dungeon ST
step
#completewith next
.goto Felwood,40.48,59.07,0
.goto Felwood,39.98,54.76,0
>>Kill |cRXP_ENEMY_Tainted Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Tainted Ooze Jars] |cRXP_WARN_on their corpses|r
.use 11948 
.complete 4512,2 
.mob Tainted Ooze
step
.goto Felwood,38.55,59.14,50,0
.goto Felwood,36.49,61.40,60,0
.goto Felwood,35.01,59.83,60,0
.goto Felwood,36.49,61.40,60,0
.goto Felwood,38.55,59.14,60,0
.goto Felwood,36.49,61.40
>>Kill |cRXP_ENEMY_Jaedenar Hounds|r, |cRXP_ENEMY_Jaedenar Guardians|r, |cRXP_ENEMY_Jaedenar Adepts|r and |cRXP_ENEMY_Jaedenar Cultists|r
.complete 5155,1 
.complete 5155,2 
.complete 5155,3 
.complete 5155,4 
.mob Jaedenar Hound
.mob Jaedenar Guardian
.mob Jaedenar Adept
.mob Jaedenar Cultist
step
#label FinalOoze
.goto Felwood,40.48,59.07,70,0
.goto Felwood,39.98,54.76,0
>>Kill |cRXP_ENEMY_Tainted Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Tainted Ooze Jars] |cRXP_WARN_on their corpses|r
.use 11948 
.complete 4512,2 
.mob Tainted Ooze
step << Warlock
#phase 4-6
.isOnQuest 8421
.goto Felwood,40.48,59.07,70,0
.goto Felwood,39.98,54.76,0
>>Kill |cRXP_ENEMY_Tainted Oozes|r. Loot them for their |cRXP_LOOT_Bloodvenom Essences|r
.complete 8421,2 
.mob Tainted Ooze
.dungeon ST
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5155 >> Turn in Forces of Jaedenar
.accept 5157 >> Accept Collection of the Corrupt Water
.target Greta Mosshoof
step
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4421 >> Turn in The Corruption of the Jadefire
.accept 4906 >> Accept Further Corruption
.target Eridan Bluewind
step
.goto Felwood,50.889,81.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
.accept 5156 >> Accept Verifying the Corruption
.target Taronn Redfeather
step
.goto Felwood,38.55,59.14,50,0
.goto Felwood,35.173,59.778
.use 12922 >>|cRXP_WARN_Use the|r |T132788:0|t[Empty Canteen] |cRXP_WARN_at the Moon Well in the center of Jaedenar|r
.complete 5157,1 
step
>>Kill |cRXP_ENEMY_Entropic Beasts|r and |cRXP_ENEMY_Entropic Horrors|r
.complete 5156,1 
.goto Felwood,41.535,43.007,50,0
.goto Felwood,40.91,40.37,50,0
.goto Felwood,42.84,37.62,60,0
.goto Felwood,45.43,40.02,60,0
.goto Felwood,41.10,41.06
.complete 5156,2 
.goto Felwood,41.535,43.007,50,0
.goto Felwood,40.91,40.37,50,0
.goto Felwood,42.84,37.62,60,0
.goto Felwood,45.43,40.02,60,0
.goto Felwood,41.10,41.06
.complete 5156,3 
.goto Felwood,41.535,43.007
.mob Entropic Beast
.mob Entropic Horror
step << Druid
#season 2
#sticky
#label Wisp
#completewith JadefireTwo
.train 439767,1
#loop
.goto Felwood,42,15,70,0
.goto Felwood,42,19,70,0
.goto Felwood,42,15,0
.goto Felwood,42,19,0
>>|cRXP_WARN_Talk to a|r |cRXP_FRIENDLY_Vengeful Wisp|r |cRXP_WARN_in northern Felwood, then follow it through Jadefire Run and kill any |cRXP_ENEMY_Satyrs|r it runs through|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Vengeful Wisp|r has multiple spawn locations. If you see another Druid already with the |cRXP_FRIENDLY_Vengeful Wisp|r, you can help them and still receive credit|r
>>Once completed, the |cRXP_FRIENDLY_Vengeful Wisp|r will drop the |cRXP_PICK_Gift of the Wisp|r on the ground. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the World Tree|r]
>>|cRXP_WARN_This rune is purely for healing but can be easily acquired while doing the satyr quest here, feel free to skip doing this if you are not interested in getting it|r
.collect 227746,1
.unitscan Vengeful Wisp
step << Druid
#season 2
#sticky
#requires Wisp
#completewith JadefireTwo
.itemcount 227746,1
.use 227746
.train 439767 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the World Tree|r] |cRXP_WARN_to train|r |T132145:0|t[Tree of Life]
step
.isQuestTurnedIn 4421
.goto Felwood,41.58,19.19,90,0
.goto Felwood,38.98,22.31
>>Kill |cRXP_ENEMY_Xavaric|r. Loot him for the |T133942:0|t[|cRXP_LOOT_Flute of Xavaric|r]
>>|cRXP_WARN_Use the |T133942:0|t[|cRXP_LOOT_Flute of Xavaric|r] to start the quest|r
.complete 4906,4 
.collect 11668,1,939,1 
.accept 939 >> Accept Flute of Xavaric
.use 11668 
.mob Xavaric
step
#label JadefireTwo
.isQuestTurnedIn 4421
.goto Felwood,38.98,22.31,70,0
.goto Felwood,43.44,14.47,70,0
.goto Felwood,38.98,22.31,70,0
.goto Felwood,38.98,22.31
>>Kill |cRXP_ENEMY_Jadefire Hellcallers|r, |cRXP_ENEMY_Jadefire Betrayers|r and |cRXP_ENEMY_Jadefire Trickster|r. Loot them for their |cRXP_LOOT_Jadefire Felbinds|r
.complete 4906,1 
.complete 4906,2 
.complete 4906,3 
.complete 939,1 
.mob Jadefire Hellcaller slain (8)
.mob Jadefire Betrayer slain (8)
.mob Jadefire Trickster slain (8)
step
.goto Felwood,57.30,17.79
>>Kill |cRXP_ENEMY_Warpwood Moss Flayers|r and |cRXP_ENEMY_Warpwood Shredders|r. Loot them for their |cRXP_LOOT_Blood Ambers|r
.complete 4101,1 
.mob Warpwood Moss Flayer
.mob Warpwood Shredder
step
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishellena|r
.fp Felwood>> Get the Felwood Flight Path
.target Mishellena
step
.goto Felwood,64.768,8.129
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8462 >> Turn in Speak to Nafien
.target Nafien
step
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Winterspring,27.76,34.59
.zone Winterspring >> Travel to Winterspring via Timbermaw Hold
>>|cRXP_WARN_If you are not Unfriendly with Timbermaw Hold, |cRXP_ENEMY_Furbolgs|r will attack you|r
step
.isOnQuest 3908
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 3908 >> Turn in It's a Secret to Everybody
.timer 36,It's a Secret to Everybody RP
.target Donova Snowden
step
.isOnQuest 978
.goto Winterspring,32.8,44.3,70,0
.goto Winterspring,37.4,44.2,70,0
.goto Winterspring,40.5,37.5,70,0
.goto Winterspring,43.6,42.6,70,0
.goto Winterspring,45.9,41.6,70,0
.goto Winterspring,47.9,45.1,70,0
.goto Winterspring,50.5,38.0,70,0
.goto Winterspring,60.6,33.7
>>Loot |cRXP_LOOT_Moontouched Feathers|r on the ground
.complete 978,1
step
#softcore
.deathskip >> Die and respawn at the Spirit Healer in Everlook
.target Spirit Healer
step << Rogue
#season 2
.train 436609,1
.goto Winterspring,67.7,35.4
>>Open the |cRXP_PICK_Wooden Chest|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Knives|r]
>>|cRXP_WARN_While opening the |cRXP_PICK_Wooden Chest|r, choose the following options in this order:|r
>>|cRXP_WARN_Frostsaber|r
>>|cRXP_WARN_Owl|r
>>|cRXP_WARN_Bear|r
>>|cRXP_WARN_Owl|r
.collect 227921,1
step << Rogue
#season 2
.use 227921
.itemcount 227921,1
.train 436609 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Knives|r] |cRXP_WARN_to train|r |T236273:0|t[Fan of Knives]
step << Hunter
#completewith next
.goto Winterspring,60.389,37.917
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azzleby|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Felpaw Ravager|r shortly
.target Azzleby
step << Druid
#season 2
.goto Winterspring,49.0,8.0,50 >> Head north to the Frostsaber Rock
.train 453703,1
step << Druid
#season 2
.goto Winterspring,49.0,8.0
>>|cRXP_WARN_Look for a red book in the marked location. It might be guarded by two level 55-56|r |cRXP_ENEMY_Frostsabers|r |cRXP_WARN_Loot it for the rune|r
.collect 226419,1 
.train 453703,1
step << Druid
#season 2
#completewith next
.train 453703 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Feral Combat Specialization|r] to train |T132116:0|t[Feral Combat Specialization]
.itemcount 226419,1
.use 226419
.train 453703,1
step << Druid
#softcore
.deathskip >> Die and respawn at the Spirit Healer in Everlook
.target Spirit Healer
step
.goto Winterspring,62.334,36.609
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maethrya|r
.fp Winterspring >> Get the Winterspring Flight Path
.fly Felwood >> Fly to Felwood
.target Maethrya
step << Hunter
.goto Felwood,62.19,17.11
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Felpaw Ravager|r to tame it|r 
.train 17267 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 7)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Felpaw Ravager
step
#softcore
#completewith next
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step << Hunter
.goto Felwood,51.22,29.61,70,0
.goto Felwood,49.66,34.65,70,0
.goto Felwood,39.23,36.84,70,0
.goto Felwood,38.38,41.71,70,0
.goto Felwood,38.56,50.18
>>|cRXP_WARN_Abandon your current|r |cRXP_FRIENDLY_Felpaw Ravager|r
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Ironbeak Hunter|r or |cRXP_ENEMY_Angerclaw Mauler|r to tame it|r 
.train 2977 >>|cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 7)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Ironbeak Hunter
.mob Angerclaw Mauler
step << Warlock
#phase 4-6
.isQuestComplete 8421
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8421 >> Turn in The Wrong Stuff
.accept 8422 >> Accept Trolls of a Feather
.target Impsy
.dungeon ST
step << Warlock
#phase 4-6
#optional
.isQuestTurnedIn 8421
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.accept 8422 >> Accept Trolls of a Feather
.target Impsy
.dungeon ST
step
#softcore
#completewith next
.goto Felwood,40.84,66.78
>>|cRXP_WARN_Head south to the slime pools and die at the arrow location|r
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
#softcore
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
.turnin 4101 >> Turn in Cleansing Felwood
.target Arathandris Silversky
step
#softcore
.isQuestTurnedIn 4101
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
>>|cRXP_WARN_Select the option:|r "I need a Cenarion beacon."
.collect 11511,1 
.target Arathandris Silversky
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5157 >> Turn in Collection of the Corrupt Water
.accept 5158 >> Accept Seeking Spiritual Aid
.target Greta Mosshoof
step
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4906 >> Turn in Further Corruption
.turnin 939 >> Turn in Flute of Xavaric
.accept 4441 >> Accept Felbound Ancients
.target Eridan Bluewind
step
.goto Felwood,50.889,81.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
.turnin 5156 >> Turn in Verifying the Corruption
.target Taronn Redfeather
step
#hardcore
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
.turnin 4101 >> Turn in Cleansing Felwood
.target Arathandris Silversky
step
#hardcore
.isQuestTurnedIn 4101
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
>>|cRXP_WARN_Select the option:|r "I need a Cenarion beacon."
.collect 11511,1 
.target Arathandris Silversky
step
>>|cRXP_WARN_Skip this step if you already have Azshara flight path|r
.goto Felwood,55.3,95.6
.zone Ashenvale >> Head south to Ashenvale
step
>>|cRXP_WARN_Skip this step if you already have Azshara flight path|r
.goto Azshara,10.5,75.0
.zone Azshara >> Head east to Azshara
step
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fp Azshara>> Get the Azshara flight path
.target Jarrodenus
step
.dungeon Mara
#completewith Turnin978
.isQuestComplete 978
+If you have completed Moontouched Wildkin, fly to Teldrassil now and turn it in, otherwise abaondon the quest. You will complete it later
step
.dungeon Mara
.isQuestTurnedIn 978
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Desolace >> Fly to Desolace
.target Vesprystus
.zoneskip Teldrassil,1
step
.dungeon Mara
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Desolace>> Fly to Desolace
.target Caylais Moonfeather
step 
.dungeon Mara
#optional
.abandon 978 >> Abandon Moontouched Wildkin. You will finish it later
step
.dungeon Mara
.goto Desolace,64.64,9.25,15,0
.goto Desolace,63.827,10.669
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Marandis|r
.accept 7065 >> Accept Corruption of Earth and Seed
.target Keeper Marandis
step
.dungeon Mara
.goto Desolace,66.275,6.554
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lyshaerya|r
.home >> Set your Hearthstone to Desolace
.target Innkeeper Lyshaerya
step
.dungeon Mara
.goto Desolace,68.501,8.880
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talendria|r
.accept 7041 >> Accept Vyletongue Corruption
.target Keeper Marandis
step
.dungeon Mara
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
.accept 7028 >> Accept Twisted Evils
.target Willow
step
.dungeon Mara
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.fly Feathermoon>> Fly to Feathermoon
.target Baritanas Skyriver
step
.dungeon Mara
.goto Feralas,38.82,13.17,0
#completewith StartMara
+Grind |cRXP_ENEMY_Harpies|r in Feralas while you look for a Maraudon group. Head to Desolace and accept The Pariah's Instructions once your group is ready
.mob Northspring Harpy
.mob Northspring Roguefeather
.mob Northspring Slayer
.mob Northspring Windcaller
step
.dungeon Mara
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
.accept 7067 >> Accept The Pariah's Instructions
.target Centaur Pariah
step
.dungeon Mara
#label StartMara
.goto Desolace,29.89,62.44,0
.goto 1414,38.43,57.97
.zone 1414 >> Travel to Maraudon
step
.dungeon Mara
#completewith EnterMaraudon
>>Kill all |cRXP_ENEMY_Monsters|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
>>|cRXP_WARN_This can be completed OUTSIDE and INSIDE of the Instance. Don't attempt to complete this now|r
.complete 7028,1 
.isOnQuest 7028
step
.dungeon Mara
>>Kill |cRXP_ENEMY_The Nameless Prophet|r. Loot it for the |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance. |cRXP_ENEMY_The Nameless Prophets|r may be patrolling|r
.collect 17757,1,7067,1 
.mob The Nameless Prophet
.isOnQuest 7067
step << skip 
.dungeon Mara
#completewith next
>>Kill |cRXP_ENEMY_Shadowshard Smashers|r and |cRXP_ENEMY_Shadowshard Rumblers|r. Loot them for their |cRXP_LOOT_Shadowshard Fragments|r
>>|cRXP_WARN_These are only found in the Purple section outside of the Instance|r
.complete 7070,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7070
step
.dungeon Mara
.goto 1414,38.469,57.287,20,0
.goto 1414,38.380,57.376,30,0
.goto 1414,38.469,57.287
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Gelk|r
>>Kill |cRXP_ENEMY_Gelk|r. Loot him for the |T134104:0|t[|cRXP_LOOT_Gem of the Second Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17762,1,7067,1 
.use 17757 
.mob Spirit of Gelk
.mob Gelk
.isOnQuest 7067
step << skip 
.dungeon Mara
.goto 1414,38.13,56.90,60,0
.goto 1414,28.76,56.96,60,0
.goto 1414,38.13,56.90
>>Kill |cRXP_ENEMY_Shadowshard Smashers|r and |cRXP_ENEMY_Shadowshard Rumblers|r. Loot them for their |cRXP_LOOT_Shadowshard Fragments|r
>>|cRXP_WARN_These are only found in the Purple section outside of the Instance|r
.complete 7070,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7070
step
.dungeon Mara
.goto 1414,38.497,57.721
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Kolk|r
>>Kill |cRXP_ENEMY_Kolk|r. Loot him for the |T134129:0|t[|cRXP_LOOT_Gem of the First Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17761,1,7067,1 
.use 17757 
.mob Spirit of Kolk
.mob Kolk
.isOnQuest 7067
step
.dungeon Mara
.goto 1414,38.77,58.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cavindra|r
.accept 7044 >> Accept Legends of Maraudon
.target Cavindra
step
.dungeon Mara
.goto 1414,38.928,58.354
>>|cRXP_WARN_Use the|r |T134865:0|t[Coated Cerulean Vial] |cRXP_WARN_in the Orange pool|r
.complete 7041,2 
.use 17693 
.isOnQuest 7041
step
.dungeon Mara
.goto 1414,39.00,58.32,70,0
.goto 1414,39.13,57.68,60,0
.goto 1414,39.25,57.71,20,0
.goto 1414,39.13,57.68
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Magra|r
>>Kill |cRXP_ENEMY_Magra|r. Loot him for the |T134135:0|t[|cRXP_LOOT_Gem of the Third Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17763,1,7067,1 
.use 17757 
.mob Spirit of Magra
.mob Magra
.isOnQuest 7067
step
.dungeon Mara
#label EnterMaraudon
.goto 1414,39.266,58.205
.subzone 2100,2 >> Enter the Maraudon Instance through the Orange side
step
.dungeon Mara
#completewith CrystalCarving
>>Kill any |cRXP_ENEMY_Monster|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
.complete 7028,1 
.isOnQuest 7028
step
.dungeon Mara
#completewith next
>>|cRXP_WARN_Use the|r |T134804:0|t[Filled Cerulean Vial] |cRXP_WARN_on small flowers/plants inside Orange|r
>>Kill the |cRXP_ENEMY_Noxxious Scions|r that are summoned
.complete 7041,1 
.use 17696 
.isOnQuest 7041
step
.dungeon Mara
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Veng|r
>>Kill |cRXP_ENEMY_Veng|r. Loot him for the |T134116:0|t[|cRXP_LOOT_Gem of the Fifth Khan|r]
>>|cRXP_ENEMY_Veng|r |cRXP_WARN_patrols around INSIDE the Maraudon Orange Instance|r
.collect 17765,1,7067,1 
.use 17757 
.mob Spirit of Veng
.mob Veng
.isOnQuest 7067
step
.dungeon Mara
>>|cRXP_WARN_Use the|r |T134804:0|t[Filled Cerulean Vial] |cRXP_WARN_on small flowers/plants inside Orange|r
>>Kill the |cRXP_ENEMY_Noxxious Scions|r that are summoned
.complete 7041,1 
.use 17696 
.isOnQuest 7041
step
.dungeon Mara
>>Kill |cRXP_ENEMY_Noxxion|r. Loot him for the |cRXP_LOOT_Celebrian Rod|r
>>Kill |cRXP_ENEMY_Lord Vyletongue|r. Loot him for the |cRXP_LOOT_Celebrian Diamond|r
>>|cRXP_ENEMY_Noxxion|r |cRXP_WARN_is in the Orange section and |cRXP_ENEMY_Lord Vyletongue|r in the Purple|r
.complete 7044,2 
.complete 7044,1 
.isOnQuest 7044
step
.dungeon Mara
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Maraudos|r
>>Kill |cRXP_ENEMY_Maraudos|r. Loot him for the |T134132:0|t[|cRXP_LOOT_Gem of the Fourth Khan|r]
>>|cRXP_ENEMY_Maraudos|r |cRXP_WARN_patrols around INSIDE the Maraudon Purple Instance|r
.collect 17764,1,7067,1 
.use 17757 
.mob Spirit of Maraudos
.mob Maraudos
.isOnQuest 7067
step
.dungeon Mara
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
step
.dungeon Mara
>>Kill |cRXP_ENEMY_Celebras the Cursed|r then talk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.turnin 7044 >> Turn in Legends of Maraudon
.isQuestComplete 7044
.mob Celebras the Cursed
.target Celebras the Redeemed
step
.dungeon Mara
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.accept 7046 >> Accept The Scepter of Celebras
.timer 14,Incantation of Celebras Spawning RP
.isQuestTurnedIn 7044
.target Celebras the Redeemed
step
.dungeon Mara
.cast 6477 >> Click the |cRXP_PICK_Incantation of Celebras|r on the ground
.timer 34,The Scepter of Celebras RP
.isQuestTurnedIn 7044
step
.dungeon Mara
>>|cRXP_WARN_Wait out the RP|r
.complete 7046,1 
.isQuestTurnedIn 7044
step
.dungeon Mara
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.turnin 7046 >> Turn in The Scepter of Celebras
.isQuestTurnedIn 7044
.target Celebras the Redeemed
step
.dungeon Mara
>>Kill |cRXP_ENEMY_Princess Theradras|r
.complete 7065,1 
.mob Princess Theradras
.isOnQuest 7065
step
.dungeon Mara
#label CrystalCarving
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaetar's Spirit|r
.accept 7066 >> Accept Seed of Life
.target Zaetar's Spirit
step
.dungeon Mara
>>Kill any |cRXP_ENEMY_Monster|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
>>|cRXP_WARN_This can be completed OUTSIDE and INSIDE of the Instance|r
.complete 7028,1 
.isOnQuest 7028
step << Druid
.dungeon Mara
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
.dungeon Mara
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << Druid
.dungeon Mara
.isOnQuest 7066
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Keeper Remulos|r
.turnin 7066 >> Turn in Seed of Life
.target Keeper Remulos
step
.dungeon Mara
#softcore
.deathskip >> Die inside Maraudon and respawn in Desolace
step
.dungeon Mara
#softcore
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
.turnin 7028 >> Turn in Twisted Evils
.target Willow
.isQuestComplete 7028
step
.dungeon Mara
#softcore
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
.turnin 7067 >> Turn in The Pariah's Instructions
.target Centaur Pariah
.isQuestComplete 7067
step
.dungeon Mara
.hs >> Hearth to Nijel's Point
step
.dungeon Mara
.goto Desolace,64.64,9.15,0
.goto Desolace,63.827,10.669
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Marandis|r
.turnin 7065 >> Turn in Corruption of Earth and Seed
.target Keeper Marandis
.isQuestComplete 7065
step
.dungeon Mara
.goto Desolace,68.501,8.880
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talendria|r
.turnin 7041 >> Turn in Vyletongue Corruption
.target Talendria
.isQuestComplete 7041
step
.dungeon Mara
#softcore
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.fly Feathermoon>> Fly to Feathermoon
.target Baritanas Skyriver
step
.dungeon Mara
#hardcore
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
.turnin 7028 >> Turn in Twisted Evils
.target Willow
.isQuestComplete 7028
step
.dungeon Mara
#hardcore
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
.turnin 7067 >> Turn in The Pariah's Instructions
.target Centaur Pariah
.isQuestComplete 7067
step
.dungeon Mara
#hardcore
#completewith next
.zone Feralas >> Head back to Feralas
step
.dungeon Mara
#softcore
#completewith next
.goto Feralas,38.2,24.2
.deathskip >> Die on the west side of the mountain giant area and respawn at Feathermoon
.target Spirit Healer
step
.dungeon Mara
#hardcore
#completewith next
.goto Feralas,30.2,43.2,300 >> Head back to Feathermoon Stronghold
step
.dungeon Mara
.goto Feralas,30.2,43.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fyldren Moonfeather|r
.fly Ratchet >> Fly to Ratchet
.target Fyldren Moonfeather
step
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fly Ratchet >> Fly to Ratchet
.target Jarrodenus
step
.goto The Barrens,65.827,43.776
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen Waterseer|r
.turnin 5158 >> Turn in Seeking Spiritual Aid
.timer 48,Seeking Spiritual Aid RP
.accept 5159 >> Accept Cleansed Water Returns to Felwood
.target Islen Waterseer
step
.goto The Barrens,62.500,38.546
>>Open |cRXP_PICK_Marvon's Chest|r. Loot it for the |cRXP_LOOT_Stone Circle|r
.complete 3444,1 
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankwithdraw 11568,11569,11570,11830,11018,11114,11831,11116,11184,11185,11186,11188 >> Withdraw the follwing items from your bank:
>>|T133635:0|t[Torwa's Pouch] 
>>|T133743:0|t[A Mangled Journal]
>>All the |T134133:0|t[Power Crystals] if you have any 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankdeposit 11682,11511,11947,11949,12906 >> Deposit the following items into your bank:
>>|T134870:0|t[Eridan's Vial] 
>>|T134249:0|t[Cenarion Beacon] 
>>|T134815:0|t[Filled Cursed Ooze Jar] 
>>|T134857:0|t[Filled Tainted Ooze Jar] 
>>|T134754:0|t[Purified Moonwell Water] 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Tanaris>> Fly to Tanaris
.target Bragok
step
>>Use the |T133743:0|t[Mangled Journal] in your bags to accept the quest
.accept 3884 >> Accept Williden's Journal
.itemcount 11116,1
.use 11116
]]);
