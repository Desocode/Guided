RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 20-30
#season 0,1
<< Alliance !Hunter
#classic
#tbc
#mop
#xprate <1.99
#name 29-30 Ashenvale
#next RestedXP Alliance 30-40\29-32 Duskwood
step
#completewith next
.goto Wetlands,5.429,57.485,25 >> Travel to the Menethil Harbor Dock
step
.goto Wetlands,4.560,57.160
.zone Darkshore >> Take the boat to Darkshore
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
step
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Stonetalon >> Fly to Stonetalon
.target Caylais Moonfeather
step
.goto Stonetalon Mountains,37.103,8.100
.target Keeper Albagorm
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
.accept 1057 >> Accept Reclaiming the Charred Vale
step
#completewith next
>>Kill |cRXP_ENEMY_Blackened Basilisks|r, |cRXP_ENEMY_Scorched Basilisk|r and |cRXP_ENEMY_Singed Basilisks|r. Loot them for their |cRXP_LOOT_Scales|r
>>|cRXP_WARN_Do not go out of your way to complete this quest now. You will finish it later in The Shimmering Flats|r
.complete 1078,1 
.mob Blackened Basilisk
.mob Scorched Basilisk
.mob Singed Basilisk
step
#loop
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,34.55,60.71,0
>>Kill |cRXP_ENEMY_Bloodfury Harpies|r, |cRXP_ENEMY_Bloodfury Ambushers|r, |cRXP_ENEMY_Bloodfury Slayers|r and |cRXP_ENEMY_Bloodfury Roguefeathers|r
.complete 1057,1 
.mob +Bloodfury Harpy
.complete 1057,2 
.mob +Bloodfury Ambusher
.complete 1057,3 
.mob +Bloodfury Slayer
.complete 1057,4 
.mob +Bloodfury Roguefeather
step
#map Stonetalon Mountains
#completewith next
.goto Desolace,53.958,3.436
.zone Desolace >> Travel to Desolace
step
.goto Desolace,67.38,15.54,40,0
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.fp Desolace >> Get the Desolace Flight Path
.fly Stonetalon>> Fly to Stonetalon
.target Baritanas Skyriver
step
.goto Stonetalon Mountains,37.103,8.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
.turnin 1057 >> Turn in Reclaiming the Charred Vale
.target Keeper Albagorm
.accept 1059 >> Accept Reclaiming the Charred Vale
step
.goto Stonetalon Mountains,36.438,7.181
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
.fly Ashenvale>> Fly to Ashenvale
.target Teloren
step
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.accept 4581 >> Accept Kayneth Stillwind
step
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.accept 1054 >> Accept Culling the Threat
step
#completewith next
.goto Ashenvale,34.69,44.30,30,0
.goto Ashenvale,35.43,41.46,30,0
.goto Ashenvale,36.28,38.48,30,0
.goto Ashenvale,36.83,37.56,30 >> Travel to Thistlefur Village. Follow the Arrow for a shortcut
step
.goto Ashenvale,36.06,36.59,0
.goto Ashenvale,37.00,33.77,0
.goto Ashenvale,35.88,31.90,0
.goto Ashenvale,38.73,36.32,0
.goto Ashenvale,36.06,36.59,60,0
.goto Ashenvale,37.00,33.77,60,0
.goto Ashenvale,35.88,31.90,60,0
.goto Ashenvale,38.73,36.32,60,0
.goto Ashenvale,39.595,36.309
>>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Dal Bloodclaw|r |cRXP_WARN_patrols Thistlefur Village|r
.complete 1054,1
.unitscan Dal Bloodclaw
step
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.accept 973 >> Accept The Tower of Althalaxx
step
.goto Ashenvale,25.27,60.68
>>Kill |cRXP_ENEMY_Ilkrud Magthrull|r. Loot him for his |cRXP_LOOT_Tome|r
>>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 Voidwalkers. Stop this cast if you're able to|r
>>|cRXP_WARN_Clear an exit path if needed so you can reset them along with the |cRXP_ENEMY_Succubus|r if needed|r
.complete 973,1
.mob Ilkrud Magthrull
step
.goto Ashenvale,22.23,52.98
.target Sentinel Melyria Frostshadow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
.accept 1022 >> Accept The Howling Vale
step
.goto Ashenvale,21.73,53.34
.target Illiyana
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
.accept 1021 >> Accept Vile Satyr! Dryads in Danger!
step
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 973 >> Turn in The Tower of Althalaxx
.accept 1140 >> Accept The Tower of Althalaxx
step
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1054 >> Turn in Culling the Threat
.accept 1024 >> Accept Raene's Cleansing
.accept 1025 >> Accept An Aggressive Defense
step
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.accept 1035 >> Accept Fallen Sky Lake
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1024 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1026 >> Accept Raene's Cleansing
step
#completewith next
.goto Ashenvale,63.0,43.8,60,0
.goto Ashenvale,59.8,42.6,60,0
.goto Ashenvale,57.6,39.2,60,0
.goto Ashenvale,57.8,33.6,60,0
.goto Ashenvale,55.0,32.8,60,0
.goto Ashenvale,63.0,46.2,60,0
.goto Ashenvale,55.0,32.8
>>Kill |cRXP_ENEMY_Withered Ancients|r and |cRXP_ENEMY_Crazed Ancients|r. Loot them for a |cRXP_LOOT_Wooden Key|r
.collect 5475,1,1026,1 
.isOnQuest 1026
.mob Withered Ancient
.mob Crazed Ancient
step
.goto Ashenvale,54.416,35.397
>>Open the |cRXP_PICK_Worn Chest|r. Loot it for the |cRXP_LOOT_Iron Shaft|r
.complete 1026,1
step
#completewith next
.goto Ashenvale,53.440,36.131,15,0
.goto Ashenvale,52.698,37.759,20 >> Run up here for a shortcut
step
.goto Ashenvale,50.49,39.12
>>Click the |cRXP_PICK_Tome of Mel'Thandris|r on the table
.complete 1022,1
step
.goto Ashenvale,78.32,44.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anilia|r
.turnin 1021 >> Turn in Vile Satyr! Dryads in Danger!
.target Anilia
.accept 1031 >> Accept The Branch of Cenarius
step
.goto Ashenvale,77.99,42.41
>>Kill |cRXP_ENEMY_Geltharis|r. Loot him for his |cRXP_LOOT_Branch|r
.complete 1031,1
.mob Geltharis
step
.goto Ashenvale,85.23,44.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
.turnin 4581 >> Turn in Kayneth Stillwind
.target Kayneth Stillwind
.accept 1011 >> Accept Forsaken Diseases
step
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fp Azshara>> Get the Azshara flight path
.fly Ashenvale>> Fly to Ashenvale
.target Jarrodenus
step
.goto Ashenvale,22.23,52.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
.turnin 1022 >> Turn in The Howling Vale
.target Sentinel Melyria Frostshadow
.accept 1037 >> Accept Velinde Starsong
step
.goto Ashenvale,21.73,53.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
.turnin 1031 >> Turn in The Branch of Cenarius
.target Illiyana
.accept 1032 >> Accept Satyr Slaying!
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1026 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1027 >> Accept Raene's Cleansing
step
#xprate <1.2
#completewith next
>>Kill a few |cRXP_ENEMY_Foulweald Warriors|r and |cRXP_ENEMY_Foulweald Totemics|r before heading south toward the |cRXP_ENEMY_Water Elementals|r
>>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Foulweald Ursas|r |cRXP_WARN_can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
>>|cRXP_WARN_You will kill the rest after finishing the Elemental Bracers quest|r
.complete 1025,4,5 
.mob +Foulweald Warrior
.goto Ashenvale,50.08,59.94,70,0
.goto Ashenvale,53.75,63.49,70,0
.goto Ashenvale,54.17,61.69,70,0
.goto Ashenvale,50.08,59.94
.complete 1025,3,4 
.mob +Foulweald Totemic
.goto Ashenvale,50.08,59.94,70,0
.goto Ashenvale,53.75,63.49,70,0
.goto Ashenvale,54.17,61.69,70,0
.goto Ashenvale,50.08,59.94
.complete 1025,2 
.disablecheckbox
.complete 1025,1 
.disablecheckbox
.mob Foulweald Ursa
.mob Foulweald Den Watcher
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.accept 1016 >> Accept Elemental Bracers
.target Sentinel Velene Starstrike
step
.goto Ashenvale,44.78,70.07,60,0
.goto Ashenvale,48.90,70.05,60,0
.goto Ashenvale,51.28,70.51,60,0
.goto Ashenvale,48.90,70.05
>>Kill |cRXP_ENEMY_Befouled Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
.collect 12220,5,1016,1
.mob Befouled Water Elemental
step
.use 5456 >> |cRXP_WARN_Use the|r |T134943:0|t[Divining Scroll] |cRXP_WARN_to create the|r |T134938:0|t[Divined Scroll]
.complete 1016,1 
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.turnin 1016 >> Turn in Elemental Bracers
.target Sentinel Velene Starstrike
step
.goto Ashenvale,50.08,59.94,70,0
.goto Ashenvale,53.75,63.49,70,0
.goto Ashenvale,54.17,61.69,70,0
.goto Ashenvale,56.45,63.62,70,0
.goto Ashenvale,50.08,59.94
>>Kill |cRXP_ENEMY_Foulweald Warriors|r, |cRXP_ENEMY_Foulweald Totemics|r, |cRXP_ENEMY_Foulweald Ursas|r and a |cRXP_ENEMY_Foulweald Den Watcher|r
>>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Foulweald Ursas|r |cRXP_WARN_can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
>>The |cRXP_ENEMY_Foulweald Totemics|r share spawns with |cRXP_ENEMY_Foulweald Warriors|r. You may have to backtrack and kill respawns if you weren't lucky with the spawns
.complete 1025,4 
.mob +Foulweald Warrior
.complete 1025,3 
.mob +Foulweald Totemic
.complete 1025,2 
.mob +Foulweald Ursa
.complete 1025,1 
.mob +Foulweald Den Watcher
step
.goto Ashenvale,66.649,82.189
>>Kill the |cRXP_ENEMY_Shadethicket Oracle|r. Loot it for the |cRXP_LOOT_Fallen Moonstone|r
.complete 1035,1
.mob Shadethicket Oracle
step
#completewith next
>>Kill |cRXP_ENEMY_Rotting Slimes|r. |cRXP_WARN_After |cRXP_ENEMY_Rotting Slimes|r die a |cRXP_PICK_Rusty Chest|r will spawn on their corpse|r
>>Open the |cRXP_PICK_Rusty Chests|r. Loot it for the |cRXP_LOOT_Iron Pommel|r
.complete 1027,1 
.mob Rotting Slime
.isOnQuest 1027
step
.goto Ashenvale,75.29,72.00
>>Loot the |cRXP_LOOT_Bottle of Disease|r on the table
>>|cRXP_WARN_Be cautious as the |cRXP_ENEMY_Forsaken|r defending it can be in|r |T132320:0|t[Stealth]
.complete 1011,1 
step
#label slimes
.goto Ashenvale,72.6,71.6,60,0
.goto Ashenvale,69.8,76.2,60,0
.goto Ashenvale,75.4,73.0,60,0
.goto Ashenvale,73.6,76.6
>>Kill |cRXP_ENEMY_Rotting Slimes|r. |cRXP_WARN_After |cRXP_ENEMY_Rotting Slimes|r die a |cRXP_PICK_Rusty Chest|r will spawn on their corpse|r
>>Open the |cRXP_PICK_Rusty Chests|r. Loot it for the |cRXP_LOOT_Iron Pommel|r
.complete 1027,1 
.mob Rotting Slime
step
.goto Ashenvale,85.23,44.71
.target Kayneth Stillwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
.turnin 1011 >> Turn in Forsaken Diseases
step
#completewith SatyrHorns
>>Kill |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r
.complete 1032,1 
step
.goto Ashenvale,81.59,48.57
>>Click the |cRXP_PICK_Circle of Imprisonment|r in Satyrnaar
.complete 1140,2 
step
#label SatyrHorns
.goto Ashenvale,78.776,46.765,110,0
.goto Ashenvale,73.835,47.120,100,0
.goto Ashenvale,66.62,56.99
>>Click the |cRXP_PICK_Circle of Imprisonment|r in Night Run
>>|cRXP_WARN_Be cautious of |cRXP_ENEMY_Felmusk Shadowstalkers|r in|r |T132320:0|t[Stealth]
.complete 1140,1 
step
.goto Ashenvale,81.42,49.87
>>Kill |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r
.complete 1032,1 
.mob Felmusk Felsworn
.mob Felmusk Rogue
.mob Felmusk Satyr
.mob Felmusk Shadowstalker
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1027 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1028 >> Accept Raene's Cleansing
step
#completewith next
.goto Ashenvale,56.993,51.981,20,0
.goto Ashenvale,57.369,50.953,20 >> Travel toward the |cRXP_PICK_Hidden Shrine|r
step
.goto Ashenvale,56.320,49.188
>>Click the |cRXP_PICK_Hidden Shrine|r
.turnin 1028 >> Turn in Raene's Cleansing
.accept 1055 >> Accept Raene's Cleansing
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1055 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1029 >> Accept Raene's Cleansing
step
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.turnin 1035 >> Turn in Fallen Sky Lake
step
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1025 >> Turn in An Aggressive Defense
.turnin 1029 >> Turn in Raene's Cleansing
.target Raene Wolfrunner
.accept 1030 >> Accept Raene's Cleansing
step
.goto Ashenvale,53.269,74.270,35,0
.goto Ashenvale,51.443,75.004,45 >> Travel toward |cRXP_FRIENDLY_Krolg|r
.isOnQuest 1030
step
#completewith next
.cast 6405 >> |cRXP_WARN_Use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg|r
.use 5462
.isOnQuest 1030
step
.goto Ashenvale,50.85,75.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
.use 5462 >> |cRXP_WARN_You must use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg before talking to|r |cRXP_FRIENDLY_Krolg|r
.turnin 1030 >> Turn in Raene's Cleansing
.accept 1045 >> Accept Raene's Cleansing
.target Krolg
step
.goto Ashenvale,54.210,74.082,50,0
.goto Ashenvale,54.747,79.618
>>Kill |cRXP_ENEMY_Bloodtooth Guards|r and |cRXP_ENEMY_Ran Bloodtooth|r. Loot him for his |cRXP_LOOT_Skull|r
.complete 1045,2 
.mob +Bloodtooth Guard
.complete 1045,1 
.mob +Ran Bloodtooth
.collect 5388,1,1045,1
.mob +Ran Bloodtooth
step
#completewith krolg1
#label tkrolg1
.goto Ashenvale,53.269,74.270,35,0
.goto Ashenvale,51.443,75.004,45 >> Travel toward |cRXP_FRIENDLY_Krolg|r
.isOnQuest 1045
step
#requires tkrolg1
#completewith next
.cast 6405 >> |cRXP_WARN_Use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg|r
.use 5462
.isOnQuest 1045
step
#label krolg1
.goto Ashenvale,50.84,75.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
.use 5462 >> |cRXP_WARN_You must use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg before talking to|r |cRXP_FRIENDLY_Krolg|r
.turnin 1045 >> Turn in Raene's Cleansing
.accept 1046 >> Accept Raene's Cleansing
.target Krolg
step
#completewith next
.goto Ashenvale,36.61,49.58,30 >> Travel toward |cRXP_FRIENDLY_Raene Wolfrunner|r in Astranaar
>>|cRXP_WARN_If you Turn in Raene's Cleansing you will gain 3,050XP, but you will permanently lose|r |T135463:0|t[Dartol's Rod of Transformation]
>>|cRXP_WARN_If you wish to keep it for RP purposes, abandon Raene's Cleansing, and|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_will remain in your bags|r
.isOnQuest 1046
step
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1046 >> Turn in Raene's Cleansing
.target Raene Wolfrunner
.isOnQuest 1046
step
.goto Ashenvale,21.73,53.34
.target Illiyana
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
.turnin 1032 >> Turn in Satyr Slaying!
step
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 1140 >> Turn in The Tower of Althalaxx
step
#label end
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Teldrassil>> Fly to Teldrassil
.target Daelyshia
step
#completewith darnassus
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step << Mage
.goto Darnassus,40.599,82.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elissa Dumas|r
.trainer >> Train Teleport: Darnassus
.target Elissa Dumas
.xp <30,1
step << Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
.xp <30,1
step << skip
.goto Darnassus,39.72,92.68,10,0
.goto Darnassus,42.97,83.90,15,0
.goto Darnassus,39.10,81.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
.turnin 1081 >> Turn in Reception from Tyrande
.target Tyrande Whisperwind
.isQuestTurnedIn 1073
step << Warrior
.goto Darnassus,58.72,34.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.trainer >> Train your class spells
.target Arias'ta Bladesinger
.xp <30,1
step
#label darnassus
.goto Darnassus,61.777,39.180
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyn'tel Bladeweaver|r
.turnin 1037 >> Turn in Velinde Starsong
.target Thyn'tel Bladeweaver
.accept 1038 >> Accept Velinde's Effects
step
.goto Darnassus,56.05,79.21,10,0
.goto Darnassus,62.287,83.289
>>Run up into the Sentinel's Bunkhouse and across the over-head bridge
>>Open |cRXP_PICK_Velinde's Locker|r. Loot it for |cRXP_LOOT_Velinde's Journal|r
.complete 1038,1 
step
#xprate <1.2
.goto Darnassus,61.777,39.180
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyn'tel Bladeweaver|r
.turnin 1038 >> Turn in Velinde's Effects
.target Thyn'tel Bladeweaver
.accept 1039 >> Accept The Barrens Port
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garryeth|r, |cRXP_FRIENDLY_Lairn|r or |cRXP_FRIENDLY_Idriana|r
.bankdeposit 2784 >> Deposit the following items into your bank:
>>|T134187:0|t[Musquash Root] 
.target Garryeth
.target Lairn
.target Idriana
step << Druid
.goto Darnassus,34.768,7.374
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denatharion|r
.trainer >> Train your class spells
.target Denatharion
.xp <30,1
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.trainer >> Train your class spells
.xp <30,1
.target Syurna
step << !Mage
.hs >> Hearth to Menethil Harbor
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
]]);
