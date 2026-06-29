RXPGuides.RegisterGuide([[
#version 23
#season 2
#group RestedXP Alliance 50-60
#classic
#tbc
#mop
<< Alliance
#name 57-58 Burning Steppes SoD
#displayname 54-56 Burning Steppes
#next 58-60 Western/Eastern Plaguelands SoD
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
.accept 3702 >> Accept The Smoldering Ruins of Thaurissan
.target Royal Historian Archesonus
.maxlevel 55
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
.skipgossip
.complete 3702,1 
.target Royal Historian Archesonus
.maxlevel 55
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
.turnin 3702 >> Turn in The Smoldering Ruins of Thaurissan
.accept 3701 >> Accept The Smoldering Ruins of Thaurissan
.target Royal Historian Archesonus
.maxlevel 55
step << !Druid !Hunter !Mage
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankwithdraw 10445,11947,11949,12724,10575 >> Withdraw the following from your bank if you have them:
>>|T132594:0|t[Drawing Kit] 
>>|T134815:0|t[Filled Cursed Ooze Jar] 
>>|T134857:0|t[Filled Tainted Ooze Jar] 
>>|T134144:0|t[Janice's Parcel] 
>>|T134430:0|t[Black Dragonflight Molt] (If you have it) 
.target Bailey Stonemantle
.maxlevel 55
step << !Mage
#xprate <2.5
.goto Ironforge,18.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
.home Ironforge >> Set your Hearthstone to Ironforge
.target Innkeeper Firebrew
step << Priest/Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Toldren Deepiron << Priest
.target Brandur Ironhammer << Paladin
step << Warlock/Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.trainer >> Train your class spells
.target Briarthorn << Warlock
.target Fenthwick << Rogue
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laris Geardawdle|r
.turnin 4512 >> Turn in A Little Slime Goes a Long Way
.target Laris Geardawdle
.isQuestComplete 4512
step
#optional
.isQuestComplete 4513
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laris Geardawdle|r
.turnin 4513 >> Turn in A Little Slime Goes a Long Way
.target Laris Geardawdle
step
.group
.isQuestTurnedIn 3368
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
>>|cRXP_FRIENDLY_Curator Thorius|r |cRXP_WARN_patrols through the Hall of Explorers|r
>>|cRXP_WARN_Only accept this quest if you're able to find party members to complete elite quests in Searing Gorge shortly|r
.accept 3371 >> Accept Dwarven Justice
.target Curator Thorius
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step
.group
.isOnQuest 3371
.goto Ironforge,55.492,47.728
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
>>|cRXP_WARN_Try to find group members while flying to complete Release Them and Prayer to Elune. You will accept them both shortly|r
.fly Searing Gorge>> Fly to Searing Gorge
.target Gryth Thurden
step
.group
.isOnQuest 3371
.goto Searing Gorge,35.230,42.584
.subzone 1443 >> Drop down the hole into The Slag Pit
>>|cRXP_WARN_Try to find group members while flying to complete Release Them and Prayer to Elune. You will accept them both shortly|r
step
.group
.isOnQuest 3371
.goto Searing Gorge,41.163,25.537
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dying Archaeologist|r
.turnin 3371 >> Turn in Dwarven Justice
.accept 3372 >> Accept Release Them
.target Dying Archaeologist
step
.group
.isQuestTurnedIn 3371
.goto Searing Gorge,41.163,25.537
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dying Archaeologist|r
.accept 3372 >> Accept Release Them
.target Dying Archaeologist
step << skip 
.group
#completewith next
+Logout skip out of the cave. There are MANY different spots you can use
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >> |cRXP_WARN_Click here for video reference|r
.zoneskip Searing Gorge,1
step
.group 4
.isOnQuest 3372
.goto Searing Gorge,24.61,30.97,25,0
.goto Searing Gorge,29.144,25.849
>>Open the |cRXP_PICK_Twilight Artifact|r. Loot it for the |cRXP_LOOT_Mysterious Artifact|r
>>|cRXP_WARN_Jump onto the |cRXP_PICK_Twilight Artifact|r to loot it|r
>>|cRXP_WARN_Skip this step if you are unable to complete it|r
.complete 3372,1 
.zoneskip Searing Gorge,1
step
.group 4
.goto Searing Gorge,29.505,26.325
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamael Lunthistle|r
.accept 3377 >> Accept Prayer to Elune
.skipgossip
.turnin 3377 >> Turn in Prayer to Elune
.accept 3378 >> Accept Prayer to Elune
.target Zamael Lunthistle
.zoneskip Searing Gorge,1
step
.group 4
.isOnQuest 3378
.goto Searing Gorge,22.98,37.82,70,0
.goto Searing Gorge,27.10,24.40,60,0
.goto Searing Gorge,22.98,37.82
>>Kill |cRXP_ENEMY_Twilight Dark Shamans|r, |cRXP_ENEMY_Twilight Fire Guards|r, |cRXP_ENEMY_Twilight Geomancers|r and |cRXP_ENEMY_Twilight Idolaters|r. Loot them for the |cRXP_LOOT_Prayer to Elune|r
>>|cRXP_WARN_Skip this step if you are unable to complete it|r
.complete 3378,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
.zoneskip Searing Gorge,1
step
.group
.isQuestComplete 3372
.goto Searing Gorge,35.230,42.584
.subzone 1443 >> Drop down the hole into The Slag Pit
step
.group 4
.isQuestComplete 3372
.goto Searing Gorge,41.252,25.408
>>Click the |cRXP_PICK_Altar of Suntara|r
.turnin 3372 >> Turn in Release Them
step
.group 4
.isQuestTurnedIn 3372
.goto Searing Gorge,41.163,25.541
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dying Archaeologist|r
.target Dying Archaeologist
.accept 3566 >> Accept Rise, Obsidion!
step
.group 4
.isQuestTurnedIn 3372
>>Kill |cRXP_ENEMY_Lathoric the Black|r and |cRXP_ENEMY_Obsidion|r. Loot them for the |cRXP_LOOT_Head of Lathoric the Black|r and the |cRXP_LOOT_Heart of Obsidion|r
.complete 3566,1 
.complete 3566,2 
.mob Lathoric the Black
.mob Obsidion
step << skip 
.group
#completewith next
+Logout skip out of the cave. There are MANY different spots you can use
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >> |cRXP_WARN_Click here for video reference|r
.zoneskip Searing Gorge,1
step
.group
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
.fly Burning Steppes>> Fly to Burning Steppes
.target Lanie Reed
.isQuestTurnedIn 3823
.maxlevel 55
step
.goto Ironforge,55.492,47.728
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Burning Steppes>> Fly to Burning Steppes
.target Gryth Thurden
.isQuestTurnedIn 3823
.maxlevel 55
step
.goto Ironforge,55.492,47.728
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Redridge >> Fly to Redridge
.target Gryth Thurden
.maxlevel 55
step
#completewith next
.goto Burning Steppes,78.7,81.1,60,0
.goto Burning Steppes,77.5,68.0
.zone Burning Steppes >> Travel to Burning Steppes
.maxlevel 55
step
.goto Burning Steppes,82.4,63.6,60,0
.goto Burning Steppes,84.555,68.677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.accept 3823 >> Accept Extinguish the Firegut
.target Oralius
.maxlevel 55
step << Hunter
#sticky
#completewith BSEndOne
#label HitnRunOne
>>While questing be on the lookout for an |cRXP_ENEMY_Escaped Core Hound|r he can spawn in multiple spots in the zone, |cRXP_WARN_check your map for waypoints for possible spawn locations|r. If you find him kill him and loot for the rune of |T132171:0|t[|cRXP_FRIENDLY_Hit and Run|r]
>>|cRXP_WARN_Do not go out of your way to look for him|r
>>TIP: You can use |T132172:0|t[|cRXP_FRIENDLY_Eagle Eye|r] to scout for his position
.goto Burning Steppes,84.8,68.0,0
.goto Burning Steppes,83.8,60.0,0
.goto Burning Steppes,88.6,54.8,0
.goto Burning Steppes,61.6,54.4,0
.goto Burning Steppes,39.8,59.4,0
.goto Burning Steppes,31.8,53.0,0
.goto Burning Steppes,24.8,55.6,0
.unitscan Escaped Core Hound
.collect 226252,1 
.maxlevel 55
step << Hunter
#sticky
#completewith BSEndOne
#requires HitnRunOne
.train 440563 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of the Guerrilla|r] |cRXP_WARN_to train|r |T132171:0|t[Hit and Run]
.use 226252
.maxlevel 55
step
.goto Burning Steppes,75.34,48.62,70,0
.goto Burning Steppes,82.89,37.61,70,0
.goto Burning Steppes,80.74,44.38
>>Kill |cRXP_ENEMY_Firegut Ogre Mages|r, |cRXP_ENEMY_Firegut Ogres|r and |cRXP_ENEMY_Firegut Brutes|r
.complete 3823,1 
.complete 3823,2 
.complete 3823,3 
.mob Firegut Ogre Mage
.mob Firegut Ogre
.mob Firegut Brute
.maxlevel 55
step
.goto Burning Steppes,84.555,68.677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 3823 >> Turn in Extinguish the Firegut
.accept 3824 >> Accept Gor'tesh the Brute Lord
.accept 4283 >> Accept FIFTY! YEP! << Warrior/Paladin/Hunter
.target Oralius
.maxlevel 55
step
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
.accept 4182 >> Accept Dragonkin Menace
.target Helendis Riverhorn
.maxlevel 55
step
#completewith next
.goto Burning Steppes,65.236,24.007
.subzone 251 >> Travel to Flame Crest
.maxlevel 55
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r and |cRXP_FRIENDLY_Maxwort Uberglint|r
.accept 4726 >> Accept Broodling Essence
.goto Burning Steppes,65.236,24.007
.accept 4296 >> Accept Tablet of the Seven
.goto Burning Steppes,65.152,23.911
.target Tinkee Steamboil
.target Maxwort Uberglint
.maxlevel 55
step
#completewith BroodlingEssence
.goto Burning Steppes,81.8,27.8,0
.goto Burning Steppes,91.4,32.6,0
.goto Burning Steppes,89.8,54.6,0
.goto Burning Steppes,81.8,60.0,0
>>Kill |cRXP_ENEMY_Black Broodlings|r, |cRXP_ENEMY_Black Dragonspawns|r, |cRXP_ENEMY_Black Wyrmkins|r and a |cRXP_ENEMY_Black Drake|r
>>|cRXP_WARN_This quest can be hard but rewards a lot of XP at the end. Try to find a group if required or skip it if its too difficult|r
.complete 4182,1 
.complete 4182,2 
.complete 4182,4 
.complete 4182,3 
.isOnQuest 4182
.mob Black Broodling
.mob Black Dragonspawn
.mob Black Drake
.mob Black Wyrmkin
.maxlevel 55
step
#completewith next
.goto Burning Steppes,81.8,27.8,0
.goto Burning Steppes,91.4,32.6,0
.goto Burning Steppes,89.8,54.6,0
.goto Burning Steppes,81.8,60.0,0
.use 12284 >> |cRXP_WARN_Use the|r |T133001:0|t[Draco-Incarcinatrix 900] |cRXP_WARN_on |cRXP_ENEMY_Black Broodlings|r, then kill them. Note that taking damage will stop your cast|r
>>Loot the |cRXP_LOOT_Broodling Essence|r on the ground after they die
.complete 4726,1 
.mob Black Broodling
.maxlevel 55
step
.goto Burning Steppes,95.074,31.553
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
.accept 4022 >> Accept A Taste of Flame
.itemcount 10575,1 
.target Cyrus Therepentous
.maxlevel 55
step
.goto Burning Steppes,95.074,31.553
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
>>Select the gossip option: "I present you with proof of my deeds, Cyrus."
.complete 4022,1 
.turnin 4022 >> Turn in A Taste of Flame
.itemcount 10575,1 
.target Cyrus Therepentous
.maxlevel 55
step
#label BroodlingEssence
.goto Burning Steppes,91.64,33.51,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,81.8,60.0,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,90.6,43.6
.use 12284 >> |cRXP_WARN_Use the|r |T133001:0|t[Draco-Incarcinatrix 900] |cRXP_WARN_on |cRXP_ENEMY_Black Broodlings|r, then kill them. Note that taking damage will stop your cast|r
>>Loot the |cRXP_LOOT_Broodling Essence|r on the ground after they die
.complete 4726,1 
.mob Black Broodling
.maxlevel 55
step
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,81.8,60.0,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,90.6,43.6
>>Kill |cRXP_ENEMY_Black Broodlings|r, |cRXP_ENEMY_Black Dragonspawns|r, |cRXP_ENEMY_Black Wyrmkins|r and a |cRXP_ENEMY_Black Drake|r
>>|cRXP_WARN_This quest can be hard but rewards a lot of XP at the end. Try to find a group if required or skip it if its too difficult|r
.complete 4182,1 
.complete 4182,2 
.complete 4182,4 
.complete 4182,3 
.isOnQuest 4182
.mob Black Broodling
.mob Black Dragonspawn
.mob Black Drake
.mob Black Wyrmkin
.maxlevel 55
step
#completewith next
>>Click the |cRXP_PICK_Thaurissan Relics|r on the ground
.complete 3701,1 
.maxlevel 55
step
.goto Burning Steppes,54.121,40.757
>>Click the |cRXP_PICK_Tablet of the Seven|r. Loot it for the |cRXP_LOOT_Tablet Transcript |r
.complete 4296,1 
.skipgossip
.maxlevel 55
step
.goto Burning Steppes,54.2,38.3,60,0
.goto Burning Steppes,65.6,43.9,60,0
.goto Burning Steppes,63.5,33.8,60,0
.goto Burning Steppes,57.4,36.4
>>Click the |cRXP_PICK_Thaurissan Relics|r on the ground
.complete 3701,1 
.maxlevel 55
step << Warrior/Paladin/Hunter
#completewith AxeRune
>>Kill |cRXP_ENEMY_Blackrock Orcs|r and |cRXP_ENEMY_Worgs|r. Loot them for their |cRXP_LOOT_Blackrock Medallions|r
.complete 4283,1 
.mob Blackrock Slayer
.mob Blackrock Warlock
.mob Blackrock Sorcerer
.mob Blackrock Soldier
.mob Blackrock Worg
.mob Slavering Ember Worg
.mob Giant Ember Worg
.maxlevel 55
step
.goto Burning Steppes,39.21,55.27
>>Kill |cRXP_ENEMY_Gor'tesh|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Gor'tesh|r |cRXP_WARN_hits very hard and has a thrash attack, be careful|r
.complete 3824,1 
.mob Gor'tesh
.maxlevel 55
step << Warrior
#season 2
.train 440492,1
.goto Burning Steppes,40.4,33.6
.aura 459616 >>|cRXP_WARN_Kill |cRXP_ENEMY_Blackrock Orcs|r at Blackrock Stronghold until you receive the|r |T132353:0|t[Rhythm of War] |cRXP_WARN_buff|r
.mob Blackrock Battlemaster
.mob Blackrock Slayer
.mob Blackrock Warlock
.mob Blackrock Sorcerer
.maxlevel 55
step << Warrior
#season 2
#label FreshMeat
.train 440492,1
.goto Burning Steppes,39.549,27.828
>>|cRXP_WARN_Head to the|r |cRXP_PICK_Altar of Reverence|r
>>|cRXP_WARN_Once there, type "/salute" in your chatbox. This will summon a|r |cRXP_ENEMY_Revered Champion|r
>>Kill the |cRXP_ENEMY_Revered Champion|r, then click the |cRXP_PICK_Altar of Reverence|r after
.accept 84124 >> Accept Legacy of Valor
.turnin 84124 >> Turn in Legacy of Valor
.mob Revered Champion
.maxlevel 55
step << Warrior
#season 2
#sticky
#completewith next
.train 440492 >>|cRXP_WARN_Use the|r |T133747:0|t[|cRXP_LOOT_Rune of the First Warrior|r] |cRXP_WARN_to learn|r |T237516:0|t[Fresh Meat]
.maxlevel 55
.use 226680
step << Warrior/Paladin/Hunter
#label AxeRune
.goto Burning Steppes,39.9,34.1
>>|cRXP_WARN_Enter the Stronghold and look for a red book laying in the location marked on your map. Loot it for the rune|r
.collect 226407,1 
.maxlevel 55
step << Warrior/Paladin/Hunter
#completewith next
.train 453688 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Axe Specialization|r] to train |T132394:0|t[Axe Specialization]
.itemcount 226407,1
.use 226407
.maxlevel 55
step << Warrior/Paladin/Hunter
.goto Burning Steppes,39.21,55.27,0
.goto Burning Steppes,41.8,35.4,0
.goto Burning Steppes,49.6,55.4,0
.goto Burning Steppes,50.6,61.8,0
.goto Burning Steppes,55.4,54.6,0
.goto Burning Steppes,39.21,55.27,60,0
.goto Burning Steppes,49.6,55.4,0,60,0
.goto Burning Steppes,50.6,61.8,0,60,0
.goto Burning Steppes,55.4,54.6,0,60,0
.goto Burning Steppes,48.8,59.6
>>Kill |cRXP_ENEMY_Blackrock Orcs|r and |cRXP_ENEMY_Worgs|r. Loot them for their |cRXP_LOOT_Blackrock Medallions|r
.complete 4283,1 
.mob Blackrock Slayer
.mob Blackrock Warlock
.mob Blackrock Sorcerer
.mob Blackrock Soldier
.mob Blackrock Worg
.mob Slavering Ember Worg
.mob Giant Ember Worg
.maxlevel 55
step
#label BSEndOne
.goto Burning Steppes,84.554,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 3824 >> Turn in Gor'tesh the Brute Lord
.accept 3825 >> Accept Ogre Head On A Stick = Party
.turnin 4283 >> Turn in FIFTY! YEP! << Warrior/Paladin/Hunter
.target Oralius
.maxlevel 55
step
.isQuestComplete 4182
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
.turnin 4182 >> Turn in Dragonkin Menace
.accept 4183 >> Accept The True Masters
.target Helendis Riverhorn
.maxlevel 55
step
.isQuestTurnedIn 4182
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
.accept 4183 >> Accept The True Masters
.target Helendis Riverhorn
.maxlevel 55
step << skip
#optional
.abandon 4182 >> Abandon Dragonkin Menace if you were unable to complete it
.maxlevel 55
step
.isQuestTurnedIn 4182
#completewith next
.goto Burning Steppes,84.333,68.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgus Stoutarm|r
.fly Redridge >> Fly to Redridge Mountains
.target Borgus Stoutarm
step
.isQuestTurnedIn 4182
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 4183 >> Turn in The True Masters
.accept 4184 >> Accept The True Masters
.target Magistrate Solomon
step
.isQuestTurnedIn 4182
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fly Stormwind >> Fly to Stormwind
.target Ariena Stormfeather
.zoneskip Redridge Mountains,1
step
.goto Stormwind City,44.274,73.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clavicus Knavingham|r up stairs
>>Do the Stormwind cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7791 >> Turn in A Donation of Wool
.turnin 7793 >> Turn in A Donation of Silk
.turnin 7794 >> Turn in A Donation of Mageweave
.turnin 7795 >> Turn in A Donation of Runecloth
.target Clavicus Knavingham
step
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.turnin 4184 >> Turn in The True Masters
.accept 4185 >> Accept The True Masters
.target Highlord Bolvar Fordragon
step
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.accept 6182 >> Accept The First and the Last
.target Highlord Bolvar Fordragon
.xp <56,1
step
.isQuestTurnedIn 4182
.goto Stormwind City,78.102,17.750
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r
.complete 4185,1 
.skipgossip
.target Lady Katrana Prestor
step
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.turnin 4185 >> Turn in The True Masters
.accept 4186 >> Accept The True Masters
.target Highlord Bolvar Fordragon
step
.isQuestTurnedIn 4182
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step
.isQuestTurnedIn 4182
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 6182 >> Turn in The First and the Last
.accept 6183 >> Accept Honor the Dead
.turnin 6183 >> Turn in Honor the Dead
.accept 6184 >> Accept Flint Shadowmore
.target Master Mathias Shaw
.xp <56,1
step
.isQuestTurnedIn 4182
#completewith next
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Redridge>> Fly to Redridge Mountains
.target Dungar Longdrink
step
.isQuestTurnedIn 4182
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 4186 >> Turn in The True Masters
.accept 4223 >> Accept The True Masters
.target Magistrate Solomon
step
#completewith next
.isQuestTurnedIn 4182
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fly Burning Steppes >> Fly to Burning Steppes
.target Ariena Stormfeather
step
.isQuestTurnedIn 4182
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
.turnin 4223 >> Turn in The True Masters
.accept 4224 >> Accept The True Masters
.target Marshal Maxwell
step
.destroy 11467 >> Delete any leftover |T133439:0|t[Blackrock Medallions]
step << Hunter
#sticky
#completewith BSEndTwo
#label HitnRunTwo
>>While questing be on the lookout for an |cRXP_ENEMY_Escaped Core Hound|r he can spawn in multiple spots in the zone, |cRXP_WARN_check your map for waypoints for possible spawn locations|r. If you find him kill him and loot for the rune of |T132171:0|t[|cRXP_FRIENDLY_Hit and Run|r]
>>|cRXP_WARN_Do not go out of your way to look for him|r
>>TIP: You can use |T132172:0|t[|cRXP_FRIENDLY_Eagle Eye|r] to scout for his position
.goto Burning Steppes,84.8,68.0,0
.goto Burning Steppes,83.8,60.0,0
.goto Burning Steppes,88.6,54.8,0
.goto Burning Steppes,61.6,54.4,0
.goto Burning Steppes,39.8,59.4,0
.goto Burning Steppes,31.8,53.0,0
.goto Burning Steppes,24.8,55.6,0
.unitscan Escaped Core Hound
.collect 226252,1 
.train 440563,1
.maxlevel 55
step << Hunter
#sticky
#completewith BSEndTwo
#requires HitnRunTwo
.train 440563 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of the Guerrilla|r] |cRXP_WARN_to train|r |T132171:0|t[Hit and Run]
.use 226252
.train 440563,1
.maxlevel 55
step
#completewith next
.goto Burning Steppes,65.236,24.007
.subzone 251 >> Travel to Flame Crest
.maxlevel 55
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r and |cRXP_FRIENDLY_Maxwort Uberglint|r
.turnin 4726 >> Turn in Broodling Essence
.accept 4808 >> Accept Felnok Steelspring
.goto Burning Steppes,65.236,24.007
.turnin 4296 >> Turn in Tablet of the Seven
.goto Burning Steppes,65.152,23.911
.target Tinkee Steamboil
.target Maxwort Uberglint
.maxlevel 55
step
.isQuestTurnedIn 4182
.goto Burning Steppes,65.012,23.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
.complete 4224,1 
.skipgossip
.target Ragged John
.maxlevel 55
step
.goto Burning Steppes,80.997,46.790
>>Click the |cRXP_PICK_Soft Dirt Mound|r atop the mountain
.complete 3825,1 
.maxlevel 55
step
#label BSEndTwo
.goto Burning Steppes,84.554,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 3825 >> Turn in Ogre Head On A Stick = Party
.target Oralius
.maxlevel 55
step
.isQuestTurnedIn 4182
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
.turnin 4224 >> Turn in The True Masters
.target Marshal Maxwell
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <56,1
.zoneskip Ironforge
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <56,1
.zoneskip Ironforge
step << Mage
#completewith next
.zone Ironforge >> Teleport to Ironforge
.zoneskip Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
.zoneskip Ironforge
step << !Mage
.hs >> Hearth to Ironforge
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip Ironforge
step 
#softcoreserver
.goto Ironforge,32.209,63.266
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Rotimer|r
.accept 7261 >> Accept The Sovereign Imperative
.target Lieutenant Rotimer
step
#xprate <2.5
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankwithdraw 15788,15790,12891,12896,12897,12898,12899 >> Withdraw the follwing items:
>>|T134942:0|t[Everlook Report] 
>>|T133737:0|t[Studies in Spirit Speaking] 
>>|T134708:0|t[Jaron's Pick] 
>>All 4 |T135152:0|t[Relic Fragments] 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankdeposit 12438 >> Deposit the following items into your bank:
>>|T133469:0|t[Tinkee's Letter] 
.target Bailey Stonemantle
.itemcount 12438,1
step << !Priest !Mage
>>Take out any |T134863:0|t[Noggenfogger Elixirs] from your bank if you have any. These will come in handy in EPL shortly for a large mountain skip time save. Skip this step if you don't have any
.collect 8529,40 
step << Priest/Mage
>>Take out any |T134863:0|t[Noggenfogger Elixirs] from your bank if you have any. These will come in handy in EPL shortly for a large mountain skip time save
>>If you have none, |T132917:0|t[Light Feathers] will also work for |T135928:0|t[Levitate] << Priest
>>If you have none, |T132917:0|t[Light Feathers] will also work for |T135992:0|t[Slow Fall] << Mage
.collect 8529,40 
.disablecheckbox << Priest/Mage
.collect 17056,5 << Priest/Mage 
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy the following items from the Auction House. You will need these later for a free quest turn in in EPL|r
.collect 12359,2,6026,1 
.collect 11128,1,6026,1 
.collect 10562,8,6026,1 
.collect 10560,8,6026,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << skip 
#phase 6
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy the following items from the Auction House. You will need these later for multiple free quest turn ins in EPL|r
>>|cRXP_WARN_There are 5 different quests and each require 30. If you can't get 30 of one type then skip it|r
.collect 22529,30,9136,1 
.collect 22526,30,9126,1 
.collect 22525,30,9124,1 
.collect 22527,30,9128,1 
.collect 22528,30,9131,1 
.collect 12359,2,6026,1 
.collect 11128,1,6026,1 
.collect 10562,8,6026,1 
.collect 10560,8,6026,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#completewith end
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
#completewith end
.goto Ironforge,43.224,31.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
>>Do the Ironforge cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7802 >> Turn in A Donation of Wool
.turnin 7803 >> Turn in A Donation of Silk
.turnin 7804 >> Turn in A Donation of Mageweave
.turnin 7805 >> Turn in A Donation of Runecloth
.zoneskip Ironforge,1
.target Mistina Steelshield
step << Priest/Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Toldren Deepiron << Priest
.target Brandur Ironhammer << Paladin
step << Paladin
#phase 1-3
.goto Ironforge,23.126,6.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
.trainer >> Train your class spells
.target Brandur Ironhammer
step << Paladin
#phase 4-6
.goto Ironforge,23.126,6.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
.trainer >> Train your class spells
.accept 8415 >> Accept Chillwind Point
.target Brandur Ironhammer
step << Warlock/Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.trainer >> Train your class spells
.target Briarthorn << Warlock
.target Fenthwick << Rogue
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step
.group
.isQuestComplete 3566
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
>>|cRXP_FRIENDLY_Curator Thorius|r |cRXP_WARN_patrols through the Hall of Explorers|r
.turnin 3566 >> Turn in Rise Obsidion!
.target Curator Thorius
step
#label end
.goto Ironforge,38.36,55.30
.target Royal Historian Archesonus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
.turnin 3701 >> Turn in The Smoldering Ruins of Thaurissan
.isQuestComplete 3701
]]);
