RXPGuides.RegisterGuide([[
#version 23
#xprate <1.99
#group RestedXP Horde 22-30
#classic
#tbc
#mop
<< Horde
#name 24-26 Southern Barrens/Stonetalon
#next 26-28 Ashenvale
step
#optional
.abandon 1013,1014,1098
.dungeon SFK
step
#optional
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.target Doras
.zoneskip Orgrimmar,1
step
.goto Thunder Bluff,47.12,57.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chesmu|r
.bankdeposit 3692 >> Deposit your |T133730:0|t[|cRXP_LOOT_Hillsbrad Human Skulls|r] if you have them
.bankdeposit 3564 >> Deposit |T132761:0|t[|cRXP_LOOT_Shipment of Iron|r]
.bankwithdraw 5075 >> Withdraw your |T134128:0|t[Blood Shards]
.bankwithdraw 5059 >> Withdraw your |T132938:0|t[Digging Claw]
.isQuestAvailable 868
.target Chesmu
step << Shaman/Warrior
.goto Thunder Bluff,54.06,57.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r
.vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Delgo Ragetotem
step << Hunter/Warrior
#completewith HunterTraining26 << Hunter
#completewith WarriorTraining26 << Warrior
.goto Thunder Bluff,61.31,78.25,80 >> Travel to the Hunter Rise << Hunter
.goto Thunder Bluff,61.31,78.25,80 >> Travel to the Hunter Rise << Warrior
step << Hunter
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 14262 >> Train your class spells
.target Urek Thunderhorn
.xp <24,1
.xp >26,1
step << Hunter
#optional
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
.train 3045 >> Train your class spells
.target Urek Thunderhorn
.xp <26,1
step << Hunter
#label HunterTraining26
.goto Thunder Bluff,54.07,84.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
.train 24558 >> Train your pet spells
.target Hesuwa Thunderhorn
step << Warrior
.goto Thunder Bluff,57.59,85.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 5308 >> Train your class spells
.target Ker Ragetotem
.xp <24,1
.xp >26,1
step << Warrior
#optional
#label WarriorTraining26
.goto Thunder Bluff,57.27,87.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
.train 6178 >> Train your class spells
.target Torm Ragetotem
.xp <26,1
step << Druid
#completewith next
.goto Thunder Bluff,69.88,30.90,80 >> Travel to the Elder Rise
step << Druid
.goto Thunder Bluff,76.48,27.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
.trainer >> Train your class spells
.turnin 31 >> Turn in Aquatic Form
.target Turak Runetotem
.isOnQuest 31
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuna|r
.vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[Sturdy Recurve Bow] |cRXP_BUY_from her if it's available|r
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
.money <1.9467
step
#completewith next
.goto Thunder Bluff,28.14,32.97,40,0
.goto Thunder Bluff,28.51,28.95,10 >> Travel to the Spirit Rise and enter the pools of vision
step
.goto Thunder Bluff,22.90,21.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
.turnin 1067 >> Turn in Return to Thunder Bluff
.accept 1086 >> Accept The Flying Machine Airport
.target Apothecary Zamah
.isQuestTurnedIn 1066
step << Priest
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 3747 >> Train your class spells
.target Miles Welsh
.xp <24,1
.xp >26,1
step << Priest
#optional
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 992 >> Train your class spells
.target Miles Welsh
.xp <26,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
.train 8400 >> Train your class spells
.target Archmage Shymm
.xp <24,1
.xp >26,1
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
.train 120 >> Train your class spells
.target Archmage Shymm
.xp <26,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 905 >> Train your class spells
.target Tigor Skychaser
.xp <24,1
.xp >26,1
step << Shaman
#optional
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
.train 8190 >> Train your class spells
.target Tigor Skychaser
.xp <26,1
step
#completewith next
.skill firstaid,115 >>|cRXP_WARN_Create|r |T133688:0|t[Wool Bandages] |cRXP_WARN_until your skill is 115 or higher|r
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pand|r
.train 3278 >> Train |T133687:0|t[Heavy Wool Bandage]
.target Pand Stonebinder
.skill firstaid,<1,1
step
#optional
#completewith FlytoCampT2
.abandon 264,3301
step
.goto Thunder Bluff,54.96,51.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zangen|r
.accept 1195 >> Accept The Sacred Flame
.target Zangen Stonehoof
step
#label FlytoCampT2
#completewith CampTHS2
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Camp Taurajo >>Fly to Camp Taurajo
.target Tal
.zoneskip The Barrens
step
.goto The Barrens,44.55,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
.accept 879 >> Accept Betrayal from Within
.target Mangletooth
step
#completewith CampTHS2
+|cRXP_WARN_Use your remaining|r |T134128:0|t[Blood Shards] |cRXP_WARN_to get|r |T136104:0|t[Razorhide] |cRXP_WARN_and other buffs|r << !Mage !Druid
+|cRXP_WARN_Use your remaining|r |T134128:0|t[Blood Shards] |cRXP_WARN_to get buffs|r << Mage/Druid
>>|cRXP_WARN_If possible, save 10|r |T134128:0|t[Blood Shards] |cRXP_WARN_to be able to utilize the speed buff later in the guide|r
+|cRXP_WARN_Make sure to turn off any autocomplete functions from addons such as Questie or Leatrix Plus for this!|r
step
.goto The Barrens,44.85,59.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
.daily 235,742,6382 >> Accept The Ashenvale Hunt
.target Jorn Skyseer
step << Warrior
.goto The Barrens,44.67,59.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruga Ragetotem|r inside the building
.turnin 1823 >>Turn in Speak with Ruga
.accept 1824 >>Accept Trial at the Field of Giants
.target Ruga Ragetotem
step
#label CampTHS2
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
.home >>Set your Hearthstone to Camp Taurajo
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Byula
.bindlocation 378
.isQuestAvailable 879
step
#loop
.goto The Barrens,44.63,62.71,0
.goto The Barrens,45.78,63.09,0
.goto The Barrens,49.57,59.36,0
.goto The Barrens,49.21,61.42,0
.goto The Barrens,44.63,62.71,80,0
.goto The Barrens,45.78,63.09,80,0
.goto The Barrens,49.21,61.42,80,0
.goto The Barrens,49.57,59.36,80,0
>>Find & kill |cRXP_ENEMY_Owatanka|r (Blue Thunder Lizard) around this area. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]. Use it to start the quest
>>|cRXP_WARN_Skip this quest if you can't find him|r
.collect 5102,1,884 
.accept 884 >>Accept Owatanka
.use 5102
.unitscan Owatanka
step << Warrior
#loop
.goto The Barrens,45.17,69.08,0
.goto The Barrens,45.17,69.08,50,0
.goto The Barrens,43.87,68.84,50,0
.goto The Barrens,42.17,69.65,50,0
.goto The Barrens,42.35,71.85,50,0
.goto The Barrens,42.77,72.28,50,0
.goto The Barrens,43.86,72.06,50,0
.goto The Barrens,45.38,72.25,50,0
>>Kill |cRXP_ENEMY_Silithid Protectors|r, |cRXP_ENEMY_Silithid Swarmers|r, |cRXP_ENEMY_Silithid Creepers|r and |cRXP_ENEMY_Silithid Grubs|r. Loot them for their |T133027:0|t[Twitching Antenna]
>>|cRXP_WARN_NOTE: The |T133027:0|t[Twitching Antenna] only have a 15 minute duration, do not AFK or logout during this quest|r
.complete 1824,1 
.mob Silithid Protector
.mob Silithid Swarmer
.mob Silithid Creeper
.mob Silithid Grub
step << Warrior
.goto The Barrens,44.67,59.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruga Ragetotem|r inside the building
>>|cRXP_WARN_Skip the follow-up|r
.turnin 1824 >>Turn in Trial at the Field of Giants
.target Ruga Ragetotem
step
#completewith next
>>Kill the |cRXP_ENEMY_Silithid Harvester|r. Loot it for the |T134321:0|t[|cRXP_LOOT_Harvester's Head|r]. Use it to start the quest
>>|cRXP_WARN_Skip this quest if you can't find him. This mob is very rare!|r
.collect 5138,1,897,1 
.accept 897 >>Accept The Harvester
.use 5138
.unitscan Silithid Harvester
step
#label SilithidEggs
#loop
.goto The Barrens,42.91,69.86,0
.goto The Barrens,45.04,69.85,60,0
.goto The Barrens,42.91,69.86,60,0
.goto The Barrens,42.97,71.11,60,0
.goto The Barrens,45.36,72.36,60,0
.goto The Barrens,47.40,70.11,60,0
.goto The Barrens,48.40,70.08,60,0
.goto The Barrens,42.91,69.86,60,0
>>Loot the |cRXP_PICK_Silithid Mounds|r for |cRXP_LOOT_Silithid Eggs|r
.complete 868,1 
.isOnQuest 868
.maxlevel 27
step << Shaman
#completewith next
.goto The Barrens,44.76,74.79,45,0
>>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest
.collect 5103,1,885 
.accept 885 >>Accept Washte Pawne
.use 5103
.unitscan Washte Pawne
step << Shaman
#completewith next
.goto The Barrens,43.84,77.28,25,0
.goto The Barrens,43.62,77.29,25,0
.goto The Barrens,43.42,77.41,15 >>Travel toward |cRXP_FRIENDLY_Brine|r
step << Shaman
.goto The Barrens,43.42,77.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
.turnin 1536 >>Turn in Call of Water
.accept 1534 >>Accept Call of Water
.target Brine
step
#completewith Backstabber
>>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest
.collect 5103,1,885 
.accept 885 >>Accept Washte Pawne
.use 5103
.unitscan Washte Pawne
step
#label Gann1
#loop
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.14,75.40,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols North and South on the road|r
.accept 843 >> Accept Gann's Reclamation
.target Gann Stonespire
.maxlevel 28
step
#completewith Lok
>>Kill |cRXP_ENEMY_Razormane Stalkers|r and |cRXP_ENEMY_Razormane Pathfinders|r. Loot them for the |T135640:0|t[|cRXP_LOOT_Razormane Backstabber|r]
>>Kill |cRXP_ENEMY_Razormane Seers|r. Loot them for the |T135139:0|t[|cRXP_LOOT_Charred Razormane Wand|r]
>>Kill |cRXP_ENEMY_Razormane Warfrenzies|r. Loot them for the |T134955:0|t[|cRXP_LOOT_Razormane War Shield|r]
>>|cRXP_WARN_The |cRXP_ENEMY_Razormane Stalkers|r are stealthed|r
.collect 5093,1,893,1 
.mob +Razormane Stalker
.mob +Razormane Pathfinder
.collect 5092,1,893,1 
.mob +Razormane Seer
.collect 5094,1,893,1 
.mob +Razormane Warfrenzy
step
.line The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
#loop
.goto The Barrens,44.06,80.02,45,0
.goto The Barrens,43.91,80.46,45,0
.goto The Barrens,44.03,80.38,45,0
.goto The Barrens,44.16,80.46,45,0
.goto The Barrens,44.31,80.79,45,0
.goto The Barrens,44.66,80.49,45,0
.goto The Barrens,45.10,80.30,45,0
.goto The Barrens,45.52,80.47,45,0
.goto The Barrens,45.46,80.91,45,0
.goto The Barrens,44.83,80.95,45,0
.goto The Barrens,44.15,81.44,45,0
.goto The Barrens,43.79,81.40,45,0
.goto The Barrens,43.63,80.97,45,0
.goto The Barrens,43.49,80.48,45,0
.goto The Barrens,43.24,80.49,45,0
.goto The Barrens,42.82,80.23,45,0
.goto The Barrens,42.65,79.87,45,0
.goto The Barrens,43.07,78.98,45,0
.goto The Barrens,43.48,78.95,45,0
.goto The Barrens,43.66,79.12,45,0
.goto The Barrens,43.80,79.46,45,0
.goto The Barrens,44.43,78.71,45,0
.goto The Barrens,44.89,78.87,45,0
.goto The Barrens,45.12,79.20,45,0
.goto The Barrens,45.05,79.75,45,0
.goto The Barrens,44.83,79.87,45,0
>>Kill |cRXP_ENEMY_Kuz|r. Loot him for |cRXP_LOOT_Kuz's Skull|r
>>|cRXP_ENEMY_Kuz|r |cRXP_WARN_patrols around slightly|r
.complete 879,1 
.unitscan Kuz
step
#label Lok
.goto The Barrens,40.31,80.70,20,0
.goto The Barrens,40.14,80.56
>>Kill |cRXP_ENEMY_Lok Orcbane|r. Loot him for |cRXP_LOOT_Lok's Skull|r
.complete 879,3 
.mob Lok Orcbane
step
#completewith NakSkull
>>Kill |cRXP_ENEMY_Razormane Stalkers|r and |cRXP_ENEMY_Razormane Pathfinders|r. Loot them for a |T135640:0|t[|cRXP_LOOT_Razormane Backstabber|r]
>>|cRXP_WARN_The |cRXP_ENEMY_Razormane Stalkers|r are stealthed|r
.collect 5093,1,893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
step
#label WandShield
#loop
.goto The Barrens,42.57,78.81,0
.goto The Barrens,42.57,78.81,50,0
.goto The Barrens,42.12,78.48,50,0
.goto The Barrens,41.49,78.69,50,0
.goto The Barrens,41.22,79.72,50,0
.goto The Barrens,40.91,80.60,50,0
.goto The Barrens,40.55,80.84,50,0
.goto The Barrens,41.62,80.92,50,0
.goto The Barrens,41.54,82.28,50,0
.goto The Barrens,42.48,82.28,50,0
>>Kill |cRXP_ENEMY_Razormane Seers|r. Loot them for a |T135139:0|t[|cRXP_LOOT_Charred Razormane Wand|r]
>>Kill |cRXP_ENEMY_Razormane Warfrenzies|r. Loot them for a |T134955:0|t[|cRXP_LOOT_Razormane War Shield|r]
.collect 5092,1,893,1 
.mob +Razormane Seer
.collect 5094,1,893,1 
.mob +Razormane Warfrenzy
step
#label NakSkull
.goto The Barrens,43.87,83.43
>>Kill |cRXP_ENEMY_Nak|r. Loot him for |cRXP_LOOT_Nak's Skull|r
.complete 879,2 
.mob Nak
step
#label Backstabber
#loop
.goto The Barrens,45.48,79.89,0
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89,40,0
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89,40,0
>>Kill |cRXP_ENEMY_Razormane Stalkers|r and |cRXP_ENEMY_Razormane Pathfinders|r. Loot them for a |T135640:0|t[|cRXP_LOOT_Razormane Backstabber|r]
>>|cRXP_WARN_The |cRXP_ENEMY_Razormane Stalkers|r are stealthed|r
.collect 5093,1,893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
step
#completewith next
>>Kill |cRXP_ENEMY_Bael'dun Excavators|r and |cRXP_ENEMY_Bael'dun Foremen|r
.complete 843,1 
.mob +Bael'dun Excavator
.complete 843,2 
.mob +Bael'dun Foreman
.isOnQuest 843
step
#loop
.goto The Barrens,48.34,86.19,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
>>Kill |cRXP_ENEMY_Prospector Khazgorm|r. Loot him for |cRXP_LOOT_Khazgorm's Journal|r
.complete 843,3 
.mob Prospector Khazgorm
.isOnQuest 843
step
#loop
.goto The Barrens,47.22,84.98,0
.goto The Barrens,47.22,84.98,40,0
.goto The Barrens,47.28,85.74,40,0
.goto The Barrens,47.60,85.66,40,0
.goto The Barrens,48.43,86.34,40,0
.goto The Barrens,48.03,85.46,40,0
.goto The Barrens,47.94,84.86,40,0
.goto The Barrens,47.37,84.01,40,0
.goto The Barrens,46.92,84.22,40,0
.goto The Barrens,46.99,85.82,40,0
>>Kill |cRXP_ENEMY_Bael'dun Excavators|r and |cRXP_ENEMY_Bael'dun Foremen|r
.complete 843,1 
.mob +Bael'dun Excavator
.complete 843,2 
.mob +Bael'dun Foreman
.isOnQuest 843
step
#completewith BaelModan
.goto The Barrens,47.21,79.35,45,0
.goto The Barrens,47.22,79.72,45,0
>>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest
.collect 5103,1,885 
.accept 885 >>Accept Washte Pawne
.use 5103
.unitscan Washte Pawne
step
#loop
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.14,75.40,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols North and South on the road|r
.turnin 843 >> Turn in Gann's Reclamation
.accept 846 >> Accept Revenge of Gann
.target Gann Stonespire
.isQuestComplete 843
step
#optional
#loop
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.14,75.40,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols North and South on the road|r
.accept 846 >> Accept Revenge of Gann
.target Gann Stonespire
.isQuestTurnedIn 843
step
#label BaelModan
#completewith RevengeofGann2
.goto The Barrens,48.63,84.49,110 >>Travel to Bael Modan
.isQuestTurnedIn 843
step
#completewith TearMoons2
>>Kill |cRXP_ENEMY_Bael'dun Dwarves|r. Loot them for their |cRXP_LOOT_Nitroglycerin|r, |cRXP_LOOT_Wood Pulp|r, and |cRXP_LOOT_Sodium Nitrate|r
>>|cRXP_WARN_Be Careful!|r |cRXP_ENEMY_Bael'dun Officers|r |cRXP_WARN_have a 50% increased parry chance for 8 seconds after they do their defense stance animation|r << Rogue/Warrior/Druid/Shaman
.complete 846,1 
.complete 846,2 
.complete 846,3 
.mob Bael'dun Rifleman
.mob Bael'dun Soldier
.mob Bael'dun Officer
.group 0
.isQuestTurnedIn 843
step
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.accept 857 >> Accept The Tear of the Moons
.target Feegly the Exiled
.isQuestTurnedIn 843
.group 3
step
#completewith next
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.43,84.28,6 >>Go down to the bottom floor of Bael'dun
.isQuestTurnedIn 843
.group
step
.goto The Barrens,49.13,84.25
>>Open |cRXP_PICK_General Twinbraid's Strongbox|r. Loot it for the |cRXP_LOOT_Tear of the Moons|r
>>|cRXP_WARN_Be careful! It is very easy overpull in |cRXP_ENEMY_General Twinbraid|r's room|r
>>|cRXP_WARN_Directly pull any mob other than |cRXP_ENEMY_General Twinbraid|r|r
.complete 857,1 
.isQuestTurnedIn 843
.group 3
step
#completewith next
.goto The Barrens,49.43,84.28,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,48.75,84.63,20 >>Exit Bael'dun's Keep
.isQuestTurnedIn 843
.group
step
#label TearMoons2
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.turnin 857 >> Turn in The Tear of the Moons
.target Feegly the Exiled
.isQuestComplete 857
.group
step
#label RevengeofGann2
#loop
.goto The Barrens,48.96,84.36,0
.goto The Barrens,48.96,84.36,30,0
.goto The Barrens,48.88,84.02,30,0
.goto The Barrens,49.28,83.76,30,0
.goto The Barrens,49.22,84.21,30,0
.goto The Barrens,49.47,84.41,30,0
.goto The Barrens,49.09,84.67,30,0
>>Kill |cRXP_ENEMY_Bael'dun Dwarves|r. Loot them for their |cRXP_LOOT_Nitroglycerin|r, |cRXP_LOOT_Wood Pulp|r, and |cRXP_LOOT_Sodium Nitrate|r
>>|cRXP_WARN_Be Careful!|r |cRXP_ENEMY_Bael'dun Officers|r |cRXP_WARN_have a 50% increased parry chance for 8 seconds after they do their defense stance animation|r << Rogue/Warrior/Druid/Shaman
.complete 846,1 
.complete 846,2 
.complete 846,3 
.mob Bael'dun Rifleman
.mob Bael'dun Soldier
.mob Bael'dun Officer
.isQuestTurnedIn 843
step
#completewith GannRevengeComplete
>>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest
.collect 5103,1,885 
.accept 885 >>Accept Washte Pawne
.use 5103
.unitscan Washte Pawne
step
#loop
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.14,75.40,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols North and South on the road|r
.turnin 846 >> Turn in Revenge of Gann
.accept 849 >> Accept Revenge of Gann
.target Gann Stonespire
.isQuestTurnedIn 843
step
.goto The Barrens,46.97,85.63
>>Click the |cRXP_PICK_Bael Modan Flying Machine|r atop the platform
>>|cRXP_WARN_This has a 50 yard range|r
.complete 849,1 
.isQuestTurnedIn 843
step
#label GannRevengeComplete
#loop
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.14,75.40,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols North and South on the road|r
.turnin 849 >> Turn in Revenge of Gann
.target Gann Stonespire
.isQuestTurnedIn 843
step
#label WashtethePawne
#loop
.goto The Barrens,44.85,78.81,0
.goto The Barrens,44.85,78.81,60,0
.goto The Barrens,44.44,78.97,60,0
.goto The Barrens,43.14,80.75,60,0
.goto The Barrens,43.35,81.16,60,0
.goto The Barrens,47.22,79.72,60,0
.goto The Barrens,47.21,79.35,60,0
.goto The Barrens,44.76,74.79,60,0
>>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest
.collect 5103,1,885 
.accept 885 >>Accept Washte Pawne
.use 5103
.unitscan Washte Pawne
step
.goto The Barrens,50.48,78.72,100 >> Travel into Dustwallow Marsh
.zoneskip Dustwallow Marsh
.isQuestAvailable 906
step
#completewith HSCampT
.goto Dustwallow Marsh,30.65,45.34,40,0
.goto Dustwallow Marsh,32.28,42.80,40,0
.goto Dustwallow Marsh,33.12,40.85,40,0
.goto Dustwallow Marsh,33.55,38.71,40,0
.goto Dustwallow Marsh,34.73,37.66,40,0
.goto Dustwallow Marsh,34.31,34.40,40,0
.goto Dustwallow Marsh,33.30,31.23,40,0
.goto Dustwallow Marsh,36.64,31.72,120,0
.subzone 496 >> Travel to Brackenwall Village
>>|cRXP_WARN_Be careful! There are level 36-38 mobs in the area. Follow the waypoint arrow for safety|r
step << Warrior/Shaman
.goto Dustwallow Marsh,36.17,31.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zulrg|r
.vendor >>|cRXP_BUY_Buy a|r |T135158:0|t[Big Stick] |cRXP_BUY_from him if it's up|r
.money <4.3117
.target Zulrg
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
.zoneskip Dustwallow Marsh,1
step
.goto Dustwallow Marsh,36.49,30.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balai|r
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from her if they're up|r
.target Balai Lok'Wein
.zoneskip Dustwallow Marsh,1
step
.goto Dustwallow Marsh,36.49,30.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balai|r
>>|cRXP_BUY_Buy the|r |T133735:0|t[First Aid Manuals] |cRXP_BUY_from her|r
.collect 16112,1,873,1 >> Manual: Heavy Silk Bandage (1)
.collect 16113,1,873,1 >> Manual: Mageweave Bandage (1)
.collect 16084,1,873,1 >> Manual: Expert First Aid - Under Wraps (1)
.target Balai Lok'Wein
.zoneskip Dustwallow Marsh,1
.skill firstaid,<1,1
step
#completewith WeaponsofChoiceTurnin
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shardi|r
.fp Brackenwall >> Get the Brackenwall Village Flight Path
.fly Camp Taurajo >> Fly to Camp Taurajo
.target Shardi
.zoneskip The Barrens
.cooldown item,6948,<0
step
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shardi|r
.fp Brackenwall >> Get the Brackenwall Village Flight Path
.target Shardi
.zoneskip The Barrens
.cooldown item,6948,>0
step
#label HSCampT
#completewith WeaponsofChoiceTurnin
.hs >> Hearth to Camp Taurajo
.use 6948
.cooldown item,6948,>0
step
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r
.accept 893 >> Accept Weapons of Choice
.turnin 893 >> Turn in Weapons of Choice
.accept 1153 >> Accept A New Ore Sample
.target Tatternack Steelforge
.xp <25,1
step
#optional
#label WeaponsofChoiceTurnin
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r
.accept 893 >> Accept Weapons of Choice
.turnin 893 >> Turn in Weapons of Choice
.target Tatternack Steelforge
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 884 >>Accept Owatanka
.turnin 884 >>Turn in Owatanka
.itemcount 5102,1
.target Jorn Skyseer
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 885 >>Accept Washte Pawne
.turnin 885 >>Turn in Washte Pawne
.target Jorn Skyseer
.itemcount 5103,1
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 897 >>Accept The Harvester
.turnin 897 >>Turn in The Harvester
.itemcount 5138,1
.target Jorn Skyseer
step
.goto The Barrens,44.54,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
.turnin 879 >> Turn in Betrayal from Within
.accept 906 >> Accept Betrayal from Within
.target Mangletooth
step
#completewith next
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Crossroads >>Fly to The Crossroads
.target Omusa Thunderhorn
.subzoneskip 380
step
.goto The Barrens,51.50,30.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
.turnin 906 >> Turn in Betrayal from Within
.target Thork
step
.goto The Barrens,51.07,29.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korran|r
.turnin 868 >> Turn in Egg Hunt
.target Korran
.isQuestComplete 868
step
#completewith IshaAwak
#optional
.destroy 5058 >>|cRXP_WARN_Destroy any extra|r |T132834:0|t[Silithid Eggs] |cRXP_WARN_you still have|r
step
#optional
.abandon 868 >> Abandon Egg Hunt
.isOnQuest 868
step
.goto The Barrens,51.99,29.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
.home >>Set your Hearthstone to Crossroads
.target Innkeeper Boorand Plainswind
.bindlocation 380
.isQuestAvailable 1096
step << Rogue
.goto The Barrens,51.39,30.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hula'mahi|r
.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and supplies for|r |T132273:0|t[Instant Poison]
.target Hula'mahi
.subzoneskip 380,1
step << Hunter
#completewith next
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Orgrimmar >> Fly to Orgrimmar
.zoneskip Orgrimmar
.target Devrak
step << Hunter
.goto Orgrimmar,48.12,80.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trak'gen|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,1800,874,1 << Hunter 
.target Trak'gen
step << Hunter
#completewith IshaAwak
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Ratchet >> Fly to Ratchet
.target Doras
.subzoneskip 392
step << !Hunter
#completewith IshaAwak
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Ratchet >> Fly to Ratchet
.target Devrak
.subzoneskip 392
step
.goto The Barrens,65.84,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahren|r
.turnin 874 >>Turn in Mahren Skyseer
.accept 873 >>Accept Isha Awak
.target Mahren Skyseer
step
#loop
.goto The Barrens,65.67,46.63,0
.goto The Barrens,64.74,50.35,0
.goto The Barrens,63.60,53.54,0
.goto The Barrens,65.77,45.28,50,0
.goto The Barrens,65.67,46.63,50,0
.goto The Barrens,64.74,50.35,50,0
.goto The Barrens,63.60,53.54,50,0
>>Kill |cRXP_ENEMY_Isha Awak|r. Loot him for the |cRXP_LOOT_Heart of Isha Awak|r
>>|cRXP_WARN_He has four different spawn locations alongside the coast|r
.complete 873,1 
.unitscan Isha Awak
step
#label IshaAwak
.goto The Barrens,65.84,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahren|r
.turnin 873 >> Turn in Isha Awak
.target Mahren Skyseer
step
.maxlevel 27,StonetalonSkip
#completewith CenariusPickup
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Sun Rock Retreat >> Fly to Sun Rock Retreat
.zoneskip Stonetalon Mountains
.target Bragok
step
#label CenariusPickup
.goto Stonetalon Mountains,45.90,60.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Braelyn|r
.accept 1087 >> Accept Cenarius' Legacy
.target Braelyn Firehand
step
.goto Stonetalon Mountains,47.30,61.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maggran|r
.accept 5881 >> Accept Calling in the Reserves
.accept 6282 >> Accept Harpies Threaten
.target Maggran Earthbinder
step
.goto Stonetalon Mountains,47.46,58.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tammra|r
.turnin 6401 >>Turn in Kaya's Alive
.accept 6301 >> Accept Cycle of Rebirth
.target Tammra Windfield
.isOnQuest 6401
step
.goto Stonetalon Mountains,47.40,58.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tammra Windfield|r
.accept 6301 >> Accept Cycle of Rebirth
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.47,62.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Jayka|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Jayka
.isQuestAvailable 6301
.subzoneskip 460,1
step
.goto Stonetalon Mountains,47.61,61.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeeda|r on the second floor of the inn
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her if they're up|r
.target Jeeda
.isQuestAvailable 6301
.subzoneskip 460,1
step
#completewith ElemWar
.goto Stonetalon Mountains,49.38,61.68,30,0
.goto Stonetalon Mountains,48.92,62.71,30,0
.goto Stonetalon Mountains,48.11,63.88,30,0
.goto Stonetalon Mountains,47.21,64.05,30 >> Run up the path to the right
step
.goto Stonetalon Mountains,47.36,64.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunaman|r
.accept 6393 >>Accept Elemental War
.accept 6562 >>Accept Trouble in the Deeps
.target Tsunaman
.isQuestAvailable 6562
step
#label ElemWar
.goto Stonetalon Mountains,47.36,64.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunaman|r
.accept 6393 >>Accept Elemental War
.target Tsunaman
step << !Warlock
.goto Stonetalon Mountains,59.08,75.70
>>Click the |cRXP_FRIENDLY_Wanted Poster|r
.accept 6284 >>Accept Arachnophobia
step << !Warlock
#loop
.goto Stonetalon Mountains,54.80,71.95,0
.goto Stonetalon Mountains,51.89,73.81,50,0
.goto Stonetalon Mountains,52.46,71.67,50,0
.goto Stonetalon Mountains,54.80,71.95,50,0
>>Kill |cRXP_ENEMY_Besseleth|r. Loot her for for her |cRXP_LOOT_Fang|r
>>|cRXP_WARN_Clear out the area befor you pull her. Be careful, she can web you for 10 seconds!|r
.complete 6284,1 
.unitscan Besseleth
step
#completewith next
.goto Stonetalon Mountains,58.99,62.60,100 >> Travel to Windshear Crag
step
.goto Stonetalon Mountains,58.99,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
.turnin 1095 >>Turn in Further Instructions
.accept 1096 >> Accept Gerenzo Wrenchwhistle
.target Ziz Fizziks
.isOnQuest 1095
step
.goto Stonetalon Mountains,58.99,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
.accept 1096 >> Accept Gerenzo Wrenchwhistle
.target Ziz Fizziks
step
.line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
.goto Stonetalon Mountains,61.03,52.32,50,0
.goto Stonetalon Mountains,60.33,51.68,50,0
.goto Stonetalon Mountains,59.66,52.14,50,0
.goto Stonetalon Mountains,59.81,53.51,50,0
.goto Stonetalon Mountains,60.98,54.06,50,0
.goto Stonetalon Mountains,61.10,54.68,50,0
.goto Stonetalon Mountains,61.58,55.10,50,0
.goto Stonetalon Mountains,62.32,56.11,50,0
.goto Stonetalon Mountains,62.99,56.25,50,0
.goto Stonetalon Mountains,63.72,56.80,50,0
.goto Stonetalon Mountains,64.37,56.47,50,0
.goto Stonetalon Mountains,65.14,57.02,50,0
.goto Stonetalon Mountains,65.74,57.20,50,0
.goto Stonetalon Mountains,66.41,56.31,50,0
.goto Stonetalon Mountains,66.94,56.25,50,0
.goto Stonetalon Mountains,67.77,55.97,50,0
.goto Stonetalon Mountains,68.52,56.04,50,0
.goto Stonetalon Mountains,69.76,56.70,50,0
.goto Stonetalon Mountains,70.52,56.22,50,0
.goto Stonetalon Mountains,70.82,55.25,50,0
.goto Stonetalon Mountains,59.66,52.14,50,0
.goto Stonetalon Mountains,59.66,52.14,0
>>Kill |cRXP_ENEMY_XT:9|r. It patrols the southern side of the river
.complete 1068,2 
.unitscan XT:9
step
#loop
.line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
.goto Stonetalon Mountains,67.18,46.87,50,0
.goto Stonetalon Mountains,66.53,46.95,50,0
.goto Stonetalon Mountains,65.72,45.09,50,0
.goto Stonetalon Mountains,63.73,45.02,50,0
.goto Stonetalon Mountains,63.72,45.92,50,0
.goto Stonetalon Mountains,63.43,46.57,50,0
.goto Stonetalon Mountains,64.43,46.13,50,0
.goto Stonetalon Mountains,64.72,46.63,50,0
.goto Stonetalon Mountains,64.82,47.72,50,0
.goto Stonetalon Mountains,65.11,48.31,50,0
.goto Stonetalon Mountains,65.98,48.67,50,0
.goto Stonetalon Mountains,66.24,49.65,50,0
.goto Stonetalon Mountains,66.65,49.58,50,0
.goto Stonetalon Mountains,66.88,48.95,50,0
.goto Stonetalon Mountains,68.41,49.58,50,0
.goto Stonetalon Mountains,69.45,46.56,50,0
.goto Stonetalon Mountains,70.22,48.62,50,0
.goto Stonetalon Mountains,70.95,48.49,50,0
.goto Stonetalon Mountains,71.41,45.54,50,0
.goto Stonetalon Mountains,71.25,43.45,50,0
.goto Stonetalon Mountains,64.82,47.23,50,0
.goto Stonetalon Mountains,64.82,47.23,0
>>Kill |cRXP_ENEMY_XT:4|r. It patrols the Northern side of the river
.complete 1068,1 
.unitscan XT:4
step
.goto Stonetalon Mountains,66.47,45.45
.use 5638 >>|cRXP_WARN_Use the|r |T132620:0|t[Toxic Fogger] |cRXP_WARN_below or on top of the platform|r
.complete 1086,1 
.isQuestTurnedIn 1066
step
#completewith next
.goto Stonetalon Mountains,68.81,39.61,50,0
.goto Stonetalon Mountains,67.83,37.77,50,0
.goto Stonetalon Mountains,66.58,37.71,50,0
.goto Stonetalon Mountains,64.56,38.03,50 >>Travel up the mountain and enter the platform
step
.goto Stonetalon Mountains,64.48,40.24,20,0
.goto Stonetalon Mountains,63.45,39.78,20,0
.goto Stonetalon Mountains,62.75,40.31
>>Kill |cRXP_ENEMY_Gerenzo|r. Loot him for his |cRXP_LOOT_Mechanical Arm|r
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Venture Co. Machine Smiths|r |cRXP_WARN_can summon|r |cRXP_ENEMY_Venture Co. Harvest Reapers|r|cRXP_WARN_. Kill them one at a time|r
.complete 1096,1 
.unitscan Gerenzo Wrenchwhistle
step
.goto Stonetalon Mountains,62.70,40.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nizzik|r
.vendor >>|cRXP_BUY_Buy gear upgrades if any are available|r
.target Nizzik
.isOnQuest 1096
step
.goto Stonetalon Mountains,58.99,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
.turnin 1096 >> Turn in Gerenzo Wrenchwhistle
.target Ziz Fizziks
step
.goto Stonetalon Mountains,47.20,61.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maggran|r
.turnin 6284 >> Turn in Arachnophobia
.target Maggran Earthbinder
.isQuestComplete 6284
step
#completewith ReachthePeak
.goto Stonetalon Mountains,49.73,45.10,50,0
.goto Stonetalon Mountains,48.88,43.83,50,0
.goto Stonetalon Mountains,46.35,39.37,50,0
.goto Stonetalon Mountains,46.85,31.87,50,0
>>Loot all the |cRXP_LOOT_Gaea Seeds|r you see from the ground as you travel past the lake
.complete 6301,1 
step
#completewith next
.goto Stonetalon Mountains,46.64,27.48,80,0
.goto Stonetalon Mountains,45.59,23.87,80,0
.goto Stonetalon Mountains,43.79,16.95,80,0
>>Kill all the |cRXP_ENEMY_Antlered Coursers|r you see en route to Stonetalon Peak. Loot them for their |cRXP_LOOT_Eyes|r
.complete 1058,3 
.mob Antlered Courser
step
#label ReachthePeak
.goto Stonetalon Mountains,41.61,16.02,40 >>Arrive in Stonetalon Peak
.isOnQuest 1087,1058
step
#completewith Whiskers
>>Kill |cRXP_ENEMY_Sons of Cenarius|r, |cRXP_ENEMY_Daughters of Cenarius|r and |cRXP_ENEMY_Cenarion Botanists|r
.complete 1087,1 
.mob +Son of Cenarius
.complete 1087,2 
.mob +Daughter of Cenarius
.complete 1087,3 
.mob +Cenarion Botanist
step
#completewith Dragonscale
>>Kill |cRXP_ENEMY_Sap Beasts|r. Loot them for their |cRXP_LOOT_Sap|r
>>|cRXP_WARN_Only regular|r |cRXP_ENEMY_Sap Beasts|r |cRXP_WARN_drop the sap.|r |cRXP_ENEMY_Corrosive Sap Beasts|r |cRXP_WARN_do not drop it|r
.complete 1058,1 
.mob Sap Beast
step
#completewith CenariusLegacy
>>Kill a |cRXP_ENEMY_Fey Dragon|r. Loot it for its |cRXP_LOOT_Scale|r
.complete 1058,4 
.mob Fey Dragon
.mob Wily Fey Dragon
step
#label Whiskers
#loop
.goto Stonetalon Mountains,32.24,10.76,0
.goto Stonetalon Mountains,31.75,12.58,50,0
.goto Stonetalon Mountains,30.87,9.47,50,0
.goto Stonetalon Mountains,32.40,9.97,50,0
.goto Stonetalon Mountains,33.33,8.16,50,0
.goto Stonetalon Mountains,34.68,7.89,50,0
.goto Stonetalon Mountains,32.24,10.76,50,0
>>Kill |cRXP_ENEMY_Twilight Runners|r. Loot them for their |cRXP_LOOT_Whiskers|r
.complete 1058,2 
.mob Twilight Runner
step
#completewith CenariusLegacy
>>Kill |cRXP_ENEMY_Sap Beasts|r. Loot them for their |cRXP_LOOT_Sap|r
>>|cRXP_WARN_Only regular|r |cRXP_ENEMY_Sap Beasts|r |cRXP_WARN_drop the sap.|r |cRXP_ENEMY_Corrosive Sap Beasts|r |cRXP_WARN_do not drop it|r
.complete 1058,1 
.mob Sap Beast
step
#label CenariusLegacy
#loop
.goto Stonetalon Mountains,34.43,12.65,0
.goto Stonetalon Mountains,34.43,12.65,40,0
.goto Stonetalon Mountains,35.49,15.33,40,0
.goto Stonetalon Mountains,36.99,15.29,40,0
.goto Stonetalon Mountains,37.71,14.81,40,0
.goto Stonetalon Mountains,38.17,12.77,40,0
.goto Stonetalon Mountains,37.95,11.21,40,0
.goto Stonetalon Mountains,36.25,10.27,40,0
.goto Stonetalon Mountains,35.41,11.13,40,0
>>Kill |cRXP_ENEMY_Sons of Cenarius|r, |cRXP_ENEMY_Daughters of Cenarius|r and |cRXP_ENEMY_Cenarion Botanists|r
.complete 1087,1 
.mob +Son of Cenarius
.complete 1087,2 
.mob +Daughter of Cenarius
.complete 1087,3 
.mob +Cenarion Botanist
step
#label Dragonscale
#loop
.goto Stonetalon Mountains,33.96,11.82,0
.goto Stonetalon Mountains,33.96,11.82,60,0
.goto Stonetalon Mountains,36.64,18.76,60,0
>>Kill a |cRXP_ENEMY_Fey Dragon|r. Loot it for a |cRXP_LOOT_Scale|r
.complete 1058,4 
.mob Fey Dragon
.mob Wily Fey Dragon
step
#loop
.goto Stonetalon Mountains,33.61,20.27,0
.goto Stonetalon Mountains,33.00,16.21,50,0
.goto Stonetalon Mountains,33.61,20.27,50,0
.goto Stonetalon Mountains,35.78,19.13,50,0
.goto Stonetalon Mountains,37.57,20.33,50,0
.goto Stonetalon Mountains,38.62,18.04,50,0
.goto Stonetalon Mountains,39.80,17.10,50,0
>>Kill |cRXP_ENEMY_Sap Beasts|r. Loot them for their |cRXP_LOOT_Sap|r
>>|cRXP_WARN_Only regular|r |cRXP_ENEMY_Sap Beasts|r |cRXP_WARN_drop the sap.|r |cRXP_ENEMY_Corrosive Sap Beasts|r |cRXP_WARN_do not drop it|r
.complete 1058,1 
.mob Sap Beast
step
#loop
.goto Stonetalon Mountains,44.51,20.92,0
.goto Stonetalon Mountains,44.51,20.92,50,0
.goto Stonetalon Mountains,44.45,23.59,50,0
.goto Stonetalon Mountains,46.26,26.72,50,0
>>Finish killing |cRXP_ENEMY_Antlered Coursers|r as you run south back to the lake. Loot them for their |cRXP_LOOT_Eyes|r
.complete 1058,3 
.mob Antlered Courser
step
#loop
.goto Stonetalon Mountains,47.93,36.17,0
.goto Stonetalon Mountains,49.73,45.09,0
.goto Stonetalon Mountains,45.95,40.72,0
.goto Stonetalon Mountains,50.44,37.28,40,0
.goto Stonetalon Mountains,50.56,39.79,40,0
.goto Stonetalon Mountains,51.75,42.62,40,0
.goto Stonetalon Mountains,49.72,43.27,40,0
.goto Stonetalon Mountains,49.73,45.09,40,0
.goto Stonetalon Mountains,48.92,43.86,40,0
.goto Stonetalon Mountains,46.98,42.83,40,0
.goto Stonetalon Mountains,45.78,43.13,40,0
.goto Stonetalon Mountains,45.95,40.72,40,0
.goto Stonetalon Mountains,47.04,37.53,40,0
>>Loot |cRXP_LOOT_Gaea Seeds|r from the ground around the lake
.complete 6301,1 
step
#completewith BloodfuryHarpies
.goto Stonetalon Mountains,42.64,42.43,50,0
.goto Stonetalon Mountains,38.18,43.28,60,0
.goto Stonetalon Mountains,34.85,58.38,80 >> Follow the western path toward The Charred Vale
step
#completewith next
>>Kill |cRXP_ENEMY_Fire Elementals|r. Loot them for their |cRXP_LOOT_Increndrite|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
step
#label BloodfuryHarpies
#loop
.goto Stonetalon Mountains,29.61,63.57,0
.goto Stonetalon Mountains,34.07,61.47,60,0
.goto Stonetalon Mountains,31.59,60.58,60,0
.goto Stonetalon Mountains,29.90,62.51,60,0
.goto Stonetalon Mountains,28.38,64.26,60,0
.goto Stonetalon Mountains,27.65,67.88,60,0
.goto Stonetalon Mountains,27.36,69.75,60,0
.goto Stonetalon Mountains,29.98,71.52,60,0
.goto Stonetalon Mountains,34.96,71.29,60,0
.goto Stonetalon Mountains,36.57,68.19,60,0
.goto Stonetalon Mountains,35.24,63.44,60,0
.goto Stonetalon Mountains,33.94,61.17,60,0
.goto Stonetalon Mountains,29.61,63.57,60,0
>>Kill |cRXP_ENEMY_Bloodfury Harpies|r. |cRXP_WARN_Be careful, they have special abilities|r
>>|cRXP_ENEMY_Bloodfury Slayers|r |cRXP_WARN_execute you when you are below 20% health|r
>>|cRXP_ENEMY_Bloodfury Ambushers|r |cRXP_WARN_shock for a amount of high damage on low cooldown|r
>>|cRXP_ENEMY_Bloodfury Roguefeathers|r |cRXP_WARN_can|r |T132152:0|t[Thrash]
.complete 6282,1 
.mob +Bloodfury Harpy
.complete 6282,2 
.mob +Bloodfury Ambusher
.complete 6282,3 
.mob +Bloodfury Slayer
.complete 6282,4 
.mob +Bloodfury Roguefeather
step << Shaman
#season 2
#loop
.goto Stonetalon Mountains,28.45,65.00,0
.goto Stonetalon Mountains,28.45,65.00,50,0
.goto Stonetalon Mountains,29.08,71.97,50,0
.goto Stonetalon Mountains,33.43,68.97,50,0
.goto Stonetalon Mountains,33.49,69.40,50,0
.goto Stonetalon Mountains,36.85,72.04,50,0
>>Kill the |cRXP_ENEMY_Primordial Anomaly|r. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of Primordial Fury]|r
>>|cRXP_WARN_Make sure to check its form (debuffs). If it's in|r |T136074:0|t[Nature Form]|cRXP_WARN_, deal|r |T135824:0|t[Fire Damage]|cRXP_WARN_. If it's in|r |T135819:0|t[Fire Form]|cRXP_WARN_, deal|r |T135865:0|t[Frost Damage]|cRXP_WARN_. If it's in|r |T135861:0|t[Water Form]|cRXP_WARN_, deal|r |T136085:0|t[Nature Damage]
>>|cRXP_WARN_Be careful as it casts |T132939:0|t[Knock Away] |cRXP_WARN_(Melee Instant: Knocks target up in the air and deals 80 damage)|r
>>|cRXP_WARN_It has a 5-8 minute respawn time and drops a random BoE green each time|r
.collect 210811,1 
.mob Primordial Anomaly
.train 425343,1
step << Shaman
#season 2
.cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Primordial Fury]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Greater Ghost Wolf]
.use 210811
.itemcount 210811,1 
.train 425343,1
step
#completewith TammraTurnin1
.goto Stonetalon Mountains,37.89,67.77,30,0
.goto Stonetalon Mountains,39.58,69.84,30,0
.goto Stonetalon Mountains,41.20,70.09,30,0
.goto Stonetalon Mountains,42.07,66.41,30,0
.goto Stonetalon Mountains,43.54,65.35,30,0
.goto Stonetalon Mountains,44.68,63.50,30 >> Follow the western path to Sun Rock Retreat
.subzoneskip 460
step
.goto Stonetalon Mountains,47.36,64.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunaman|r
.turnin 6393 >> Turn in Elemental War
.target Tsunaman
.isQuestComplete 6393
step
#label TammraTurnin1
.goto Stonetalon Mountains,47.40,58.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tammra Windfield|r
.turnin 6301 >> Turn in Cycle of Rebirth
.accept 6381 >> Accept New Life
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.20,61.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maggran|r
.turnin 6282 >> Turn in Harpies Threaten
.accept 6283 >> Accept Bloodfury Bloodline
.target Maggran Earthbinder
step
.goto Stonetalon Mountains,47.47,62.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Jayka|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Jayka
.isQuestAvailable 6381
.subzoneskip 460,1
step
.goto Stonetalon Mountains,47.61,61.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeeda|r on the second floor of the inn
.vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her if they're up|r
.target Jeeda
.isQuestAvailable 6381
.subzoneskip 460,1
step
.goto Stonetalon Mountains,45.90,60.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Braelyn|r
.turnin 1087 >> Turn in Cenarius' Legacy
.accept 1088 >> Accept Ordanus
.target Braelyn Firehand
step
#completewith Ripper
.goto Stonetalon Mountains,44.31,63.64,30,0
.goto Stonetalon Mountains,43.31,65.47,30,0
.goto Stonetalon Mountains,42.07,66.51,30,0
.goto Stonetalon Mountains,41.26,70.06,30,0
.goto Stonetalon Mountains,37.80,67.68,80 >> Travel back to the Charred Vale
step
#completewith Ripper
.goto Stonetalon Mountains,36.07,67.95,40,0
.goto Stonetalon Mountains,34.22,61.25,40,0
.goto Stonetalon Mountains,31.33,61.38,40,0
>>Plant the seeds in the |cRXP_PICK_Gaea Dirt Mounds|r on the ground
.complete 6381,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Fire Elementals|r. Loot them for their |cRXP_LOOT_Increndrite|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
step
#label Ripper
.goto Stonetalon Mountains,30.75,61.91
>>Kill |cRXP_ENEMY_Bloodfury Ripper|r. Loot her for her |cRXP_LOOT_Remains|r
>>|cRXP_WARN_Be careful. She is an elite but it can be killed solo. Skip this step if it is too difficult|r
>>|cRXP_WARN_Clear the|r |cRXP_ENEMY_Harpies|r |cRXP_WARN_around her first! She has a large social pull radius|r
.complete 6283,1 
.unitscan Bloodfury Ripper
step
#completewith next
>>Plant the seeds in the |cRXP_PICK_Gaea Dirt Mounds|r on the ground
.complete 6381,1 
step
#loop
.goto Stonetalon Mountains,31.84,70.92,0
.goto Stonetalon Mountains,31.84,70.92,60,0
.goto Stonetalon Mountains,33.84,70.45,60,0
.goto Stonetalon Mountains,35.75,73.03,60,0
.goto Stonetalon Mountains,33.94,63.81,60,0
.goto Stonetalon Mountains,34.47,60.19,60,0
.goto Stonetalon Mountains,30.56,67.08,60,0
>>Kill |cRXP_ENEMY_Fire Elementals|r. Loot them for their |cRXP_LOOT_Increndrite|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
step
#loop
.goto Stonetalon Mountains,31.90,64.25,0
.goto Stonetalon Mountains,30.20,67.61,40,0
.goto Stonetalon Mountains,29.06,68.87,40,0
.goto Stonetalon Mountains,29.64,71.34,40,0
.goto Stonetalon Mountains,30.50,70.80,40,0
.goto Stonetalon Mountains,32.25,70.07,40,0
.goto Stonetalon Mountains,33.70,72.92,40,0
.goto Stonetalon Mountains,34.70,72.25,40,0
.goto Stonetalon Mountains,34.49,69.09,40,0
.goto Stonetalon Mountains,36.06,67.96,40,0
.goto Stonetalon Mountains,36.01,65.24,40,0
.goto Stonetalon Mountains,34.21,61.28,40,0
.goto Stonetalon Mountains,31.90,64.25,40,0
>>Plant the seeds in the |cRXP_PICK_Gaea Dirt Mounds|r on the ground
.complete 6381,1 
step
#completewith TammraTurnin2
.goto Stonetalon Mountains,37.89,67.77,30,0
.goto Stonetalon Mountains,39.58,69.84,30,0
.goto Stonetalon Mountains,41.20,70.09,30,0
.goto Stonetalon Mountains,42.07,66.41,30,0
.goto Stonetalon Mountains,43.54,65.35,30,0
.goto Stonetalon Mountains,44.68,63.50,30 >> Follow the Western path back to Sun Rock Retreat
step
.goto Stonetalon Mountains,47.36,64.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunaman|r
.turnin 6393 >> Turn in Elemental War
.target Tsunaman
step
#label TammraTurnin2
.goto Stonetalon Mountains,47.40,58.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tammra Windfield|r
.turnin 6381 >> Turn in New Life
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.20,61.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maggran|r
.turnin 6283 >> Turn in Bloodfury Bloodline
.target Maggran Earthbinder
.isQuestComplete 6283
step
#completewith next
.subzone 2539 >>Travel south toward Malaka'Jin
step
.goto Stonetalon Mountains,74.54,97.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
.turnin 1058 >> Turn in Jin'Zil's Forest Magic
.target Witch Doctor Jin'Zil
step
#optional
.goto Stonetalon Mountains,74.54,97.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
.turnin 1060 >> Turn in Letter to Jin'Zil
.target Witch Doctor Jin'Zil
.isOnQuest 1060
step
#label StonetalonSkip
#map Stonetalon Mountains
.goto The Barrens,35.26,27.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r
.turnin 1068 >> Turn in Shredding Machines
.target Seereth Stonebreak
.isQuestComplete 1068
step << Druid
#completewith DruidTraining3
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
.cooldown item,6948,>0,1
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 1850 >> Train your class spells
.target Loganaar
.xp <26,1
.xp >28,1
.cooldown item,6948,>0,1
step << Druid
#label DruidTraining3
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 3029 >> Train your class spells
.target Loganaar
.xp <28,1
.cooldown item,6948,>0,1
step
#label FlyToXroads1
#completewith next
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Crossroads >> Fly to The Crossroads
.target Bragok
.zoneskip The Barrens,1
.cooldown item,6948,<0
.train 425343,3 << Shaman
step << !Mage
#completewith next
.hs >> Hearth to The Crossroads
.use 6948
.cooldown item,6948,>0,1
.bindlocation 380,1
.subzoneskip 380
.train 425343,3 << Shaman
step << !Mage
.goto The Barrens,51.99,29.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Boorand Plainswind
.train 425343,3 << Shaman
step << Shaman
#season 2
#completewith next
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Sun Rock Retreat >> Fly to Sun Rock Retreat
.target Bragok
.zoneskip The Barrens,1
.train 425343,1
step << Shaman
#season 2
#loop
.goto Stonetalon Mountains,28.45,65.00,0
.goto Stonetalon Mountains,28.45,65.00,50,0
.goto Stonetalon Mountains,29.08,71.97,50,0
.goto Stonetalon Mountains,33.43,68.97,50,0
.goto Stonetalon Mountains,33.49,69.40,50,0
.goto Stonetalon Mountains,36.85,72.04,50,0
>>Kill the |cRXP_ENEMY_Primordial Anomaly|r. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of Primordial Fury]|r
>>|cRXP_WARN_Make sure to check its form (debuffs). If it's in|r |T136074:0|t[Nature Form]|cRXP_WARN_, deal|r |T135824:0|t[Fire Damage]|cRXP_WARN_. If it's in|r |T135819:0|t[Fire Form]|cRXP_WARN_, deal|r |T135865:0|t[Frost Damage]|cRXP_WARN_. If it's in|r |T135861:0|t[Water Form]|cRXP_WARN_, deal|r |T136085:0|t[Nature Damage]
>>|cRXP_WARN_Be careful as it casts |T132939:0|t[Knock Away] |cRXP_WARN_(Melee Instant: Knocks target up in the air and deals 80 damage)|r
>>|cRXP_WARN_It has a 5-8 minute respawn time and drops a random BoE green each time|r
.collect 210811,1 
.mob Primordial Anomaly
.train 425343,1
step << Shaman
#season 2
.cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Primordial Fury]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Greater Ghost Wolf]
.use 210811
.itemcount 210811,1 
.train 425343,1
step << Shaman
#season 2
.hs >> Hearth to The Crossroads
.use 6948
.cooldown item,6948,>0,1
.zoneskip Stonetalon Mountains,1
.bindlocation 380,1
.subzoneskip 380
step << Shaman
#ssf
#season 2
.goto Stonetalon Mountains,45.13,59.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharm|r
.fly Crossroads >>Fly to Crossroads
.target Tharm
.cooldown item,6948,<0
.zoneskip Stonetalon Mountains,1
step << Shaman
#ah
#season 2
.goto Stonetalon Mountains,45.13,59.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharm|r
.fly Orgrimmar >>Fly to Orgrimmar
.target Tharm
.cooldown item,6948,<0
.zoneskip Stonetalon Mountains,1
step << !Mage
#ah
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Orgrimmar >> Fly to Orgrimmar
.zoneskip The Barrens,1
.target Devrak
step << Mage
#ah
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
>>|cRXP_BUY_Buy the|r |T134332:0|t[Shredder Operating Manual Pages] |cRXP_BUY_from the Auction House if they're available|r 
.target Auctioneer Thathung
.collect 16645,1,6504,1 
.collect 16646,1,6504,1 
.collect 16647,1,6504,1 
.collect 16648,1,6504,1 
.collect 16649,1,6504,1 
.collect 16650,1,6504,1 
.collect 16651,1,6504,1 
.collect 16652,1,6504,1 
.collect 16653,1,6504,1 
.collect 16654,1,6504,1 
.collect 16655,1,6504,1 
.collect 16656,1,6504,1 
step << Hunter
#ah
.goto Orgrimmar,78.11,38.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'sora|r
.vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[Sturdy Recurve Bow] |cRXP_BUY_from her if it's available|r
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Jin'sora
.money <1.9467
step << Hunter
#ah
.goto Orgrimmar,78.11,38.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'sora|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,1800,549,1 << Hunter 
.target Jin'sora
step
#ah
#completewith next
.goto Orgrimmar,26.22,61.58,80,0
.goto Orgrimmar,15.66,63.33,30,0
.zone The Barrens >> Leave Orgrimmar through the Western exit
.zoneskip The Barrens
.zoneskip Ashenvale
step
#ah
#completewith next
.goto Kalimdor,56.80,45.45,15,0
.goto Ashenvale,94.54,76.15,40,0
.goto Ashenvale,93.49,73.76,40,0
.goto Ashenvale,92.47,71.18,40,0
.goto Ashenvale,91.85,68.71,40,0
.goto Ashenvale,91.39,65.86,25 >> Travel north alongside the river into Ashenvale
step
#ah
.goto Ashenvale,89.87,68.07,40,0
.goto Ashenvale,86.89,68.65,40,0
.goto Ashenvale,79.89,68.38,40,0
.goto Ashenvale,73.52,63.50,30 >>Travel to Splintertree Post
>>|cRXP_WARN_You may encounter a few level 29-30 mobs, avoid them if possible|r
.subzoneskip 431
step << Hunter
#ssf
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
.fly Splintertree Post >> Fly to Splintertree Post
.target Devrak
.zoneskip Ashenvale
step << !Hunter
#ssf
#label stonetalon25
.goto Ashenvale,68.66,85.86
.zone Ashenvale >> Travel to Ashenvale
]]);
