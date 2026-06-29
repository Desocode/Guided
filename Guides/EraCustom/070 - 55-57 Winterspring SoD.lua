RXPGuides.RegisterGuide([[
#version 23
#season 2
#xprate <2.5
#group RestedXP Alliance 50-60
#classic
#tbc
#mop
<< Alliance
#name 55-57 Winterspring SoD
#displayname 55-57 Winterspring
#next 57-58 Burning Steppes SoD
step
.goto Winterspring,61.348,38.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregor Greystone|r
>>|cRXP_WARN_Do not accept Sister Pamela from|r |cRXP_FRIENDLY_Jessica Redpath|r
.accept 6028 >> Accept The Everlook Report
.accept 6030 >> Accept Duke Nicholas Zverenhoff
.target Gregor Greystone
step << Hunter
.solo
.goto Winterspring,61.919,38.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
.accept 969 >> Accept Luck Be With You
.target Witch Doctor Mau'ari
step
.group
.goto Winterspring,61.919,38.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
.accept 969 >> Accept Luck Be With You
.target Witch Doctor Mau'ari
step
.goto Winterspring,61.455,36.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy Coppergrab|r
.bankdeposit 15788,15790,11511,12891,12896,12897,12898,12899 >> Deposit the following items into your bank:
>>|T134942:0|t[Everlook Report] 
>>|T133737:0|t[Studies in Spirit Speaking] 
>>|T134249:0|t[Cenarion Beacon] 
>>|T134708:0|t[Jaron's Pick] 
>>All 4 |T135152:0|t[Relic Fragments] 
.target Izzy Coppergrab
step
#completewith next
>>Kill the |cRXP_ENEMY_Winterfall Runners|r. Loot them for their |cRXP_LOOT_Winterfall Crate|r
>>|cRXP_WARN_Their spawn point is on the west side of Winterspring near the Timbermaw tunnel. Their patrol route is marked on your map|r
>>|cRXP_WARN_Use|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find them|r << Hunter
>>|cRXP_WARN_If you don't find them now you will do it later|r
.complete 5087,1 
.line Winterspring,28.07,35.29,28.02,36.46,28.32,37.14,28.47,37.92,28.53,39.39,28.80,39.76,29.32,40.86,29.91,42.27,30.44,42.54,31.65,42.44,32.60,42.17,33.59,41.99,34.67,41.91,36.04,42.16,38.21,41.98,40.23,40.75,42.32,39.97,44.29,39.90,46.45,39.66,48.38,38.86,49.19,38.15,49.35,37.79,49.65,37.59,50.57,36.63,51.67,36.21,52.25,35.75,52.75,35.30,53.46,34.27,53.75,33.38,53.93,32.50,53.97,31.32,54.60,30.91,55.51,30.05,57.14,29.72,58.07,28.93,58.74,27.94,59.01,26.99,59.24,26.48,60.37,25.02,60.62,24.75,61.11,24.44,61.29,24.35,61.92,23.82,62.34,23.92,62.37,24.95,62.21,25.30,62.60,25.99,63.04,26.55,63.50,27.81,63.95,28.34,64.12,28.94,64.10,30.84,64.21,31.40,64.97,33.08,65.44,33.48,66.44,33.71,66.63,33.93,66.80,34.47,66.87,34.87,66.97,35.22,67.53,37.01,68.12,37.76,68.65,38.20,68.76,38.13,68.94,37.84,69.29,38.40,69.61,38.29
.unitscan Winterfall Runner
step
#completewith next
.subzone 2248 >> Travel south to Dun Mandarr
step
.goto Winterspring,58.991,59.784
>>Click the |cRXP_PICK_Damaged Crate|r on the ground
.turnin 4861 >> Turn in Enraged Wildkin
.accept 4863 >> Accept Enraged Wildkin
step << Mage/Hunter
#season 2
.train 453697,1
.goto Winterspring,59.0,59.0
>>|cRXP_WARN_Look for a red book in the marked location. It might be guarded by a couple level 57-58|r |cRXP_ENEMY_Owlbeasts|r |cRXP_WARN_Loot it for the rune|r
.collect 226415,1 
step << Mage/Hunter
#season 2
.train 453697,1
#completewith next
.train 453697 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frost Specialization|r] to train |T132852:0|t[Frost Specialization]
.itemcount 226415,1
.use 226415
step
.goto Winterspring,61.439,60.691
>>Click on |cRXP_PICK_Jaron's Wagon|r
.turnin 4863 >> Turn in Enraged Wildkin
.accept 4864 >> Accept Enraged Wildkin
step
.goto Winterspring,61.398,60.728
>>Loot |cRXP_LOOT_Jaron's Supplies|r on the ground
.complete 4864,1 
step
#completewith next << !Hunter
#completewith EscortRanshalla << Hunter
>>Kill |cRXP_ENEMY_Crazed Owlbeasts|r, |cRXP_ENEMY_Moontouched Owlbeasts|r and |cRXP_ENEMY_Berserk Owlbeasts|r. Loot them for a |cRXP_LOOT_Blue-feathered Amulet|r
.complete 4864,2 
.mob Crazed Owlbeast
.mob Moontouched Owlbeast
.mob Berserk Owlbeast
step << !Hunter
.isOnQuest 979
.goto Winterspring,63.074,59.482
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.turnin 979 >> Turn in Find Ranshalla
>>|cRXP_WARN_Skip the follow up escort quest|r
.target Ranshalla
step << Hunter
#completewith next
+|cRXP_WARN_Kill some of the |cRXP_ENEMY_Owlkins|r before accepting the escort|r
step << Hunter
.goto Winterspring,63.074,59.482
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.turnin 979 >> Turn in Find Ranshalla
.accept 4901,1 >> Accept Guardians of the Altar
>>|cRXP_WARN_Guardians of the Altar will begin an escort quest. If you're in a party ensure everyone has turned in Find Ranshalla first|r
.target Ranshalla
step << Hunter
#label EscortRanshalla
.goto Winterspring,64.59,61.06,20,0
.goto Winterspring,65.82,58.76,20,0
.goto Winterspring,66.48,60.02,20,0
.goto Winterspring,66.25,61.50,20,0
.goto Winterspring,65.56,64.57,20,0
.goto Winterspring,64.797,63.784
>>Escort |cRXP_FRIENDLY_Ranshalla|r through Owl Wing Thicket
>>Click the |cRXP_PICK_Fire of Elune|r torches inside the caves when |cRXP_FRIENDLY_Ranshalla|r begins channelling her spell on them, and then the |cRXP_PICK_Altar of Elune|r at the end
.complete 4901,1
.target Ranshalla
step
.goto Winterspring,63.86,59.39,70,0
.goto Winterspring,65.52,60.29,70,0
.goto Winterspring,65.05,63.03,70,0
.goto Winterspring,65.52,60.29
>>Kill |cRXP_ENEMY_Crazed Owlbeasts|r, |cRXP_ENEMY_Moontouched Owlbeasts|r and |cRXP_ENEMY_Berserk Owlbeasts|r. Loot them for a |cRXP_LOOT_Blue-feathered Amulet|r
.complete 4864,2 
.mob Crazed Owlbeast
.mob Moontouched Owlbeast
.mob Berserk Owlbeast
step
.isOnQuest 969
.goto Winterspring,59.06,68.33
>>Loot the |cRXP_LOOT_Frostmaul Shards|r on the ground scattered around Frostwhisper Gorge
>>|cRXP_WARN_This quest can be difficult. Look for a party if required or skip this step|r
.complete 969,1 
step
.goto Winterspring,59.88,73.95
>>Explore Darkwhisper Gorge. You can do this without agroing any of the nearby Elites
.complete 4842,1 
step
#hardcore
.hs >> Hearth to Everlook
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip Winterspring,1
step
#completewith next
#softcore
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
.isQuestComplete 969
.goto Winterspring,61.919,38.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
.turnin 969 >> Turn in Luck Be With You
.target Witch Doctor Mau'ari
step
#completewith next
.goto Winterspring,52.139,30.429
.subzone 2253 >> Travel to Starfall Village
step
.goto Winterspring,52.139,30.429
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaron Stoneshaper|r
.turnin 4864 >> Turn in Enraged Wildkin
.target Jaron Stoneshaper
step
>>Kill the |cRXP_ENEMY_Winterfall Runners|r. Loot them for their |cRXP_LOOT_Winterfall Crate|r
>>|cRXP_WARN_Their spawn point is on the west side of Winterspring near the Timbermaw tunnel. Their patrol route is marked on your map|r
>>|cRXP_WARN_Use|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find them|r << Hunter
.complete 5087,1 
.line Winterspring,28.07,35.29,28.02,36.46,28.32,37.14,28.47,37.92,28.53,39.39,28.80,39.76,29.32,40.86,29.91,42.27,30.44,42.54,31.65,42.44,32.60,42.17,33.59,41.99,34.67,41.91,36.04,42.16,38.21,41.98,40.23,40.75,42.32,39.97,44.29,39.90,46.45,39.66,48.38,38.86,49.19,38.15,49.35,37.79,49.65,37.59,50.57,36.63,51.67,36.21,52.25,35.75,52.75,35.30,53.46,34.27,53.75,33.38,53.93,32.50,53.97,31.32,54.60,30.91,55.51,30.05,57.14,29.72,58.07,28.93,58.74,27.94,59.01,26.99,59.24,26.48,60.37,25.02,60.62,24.75,61.11,24.44,61.29,24.35,61.92,23.82,62.34,23.92,62.37,24.95,62.21,25.30,62.60,25.99,63.04,26.55,63.50,27.81,63.95,28.34,64.12,28.94,64.10,30.84,64.21,31.40,64.97,33.08,65.44,33.48,66.44,33.71,66.63,33.93,66.80,34.47,66.87,34.87,66.97,35.22,67.53,37.01,68.12,37.76,68.65,38.20,68.76,38.13,68.94,37.84,69.29,38.40,69.61,38.29
.unitscan Winterfall Runner
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 4842 >> Turn in Strange Sources
.turnin 5087 >> Turn in Winterfall Runners
.target Donova Snowden
step
#optional
.isQuestComplete 8464
.goto Winterspring,27.736,34.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
.turnin 8464 >> Turn in Winterfall Activity
.target Salfa
step
#optional
.abandon 969 >> Abandon Luck Be With You if you didn't complete it earlier
step
#softcore
#completewith next
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step
#completewith FelwoodTurnins
.goto Winterspring,62.334,36.609
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maethrya|r
.fly Azshara >> Fly to Azshara
.target Maethrya
step
.isQuestComplete 4261
.goto Ashenvale,85.276,44.720
.target Kayneth Stillwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
.turnin 4261 >> Turn in Ancient Spirit
step
.destroy 11445 >> Throw away the |T133942:0|t[Flute of the Ancients]
step
.isQuestComplete 5242
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5242 >> Turn in A Final Blow
.target Greta Mosshoof
step
#label FelwoodTurnins
.isOnQuest 5385
.goto Felwood,51.346,82.013
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
.turnin 5385 >> Turn in The Remains of Trey Lightforge
.target Jessir Moonbow
step << !Mage
.hs >> Hearth to Darnassus
step << Mage
#completewith next
.zone Darnassus >> Teleport to Darnassus
step << !Hunter !Mage
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.target Erelas Ambersky
step << !Hunter !Mage
.isQuestTurnedIn 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 979 >> Accept Find Ranshalla
.target Erelas Ambersky
step << Hunter
.isQuestComplete 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 4901 >> Turn in Guardians of the Altar
.target Erelas Ambersky
step << Hunter
.isQuestTurnedIn 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 4902 >> Accept Wildkin of Elune
.target Erelas Ambersky
step << Druid/Hunter
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step << Druid/Hunter/Mage
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Idriana|r, |cRXP_FRIENDLY_Garryeth|r or |cRXP_FRIENDLY_Lairn|r
.bankwithdraw 11947,11949,10575 >> Withdraw the following from your bank:
>>|T134815:0|t[Filled Cursed Ooze Jar] 
>>|T134857:0|t[Filled Tainted Ooze Jar] 
>>|T134430:0|t[Black Dragonflight Molt] 
.target Idriana
.target Garryeth
.target Lairn
step << Druid
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.trainer >> Train your class spells
.target Mathrengyl Bearwalker
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
step << Hunter
.isOnQuest 4902
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 4902 >> Turn in Wildkin of Elune
.target Arch Druid Fandral Staghelm
step << Druid/Hunter/Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step << Mage
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.target Erelas Ambersky
step << Mage
#completewith next
.zone Ironforge >> Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << !Mage
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Darkshore >> Fly to Darkshore
.target Vesprystus
.zoneskip Darkshore
step << !Mage
.goto Darkshore,32.4,43.8
.zone Wetlands >> Take the boat to Wetlands
step << !Mage
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
]]);
