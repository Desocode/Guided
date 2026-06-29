RXPGuides.RegisterGuide([[
#xprate <1.59
#season 0,1
#version 23
#group RestedXP Alliance 20-30
#classic
#tbc
#mop
<< Alliance !Hunter
#name 23-24 Wetlands
#next 24-27 Duskwood/Redridge
step << Mage/Warlock/Paladin
#completewith next
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
step << Mage/Warlock/Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
.goto Ironforge,27.18,8.60 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.trainer >> Train your class spells
.target Dink << Mage
.target Brandur Ironhammer << Paladin
.target Briarthorn << Warlock
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Mage
.goto Ironforge,25.496,7.080
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milstaff Stormeye|r
.trainer >> Train |T135757:0|t[Teleport: Ironforge]
.target Milstaff Stormeye
step << Mage/Warlock/Paladin
.goto Ironforge,55.51,47.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Wetlands>> Fly to Wetlands
.target Gryth Thurden
.zoneskip Wetlands
step
.goto Wetlands,8.509,55.697
.target James Halloran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.accept 484 >> Accept Young Crocolisk Skins
step
#optional
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.turnin 484 >> Turn in Young Crocolisk Skins
.isQuestComplete 484
step
.goto Wetlands,7.95,56.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dewin Shimmerdawn|r
.vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Dewin Shimmerdawn|r doesn't have any|r
.target Dewin Shimmerdawn
step
.goto Wetlands,8.359,58.526
.target Karl Boran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.accept 279 >> Accept Claws from the Deep
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 288 >> Accept The Third Fleet
.accept 463 >> Accept The Greenwarden
step
#completewith menethilend
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
.target Innkeeper Helbrek
.home >> Set your Hearthstone to Menethil Harbor
step
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
>>|cRXP_BUY_Buy a|r |T132792:0|t[Flagon of Dwarven Honeymead]
.target Innkeeper Helbrek
.complete 288,1 
step
#completewith next
.goto Wetlands,10.368,61.016,8 >> Travel upstairs towards |cRXP_FRIENDLY_Archaeologist Flagongut|r
step
.goto Wetlands,10.843,60.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r upstairs
.target Archaeologist Flagongut
.turnin 942 >> Turn in The Absent Minded Prospector
.isOnQuest 942
step
.goto Wetlands,10.496,60.201
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samor Festivus|r upstairs
.vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Samor Festivus|r doesn't have any|r
.target Samor Festivus
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.turnin 288 >> Turn in The Third Fleet
step
#label menethilend
.goto Wetlands,10.4,56.0,25,0
.goto Wetlands,10.1,56.9,25,0
.goto Wetlands,10.6,57.2,25,0
.goto Wetlands,10.761,56.737
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
.target Neal Allen
.bronzetube
step
#completewith crocs
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
.complete 484,1
.mob Young Wetlands Crocolisk
step
.goto Wetlands,18.06,39.83,50,0
.goto Wetlands,13.73,39.38,50,0
.goto Wetlands,18.06,39.83,50,0
.goto Wetlands,16.26,39.41
>>Kill |cRXP_ENEMY_Bluegill Murlocs|r
>>Kill |cRXP_ENEMY_Gobbler|r. Loot him for his |cRXP_LOOT_Head|r
>>Keep any |T134304:0|t[|cRXP_LOOT_Murloc Fins|r] you may get. You will need 8 for a quest later << NightElf
>>|cRXP_ENEMY_Gobbler|r |cRXP_WARN_patrols the Marshlands slightly|r
.complete 279,1 
.complete 279,2 
.collect 1468,8 << NightElf 
.disablecheckbox << NightElf
.mob Bluegill Murloc
.unitscan Gobbler
step
.goto Wetlands,26.40,25.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fradd Swiftgear|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Fradd Swiftgear|r doesn't have one|r
.target Fradd Swiftgear
.bronzetube
step
.goto Wetlands,49.916,39.368
.target Einar Stonegrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einar Stonegrip|r
.accept 469 >> Accept Daily Delivery
step
#completewith next
.goto Wetlands,50.200,37.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kixxle|r
.vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
>>|cRXP_WARN_Buy|r |T134413:0|t[Liferoot] |cRXP_WARN_if |cRXP_FRIENDLY_Kixxle|r has any in stock. You need them for the|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r << Warrior
>>|cRXP_WARN_These are limited supply items. Skip this step if |cRXP_FRIENDLY_Kixxle|r doesn't have any|r << Warrior
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Kixxle|r doesn't have any|r << !Warrior
.target Kixxle
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 463 >> Turn in The Greenwarden
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.accept 276 >> Accept Tramping Paws
.maxlevel 24,crocs
step
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,62.34,69.34
>>Kill |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mongrels|r
>>|cRXP_WARN_This is a great place to farm|r |T132911:0|t[Wool Cloth] |cRXP_WARN_to level up your|r |T135966:0|t[First Aid] |cRXP_WARN_or any other profession that may require it|r
.complete 276,1 
.mob +Mosshide Gnoll
.complete 276,2 
.mob +Mosshide Mongrel
.isOnQuest 276
step
#xprate <1.2
#completewith next
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,62.34,69.34
+Keep grinding |cRXP_ENEMY_Gnolls|r until your hearth has <2 minutes left
.cooldown item,6948,<120
.mob Mosshide Gnoll
.mob Mosshide Mongrel
.dungeon !SFK
step
#label crocs
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.target Rethiel the Greenwarden
.turnin 276 >> Turn in Tramping Paws
.isQuestComplete 276
step
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.target Rethiel the Greenwarden
.accept 277 >> Accept Fire Taboo
.isQuestTurnedIn 276
step
.goto Wetlands,53.2,41.3,55,0
.goto Wetlands,58.5,50.8,55,0
.goto Wetlands,62.1,61.4,55,0
.goto Wetlands,64.0,72.2
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
.complete 484,1
.mob Young Wetlands Crocolisk
step
.dungeon SFK
#completewith next
.goto Wetlands,30.8,31.0,0
.goto Wetlands,37.8,29.6,0
.goto Wetlands,43.0,33.2,0
.zone Arathi Highlands >> Grind |cRXP_ENEMY_Mosshides Gnolls|r while looking for a group for Shadowfang Keep
step
.dungeon SFK
.goto Arathi Highlands,43.01,55.00,90,0
.goto Arathi Highlands,25.45,46.95,90,0
.goto Arathi Highlands,21.29,30.24,70,0
.goto Hillsbrad Foothills,49.338,52.272
>>There are no quests for Shadowfang Keep. You will have to run from Wetlands to Silverpine Forest. Ensure you stay on the road while running through Arathi Highlands, and watchout for the |cRXP_ENEMY_Forsaken Courier|r
>>|cRXP_WARN_You don't need to get the Arathi Highlands flight path yet|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fp Southshore >> Get the Southshore Flight Path
.target Cedrik Prose
.target Darla Harris
.unitscan Forsaken Courier
step
.dungeon SFK
.goto Hillsbrad Foothills,14.77,46.72,0
.goto Silverpine Forest,44.96,67.92,0
.goto Hillsbrad Foothills,14.77,46.72,100,0
.goto Silverpine Forest,47.19,69.78,100,0
.goto Silverpine Forest,44.712,67.769
.subzone 209,2 >> Enter Shadowfang Keep
step
+There are no quests for Shadowfang Keep
>>Clear Shadowfang Keep. Leave when you are finished
.zoneskip 209,1
.dungeon SFK
step
.goto Wetlands,63.9,78.6
.hs >> Hearth to Menethil Harbor
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.subzoneskip 150
.subzoneskip 2103
.subzoneskip 2104
.zoneskip Loch Modan
.dungeon SFK
step
#xprate <1.2
.goto Wetlands,61.91,71.32,-1 
.goto Wetlands,18.67,39.69,-1 
.xp 24 >> Grind to level 24
step << skip 
#xprate >1.49
.goto Wetlands,63.9,78.6
.hs >> Hearth to Menethil Harbor
>>|cRXP_WARN_If your hearthstone is still on cooldown, perform a logout skip by the cave near the dam to teleport to Loch Modan|r
.link https://www.youtube.com/watch?v=21CuGto26Mk >> |cRXP_WARN_CLICK HERE for a reference|r
.subzoneskip 150
.subzoneskip 2103
.subzoneskip 2104
.zoneskip Loch Modan
.dungeon !SFK
step
#xprate <1.5
#completewith next
.hs >> Hearth to Menethil Harbor
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
.dungeon !SFK
step
#season 0 << NightElf Priest
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >> Turn in Claws from the Deep
.target Karl Boran
.zoneskip Loch Modan
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.turnin 469 >> Turn in Daily Delivery
.turnin 484 >> Turn in Young Crocolisk Skins
.target James Halloran
.zoneskip Loch Modan
step
#xprate >1.49
.goto Wetlands,8.30,58.53
.abandon 276 >> Abandon Tramping Paws
step
.goto Wetlands,9.490,59.693,-1
.goto Loch Modan,33.938,50.954,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
.target Thorgrum Borrelson
step << skip 
#xprate >1.59
#completewith next
#optional
.goto 1455,38.628,56.436
.zone Dun Morogh >>|cRXP_WARN_Jump on top of either shoulder of the throne, then perform a Logout Skip by logging out and back in|r
.isOnQuest 1653
.dungeon DM
step << Paladin
#xprate >1.59
.goto 1426,52.487,36.918
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Stilwell|r
.turnin 1653 >>Turn in The Test of Righteousness
.target Jordan Stilwell
.isOnQuest 1653
.dungeon DM
step
#optional
#sticky
#label Powers
>>|cRXP_WARN_Use the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] to start the quest|r
.accept 968 >> Accept The Powers Below
.use 5352
.itemcount 5352,1
step
#ssf
>>Gather 4 |T134850:0|t[Minor Mana Potions] and 2 |T134822:0|t[Elixir of Minor Fortitudes]
>>|cRXP_WARN_Use your|r |T136240:0|t[Alchemy] |cRXP_WARN_profession to craft them if possible|r
>>|cRXP_WARN_If you are unable to acquire them, skip this step|r
.collect 2455,4,1073,1 
.collect 2458,2,1073,1 
.skill alchemy,<1,1 
.isOnQuest 1072
step
#ah
.goto Ironforge,24.94,73.66,0
>>Gather 4 |T134850:0|t[Minor Mana Potions] and 2 |T134822:0|t[Elixir of Minor Fortitudes]
>>|cRXP_WARN_You can buy these from the Auction House or trade players for them|r
>>|cRXP_WARN_If you are unable to acquire them, skip this step|r
.collect 2455,4,1073,1 
.collect 2458,2,1073,1 
.isOnQuest 1072
step << Warrior
.goto Ironforge,61.177,89.508
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buliwyf Stonehand|r inside
.train 197 >> Train 2h Axes
.train 199 >> Train 2h Maces << NightElf
.target Buliwyf Stonehand
step << !Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,27.18,8.60 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Dink << Mage
.target Brandur Ironhammer << Paladin
step
#requires Powers
.goto Ironforge,50.826,5.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 968 >> Turn in The Powers Below
.target Gerrig Bonegrip
.isOnQuest 968
step
.goto Ironforge,67.844,42.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Gearcutter Cogspinner|r doesn't have one|r
.target Gearcutter Cogspinner
.bronzetube
step
.goto Ironforge,72.08,51.87
.target Lomac Gearstrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
.turnin 1072 >> Turn in An Old Colleague
.isOnQuest 1072
step
.isQuestTurnedIn 1072
.goto Ironforge,72.08,51.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
.accept 1073 >> Accept Ineptitude + Chemicals = Fun
.turnin 1073 >> Turn in Ineptitude + Chemicals = Fun
.itemcount 2455,4 
.itemcount 2458,2 
.target Lomac Gearstrip
step
.goto Ironforge,76.61,51.28,10,0
.zone Stormwind City >> Take the tram to Stormwind
]]);
