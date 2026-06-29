RXPGuides.RegisterGuide([[
#version 23
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 41-41 ADV Dustwallow/Alterac Mage AoE
#next 41-42 ADV Badlands Mage AoE
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
.skill riding,<75,1
step
#completewith BankWithdraw
.goto Ironforge,33.44,63.56,30 >>Enter the Ironforge Bank
.skill riding,<75,1
step
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
.bankwithdraw 2843,3658 >> Withdraw the following items from your bank:
>>|T133727:0|t[Dirty Knucklebones]
>>|T133743:0|t[Recovered Tome]
.target Bailey Stonemantle
.isOnQuest 500
.isOnQuest 540
.skill riding,<75,1
step
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
.bankwithdraw 3658 >> Withdraw the following items from your bank:
>>|T133743:0|t[Recovered Tome]
.target Bailey Stonemantle
.isOnQuest 540
.skill riding,<75,1
step
#label BankWithdraw
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
.bankwithdraw 2843 >> Withdraw the following items from your bank:
>>|T133727:0|t[Dirty Knucklebones]
.target Bailey Stonemantle
.isOnQuest 500
.skill riding,<75,1
step
#completewith next
.goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth|r
.fly Southshore >> Fly to Southshore
.target Gryth Thurden
.skill riding,<75,1
step
.zone Hillsbrad Foothills >> Travel to Southshore
.skill riding,<75,1
step
.goto Hillsbrad Foothills,49.89,58.30
>>Kill a |cRXP_ENEMY_Shadowy Assassin|r if the event is up. Loot it for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
>>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] |cRXP_WARN_to start the quest|r
>>|cRXP_WARN_If the event isn't up, skip this step|r
.collect 3668,1,522,1 
.accept 522 >> Accept Assassin's Contract
.use 3668
.unitscan Shadowy Assassin
.skill riding,<75,1
step
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.turnin 522 >>Turn in Assassin's Contract
.accept 523 >>Accept Baron's Demise
.target Magistrate Henry Maleb
.isOnQuest 522
.skill riding,<75,1
step
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.accept 523 >>Accept Baron's Demise
.target Magistrate Henry Maleb
.isQuestTurnedIn 522
.skill riding,<75,1
step
.goto Alterac Mountains,47.98,63.32,60,0
.goto Alterac Mountains,51.37,57.11,60,0
.goto Alterac Mountains,48.09,48.06,60,0
.goto Alterac Mountains,52.57,40.38,60,0
.goto Alterac Mountains,48.30,35.26,60,0
.goto Alterac Mountains,44.96,31.01,60,0
.goto Alterac Mountains,47.98,63.32,60,0
.goto Alterac Mountains,51.37,57.11,60,0
.goto Alterac Mountains,48.09,48.06,60,0
.goto Alterac Mountains,52.57,40.38,60,0
.goto Alterac Mountains,48.30,35.26
>>AoE |cRXP_ENEMY_Crushridge Brutes|r and |cRXP_ENEMY_Crushridge Ogres|r. Loot them for their |cRXP_LOOT_Dirty Knucklebones|r and |cRXP_LOOT_Recovered Tomes|r
.complete 500,1 
.complete 540,1 
.disablecheckbox
.mob Crushridge Brute
.mob Crushridge Ogre
.isQuestTurnedIn 538 
.skill riding,<75,1
step
.goto Alterac Mountains,47.98,63.32,60,0
.goto Alterac Mountains,51.37,57.11,60,0
.goto Alterac Mountains,48.09,48.06,60,0
.goto Alterac Mountains,52.57,40.38,60,0
.goto Alterac Mountains,48.30,35.26,60,0
.goto Alterac Mountains,44.96,31.01,60,0
.goto Alterac Mountains,47.98,63.32,60,0
.goto Alterac Mountains,51.37,57.11,60,0
.goto Alterac Mountains,48.09,48.06,60,0
.goto Alterac Mountains,52.57,40.38,60,0
.goto Alterac Mountains,48.30,35.26
>>AoE |cRXP_ENEMY_Crushridge Brutes|r and |cRXP_ENEMY_Crushridge Ogres|r. Loot them for their |cRXP_LOOT_Dirty Knucklebones|r
.complete 500,1 
.mob Crushridge Brute
.mob Crushridge Ogre
.isQuestAvailable 538
.skill riding,<75,1
step
#completewith next
.line Alterac Mountains,35.58,54.44,35.26,54.33,35.20,54.18,35.77,53.74,36.26,55.11,36.66,54.81,36.29,53.75,37.30,52.85,37.59,52.71,38.24,52.79,38.87,51.55,39.28,50.93,39.52,49.71,40.14,47.23,40.91,46.30,40.24,46.09,40.13,47.69,39.19,51.17,38.51,52.01,38.11,52.68,37.46,52.78,36.28,53.71,35.88,52.69,35.52,53.01,35.77,53.74,35.20,54.18,35.26,54.33,35.58,54.44
>>Kill |cRXP_ENEMY_Grel'borg the Miser|r. Loot him for the |cRXP_LOOT_Perenolde Tiara|r
>>|cRXP_WARN_Be careful as he casts |T135824:0|t[Quick Flame Ward] |cRXP_WARN_(10-second fire immunity)|r
.complete 543,1 
.unitscan Grel'borg the Miser
.skill riding,<75,1
step
#completewith next
.goto Alterac Mountains,39.49,46.75,10,0
.goto Alterac Mountains,39.15,46.98,10,0
.goto Alterac Mountains,38.92,47.37,10,0
.goto Alterac Mountains,38.42,46.37,10 >>Go inside the Town Hall
.isOnQuest 540
.skill riding,<75,1
step
.goto Alterac Mountains,38.42,46.37
>>Open the |cRXP_PICK_Weathered Bookcase|r. Loot it for the |cRXP_LOOT_Worn Leather Book|r
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_Don't kill |cRXP_ENEMY_Muckrake|r. Cast |T136071:0|t[Polymorph] on him and then run away|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Muckrake|r casts|r |T132938:0|t[Pummel] |cRXP_WARN_(interrupts for 5 seconds)|r
.complete 540,2 
.isOnQuest 540
.skill riding,<75,1
step
.line Alterac Mountains,35.58,54.44,35.26,54.33,35.20,54.18,35.77,53.74,36.26,55.11,36.66,54.81,36.29,53.75,37.30,52.85,37.59,52.71,38.24,52.79,38.87,51.55,39.28,50.93,39.52,49.71,40.14,47.23,40.91,46.30,40.24,46.09,40.13,47.69,39.19,51.17,38.51,52.01,38.11,52.68,37.46,52.78,36.28,53.71,35.88,52.69,35.52,53.01,35.77,53.74,35.20,54.18,35.26,54.33,35.58,54.44
.goto Alterac Mountains,40.50,46.69,30,0
.goto Alterac Mountains,39.37,51.02,40,0
.goto Alterac Mountains,37.59,52.84
>>Kill |cRXP_ENEMY_Grel'borg the Miser|r. Loot him for the |cRXP_LOOT_Perenolde Tiara|r
>>|cRXP_WARN_Be careful as he casts |T135824:0|t[Quick Flame Ward] |cRXP_WARN_(10-second fire immunity)|r
>>|cRXP_WARN_He patrols between the front of the Town Hall and inside the Barracks. If he's inside the Barracks, wait for him to patrol back out|r
.complete 543,1 
.unitscan Grel'borg the Miser
.skill riding,<75,1
step
#sticky
#label Parchment
.goto Alterac Mountains,39.18,14.66,-1
>>Open the |cRXP_PICK_Worn Wooden Chest|r on the ground inside. Loot it for the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r]
>>|cRXP_WARN_Use the|r |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r] |cRXP_WARN_to start the quest|r
.collect 3706,1,551,1 
.accept 551 >> Accept The Ensorcelled Parchment
.use 3706
.skill riding,<75,1
step
#completewith next
>>AoE |cRXP_ENEMY_Syndicate Enforcers|r and |cRXP_ENEMY_Syndicate Assassins|r. Loot them for |cRXP_LOOT_Alterac Signet Rings|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Syndicate Enforcers|r cast|r |T132369:0|t[Whirlwind] |cRXP_WARN_(melee-ranged AoE), and |cRXP_ENEMY_Syndicate Assassins|r are|r |T132320:0|t[Stealthed]
.complete 512,1 
.mob Syndicate Enforcer
.mob Syndicate Assassin
.skill riding,<75,1
step
.goto Alterac Mountains,39.22,14.30,-1
>>AoE |cRXP_ENEMY_Nagaz|r inside. Loot him for the |cRXP_LOOT_Head of Nagaz|r
.complete 537,2 
.mob Nagaz
.skill riding,<75,1
step
#completewith ShadowEnd
#requires Parchment
>>AoE |cRXP_ENEMY_Syndicate Saboteurs|r and |cRXP_ENEMY_Syndicate Sentries|r. Loot them for |cRXP_LOOT_Alterac Signet Rings|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Syndicate Saboteurs|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_and|r |T132312:0|t[Fire Shot] |cRXP_WARN_(Deals ranged damage), and |cRXP_ENEMY_Syndicate Sentries|r cast|r |T132357:0|t[Shield Bash] |cRXP_WARN_(interrupts for 6 seconds) and|r |T132362:0|t[Shield Wall] |cRXP_WARN_(reduces damage taken by 75% for 10 seconds)|r
.complete 512,1 
.mob Syndicate Saboteur
.mob Syndicate Sentry
.skill riding,<75,1
step
#completewith ShadowEnd
#requires Parchment
>>AoE |cRXP_ENEMY_Baron Vardus|r. Loot him for the Head of |cRXP_LOOT_Baron Vardus|r
>>|cRXP_WARN_He can be found in any of the four encampments, or Strahnbrad's Inn inside the basement|r
>>|cRXP_WARN_Be careful as he casts |T132222:0|t[Backhand] |cRXP_WARN_(melee-range stun for 2 seconds),|r |T135848:0|t[Frost Nova] |cRXP_WARN_(roots for 8 seconds), and|r |T135846:0|t[Frostbolt] |cRXP_WARN_(slows and deals magic damage)|r
.complete 523,1 
.isOnQuest 523
.unitscan Baron Vardus
.skill riding,<75,1
step
#requires Parchment
.goto Alterac Mountains,47.78,17.43
>>AoE |cRXP_ENEMY_Argus Shadow Mages|r
>>|cRXP_WARN_Be careful as they cast|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(Deals ranged damage), and transform into rogue-type melee mobs at <20% health|r
>>|cRXP_WARN_There is one |cRXP_ENEMY_Argus Shadow Mage|r per camp|r
.complete 537,1,1 
.mob Argus Shadow Mage
.skill riding,<75,1
step
.goto Alterac Mountains,53.27,20.86
>>AoE |cRXP_ENEMY_Argus Shadow Mages|r
>>|cRXP_WARN_Be careful as they cast|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(Deals ranged damage), and transform into rogue-type melee mobs at <20% health|r
>>|cRXP_WARN_There is one |cRXP_ENEMY_Argus Shadow Mage|r per camp|r
.complete 537,1,2 
.mob Argus Shadow Mage
.skill riding,<75,1
step
.goto Alterac Mountains,56.18,27.34
>>AoE |cRXP_ENEMY_Argus Shadow Mages|r
>>|cRXP_WARN_Be careful as they cast|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(Deals ranged damage), and transform into rogue-type melee mobs at <20% health|r
>>|cRXP_WARN_There is one |cRXP_ENEMY_Argus Shadow Mage|r per camp|r
.complete 537,1,3 
.mob Argus Shadow Mage
.skill riding,<75,1
step
#label ShadowEnd
.goto Alterac Mountains,58.65,30.58
>>AoE |cRXP_ENEMY_Argus Shadow Mages|r
>>|cRXP_WARN_Be careful as they cast|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(Deals ranged damage), and transform into rogue-type melee mobs at <20% health|r
>>|cRXP_WARN_There is one |cRXP_ENEMY_Argus Shadow Mage|r per camp|r
.complete 537,1 
.mob Argus Shadow Mage
.skill riding,<75,1
step
#completewith next
>>AoE |cRXP_ENEMY_Syndicate Wizards|r and |cRXP_ENEMY_Syndicate Spies|r. Loot them for |cRXP_LOOT_Alterac Signet Rings|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Syndicate Wizards|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(Deals ranged damage), and |cRXP_ENEMY_Syndicate Spies|r cast|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind) and are|r |T132320:0|t[Stealthed]
.complete 512,1 
.mob Syndicate Wizard
.mob Syndicate Spy
.skill riding,<75,1
step
.goto Alterac Mountains,61.82,43.87,10,0
.goto Alterac Mountains,60.40,43.60,10,0
.goto Alterac Mountains,59.90,43.97,10,0
.goto Alterac Mountains,60.30,43.14,6,0
.goto Alterac Mountains,47.78,17.43,40,0
.goto Alterac Mountains,53.27,20.86,40,0
.goto Alterac Mountains,56.18,27.34,40,0
.goto Alterac Mountains,58.65,30.58,40,0
.goto Alterac Mountains,61.82,43.87,10,0
.goto Alterac Mountains,60.40,43.60,10,0
.goto Alterac Mountains,59.90,43.97,10,0
.goto Alterac Mountains,60.30,43.14,6,0
.goto Alterac Mountains,47.78,17.43,40,0
.goto Alterac Mountains,53.27,20.86,40,0
.goto Alterac Mountains,56.18,27.34,40,0
.goto Alterac Mountains,58.65,30.58
>>AoE |cRXP_ENEMY_Baron Vardus|r. Loot him for the Head of |cRXP_LOOT_Baron Vardus|r
>>|cRXP_WARN_He can be found in any of the four encampments, or Strahnbrad's Inn inside the basement|r
>>|cRXP_WARN_Be careful as he casts |T132222:0|t[Backhand] |cRXP_WARN_(melee-range stun for 2 seconds),|r |T135848:0|t[Frost Nova] |cRXP_WARN_(roots for 8 seconds), and|r |T135846:0|t[Frostbolt] |cRXP_WARN_(slows and deals magic damage)|r
.complete 523,1 
.isOnQuest 523
.unitscan Baron Vardus
.skill riding,<75,1
step
#loop
.line Alterac Mountains,60.12,41.78,63.95,44.28,64.11,46.16,62.07,47.29,59.82,46.33,58.54,45.86,57.93,41.46,60.12,41.78
.goto Alterac Mountains,60.12,41.78,30,0
.goto Alterac Mountains,63.95,44.28,30,0
.goto Alterac Mountains,64.11,46.16,30,0
.goto Alterac Mountains,62.07,47.29,30,0
.goto Alterac Mountains,59.82,46.33,30,0
.goto Alterac Mountains,58.54,45.86,30,0
.goto Alterac Mountains,57.93,41.46,30,0
.goto Alterac Mountains,60.12,41.78,30,0
>>AoE |cRXP_ENEMY_Syndicate Wizards|r and |cRXP_ENEMY_Syndicate Spies|r. Loot them for |cRXP_LOOT_Alterac Signet Rings|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Syndicate Wizards|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(Deals ranged damage), and |cRXP_ENEMY_Syndicate Spies|r cast|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind) and are|r |T132320:0|t[Stealthed]
.complete 512,1 
.mob Syndicate Wizard
.mob Syndicate Spy
.skill riding,<75,1
step
#completewith next
.goto Alterac Mountains,68.10,46.49,40,0
.goto Alterac Mountains,76.22,45.04,40,0
.goto Western Plaguelands,42.92,85.07,10 >>Travel toward |cRXP_FRIENDLY_Bibilfaz|r
.skill riding,<75,1
step
#completewith SouthshoreEnd
.goto Western Plaguelands,42.92,85.07
>>Talk to |cRXP_FRIENDLY_Bibilfaz|r
.fly Southshore >> Fly to Southshore
.target Bibilfaz Featherwhistle
.skill riding,<75,1
step
.goto Hillsbrad Foothills,50.57,57.09
>>Talk to |cRXP_FRIENDLY_Dibbs|r
.turnin 540 >>Turn in Preserving Knowledge
.accept 542 >>Accept Return to Milton
.turnin 551 >>Turn in The Ensorcelled Parchment
.accept 554 >>Accept Stormpike's Deciphering
.target Loremaster Dibbs
.isQuestComplete 540
.skill riding,<75,1
step
.goto Hillsbrad Foothills,50.57,57.09
>>Talk to |cRXP_FRIENDLY_Dibbs|r
.accept 542 >>Accept Return to Milton
.turnin 551 >>Turn in The Ensorcelled Parchment
.accept 554 >>Accept Stormpike's Deciphering
.target Loremaster Dibbs
.isQuestTurnedIn 540
.skill riding,<75,1
step
.goto Hillsbrad Foothills,50.57,57.09
>>Talk to |cRXP_FRIENDLY_Dibbs|r
.turnin 551 >>Turn in The Ensorcelled Parchment
.accept 554 >>Accept Stormpike's Deciphering
.target Loremaster Dibbs
.skill riding,<75,1
step
.goto Hillsbrad Foothills,49.47,58.73
>>Talk to |cRXP_FRIENDLY_Redpath|r
.turnin 500 >>Turn in Crushridge Bounty
.target Marshal Redpath
.skill riding,<75,1
step
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.turnin 512 >>Turn in Noble Deaths
.turnin 523 >>Turn in Baron's Demise
.turnin 537 >>Turn in Dark Council
.target Magistrate Henry Maleb
.isQuestComplete 523
.skill riding,<75,1
step
#label SouthshoreEnd
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.turnin 512 >>Turn in Noble Deaths
.turnin 537 >>Turn in Dark Council
.target Magistrate Henry Maleb
.skill riding,<75,1
step
#completewith Perenolde
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
.skill riding,<75,1
step
.goto Stormwind City,32.16,79.84
>>Enter the building
>>Talk to |cRXP_FRIENDLY_Charys|r
>>|cRXP_BUY_Buy two|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from her|r
.collect 17031,2 
.target Charys Yserian
.skill riding,<75,1
step
#completewith next
.goto Stormwind City,68.97,29.47,15,0
.goto Stormwind City,72.54,25.97,15,0
.goto Stormwind City,74.00,30.25,20 >>Travel toward |cRXP_FRIENDLY_Remington|r
.skill riding,<75,1
step
.goto Stormwind City,74.18,7.46
>>Talk to |cRXP_FRIENDLY_Remington|r
.turnin 543 >> Turn in The Perenolde Tiara
.target Court Remington Ridgewell
.skill riding,<75,1
step
#completewith next
.goto Stormwind City,72.62,23.18,15,0
.goto Stormwind City,69.72,16.66,15,0
.goto Stormwind City,70.39,11.38,15,0
>>Go into the Stormwind Library
.goto Stormwind City,74.18,7.46,20 >>Travel toward |cRXP_FRIENDLY_Milton|r
.skill riding,<75,1
step
.goto Stormwind City,74.18,7.46
>>Talk to |cRXP_FRIENDLY_Milton|r
.turnin 542 >>Turn in Return to Milton
.target Milton Sheaf
.isQuestComplete 542
.skill riding,<75,1
step
#sticky
#label Abandons
.abandon 500 >> Abandon Crushridge Bounty
.abandon 512 >> Abandon Noble Deaths
.abandon 523 >> Abandon Baron's Demise
.abandon 537 >> Abandon Dark Council
.abandon 540 >> Abandon Preserving Knowledge
.abandon 543 >> Abandon The Perenolde Tiara
step
#loop
.line Dustwallow Marsh,57.08,20.98,57.23,22.54,57.33,15.23,58.46,15.83,54.16,15.10,54.10,11.87,53.99,19.78,57.08,20.98
.goto Dustwallow Marsh,57.08,20.98,30,0
.goto Dustwallow Marsh,57.23,22.54,30,0
.goto Dustwallow Marsh,57.33,15.23,30,0
.goto Dustwallow Marsh,58.46,15.83,30,0
.goto Dustwallow Marsh,54.16,15.10,30,0
.goto Dustwallow Marsh,54.10,11.87,30,0
.goto Dustwallow Marsh,53.99,19.78,30,0
.goto Dustwallow Marsh,57.08,20.98,30,0
.xp 41+81430 >> AoE |cRXP_ENEMY_Mirefin Muckdwellers|r, |cRXP_ENEMY_Mirefin Coastrunners|r, |cRXP_ENEMY_Mirefin Puddlejumpers|r, |cRXP_ENEMY_Mirefin Murlocs|r, and |cRXP_ENEMY_Mudrock Spikeshells|r to 81430+/95800xp
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mirefin Muckdwellers|r cast|r |T136134:0|t[Creeping Mold] |cRXP_WARN_(20 damage every 10 seconds for 1 min), and |cRXP_ENEMY_Mirefin Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
.mob Mirefin Muckdweller
.mob Mirefin Coastrunner
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mudrock Spikeshell
.skill riding,75,1
.zoneskip Dustwallow Marsh,1
step << Human
#completewith ExitSW
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step << Human
.goto Stormwind City,38.62,79.30
>>Talk to |cRXP_FRIENDLY_Jennea|r
>>|cRXP_WARN_If you have enough money after vendoring for your|r |T132261:0|t[Horse Bridle] |cRXP_WARN_(90 Gold) but NOT your training (1g 35s each spell), skip this step|r
.trainer >> Train your class spells (Ice Armor r2, Flamestrike r4, Conjure Water r5)
.target Jennea Cannon
.istrained 10138 
.skill riding,75,1
step << Human
#label ExitSW
.goto Elwynn Forest,32.27,49.70
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132261:0|t[Horse Bridle] |cRXP_WARN_(90 Gold)|r
.zone Elwynn Forest >> Exit Stormwind
.skill riding,75,1
step << Human
.goto Elwynn Forest,84.16,65.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katie|r
>>Vendor Trash
+|cRXP_BUY_Buy any|r |T132261:0|t[Horse Bridle] |cRXP_BUY_that you like from her|r
.target Katie Hunter
.itemcount 2414,<1 
.itemcount 5655,<1 
.itemcount 5656,<1 
.zoneskip Elwynn Forest,1
step << Human
.goto Elwynn Forest,84.32,64.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal|r
.skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
.target Randal Hunter
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Pinto Bridle|r] to learn it
.use 2414
.itemcount 2414,1
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Chestnut Mare Bridle|r] to learn it
.use 5655
.itemcount 5655,1
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Brown Horse Bridle|r] to learn it
.use 5656
.itemcount 5656,1
.zoneskip Elwynn Forest,1
step
#completewith FlyLM
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
>>|cRXP_WARN_If you have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold) but NOT your training (1g 35s each spell), skip this step|r
.trainer >> Train your class spells (Ice Armor r2, Flamestrike r4, Conjure Water r5)
.target Dink
.istrained 10138 
.xp >42,1
.skill riding,<75,1 = show if you have 75
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Fireball r8, Arcane Intellect r4, Cone of Cold r3, Conjure Food r5)
.target Dink
.xp <42,1
step
.goto Ironforge,31.32,27.80
>>Talk to |cRXP_FRIENDLY_Ginny|r inside
>>|cRXP_BUY_Buy nine|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from her|r
.collect 17031,9 
.target Ginny Longberry
.xp <42,1
step << Gnome skip
.goto Ironforge,25.30,10.97
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold)|r
.zone Dun Morogh >> |cRXP_WARN_Jump up onto the pillar above |cRXP_FRIENDLY_Toldren|r. Logout skip to Dun Morogh|r
.skill riding,75,1
step << Gnome
#completewith next
.goto Ironforge,15.16,85.70,20,0
.goto Dun Morogh,49.12,47.95
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold)|r
.zone Dun Morogh >> Exit Ironforge
step << Gnome
.goto Dun Morogh,49.12,47.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milli|r
>>Vendor Trash
+|cRXP_BUY_Buy any|r |T132247:0|t[Mechanostrider] |cRXP_BUY_that you like from her|r
.target Milli Featherwhistle
.itemcount 8563,<1 
.itemcount 8595,<1 
.itemcount 13321,<1 
.itemcount 13322,<1 
.zoneskip Dun Morogh,1
step << Gnome
.goto Dun Morogh,49.14,48.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy|r
.skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
.target Binjy Featherwhistle
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Red Mechanostrider|r] to learn it
.use 8563
.itemcount 8563,1
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Blue Mechanostrider|r] to learn it
.use 8595
.itemcount 8595,1
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Green Mechanostrider|r] to learn it
.use 13321
.itemcount 13321,1
.zoneskip Dun Morogh,1
step << skip
.cast 55884 >> Use the |T132247:0|t[|cRXP_WARN_Unpainted Mechanostrider|r] to learn it
.use 13322
.itemcount 13322,1
.zoneskip Dun Morogh,1
step << Gnome
#completewith FlyLM
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Dun Morogh,1
step
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
.bankdeposit 4306 >> Deposit the following items into the bank:
>>|T132905:0|t[Silk Cloth]
.target Bailey Stonemantle
.itemcount 4306,1
step
.goto Ironforge,74.64,11.74
>>Talk to |cRXP_FRIENDLY_Stormpike|r
.turnin 554 >> Turn in Stormpike's Deciphering
.target Prospector Stormpike
.isQuestComplete 554
step
#label FlyLM
#completewith next
.goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth|r
.fly Thelsamar >> Fly to Thelsamar
.target Gryth Thurden
step
.zone Loch Modan >> Travel to Loch Modan
]]);
