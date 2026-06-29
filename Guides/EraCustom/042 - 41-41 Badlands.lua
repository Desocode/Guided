RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 40-50
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 41-41 Badlands
#next 41-43 STV/Swamp of Sorrows
step << Warlock
#label sw1
>>Abandon the following quests, you will pick them up again later:
.abandon 196 >> Abandon Raptor Mastery
.abandon 193 >> Abandon Panther Mastery
step
.isOnQuest 1467
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
.turnin 1467 >> Turn in Reagents for Reclaimers Inc.
.target Roetten Stonehammer
step
.goto Ironforge,74.645,11.742
.target Prospector Stormpike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.accept 707 >> Accept Ironband Wants You!
.turnin 554 >> Turn in Stormpike's Deciphering
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
.turnin 1050 >> Turn in Mythology of the Titans
.target Librarian Mae Paledust
step
.goto Ironforge,50.827,5.621
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 653 >> Turn in Myzrael's Allies
.accept 687 >> Accept Theldurin the Lost
.target Gerrig Bonegrip
.isQuestTurnedIn 652
step << !Druid !Hunter !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,27.18,8.60 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Dink << Mage
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Hunter
.goto Ironforge,71.6,66.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skolmin Goldfury|r inside, on the upper level
>>|cRXP_BUY_Check if|r |cRXP_FRIENDLY_Skolmin|r |cRXP_BUY_has a|r |T135489:0|t[|cRXP_FRIENDLY_Massive Longbow|r] |cRXP_BUY_in stock (it's a limited supply item, |cRXP_WARN_he won't always have it|r). If he has one, buy it.|r |cRXP_WARN_It is a VERY POWERFUL level 42+ weapon|r
.vendor >> |cRXP_BUY_Restock on|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_if needed|r
>>Skip this step if he doesn't have one
.collect 11307,1 
.target Skolmin Goldfury
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.96
.itemcount 11307,<1 
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
.goto Ironforge,70.856,85.839
.train 14925 >>Train |T132270:0|t[Growl (Rank 5)]
.target Belia Thundergranite
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.goto Ironforge,35.90,60.17
.bankdeposit 5862,5826,4502 >> Deposit the following items into your bank:
>>|T132385:0|t[Seaforium Booster] 
>>|T134332:0|t[Kravel's Scheme] 
>>|T134116:0|t[Sample Elven Gem] 
.target Bailey Stonemantle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.goto Ironforge,35.90,60.17
.bankwithdraw 4611,3404,5827 >> Withdraw the following items from your bank:
>>9 |T134564:0|t[Blue Pearls] (If you have them) 
>>|T134304:0|t[Buzzard Wings] (If you have any)
>>|T133469:0|t[Fizzle Brassbolts' Letter] 
.target Bailey Stonemantle
step
#ah
#completewith start
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy the following from the Auction House. This step is optional and will allow you to complete a few extra quests if you have the items|r
>>|T134564:0|t[Blue Pearl]
>>|T134800:0|t[Frost Oil]
>>|T134377:0|t[Gyrochronatom] |cRXP_WARN_(Don't buy this unless you have a|r |T134800:0|t[Frost Oil]|cRXP_WARN_)|r
>>|T132606:0|t[Patterned Bronze Bracers] |cRXP_WARN_(Don't buy this unless you have a|r |T134377:0|t[Gyrochronatom] |cRXP_WARN_and|r |T134800:0|t[Frost Oil]|cRXP_WARN_)|r
>>|T134831:0|t[Healing Potion] |cRXP_WARN_and|r |T134798:0|t[Lesser Invisibility Potion] |cRXP_WARN_(Don't buy this unless you have a|r |T134377:0|t[Gyrochronatom] |cRXP_WARN_and|r |T134800:0|t[Frost Oil]|cRXP_WARN_)|r
.collect 4611,9,705,1 
.collect 3829,1,713,1 
.collect 4389,1,714,1 
.collect 2868,1,716,1 
.collect 929,1,715,1 
.collect 3823,1,715,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#label start
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
>>|cRXP_WARN_If you have used the website unstuck to travel to Ironforge from Wetlands you will not have the Thelsamar flight path. In that case run through Dun Morogh to Loch Modan instead|r
.goto Ironforge,55.501,47.742
.fly Loch Modan >> Fly to Loch Modan
.zoneskip Loch Modan
.target Gryth Thurden
step
.goto Loch Modan,35.534,48.404
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
.home >> Set your Hearthstone to Thelsamar
.target Innkeeper Hearthstove
step
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
.accept 2500 >> Accept Badlands Reagent Run
.target Ghak Healtouch
step
#completewith next
.goto Loch Modan,65.93,65.62,80 >> Travel to Ironband's Excavation Site
step
.goto Loch Modan,65.934,65.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.turnin 707 >> Turn in Ironband Wants You!
.target Prospector Ironband
.accept 738 >> Accept Find Agmond
step
#completewith EnterBandlands
.goto Loch Modan,47.04,79.27,0
.goto Loch Modan,46.71,76.90,65,0
.goto Badlands,49.23,7.80
.zone Badlands >> Travel to Badlands
step
#completewith StudyR
>>Kill |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Gizzards|r and |cRXP_LOOT_Wings|r
>>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Fangs|r
.complete 2500,1 
.collect 3404,4,703,1 
.complete 2500,2 
.mob Starving Buzzard
.mob Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
#label EnterBandlands
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r and |cRXP_FRIENDLY_Sigrun Ironhew|r
.accept 719 >> Accept A Dwarf and His Tools
.target +Prospector Ryedol
.goto Badlands,53.421,43.393
.accept 718 >> Accept Mirages
.target +Sigrun Ironhew
.goto Badlands,53.802,43.301
step
#completewith next
.goto Badlands,53.20,30.57,0
.goto Badlands,43.46,30.54,0
>>Kill |cRXP_ENEMY_Shadowforge Dwarves|r. Loot them for |cRXP_LOOT_Ryedol's Lucky Pick|r
.complete 719,1
.mob Shadowforge Tunneler
.mob Shadowforge Darkweaver
.mob Shadowforge Chanter
.mob Shadowforge Warrior
step
#qremove 3636 
step
.goto Badlands,53.027,33.944
>>Click the |cRXP_PICK_Crumpled Map|r on the ground
>>|cRXP_WARN_NOTE: If you quest log is full, skip this step. You will accept it in a moment|r
.accept 720 >> Accept A Sign of Hope
step
.goto Badlands,53.20,30.57,40,0
.goto Badlands,43.46,30.54,40,0
.goto Badlands,53.20,30.57,40,0
.goto Badlands,43.46,30.54
>>Kill |cRXP_ENEMY_Shadowforge Dwarves|r. Loot them for |cRXP_LOOT_Ryedol's Lucky Pick|r
.complete 719,1
.mob Shadowforge Tunneler
.mob Shadowforge Darkweaver
.mob Shadowforge Chanter
.mob Shadowforge Warrior
step
#completewith next
.goto Badlands,66.92,23.45,50 >> Travel to Camp Kosh
step
.goto Badlands,66.601,21.487,10,0
.goto Badlands,66.604,22.026,10,0
.goto Badlands,66.164,21.886,10,0
.goto Badlands,66.92,23.45
>>Loot the |cRXP_PICK_Supply Crate|r on the ground
>>|cRXP_WARN_The |cRXP_PICK_Supply Crate|r can spawn in a few locations at Camp Kosh|r
.complete 718,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r and |cRXP_FRIENDLY_Prospector Ryedol|r
.turnin 718 >> Turn in Mirages
.accept 733 >> Accept Scrounging
.target +Sigrun Ironhew
.goto Badlands,53.802,43.301
.turnin 719 >> Turn in A Dwarf and His Tools
.target +Prospector Ryedol
.turnin -720 >> Turn in A Sign of Hope
.goto Badlands,53.421,43.393
step << skip
#som
#phase 3-6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r and |cRXP_FRIENDLY_Prospector Ryedol|r
.turnin 718 >> Turn in Mirages
.accept 733 >> Accept Scrounging
.accept 706 >> Accept Fiery Blaze Enchantments
.goto Badlands,53.802,43.301
.turnin 719 >> Turn in A Dwarf and His Tools
.turnin -720 >> Turn in A Sign of Hope
.goto Badlands,53.421,43.393
.target Prospector Ryedol
.target Sigrun Ironhew
step
.goto Badlands,53.027,33.944
>>Click the |cRXP_PICK_Crumpled Map|r on the ground
.accept 720 >> Accept A Sign of Hope
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
.turnin 720 >> Turn in A Sign of Hope
.goto Badlands,53.421,43.393
.target Prospector Ryedol
step
.goto Badlands,42.220,52.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
.turnin 1106 >> Turn in Martek the Exiled
.accept 1108 >> Accept Indurium
.target Martek the Exiled
step
#optional
.goto Badlands,42.388,52.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
>>|cRXP_WARN_Save the|r |T133581:0|t[Flash Bomb] |cRXP_WARN_reward from this quest for killing|r |cRXP_ENEMY_King Bangalash|r |cRXP_WARN_in STV later|r
.accept 705 >> Accept Pearl Diving
.turnin 705 >> Turn in Pearl Diving
.itemcount 4611,9
.target Rigglefuzz
step
.abandon 705 >> Abandon Pearl Diving
step
#completewith Agmond
+Keep the |T133581:0|t[|cRXP_LOOT_Flash Bomb|r] you got from this quest. It can be used to |T136183:0|t[|cRXP_FRIENDLY_Fear|r] all beasts in the target radius for 10 seconds. That fear doesn't break on damage
.itemcount 4852,1 
step
.goto Badlands,42.388,52.927
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.accept 703 >> Accept Barbecued Buzzard Wings
step
#optional
.isQuestComplete 703
.goto Badlands,42.388,52.927
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.turnin 703 >> Turn in Barbecued Buzzard Wings
step
.goto Badlands,61.939,54.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garek|r
.accept 732 >> Accept Tremors of the Earth
.target Garek
step
#som
#phase 3-6
.goto Badlands,68.71,52.68,60,0
.goto Badlands,75.10,66.54,60,0
.goto Badlands,81.90,31.65
>>Kill |cRXP_ENEMY_Scalding Whelps|r. Loot them for the |cRXP_LOOT_Black Drake's Heart|r
>>|cRXP_WARN_You can choose to skip this quest if you wish, as it has a very low drop rate|r
.complete 706,1 
.mob Scalding Whelp
step
#completewith BossThogrun
.line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
>>Kill |cRXP_ENEMY_Boss Tho'grun|r. Loot him for his |cRXP_LOOT_Sign of the Earth|r
>>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols across all of Badlands|r
.complete 732,1 
.unitscan Boss Tho'grun
step
#label Agmond
.goto Badlands,50.892,62.402
>>Click the |cRXP_PICK_Battered Dwarven Skeleton|r
.turnin 738 >> Turn in Find Agmond
.accept 739 >> Accept Murdaloc
step
#completewith ScrollFragments
.goto Badlands,49.58,66.66,0
>>Kill |cRXP_ENEMY_Stonevault Bonesnappers|r and |cRXP_ENEMY_Murdaloc|r. Loot them for their |cRXP_LOOT_Indurium|r
.complete 739,2 
.mob +Stonevault Bonesnapper
.complete 739,1 
.mob +Murdaloc
.complete 1108,1 
.mob +Stonevault Bonesnapper
step
.isQuestTurnedIn 653
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.turnin 687 >> Turn in Theldurin the Lost
.accept 692 >> Accept The Lost Fragments
.target Theldurin the Lost
step
.goto Badlands,54.66,83.91
>>Kill |cRXP_ENEMY_Enraged Rock Elementals|r. Loot them for their |cRXP_LOOT_Scroll Fragments|r
.complete 692,1
.complete 692,2
.complete 692,3
.isOnQuest 692
.mob Enraged Rock Elemental
step
#label ScrollFragments
.isOnQuest 692
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.turnin 692 >> Turn in The Lost Fragments
.target Theldurin the Lost
step
>>Kill |cRXP_ENEMY_Stonevault Bonesnappers|r and |cRXP_ENEMY_Murdaloc|r. Loot them for their |cRXP_LOOT_Indurium|r
.complete 739,2 
.mob +Stonevault Bonesnapper
.goto Badlands,53.0,72.2,40,0
.goto Badlands,47.2,70.6,40,0
.goto Badlands,52.4,66.2,40,0
.goto Badlands,50.36,69.12
.complete 739,1 
.mob +Murdaloc
.goto Badlands,49.58,66.66
.complete 1108,1 
.goto Badlands,53.0,72.2,40,0
.goto Badlands,47.2,70.6,40,0
.goto Badlands,52.4,66.2,40,0
.goto Badlands,50.36,69.12
.mob +Stonevault Bonesnapper
step
.goto Badlands,42.220,52.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
.turnin 1108 >> Turn in Indurium
.timer 20,Indurium RP
.accept 1137 >> Accept News for Fizzle
.target Martek the Exiled
step
#optional
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.target Lotwil Veriatus
.accept 713 >> Accept Coolant Heads Prevail
.turnin 713 >> Turn in Coolant Heads Prevail
.itemcount 3829,1
step
#optional
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.target Lotwil Veriatus
.accept 714 >> Accept Gyro... What?
.turnin 714 >> Turn in Gyro... What?
.itemcount 4389,1
.isQuestTurnedIn 713
step
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.accept 710 >> Accept Study of the Elements: Rock
step
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8,60,0
.goto Badlands,13.8,38.6,60,0
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8
>>Kill |cRXP_ENEMY_Lesser Rock Elementals|r. Loot them for their |cRXP_LOOT_Small Stone Shards|r and |cRXP_LOOT_Rock Elemental Shards|r
>>|cRXP_WARN_You don't have to collect all |cRXP_LOOT_Rock Elemental Shards|r right now|r
.complete 710,1 
.complete 2500,3 
.disablecheckbox
.mob Lesser Rock Elemental
step
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 710 >> Turn in Study of the Elements: Rock
.accept 711 >> Accept Study of the Elements: Rock
.target Lotwil Veriatus
step
.goto Badlands,14.70,35.30
>>Kill |cRXP_ENEMY_Rock Elementals|r. Loot them for their |cRXP_LOOT_Large Stone Slabs|r and |cRXP_LOOT_Rock Elemental Shards|r
>>|cRXP_WARN_You don't have to collect all |cRXP_LOOT_Rock Elemental Shards|r right now|r
.complete 711,1 
.complete 2500,3 
.disablecheckbox
.mob Rock Elemental
step
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 711 >> Turn in Study of the Elements: Rock
.accept 712 >> Accept Study of the Elements: Rock
.target Lotwil Veriatus
step
#completewith next
#label OgreScrapMetal
>>Kill |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for their |cRXP_LOOT_Scrap Metal|r
.complete 733,1 
.mob Dustbelcher Wyrmhunter
.mob Dustbelcher Mauler
.mob Dustbelcher Shaman
step
.goto Badlands,4.33,77.75,70,0
.goto Badlands,2.70,81.25,50,0
.goto Badlands,14.68,89.49,70,0
.goto Badlands,2.70,81.25
>>Kill |cRXP_ENEMY_Greater Rock Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r and |cRXP_LOOT_Rock Elemental Shards|r
.complete 712,1 
.complete 2500,3 
.mob Greater Rock Elemental
step
#label StudyR
.goto Badlands,13.6,74.8
.goto Badlands,8.6,75.8,55,0
.goto Badlands,11.0,80.0,55,0
.goto Badlands,8.0,83.6,55,0
.goto Badlands,8.6,75.8,55,0
.goto Badlands,11.0,80.0,55,0
.goto Badlands,8.0,83.6,55,0
.goto Badlands,11.0,80.0
>>Kill |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for their |cRXP_LOOT_Scrap Metal|r
.complete 733,1 
.mob Dustbelcher Wyrmhunter
.mob Dustbelcher Mauler
.mob Dustbelcher Shaman
step
>>Kill |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Gizzards|r and |cRXP_LOOT_Wings|r
>>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Fangs|r
.complete 2500,1 
.mob +Starving Buzzard
.mob +Buzzard
.mob +Giant Buzzard
.goto Badlands,49.8,53.0,80,0
.goto Badlands,56.2,67.2,80,0
.goto Badlands,50.6,74.8,80,0
.goto Badlands,60.0,70.6,80,0
.goto Badlands,60.8,53.4,80,0
.goto Badlands,55.8,60.2
.complete 703,1 
.mob +Starving Buzzard
.mob +Buzzard
.mob +Giant Buzzard
.goto Badlands,49.8,53.0,80,0
.goto Badlands,56.2,67.2,80,0
.goto Badlands,50.6,74.8,80,0
.goto Badlands,60.0,70.6,80,0
.goto Badlands,60.8,53.4,80,0
.goto Badlands,55.8,60.2
.complete 2500,2 
.mob +Crag Coyote
.mob +Feral Crag Coyote
.mob +Rabid Crag Coyote
.mob +Elder Crag Coyote
.goto Badlands,49.0,32.4,80,0
.goto Badlands,49.2,48.8,80,0
.goto Badlands,57.8,47.7,80,0
.goto Badlands,56.6,73.8,80,0
.goto Badlands,58.8,54.0
step
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 712 >> Turn in Study of the Elements: Rock
step
#optional
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.target Lotwil Veriatus
.accept 734 >> Accept This Is Going to Be Hard
step
#optional
.isQuestTurnedIn 714
.goto Badlands,25.82,44.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
.turnin 734 >>Turn in This Is Going to Be Hard
.target Lucien Tosselwrench
.accept 777 >>Accept This Is Going to Be Hard
step
#optional
.isQuestTurnedIn 714
.target Lucien Tosselwrench
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
.accept 716 >>Accept Stone Is Better than Cloth
.turnin 716 >>Turn in Stone Is Better than Cloth
.itemcount 2868,1
step
#optional
.isQuestTurnedIn 714
.target Lucien Tosselwrench
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
.accept 715 >>Accept Liquid Stone
.turnin 715 >>Turn in Liquid Stone
.itemcount 3823,1
.itemcount 929,1
step
#optional
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 777 >>Turn in This Is Going to Be Hard
.target Lotwil Veriatus
.accept 778 >>Accept This Is Going to Be Hard
step
#optional
.isQuestTurnedIn 714
.goto Badlands,26.07,46.69
>>Kill the |cRXP_ENEMY_Fam'Retor Guardian|r. Loot it for its |cRXP_LOOT_Shackles|r
.complete 778,1 
.mob Fam'retor Guardian
step
#optional
#label LFGUlda
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 778 >>Turn in This Is Going to Be Hard
step
.goto Badlands,42.388,52.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.turnin 703 >> Turn in Barbecued Buzzard Wings
.target Rigglefuzz
step
#label BossThogrun
.goto Badlands,53.802,43.301
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.turnin 733 >> Turn in Scrounging
.target Sigrun Ironhew
step << skip
#som
#phase 3-6
#label BossThogrun
.isQuestComplete 733
.isQuestComplete 706
.goto Badlands,53.802,43.301
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.turnin 733 >> Turn in Scrounging
.turnin 706 >> Turn in Fiery Blaze Enchantments
.target Sigrun Ironhew
step << skip
#som
#phase 3-6
#label BossThogrun
.isQuestComplete 733
.goto Badlands,53.802,43.301
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.turnin 733 >> Turn in Scrounging
.target Sigrun Ironhew
step << skip
#som
#phase 3-6
#label BossThogrun
.isQuestComplete 706
.goto Badlands,53.802,43.301
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.turnin 706 >> Turn in Fiery Blaze Enchantments
.target Sigrun Ironhew
step
#loop
.line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
.goto Badlands,36.37,71.63,60,0
.goto Badlands,39.75,72.36,60,0
.goto Badlands,43.61,72.61,60,0
.goto Badlands,51.70,73.52,60,0
.goto Badlands,61.89,67.68,60,0
.goto Badlands,54.73,58.52,60,0
.goto Badlands,48.53,53.02,60,0
.goto Badlands,45.44,51.70,60,0
.goto Badlands,41.01,54.95,60,0
.goto Badlands,35.35,56.99,60,0
.goto Badlands,28.17,56.44,60,0
.goto Badlands,19.50,57.77,60,0
.goto Badlands,16.05,64.35,60,0
.goto Badlands,12.51,72.73,60,0
.goto Badlands,12.85,77.42,60,0
.goto Badlands,14.51,79.15,60,0
.goto Badlands,21.83,78.10,60,0
.goto Badlands,25.39,73.02,60,0
.goto Badlands,32.13,74.04,60,0
.goto Badlands,36.37,71.63,60,0
>>Kill |cRXP_ENEMY_Boss Tho'grun|r. Loot him for his |cRXP_LOOT_Sign of the Earth|r
>>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols across all of Badlands|r
.complete 732,1 
.unitscan Boss Tho'grun
step
.goto Badlands,61.939,54.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garek|r
.turnin 732 >> Turn in Tremors of the Earth
.target Garek
step
#optional
#completewith Murdaloc
.abandon 706 >> Abandon Fiery Blaze Enchantments
step
#softcore
#completewith next
.goto Badlands,3.62,61.88,50,0
.goto Searing Gorge,72.34,55.47
.zone Searing Gorge >> Ride to Searing Gorge
step
#softcore
#completewith next
.goto Searing Gorge,63.40,60.83
.deathskip >> Once you get to Searing Gorge, die and respawn at Thorium Point
.target Spirit Healer
step
#softcore
.goto Searing Gorge,37.934,30.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
.fp Thorium Point >> Get the Thorium Point flight path
.target Lanie Reed
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
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << Warlock
#softcore
.zone Loch Modan >> If you didn't abandon the Panther and Tiger quests earlier, Hearth to Loch Modan. If you did, Fly to Loch Modan
step << !Warlock
.hs >> Hearth to Loch Modan
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << Warlock
#hardcore
#completewith next
.zone Loch Modan >> Run Back to Loch Modan
step << Warlock
#hardcore
.goto Loch Modan,65.934,65.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.turnin 739 >> Turn in Murdaloc
.target Prospector Ironband
step
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
.turnin 2500 >> Turn in Badlands Reagent Run
.target Ghak Healtouch
step
#completewith FlyIF
.destroy 7846 >> Delete any extra |T134298:0|t[Crag Coyote Fangs] you still have
step
#label Murdaloc
.goto Loch Modan,65.934,65.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.turnin 739 >> Turn in Murdaloc
.target Prospector Ironband
step
#softcore
#completewith next
.goto Loch Modan,68.47,62.82
.deathskip >> Die on purpose and respawn at the Thelsamar Spirit Healer
.target Spirit Healer
step
#label FlyIF
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
.fly Ironforge >> Fly to Ironforge
.target Thorgrum Borrelson
]]);
