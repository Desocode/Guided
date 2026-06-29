RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 50-60
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 51-52 WPL
#next 52-52 Felwood
step
#sticky
#completewith next
.zone Ironforge >> Head to Ironforge
step
#completewith CHam
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Hammerfall|r
>>|cRXP_FRIENDLY_Courier Hammerfall|r |cRXP_WARN_patrols through all of Ironforge|r
.accept 5090 >> Accept A Call to Arms: The Plaguelands!
.unitscan Courier Hammerfall
step
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laris Geardawdle|r
.accept 4512 >> Accept A Little Slime Goes a Long Way
.target Laris Geardawdle
step
.isQuestTurnedIn 3181
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
>>|cRXP_FRIENDLY_Curator Thorius|r |cRXP_WARN_patrols through the Hall of Explorers|r
.turnin 3182 >> Turn in Proof of Deed
.accept 3201 >> Accept At Last!
.target Curator Thorius
step
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
>>|cRXP_FRIENDLY_Curator Thorius|r |cRXP_WARN_patrols through the Hall of Explorers|r
.turnin 3368 >> Turn in Suntara Stones
.target Curator Thorius
step
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r
.accept 3448 >> Accept Passing the Burden
.target Historian Karnik
step << Rogue
.goto Ironforge,51.981,14.851
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
.trainer >> Train your class spells
.target Hulfdan Blackbeard
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warlock
#phase 1-3
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.trainer >> Train your class spells
.target Briarthorn
step << Warlock
#phase 4-6
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.trainer >> Train your class spells
.accept 8419 >> Accept An Imp's Request
.target Briarthorn
step
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tymor|r
.turnin 3448 >> Turn in Passing the Burden
.accept 3449 >> Accept Arcane Runes
.accept 3450 >> Accept An Easy Pickup
.target Tymor
step << Paladin
#phase 4-6
.goto Ironforge,23.126,6.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
.trainer >> Train your class spells
.target Brandur Ironhammer
.accept 8415 >> Accept Chillwind Point
step << Paladin
#phase 1-3
.goto Ironforge,23.126,6.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
.trainer >> Train your class spells
.target Brandur Ironhammer
step << Priest
.goto Ironforge,26.970,7.323,15,0
.goto Ironforge,24.337,10.433,5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Rohan|r
.trainer >> Train your class spells
.target High Priest Rohan
step
.goto Ironforge,18.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
.home Ironforge >> Set your Hearthstone to Ironforge
.target Innkeeper Firebrew
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankwithdraw 10819,9328,9330 >> Withdraw the following items from your bank:
>>|T132927:0|t[Wildkin Feather] 
>>|T134442:0|t[Super Snapper FX] 
>>|T134300:0|t[Snapshot of Gammerita] 
.target Bailey Stonemantle
step
#sticky
.goto Ironforge,74.082,48.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
>>Do the Gnomeregan cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7807 >> Turn in A Donation of Wool
.turnin 7808 >> Turn in A Donation of Silk
.turnin 7809 >> Turn in A Donation of Mageweave
.turnin 7811 >> Turn in A Donation of Runecloth
.zoneskip Ironforge,1
.target Bubulo Acerbus
step
#sticky
.goto Ironforge,43.224,31.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
>>Do the Ironforge cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7802 >> Turn in A Donation of Wool
.turnin 7803 >> Turn in A Donation of Silk
.turnin 7804 >> Turn in A Donation of Mageweave
.turnin 7805 >> Turn in A Donation of Runecloth
.zoneskip Ironforge,1
.target Mistina Steelshield
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T133021:0|t[Mithril Casing] |cRXP_BUY_from the Auction House. You will need this later for a quest in Un'Goro Crater|r
>>|cRXP_WARN_Skip this step if you can't acquire one|r
.collect 10561,1,4244,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << Warrior
.goto Ironforge,65.905,88.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
.trainer >> Train your class spells
.target Bilban Tosslespanner
step << Hunter
.goto Ironforge,70.889,83.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olmin Burningbeard|r
.trainer >> Train your class spells
.target Olmin Burningbeard
step << Hunter
#era
#phase 4-6
.goto Ironforge,70.90,83.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olmin Burningbeard|r
.accept 8151 >> Accept The Hunter's Charm
.target Olmin Burningbeard
step
#label CHam
.goto Ironforge,70.860,94.570
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiggs Fuselighter|r
.turnin 3450 >> Turn in An Easy Pickup
.accept 3451 >> Accept Signal for Pickup
.turnin 3451 >> Turn in Signal for Pickup
.target Xiggs Fuselighter
step
#som
#phase 3-6
.abandon 3449 >> Abandon Arcane Runes
>>You can also throw away the |T134537:0|t[Standard Issue Flare Gun] since it's no longer needed
step
.goto Ironforge,33.4,20.0,70,0
.goto Ironforge,25.6,61.6,70,0
.goto Ironforge,64.8,77.8,70,0
.goto Ironforge,70.6,48.0,70,0
.goto Ironforge,65.0,22.6,70,0
.goto Ironforge,50.4,10.4,70,0
.goto Ironforge,32.6,21.0,70,0
.goto Ironforge,40.8,39.4,70,0
.goto Ironforge,51.2,56.6,70,0
.goto Ironforge,55.8,35.2,70,0
.goto Ironforge,33.0,22.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Hammerfall|r
>>|cRXP_FRIENDLY_Courier Hammerfall|r |cRXP_WARN_patrols through all of Ironforge|r
.accept 5090 >> Accept A Call to Arms: The Plaguelands!
.unitscan Courier Hammerfall
step
#completewith next
.isOnQuest 3201
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Loch Modan >> Fly to Loch Modan
.target Gryth Thurden
step
.isOnQuest 3201
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.turnin 3201 >> Turn in At Last!
.target Mountaineer Pebblebitty
step << Rogue
.dungeon ST
#phase 4-6
#completewith AzureBag
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum|r
.fly Southshore>> Fly to Southshore
.zoneskip Loch Modan,1
.target Thorgrum Borrelson
step << Rogue
.dungeon ST
#phase 4-6
#completewith AzureBag
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Southshore>> Fly to Southshore
.zoneskip Ironforge,1
.target Gryth Thurden
step << Rogue
.dungeon ST
#phase 4-6
.goto Hillsbrad Foothills,75.575,22.076,20,0
.goto Alterac Mountains,86.026,78.879
.subzone 3486 >> Travel to Ravenholdt Manor
step << Rogue
.dungeon ST
#phase 4-6
.goto Alterac Mountains,86.026,78.879
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r upstairs
.accept 8234 >> Accept Sealed Azure Bag
.target Lord Jorach Ravenholdt
step << Rogue
.dungeon ST
#phase 4-6
.isOnQuest 8234
#label AzureBag
#completewith Tragan
.goto Hillsbrad Foothills,83.395,32.309,90,0
.goto The Hinterlands,7.50,58.87
.zone The Hinterlands >> Travel to The Hinterlands
step
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum|r
.fly Hinterlands>> Fly to The Hinterlands
.zoneskip Loch Modan,1
.target Thorgrum Borrelson
step
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Hinterlands>> Fly to The Hinterlands
.zoneskip Ironforge,1
.target Gryth Thurden
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.turnin 2989 >> Turn in The Altar of Zul
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.target Fraggar Thundermantle
.turnin 2877 >> Turn in Skulk Rock Clean-up
step
#label Tragan
.goto The Hinterlands,40.63,59.65
>>Loot the |cRXP_LOOT_Violet Tragan|r underwater
.complete 2641,1 
step
#completewith FlyWPL
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
.fly Western Plaguelands>> Fly to Western Plaguelands
.target Guthrum Thunderfist
step
#optional
.isOnQuest 5066
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5066 >> Turn in A Call to Arms: The Plaguelands!
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step
#optional
.isQuestTurnedIn 5066
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step
#optional
.isOnQuest 5091
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5091 >> Turn in A Call to Arms: The Plaguelands!
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step
#optional
.isQuestTurnedIn 5091
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step
.isOnQuest 5090
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5090 >> Turn in A Call to Arms: The Plaguelands!
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step
.isQuestTurnedIn 5090
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step << Paladin
#phase 4-6
#era
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8415 >> Turn in Chillwind Point
.accept 8414 >> Accept Dispelling Evil
.target Commander Ashlam Valorfist
step << Paladin
#phase 4-6
#som
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 8414 >> Accept Dispelling Evil
.target Commander Ashlam Valorfist
step
.goto Western Plaguelands,42.968,83.546
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
.accept 5401 >> Accept Argent Dawn Commission
.turnin 5401 >> Turn in Argent Dawn Commission
.target Argent Officer Pureheart
step
#completewith next
.cast 17670 >> |cRXP_WARN_Equip the|r |T133440:0|t[Argent Dawn Commission] |cRXP_WARN_to start collecting|r |T133447:0|t[Scourgestones]
.use 12846
step << Paladin
#phase 4-6
#completewith BLTN
>>Kill any of the |cRXP_ENEMY_Scourge|r. Loot them for their |cRXP_LOOT_Minion's Scourgestones|r
.complete 8414,1 
step
#label FlyWPL
.goto Western Plaguelands,48.91,80.84,70,0
.goto Western Plaguelands,50.01,76.90
>>Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Slavering Ghouls|r
.complete 5092,1 
.mob +Skeletal Flayer
.complete 5092,2 
.mob +Slavering Ghoul
step << Paladin
#phase 4-6
#optional
.isQuestComplete 8414
.goto Western Plaguelands,51.99,82.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Thel'danis|r
.turnin 8414 >> Turn in Dispelling Evil
.accept 8416 >> Accept Inert Scourgestones
.target High Priest Thel'danis
step << Paladin
#phase 4-6
#optional
.isQuestTurnedIn 8414
.goto Western Plaguelands,51.99,82.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Thel'danis|r
.accept 8416 >> Accept Inert Scourgestones
.target High Priest Thel'danis
step
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5092 >> Turn in Clear the Way
.accept 5215 >> Accept The Scourge Cauldrons
.target Commander Ashlam Valorfist
step
step << Paladin
#phase 4-6
#optional
.isOnQuest 8416
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8416 >> Turn in Inert Scourgestones
.target Commander Ashlam Valorfist
step << Paladin
.dungeon ST
#phase 4-6
.isQuestTurnedIn 8416
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 8418 >> Accept Forging the Mightstone
.target Commander Ashlam Valorfist
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5215 >> Turn in The Scourge Cauldrons
.accept 5216 >> Accept Target: Felstone Field
.target High Priestess MacDonnell
step
.goto Western Plaguelands,37.015,57.145
>>Kill |cRXP_ENEMY_Cauldron Lord Bilemaw|r. Loot him for the |cRXP_LOOT_Felstone Field Cauldron Key|r
>>|cRXP_ENEMY_Cauldron Lord Bilemaw|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
.complete 5216,1 
.unitscan Cauldron Lord Bilemaw
step
.goto Western Plaguelands,37.194,56.860
>>Click on the |cRXP_PICK_Scourge Cauldron|r
.turnin 5216 >> Turn in Target: Felstone Field
.accept 5217 >> Accept Return to Chillwind Camp
step
#completewith next
.goto Western Plaguelands,38.05,54.59,12 >>Go inside the house
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Felstone|r up stairs
.accept 5021 >>Accept Better Late Than Never
.target Janice Felstone
step
#completewith next
.goto Western Plaguelands,38.05,54.56,8,0
>>Exit the house
.goto Western Plaguelands,38.58,55.33,6 >>Go inside the barn
step
#label BLTN
.goto Western Plaguelands,38.72,55.24
>>Click |cRXP_PICK_Janice's Parcel|r on the ground
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_You can do this from behind the wall to avoid aggroing anything inside|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r outside the barn. If you do, run away|r
.turnin 5021 >>Turn in Better Late Than Never
.accept 5022 >>Accept Better Late Than Never
step << Hunter
.xp 52-16950 >> Grind until you are 16950 XP away from 52
>>If you are not yet close, do one more Cauldron quest to get you where you need to be
step << Paladin
#phase 4-6
.isOnQuest 8414
.goto Western Plaguelands,37.194,56.860
>>Kill any of the |cRXP_ENEMY_Scourge|r. Loot them for their |cRXP_LOOT_Minion's Scourgestones|r
.complete 8414,1 
step
#softcore
#completewith next
.deathskip >> Die and respawn at the Chillwind Camp Spirit Healer
.target Spirit Healer
step
#completewith next
.subzone 3197 >> Travel to Chillwind Camp
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5217 >> Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
step << Paladin
#phase 4-6
#era
.goto Western Plaguelands,51.99,82.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Thel'danis|r
.turnin 8414 >> Turn in Dispelling Evil
.accept 8416 >> Accept Inert Scourgestones
.target High Priest Thel'danis
step << Paladin
#phase 4-6
#som
.goto Western Plaguelands,51.99,82.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Thel'danis|r
.turnin 8414 >> Turn in Dispelling Evil
.accept 8416 >> Accept Inert Scourgestones
.target High Priest Thel'danis
step << Paladin
#phase 4-6
#era
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8416 >> Turn in Inert Scourgestones
.target Commander Ashlam Valorfist
step << Paladin
#phase 4-6
#som
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8416 >> Turn in Inert Scourgestones
.target Commander Ashlam Valorfist
step << Paladin
.dungeon ST
#phase 4-6
.isQuestTurnedIn 8416
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 8418 >> Accept Forging the Mightstone
.target Commander Ashlam Valorfist
step << !Mage !Druid
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.fly Wetlands>> Fly to Wetlands
.zoneskip Western Plaguelands,1
.target Bibilfaz Featherwhistle
]]);
