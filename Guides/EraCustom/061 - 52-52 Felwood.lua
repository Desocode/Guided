RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 50-60
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 52-52 Felwood
#next 52-53 Feralas
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << Druid
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
.goto Moonglade,44.147,45.225
.fly Teldrassil>> Fly to Teldrassil
.target Silva Fil'naveth
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << !Mage !Druid
.goto Wetlands,4.61,57.26
.zone Darkshore >> Take the boat to Darkshore
step << !Mage !Druid
.goto Darkshore,37.04,44.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaussiy|r
.home >> Set your Hearthstone to Auberdine
.target Innkeeper Shaussiy
step << !Mage !Druid
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Teldrassil >> Fly to Teldrassil
.target Caylais Moonfeather
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 3661 >> Turn in Favored of Elune?
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
>>|cRXP_WARN_Skip this step if you aren't above level 52. You'll do it later|r
.accept 978 >> Accept Moontouched Wildkin
.target Erelas Ambersky
.xp <52,1
step << !Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r upstairs
.turnin 2944 >> Turn in The Super Snapper FX
.accept 2943 >> Accept Return to Troyas
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
step << Hunter
#era
#phase 4-6
.goto Darnassus,42.203,7.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorion|r up stairs
.accept 8151 >> Accept The Hunter's Charm
.target Dorion
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.goto Darnassus,58.718,34.905
.trainer >> Train your class spells
.target Arias'ta Bladesinger
step << !Mage
#som
#phase 3-6
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
step
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r
.turnin 162 >> Turn in Rise of the Silithid
.turnin 4267 >> Turn in Rise of the Silithid
.accept 4493 >> Accept March of the Silithid
.target Gracina Spiritmight
step
.goto Darnassus,39.094,81.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
.turnin 2972 >> Turn in Doling Justice
.target Tyrande Whisperwind
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
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
>>|cRXP_WARN_Skip this step if you aren't above level 52. You'll do it later|r
.accept 978 >> Accept Moontouched Wildkin
.target Erelas Ambersky
.xp <52,1
step << Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r upstairs
.turnin 2944 >> Turn in The Super Snapper FX
.accept 2943 >> Accept Return to Troyas
.target Daryn Lightwind
step << Mage/Druid
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Darkshore >> Fly to Darkshore
.target Vesprystus
step << Mage/Druid
#era/som
.goto Darkshore,37.04,44.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaussiy|r
.home >> Set your Hearthstone to Auberdine
.target Innkeeper Shaussiy
step << Mage
#som
#phase 1-2
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Astranaar >> Fly to Ashenvale
.target Caylais Moonfeather
step
#som
#phase 1-2
#completewith next
.goto Ashenvale,95.57,48.62
.zone Azshara >> Run east to Azshara
step
#som
#phase 1-2
.goto Azshara,11.90,77.57
.fp Azshara>> Get the Azshara flight path
step
#era
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Azshara >> Fly to Azshara
.target Vesprystus
.zoneskip Teldrassil,1
step
#era
.goto Azshara,11.368,78.166
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
.accept 5535 >> Accept Spiritual Unrest
.accept 5536 >> Accept A Land Filled with Hatred
.target Loh'atu
step
#era
#completewith next
.goto Azshara,17.12,69.00,0
.goto Azshara,14.22,72.74,0
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
step
#era
.goto Azshara,19.35,63.02,60,0
.goto Azshara,20.65,60.89
>>Kill |cRXP_ENEMY_Haldarr Satyrs|r, |cRXP_ENEMY_Haldarr Tricksters|r and |cRXP_ENEMY_Haldarr Felsworns|r
.complete 5536,1 
.mob +Haldarr Satyr
.complete 5536,2 
.mob +Haldarr Trickster
.complete 5536,3 
.mob +Haldarr Felsworn
step
#phase 4-6
#era
.goto Azshara,17.12,69.00,60,0
.goto Azshara,14.22,72.74,60,0
.goto Azshara,17.12,69.00
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r
>>|cRXP_WARN_Save an |cRXP_LOOT_Ichor of Undeath|r for your Sunken Temple class quest later if you get one from them, if not you'll get one later|r << Priest
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
.collect 7972,1,8256,1,1 << Priest 
.mob +Highborne Apparition
.mob +Highborne Lichling
step
#era
.goto Azshara,17.12,69.00,60,0
.goto Azshara,14.22,72.74,60,0
.goto Azshara,17.12,69.00
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
step
#era
.goto Azshara,11.368,78.166
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
.turnin 5535 >> Turn in Spiritual Unrest
.turnin 5536 >> Turn in A Land Filled with Hatred
.target Loh'atu
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
.mob +Deadwood Warrior
.complete 8460,2 
.mob +Deadwood Pathfinder
.complete 8460,3 
.mob +Deadwood Gardener
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
.mob +Jadefire Felsworn
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,2 
.mob +Jadefire Shadowstalker
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,3 
.mob +Jadefire Rogue
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,4 
.mob +Xavathras
.goto Felwood,32.23,67.10
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
#era
#phase 4-6
.isQuestComplete 8419
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8419 >> Turn in An Imp's Request
.accept 8421 >> Accept The Wrong Stuff
.target Impsy
step << Warlock
#era
#phase 4-6
.isQuestTurnedIn 8419
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.accept 8421 >> Accept The Wrong Stuff
.target Impsy
step << Warlock
#era
#phase 4-6
.isOnQuest 8421
#completewith FinalOoze
.goto Felwood,40.48,59.07,0
.goto Felwood,39.98,54.76,0
>>Kill |cRXP_ENEMY_Tainted Oozes|r. Loot them for their |cRXP_LOOT_Bloodvenom Essences|r
.complete 8421,2 
.mob Tainted Ooze
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
.mob +Jaedenar Hound
.complete 5155,2 
.mob +Jaedenar Guardian
.complete 5155,3 
.mob +Jaedenar Adept
.complete 5155,4 
.mob +Jaedenar Cultist
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
#era
#phase 4-6
.isOnQuest 8421
.goto Felwood,40.48,59.07,70,0
.goto Felwood,39.98,54.76,0
>>Kill |cRXP_ENEMY_Tainted Oozes|r. Loot them for their |cRXP_LOOT_Bloodvenom Essences|r
.complete 8421,2 
.mob Tainted Ooze
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
.mob +Entropic Beast
.goto Felwood,41.535,43.007,50,0
.goto Felwood,40.91,40.37,50,0
.goto Felwood,42.84,37.62,60,0
.goto Felwood,45.43,40.02,60,0
.goto Felwood,41.10,41.06
.complete 5156,2 
.mob +Entropic Horror
.goto Felwood,41.535,43.007,50,0
.goto Felwood,40.91,40.37,50,0
.goto Felwood,42.84,37.62,60,0
.goto Felwood,45.43,40.02,60,0
.goto Felwood,41.10,41.06
.complete 5156,3 
.goto Felwood,41.535,43.007
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
.isQuestTurnedIn 4421
.goto Felwood,38.98,22.31,70,0
.goto Felwood,43.44,14.47,70,0
.goto Felwood,38.98,22.31,70,0
.goto Felwood,38.98,22.31
>>Kill |cRXP_ENEMY_Jadefire Hellcallers|r, |cRXP_ENEMY_Jadefire Betrayers|r and |cRXP_ENEMY_Jadefire Trickster|r. Loot them for their |cRXP_LOOT_Jadefire Felbinds|r
.complete 4906,1 
.mob +Jadefire Hellcaller
.complete 4906,2 
.mob +Jadefire Betrayer
.complete 4906,3 
.mob +Jadefire Trickster
.complete 939,1 
.mob +Jadefire Hellcaller
.mob +Jadefire Betrayer
.mob +Jadefire Trickster
step << Warlock
#era
#phase 4-6
.isOnQuest 8421
.goto Felwood,49.0,29.6,70,0
.goto Felwood,53.0,22.8,70,0
.goto Felwood,49.4,18.0,70,0
.goto Felwood,46.4,24.6,70,0
.goto Felwood,49.0,29.6,70,0
.goto Felwood,53.0,22.8,70,0
.goto Felwood,49.4,18.0,70,0
.goto Felwood,46.4,24.6
>>Kill |cRXP_ENEMY_Irontree Stompers|r, |cRXP_ENEMY_Irontree Wanderers|r and |cRXP_ENEMY_Withered Protectors|r. Loot them for their |cRXP_LOOT_Rotting Wood|r
.complete 8421,1 
.mob Irontree Stomper
.mob Irontree Wanderer
.mob Withered Protector
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
#hardcoreserver
#era/som
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_Blizzard has adjusted the quest [The Videre Elixir] so it will no longer kill you on Official Hardcore Servers|r
.accept 3909 >> Accept The Videre Elixir
.target Donova Snowden
step
#softcoreserver
#hardcore
#era/som
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_You may safely complete this quest as part of the quest chain for [The Videre Elixir]|r
.accept 3909 >> Accept The Videre Elixir
.target Donova Snowden
step
#softcoreserver
#softcore
#era/som
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.accept 3909 >> Accept The Videre Elixir
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
step << Hunter
#completewith next
.goto Winterspring,60.389,37.917
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azzleby|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Felpaw Ravager|r shortly
.target Azzleby
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
#era
#phase 4-6
.isQuestComplete 8421
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8421 >> Turn in The Wrong Stuff
.target Impsy
step << Warlock
.dungeon ST
#phase 4-6
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.accept 8422 >> Accept Trolls of a Feather
.target Impsy
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
#era/som
.hs >> Hearth to Darkshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.dungeon !Mara
#era/som
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Feathermoon>> Fly to Feathermoon
.target Caylais Moonfeather
step
.dungeon Mara
#era/som
#completewith Turnin978
.isQuestComplete 978
+If you have completed Moontouched Wildkin, fly to Teldrassil now and turn it in, otherwise abaondon the quest. You will complete it later
step
.dungeon Mara
#era/som
.isQuestComplete 978
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Teldrassil >> Fly to Teldrassil
.target Caylais Moonfeather
step
.dungeon Mara
#era/som
#label Turnin978
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
>>|cRXP_WARN_Do not accept the follow up|r
.turnin 978 >> Turn in Moontouched Wildkin
.target Erelas Ambersky
step
.dungeon Mara
#era/som
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
#som
#phase 3-6
#completewith next
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fp Azshara>> Get the Azshara flight path
.target Jarrodenus
step
#som
#phase 3-6
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fly Ratchet>> Fly to Ratchet
.target Jarrodenus
]]);
