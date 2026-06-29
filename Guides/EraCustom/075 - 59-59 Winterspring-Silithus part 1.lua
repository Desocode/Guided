RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 50-60
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 59-59 Winterspring/Silithus part 1
#next 59-60 Winterspring/Silithus part 2
step
.isQuestTurnedIn 6183
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.turnin 6186 >> Turn in The Blightcaller Cometh
.target Highlord Bolvar Fordragon
step
.goto Stormwind City,44.274,73.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clavicus Knavingham|r up stairs
>>Do the Stormwind cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7791 >> Turn in A Donation of Wool
.turnin 7793 >> Turn in A Donation of Silk
.turnin 7794 >> Turn in A Donation of Mageweave
.turnin 7795 >> Turn in A Donation of Runecloth
.target Clavicus Knavingham
step << Mage
#completewith RutPortal
.zone Darnassus >> Teleport to Darnassus
step << Mage
.isQuestComplete 3378
.goto Darnassus,38.334,80.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astarii Starseeker|r
.turnin 3378 >> Turn in Prayer to Elune
.target Astarii Starseeker
step << Mage
#label RutPortal
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal to Rut'theran Village
step << Mage
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Winterspring >> Fly to Winterspring
.target Vesprystus
.zoneskip Winterspring
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
.goto Moonglade,48.0,67.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
.target Sindrayl
.fly Winterspring >> Fly to Winterspring
step << !Mage !Druid
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Booty Bay>> Fly to Booty Bay
.target Dungar Longdrink
step << !Mage !Druid
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >> Take the Boat to Ratchet
step << !Mage !Druid
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Winterspring >> Fly to Winterspring
.target Bragok
step << Hunter
.goto Winterspring,60.389,37.916
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azzleby|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Winterspring Screecher|r shortly
.target Azzleby
.zoneskip Winterspring,1
step << Hunter
.goto Winterspring,57.8,26.4,70,0
.goto Winterspring,59.6,18.0
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Winterspring Screecher|r to tame it|r
.train 3666 >>|cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 8)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Winterspring Screecher
.zoneskip Winterspring,1
step << Hunter
#completewith next
.subzone 2255 >> Travel to Everlook
step << Hunter
.goto Winterspring,60.389,37.916
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulbrek Firehand|r
.stable >> Withdraw your pet
.target Azzleby
.zoneskip Winterspring,1
step
.isOnQuest 4808
.goto Winterspring,61.455,36.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy Coppergrab|r
.bankwithdraw 12438 >> Withdraw the following items from your bank:
>>|T133469:0|t[Tinkee's Letter] 
.target Izzy Coppergrab
step
.goto Winterspring,61.358,38.837
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Vizzie|r
.home >> Set your Hearthstone to Everlook
.target Innkeeper Vizzie
step
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok Steelspring|r
.turnin 4808 >> Turn in Felnok Steelspring
.accept 4809 >> Accept Chillwind Horns
.target Felnok Steelspring
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
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.accept 3783 >> Accept Are We There, Yeti?
.target Umi Rumplesnicker
step
#completewith YetiCave
>>Kill |cRXP_ENEMY_Fledgling Chillwinds|r, |cRXP_ENEMY_Chillwind Chimaeras|r and |cRXP_ENEMY_Chillwind Ravagers|r. Loot them for their |cRXP_LOOT_Uncracked Chillwind Horns|r
>>|cRXP_WARN_Don't go out of your way to complete this yet|r
.complete 4809,1 
.mob Chillwind Chimaera
step
.goto Winterspring,66.3,42.6
>>Kill |cRXP_ENEMY_Ice Thistle Yetis|r and |cRXP_ENEMY_Rogue Ice Thistles|r. Loot them for their |cRXP_LOOT_Thick Yeti Fur|r
.complete 3783,1
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
step
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.turnin 3783 >> Turn in Are We There, Yeti?
.accept 977 >> Accept Are We There, Yeti?
.target Umi Rumplesnicker
step
#era/som
#completewith next
.goto Winterspring,66.83,34.86,70,0
.goto Winterspring,68.00,37.71
>>Kill |cRXP_ENEMY_Winterfall Shamans|r, |cRXP_ENEMY_Winterfall Den Watchers|r and |cRXP_ENEMY_Winterfall Ursas|r
>>|cRXP_WARN_Abandon this quest if the village is too crowded|r
.complete 8464,1 
.mob +Winterfall Shaman
.complete 8464,2 
.mob +Winterfall Den Watcher
.complete 8464,3 
.mob +Winterfall Ursa
step
.goto Winterspring,69.75,38.24
>>Kill |cRXP_ENEMY_High Chief Winterfall|r. Loot him for his |T133740:0|t[|cRXP_LOOT_Crudely-written Log|r]
>>|cRXP_WARN_Use the |T133740:0|t[|cRXP_LOOT_Crudely-written Log|r] to start the quest|r
.complete 5121,1 
.collect 12842,1,5123,1 
.accept 5123 >> Accept The Final Piece
.use 12842 
.mob High Chief Winterfall
step
#era/som
.goto Winterspring,66.83,34.86,70,0
.goto Winterspring,68.00,37.71
>>Kill |cRXP_ENEMY_Winterfall Shamans|r, |cRXP_ENEMY_Winterfall Den Watchers|r and |cRXP_ENEMY_Winterfall Ursas|r
>>|cRXP_WARN_Abandon this quest if the village is too crowded|r
.complete 8464,1 
.mob +Winterfall Shaman
.complete 8464,2 
.mob +Winterfall Den Watcher
.complete 8464,3 
.mob +Winterfall Ursa
step
#label YetiCave
#completewith next
.goto Winterspring,67.59,42.96,35,0
.goto Winterspring,67.97,41.44,30 >> Enter the Yeti Cave
step
.goto Winterspring,69.90,41.67
>>Kill |cRXP_ENEMY_Ice Thistle Matriarchs|r and |cRXP_ENEMY_Ice Thistle Patriarchs|r. Loot them for their |cRXP_LOOT_Pristine Yeti Horns|r
.complete 977,1 
.mob Ice Thistle Matriarch
.mob Ice Thistle Patriarch
step
#completewith next
>>Kill |cRXP_ENEMY_Fledgling Chillwinds|r, |cRXP_ENEMY_Chillwind Chimaeras|r and |cRXP_ENEMY_Chillwind Ravagers|r. Loot them for their |cRXP_LOOT_Uncracked Chillwind Horns|r
>>|cRXP_WARN_Don't go out of your way to complete this yet|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
.isOnQuest 979
.goto Winterspring,63.074,59.482
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.turnin 979 >> Turn in Find Ranshalla
.accept 4901,1 >> Accept Guardians of the Altar
>>|cRXP_WARN_Guardians of the Altar will begin an escort quest. If you're in a party ensure everyone has turned in Find Ranshalla first. Auto accept has been turned off for Guardians of the Altar|r
.target Ranshalla
step
.isQuestTurnedIn 979
.goto Winterspring,63.074,59.482
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.accept 4901,1 >> Accept Guardians of the Altar
>>|cRXP_WARN_Guardians of the Altar will begin an escort quest. If you're in a party ensure everyone has turned in Find Ranshalla first. Auto accept has been turned off for Guardians of the Altar|r
.target Ranshalla
step
.isOnQuest 4901
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
.isOnQuest 969
.goto Winterspring,59.06,68.33
>>Loot the |cRXP_LOOT_Frostmaul Shards|r on the ground scattered around Frostwhisper Gorge
>>|cRXP_WARN_This quest can be difficult. Look for a party if required or skip this step|r
.complete 969,1 
step
.hs >> Hearth to Everlook
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.isQuestComplete 977
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.turnin 977 >> Turn in Are We There, Yeti?
.accept 5163 >> Accept Are We There, Yeti?
.target Umi Rumplesnicker
step
.isQuestTurnedIn 977
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.accept 5163 >> Accept Are We There, Yeti?
.target Umi Rumplesnicker
step
.isQuestTurnedIn 977
.goto Winterspring,61.543,38.615
.use 12928 >> |cRXP_WARN_Use|r |T133003:0|t[Umi's Mechanical Yeti] |cRXP_WARN_on|r |cRXP_FRIENDLY_Legacki|r
.complete 5163,1 
.target Legacki
step
.isQuestComplete 4809
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok Steelspring|r
.turnin 4809 >> Turn in Chillwind Horns
.target Felnok Steelspring
step
.isQuestComplete 969
.goto Winterspring,61.919,38.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
.turnin 969 >> Turn in Luck Be With You
.target Witch Doctor Mau'ari
step
.abandon 969 >> Abandon Luck Be With You if you did not complete it
step
.goto Winterspring,61.455,36.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy Coppergrab|r
.bankwithdraw 17355,11172,11173,13562,13207 >> Withdraw from your bank:
>>|T133471:0|t[Rabine's Letter] 
>>|T134319:0|t[Silvery Claws] 
>>|T135241:0|t[Irontree Heart] 
>>|T133639:0|t[Remains of Trey Lightforge] (If you have it) 
>>|T134170:0|t[Shadow Lord Fel'dan's Head] (If you have it) 
.target Izzy Coppergrab
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5121 >> Turn in High Chief Winterfall
.turnin 5123 >> Turn in The Final Piece
.accept 5128 >> Accept Words of the High Chief
.target Donova Snowden
step
.isQuestComplete 8464
.goto Winterspring,27.736,34.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
.turnin 8464 >> Turn in Winterfall Activity
.target Salfa
step << !Druid
#completewith RabineWasteland
.goto Moonglade,35.77,71.94
.zone Moonglade >> Travel to Moonglade via Timbermaw Hold
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
step << !Druid
.dungeon Mara
.isOnQuest 7066
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Keeper Remulos|r
.turnin 7066 >> Turn in Seed of Life
.target Keeper Remulos
step
#label RabineWasteland
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
.turnin 6762 >> Turn in Rabine Saturna
.accept 1124 >> Accept Wasteland
.target Rabine Saturna
step
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
>>|cRXP_WARN_Skip this step if the Dire Maul dialogue is not available|r
.skipgossip
.accept 5527 >> Accept A Reliquary of Purity
.target Rabine Saturna
step << !Druid
#completewith next
.goto Moonglade,48.102,67.346
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
.fp Moonglade >> Get the Moonglade Flight path
.target Sindrayl
step
#hardcore
.goto Moonglade,48.102,67.346
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
.fly Talonbranch >> Fly to Felwood
.target Sindrayl
step
#softcore
.goto Felwood,49.4,31.0
>>|cRXP_WARN_Head back into the |cRXP_ENEMY_Furbolg|r cave|r
>>|cRXP_WARN_Open your Reputation pane and mark "|cRXP_ENEMY_At War|r" with Timbermaw Hold|r
>>|cRXP_WARN_Once the General chat changes to Felwood, die to the |cRXP_ENEMY_Furbolgs|r intentionally|r
.deathskip >> Die and respawn at the Spirit Healer in Felwood
.target Spirit Healer
step << Warlock
.dungeon ST
#phase 4-6
.isQuestComplete 8422
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8422 >> Turn in Trolls of a Feather
.target Impsy
step
#softcore
.goto Felwood,40.84,66.78
>>Continue south to the slime pond. Ensure you are at the arrow location
.deathskip >> Die and respawn at the Spirit Healer
.target Spirit Healer
step << Priest
.dungeon ST
#phase 4-6
.isQuestComplete 8257
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 8257 >> Turn in Blood of Morphaz
.target Greta Mosshoof
step
.isQuestComplete 5242
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5242 >> Turn in A Final Blow
.target Greta Mosshoof
step
.isOnQuest 5385
.goto Felwood,51.346,82.013
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
.turnin 5385 >> Turn in The Remains of Trey Lightforge
.target Jessir Moonbow
step
.isOnQuest 5128
.goto Felwood,51.136,81.754
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
.turnin 5128 >> Turn in Words of the High Chief
.target Kelek Skykeeper
step
#era/som
#softcore
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4084 >> Turn in Silver Heart
.accept 4005 >> Accept Aquementas
.target Eridan Bluewind
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4084 >> Turn in Silver Heart
.accept 4005 >> Accept Aquementas
.target Eridan Bluewind
step
#completewith next
#icon |T135934:0|t
.goto Felwood,55.808,10.438,0
.goto Felwood,50.575,13.918,0
.goto Felwood,63.336,22.610,0
.goto Felwood,40.142,44.353,0
.goto Felwood,40.142,56.523,0
.goto Felwood,48.260,75.650,0
.goto Felwood,45.942,85.219,0
.goto Felwood,52.893,87.825,0
.goto Felwood,52.893,87.825,25,0
.goto Felwood,45.942,85.219,25,0
.goto Felwood,48.260,75.650,25,0
.goto Felwood,40.142,56.523,25,0
.goto Felwood,40.142,44.353,25,0
.goto Felwood,50.575,13.918,25,0
.goto Felwood,55.808,10.438,25,0
.goto Felwood,63.336,22.610,25,0
.cast 6478 >> |cRXP_WARN_Look for a |cRXP_PICK_Corrupted Songflower|r. Click it to cleanse it. Click the |cRXP_PICK_Cleansed Songflower|r to receive the hour-long|r |T135934:0|t[Songflower Serenade] |cRXP_WARN_buff|r
>>|cRXP_WARN_Their locations have been marked on your map. Don't go very far out of your way to find one|r
.itemcount 11516,2 
step
#softcore
#completewith next
>>Pull a mob from Felwood into Ashenvale to deathskip to Astranaar
.deathskip >> Die and respawn at the Spirit Healer
>>|cRXP_WARN_Skip this step if you have the|r |T135934:0|t[Songflower Serenade] |cRXP_WARN_buff|r
.target Spirit Healer
step << Hunter/Priest/Mage
.dungeon ST
#phase 4-6
#completewith next
.goto Ashenvale,34.41,47.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Azshara >> Fly to Azshara
.target Daelyshia
step << Hunter
.dungeon ST
#phase 4-6
.isQuestComplete 8232
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8232 >> Turn in The Green Drake
.target Ogtinc
step << Mage
.dungeon ST
#phase 4-6
.isQuestComplete 8253
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
>>|cRXP_WARN_This will teleport you to the top of the mountain|r
.turnin 3503 >> Turn in Meeting with the Master
.target Sanath Lim-yo
step << Mage
.dungeon ST
#phase 4-6
.isQuestComplete 8253
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.turnin 8253 >> Turn in Destroy Morphaz
.target Archmage Xylem
step << Mage
.dungeon ST
#phase 4-6
.isQuestTurnedIn 8253
#completewith ArcaneRunes
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
>>|cRXP_WARN_This will teleport you back down|r
.turnin 3421 >> Turn in Return Trip
.timer 8,Return Trip RP
.target Nyrill
step << Hunter/Priest/Mage
.dungeon ST
#phase 4-6
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fly Tanaris >> Fly to Tanaris
.target Jarrodenus
.zoneskip Azshara,1
step << !Mage !Hunter !Priest
.dungeon ST
#phase 4-6
.goto Ashenvale,34.41,47.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Tanaris >> Fly to Tanaris
.target Daelyshia
step
.dungeon ST
#phase 1-3
.goto Ashenvale,34.41,47.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Tanaris >> Fly to Tanaris
.target Daelyshia
step
.dungeon !ST
.goto Ashenvale,34.41,47.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Tanaris >> Fly to Tanaris
.target Daelyshia
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.accept 4507 >> Accept Pawn Captures Queen
.target Alchemist Pestlezugg
step
.isQuestTurnedIn 977
.goto Tanaris,51.059,26.873
.use 12928 >> |cRXP_WARN_Use|r |T133003:0|t[Umi's Mechanical Yeti] |cRXP_WARN_on|r |cRXP_FRIENDLY_Sprinkle|r
.complete 5163,2 
.target Sprinkle
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 4504 >> Accept Super Sticky
.target Tran'rek
step
#era/som
#softcore
.isQuestTurnedIn 4084
#completewith SummonAquementas
>>Open |T133647:0|t[Eridan's Supplies] for the |T133742:0|t[Book of Aquor], |cRXP_LOOT_Silvery Claws|r and |cRXP_LOOT_Irontree Heart|r
.use 11617 
.collect 11169,1,4005,1 
.collect 11172,11,4005,1 
.collect 11173,1,4005,1 
step
#era/som
#softcore
.isQuestTurnedIn 4084
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >> Travel to Lost Rigger Cove
step
#era/som
#softcore
.isQuestTurnedIn 4084
#completewith next
#label SummonAquementas
.goto Tanaris,70.43,49.90
.cast 13978 >> |cRXP_WARN_Use the|r |T133742:0|t[Book of Aquor] |cRXP_WARN_to summon |cRXP_ENEMY_Aquementas|r at the stone summoning circle within Lost Rigger Cove|r
.timer 15,Aquementas RP
.use 11617 
.use 11169 
step
#era/som
#softcore
.isQuestTurnedIn 4084
.goto Tanaris,70.43,49.93
>>Kill |cRXP_ENEMY_Aquementas|r
.complete 4005,1 
.use 11617 
.use 11169 
.mob Aquementas
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
#completewith SummonAquementas
>>Open |T133647:0|t[Eridan's Supplies] for the |T133742:0|t[Book of Aquor], |cRXP_LOOT_Silvery Claws|r and |cRXP_LOOT_Irontree Heart|r
.use 11617 
.collect 11169,1,4005,1 
.collect 11172,11,4005,1 
.collect 11173,1,4005,1 
step 
.dungeon ST
#optional
.isQuestComplete 3528
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3528 >> Turn in The God Hakkar
.target Yeh'kinya
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >> Travel to Lost Rigger Cove
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
#completewith next
#label SummonAquementas
.goto Tanaris,70.43,49.90
.cast 13978 >> |cRXP_WARN_Use the|r |T133742:0|t[Book of Aquor] |cRXP_WARN_to summon |cRXP_ENEMY_Aquementas|r at the stone summoning circle within Lost Rigger Cove|r
.timer 15,Aquementas RP
.use 11617 
.use 11169 
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
.goto Tanaris,70.43,49.93
>>Kill |cRXP_ENEMY_Aquementas|r
.complete 4005,1 
.use 11617 
.use 11169 
.mob Aquementas
step
#completewith next
.subzone 976 >> Travel to Gadgetzan
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Un'Goro >> Fly to Un'Goro Crater
.target Bera Stonehammer
step
#era/som
#softcore
.isQuestTurnedIn 4084
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 4005 >> Turn in Aquementas
.accept 3961 >> Accept Linken's Adventure
.target J.D. Collie
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 4005 >> Turn in Aquementas
.accept 3961 >> Accept Linken's Adventure
.target J.D. Collie
step
#era/som
#softcore
.isQuestTurnedIn 4084
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3961 >> Turn in Linken's Adventure
.accept 3962 >> Accept It's Dangerous to Go Alone
.target Linken
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3961 >> Turn in Linken's Adventure
.accept 3962 >> Accept It's Dangerous to Go Alone
.target Linken
step
.isQuestTurnedIn 977
.goto Un'Goro Crater,43.660,9.371
.use 12928 >> |cRXP_WARN_Use|r |T133003:0|t[Umi's Mechanical Yeti] |cRXP_WARN_on|r |cRXP_FRIENDLY_Quixxil|r
.complete 5163,3 
.target Quixxil
step
#optional
.isQuestTurnedIn 4005
.destroy 11169 >> Delete the |T133742:0|t[Book of Aquor]
step
.goto Un'Goro Crater,46.2,19.6,70,0
.goto Un'Goro Crater,50.6,26.6,70,0
.goto Un'Goro Crater,48.4,32.8,70,0
.goto Un'Goro Crater,59.6,32.4,70,0
.goto Un'Goro Crater,63.4,23.6,70,0
.goto Un'Goro Crater,59.4,24.6,70,0
.goto Un'Goro Crater,51.6,24.8
>>Kill |cRXP_ENEMY_Tar Beasts|r, |cRXP_ENEMY_Tar Creepers|r, |cRXP_ENEMY_Tar Lurkers|r and |cRXP_ENEMY_Tar Lords|r. Loot them for their |cRXP_LOOT_Super Sticky Tar|r
.complete 4504,1 
.mob Tar Beast
.mob Tar Creeper
.mob Tar Lurker
.mob Tar Lord
step
#softcore
#era/som
.isOnQuest 3962
#completewith next
>>|cRXP_WARN_Make your way to the top of Fire Plume Ridge|r
.cast 14247 >>|cRXP_WARN_Equip the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_in your off-hand|r
>>|cRXP_WARN_Use the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_on |cRXP_ENEMY_Blazerunner|r to dispel his aura. His aura will knock you back, and he can periodically recast it during combat. Ensure someone is always ready to use the|r |T135467:0|t[Silver Totem of Aquementas]
.use 11522 
step
#softcore
#era/som
.isOnQuest 3962
.goto Un'Goro Crater,49.401,49.305
>>|cRXP_WARN_Use the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_on |cRXP_ENEMY_Blazerunner|r to dispel his aura|r
>>Kill |cRXP_ENEMY_Blazerunner|r
.complete 3962,1 
.use 11522 
.mob Blazerunner
step
#softcore
#era/som
.isOnQuest 3962
.goto Un'Goro Crater,50.279,49.973
>>Open the |cRXP_PICK_Ornate Chest|r. Loot it for the |cRXP_LOOT_Golden Flame|r
.complete 3962,2 
step
#era/som
#hardcore
#hardcoreserver
.isOnQuest 3962
#completewith next
>>|cRXP_WARN_Make your way to the top of Fire Plume Ridge|r
.cast 14247 >>|cRXP_WARN_Equip the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_in your off-hand|r
>>|cRXP_WARN_Use the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_on |cRXP_ENEMY_Blazerunner|r to dispel his aura. His aura will knock you back, and he can periodically recast it during combat. Ensure you or a party member is always ready to use the|r |T135467:0|t[Silver Totem of Aquementas]
.use 11522 
step
#era/som
#hardcore
#hardcoreserver
.isOnQuest 3962
.goto Un'Goro Crater,49.401,49.305
>>|cRXP_WARN_Use the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_on |cRXP_ENEMY_Blazerunner|r to dispel his aura|r
>>Kill |cRXP_ENEMY_Blazerunner|r
.complete 3962,1 
.use 11522 
.mob Blazerunner
step
#era/som
#hardcore
#hardcoreserver
.isOnQuest 3962
.goto Un'Goro Crater,50.279,49.973
>>Open the |cRXP_PICK_Ornate Chest|r. Loot it for the |cRXP_LOOT_Golden Flame|r
.complete 3962,2 
step << Druid
.dungeon ST
#phase 4-6
.isQuestComplete 9053
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 9053 >> Turn in A Better Ingredient
.target Torwa Pathfinder
step
#completewith next
.goto Un'Goro Crater,49.93,81.70,70 >> Enter The Slithering Scar Hive
.isOnQuest 4507
step
#completewith next
.cast 15627 >> |cRXP_WARN_Use the|r |T134809:0|t[Gorishi Queen Lure] |cRXP_WARN_at the |cRXP_PICK_Gorishi Silithid Crystal|r inside of The Slithering Scar. You will have to defeat 3 waves of attacking |cRXP_ENEMY_Gorishi|r. If you kill the final mob of each wave while OUTSIDE of the main room, you will be able to drink/eat between waves|r
.use 11833
.isOnQuest 4507
step
.goto Un'Goro Crater,43.520,81.079
>>Defeat the 3 waves of |cRXP_ENEMY_Gorishi|r attackers. Use the outside room as a reset point to eat/drink between waves if needed
>>Kill the |cRXP_ENEMY_Gorishi Hive Queen|r. Loot her for her |cRXP_LOOT_Brain|r
.use 11833
.complete 4507,1
.isOnQuest 4507
step
.dungeon BRD << !Mage 
.isOnQuest 4513
.goto Un'Goro Crater,27.0,44.8,70,0
.goto Un'Goro Crater,34.6,28.6,70,0
.goto Un'Goro Crater,42.8,54.6,70,0
.goto Un'Goro Crater,37.0,73.4,70,0
.goto Un'Goro Crater,28.4,60.8
>>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
#completewith CH1
.goto Un'Goro Crater,28.71,21.43,40,0
.goto Un'Goro Crater,29.78,10.25,40,0
.goto Silithus,88.40,23.81,60,0
.goto Un'Goro Crater,28.71,21.43,0
.zone Silithus >> Travel to Silithus
step
.isQuestTurnedIn 6762
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
.turnin 1124 >> Turn in Wasteland
.accept 1125 >> Accept The Spirits of Southwind
.target Layo Starstrike
step
#completewith end
.xpto60 >> Skip to the part 2 of the guide once you have enough xp to ding 60
step
#phase 4
#completewith CH1
.subzone 3425 >> Travel to Cenarion Hold
step
#phase 4
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calandrath|r
.accept 8307 >> Accept Desert Recipe
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
.goto Silithus,51.80,38.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r upstairs
.accept 8277 >> Accept Deadly Desert Venom
.target Beetix Ficklespragg
step
#phase 4
.goto Silithus,51.351,38.273
>>Click the |cRXP_PICK_Wanted Poster: Deathclasp|r
.accept 8283 >> Accept Wanted - Deathclasp, Terror of the Sands
step
#phase 4
.isOnQuest 8275
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.turnin 8275 >> Turn in Taking Back Silithus
.accept 8280 >> Accept Securing the Supply Lines
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.accept 8280 >> Accept Securing the Supply Lines
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,49.673,37.461
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
.accept 8284 >> Accept The Twilight Mystery
.target Geologist Larksbane
step
#phase 4
#label CH1
.goto Silithus,48.574,37.781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
.accept 8318 >> Accept Secret Communication
.target Bor Wildmane
step
#phase 4
.goto Silithus,37.943,45.315
>>Click the |cRXP_PICK_Sandy Cookbook|r at the Twilight Base Camp
>>|cRXP_WARN_Approach the Twilight Base Camp from the south for easier access to the|r |cRXP_PICK_Sandy Cookbook|r
.turnin 8307 >> Turn in Desert Recipe
.accept 8313 >> Accept Sharing the Knowledge
.skill cooking,<285,1 
step
#phase 4
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calandrath|r
.turnin 8313 >> Turn in Sharing the Knowledge
.accept 8317 >> Accept Kitchen Assistance
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
#completewith s1
.isOnQuest 8317
>>Kill |cRXP_ENEMY_Dredge Strikers|r. Loot them for their |cRXP_LOOT_Sandworm Meat|r
>>|cRXP_WARN_You don't need to collect all |cRXP_LOOT_Sandworm Meat|r now|r
.skill cooking,<285,1 
.collect 20424,10,8317,1,1 
.mob Dredge Striker
step
#phase 4
#completewith s1
>>Kill |cRXP_ENEMY_Dredge Strikers|r
>>Kill |cRXP_ENEMY_Sand Skitterers|r. Loot them for their |cRXP_LOOT_Skitterer Fangs|r
>>Kill |cRXP_ENEMY_Stonelash Scorpids|r. Loot them for their |cRXP_LOOT_Scorpid Stingers|r
.complete 8280,1 
.mob +Dredge Striker
.complete 8277,2 
.mob +Sand Skitterer
.complete 8277,1 
.mob +Stonelash Scorpid
step
#completewith next
.goto Silithus,63.72,48.98,50,0 
>>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r. |cRXP_WARN_When they die they have a chance to spawn a |cRXP_ENEMY_Hive'Ashi Drone|r which you will also have to kill|r
>>|cRXP_ENEMY_Hive'Ashi Drones|r may drop |T133463:0|t[|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r]
.use 20461 >>|cRXP_WARN_Use |T133463:0|t[|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r] to start the quest|r
.complete 1125,1 
.mob +Tortured Druid
.complete 1125,2 
.mob +Tortured Sentinel
.collect 20461,1,8308,1,1 
.mob +Tortured Druid
.mob +Tortured Sentinel
.accept 8308 >> Accept Brann Bronzebeard's Lost Letter
.disablecheckbox
step
.isOnQuest 5527
.goto Silithus,63.225,55.354
>>Enter the small lodge
>>Open the |cRXP_PICK_Dusty Reliquary|r on the ground. Loot it for the |cRXP_LOOT_Reliquary of Purity|r
.complete 5527,1 
step
.goto Silithus,63.72,48.98 
>>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r. |cRXP_WARN_When they die they have a chance to spawn a |cRXP_ENEMY_Hive'Ashi Drone|r which you will also have to kill|r
>>|cRXP_ENEMY_Hive'Ashi Drones|r may drop |T133463:0|t[|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r]
.use 20461 >>|cRXP_WARN_Use |T133463:0|t[|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r] to start the quest|r
.complete 1125,1 
.mob +Tortured Druid
.complete 1125,2 
.mob +Tortured Sentinel
.collect 20461,1,8308,1,1 
.mob +Tortured Druid
.mob +Tortured Sentinel
.accept 8308 >> Accept Brann Bronzebeard's Lost Letter
.disablecheckbox
step
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
.turnin 1125 >> Turn in The Spirits of Southwind
.accept 1126 >> Accept Hive in the Tower
.target Layo Starstrike
step
.goto Silithus,60.354,52.558
>>Ascend the Southwind Village Tower. Entering the tower spawns 3 |cRXP_ENEMY_Hive'Ashi Drones|r which you will need to kill
>>Click the |cRXP_PICK_Hive'Ashi Pod|r atop the Tower. This will spawn 2 |cRXP_ENEMY_Hive'Ashi Ambushers|r
>>Kill the |cRXP_ENEMY_Hive'Ashi Ambushers|r. Loot them for the |cRXP_LOOT_Encrusted Silithid Object|r
.complete 1126,1 
.mob Hive'Ashi Ambusher
step
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
.turnin 1126 >> Turn in Hive in the Tower
.accept 6844 >> Accept Umber, Archivist
.target Layo Starstrike
step
#optional
.isQuestTurnedIn 1126
.destroy 17345 >> Delete the |T134437:0|t[Silithid Goo]. It isn't used for anything
step
#phase 4
#completewith next
.subzone 2740 >> Travel to The Crystal Vale. Avoid the Elite |cRXP_ENEMY_Hive'Ashi|r mobs en-route
step
#label s1
#phase 4
.goto Silithus,26.6,13.3,70,0
.goto Silithus,21.8,10.4,70,0
.goto Silithus,19.7,22.0,70,0
.goto Silithus,21.8,10.4,70,0
.goto Silithus,26.6,13.3,70,0
.goto Silithus,21.8,10.4
>>Loot the |cRXP_LOOT_Twilight Tablet Fragments|r on the ground
.complete 8284,1 
step
#phase 4
.isOnQuest 8317
.goto Silithus,54.6,33.6,70,0
.goto Silithus,53.4,18.6,70,0
.goto Silithus,58.6,14.8,70,0
.goto Silithus,62.4,20.0,70,0
.goto Silithus,58.6,26.6,70,0
.goto Silithus,67.0,32.2,70,0
.goto Silithus,70.0,38.8,70,0
.goto Silithus,61.0,42.8,70,0
.goto Silithus,58.2,23.8
.goto Silithus,36.8,33.0,0
>>Kill |cRXP_ENEMY_Dredge Strikers|r. Loot them for their |cRXP_LOOT_Sandworm Meat|r
>>Kill |cRXP_ENEMY_Sand Skitterers|r. Loot them for their |cRXP_LOOT_Skitterer Fangs|r
>>Kill |cRXP_ENEMY_Stonelash Scorpids|r. Loot them for their |cRXP_LOOT_Scorpid Stingers|r
>>|cRXP_WARN_You don't need to collect all |cRXP_LOOT_Sandworm Meat|r now|r
.skill cooking,<285,1 
.complete 8280,1 
.mob +Dredge Striker
.collect 20424,10,8317,1,1 
.mob +Dredge Striker
.complete 8277,2 
.mob +Sand Skitterer
.complete 8277,1 
.mob +Stonelash Scorpid
step
#phase 4
.goto Silithus,54.6,33.6,70,0
.goto Silithus,53.4,18.6,70,0
.goto Silithus,58.6,14.8,70,0
.goto Silithus,62.4,20.0,70,0
.goto Silithus,58.6,26.6,70,0
.goto Silithus,67.0,32.2,70,0
.goto Silithus,70.0,38.8,70,0
.goto Silithus,61.0,42.8,70,0
.goto Silithus,58.2,23.8
.goto Silithus,36.8,33.0,0
>>Kill |cRXP_ENEMY_Dredge Strikers|r
>>Kill |cRXP_ENEMY_Sand Skitterers|r. Loot them for their |cRXP_LOOT_Skitterer Fangs|r
>>Kill |cRXP_ENEMY_Stonelash Scorpids|r. Loot them for their |cRXP_LOOT_Scorpid Stingers|r
.complete 8280,1 
.mob +Dredge Striker
.complete 8277,2 
.mob +Sand Skitterer
.complete 8277,1 
.mob +Stonelash Scorpid
step
#phase 4
#completewith next
.subzone 3425 >> Travel to Cenarion Hold
step
#phase 4
.goto Silithus,49.673,37.461
.target Geologist Larksbane
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
.turnin 8284 >> Turn in The Twilight Mystery
.accept 8285 >> Accept The Deserter
step
#phase 4
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
.accept 8304 >> Accept Dearest Natalia
.target Commander Mar'alith
.xp <58,1
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.turnin 8280 >> Turn in Securing the Supply Lines
.accept 8281 >> Accept Stepping Up Security
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.70,38.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r upstairs
.turnin 8277 >> Turn in Deadly Desert Venom
.accept 8278 >> Accept Noggle's Last Hope
.target Beetix Ficklespragg
step
#phase 4
#completewith TheHermit
>>Kill |cRXP_ENEMY_Stonelash Flayers|r and |cRXP_ENEMY_Stonelash Pincers|r. Loot them for their |cRXP_LOOT_Stingers|r
>>Kill |cRXP_ENEMY_Rock Stalkers|r. Loot them for their |cRXP_LOOT_Fangs|r
.complete 8278,1 
.mob +Stonelash Flayer
.complete 8278,2 
.mob +Stonelash Pincer
.complete 8278,3 
.mob +Rock Stalker
step
#phase 4
#completewith TheHermit
.isOnQuest 8317
>>Kill |cRXP_ENEMY_Dredge Crushers|r. Loot them for their |cRXP_LOOT_Sandworm Meat|r
.complete 8281,1 
.collect 20424,10,8317,1 
.skill cooking,<285,1 
.mob Dredge Crusher
step
#phase 4
#completewith TheHermit
>>Kill |cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1 
.skill cooking,285,1 
.mob Dredge Crusher
step
#phase 4
.goto Silithus,41.279,88.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
.accept 8308 >> Accept Brann Bronzebeard's Lost Letter
.turnin 8308 >> Turn in Brann Bronzebeard's Lost Letter
.use 20461 
.itemcount 20461,1 
.target Rutgar Glyphshaper
step
#phase 4
.isOnQuest 8304
.goto Silithus,41.279,88.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
.skipgossip
.complete 8304,2 
.target Rutgar Glyphshaper
step
#label FinishKilling
#phase 4
.isOnQuest 8304
.goto Silithus,40.815,88.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frankal Stonebridge|r
.skipgossip
.complete 8304,1 
.target Frankal Stonebridge
step
#phase 4
.isOnQuest 8283
.goto Silithus,44.06,90.48,25,0
.goto Silithus,44.97,92.48
>>Kill |cRXP_ENEMY_Deathclasp|r. Loot her for her |cRXP_LOOT_Pincer|r
>>|cRXP_ENEMY_Deathclasp|r |cRXP_WARN_has a knockback abilitiy as well as an 8 second stun. Ensure to stay out of melee range of her at all times. Skip this step if it is too difficult|r
.complete 8283,1 
.mob Deathclasp
step
#label TheHermit
#phase 4
.goto Silithus,67.192,69.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
.turnin 8285 >> Turn in The Deserter
.accept 8279 >> Accept The Twilight Lexicon
.target Hermit Ortell
step
#phase 4
>>Kill |cRXP_ENEMY_Stonelash Flayers|r and |cRXP_ENEMY_Stonelash Pincers|r. Loot them for their |cRXP_LOOT_Stingers|r
>>Kill |cRXP_ENEMY_Rock Stalkers|r. Loot them for their |cRXP_LOOT_Fangs|r
.complete 8278,1 
.mob +Stonelash Flayer
.goto Silithus,23.8,81.6,70,0
.goto Silithus,31.8,78.0,70,0
.goto Silithus,42.6,83.8,70,0
.goto Silithus,48.4,69.2,70,0
.goto Silithus,34.0,73.2,70,0
.goto Silithus,41.4,80.8
.complete 8278,2 
.mob +Stonelash Pincer
.goto Silithus,36.4,60.4,75,0
.goto Silithus,39.0,52.6,75,0
.goto Silithus,29.2,41.6,75,0
.goto Silithus,45.4,56.6,75,0
.goto Silithus,58.6,59.2,75,0
.goto Silithus,39.0,56.2
.complete 8278,3 
.mob +Rock Stalker
.goto Silithus,23.8,81.6,70,0
.goto Silithus,31.8,78.0,70,0
.goto Silithus,42.6,83.8,70,0
.goto Silithus,48.4,69.2,70,0
.goto Silithus,34.0,73.2,70,0
.goto Silithus,41.4,80.8
step
#phase 4
#completewith DearestNatalia
.subzone 3425 >> Travel to Cenarion Hold
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.turnin 8281 >> Turn in Stepping Up Security
.target Windcaller Proudhorn
step
#phase 4
#optional
.isQuestTurnedIn 8313
.goto Silithus,49.880,36.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishta|r
>>|cRXP_BUY_Buy 10|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from her|r
.collect 3713,10,8317,1 
.skill cooking,<285,1 
.target Mishta
step
#phase 4
#optional
.isQuestTurnedIn 8313
.goto Silithus,50.866,38.414
>>|cRXP_WARN_Using your|r |T133971:0|t[Cooking] |cRXP_WARN_profession, cook up 10|r |T134020:0|t[Smoked Desert Dumplings] |cRXP_WARN_at the Cooking Brazier in Cenarion Hold|r
.collect 20452,10,8317,1 
.skill cooking,<285,1 
step
#phase 4
#optional
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calandrath|r
.turnin 8317 >> Turn in Kitchen Assistance
.itemcount 20452,10 
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r and |cRXP_FRIENDLY_Noggle Ficklespragg|r upstairs
.turnin 8278 >> Turn in Noggle's Last Hope
.target +Beetix Ficklespragg
.goto Silithus,51.70,38.50
.accept 8282 >> Accept Noggle's Lost Satchel
.goto Silithus,51.615,38.517
.target +Noggle Ficklespragg
step
#phase 4
#label DearestNatalia
.isOnQuest 8304
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
.turnin 8304 >> Turn in Dearest Natalia
.target Commander Mar'alith
step
#phase 4
.isQuestComplete 8283
.goto Silithus,50.755,33.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vish Kozus|r atop the Tower
.turnin 8283 >> Turn in Wanted - Deathclasp, Terror of the Sands
.target Vish Kozus
step
#phase 4
#completewith FinalKeeper
>>Kill any of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Encrypted Twilight Texts|r
.collect 20404,20,8323,1 
.mob Twilight Avenger
.mob Twilight Stonecaller
.mob Twilight Geolord
.mob Twilight Master
step
#phase 4
.goto Silithus,40.86,42.22
>>Kill |cRXP_ENEMY_Twilight Keeper Havunth|r. Loot him for the |cRXP_LOOT_Twilight Lexicon - Chapter 3|r
.complete 8279,3 
.unitscan Twilight Keeper Havunth
step
#phase 4
.goto Silithus,26.66,36.08
>>Kill |cRXP_ENEMY_Twilight Keeper Mayna|r. Loot her for the |cRXP_LOOT_Twilight Lexicon - Chapter 1|r
.complete 8279,1 
.unitscan Twilight Keeper Mayna
step
#label FinalKeeper
#phase 4
.goto Silithus,16.13,86.52
>>Kill |cRXP_ENEMY_Twilight Keeper Exeter|r. Loot him for the |cRXP_LOOT_Twilight Lexicon - Chapter 2|r
.complete 8279,2 
.unitscan Twilight Keeper Exeter
step
#phase 4
.goto Silithus,18.6,82.2,70,0
.goto Silithus,19.8,87.0
>>Kill any of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Encrypted Twilight Texts|r
.collect 20404,20,8323,1 
.mob Twilight Avenger
.mob Twilight Stonecaller
.mob Twilight Geolord
.mob Twilight Master
step
#phase 4
.goto Silithus,44.562,91.379
>>Loot |cRXP_LOOT_Noggle's Satchel|r on the ground
>>|cRXP_WARN_Wait for |cRXP_ENEMY_Deathclasp|r to patrol up the hill before looting|r |cRXP_LOOT_Noggle's Satchel|r
.complete 8282,1 
step
#phase 4
.goto Silithus,67.192,69.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
.turnin 8279 >> Turn in The Twilight Lexicon
.accept 8287 >> Accept A Terrible Purpose
.accept 8323,1 >> Accept True Believers
.turnin 8323 >> Turn in True Believers
.target Hermit Ortell
step << skip 
#phase 4
#completewith GadgetzanTurnins
.goto Silithus,67.200,69.246,-1
.goto Silithus,66.868,69.481,-1
+|cRXP_WARN_Perform a Logout skip on any of the torches next to |cRXP_FRIENDLY_Hermit Ortell|r to teleport to Cenarion Hold. If you are unable to do this just run there normally|r
.link https://www.youtube.com/watch?v=bFS4TUbJse8&ab_channel=RestedXP >> |cRXP_WARN_Click here for video reference|r
.subzoneskip 3447,1
step
#phase 4
.goto Silithus,48.574,37.781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
.turnin 8318 >> Turn in Secret Communication
.target Bor Wildmane
step
#phase 4
#label end
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
.turnin 8287 >> Turn in A Terrible Purpose
.target Commander Mar'alith
step
#phase 4
.goto Silithus,51.615,38.517
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noggle Ficklespragg|r upstairs
.turnin 8282 >> Turn in Noggle's Lost Satchel
.target Noggle Ficklespragg
step
#hardcoreserver
#era/som
#completewith next
.goto Silithus,50.581,34.448
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cloud Skydancer|r
.fly Un'Goro >> Fly to Un'Goro Crater
.target Cloud Skydancer
step
#hardcoreserver
#era/som
.isQuestComplete 3962
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3962 >> Turn in It's Dangerous to Go Alone
.target Linken
step
#softcore
#era/som
#completewith next
.goto Silithus,50.581,34.448
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cloud Skydancer|r
.fly Un'Goro >> Fly to Un'Goro Crater
.target Cloud Skydancer
step
#softcore
#era/som
.isQuestComplete 3962
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3962 >> Turn in It's Dangerous to Go Alone
.target Linken
step
#optional
.abandon 3962 >> Abandon It's Dangerous to Go Alone
step
#completewith GadgetzanTurnins
.goto Silithus,50.581,34.448,-1
.goto Un'Goro Crater,45.234,5.833,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cloud Skydancer|r or |cRXP_FRIENDLY_Gryfe|r
.fly Tanaris >> Fly to Tanaris
.target Cloud Skydancer
.target Gryfe
step
.isQuestComplete 4507
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4507 >> Turn in Pawn Captures Queen
.accept 4508 >> Accept Calm Before the Storm
.target Alchemist Pestlezugg
step
.abandon 4507 >> Abandon Pawn Captures Queen
step
#label GadgetzanTurnins
#label end
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 4504 >> Turn in Super Sticky
.target Tran'rek
]]);
