RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 39-40 Alterac/Arathi
#next RestedXP Alliance 40-50\40-40 Dustwallow Marsh;RestedXP Alliance 40-50\40-40 Dustwallow Marsh2
step << Warlock
>>Abandon the following quests, you will pick them up again later
.abandon 196 >> Abandon Raptor Mastery
.abandon 193 >> Abandon Panther Mastery
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.accept 691 >> Accept Worth Its Weight in Gold
.target Apprentice Kryten
.maxlevel 40
step
#optional
.goto Arathi Highlands,62.50,33.72
>>Click on the |T133294:0|t[|cRXP_FRIENDLY_Pendant of Myzrael|r] in your bags to accept the quest it gives
.use 4614 
.accept 635 >> Accept Crystal in the Mountains
.itemcount 4614,1 
step
#optional
.goto Arathi Highlands,62.50,33.72
>>Click the |cRXP_PICK_Shards of Myzrael|r
.turnin 635 >> Turn in Crystal in the Mountains
.isOnQuest 635
step
.goto Arathi Highlands,62.50,33.72
>>Click the |cRXP_PICK_Shards of Myzrael|r
.accept 642 >> Accept The Princess Trapped
step
#completewith next
#optional
>>Mine the |cRXP_PICK_Lesser Bloodstone Deposits|r. Loot it for |cRXP_LOOT_Lesser Bloodstone Ore|r
>>|cRXP_WARN_These are found inside of the Cave|r
.collect 4278,4,627,1 
.skill mining,<75,1
step
.goto Arathi Highlands,78.59,39.99,50,0
.goto Arathi Highlands,82.02,39.59,40,0
.goto Arathi Highlands,83.12,35.52,40,0
.goto Arathi Highlands,87.11,31.40,25,0
.goto Arathi Highlands,84.30,30.95
>>Kill |cRXP_ENEMY_Drywhisker Kobolds|r, |cRXP_ENEMY_Drywhisker Diggers|r and |cRXP_ENEMY_Drywhisker Surveyors|r. Loot them for their |cRXP_LOOT_Motes|r
>>|cRXP_WARN_The quest turn in for this is inside the Cave. Clear your way to the back while completing it|r
.complete 642,1 
.mob Drywhisker Kobold
.mob Drywhisker Digger
.mob Drywhisker Surveyor
step
#optional
.goto Arathi Highlands,87.11,31.40,25,0
.goto Arathi Highlands,84.30,30.95
>>Mine the |cRXP_PICK_Lesser Bloodstone Deposits|r. Loot it for |cRXP_LOOT_Lesser Bloodstone Ore|r
>>|cRXP_WARN_These are found inside of the Cave|r
.collect 4278,4,627,1 
.skill mining,<75,1
step
.goto Arathi Highlands,84.30,30.95
>>Click the |cRXP_PICK_Iridescent Shards|r at the back of the Cave
.turnin 642 >> Turn in The Princess Trapped
.accept 651 >> Accept Stones of Binding
step
#completewith EastBinding
.goto Arathi Highlands,70.34,39.52,140 >> Travel to the Circle of East Binding
step << Warrior
#xprate <1.99
#completewith next
>>Kill |cRXP_ENEMY_Cresting Exiles|r. Loot them for their |cRXP_LOOT_Cresting Charms|r
.collect 4481,8,1712,1 
.mob Cresting Exile
.isOnQuest 1712
step
#label EastBinding
.goto Arathi Highlands,66.710,29.725
>>Open the |cRXP_PICK_Stone of East Binding|r. Loot it for the |cRXP_LOOT_Cresting Key|r
.complete 651,2 
step << Warrior
#xprate <1.99
.goto Arathi Highlands,67.46,28.79,40,0
.goto Arathi Highlands,65.47,28.77,40,0
.goto Arathi Highlands,65.87,31.24,40,0
.goto Arathi Highlands,67.47,30.65,40,0
.goto Arathi Highlands,66.82,29.77
>>Kill |cRXP_ENEMY_Cresting Exiles|r. Loot them for their |cRXP_LOOT_Cresting Charms|r
.collect 4481,8,1712,1 
.mob Cresting Exile
.isOnQuest 1712
step
>>Kill the |cRXP_ENEMY_Witherbarks|r. Loot them for their |cRXP_LOOT_Witherbark Tusks|r
>>Kill |cRXP_ENEMY_Witherbark Witch Doctors|r. Loot them for their |cRXP_LOOT_Medicine Pouches|r
>>Kill |cRXP_ENEMY_Witherbark Shadow Hunters|r. Loot them for their |cRXP_LOOT_Shadow Hunter Knife|r
>>|cRXP_ENEMY_Witherbark Shadow Hunters|r |cRXP_WARN_are only found inside the Cave marked on your map|r
>>Be careful as the|cRXP_ENEMY_ Witherbark Headhunters|r can |T132149:0|t[|cRXP_FRIENDLY_Net|r] you for 10 seconds and have an |T135358:0|t[|cRXP_FRIENDLY_Execute|r] which they can cast when you're below 20% health
.complete 691,1 
.mob +Witherbark Troll
.mob +Witherbark Witch Doctor
.mob +Witherbark Shadowcaster
.mob +Witherbark Shadow Hunter
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
.complete 691,2 
.mob +Witherbark Witch Doctor
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
.complete 691,3 
.mob +Witherbark Shadowcaster
.goto Arathi Highlands,68.38,75.92,30,0
.goto Arathi Highlands,68.20,79.47
.mob +Witherbark Shadow Hunter
.isOnQuest 691
step
#xprate <1.99
.isQuestComplete 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 658 >> Turn in Hints of a New Plague?
.target Quae
step
#xprate <1.99
.isQuestTurnedIn 658
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r and |cRXP_FRIENDLY_Kinelory|r
>>|cRXP_WARN_Someone may be doing the |cRXP_FRIENDLY_Kinelory|r escort if she isn't there. Wait until she returns|r
.accept 657 >> Accept Hints of a New Plague?
.target +Quae
.goto Arathi Highlands,60.185,53.848
.turnin 657 >> Turn in Hints of a New Plague?
.accept 660,1 >> Accept Hints of a New Plague?
.target +Kinelory
.goto Arathi Highlands,60.238,53.920
step
#xprate <1.99
.isQuestTurnedIn 658
>>Escort |cRXP_FRIENDLY_Kinelory|r through Go'Shek Farm
.complete 660,1
.target Kinelory
step
#xprate <1.99
#label NewPlague
.isQuestTurnedIn 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 660 >> Turn in Hints of a New Plague?
.accept 661 >> Accept Hints of a New Plague?
.target Quae
step
#completewith FirstArathiEnd
.isOnQuest 658
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>Kill the |cRXP_ENEMY_Forsaken Courier|r |cRXP_WARN_if you find her while questing.|r Loot her for her |cRXP_LOOT_Sealed Folder|r
>>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
>>|cRXP_WARN_You can cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find the|r |cRXP_ENEMY_Forsaken Courier|r << Hunter
.complete 658,1 
.unitscan Forsaken Courier
step << Warrior
#xprate <1.99
#completewith next
>>Kill |cRXP_ENEMY_Thundering Exiles|r. Loot them for their |cRXP_LOOT_Thundering Charms|r
.collect 4480,8,1712,1 
.mob Thundering Exile
.isOnQuest 1712
step
.goto Arathi Highlands,52.042,50.734
>>Open the |cRXP_PICK_Stone of Outer Binding|r. Loot it for the |cRXP_LOOT_Thundering Key|r
.complete 651,3 
step << Warrior
#xprate <1.99
.goto Arathi Highlands,52.74,50.61,40,0
.goto Arathi Highlands,50.97,52.16,40,0
.goto Arathi Highlands,51.52,48.93,40,0
.goto Arathi Highlands,52.12,51.11
>>Kill |cRXP_ENEMY_Thundering Exiles|r. Loot them for their |cRXP_LOOT_Thundering Charms|r
.collect 4480,8,1712,1 
.mob Thundering Exile
.isOnQuest 1712
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.turnin 691 >> Turn in Worth Its Weight in Gold
.target Apprentice Kryten
.isQuestComplete 691
step
.group
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.accept 693 >> Accept Wand over Fist
.target Skuerto
.isQuestTurnedIn 691
step
.group
#completewith next
.goto Arathi Highlands,54.21,77.80,30 >> Enter the Bolderfist Hall Cave
step
.group
.goto Arathi Highlands,54.75,81.87
>>Kill |cRXP_ENEMY_Kor'gresh Coldrage|r. Loot him for |cRXP_LOOT_Trelane's Wand|r
.complete 693,1 
.mob Kor'gresh Coldrage
.isQuestTurnedIn 691
step << skip 
.group
#completewith next
.goto Arathi Highlands,54.428,80.800
+|cRXP_WARN_Perform a Logout skip on the banner next to |cRXP_ENEMY_Kor'gresh Coldrage|r to teleport closer to Refuge Point. If you are unable to do this just run out normally|r
.link https://youtu.be/SWBtPqm5M0Q?t=61 >> |cRXP_WARN_Click here for video reference|r
.subzoneskip 316,1
step
.group
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
>>|cRXP_WARN_Do not accept the follow up yet|r
.turnin 693 >> Turn in Wand over Fist
step
#label FirstArathiEnd
.goto Arathi Highlands,45.73,46.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.fly Southshore >> Fly to Southshore
.target Cedrik Prose
.zoneskip Hillsbrad Foothills
step
#completewith Analysis
>>|cRXP_WARN_The |cRXP_ENEMY_Shadowy Assassin|r attack on Southshore is a random event|r
>>If you ever see a |cRXP_ENEMY_Shadowy Assassin|r in Southshore, kill them. Loot them for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] to start the quest|r
>>|cRXP_WARN_Skip this step if you don't see the event|r
.collect 3668,1,522
.use 3668
.accept 522 >> Accept Assassin's Contract
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 538 >> Turn in Southshore
.target Loremaster Dibbs
.isOnQuest 538
step
.isOnQuest 661
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
.turnin 661 >> Turn in Hints of a New Plague?
step
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Anderson|r
.home >> Set your Hearthstone to Southshore
.target Innkeeper Anderson
step
#som
.goto Hillsbrad Foothills,51.88,58.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chef Jessen
>>Skip this if you dropped the Turtle Meat from earlier
.target Chef Jessen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
.accept 555 >> Accept Soothing Turtle Bisque
.turnin 555 >> Turn in Soothing Turtle Bisque
step
#xprate <1.99
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r up stairs
.turnin 1052 >> Turn in Down the Scarlet Path
.isOnQuest 1052
step
#xprate <1.99
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r up stairs
.accept 1053 >> Accept In the Name of the Light
.isQuestTurnedIn 1052
.dungeon SM
step << skip
#som
.goto Hillsbrad Foothills,51.36,58.55
>>Head upstairs
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r
.turnin 1052 >> Turn in Down the Scarlet Path
.isOnQuest 1052
step
#label Analysis
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.accept 500 >> Accept Crushridge Bounty
.target Marshal Redpath
step << skip
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.accept 504 >> Accept Crushridge Warmongers
.target Marshal Redpath
.isQuestTurnedIn 500
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 522 >> Turn in Assassin's Contract
.isOnQuest 522
.target Magistrate Henry Maleb
step
.dungeon !SM
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.accept 523 >> Accept Baron's Demise
.isQuestTurnedIn 522
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 525 >> Turn in Further Mysteries
.accept 537 >> Accept Dark Council
.accept 512 >> Accept Noble Deaths
.target Magistrate Henry Maleb
step
.dungeon SM
#completewith next
.goto Alterac Mountains,58.31,67.92,0
.goto Alterac Mountains,48.0,82.0,0
.zone Silverpine Forest >> Grind the |cRXP_ENEMY_Syndicate|r in Alterac Mountains while looking for a group for Scarlet Monastery
.zoneskip Tirisfal Glades
.mob Syndicate Footpad
.mob Syndicate Thief
step
.dungeon SM
.goto Silverpine Forest,69.95,7.05,150,0
.goto Tirisfal Glades,56.15,64.62,100,0
.goto 1415,47.500,19.652,25,0
.goto 1415,47.792,19.611
.subzone 796,2 >> Enter Scarlet Monastery. Start with Library so you can loot the [|cRXP_FRIENDLY_The Scarlet Key|r] at the end
step
.dungeon SM
#completewith Bosses
>>Loot the |cRXP_LOOT_Mythology of the Titans|r
>>|cRXP_WARN_This can spawn randomly on the ground or in bookshelves throughout the Library wing|r
.complete 1050,1 
.isOnQuest 1050
step
.dungeon SM
#completewith Mythology
>>Open |cRXP_PICK_Doan's Strongbox|r. Loot it for [|cRXP_FRIENDLY_The Scarlet Key|r]
.collect 7146,1 
step
#xprate <1.99
#label Bosses
>>Kill |cRXP_ENEMY_Houndmaster Loksey|r, |cRXP_ENEMY_Herod|r, |cRXP_ENEMY_High Inquisitor Whitemane|r and |cRXP_ENEMY_Scarlet Commander Mograine|r
>>|cRXP_ENEMY_Houndmaster Loksey|r |cRXP_WARN_is located in the Library|r
>>|cRXP_ENEMY_Herod|r |cRXP_WARN_is located in the Armory|r
>>|cRXP_ENEMY_High Inquisitor Whitemane|r |cRXP_WARN_and |cRXP_ENEMY_Scarlet Commander Mograine|r are located in the Cathedral|r
.complete 1053,4 
.complete 1053,3 
.complete 1053,1 
.complete 1053,2 
.isOnQuest 1053
.dungeon SM
step
.dungeon SM
#label Mythology
>>Loot the |cRXP_LOOT_Mythology of the Titans|r
>>|cRXP_WARN_This can spawn randomly on the ground or in bookshelves throughout the Library wing|r
.complete 1050,1 
.isOnQuest 1050
step
.dungeon SM
#completewith next
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.dungeon !SM
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.accept 540 >> Accept Preserving Knowledge
.target Loremaster Dibbs
.isQuestTurnedIn 538
step
.dungeon !SM
.goto Alterac Mountains,18.83,78.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver|r
.turnin 602 >> Turn in Magical Analysis
.timer 6,Magical Analysis RP
.accept 603 >> Accept Ansirem's Key
.target Archmage Ansirem Runeweaver
step
#xprate <1.99
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r up stairs
.turnin 1053 >> Turn in In the Name of the Light
.isQuestTurnedIn 1052
.dungeon SM
step
.dungeon SM
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.accept 523 >> Accept Baron's Demise
.isQuestTurnedIn 522
.target Magistrate Henry Maleb
step
.dungeon SM
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.accept 540 >> Accept Preserving Knowledge
.target Loremaster Dibbs
.isQuestTurnedIn 538
step
.dungeon SM
.goto Alterac Mountains,18.83,78.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver|r
.turnin 602 >> Turn in Magical Analysis
.accept 603 >> Accept Ansirem's Key
.target Archmage Ansirem Runeweaver
step
#optional
#completewith Ruins
.goto Alterac Mountains,39.83,62.18,80,0
.goto Alterac Mountains,37.55,61.44,35 >> Travel to the Ruins of Alterac. This location will also serve as your exit route, should you need it
step << skip
#completewith Ruins
>>Kill |cRXP_ENEMY_Crushridge Warmongers|r
>>|cRXP_ENEMY_Crushridge Warmongers|r |cRXP_WARN_call for help at 25% HP|r
.complete 504,1 
.mob Crushridge Warmonger
.isOnQuest 504
step
#label Tiara
.goto Alterac Mountains,40.36,47.05,50,0
.goto Alterac Mountains,37.72,52.66,50,0
.goto Alterac Mountains,40.36,47.05
.line Alterac Mountains,35.58,54.44,35.26,54.33,35.20,54.18,35.77,53.74,36.26,55.11,36.66,54.81,36.29,53.75,37.30,52.85,37.59,52.71,38.24,52.79,38.87,51.55,39.28,50.93,39.52,49.71,40.14,47.23,40.91,46.30,40.24,46.09,40.13,47.69,39.19,51.17,38.51,52.01,38.11,52.68,37.46,52.78,36.28,53.71,35.88,52.69,35.52,53.01,35.77,53.74,35.20,54.18,35.26,54.33,35.58,54.44
>>Kill |cRXP_ENEMY_Grel'borg the Miser|r. Loot him for the |cRXP_LOOT_Perenolde Tiara|r
>>|cRXP_ENEMY_Grel'borg the Miser|r |cRXP_WARN_patrols the Ruins of Alterac. He is a level 39 Elite and easy to kill so long as you don't agro additional mobs. His patrol route is marked on your map|r
.complete 543,1 
.isOnQuest 543
.unitscan Grel'borg the Miser
step
#label Ruins
.goto Alterac Mountains,38.421,46.368
>>Enter the Town Hall
>>Open the |cRXP_PICK_Weathered Bookcase|r. Loot it for the |cRXP_LOOT_Worn Leather Book|r
>>|cRXP_WARN_You may kill |cRXP_ENEMY_Muckrake|r or just CC him, loot and then run away|r
>>If you decide to fight him be careful as Muckrake has a |T132343:0|t[Disarm]
.complete 540,2 
.isOnQuest 540
step << skip
.goto Alterac Mountains,38.40,57.80,60,0
.goto Alterac Mountains,37.25,50.39,60,0
.goto Alterac Mountains,38.40,57.80,60,0
.goto Alterac Mountains,36.855,53.237
>>Kill |cRXP_ENEMY_Crushridge Warmongers|r
>>|cRXP_ENEMY_Crushridge Warmongers|r |cRXP_WARN_call for help at 25% HP|r
.complete 504,1 
.mob Crushridge Warmonger
.isOnQuest 504
step
#completewith next
.goto Alterac Mountains,39.66,18.24,100 >> Travel to Dandred's Fold. Be careful of fall damage if dropping down from the Ruins of Alterac
.isOnQuest 504,543,540
step
#completewith ShadowMage
.goto Alterac Mountains,62.39,43.64,0
>>Kill the |cRXP_ENEMY_Syndicate|r. Loot them for their |cRXP_LOOT_Signet Rings|r
>>|cRXP_ENEMY_Syndicate Assassins|r |cRXP_WARN_and |cRXP_ENEMY_Syndicate Spies|r will be in|r |T132320:0|t[Stealth]
.complete 512,1 
.mob Syndicate Assassin
.mob Syndicate Enforcer
.mob Syndicate Saboteur
.mob Syndicate Sentry
.mob Syndicate Spy
.mob Syndicate Wizard
step
#sticky
#completewith next
.goto Alterac Mountains,39.177,14.661
>>Open the |cRXP_PICK_Worn Wooden Chest|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r]
>>Don't start the quest from this item yet
.collect 3706,1,551,1
step
.goto Alterac Mountains,39.22,14.31
>>Kill |cRXP_ENEMY_Nagaz|r. Loot him for his |cRXP_LOOT_Head|r
.complete 537,2 
.mob Nagaz
step
.goto Alterac Mountains,39.177,14.661
>>Open the |cRXP_PICK_Worn Wooden Chest|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r]
>>Don't start the quest from this item yet
.collect 3706,1,551,1
step
#completewith next
>>Kill |cRXP_ENEMY_Argus Shadow Mages|r one can be found in each of the small Sindicate camps as you head south-east as well as in Strahnbrad
>>|cRXP_WARN_They do not social aggro with the Syndicate mobs, meaning you can pull them out of the camps without having to fight all of the mobs|r
.complete 537,1 
.mob Argus Shadow Mage
step
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9
>>Kill |cRXP_ENEMY_Baron Vardus|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Baron Vardus|r |cRXP_WARN_can be in the outside camps, as well as the basement Inn of Strahnbrad|r
>>Be careful as he casts |T135846:0|t[|cRXP_FRIENDLY_Frostbolt|r], |T135848:0|t[|cRXP_FRIENDLY_Frost Nova|r] and |T132939:0|t[|cRXP_FRIENDLY_Backhand|r] (an instant cast two second stun)
.complete 523,1 
.isOnQuest 523
.unitscan Baron Vardus
step
#label ShadowMage
.goto Alterac Mountains,62.3,40.6,50,0
.goto Alterac Mountains,63.6,43.7,50,0
.goto Alterac Mountains,57.4,46.2,50,0
.goto Alterac Mountains,62.3,40.6
.goto Alterac Mountains,47.8,17.4,0
.goto Alterac Mountains,53.3,20.7,0
.goto Alterac Mountains,56.1,27.3,0
.goto Alterac Mountains,58.7,30.5,0
>>Kill |cRXP_ENEMY_Argus Shadow Mages|r one can be found in each of the small Sindicate camps as you head south-east as well as in Strahnbrad
>>|cRXP_WARN_They do not social aggro with the Syndicate mobs, meaning you can pull them out of the camps without having to fight all of the mobs|r
.complete 537,1 
.mob Argus Shadow Mage
step
.goto Alterac Mountains,62.3,40.6,50,0
.goto Alterac Mountains,63.6,43.7,50,0
.goto Alterac Mountains,57.4,46.2,50,0
.goto Alterac Mountains,62.3,40.6
.goto Alterac Mountains,47.8,17.4,0
.goto Alterac Mountains,53.3,20.7,0
.goto Alterac Mountains,56.1,27.3,0
.goto Alterac Mountains,58.7,30.5,0
>>Kill the |cRXP_ENEMY_Syndicate|r. Loot them for their |cRXP_LOOT_Signet Rings|r
>>|cRXP_ENEMY_Syndicate Assassins|r |cRXP_WARN_and |cRXP_ENEMY_Syndicate Spies|r will be in|r |T132320:0|t[Stealth]
.complete 512,1 
.mob Syndicate Assassin
.mob Syndicate Enforcer
.mob Syndicate Saboteur
.mob Syndicate Sentry
.mob Syndicate Spy
.mob Syndicate Wizard
step
.goto Alterac Mountains,47.48,58.94,0
.goto Alterac Mountains,51.73,40.23,70,0
.goto Alterac Mountains,45.19,33.91,70,0
.goto Alterac Mountains,51.46,53.84,70,0
.goto Alterac Mountains,48.54,40.72
>>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for their |cRXP_LOOT_Tomes|r and |cRXP_LOOT_Knucklebones|r
.complete 540,1 
.complete 500,1 
.isOnQuest 540
.isOnQuest 500
.mob Crushridge Ogre
.mob Crushridge Brute
step
.goto Alterac Mountains,47.48,58.94,0
.goto Alterac Mountains,51.73,40.23,70,0
.goto Alterac Mountains,45.19,33.91,70,0
.goto Alterac Mountains,51.46,53.84,70,0
.goto Alterac Mountains,48.54,40.72
>>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for their |cRXP_LOOT_Knucklebones|r
.complete 500,1 
.isOnQuest 500
.mob Crushridge Ogre
.mob Crushridge Brute
step
+Grind mobs until your Hearthstone cooldown is <6min
>>|cRXP_WARN_This step will autocomplete once your |T134414:0|t[Hearthstone] cooldown is low enough to continue|r
.cooldown item,6948,<360 
step
>>|cRXP_WARN_Be careful not to run into |cRXP_ENEMY_Tarren Mill Deathguards|r as you travel|r
.goto Alterac Mountains,59.52,62.68,65,0
.goto Hillsbrad Foothills,71.43,21.04,35,0
.goto Hillsbrad Foothills,84.23,31.99,45,0
.goto The Hinterlands,6.23,61.87
.zone The Hinterlands >> Travel to The Hinterlands
.unitscan Tarren Mill Deathguard
step
.goto The Hinterlands,11.806,46.755
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falstad Wildhammer|r
.turnin 1449 >> Turn in To The Hinterlands
.accept 1450 >> Accept Gryphon Master Talonaxe
.target Falstad Wildhammer
.isOnQuest 1449
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
.fp Hinterlands >> Get The Hinterlands Flight Path
.target Guthrum Thunderfist
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.turnin 1450 >> Turn in Gryphon Master Talonaxe
.accept 1451 >> Accept Rhapsody Shindigger
.target Gryphon Master Talonaxe
.isOnQuest 1450
step
#completewith next
.goto The Hinterlands,26.943,48.588
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
.turnin 1451 >> Turn in Rhapsody Shindigger
.target Rhapsody Shindigger
.isOnQuest 1451
step
#era/som
.goto The Hinterlands,26.943,48.588
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
.accept 1452 >> Accept Rhapsody's Kalimdor Kocktail
.target Rhapsody Shindigger
.isOnQuest 1451
step
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip The Hinterlands,1 << !Hunter sod
step
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 500 >> Turn in Crushridge Bounty
.target Marshal Redpath
.isQuestComplete 500
step << skip
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 504 >> Turn in Crushridge Warmongers
.target Marshal Redpath
.isQuestComplete 504
step
.goto Hillsbrad Foothills,48.145,59.121
.target Magistrate Henry Maleb
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 512 >> Turn in Noble Deaths
.turnin 537 >> Turn in Dark Council
step
.abandon 504 >> Abandon Crushridge Warmongers
step
.goto Hillsbrad Foothills,48.145,59.121
.target Magistrate Henry Maleb
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 523 >> Turn in Baron's Demise
.isOnQuest 523
step
#sticky
#completewith next
#label Knowledge
.goto Hillsbrad Foothills,50.570,57.093
>>|cRXP_WARN_Use the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r] to start the quest|r |cRXP_WARN_then|r |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_talk to|r |cRXP_FRIENDLY_Loremaster Dibbs|r |cRXP_WARN_to turn it in|r
.collect 3706,1,551,1
.use 3706
.accept 551 >> Accept The Ensorcelled Parchment
.turnin 551 >> Turn in The Ensorcelled Parchment
.target Loremaster Dibbs
step
.isQuestComplete 540
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 540 >> Turn in Preserving Knowledge
.target Loremaster Dibbs
step 
#requires Knowledge
.goto Hillsbrad Foothills,50.344,59.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
.accept 659 >> Accept Hints of a New Plague?
.target Phin Odelic
step
#completewith next
+Run from Southshore and check Tarren Mill and then go into Arathi looking for the |cRXP_ENEMY_Forsaken Courier|r
step
#completewith next
.isOnQuest 658
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>Kill the |cRXP_ENEMY_Forsaken Courier|r. Loot her for her |cRXP_LOOT_Sealed Folder|r
>>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
>>If you haven't found her by the time you reached Go'Shek, grind the Orcs there for 5 minutes, then skip the step if she hasn't spawned in Jorell's house by then
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find the|r |cRXP_ENEMY_Forsaken Courier|r << Hunter
.complete 658,1 
.unitscan Forsaken Courier
step << !Warrior
.goto Arathi Highlands,25.468,30.110
>>Open the |cRXP_PICK_Stone of West Binding|r. Loot it for the |cRXP_LOOT_Burning Key|r
>>|cRXP_WARN_Make sure the |cRXP_ENEMY_Forsaken Courier|r doesn't sneak past you as you do this!|r
.complete 651,1 
.isOnQuest 658
step
.isOnQuest 658
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>Kill the |cRXP_ENEMY_Forsaken Courier|r. Loot her for her |cRXP_LOOT_Sealed Folder|r
>>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
>>If you haven't found her by the time you reached Go'Shek, grind the Orcs there for 5 minutes, then skip the step if she hasn't spawned in Jorell's house by then
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find the|r |cRXP_ENEMY_Forsaken Courier|r << Hunter
.complete 658,1 
.unitscan Forsaken Courier
step
#optional
#completewith NewPlague
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>> Fly to Arathi Highlands
.target Darla Harris
.zoneskip Hillsbrad Foothills,1
step
#xprate <1.99
#optional
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 659 >> Turn in Hints of a New Plague?
.accept 658 >> Accept Hints of a New Plague?
.target Quae
step
#xprate >1.99
#optional
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 659 >> Turn in Hints of a New Plague?
.target Quae
step
#xprate <1.99
.isOnQuest 658
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>Kill the |cRXP_ENEMY_Forsaken Courier|r. Loot her for her |cRXP_LOOT_Sealed Folder|r
>>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find the|r |cRXP_ENEMY_Forsaken Courier|r << Hunter
.complete 658,1 
.unitscan Forsaken Courier
step
#xprate <1.99
.isQuestComplete 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 658 >> Turn in Hints of a New Plague?
.target Quae
step
#xprate <1.99
.isQuestTurnedIn 658
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r and |cRXP_FRIENDLY_Kinelory|r
>>|cRXP_WARN_Someone may be doing the |cRXP_FRIENDLY_Kinelory|r escort if she isn't there. Wait until she returns|r
.accept 657 >> Accept Hints of a New Plague?
.target +Quae
.goto Arathi Highlands,60.185,53.848
.turnin 657 >> Turn in Hints of a New Plague?
.accept 660,1 >> Accept Hints of a New Plague?
.target +Kinelory
.goto Arathi Highlands,60.238,53.920
step
#xprate <1.99
.isQuestTurnedIn 658
>>Escort |cRXP_FRIENDLY_Kinelory|r through Go'Shek Farm
.complete 660,1
.target Kinelory
step
#xprate <1.99
#label NewPlague
.isQuestTurnedIn 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 660 >> Turn in Hints of a New Plague?
.accept 661 >> Accept Hints of a New Plague?
.target Quae
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.accept 693 >> Accept Wand over Fist
.target Skuerto
.isQuestTurnedIn 691
step
#completewith next
.goto Arathi Highlands,54.21,77.80,30 >> Enter the Bolderfist Hall Cave
step
.goto Arathi Highlands,54.75,81.87
>>Kill |cRXP_ENEMY_Kor'gresh Coldrage|r. Loot him for |cRXP_LOOT_Trelane's Wand|r
>>|cRXP_WARN_He will cast|r |T136230:0|t[Trelane's Freezing Touch] |cRXP_WARN_which has a 3 second cast time that silences you for 12 seconds and slows your attack speed by 25%|r
.complete 693,1 
.mob Kor'gresh Coldrage
.isQuestTurnedIn 691
step << skip 
#completewith next
.goto Arathi Highlands,54.428,80.800
+|cRXP_WARN_Perform a Logout skip on the banner next to |cRXP_ENEMY_Kor'gresh Coldrage|r to teleport closer to Refuge Point. If you are unable to do this just run out normally|r
.link https://youtu.be/SWBtPqm5M0Q?t=61 >> |cRXP_WARN_Click here for video reference|r
.subzoneskip 316,1
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.turnin 693 >> Turn in Wand over Fist
.accept 694 >> Accept Trelane's Defenses
.target Skuerto
.isQuestTurnedIn 691
step << Hunter/Druid/Rogue
.solo
.goto Arathi Highlands,46.042,47.764
>>Click the |cRXP_PICK_Wanted Board|r
.accept 684 >> Accept Wanted! Marez Cowl
step
.group
.goto Arathi Highlands,46.042,47.764
>>Click the |cRXP_PICK_Wanted Board|r
.accept 684 >> Accept Wanted! Marez Cowl
.accept 685 >> Accept Wanted! Otto and Falconcrest
step << Warrior
#xprate <1.99
#completewith next
>>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for their |cRXP_LOOT_Burning Charms|r
.collect 4479,8,1712,1 
.mob Burning Exile
.isOnQuest 1712
step
#label WestBinding
.goto Arathi Highlands,25.468,30.110
>>Open the |cRXP_PICK_Stone of West Binding|r. Loot it for the |cRXP_LOOT_Burning Key|r
.complete 651,1 
step << Warrior
#xprate <1.99
.goto Arathi Highlands,67.46,28.79,40,0
.goto Arathi Highlands,65.47,28.77,40,0
.goto Arathi Highlands,65.87,31.24,40,0
.goto Arathi Highlands,67.47,30.65,40,0
.goto Arathi Highlands,66.82,29.77
>>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for their |cRXP_LOOT_Burning Charms|r
.collect 4479,8,1712,1 
.mob Burning Exile
.isOnQuest 1712
step << Warrior
#xprate <1.99
#optional
#completewith next
.goto Alterac Mountains,79.318,66.811 >> Travel to Chillwind Point in Alterac Mountains
step << Warrior
#xprate <1.99
.goto Alterac Mountains,79.318,66.811
>>Click |cRXP_PICK_Bath'rah's Cauldron|r
.complete 1712,3 
.isOnQuest 1712
step << Warrior
#xprate <1.99
#completewith TheSummoning
+Before Accepting The Summoning watch the video below on how to solo |cRXP_ENEMY_Cyclonian|r
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
.isOnQuest 1712
step << Warrior
#xprate <1.99
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1712 >> Turn in Cyclonian
.target Bath'rah the Windwatcher
.isQuestComplete 1712
step << Warrior
#xprate <1.99
#label TheSummoning
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.accept 1713 >> Accept The Summoning
.timer 40,The Summoning RP
>>|cRXP_WARN_Accepting this quest will summon |cRXP_ENEMY_Cyclonian|r. He hits fairly hard, but can be soloed. Be sure to check the video for pointers on how to do so|r
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
.target Bath'rah the Windwatcher
.isQuestTurnedIn 1712
step << Warrior
#xprate <1.99
.goto Alterac Mountains,80.65,62.1
>>Follow |cRXP_FRIENDLY_Bath'rah the Windwatcher|r to where he will summon |cRXP_ENEMY_Cyclonian|r
>>Kill |cRXP_ENEMY_Cyclonian|r. Loot him for his |cRXP_LOOT_Whirlwind Heart|r
>>|cRXP_ENEMY_Cyclonian|r hits fairly hard, but can be soloed. Be sure to check the video for pointers on how to do so|r
.complete 1713,1 
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
.isOnQuest 1713
step << Warrior
#xprate <1.99
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1713 >> Turn in The Summoning
.target Bath'rah the Windwatcher
.isQuestComplete 1713
step << Warrior
#xprate <1.99
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
>>|cRXP_WARN_The |T132403:0|t[|cFF0070FFWhirlwind Axe|r] is the best reward out of them all. However, if you do wish to choose a different weapon, it's only a small loss|r
.turnin 1792 >> Turn in Whirlwind Weapon
.target Bath'rah the Windwatcher
.isQuestTurnedIn 1713
step << Warrior
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.goto Western Plaguelands,42.924,85.061
.fly Arathi >> Fly to Arathi Highlands
.target Bibilfaz Featherwhistle
.zoneskip Arathi Highlands
.isQuestTurnedIn 1713
step
.goto Arathi Highlands,36.229,57.375
>>Click the |cRXP_PICK_Stone of Inner Binding|r
.turnin 651 >> Turn in Stones of Binding
.accept 652 >> Accept Breaking the Keystone
step
.line Arathi Highlands,51.47,62.86,52.40,61.71,52.88,60.55,53.55,59.12,53.50,57.45,56.00,53.72,57.19,53.47,57.83,52.44,58.15,50.90,58.95,49.98,59.25,48.79,63.29,47.45,64.13,46.33,64.67,45.12,65.36,44.70,66.45,41.91,66.46,38.76,67.12,37.75,66.76,36.28,67.13,34.82,66.72,32.40,65.81,31.48,65.32,30.15,65.20,29.17,65.23,28.38,64.45,27.54,64.92,28.84,65.56,29.31,65.94,29.87,65.72,30.38,65.85,33.96,65.85,39.15,65.39,39.96,64.65,40.04,63.83,40.93,64.40,42.42,63.55,43.66,62.72,42.95,61.41,42.66,60.33,43.59,58.51,44.13,57.48,45.04,56.39,46.10,55.30,46.04,54.34,46.32,53.92,47.60,53.39,48.30,53.22,49.35,52.48,49.62,52.20,50.10,51.37,49.86,50.94,50.55,50.15,54.42,49.47,55.75,49.21,56.40,48.59,57.35,47.53,56.82,45.94,56.89,44.73,57.27,44.18,57.62,43.39,57.58,41.99,54.35,41.37,52.86,41.00,51.93,40.26,50.75,39.01,50.91,37.71,49.91,37.26,49.60,36.31,49.65,34.70,49.04,32.84,48.14,31.85,47.98,30.96,45.92,30.53,45.11,29.31,45.06,28.95,43.63,28.32,42.50,27.88,41.11,27.82,39.36,27.14,38.30,27.24,35.22,27.02,33.80,26.63,32.82,26.71,31.35,25.98,30.58,26.50,30.73,26.40,32.32,24.72,34.39,24.09,34.93,23.68,35.34,23.51,35.57,22.92,36.46,22.69,38.23,21.29,39.69,21.85,41.02,21.32,42.13,21.28,43.16,21.29,44.12,22.50,44.63,22.80,45.81,22.95,46.40,24.03,46.68,25.02,47.22,25.65,47.63,26.78,48.39,28.37,49.05,28.44,49.09,29.21,50.19,29.66,51.84,30.25,52.82,30.47,53.30,30.53,54.51,31.28,55.28,39.30,55.96,40.00,57.11,40.35,56.72,40.64,56.41,41.45,57.19,41.84,57.99,42.80,58.55,43.39,58.58,44.48,58.75,45.09,58.86,46.58,59.63,47.74,60.30,48.88,60.56,50.05,62.41,50.33,62.96,51.41,62.92
>>Kill |cRXP_ENEMY_Fozruk|r. Loot him for the |cRXP_LOOT_Rod of Order|r
>>|cRXP_WARN_Try to splitpull him. This will allow you to avoid fighting the kobolds he patrols with|r
>>|cRXP_WARN_If you can't splitpull, focus on killing and interrupting the casts of |cRXP_ENEMY_Sleeby|r, |cRXP_ENEMY_Znort|r and |cRXP_ENEMY_Feeboz|r before killing|r |cRXP_ENEMY_Fozruk|r
>>|cRXP_ENEMY_Fozruk|r |cRXP_WARN_can be CC'd. Be careful as he periodically casts|r |T136025:0|t[Ground Tremor] |cRXP_WARN_stunning all targets within 20 yards of him for 2 seconds|r
>>|cRXP_WARN_Their patrol path is marked on your map|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find|r |cRXP_ENEMY_Fozruk|r << Hunter
>>|cRXP_WARN_After you deleash the kobolds and have only|r |cRXP_ENEMY_Fozruk|r |cRXP_WARN_on you kill him by keeping him|r |T136183:0|t[Feared] << Warlock
.complete 652,1
.link https://youtu.be/yM9OfJoj5Z8 >> |cRXP_WARN_Click here for video reference|r << Hunter/Warlock
.link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Click here for a reference video about splitpulling
.unitscan Fozruk
.mob Sleeby
.mob Znort
.mob Feeboz
step
.goto Arathi Highlands,36.07,58.09
>>Click on the |cRXP_PICK_Keystone|r
>>|cRXP_WARN_If you are still in a group, hand in this quest while with your party! |cRXP_ENEMY_Thenan|r, a level 42 Elite will spawn. You can either kill him or run away and reset him if you're solo|r
.turnin 652 >> Turn in Breaking the Keystone
.isQuestComplete 652
step
.dungeon !SM
.goto Arathi Highlands,36.07,58.09
>>Click on the |cRXP_PICK_Keystone|r
.accept 653 >> Accept Myzrael's Allies
.isQuestTurnedIn 652
step
#completewith next
.group 2
.goto Arathi Highlands,29.599,63.682,0 
>>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Marez Cowl|r |cRXP_WARN_has 2 different spawn locations. One is on the high ground location, and the other is below behind the house. They are marked on your map|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location she is in|r << Hunter
.complete 684,1 
.unitscan Marez Cowl
.isOnQuest 684
step
.group 4
.goto Arathi Highlands,26.026,65.656
>>Kill |cRXP_ENEMY_Otto|r and |cRXP_ENEMY_Lord Falconcrest|r. Loot them for their |cRXP_LOOT_Heads|r
.complete 685,1 
.mob +Otto
.complete 685,2 
.mob +Lord Falconcrest
.isOnQuest 685
step << Hunter/Druid/Rogue
.solo
.goto Arathi Highlands,29.599,63.682,0 
.goto Arathi Highlands,29.477,64.149,20,0 
.goto Arathi Highlands,29.624,62.975 
>>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Marez Cowl|r |cRXP_WARN_has 2 different spawn locations. One is on the high ground location, and the other is below behind the house. They are marked on your map|r
>>|cRXP_WARN_Be careful as there are|r |T132320:0|t[Stealthed] |cRXP_WARN_level 36-37 elite|r |cRXP_ENEMY_Syndicate Prowlers|r |cRXP_WARN_in the area surrounding both her spawns|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location she is in|r << Hunter
>>|cRXP_WARN_Skip this step if you're not confident in your ability to solo it|r
.complete 684,1 
.unitscan Marez Cowl
.isOnQuest 684
step
#label MarezCowl
.group 2
.goto Arathi Highlands,29.599,63.682,0 
.goto Arathi Highlands,29.477,64.149,20,0 
.goto Arathi Highlands,29.624,62.975 
>>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Marez Cowl|r |cRXP_WARN_has 2 different spawn locations. One is on the high ground location, and the other is below behind the house. They are marked on your map|r
>>|cRXP_WARN_Be careful as there are|r |T132320:0|t[Stealthed] |cRXP_WARN_level 36-37 elite|r |cRXP_ENEMY_Syndicate Prowlers|r |cRXP_WARN_in the area surrounding both her spawns|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location she is in|r << Hunter
.complete 684,1 
.unitscan Marez Cowl
.isOnQuest 684
step
.goto Arathi Highlands,24.14,61.85,30,0
.goto Arathi Highlands,24.25,64.97,30,0
.goto Arathi Highlands,21.22,66.52,40,0
.goto Arathi Highlands,20.21,67.17
>>Kill |cRXP_ENEMY_Boulderfist Shamans|r. Loot them for the |cRXP_LOOT_Azure Agate|r. try to avoid fighting |cRXP_ENEMY_Boulderfist Maulers|r as much as possible
>>|cRXP_WARN_Skip this step if you're not confident in your ability to solo it|r
.complete 694,1 
.mob Boulderfist Shaman
.isOnQuest 694
step
#completewith next
.goto Arathi Highlands,24.57,64.60,10,0
.goto Arathi Highlands,21.25,70.33,30 >> Escape Stromgarde through the hole in the wall in the south of the Ogre area. You can do this by jumping up on either side of the metal railings near the bent lamp post and running over to it
.goto Arathi Highlands,21.98,79.75,40 >> Head to Faldir's Cove, follow the path between the mountains and Stromgarde's southeastern wall
.link https://youtu.be/5n9od9fcoz0?t=315 >> |cRXP_WARN_Click here for video reference|r
step
.goto Arathi Highlands,31.78,82.68
.target Lolo the Lookout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lolo the Lookout|r
.accept 663 >> Accept Land Ho!
step
.goto Arathi Highlands,32.283,81.364
.target Shakes O'Breen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
.turnin 663 >> Turn in Land Ho!
step
.goto Arathi Highlands,32.79,81.48
.target First Mate Nilzlix
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Nilzlix|r
.accept 662 >> Accept Deep Sea Salvage
step
.goto Arathi Highlands,34.002,80.792
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r
.accept 664 >> Accept Drowned Sorrows
.target Captain Steelgut
step
.goto Arathi Highlands,33.869,80.549
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Phizzlethorpe|r
>>|cRXP_WARN_This will start an escort. If |cRXP_FRIENDLY_Professor Phizzlethorpe|r is not there, someone may already be doing it. Wait for him to return|r
.accept 665 >> Accept Sunken Treasure
.target Professor Phizzlethorpe
step
.goto Arathi Highlands,35.74,79.59,30,0
.goto Arathi Highlands,33.856,80.444
>>Escort |cRXP_FRIENDLY_Professor Phizzlethorpe|r into the small Cave
>>Kill the |cRXP_ENEMY_Vengeful Surges|r that attack once inside. Be careful as they cast |T135848:0|t[Frost Nova]
>>|cRXP_WARN_Try to tag both of the|r |cRXP_ENEMY_Surges|r |cRXP_WARN_before they hit the|r |cRXP_FRIENDLY_Professor|r. |cRXP_WARN_This will make them not interrupt his roleplay and make the quest complete a lot faster|r
>>Follow |cRXP_FRIENDLY_Professor Phizzlethorpe|r back to the camp afterwards
.complete 665,1
.target Professor Phizzlethorpe
.mob Vengeful Surge
step
.goto Arathi Highlands,33.856,80.444
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
.turnin 665 >> Turn in Sunken Treasure
.accept 666 >> Accept Sunken Treasure
.target Doctor Draxlegauge
step << !Warlock !Druid
#completewith SLog
.cast 7178 >> |cRXP_WARN_Use your|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_if you have one|r
>>|cRXP_WARN_PAY CLOSE ATTENTION TO YOUR BREATH BAR IF YOU DO NOT HAVE ONE!|r
.use 5996 
.aura 7178
step
#completewith SLog
+|cRXP_WARN_Be on the lookout for the rare|r |cRXP_ENEMY_Prince Nazjak|r |cRXP_WARN_that can spawn in this area. |r
>>He can drop the |T134414:0|t[Tidal Charm] an extremely rare trinket that can be used to stun the target for 3 seconds
.itemcount 1404,<1 
.unitscan Prince Nazjak
step
#completewith SLog
>>Loot the |cRXP_LOOT_Elven Gems|r on the sea floor
.use 4491 >> |cRXP_WARN_Equip your|r |T133149:0|t[Goggles of Gem Hunting] |cRXP_WARN_so the |cRXP_LOOT_Elven Gems|r show up on your minimap|r
>>|cRXP_WARN_Ensure you have buffed yourself with|r |T136148:0|t[Unending Breath] << Warlock
>>|cRXP_WARN_Cast|r |T132112:0|t[Aquatic Form] |cRXP_WARN_once your Breath Bar gets low|r << Druid
.complete 666,1 
.use 5996 
step
#completewith SLog
>>Kill |cRXP_ENEMY_Daggerspine Raiders|r and |cRXP_ENEMY_Daggerspine Sorceresses|r
>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Daggerspine Raiders|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
>>|cRXP_WARN_Be mindful of your pet while doing this quest. It's pathing can get very buggy while fighting on the sunken ships|r << Warlock/Hunter
.complete 664,1 
.mob +Daggerspine Raider
.complete 664,2 
.mob +Daggerspine Sorceress
.use 5996 
step
.goto Arathi Highlands,23.394,85.086
>>Loot |cRXP_LOOT_Maiden's Folly Log|r on the 2nd floor of the ship. It is inside of the Cauldron
.complete 662,2 
.use 5996 
step
.goto Arathi Highlands,23.045,84.510
>>Loot |cRXP_LOOT_Maiden's Folly Charts|r on the 2nd floor of the ship. It is on the Pillar
.complete 662,1 
.use 5996 
step
#completewith next
.goto Arathi Highlands,20.5,85.6,50 >> Swim to the other sunken ship
step
.goto Arathi Highlands,20.458,85.612
>>Loot the |cRXP_LOOT_Spirit of Silverpine Charts|r on the 2nd floor of the ship. It is on top of the Crate next to the Cannon
.complete 662,3 
.use 5996 
step
#label SLog
.goto Arathi Highlands,20.649,85.103
>>Loot the |cRXP_LOOT_Spirit of Silverpine Charts|r on the bottom of the ship. It is on the sea floor
.complete 662,4 
.use 5996 
step
#completewith next
>>Loot the |cRXP_LOOT_Elven Gems|r on the sea floor
.use 4491 >> |cRXP_WARN_Equip your|r |T133149:0|t[Goggles of Gem Hunting] |cRXP_WARN_so the |cRXP_LOOT_Elven Gems|r show up on your minimap|r
>>|cRXP_WARN_Ensure you have buffed yourself with|r |T136148:0|t[Unending Breath] << Warlock
>>|cRXP_WARN_Cast|r |T132112:0|t[Aquatic Form] |cRXP_WARN_once your Breath Bar gets low|r << Druid
.complete 666,1 
.use 5996 
step
.goto Arathi Highlands,19.3,84.1,90,0
.goto Arathi Highlands,17.7,89.5,90,0
.goto Arathi Highlands,25.5,90.8,90,0
.goto Arathi Highlands,24.1,85.7,90,0
.goto Arathi Highlands,23.2,89.7,90,0
.goto Arathi Highlands,19.3,84.1
>>Kill |cRXP_ENEMY_Daggerspine Raiders|r and |cRXP_ENEMY_Daggerspine Sorceresses|r
>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Daggerspine Raiders|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
.complete 664,1 
.mob +Daggerspine Raider
.complete 664,2 
.mob +Daggerspine Sorceress
.use 5996 
step
.goto Arathi Highlands,17.7,88.8,80,0
.goto Arathi Highlands,23.0,92.2,80,0
.goto Arathi Highlands,24.3,84.8,80,0
.goto Arathi Highlands,25.2,90.6,80,0
.goto Arathi Highlands,19.6,84.7,80,0
.goto Arathi Highlands,22.7,88.6
>>Loot the |cRXP_LOOT_Elven Gems|r on the sea floor
.use 4491 >> |cRXP_WARN_Equip your|r |T133149:0|t[Goggles of Gem Hunting] |cRXP_WARN_so the |cRXP_LOOT_Elven Gems|r show up on your minimap|r
>>|cRXP_WARN_Ensure you have buffed yourself with|r |T136148:0|t[Unending Breath] << Warlock
>>|cRXP_WARN_Cast|r |T132112:0|t[Aquatic Form] |cRXP_WARN_once your Breath Bar gets low|r << Druid
.complete 666,1 
.use 5996 
step
#completewith NormalHelm
.itemStat 1,QUALITY,1
+Equip your normal |T133127:0|t[Helmet]
step
.goto Arathi Highlands,32.79,81.48
.target First Mate Nilzlix
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Nilzlix|r
.turnin 662 >> Turn in Deep Sea Salvage
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r and |cRXP_FRIENDLY_Doctor Draxlegauge|r
.turnin 664 >> Turn in Drowned Sorrows
.target +Captain Steelgut
.goto Arathi Highlands,34.002,80.792
.turnin 666 >> Turn in Sunken Treasure
.accept 668 >> Accept Sunken Treasure
.target +Doctor Draxlegauge
.goto Arathi Highlands,33.856,80.444
step
#label NormalHelm
.goto Arathi Highlands,32.283,81.364
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
.turnin 668 >> Turn in Sunken Treasure
.accept 669 >> Accept Sunken Treasure
.target Shakes O'Breen
step << skip 
#completewith next
.goto Arathi Highlands,35.79,79.52,10 >> Logout on top of the rock in the cave where you escorted |cRXP_FRIENDLY_Professor Phizzlethorpe|r, then log back in
.link https://www.youtube.com/watch?v=SWBtPqm5M0Q&t=114s >> |cRXP_WARN_Click here for video reference|r
step
#softcore
.deathskip >> Die and respawn at the Spirit Healer next to Refuge Pointe
.target Spirit Healer
.xp <40,1 << Warlock/Paladin
step
#softcore
.dungeon SM
.goto Arathi Highlands,36.07,58.09
>>Click on the |cRXP_PICK_Keystone|r
.accept 653 >> Accept Myzrael's Allies
.isQuestTurnedIn 652
step << Hunter/Druid/Rogue
#softcore
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 684 >> Turn in Wanted! Marez Cowl
.target Captain Nials
.isQuestComplete 684
step
#softcore
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 684 >> Turn in Wanted! Marez Cowl
.turnin 685 >> Turn in Wanted! Otto and Falconcrest
.target Captain Nials
.isQuestComplete 684
.isQuestComplete 685
step
#softcore
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 684 >> Turn in Wanted! Marez Cowl
.target Captain Nials
.isQuestComplete 684
step
#softcore
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 685 >> Turn in Wanted! Otto and Falconcrest
.target Captain Nials
.isQuestComplete 685
step
#softcore
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.turnin 694 >> Turn in Trelane's Defenses
.target Apprentice Kryten
.isQuestComplete 694
step
#softcore
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.accept 695 >> Accept An Apprentice's Enchantment
.target Apprentice Kryten
.isQuestTurnedIn 694
step
#softcore
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.turnin 695 >> Turn in An Apprentice's Enchantment
.target Skuerto
.isQuestTurnedIn 694
step
#softcore
#completewith DeleteAgate
.destroy 4529 >> Delete the |T134094:0|t[Enchanted Agate] from your bags. You will no longer need it.
step << Warlock/Paladin
#softcore
.xp 40 >> Grind to level 40
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <40,1
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <40,1
step
#optional
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
#softcore
#completewith endsshore
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.goto Arathi Highlands,45.73,46.09
.fly Southshore >> Fly to Southshore
.target Cedrik Prose
.zoneskip Hillsbrad Foothills
.cooldown item,6948,<0,updateOnlyOnce
step
#softcore
.abandon 684 >> Abandon Wanted! Marez Cowl
step
#softcore
.abandon 694 >> Abandon Trelane's Defenses
step
.isOnQuest 661
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
.turnin 661 >> Turn in Hints of a New Plague?
step
.isQuestTurnedIn 551
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.accept 554 >> Accept Stormpike's Deciphering
.target Loremaster Dibbs
step
#label endsshore
.isQuestTurnedIn 540
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.accept 542 >> Accept Return to Milton
.target Loremaster Dibbs
step
#softcore
.dungeon RFD
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Wetlands >> Fly to Wetlands
.target Darla Harris
step << !Warlock !Paladin
#softcore
.dungeon SM
.dungeon !RFD
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Ironforge>> Fly to Ironforge
.target Darla Harris
.isQuestComplete 1050
step << !Warlock !Paladin
#softcore
.dungeon SM
.dungeon !RFD
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Wetlands>> Fly to Wetlands
.target Darla Harris
.itemcount 5536,0
step << Warlock/Paladin
#softcore
.dungeon !RFD
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Ironforge>> Fly to Ironforge
.target Darla Harris
step
#hardcore
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Arathi >> Fly to Arathi Highlands
.target Darla Harris
step << Hunter/Druid/Rogue
#hardcore
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 684 >> Turn in Wanted! Marez Cowl
.target Captain Nials
.isQuestComplete 684
step
#hardcore
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 684 >> Turn in Wanted! Marez Cowl
.turnin 685 >> Turn in Wanted! Otto and Falconcrest
.target Captain Nials
.isQuestComplete 684
.isQuestComplete 685
step
#hardcore
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 684 >> Turn in Wanted! Marez Cowl
.target Captain Nials
.isQuestComplete 684
step
#hardcore
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 685 >> Turn in Wanted! Otto and Falconcrest
.target Captain Nials
.isQuestComplete 685
step
#hardcore
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.turnin 694 >> Turn in Trelane's Defenses
.target Apprentice Kryten
.isQuestComplete 694
step
#hardcore
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.accept 695 >> Accept An Apprentice's Enchantment
.target Apprentice Kryten
.isQuestTurnedIn 694
step
#hardcore
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.turnin 695 >> Turn in An Apprentice's Enchantment
.target Skuerto
.isQuestTurnedIn 694
step
#hardcore
#completewith DeleteAgate
.destroy 4529 >> Delete the |T134094:0|t[Enchanted Agate] from your bags. You will no longer need it.
step
#hardcore
.dungeon RFD
.goto Arathi Highlands,45.6,46.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.fly Wetlands >> Fly to Wetlands
.target Cedrik Prose
step << !Warlock !Paladin
#hardcore
.dungeon SM
.dungeon !RFD
.goto Arathi Highlands,45.6,46.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.fly Ironforge>> Fly to Ironforge
.target Cedrik Prose
.isQuestComplete 1050
step << !Warlock !Paladin
#hardcore
.dungeon SM
.dungeon !RFD
.goto Arathi Highlands,45.6,46.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.fly Wetlands>> Fly to Wetlands
.target Cedrik Prose
.itemcount 5536,0
step << Warlock/Paladin
#hardcore
.dungeon !RFD
.goto Arathi Highlands,45.6,46.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.fly Ironforge>> Fly to Ironforge
.target Cedrik Prose
step
#hardcore
.abandon 684 >> Abandon Wanted! Marez Cowl
step
#hardcore
.abandon 694 >> Abandon Trelane's Defenses
step
.dungeon RFD
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
.home >> Set your Hearthstone to Menethil Harbor
.target Innkeeper Helbrek
step
.dungeon RFD
.goto Wetlands,9.49,59.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Ironforge>> Fly to Ironforge
.target Shellei Brondir
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
.turnin 1050 >> Turn in Mythology of the Titans
.target Librarian Mae Paledust
.isQuestComplete 1050
step
#optional
.isOnQuest 554
.dungeon SM << !Paladin !Warlock
.isQuestComplete 1050 << !Paladin !Warlock
.goto Ironforge,74.645,11.742
.target Prospector Stormpike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.zoneskip Ironforge
.turnin 554 >> Turn in Stormpike's Deciphering
step << !Warlock !Paladin
#optional
.isOnQuest 554
.dungeon RFD
.goto Ironforge,74.645,11.742
.target Prospector Stormpike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.zoneskip Ironforge
.turnin 554 >> Turn in Stormpike's Deciphering
step << Warlock
.isOnQuest 653
.goto Ironforge,50.827,5.621
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 653 >> Turn in Myzrael's Allies
.target Gerrig Bonegrip
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.accept 4487 >> Accept Summon Felsteed
.accept 4965 >> Accept Knowledge of the Orb of Orahil
.trainer >> Train your class spells
.target Briarthorn
step << !Paladin
.dungeon RFD
.goto Ironforge,76.61,51.28,10,0
.zone Stormwind City >> Take the tram to Stormwind
step << Paladin
.goto Ironforge,76.61,51.28,10,0
.zone Stormwind City >> Take the tram to Stormwind
step << Paladin
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.accept 1661 >>Accept The Tome of Nobility
.turnin 1661 >>Turnin The Tome of Nobility
.target Duthorian Rall
step << Paladin
.goto StormwindClassic,38.67,32.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.trainer >> Train your class spells
.target Arthur the Faithful
step
.dungeon RFD
.goto Stormwind City,39.592,27.199
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.accept 3636 >> Accept Bring the Light
.target Archbishop Benedictus
step
.dungeon RFD
.goto StormwindClassic,39.834,54.360
+Zone into the Stockade in Stormwind
.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Click here to Copy + Paste this macro once you're inside The Stockades to ghetto Hearth to Wetlands|r
.zone Wetlands >>|cRXP_WARN_If you are unable to do this, make your way back to Wetlands|r
step
.dungeon !SM
.dungeon !RFD
#softcore
.goto Hillsbrad Foothills,49.338,52.272 << !Warlock !Paladin
.goto Ironforge,55.501,47.742 << Warlock
.goto StormwindClassic,66.277,62.137 << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r << !Warlock !Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r << Paladin
.fly Wetlands >> Fly to Wetlands
.target Darla Harris << !Warlock !Paladin
.target Gryth Thurden << Warlock
.target Dungar Longdrink << Paladin
.zoneskip Wetlands
step
.dungeon !SM
.dungeon !RFD
#hardcore
.goto Arathi Highlands,45.6,46.0 << !Warlock !Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r << !Warlock !Paladin
.goto Ironforge,55.501,47.742 << Warlock
.goto StormwindClassic,66.277,62.137 << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r << Paladin
.fly Wetlands >> Fly to Wetlands
.target Darla Harris << !Warlock !Paladin
.target Gryth Thurden << Warlock
.target Dungar Longdrink << Paladin
.zoneskip Wetlands
step << !Warlock !Paladin
#optional
.dungeon SM
.dungeon !RFD
.isQuestTurnedIn 1050
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Wetlands >> Fly to Wetlands
.target Gryth Thurden
]]);
