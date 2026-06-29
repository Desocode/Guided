RXPGuides.RegisterGuide([[
#xprate <1.59
#season 0,1
#version 23
#group RestedXP Alliance 20-30
#classic
#tbc
#mop
<< Alliance Hunter
#name 23-24 Wetlands
#next 24-27 Duskwood/Redridge
step
#optional
#completewith next
>>Jump off the boat when it's closest to Menethil Harbor's shore
.goto Wetlands,8.509,55.697,70 >> Swim toward Menethil Harbor
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.accept 484 >> Accept Young Crocolisk Skins
.target James Halloran
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
step << NightElf
.goto Wetlands,9.49,59.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fp Wetlands>> Get the Wetlands flight path
.target Shellei Brondir
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
>>|cRXP_BUY_Buy a|r |T132792:0|t[Flagon of Dwarven Honeymead] |cRXP_BUY_from him|r
>>|cRXP_BUY_Restock on Food and Water if necessary|r
>>|cRXP_BUY_Buy some extra|r |T133970:0|t[Mutton Chops] |cRXP_BUY_to serve as pet food if needed|r << Hunter
.complete 288,1 
step
.goto Wetlands,10.843,60.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r up stairs
.target Archaeologist Flagongut
.turnin 942 >> Turn in The Absent Minded Prospector
.accept 943 >> Accept The Absent Minded Prospector
.isOnQuest 942
step
#optional
.goto Wetlands,10.843,60.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r up stairs
.target Archaeologist Flagongut
.accept 943 >> Accept The Absent Minded Prospector
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
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwina Monzor|r
.goto Wetlands,11.0,58.6
.collect 3030,2000 >> |cRXP_BUY_Delete all your|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_and buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her untill your quiver is full|r
>>|cRXP_WARN_Remember to equip (right click) the new arrows afterward!|r
.xp <25,1
.target Edwina Monzor
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwina Monzor|r
.goto Wetlands,11.0,58.6
.vendor >> |cRXP_BUY_Restock on|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_if needed. If you're close to level 25 you can buy some|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her as well|r
.xp >25,1
.target Edwina Monzor
step
.goto Wetlands,11.796,57.991
.target Sida
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
.accept 470 >> Accept Digging Through the Ooze
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
step << Hunter
.goto Wetlands,11.458,52.163
.target Tarrel Rockweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.accept 305 >> Accept In Search of The Excavation Team
step
#completewith OrmerStart << Hunter
#completewith RaptorsOne << !Hunter
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |T134304:0|t|cRXP_LOOT_Young Crocolisk Skin|r
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
#ssf
.goto Wetlands,26.40,25.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fradd Swiftgear|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Fradd Swiftgear|r doesn't have one|r
.target Fradd Swiftgear
.bronzetube
step << Hunter
#completewith fossil
.isQuestTurnedIn 942
>>Kill |cRXP_ENEMY_Raptors|r throughout Wetlands. Loot them for the |cRXP_LOOT_Stone of Relu|r
>>|cRXP_WARN_Don't go out of your way to complete this now. You will kill different |cRXP_ENEMY_Raptors|r later|r
.complete 943,1 
.mob Mottled Raptor
.mob Mottled Screecher
.mob Mottled Scytheclaw
.mob Mottled Razormaw
step << Hunter
#label OrmerStart
.goto Wetlands,38.17,50.88
.target Ormer Ironbraid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.accept 294 >> Accept Ormer's Revenge
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrin Rockweaver|r
.turnin 305 >> Turn in In Search of The Excavation Team
>>Skip the follow-up
.goto Wetlands,38.909,52.340
.target Merrin Rockweaver
step
.isQuestTurnedIn 942
.goto Wetlands,38.858,52.208
>>Loot |cRXP_LOOT_Flagongut's Fossil|r on the ground
.complete 943,2 
step << Hunter
.goto Wetlands,36.41,41.72,100 >> Head down the ramp and exit Whelgar's Excavation Site
step << Hunter
#completewith RaptorsOne
>>Be on the lookout for |cRXP_ENEMY_Black Oozes|r while killing the raptors. Kill them and loot for |T133624:0|t[|cRXP_LOOT_Sida's Bag|r]
>>|cRXP_WARN_This item has a low droprate, don't go out of your way to find the Oozes, you can complete this objective later|r
.complete 470,1 
.isOnQuest 470
step << Hunter
.goto Wetlands,22.4,50.0,70,0
.goto Wetlands,23.0,55.2,70,0
.goto Wetlands,24.4,52.2,70,0
.goto Wetlands,26.2,47.7,70,0
.goto Wetlands,27.8,44.6,70,0
.goto Wetlands,31.4,42.0,70,0
.goto Wetlands,22.8,50.6
>>Kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r
.complete 294,1 
.mob +Mottled Raptor
.complete 294,2 
.mob +Mottled Screecher
step
#label RaptorsOne
.goto Wetlands,37.22,43.89,45,0
.goto Wetlands,38.17,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 294 >>Turn in Ormer's Revenge
.accept 295 >>Accept Ormer's Revenge
.target Ormer Ironbraid
step
.goto Wetlands,35.05,44.06,60,0
.goto Wetlands,34.85,49.36,60,0
.goto Wetlands,30.75,48.50,60,0
.goto Wetlands,34.33,47.81
>>Kill |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r
>>|cRXP_WARN_This quest is HARD as the mobs are much higher level than you but the weapon you get as a reward is well worth the effort|r << Hunter
>>|cRXP_WARN_I recommend using the spot from a video linked below to abuse mob pathing which will make doing the quest significantly easier|r << Hunter
.link https://youtu.be/TxhLRt-IetU >> Click here for a reference video << Hunter
.complete 295,1 
.mob +Mottled Scytheclaw
.complete 295,2 
.mob +Mottled Razormaw
step
.goto Wetlands,38.17,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 295 >>Turn in Ormer's Revenge
.accept 296 >>Accept Ormer's Revenge
.target Ormer Ironbraid
step
.goto Wetlands,31.410,49.518,30,0
.goto Wetlands,33.25,51.50
>>Kill |cRXP_ENEMY_Sarltooth|r. Loot him for his |cRXP_LOOT_Talon|r
>>|cRXP_WARN_He is usually on the hill above the main excavation site but can sometimes patrol down|r
>>|cRXP_WARN_Be careful as he can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
>>|cRXP_WARN_This quest is VERY HARD as he is level 29. Use the pathing spot from the previous quest to be able to kite him indefinitely|r << Hunter
.link https://youtu.be/PAeOcxOgSNg >> Click here for a reference video << Hunter
.complete 296,1 
.unitscan Sarltooth
step
#label fossil
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 296 >>Turn in Ormer's Revenge << !Hunter
.turnin 296,1 >>Turn in Ormer's Revenge << Hunter
.goto Wetlands,38.17,50.88
.target Ormer Ironbraid
step << skip 
#completewith next
.goto Wetlands,38.984,52.604
+Logout skip to the Wetlands Graveyard by logging out on the Mushroom at the back of the cave
.subzoneskip 118,1
step
#completewith crocs
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |T134304:0|t|cRXP_LOOT_Young Crocolisk Skin|r
.complete 484,1
.mob Young Wetlands Crocolisk
step << Hunter
#completewith next
+|cRXP_WARN_Equip the|r |T135491:0|t[|cRXP_FRIENDLY_Raptor's End|r]
.use 3493
.itemcount 3493,1
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.06
step << Priest/Mage/Warlock
#completewith next
+|cRXP_WARN_Equip the|r |T135139:0|t[|cRXP_FRIENDLY_Excavation Rod|r]
.use 5246
.itemcount 5246,1
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<24.20
step
#xprate <1.99
.goto Wetlands,49.916,39.368
.target Einar Stonegrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einar Stonegrip|r
.accept 469 >> Accept Daily Delivery
step
#completewith next
.goto Wetlands,50.200,37.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kixxle|r
.vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
.target Kixxle
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 463 >> Turn in The Greenwarden
.xp <25,1
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 463 >> Turn in The Greenwarden
.accept 276 >> Accept Tramping Paws
.xp >25,1
step
#completewith TrampingPaws
>>You might pass a pair of |cRXP_ENEMY_Black Oozes|r while heading south to the Gnolls. Kill them and loot for |T133624:0|t[|cRXP_LOOT_Sida's Bag|r]
>>|cRXP_WARN_This item has a low droprate, don't go out of your way to find the Oozes, you can complete this objective later|r
.complete 470,1 
.isOnQuest 470
step
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,62.34,69.34
>>Kill |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mongrels|r
.complete 276,1 
.mob +Mosshide Gnoll
.complete 276,2 
.mob +Mosshide Mongrel
.isOnQuest 276
step
#label crocs
.xp 24 >> Grind to level 24
step << !NightElf
#xprate <1.2
#completewith next
+Keep grinding |cRXP_ENEMY_Gnolls|r until your hearth has <2 minutes left
step
#label TrampingPaws
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 276 >> Turn in Tramping Paws
.accept 277 >> Accept Fire Taboo
.isQuestComplete 276
.target Rethiel the Greenwarden
step << NightElf
#sticky
#optional
>>|cRXP_WARN_You will need to get to Ironforge soon. You can either run there through the Loch Modan tunnel (slower and simpler) or use Blizzards character unstuck website after hearthing back to Menethil Harbor (faster and more advanced)|r
>>|cRXP_WARN_If you prefer the website method then start loading the website already. It usually takes a couple minutes to load. DO NOT SELECT TO MOVE YOUR CHARACTER YET|r
+Click here to complete this step after deciding which path you will take
.link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Click here for video reference
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Click here for the unstuck link for US servers
.link https://eu.battle.net/support/en/article/32275 >> Click here for the unstuck link for EU servers
.subzoneskip 150 
.subzoneskip 2104 
step
.goto Wetlands,53.2,41.3,55,0
.goto Wetlands,58.5,50.8,55,0
.goto Wetlands,62.1,61.4,55,0
.goto Wetlands,64.0,72.2
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
.complete 484,1
.mob Young Wetlands Crocolisk
step << !NightElf
.hs >> Hearth to Menethil Harbor
step << NightElf
#optional
#completewith dunAlgaz
.hs >> |cRXP_WARN_Hearthstone to Menethil if you wish to travel to Ironforge via the website unstuck method|r
.zoneskip Loch Modan 
.subzoneskip 150 
.subzoneskip 2104 
step << NightElf
#optional
#label dunAlgaz
.subzoneskip 150 
.subzoneskip 2104 
>>|cRXP_WARN_Travel through the Dun Algaz tunnel to Loch Modan if you wish to travel to Ironforge by foot|r
.goto 1437/0,-2633.100,-4086.000,8 >> Go to the Dun Algaz passage tunnel entrance
step << NightElf
#optional
#requires dunAlgaz
#completewith LochArrive
.zone Loch Modan >> Follow the tunnel network to travel to Loch Modan
.subzoneskip 150 
.subzoneskip 2104 
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
.goto 1437/0,-2426.200,-4093.000,8 >> Travel through the first tunnel
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
.goto 1437/0,-2374.900,-4011.600,15,0
>>Mind the single level 20 |cRXP_ENEMY_Dragonmaw Grunt|r that stands on the road uphill
.goto 1437/0,-2462.600,-4119.400,5 >> Travel to the second tunnel
.mob Dragonmaw Grunt
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
.goto 1437/0,-2464.400,-4312.900,5 >> Travel through the second tunnel
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
>>Mind the lvl 19-20 |cRXP_ENEMY_Dragonmaw Scouts|r that may be patrolling the road
.goto 1437/0,-2480.400,-4423.400,5 >> Travel to the third tunnel entrance
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
.goto 1437/0,-2674.500,-4451.100,5 >> Travel through the third tunnel
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
.goto 1437/0,-2690.400,-4482.800,5 >> Enter the fourth tunnel
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
.goto 1432/0,-2698.800,-4681.800,5 >> Travel through the fourth tunnel into Loch Modan
step << skip 
#completewith next
.goto Wetlands,63.9,78.6
>>Head to the cave at the base of the dam in eastern Wetlands
.zone Loch Modan >> Logout on top of the mushrooms at the back of the cave.
>>When you log back in, this will teleport you to Thelsamar
.link https://www.youtube.com/watch?v=21CuGto26Mk >> |cRXP_WARN_CLICK HERE for a reference|r
step << NightElf
#label LochArrive
#optional
.goto Loch Modan,33.938,50.954
>>Travel along the road towards Thelsamar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
.fp Thelsamar >> Get the Thelsamar flight path
.target Thorgrum Borrelson
.subzoneskip 150 
.subzoneskip 2104 
step << NightElf
#optional
.goto Loch Modan,21.30,68.60,40 >> Travel south to the tunnel leading to Dun Morogh
.subzoneskip 150 
.subzoneskip 2104 
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
.goto 1432/0,-2582.400,-5738.400,10,0
.goto 1432/0,-2578.000,-5679.900,10,0
.goto 1432/0,-2535.500,-5643.700,5 >> Travel to the tunnel entrance
step << NightElf
#optional
#sticky
.zone Ironforge >> Travel to Ironforge
.subzoneskip 150 
.subzoneskip 2104 
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
.goto 1426/0,-2441.900,-5559.800,5 >> Travel through the tunnel
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
.goto 1426/0,-2347.800,-5560.700,5 >> Travel to the second tunnel
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
.goto 1426/0,-2243.100,-5634.800,5 >> Travel through the second tunnel
step << NightElf
#optional
.subzoneskip 150 
.subzoneskip 2104 
.goto Dun Morogh,47.85,41.42,50 >> Travel west along the road towards Ironforge
step << skip 
>>Go inside the South-eastern Trogg cave. Perform a logout skip
.goto Dun Morogh,70.63,56.70,60,0
.goto Dun Morogh,70.60,54.86
.link https://www.youtube.com/watch?v=yQBW3KyguCM >> |cRXP_WARN_CLICK HERE for a reference|r
.zone Ironforge >> Logout Skip or travel to Ironforge
step << !NightElf
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
step << NightElf
#optional
#completewith next
.goto Wetlands,5.485,64.156,40 >> Jump off the end of the dock and swim to the waypoint
.zoneskip Elwynn Forest
.zoneskip Dun Morogh
.zoneskip Loch Modan
.zoneskip Stormwind City
.zoneskip Ironforge
.zoneskip Westfall
.dungeon !DM
step << NightElf
#optional
.goto Wetlands,2.433,78.689,-1
.goto Ironforge,17.089,83.373,-1
.zone Ironforge >>Use the character unstuck self service feature to skip to Ironforge. You will have to log off at the spot, then navigate to the help menu on another character (alternatively, paste the unstuck link below into your browser), then scroll down to self service. Click on your character and move. If you can't unstuck then skip this step and swim along the mountains to Westfall
.link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Click here for video reference
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Click here for the unstuck link for US servers
.link https://eu.battle.net/support/en/article/32275 >> Click here for the unstuck link for EU servers
.subzoneskip 809 
.subzoneskip 2257 
.zoneskip Loch Modan
.zoneskip Elwynn Forest
.zoneskip Dun Morogh
.zoneskip Stormwind City
.zoneskip Ironforge
.zoneskip Westfall
.dungeon !DM
step
#optional
#sticky
#label Powers
>>|cRXP_WARN_Use the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] to start the quest|r
.accept 968 >> Accept The Powers Below
.use 5352
.itemcount 5352,1
step << NightElf Hunter
.goto Ironforge,61.177,89.508
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buliwyf Stonehand|r inside
.train 266 >> Train Guns
.target Buliwyf Stonehand
.dungeon !DM
.itemcount 5352,1 
step
#ah
.goto Ironforge,24.94,73.66,0
>>Gather 4 |T134850:0|t[Minor Mana Potions] and 2 |T134822:0|t[Elixir of Minor Fortitudes]
>>|cRXP_WARN_You can buy these from the Auction House, trade players for them or use|r |T136240:0|t[Alchemy] |cRXP_WARN_if you have it to make them|r
>>|cRXP_WARN_If you are unable to acquire them, skip this step|r
.skill alchemy,<1,1 
.collect 2455,4,1073,1 
.collect 2458,2,1073,1 
.isOnQuest 1072 
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
#requires Powers
.goto Ironforge,50.826,5.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 968 >> Turn in The Powers Below
.target Gerrig Bonegrip
.isOnQuest 968
step << NightElf Hunter
.goto Ironforge,61.177,89.508
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buliwyf Stonehand|r inside
.train 266 >> Train Guns
.target Buliwyf Stonehand
.dungeon !DM
.itemcount 5352,<1 
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
