RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 50-60
#classic
#tbc
#mop
<< Horde
#name 53-54 Felwood
#displayname 54-54 Felwood << sod
#next 54-55 Un'Goro Crater
step
#optional
#completewith EnterFW1
.abandon 3504 
step
#completewith EnterFW1
.zone Felwood >>Travel to Felwood
step
.goto Felwood,51.00,85.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
.accept 8460 >>Accept Timbermaw Ally
.target Grazle
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta|r
.accept 5155 >>Accept Forces of Jaedenar
.target Greta Mosshoof
step
.goto Felwood,50.90,81.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn|r
.accept 5156 >>Accept Verifying the Corruption
.target Taronn Redfeather
step
#label EnterFW1
.goto Felwood,46.70,83.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess|r
.accept 4102 >>Accept Cleansing Felwood
.target Maybess Riverbreeze
step
#completewith next
.subzone 1763 >> Travel to Jaedenar
step
#loop
.goto Felwood,36.49,61.40,0
.goto Felwood,38.55,59.14,50,0
.goto Felwood,36.49,61.40,60,0
.goto Felwood,35.01,59.83,60,0
.goto Felwood,36.49,61.40,60,0
.goto Felwood,38.55,59.14,60,0
.goto Felwood,36.49,61.40,60,0
>>Kill |cRXP_ENEMY_Jaedenar Hounds|r, |cRXP_ENEMY_Guardians|r, |cRXP_ENEMY_Adepts|r and |cRXP_ENEMY_Cultists|r
>>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Jaedenar Adepts|r|cRXP_WARN_; they have blink, as well as a strong fireball and fire blast|r
.complete 5155,1 
.mob +Jaedenar Hound
.complete 5155,2 
.mob +Jaedenar Guardian
.complete 5155,3 
.mob +Jaedenar Adept
.complete 5155,4 
.mob +Jaedenar Cultist
step
#completewith next
.goto Felwood,37.37,49.83,40,0
.goto Felwood,35.45,50.10,40,0
.goto Felwood,34.57,52.12
.subzone 1997 >> Travel to Bloodvenom Post
step
.goto Felwood,34.80,52.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreka'Sur|r
.accept 6162 >>Accept A Husband's Last Battle
.target Dreka'Sur
step
.goto Felwood,34.20,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winna|r
.accept 4505 >>Accept Well of Corruption
.target Winna Hazzard
step
.goto Felwood,34.40,53.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakkar|r
.fp Felwood >>Get the Felwood Flight Path
.target Brakkar
.subzoneskip 1997,1
step
#completewith next
.goto Felwood,36.02,66.99,70,0
.goto Felwood,32.30,66.60,50 >>Travel to the green moonwell in the Ruins of Constellas
step
.goto Felwood,32.30,66.60
.use 12566 >> |cRXP_WARN_Use your|r |T134870:0|t[Hardened Flasket] |cRXP_WARN_in the moonwell|r
>>|cRXP_WARN_There are stealthed |cRXP_ENEMY_Satyrs|r with strong slowing poison in this area. Some of them patrol, so be careful|r
.complete 4505,1 
.unitscan Jadefire Shadowstalker << !Warlock
step
#completewith next
>>Kill |cRXP_ENEMY_Deadwood Warriors|r, |cRXP_ENEMY_Deadwood Pathfinders|r and |cRXP_ENEMY_Deadwood Gardeners|r
.complete 8460,1 
.mob +Deadwood Warrior
.complete 8460,2 
.mob +Deadwood Pathfinder
.complete 8460,3 
.mob +Deadwood Gardener
step
.goto Felwood,48.20,94.30
>>Kill |cRXP_ENEMY_Overlord Ror|r. Loot him for his |cRXP_LOOT_Claw|r
>>|cRXP_WARN_Clear the area to avoid complications from his AoE fear|r
.complete 6162,1 
.unitscan Overlord Ror
step
#loop
.goto Felwood,48.20,94.30,0
.goto Felwood,48.20,94.30,50,0
.goto Felwood,46.80,91.80,50,0
.goto Felwood,46.60,90.40,50,0
.goto Felwood,46.60,88.60,50,0
.goto Felwood,48.60,89.40,50,0
.goto Felwood,49.20,91.60,50,0
>>Kill |cRXP_ENEMY_Deadwood Warriors|r, |cRXP_ENEMY_Deadwood Pathfinders|r and |cRXP_ENEMY_Deadwood Gardeners|r
.complete 8460,1 
.mob +Deadwood Warrior
.complete 8460,2 
.mob +Deadwood Pathfinder
.complete 8460,3 
.mob +Deadwood Gardener
step << !Warrior !Hunter !Rogue !Druid !Shaman
#xprate <1.5
#loop
.goto Felwood,48.20,94.30,50,0
.goto Felwood,46.80,91.80,50,0
.goto Felwood,46.60,90.40,50,0
.goto Felwood,46.60,88.60,50,0
.goto Felwood,48.60,89.40,50,0
.goto Felwood,49.20,91.60,50,0
.xp 53+95000 >> Grind to level 53 130000+/167100
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,51.00,85.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
.turnin 8460 >>Turn in Timbermaw Ally
.accept 8462 >>Accept Speak to Nafien
.target Grazle
step
#softcore
#completewith RepCheck
.goto Felwood,46.68,88.03,0
.goto Felwood,48.22,93.81,0
.reputation 576,unfriendly
>>Grinding reputation with Timbermaw Hold to Unfriendly can be a wise choice as this will make the |cRXP_ENEMY_Furbolgs|r in the northern tunnel not aggressive towards you
>>|cRXP_WARN_You can also do this later up north but they are higher level|r
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
#loop
#hardcore
.goto Felwood,48.48,89.60,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.reputation 576,unfriendly
>>|cRXP_WARN_You'll need the reputation later to travel through Timbermaw Hold to the north|r
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,51.20,82.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta|r
.turnin 5155 >>Turn in Forces of Jaedenar
.accept 5157 >>Accept Collection of the Corrupt Water
.target Greta Mosshoof
step
#completewith next
.subzone 1763 >> Travel to Jaedenar
step
#label RepCheck
.goto Felwood,35.20,59.80
.use 12922 >>Use your |T132788:0|t[Empty Canteen] in the green moonwell
>>|cRXP_WARN_Be very careful of Jaedenar Adepts; they have blink, as well as a strong fireball and fire blast|r
.complete 5157,1 
.unitscan Jaedenar Adept
step << Warlock
#phase 4-6
.isOnQuest 8419
.goto Felwood,43.27,84.98,45,0
#loop
.goto Felwood,43.41,88.13,0
.goto Felwood,39.45,84.55,0
.goto Felwood,43.41,88.13,70,0
.goto Felwood,39.45,84.55,70,0
>>Kill |cRXP_ENEMY_Jadefire Satyrs|r and |cRXP_ENEMY_Jadefire Felsworns|r. Loot them for a |T132888:0|t[|cRXP_LOOT_Felcloth|r]
.collect 14256,1,8419,1 
.mob Jadefire Satyr
.mob Jadefire Felsworn
step << Warlock
#phase 4-6
.isQuestComplete 8419
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8419 >> Turn in An Imp's Request
.accept 8421 >> Accept The Wrong Stuff
.target Impsy
step << Warlock
#phase 4-6
.isQuestTurnedIn 8419
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.accept 8421 >> Accept The Wrong Stuff
.target Impsy
step << skip
#loop
.goto Felwood,41.20,45.40,0
.goto Felwood,41.20,45.40,50,0
.goto Felwood,43.40,48.20,50,0
.goto Felwood,42.60,50.20,50,0
.goto Felwood,39.60,54.00,50,0
.goto Felwood,40.80,59.80,50,0
.goto Felwood,40.80,66.00,50,0
.goto Felwood,40.20,68.60,50,0
.goto Felwood,38.80,71.60,50,0
.goto Felwood,41.60,71.60,50,0
.goto Felwood,42.00,67.80,50,0
.goto Felwood,40.80,66.00,50,0
.goto Felwood,40.80,59.80,50,0
.goto Felwood,39.60,54.00,50,0
.goto Felwood,41.20,50.60,50,0
.goto Felwood,38.60,49.60,50,0
.goto Felwood,43.40,48.20,50,0
>>Kill |cRXP_ENEMY_Cursed Oozes|r and |cRXP_ENEMY_Tainted Oozes|r. Loot them for their |cRXP_LOOT_Slime Samples|r
.collect 12230,35 
.mob Cursed Ooze
.mob Tainted Ooze
step << Warlock
#phase 4-6
#loop
.goto Felwood,41.20,45.40,0
.goto Felwood,41.20,45.40,50,0
.goto Felwood,43.40,48.20,50,0
.goto Felwood,42.60,50.20,50,0
.goto Felwood,39.60,54.00,50,0
.goto Felwood,40.80,59.80,50,0
.goto Felwood,40.80,66.00,50,0
.goto Felwood,40.20,68.60,50,0
.goto Felwood,38.80,71.60,50,0
.goto Felwood,41.60,71.60,50,0
.goto Felwood,42.00,67.80,50,0
.goto Felwood,40.80,66.00,50,0
.goto Felwood,40.80,59.80,50,0
.goto Felwood,39.60,54.00,50,0
.goto Felwood,41.20,50.60,50,0
.goto Felwood,38.60,49.60,50,0
.goto Felwood,43.40,48.20,50,0
>>Kill |cRXP_ENEMY_Cursed Oozes|r and |cRXP_ENEMY_Tainted Oozes|r. Loot them for their |cRXP_LOOT_Bloodvenom Essence|r
>>|cRXP_WARN_Only|r |cRXP_ENEMY_Tainted Oozes|r |cRXP_WARN_can drop|r |cRXP_LOOT_Bloodvenom Essence|r
.complete 8421,2 
.isOnQuest 8421
.mob Cursed Ooze
.mob Tainted Ooze
step
#optional
#completewith next
>>|cRXP_WARN_Run into a crater|r
.complete 5156,3 
step
#loop
.goto Felwood,40.60,42.40,0
.goto Felwood,40.60,42.40,50,0
.goto Felwood,42.00,37.60,50,0
.goto Felwood,45.60,38.60,50,0
.goto Felwood,44.60,42.60,50,0
>>Kill |cRXP_ENEMY_Entropic Beasts|r and |cRXP_ENEMY_Entropic Horrors|r
>>|cRXP_WARN_They share spawns, so you may have to kill extra of each type|r
.complete 5156,1 
.mob +Entropic Beast
.complete 5156,2 
.mob +Entropic Horror
.complete 5156,3 
step
.goto Felwood,41.20,42.82
>>|cRXP_WARN_Run into a crater|r
.complete 5156,3 
step << Warlock
#phase 4-6
#loop
.goto Felwood,49.60,30.00,0
.goto Felwood,49.60,30.00,60,0
.goto Felwood,46.40,24.60,60,0
.goto Felwood,49.20,19.80,60,0
.goto Felwood,53.00,20.40,60,0
.goto Felwood,52.00,24.80,60,0
>>Kill |cRXP_ENEMY_Withered Protectors|, |cRXP_ENEMY_Irontree Stompers| and |cRXP_ENEMY_Irontree Wanderers|. Loot them for their |cRXP_LOOT_Rotting Wood|r
.complete 8421,1 
.isOnQuest 8421
.mob Withered Protectors
.mob Irontree Stompers
.mob Irontree Wanderers
step << Warlock
#phase 4-6
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8421 >>Turn in The Wrong Stuff
.isQuestComplete 8421
.target Impsy
step << Warlock
#phase 4-6
#season 0
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.accept 8422 >> Accept Trolls of a Feather
.target Impsy
.isQuestTurnedIn 8421
.dungeon ST
step << Druid
#season 2
#sticky
#label Wisp
#completewith BloodAmbers
.train 439767,1
#loop
.goto Felwood,42,15,70,0
.goto Felwood,42,19,70,0
.goto Felwood,42,15,0
.goto Felwood,42,19,0
>>|cRXP_WARN_Talk to a|r |cRXP_FRIENDLY_Vengeful Wisp|r |cRXP_WARN_in northern Felwood, then follow it through Jadefire Run and kill any |cRXP_ENEMY_Satyrs|r it runs through|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Vengeful Wisp|r has multiple spawn locations. If you see another Druid already with the |cRXP_FRIENDLY_Vengeful Wisp|r, you can help them and still receive credit|r
>>Once completed, the |cRXP_FRIENDLY_Vengeful Wisp|r will drop the |cRXP_PICK_Gift of the Wisp|r on the ground. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the World Tree|r]
>>|cRXP_WARN_This rune is purely for healing. Feel free to skip this if you are not interested in getting it|r
.collect 227746,1
.unitscan Vengeful Wisp
step << Druid
#season 2
#sticky
#requires Wisp
#completewith BloodAmbers
.itemcount 227746,1
.use 227746
.train 439767 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the World Tree|r] |cRXP_WARN_to train|r |T132145:0|t[Tree of Life]
step
#completewith next
>>Kill |cRXP_ENEMY_Angerclaw Grizzlies|r and |cRXP_ENEMY_Felpaw Ravagers|r
.complete 4120,1 
.mob +Angerclaw Grizzly
.complete 4120,2 
.mob +Felpaw Ravager
step
#label BloodAmbers
#loop
.goto Felwood,59.2,20.4,0
.goto Felwood,56.6,17.4,40,0
.goto Felwood,57.8,19.2,40,0
.goto Felwood,57.6,21.8,40,0
.goto Felwood,59.2,20.4,40,0
>>Kill |cRXP_ENEMY_Warpwood Moss Flayers|r and |cRXP_ENEMY_Warpwood Shredders|r. Loot them for their |cRXP_LOOT_Blood Ambers|r
.complete 4102,1 
.mob Warpwood Moss Flayer
.mob Warpwood Shredder
step
#loop
.goto Felwood,56.00,22.20,0
.goto Felwood,56.00,22.20,60,0
.goto Felwood,53.20,28.00,60,0
.goto Felwood,56.80,26.40,60,0
.goto Felwood,56.00,22.20,60,0
.goto Felwood,58.60,15.60,60,0
.goto Felwood,64.60,20.00,60,0
.goto Felwood,58.60,15.60,60,0
.goto Felwood,56.20,8.60,60,0
.goto Felwood,50.80,12.60,60,0
.goto Felwood,53.60,15.60,60,0
>>Finish killing |cRXP_ENEMY_Angerclaw Grizzlies|r and |cRXP_ENEMY_Felpaw Ravagers|r
.complete 4120,1 
.mob +Angerclaw Grizzly
.complete 4120,2 
.mob +Felpaw Ravager
step
#completewith next
.goto Felwood,64.70,8.10,70 >>Travel to the the Timbermaw Hold Entrance
step
.goto Felwood,64.70,8.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8462 >>Turn in Speak to Nafien
.target Nafien
step
#completewith next
.goto Felwood,65.37,6.92,20,0
.goto Felwood,64.89,5.82,20,0
.goto Felwood,64.56,3.46,20,0
.goto Felwood,65.41,2.77,20,0
.goto Felwood,65.38,1.08,20,0
.goto Felwood,65.98,0.64,20,0
.goto Kalimdor,52.27,22.95,20,0
.goto Kalimdor,52.33,22.62,20,0
.goto Kalimdor,52.23,22.49,20,0
.goto Kalimdor,52.27,22.35,20,0
.goto Kalimdor,52.33,22.34,20,0
.goto Moonglade,35.74,72.37,20,0
.zone Moonglade >>Enter the tunnel, then take the north exit into Moonglade
.zoneskip Moonglade
.isOnQuest 7066
.dungeon MARA
step
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Keeper Remulos|r
.turnin 7066 >> Turn in Seed of Life
.target Keeper Remulos
.isOnQuest 7066
.dungeon MARA
step
#completewith next
.goto Felwood,65.44,2.81,20,0
.goto Felwood,66.51,2.98,20,0
.goto Felwood,67.82,4.33,20,0
.goto Felwood,67.93,5.11,20,0
.zone Winterspring >>Travel through Timbermaw Hold to Winterspring
>>|cRXP_WARN_If you are not Unfriendly with Timbermaw Hold, |cRXP_ENEMY_Furbolgs|r will attack you|r
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.accept 5082 >>Accept Threat of the Winterfall
.turnin 3908 >>Turn in It's a Secret to Everybody
.timer 36,It's a Secret to Everybody RP
.target Donova Snowden
step
#completewith next
>>Kill |cRXP_ENEMY_Winterfall Furbolgs|r until you loot an |T134865:0|t[|cRXP_LOOT_Empty Firewater Flask|r]. Use it to accept the quest
>>|cRXP_WARN_This has a low droprate and is NOT groupeshared|r
.collect 12771,1,5083 
.accept 5083 >>Accept Winterfall Firewater
.use 12771
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
#loop
.goto Winterspring,31.00,36.80,0
.goto Winterspring,31.00,36.80,50,0
.goto Winterspring,30.00,35.80,50,0
.goto Winterspring,31.00,34.80,50,0
.goto Winterspring,33.60,37.00,50,0
>>Kill |cRXP_ENEMY_Winterfall Pathfinders|r, |cRXP_ENEMY_Winterfall Den Watchers|r and |cRXP_ENEMY_Winterfall Totemics|r
>>|cRXP_WARN_Clear the southeastern camps if you run out of spawns|r
.complete 5082,1 
.mob +Winterfall Pathfinder
.complete 5082,2 
.mob +Winterfall Den Watcher
.complete 5082,3 
.mob +Winterfall Totemic
step
#loop
.goto Winterspring,39.00,42.80,0
.goto Winterspring,39.00,42.80,50,0
.goto Winterspring,41.80,44.60,50,0
.goto Winterspring,42.40,42.40,50,0
>>Kill |cRXP_ENEMY_Winterfall Furbolgs|r until you loot an |T134865:0|t[|cRXP_LOOT_Empty Firewater Flask|r]. Use it to accept the quest
>>|cRXP_WARN_This has a low droprate and is NOT groupeshared|r
.collect 12771,1,5083 
.accept 5083 >>Accept Winterfall Firewater
.use 12771
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 5082 >>Turn in Threat of the Winterfall
.turnin 5083 >>Turn in Winterfall Firewater
.accept 5084 >>Accept Falling to Corruption
.target Donova Snowden
step
#xprate <2.0
#hardcoreserver
#era/som
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_Blizzard has adjusted the quest [The Videre Elixir] so it will no longer kill you on Official Hardcore Servers|r
.accept 3909 >> Accept The Videre Elixir
.target Donova Snowden
step
#xprate <2.0
#softcoreserver
#hardcore
#era/som
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_You may safely complete this quest as part of the quest chain for [The Videre Elixir]|r
.accept 3909 >> Accept The Videre Elixir
.target Donova Snowden
step
#xprate <2.0
#softcoreserver
#softcore
#era/som
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.accept 3909 >> Accept The Videre Elixir
.target Donova Snowden
step
#softcore
#completewith FlyFelwood1
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Rogue
#season 2
.train 436609,1
.goto Winterspring,67.7,35.4
>>Open the |cRXP_PICK_Wooden Chest|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Knives|r]
>>|cRXP_WARN_While opening the |cRXP_PICK_Wooden Chest|r, choose the following options in this order:|r
>>|cRXP_WARN_Frostsaber|r
>>|cRXP_WARN_Owl|r
>>|cRXP_WARN_Bear|r
>>|cRXP_WARN_Owl|r
.collect 227921,1
step << Rogue
#season 2
.use 227921
.itemcount 227921,1
.train 436609 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Knives|r] |cRXP_WARN_to train|r |T236273:0|t[Fan of Knives]
step
#hardcore
#completewith FlyFelwood1
.subzone 2255 >> Travel to Everlook
step
.goto Winterspring,61.60,38.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok|r
.turnin 4808 >>Turn in Felnok Steelspring
.target Felnok Steelspring
.isOnQuest 4808
step
.goto Winterspring,61.45,36.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy Coppergrab|r
.bankdeposit 10691,10692,10693,10694 >>Put the following on the bank:
>>|T134815:0|t[Filled Vial Labeled #1]
>>|T134822:0|t[Filled Vial Labeled #2]
>>|T134836:0|t[Filled Vial Labeled #3]
>>|T134857:0|t[Filled Vial Labeled #4]
.target Izzy Coppergrab
.isOnQuest 3568
step << Hunter
#completewith next
.goto Winterspring,60.389,37.917
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azzleby|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Shardtooth Bear|r or |cRXP_ENEMY_Winterspring Owl|r shortly
.target Azzleby
step << Hunter
#loop
.goto Winterspring,53.27,37.30,0
.goto Winterspring,51.64,38.87,0
.goto Winterspring,45.47,37.40,0
.goto Winterspring,53.27,37.30,70,0
.goto Winterspring,51.64,38.87,70,0
.goto Winterspring,45.47,37.40,70,0
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Shardtooth Bear|r or |cRXP_ENEMY_Winterspring Owl|r to tame it|r 
.train 2977 >>|cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 7)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Shardtooth Bear
.mob Winterspring Owl
.zoneskip Winterspring,1
step << Hunter
.goto Winterspring,60.389,37.917
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azzleby|r
.stable >> Abandon the |cRXP_ENEMY_Shardtooth Bear|r or |cRXP_ENEMY_Winterspring Owl|r and retrieve your regular pet
.target Azzleby
.train 2977,3
.zoneskip Winterspring,1
step
#label FlyFelwood1
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r
.fp Everlook >>Get the Everlook Flight Path
.fly Felwood >>Fly to Felwood
.target Yugrek
.zoneskip Felwood
step
.goto Felwood,34.20,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winna|r
.turnin 4505 >>Turn in Well of Corruption
.target Winna Hazzard
step
#label BloodVenomPost2
.goto Felwood,34.80,52.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreka'Sur|r
.turnin 6162 >>Turn in A Husband's Last Battle
.target Dreka'Sur
step
#hardcore
.goto Felwood,46.60,83.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess|r
.turnin 4102 >>Turn in Cleansing Felwood
.target Maybess Riverbreeze
step
#hardcore
.goto Felwood,46.60,83.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess|r again to receive a |T134249:0|t[Cenarion Beacon]
>>|cRXP_WARN_Select the option:|r "I need a Cenarion beacon."
.collect 11511,1 
.target Maybess Riverbreeze
step
#softcore
#completewith next
.goto Felwood,41.30,67.10
.deathskip >>Head towards the slime pond south of Jaedenar. Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r in Southern Felwood
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta|r
.turnin 5157 >>Turn in Collection of the Corrupt Water
.accept 5158 >>Accept Seeking Spiritual Aid
.target Greta Mosshoof
step
.goto Felwood,50.90,81.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn|r
.turnin 5156 >>Turn in Verifying the Corruption
.target Taronn Redfeather
step
#softcore
.goto Felwood,46.60,83.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess|r
.turnin 4102 >>Turn in Cleansing Felwood
.target Maybess Riverbreeze
step
#softcore
.goto Felwood,46.60,83.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess|r again to receive a |T134249:0|t[Cenarion Beacon]
>>|cRXP_WARN_Select the option:|r "I need a Cenarion beacon."
.collect 11511,1 
.target Maybess Riverbreeze
step
.hs >>Hearth to Orgrimmar
.use 6948
.zoneskip Orgrimmar
.bindlocation 1637,1
.train 3567,1 << Mage
step << Mage
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
.train 3567,3
step << !Mage
.goto Orgrimmar,54.65,67.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barkeep Morag|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Barkeep Morag
.zoneskip Orgrimmar,1
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
>>|cRXP_BUY_Buy one|r |T133021:0|t[Mithril Casing] |cRXP_BUY_from the Auction House|r 
.target Auctioneer Thathung
.collect 10561,1,4244,1 
.zoneskip Orgrimmar,1
step
.goto Orgrimmar,55.52,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jes'rimon|r
>>|cRXP_WARN_He is located at the top of the building|r
.turnin 3541 >>Turn in Delivery to Jes'rimon
.accept 3563 >>Accept Jes'rimon's Payment to Jediga
.target Jes'rimon
.isOnQuest 3541
step
.goto Orgrimmar,55.52,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jes'rimon|r
>>|cRXP_WARN_He is located at the top of the building|r
.accept 3563 >>Accept Jes'rimon's Payment to Jediga
.target Jes'rimon
.isQuestTurnedIn 3541
step
.goto Orgrimmar,75.20,34.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belgrom|r
.turnin 3507 >>Turn in Betrayed
.target Belgrom Rockmaul
.isOnQuest 3507
step
.goto Orgrimmar,56.40,46.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zilzibin|r
>>|cRXP_WARN_He is located on the upper level in the Drag|r
.accept 4494 >>Accept March of the Silithid
.target Zilzibin Drumlore
step << Mage
.hs >>Hearth to Tanaris
.use 6948
.cooldown item,6948,>0
.bindlocation 976,1
.subzoneskip 976
step
#optional << Mage
#completewith next
.goto Orgrimmar,45.11,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
.fly Camp Taurajo >>Fly to Camp Taurajo
.target Doras
.zoneskip The Barrens
step
#optional << Mage
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Byula|r
.home >> Set your Hearthstone to Camp Taurajo
.target Innkeeper Byula
.bindlocation 378
.zoneskip Tanaris << Mage
]]);
