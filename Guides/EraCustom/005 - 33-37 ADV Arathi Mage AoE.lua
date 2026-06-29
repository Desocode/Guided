RXPGuides.RegisterGuide([[
#version 23
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 33-37 ADV Arathi Mage AoE
#next 37-41 ADV Dustwallow Mage AoE
step
#completewith next
.goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth|r
.fly Arathi >> Fly to Arathi Highlands
.target Gryth Thurden
step
#completewith next
.goto Arathi Highlands,43.25,55.38,60,0
.goto Arathi Highlands,45.82,59.22,60,0
.goto Arathi Highlands,50.58,59.70,60,0
.goto Arathi Highlands,53.08,61.57,60,0
.goto Arathi Highlands,59.09,63.04,60,0
+AoE the |cRXP_ENEMY_Forsaken Courier|r to reset it's spawn to the Go'Shek farm
.unitscan Forsaken Courier
step
.goto Arathi Highlands,60.18,53.85
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 659 >>Turn in Hints of a New Plague?
.accept 658 >>Accept Hints of a New Plague?
.target Quae
step
#completewith Grindto35
.goto Arathi Highlands,43.25,55.38,60,0
.goto Arathi Highlands,45.82,59.22,60,0
.goto Arathi Highlands,50.58,59.70,60,0
.goto Arathi Highlands,53.08,61.57,60,0
.goto Arathi Highlands,59.09,63.04,60,0
>>AoE the |cRXP_ENEMY_Forsaken Courier|r. Loot it for the |cRXP_LOOT_Sealed Folder|r
.complete 658,1 
.unitscan Forsaken Courier
step
#completewith next
.goto Arathi Highlands,66.34,64.29,120,0
.goto Arathi Highlands,63.49,67.77,120,0
.goto Arathi Highlands,61.25,72.37,120,0
.goto Arathi Highlands,64.77,73.22,120,0
.goto Arathi Highlands,70.50,69.58,120,0
>>|cRXP_WARN_If he's not up, skip this step|r
.goto Arathi Highlands,73.20,64.88,30 >> Check the camps for |cRXP_ENEMY_Nimar the Slayer|r
.unitscan Nimar the Slayer
step
#label Grindto34
#loop
.line Arathi Highlands,63.10,58.27,61.34,59.92,61.30,57.72,60.02,57.19,62.21,56.27,63.10,58.27
.goto Arathi Highlands,63.10,58.27,30,0
.goto Arathi Highlands,61.34,59.92,30,0
.goto Arathi Highlands,61.30,57.72,30,0
.goto Arathi Highlands,60.02,57.19,30,0
.goto Arathi Highlands,62.21,56.27,30,0
.goto Arathi Highlands,63.10,58.27,30,0
>>|cRXP_WARN_Make sure you AoE the |cRXP_ENEMY_Forsaken Courier|r pack as soon as they respawn so you can keep incorporating them into pulls|r
>>Cast |T132797:0|t[Conjure Water r4] if you run out of |T132799:0|t[Sweet Nectar]
.xp 34 >> AoE |cRXP_ENEMY_Hammerfall Grunts|r and |cRXP_ENEMY_Hammerfall Peons|r to Level 34
.mob Hammerfall Grunt
.mob Hammerfall Peon
step
#label Grindto35
#loop
.line Arathi Highlands,63.10,58.27,61.34,59.92,61.30,57.72,60.02,57.19,62.21,56.27,63.10,58.27
.goto Arathi Highlands,63.10,58.27,30,0
.goto Arathi Highlands,61.34,59.92,30,0
.goto Arathi Highlands,61.30,57.72,30,0
.goto Arathi Highlands,60.02,57.19,30,0
.goto Arathi Highlands,62.21,56.27,30,0
.goto Arathi Highlands,63.10,58.27,30,0
>>|cRXP_WARN_Make sure you AoE the |cRXP_ENEMY_Forsaken Courier|r pack as soon as they respawn so you can keep incorporating them into pulls|r
>>Cast |T132797:0|t[Conjure Water r4] if you run out of |T132799:0|t[Sweet Nectar]
>>|cRXP_WARN_Whenever your bags get full, cast|r |T135757:0|t[Teleport: Ironforge] |cRXP_WARN_(you do NOT need to be 35 yet to do this)|r
.xp 35 >> AoE |cRXP_ENEMY_Hammerfall Grunts|r and |cRXP_ENEMY_Hammerfall Peons|r to Level 35
.mob Hammerfall Grunt
.mob Hammerfall Peon
.zoneskip Ironforge
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Cone of Cold r2)
.target Dink
step
#completewith next
.goto Ironforge,28.70,25.58,12,0
.goto Ironforge,29.60,26.62,10,0
.goto Ironforge,30.50,26.58,10,0
.goto Ironforge,31.32,27.80,12 >>Travel toward |cRXP_FRIENDLY_Ginny|r
step
.goto Ironforge,31.32,27.80
>>Talk to |cRXP_FRIENDLY_Ginny|r inside
>>|cRXP_BUY_Buy seven|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from her|r
.collect 17031,7 
.target Ginny Longberry
step
#completewith next
.hs >> Hearth to Southshore
step
.goto Hillsbrad Foothills,51.17,58.93
>>Talk to |cRXP_FRIENDLY_Anderson|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from him|r
.collect 1645,160,657,1 
.target Innkeeper Anderson
step
#completewith Robert1
>>Kill a |cRXP_ENEMY_Shadowy Assassin|r if the event is up. Loot it for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
>>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] |cRXP_WARN_to start the quest|r
.collect 3668,1,522,1 
.accept 522 >> Accept Assassin's Contract
.use 3668
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.turnin 525 >>Turn in Further Mysteries
.accept 537 >>Accept Dark Council
.turnin 522 >>Turn in Assassin's Contract
.accept 523 >>Accept Baron's Demise
.target Magistrate Henry Maleb
.isOnQuest 522
step
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.turnin 525 >>Turn in Further Mysteries
.accept 537 >>Accept Dark Council
.accept 523 >>Accept Baron's Demise
.target Magistrate Henry Maleb
.isQuestTurnedIn 522
step
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.turnin 525 >>Turn in Further Mysteries
.accept 537 >>Accept Dark Council
.target Magistrate Henry Maleb
step
#label Robert1
.goto Hillsbrad Foothills,52.42,55.96
>>Talk to |cRXP_FRIENDLY_Robert|r outside
.vendor 3543 >> Vendor Trash. Repair
.target Robert Aebischer
.isQuestTurnedIn 525
step
#completewith Grindto36
.goto Hillsbrad Foothills,49.34,52.27
>>Talk to |cRXP_FRIENDLY_Darla|r
.fly Arathi >> Fly to Arathi
.target Darla Harris
.zoneskip Arathi Highlands
step
#completewith next
.goto Arathi Highlands,43.25,55.38,60,0
.goto Arathi Highlands,45.82,59.22,60,0
.goto Arathi Highlands,50.58,59.70,60,0
.goto Arathi Highlands,53.08,61.57,60,0
.goto Arathi Highlands,59.09,63.04,60,0
>>AoE the |cRXP_ENEMY_Forsaken Courier|r. Loot it for the |cRXP_LOOT_Sealed Folder|r
.complete 658,1 
.unitscan Forsaken Courier
step
#label Grindto36
#loop
.line Arathi Highlands,63.10,58.27,61.34,59.92,61.30,57.72,60.02,57.19,62.21,56.27,63.10,58.27
.goto Arathi Highlands,63.10,58.27,30,0
.goto Arathi Highlands,61.34,59.92,30,0
.goto Arathi Highlands,61.30,57.72,30,0
.goto Arathi Highlands,60.02,57.19,30,0
.goto Arathi Highlands,62.21,56.27,30,0
.goto Arathi Highlands,63.10,58.27,30,0
>>|cRXP_WARN_Make sure you AoE the |cRXP_ENEMY_Forsaken Courier|r pack as soon as they respawn so you can keep incorporating them into pulls|r
.xp 36 >> AoE |cRXP_ENEMY_Hammerfall Grunts|r and |cRXP_ENEMY_Hammerfall Peons|r to Level 36
.mob Hammerfall Grunt
.mob Hammerfall Peon
step
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step
.goto Stormwind City,38.61,79.39
>>Talk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells (Blizzard r3, Dampen Magic r3, Mana Shield r3, Fireball r7)
.target Jennea Cannon
step
#completewith next
.goto Stormwind City,36.30,82.90,6 >>Go through the green portal
step
#completewith next
.goto Stormwind City,39.83,85.57,12,0
>>Go inside The Blue Recluse
.goto Stormwind City,41.50,89.39,10 >>Travel toward |cRXP_FRIENDLY_Angus|r
step
.goto Stormwind City,39.83,85.57
>>Talk to |cRXP_FRIENDLY_Angus|r inside
.accept 1260 >>Accept Morgan Stern
.target Angus Stern
step
#completewith next
.hs >> Hearth to Southshore
step
.goto Hillsbrad Foothills,51.17,58.93
>>Talk to |cRXP_FRIENDLY_Anderson|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from him|r
.collect 1645,160,657,1 
.target Innkeeper Anderson
step
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.turnin 522 >>Turn in Assassin's Contract
.target Magistrate Henry Maleb
.isOnQuest 522
step
.goto Hillsbrad Foothills,52.42,55.96
>>Talk to |cRXP_FRIENDLY_Robert|r outside
.vendor 3543 >> Vendor Trash. Repair
.target Robert Aebischer
.isQuestTurnedIn 525
step
#completewith Grindto37
.goto Hillsbrad Foothills,49.34,52.27
>>Talk to |cRXP_FRIENDLY_Darla|r
.fly Arathi >> Fly to Arathi
.target Darla Harris
.zoneskip Arathi Highlands
step
#completewith next
.goto Arathi Highlands,43.25,55.38,60,0
.goto Arathi Highlands,45.82,59.22,60,0
.goto Arathi Highlands,50.58,59.70,60,0
.goto Arathi Highlands,53.08,61.57,60,0
.goto Arathi Highlands,59.09,63.04,60,0
>>AoE the |cRXP_ENEMY_Forsaken Courier|r. Loot it for the |cRXP_LOOT_Sealed Folder|r
.complete 658,1 
.unitscan Forsaken Courier
step
#label Grindto37
#loop
.line Arathi Highlands,63.10,58.27,61.34,59.92,61.30,57.72,60.02,57.19,62.21,56.27,63.10,58.27
.goto Arathi Highlands,63.10,58.27,30,0
.goto Arathi Highlands,61.34,59.92,30,0
.goto Arathi Highlands,61.30,57.72,30,0
.goto Arathi Highlands,60.02,57.19,30,0
.goto Arathi Highlands,62.21,56.27,30,0
.goto Arathi Highlands,63.10,58.27,30,0
>>|cRXP_WARN_Make sure you AoE the |cRXP_ENEMY_Forsaken Courier|r pack as soon as they respawn so you can keep incorporating them into pulls|r
.xp 37 >> AoE |cRXP_ENEMY_Hammerfall Grunts|r and |cRXP_ENEMY_Hammerfall Peons|r to Level 37
.mob Hammerfall Grunt
.mob Hammerfall Peon
step
.goto Arathi Highlands,60.36,58.87
>>AoE the |cRXP_ENEMY_Forsaken Courier|r. Loot it for the |cRXP_LOOT_Sealed Folder|r
.complete 658,1 
.unitscan Forsaken Courier
step
>>Talk to |cRXP_FRIENDLY_Quae|r and |cRXP_FRIENDLY_Kinelory|r
.turnin 658 >>Turn in Hints of a New Plague?
.accept 657 >>Accept Hints of a New Plague?
.target +Quae
.goto Arathi Highlands,60.18,53.85
.turnin 657 >>Turn in Hints of a New Plague?
.accept 660 >>Accept Hints of a New Plague?
.goto Arathi Highlands,60.24,53.92
.target +Kinelory
step
.goto Arathi Highlands,60.11,55.31,20,0
.goto Arathi Highlands,60.28,57.51,20,0
.goto Arathi Highlands,60.34,58.93,20,0
.goto Arathi Highlands,60.25,61.26,30,0
.goto Arathi Highlands,59.19,60.82,30,0
.goto Arathi Highlands,58.82,53.88,40,0
>>Escort |cRXP_FRIENDLY_Kinelory|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Hammerfall Grunts|r and |cRXP_ENEMY_Hammerfall Peons|r will spawn next to the 2 silos and in front of the barn|r
>>|cRXP_WARN_Do NOT run out of |cRXP_FRIENDLY_Kinelory|r's range|r
.complete 660,1 
.mob Hammerfall Grunt
.mob Hammerfall Peon
.target Kinelory
step
.goto Arathi Highlands,60.18,53.85
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 660 >>Turn in Hints of a New Plague?
.accept 661 >>Accept Hints of a New Plague?
.target Quae
step
#completewith next
.hs >> Hearth to Southshore
step
.goto Hillsbrad Foothills,51.17,58.93
>>Talk to |cRXP_FRIENDLY_Anderson|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from him|r
.collect 1645,160,661,1 
.target Innkeeper Anderson
step
.goto Hillsbrad Foothills,50.35,59.04
>>Talk to |cRXP_FRIENDLY_Phin|r
.turnin 661,1 >>Turn in Hints of a New Plague?
.target Phin Odelic
step
#completewith Dustwallow
+Equip the |T132673:0|t[Dustfall Robes]
.use 15455
.itemcount 15455,1
.itemStat 5,LEVEL,<33
step
.goto Hillsbrad Foothills,52.42,55.96
>>Talk to |cRXP_FRIENDLY_Robert|r
.vendor 3543 >> Vendor Trash. Repair
.target Robert Aebischer
.isOnQuest 1302
step
.goto Hillsbrad Foothills,49.34,52.27
>>Talk to |cRXP_FRIENDLY_Darla|r
.fly Wetlands >> Fly to Wetlands
.target Darla Harris
.zoneskip Hillsbrad Foothills,1
step
#completewith next
.goto Wetlands,8.87,60.77,30,0
.goto Wetlands,5.68,63.52,30,0
.goto Wetlands,5.07,63.45,20 >>Travel toward the Theramore Boat
step
#label Dustwallow
.goto Wetlands,4.70,63.56,-1
.goto Wetlands,44.37,48.97,-1
.zone Dustwallow Marsh >> Take the boat to Theramore
step
.goto Dustwallow Marsh,67.47,51.30
>>Talk to |cRXP_FRIENDLY_Baldruc|r
.fp Theramore >> Get the Theramore Flight Path
.target Baldruc
]]);
