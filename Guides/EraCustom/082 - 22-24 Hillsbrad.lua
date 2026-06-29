RXPGuides.RegisterGuide([[
#version 23
#xprate <1.99
#group RestedXP Horde 22-30
#classic
#tbc
#mop
<< Horde
#name 22-24 Hillsbrad
#somname 22-24 Hillsbrad (Optional)
#next 24-26 Southern Barrens/Stonetalon
step
.maxlevel 26,Hillsbradskip1 << !Shaman !Rogue
#completewith next
.zone Durotar >> Leave Orgrimmar
.zoneskip Durotar
step
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
.zoneskip Tirisfal Glades
.zoneskip Undercity
step
.zone Tirisfal Glades >>Arrive in Tirisfal Glades
.zoneskip Tirisfal Glades
.zoneskip Undercity
step
#completewith JourneyToHillsbrad
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >> Enter Undercity
.zoneskip Undercity
.dungeon SFK << !Mage !Warlock !Priest !Rogue
step
#completewith JourneyToHillsbrad
.goto Undercity,66.09,20.06,35,0
.goto Undercity,64.37,23.94,35,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
.dungeon SFK << !Mage !Warlock !Priest !Rogue
step << Mage
.goto Undercity,84.18,15.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lexington|r
.train 3563 >> Train |T135766:0|t[Teleport: Undercity]
.target Lexington Mortaim
step << Mage
.goto Undercity,82.78,15.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Hannah|r
>>|cRXP_BUY_Buy one or more|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
.collect 17031,1,498,1 
.target Hannah Akeley
step
.goto Undercity,53.74,54.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'dugur|r
.accept 1013 >>Accept The Book of Ur
.target Keeper Bel'dugur
.dungeon SFK
step << Undead Priest
.goto Undercity,48.98,18.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
.turnin 5644 >> Turn In Devouring Plague
.target Aelthalyste
.isOnQuest 5644
step << Undead Priest
.goto Undercity,48.98,18.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
.turnin 5679 >> Turn In Devouring Plague
.target Aelthalyste
step << !Undead
#label FlytoSepulcher
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher>> Fly to The Sepulcher << Mage/Warlock/Priest/Rogue
.fp Undercity >> Get the Undercity Flight Path << !Mage !Warlock !Priest !Rogue
.target Michael Garrett
.zoneskip Silverpine Forest
.dungeon SFK << !Mage !Warlock !Priest !Rogue
step << Undead
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.accept 6324 >> Accept Return to Podrig
.target Michael Garrett
.zoneskip Silverpine Forest
.isQuestTurnedIn 6322
step << Undead
#completewith JourneyToHillsbrad
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher>> Fly to The Sepulcher
.target Michael Garrett
.zoneskip Silverpine Forest
step << !Undead !Mage !Priest !Rogue !Warlock
.goto Undercity,47.25,39.12,50,0
.goto Undercity,46.35,43.86,10,0
.goto Undercity,45.24,39.35,10,0
.goto Undercity,41.32,38.40,10,0
.goto Undercity,40.74,33.95,10,0
.goto Undercity,34.80,33.19,15,0
.goto Undercity,27.39,30.23,35,0
.goto Undercity,21.89,43.35,35,0
.goto Tirisfal Glades,51.10,71.53,50,0
.zone Tirisfal Glades >> Leave Undercity through the Sewers
.zoneskip Tirisfal Glades
step << !Undead !Mage !Priest !Rogue !Warlock
#completewith next
.zone Silverpine Forest >> Travel to Silverpine Forest
.zoneskip Silverpine Forest
step << !Undead !Mage !Priest !Rogue !Warlock
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fp Sepulcher >> Get the Sepulcher flight path
.target Karos Razok
.isQuestAvailable 498
step << Mage
#season 2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renferrel|r and |cRXP_FRIENDLY_Mura|r
.accept 493 >> Accept Journey to Hillsbrad Foothills
.accept 443 >> Accept Rot Hide Ichor
.target +Apothecary Renferrel
.goto Silverpine Forest,42.90,40.86
.turnin 3301 >> Turn in Mura Runetotem
.target +Mura Runetotem
.goto Silverpine Forest,42.91,41.99
.train 415936,1
step
#label JourneyToHillsbrad
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renferrel|r and |cRXP_FRIENDLY_Mura|r
.accept 493 >> Accept Journey to Hillsbrad Foothills
.target +Apothecary Renferrel
.goto Silverpine Forest,42.90,40.86
.turnin 3301 >> Turn in Mura Runetotem
.target +Mura Runetotem
.goto Silverpine Forest,42.90,41.99
step
.goto Silverpine Forest,44.18,42.68
>>Interact with |cRXP_PICK_Yuriv's Tombstone|r on the ground
.turnin 264 >> Turn in Until Death Do Us Part
.isOnQuest 264
step << Undead
.goto Silverpine Forest,43.43,41.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Podrig|r
.turnin 6324 >> Turn in Return to Podrig
.target Deathguard Podrig
.isOnQuest 6324
step << Druid
#completewith next
.goto Silverpine Forest,36.12,28.30,120 >> Travel north/east toward the Great Sea
step << Druid
.goto Silverpine Forest,29.58,29.30
>>Loot the |cRXP_PICK_Strange Lockbox|r in the water for the |T133442:0|t[Half Pendant of Aquatic Endurance]
.collect 15882,1,30,1 
step << Shaman
#season 2
#completewith next
.goto Silverpine Forest,57.28,45.42,10,0
.goto Silverpine Forest,57.66,44.82,10,0
.goto Silverpine Forest,58.59,44.85,30 >>Travel Toward |cRXP_ENEMY_Grimson the Pale|r
.train 410097,1
.xp <20,1
step << Shaman
#season 2
.goto Silverpine Forest,58.59,44.85
>>Kill |cRXP_ENEMY_Grimson the Pale|r inside. Loot him for the |T135832:0|t|cRXP_LOOT_[Tempest Icon]|r
.collect 206382,1 
.mob Grimson the Pale
.train 410097,1
.xp <20,1
step << Shaman
#season 2
.equip 18,206382 >> |cRXP_WARN_Equip the|r |T135832:0|t|cRXP_LOOT_[Tempest Icon]|r
.use 206382
.itemcount 206382,1 
.train 410097,1
.xp <20,1
step << Shaman
#season 2
#sticky
.aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using a Nature spell (|r|T136026:0|t[Earth Shock]|cRXP_WARN_), a Frost spell (|r|T135849:0|t[Frost Shock]|cRXP_WARN_), and a Fire spell (|r|T135813:0|t[Flame Shock]|cRXP_WARN_) on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
>>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
.itemStat 18,QUALITY,2
.train 410097,1
step << Mage
#season 2
#completewith next
.subzone 172 >>Travel to Fenris Isle
.train 415936,1
step << Mage
#season 2
#completewith DustyShelf
>>Kill |cRXP_ENEMY_Rot Hide Gnolls|r. Loot them for their |cRXP_LOOT_Ichor|r
.complete 443,1 
.train 415936,1
step << Mage
#season 2
.goto Silverpine Forest,66.0,24.7
.use 3317 >>Kill |cRXP_ENEMY_Rot Hide Gnolls|r. Loot them for |T134173:0|t[|cRXP_LOOT_A Talking Head|r]. |cRXP_WARN_Use it to accept the quest|r
.collect 3317,1 
.accept 460 >>Accept Resting in Pieces
.mob Rot Hide Brute
.mob Rot Hide Plague Weaver
.mob Rot Hide Savage
.mob Raging Rot Hide
.train 415936,1
step << Mage
#season 2
.goto Silverpine Forest,67.8,24.8
>>Interact with the |cRXP_PICK_Shallow Grave|r
.turnin 460 >>Turn in Resting in Pieces
.accept 461 >>Accept The Hidden Niche
.target Shallow Grave
.train 415936,1
step << Mage
#season 2
#label DustyShelf
.goto Silverpine Forest,65.3,24.8
>>Interact with the |cRXP_PICK_Dusty Shelf|r |cRXP_WARN_inside the castle in the top left tower (go left after the first staircase)|r
.turnin 461 >>Turn in The Hidden Niche
.accept 491 >>Accept Want to Bethor
.target Dusty Shelf
.train 415936,1
step << Mage
#season 2
.goto Silverpine Forest,66.0,24.7
>>Finish killing |cRXP_ENEMY_Rot Hide Gnolls|r. Loot them for their |cRXP_LOOT_Ichor|r
.complete 443,1 
.mob Rot Hide Brute
.mob Rot Hide Plague Weaver
.mob Rot Hide Savage
.mob Raging Rot Hide
.train 415936,1
step << Mage
#season 2
#softcore
#completewith next
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
.subzoneskip 228
.train 415936,1
step << Mage
#season 2
.goto Silverpine Forest,42.90,40.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renferrel|r
.turnin 443 >> Turn in Rot Hide Ichor
.accept 444 >> Accept Rot Hide Origins
.target Apothecary Renferrel
.train 415936,1
step << Mage
#season 2
#completewith BookofUrTurnin
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
.zoneskip Undercity
.train 415936,1
step << Mage
#season 2
.goto Undercity,83.8,16.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethor|r
.turnin 444 >>Turn in Rot Hide Origins
.turnin 491 >>Turn in Want to Bethor
.accept 446 >>Accept Thule Ravenclaw
.accept 78277 >>Accept A Token of Gratitude
.turnin 78277 >>Turn in A Token of Gratitude
.train 415936 >>|cRXP_WARN_You will automatically train the rune by turning in the quest|r
.target Bethor Iceshard
.train 415936,1
step << Mage
#season 2
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher>> Fly to The Sepulcher
.target Michael Garrett
.zoneskip Undercity,1
step << Mage
#season 2
.goto Silverpine Forest,42.90,40.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renferrel|r
.turnin 446 >> Turn in Thule Ravenclaw
.accept 448 >> Accept Report to Hadrec
.target Apothecary Renferrel
.isQuestTurnedIn 444
step << Mage
#season 2
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadrec|r
.turnin 448 >> Turn in Report to Hadrec
.target High Executor Hadrec
.isQuestTurnedIn 444
step << Rogue
#season 2
.goto Silverpine Forest,47.12,71.01
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest
>>|cRXP_WARN_You can't do this quest if you still have the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_debuff. It can be completed after Hillsbrad instead|r
.accept 78261 >> Accept The Horn of Xelthos
.train 400080,1
.aura 9991
.aura 9810
step << Rogue
#season 2
#completewith next
.goto Silverpine Forest,44.87,67.86
.subzone 209,2 >> Enter Shadowfang Keep
>>|cRXP_WARN_You have to do the next part solo! Grouping up will prevent you from obtaining the keys you need|r
>>|cRXP_WARN_You need to have trained|r |T132331:0|t[Vanish] |cRXP_WARN_to be able to do this|r
.aura 9991
.aura 9810
step << Rogue
#season 2
.gossipoption 96495,1 >>Stealth past |cRXP_ENEMY_Rethilgore|r, talk to |cRXP_FRIENDLY_Deathstalker Adamant|r and vanish aftwards. He will open the door for you
.target Deathstalker Adamant
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
#completewith next
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gemela|r for |T134243:0|t[|cRXP_LOOT_Sister's Half-Key|r]
>>|cRXP_WARN_She is located in the dining hall on the bottom floor|r
.collect 210213,1 
.mob Gemela
.aura 9991
.aura 9810
step << Rogue
#season 2
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gefell|r for |T134244:0|t[|cRXP_LOOT_Brother's Half-Key|r]
>>|cRXP_WARN_He is located above the dining hall on the second floor|r
.collect 210212,1 
.mob Gefell
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gemela|r for |T134243:0|t[|cRXP_LOOT_Sister's Half-Key|r]
>>|cRXP_WARN_She is located in the dining hall on the bottom floor|r
.collect 210213,1 
.mob Gemela
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
.use 210212 >>Return to the courtyard outside and enter the Stables. Combine the two keys for the |T237379:0|t[|cRXP_LOOT_Twin Key|r]
.collect 210209,1 
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
>>Open the |cRXP_PICK_Ornamented Chest|r in the stables for the |cRXP_LOOT_Horn of Xelthos|r
.complete 78261,1 
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest
.turnin 78261 >> Turn in The Horn of Xelthos
.aura 9991
.aura 9810
.isQuestComplete 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_You now need to enter a capital city to receive mail from *C*|r
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >> Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Enter Undercity. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_Open your mailbox to read the mail from *C* once it has arrived. Fly back to Silverpine when you're ready|r
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher>> Fly to The Sepulcher
.target Michael Garrett
.zoneskip Silverpine Forest
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.use 203994
.itemcount 203994,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Priest
#season 2
.goto Silverpine Forest,57.9,71.5
>>Kill the |cRXP_ENEMY_Wailing Spirit|r. Loot it for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion]
>>|cRXP_WARN_This NPC has a respawn time of at least 15 minutes. Skip it for now if needed|r
.collect 205905,1
.mob Wailing Spirit
.train 425215,1
step << Priest
#season 2
#completewith StrikingTime
.train 425215 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion] |cRXP_WARN_to train|r |T237566:0|t[Twisted Fate]
>>|cRXP_WARN_You must have a|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buff by typing|r /kneel |cRXP_WARN_in front of |cRXP_PICK_Loa Shrine|r (in Durotar or The Barrens) or by kneeling in front of another priest with the buff when they /pray for you|r << Troll
>>|cRXP_WARN_You must have a|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buff by typing|r /kneel |cRXP_WARN_at a graveyard or by kneeling in front of another priest with the buff when they /pray for you|r << Undead
.use 205905
.itemcount 205905,1
step
#completewith next
.zone Hillsbrad Foothills >> Travel to Hillsbrad Foothills
.zoneskip Hillsbrad Foothills
step
#label StrikingTime
.goto Hillsbrad Foothills,20.79,47.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Lesh|r
.accept 494 >> Accept Time To Strike
.target Deathstalker Lesh
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >> Travel to Tarren Mill
.subzoneskip 272
step
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarise|r
.fp Tarren Mill >> Get the Tarren Mill Flight Path
.target Zarise
.isQuestAvailable 549
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hinott|r
.turnin 2479 >>Turn in Hinott's Assistance
.accept 2480 >>Accept Hinott's Assistance
.timer 30,Hinott's Assistance RP
.target Serge Hinott
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>>Wait for |cRXP_FRIENDLY_Hinott|r to complete the cure
.complete 2480,1 
step << Rogue
.goto Hillsbrad Foothills,61.64,19.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hinott|r
.turnin 2480 >>Turn in Hinott's Assistance
.target Serge Hinott
step << Rogue
#completewith TarrenMillPickups
.cast 10723 >>|cRXP_WARN_Use|r |T134807:0|t[Hinott's Oil] |cRXP_WARN_to cure yourself of the|r |T136230:0|t[Touch of Zanzil]
.use 8095
.aura -9991
step << Rogue
#completewith TarrenMillPickups
>>|cRXP_WARN_Craft|r |T132273:0|t[Instant Poisons]
.collect 6947,20,1067,1 
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lydon|r
.turnin 1065 >> Turn in Journey to Tarren Mill
.accept 1066 >> Accept Blood of Innocents
.turnin 493 >> Turn in Journey to Hillsbrad Foothills
.accept 496 >> Accept Elixir of Suffering
.accept 501 >> Accept Elixir of Pain
.target Apothecary Lydon
.maxlevel 27
step
#optional
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lydon|r
.turnin 1065 >> Turn in Journey to Tarren Mill
.accept 1066 >> Accept Blood of Innocents
.turnin 493 >> Turn in Journey to Hillsbrad Foothills
.target Apothecary Lydon
step << Shaman
.goto Hillsbrad Foothills,62.18,20.78
.use 7768 >>|cRXP_WARN_Use the|r |T132829:0|t[Empty Red Waterskin] |cRXP_WARN_at the well in the middle of Tarren Mill|r
.complete 1536,1 
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
.turnin 494 >> Turn in Time To Strike
.accept 527 >> Accept Battle of Hillsbrad
.target High Executor Darthalia
.maxlevel 27
step
#optional
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
.turnin 494 >> Turn in Time To Strike
.target High Executor Darthalia
step
.goto Hillsbrad Foothills,62.64,20.76
>>Click the |cRXP_FRIENDLY_Wanted Poster|r
.accept 549 >> Accept WANTED: Syndicate Personnel
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krusk|r
.accept 498 >> Accept The Rescue
.target Krusk
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
.collect 2515,1800,549,1 << Hunter 
.target Kayren Soothallow
.xp >25,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,1800,549,1 << Hunter 
.target Kayren Soothallow
.xp <25,1
step
#label TarrenMillPickups
.goto Hillsbrad Foothills,62.56,19.65
>>Click the |cRXP_FRIENDLY_Wanted Poster|r
.accept 567 >> Accept Dangerous!
.maxlevel 27
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shay|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Shay
.isQuestAvailable 549
.subzoneskip 272,1
step << Shaman/Warrior
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
.vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Ott
.subzoneskip 272,1
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
.vendor >> |cRXP_BUY_Buy a|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up and you don't have it yet|r
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
.subzoneskip 272,1
step << Hunter
#completewith next
.goto Hillsbrad Foothills,62.31,19.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Theodore|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Gray Bear|r and a |cRXP_ENEMY_Forest Most Creeper|r shortly
.target Theodore Mont Claire
step << Hunter
#loop
.goto Hillsbrad Foothills,57.93,27.85,0
.goto Hillsbrad Foothills,57.93,27.85,60,0
.goto Hillsbrad Foothills,58.88,32.28,60,0
.goto Hillsbrad Foothills,61.77,36.16,60,0
.train 16829 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Gray Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 3)]
.train 17263 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Forest Most Creeper|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 3)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Gray Bear
.mob Forest Most Creeper
step << Hunter
.goto Hillsbrad Foothills,62.31,19.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Theodore|r
.stable >> Abandon the |cRXP_ENEMY_Gray Bear|r or |cRXP_ENEMY_Forest Most Creeper|r and retrieve your regular pet
.target Theodore Mont Claire
step << Rogue
#completewith Durnholde1
.cast 8679 >> |cRXP_WARN_Use the|r |T132273:0|t[Instant Poison] |cRXP_WARN_on your weapons|r
.itemcount 6947,2
step
#completewith next
>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Spiders|r en route. Loot them for their |cRXP_LOOT_Tongues|r and |cRXP_LOOT_Ichor|r
>>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Elder Gray Bears|r |cRXP_WARN_and|r |cRXP_ENEMY_Giant Moss Creepers|r |cRXP_WARN_as they're high level and not worth killing|r
.complete 496,1 
.mob +Gray Bear
.mob +Vicious Gray Bear
.complete 496,2 
.mob +Forest Moss Creeper
.isOnQuest 496
step
#label Durnholde1
.goto Hillsbrad Foothills,76.57,46.48,120 >> Run to Durnholde Keep
.isOnQuest 549,1066,498
step
#completewith Drull
>>Kill |cRXP_ENEMY_Syndicate Rogues|r, |cRXP_ENEMY_Watchmen|r, and |cRXP_ENEMY_Shadow Mages|r.
>>Loot the |cRXP_ENEMY_Shadow Mages|r for their |cRXP_LOOT_Vials of Innocent Blood|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
.complete 1066,1 
.mob +Syndicate Shadow Mage
step
#completewith Togthar
.goto Hillsbrad Foothills,79.55,41.85,15,0
>>Kill |cRXP_ENEMY_Jailor Eston|r. Loot him for his |cRXP_LOOT_Iron Key|r
>>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r's Barracks, or in front of|r |cRXP_FRIENDLY_Drull|r
.collect 3467,1,498,1 
.mob Jailor Eston
step
#loop
.goto Hillsbrad Foothills,79.45,40.57,0
.goto Hillsbrad Foothills,77.99,40.19,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
>>Kill |cRXP_ENEMY_Jailor Marlgen|r. Loot him for his |cRXP_LOOT_Gold Key|r
>>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r or at the bottom of the tower|r
.collect 3499,1,498,2 
.mob Jailor Marlgen
step
#label Togthar
.goto Hillsbrad Foothills,79.79,39.65
>>Click the |cRXP_PICK_Ball and Chain|r on the ground
.complete 498,2 
step << Rogue
#season 2
.goto Hillsbrad Foothills,80.2,39.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris Legace|r
>>|cRXP_BUY_Buy|r |T133469:0|t[Hot Tip] |cRXP_BUY_from her|r
.collect 210330,1 
.target Kris Legace
.train 400102,1
step << Rogue/Hunter/Shaman
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>|cRXP_BUY_Buy|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r] |cRXP_BUY_and|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] |cRXP_BUY_from her if they're up|r
.vendor >> Vendor and Repair
.target Kris Legace
.money <1.1374
.itemcount 4831,<1
.itemcount 4794,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
.isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>|cRXP_BUY_Buy|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r] |cRXP_BUY_from her if they're up|r
.vendor >> Vendor and Repair
.target Kris Legace
.money <0.7859
.itemcount 4831,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>|cRXP_BUY_Buy|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] |cRXP_BUY_from her if they're up|r
.vendor >> Vendor and Repair
.target Kris Legace
.money <0.3515
.itemcount 4794,<1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
.isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
#optional
#completewith Drull
+|cRXP_WARN_Equip the|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r] |cRXP_WARN_and|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
.use 4831
.use 4794
.itemcount 4831,1
.itemcount 4794,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
.isOnQuest 498
.equip 9,4794
.equip 7,1831
step << Rogue/Hunter/Shaman/Druid
#optional
#completewith Drull
+|cRXP_WARN_Equip the|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r]
.use 4831
.itemcount 4831,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.isOnQuest 498
.equip 9,4794
step << Rogue/Hunter/Shaman/Druid
#optional
#completewith Drull
+|cRXP_WARN_Equip the|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
.use 4794
.itemcount 4794,1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
.isOnQuest 498
.equip 9,4794
step << !Rogue !Hunter !Shaman !Druid
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
.vendor >> Vendor and Repair
.target Kris Legace
.isOnQuest 498
.subzoneskip 275,1
step
#loop
.goto Hillsbrad Foothills,79.55,41.85,0
.goto Hillsbrad Foothills,75.31,41.63,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
>>Kill |cRXP_ENEMY_Jailor Eston|r. Loot him for his |cRXP_LOOT_Iron Key|r
>>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r's Barracks, or in front of|r |cRXP_FRIENDLY_Drull|r
.collect 3467,1,498,1 
.mob Jailor Eston
step
#label Drull
.goto Hillsbrad Foothills,75.33,41.50
>>Click the |cRXP_PICK_Ball and Chain|r on the ground
.complete 498,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Syndicate Watchmen|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
step
#loop
.goto Hillsbrad Foothills,67.22,45.85,0
.goto Hillsbrad Foothills,67.88,47.93,40,0
.goto Hillsbrad Foothills,67.06,50.84,40,0
.goto Hillsbrad Foothills,66.24,48.79,40,0
.goto Hillsbrad Foothills,65.36,48.65,40,0
.goto Hillsbrad Foothills,64.86,47.05,40,0
.goto Hillsbrad Foothills,65.37,46.46,40,0
.goto Hillsbrad Foothills,66.13,45.63,40,0
.goto Hillsbrad Foothills,67.22,45.85,40,0
>>Kill |cRXP_ENEMY_Syndicate Shadow Mages|r. Loot them for their |cRXP_LOOT_Vials|r
>>|cRXP_WARN_More of them can be found at the tower just southwest of the keep|r
.complete 1066,1 
.mob Syndicate Shadow Mage
step
#loop
.goto Hillsbrad Foothills,67.22,45.85,0
.goto Hillsbrad Foothills,67.88,47.93,40,0
.goto Hillsbrad Foothills,67.06,50.84,40,0
.goto Hillsbrad Foothills,66.24,48.79,40,0
.goto Hillsbrad Foothills,65.36,48.65,40,0
.goto Hillsbrad Foothills,64.86,47.05,40,0
.goto Hillsbrad Foothills,65.37,46.46,40,0
.goto Hillsbrad Foothills,66.13,45.63,40,0
.goto Hillsbrad Foothills,67.22,45.85,40,0
>>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Syndicate Watchmen|r
>>|cRXP_WARN_More of them can be found at the tower just southwest of the keep|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
step
#completewith next
>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Spiders |r en route back to Tarren Mill. Loot them for their |cRXP_LOOT_Tongues|r and |cRXP_LOOT_Ichor|r
>>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Elder Gray Bears|r |cRXP_WARN_and|r |cRXP_ENEMY_Giant Moss Creepers|r |cRXP_WARN_as they're high level and not worth killing|r
.complete 496,1 
.mob +Gray Bear
.mob +Vicious Gray Bear
.complete 496,2 
.mob +Forest Moss Creeper
.isOnQuest 496
step
#completewith next
.subzone 272 >> Return to Tarren Mill
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krusk|r and |cRXP_FRIENDLY_Darthalia|r
.turnin 498 >> Turn in The Rescue
.target +Krusk
.goto Hillsbrad Foothills,63.24,20.65
.turnin 549 >> Turn in WANTED: Syndicate Personnel
.target +High Executor Darthalia
.goto Hillsbrad Foothills,62.37,20.32
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
.collect 2515,1800,501,1 << Hunter 
.target Kayren Soothallow
.xp >25,1
.itemcount 2515,<1000
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,1800,501,1 << Hunter 
.target Kayren Soothallow
.xp <25,1
.itemcount 3030,<1000
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shay|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Shay
.isOnQuest 527
.subzoneskip 272,1
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r and |cRXP_FRIENDLY_Umpi|r
.turnin 1066 >> Turn in Blood of Innocents
.turnin 496 >> Turn in Elixir of Suffering
.accept 499 >> Accept Elixir of Suffering
.target +Apothecary Lydon
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >> Turn in Elixir of Suffering
.target +Umpi
.goto Hillsbrad Foothills,61.53,19.17
.isQuestComplete 496
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r and |cRXP_FRIENDLY_Umpi|r
.turnin 1066 >> Turn in Blood of Innocents
.accept 499 >> Accept Elixir of Suffering
.target +Apothecary Lydon
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >> Turn in Elixir of Suffering
.target +Umpi
.goto Hillsbrad Foothills,61.53,19.17
.isQuestTurnedIn 496
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 1066 >> Turn in Blood of Innocents
.goto Hillsbrad Foothills,61.44,19.05
.target Apothecary Lydon
step << Rogue
#season 2
.use 210330 >>|cRXP_WARN_Open the|r |T133469:0|t[Hot Tip]
.collect 210323,1 
.collect 210329,1 
.train 400102,1
step << Rogue
#season 2
#completewith next
.zone Western Plaguelands >>Travel to Western Plaguelands
step << Rogue
#season 2
.goto Western Plaguelands,59.4,84.5
>>Open the |cRXP_PICK_Rusty Safe|r in the water for |T134419:0|t[|cRXP_FRIENDLY_Rune of Venom|r]
.collect 210322,1 
.train 400102,1
step << Rogue
#season 2
.train 400102 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Venom|r]
.use 210322
.itemcount 210322,1
step
#optional
#completewith FarmerRay
.destroy 3499 >>|cRXP_WARN_Delete the|r |T134238:0|t[Burnished Gold Key] |cRXP_WARN_from your bags, as it's no longer needed|r
step
#optional
#completewith FarmerRay
.destroy 3467 >>|cRXP_WARN_Delete the|r |T134237:0|t[Dull Iron Key] |cRXP_WARN_from your bags, as it's no longer needed|r
step
#completewith Fields1
>>Kill |cRXP_ENEMY_Gray Bears|r and |cRXP_ENEMY_Starving Mountain Lions|r. Loot them for their |cRXP_LOOT_Gray Bear Tongues|r and |cRXP_LOOT_Mountain Lion Blood|r
.complete 496,1 
.mob +Gray Bear
.mob +Vicious Gray Bear
.complete 501,1 
.mob +Starving Mountain Lion
.isOnQuest 496
step
#completewith Fields1
>>Kill |cRXP_ENEMY_Starving Mountain Lions|r. Loot them for their |cRXP_LOOT_Mountain Lion Blood|r
.complete 501,1 
.mob Starving Mountain Lion
.isQuestTurnedIn 496
step
#label Fields1
.goto Hillsbrad Foothills,36.02,39.19
.subzone 286 >> Travel to the Hillsbrad Fields
.isOnQuest 527
step
#completewith FarmerRay
>>Kill |cRXP_ENEMY_Hillsbrad Farmers|r and |cRXP_ENEMY_Hillsbrad Farmhands|r in and around the fields
>>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Hillsbrad Farmers|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_you|r << Rogue/Warrior/Shaman
.complete 527,1 
.mob +Hillsbrad Farmer
.complete 527,2 
.mob +Hillsbrad Farmhand
.isOnQuest 527
step
#loop
.goto Hillsbrad Foothills,36.7,39.4,0
.goto Hillsbrad Foothills,35.2,37.6,0
.goto Hillsbrad Foothills,35.1,41.0,0
.goto Hillsbrad Foothills,36.7,39.4,30,0
.goto Hillsbrad Foothills,35.2,37.6,30,0
.goto Hillsbrad Foothills,35.1,41.0,30,0
>>Kill |cRXP_ENEMY_Farmer Getz|r
>>|cRXP_WARN_He has three different spawn locations. In the house, barn, or field|r
.complete 527,4 
.unitscan Farmer Getz
.isOnQuest 527
step
#label FarmerRay
#loop
.goto Hillsbrad Foothills,33.28,34.65,0
.goto Hillsbrad Foothills,33.65,35.44,30,0
.goto Hillsbrad Foothills,32.90,35.23,10,0
.goto Hillsbrad Foothills,33.23,34.65,10,0
.goto Hillsbrad Foothills,32.69,34.77,8,0
.goto Hillsbrad Foothills,32.88,34.99,8,0
.goto Hillsbrad Foothills,33.28,34.65,8,0
>>Kill |cRXP_ENEMY_Farmer Ray|r
>>|cRXP_WARN_He can spawn outside under the grapevine or in the 1st or 2nd floor of the house|r
.complete 527,3 
.unitscan Farmer Ray
.isOnQuest 527
step
#loop
.goto Hillsbrad Foothills,31.30,37.08,0
.goto Hillsbrad Foothills,31.30,37.08,40,0
.goto Hillsbrad Foothills,33.81,40.91,40,0
.goto Hillsbrad Foothills,35.49,40.36,40,0
>>Kill |cRXP_ENEMY_Hillsbrad Farmers|r and |cRXP_ENEMY_Hillsbrad Farmhands|r in and around the fields
>>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Hillsbrad Farmers|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_you|r << Rogue/Warrior/Shaman
.complete 527,1 
.mob +Hillsbrad Farmer
.complete 527,2 
.mob +Hillsbrad Farmhand
.isOnQuest 527
step
#optional
#completewith TarrenMillTurnins2
>>Kill |cRXP_ENEMY_Gray Bears|r and |cRXP_ENEMY_Starving Mountain Lions|r. Loot them for their |cRXP_LOOT_Gray Bear Tongues|r and |cRXP_LOOT_Mountain Lion Blood|r
.complete 496,1 
.mob +Gray Bear
.mob +Vicious Gray Bear
.complete 501,1 
.mob +Starving Mountain Lion
.isOnQuest 496
step
#optional
#completewith TarrenMillTurnins2
>>Kill |cRXP_ENEMY_Starving Mountain Lions|r. Loot them for their |cRXP_LOOT_Mountain Lion Blood|r
.complete 501,1 
.mob Starving Mountain Lion
.isQuestTurnedIn 496
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r and |cRXP_FRIENDLY_Samsa|r
.turnin 496 >> Turn in Elixir of Suffering
.accept 499 >> Accept Elixir of Suffering
.turnin 501 >> Turn in Elixir of Pain
.accept 502 >> Accept Elixir of Pain
.target +Apothecary Lydon
.goto Hillsbrad Foothills,61.44,19.05
.turnin 527 >> Turn in Battle of Hillsbrad
.accept 528 >> Accept Battle of Hillsbrad
.target +High Executor Darthalia
.goto Hillsbrad Foothills,62.37,20.32
.accept 546 >> Accept Souvenirs of Death
.target +Deathguard Samsa
.goto Hillsbrad Foothills,62.11,19.68
.isQuestComplete 496
.isQuestComplete 501
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r and |cRXP_FRIENDLY_Samsa|r
.turnin 496 >> Turn in Elixir of Suffering
.accept 499 >> Accept Elixir of Suffering
.target +Apothecary Lydon
.goto Hillsbrad Foothills,61.44,19.05
.turnin 527 >> Turn in Battle of Hillsbrad
.accept 528 >> Accept Battle of Hillsbrad
.target +High Executor Darthalia
.goto Hillsbrad Foothills,62.37,20.32
.accept 546 >> Accept Souvenirs of Death
.target +Deathguard Samsa
.goto Hillsbrad Foothills,62.11,19.68
.isQuestComplete 496
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r and |cRXP_FRIENDLY_Samsa|r
.turnin 501 >> Turn in Elixir of Pain
.accept 502 >> Accept Elixir of Pain
.target +Apothecary Lydon
.goto Hillsbrad Foothills,61.44,19.05
.turnin 527 >> Turn in Battle of Hillsbrad
.accept 528 >> Accept Battle of Hillsbrad
.target +High Executor Darthalia
.goto Hillsbrad Foothills,62.37,20.32
.accept 546 >> Accept Souvenirs of Death
.target +Deathguard Samsa
.goto Hillsbrad Foothills,62.11,19.68
.isQuestComplete 501
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 499 >> Accept Elixir of Suffering
.isQuestTurnedIn 496
.target Apothecary Lydon
step
.goto Hillsbrad Foothills,61.55,19.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umpi|r
.turnin 499 >> Turn in Elixir of Suffering
.target Umpi
.isQuestTurnedIn 496
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r and |cRXP_FRIENDLY_Samsa|r
.turnin 527 >> Turn in Battle of Hillsbrad
.accept 528 >> Accept Battle of Hillsbrad
.target +High Executor Darthalia
.goto Hillsbrad Foothills,62.37,20.32
.accept 546 >> Accept Souvenirs of Death
.target +Deathguard Samsa
.goto Hillsbrad Foothills,62.11,19.68
.isQuestComplete 527
step
#optional
#label TarrenMillTurnins2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r and |cRXP_FRIENDLY_Samsa|r
.accept 528 >> Accept Battle of Hillsbrad
.target +High Executor Darthalia
.goto Hillsbrad Foothills,62.37,20.32
.accept 546 >> Accept Souvenirs of Death
.target +Deathguard Samsa
.goto Hillsbrad Foothills,62.11,19.68
.isQuestTurnedIn 527
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shay|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Shay
.isOnQuest 528
.subzoneskip 272,1
step
#optional
#completewith Fields2
>>Kill |cRXP_ENEMY_Gray Bears|r and |cRXP_ENEMY_Starving Mountain Lions|r. Loot them for their |cRXP_LOOT_Gray Bear Tongues|r and |cRXP_LOOT_Mountain Lion Blood|r
.complete 496,1 
.mob +Gray Bear
.mob +Vicious Gray Bear
.complete 501,1 
.mob +Starving Mountain Lion
.isOnQuest 496
.isOnQuest 501
step
#optional
#completewith Fields2
>>Kill |cRXP_ENEMY_Gray Bears|r. Loot them for their |cRXP_LOOT_Gray Bear Tongues|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
.isQuestTurnedIn 501
.isOnQuest 496
step
#optional
#completewith Fields2
>>Kill |cRXP_ENEMY_Starving Mountain Lions|r. Loot them for their |cRXP_LOOT_Mountain Lion Blood|r
.complete 501,1 
.mob Starving Mountain Lion
.isQuestTurnedIn 496
.isOnQuest 501
step
#label Fields2
.goto Hillsbrad Foothills,36.02,39.19
.subzone 286 >> Travel to the Hillsbrad Fields
.isOnQuest 528
step
#completewith HillsbradPeasants
>>Kill |cRXP_ENEMY_Hillsbrad Humans|r. Loot them for their |cRXP_LOOT_Skulls|r.
>>|cRXP_WARN_This quest does not need to be completed now|r
.complete 546,1 
.isOnQuest 546
step
#completewith next
.goto Hillsbrad Foothills,32.67,35.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stanley|r
>>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_Enraged Stanley|r
>>|cRXP_ENEMY_Enraged Stanley|r |cRXP_WARN_gives a full quest's worth of experience|r
.turnin 502 >> Turn in Elixir of Pain
.timer 9,Stanley RP (BE ALERT)
.mob Stanley
.isQuestTurnedIn 501
step
.line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
#loop
.goto Hillsbrad Foothills,36.54,39.44,0
.goto Hillsbrad Foothills,36.54,39.44,40,0
.goto Hillsbrad Foothills,35.36,38.73,40,0
.goto Hillsbrad Foothills,33.98,38.78,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.58,38.17,40,0
.goto Hillsbrad Foothills,32.66,36.08,40,0
.goto Hillsbrad Foothills,32.92,35.25,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.65,41.12,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,30.53,40.56,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.41,43.85,40,0
.goto Hillsbrad Foothills,32.46,44.59,40,0
.goto Hillsbrad Foothills,32.29,45.13,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
>>Kill |cRXP_ENEMY_Citizen Wilkes|r
>>|cRXP_WARN_He patrols around the roads of the town|r
.complete 567,2 
.unitscan Citizen Wilkes
.unitscan Enraged Stanley
.isOnQuest 567
step
.goto Hillsbrad Foothills,32.67,35.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stanley|r
>>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_Enraged Stanley|r
>>|cRXP_ENEMY_Enraged Stanley|r |cRXP_WARN_gives a full quest's worth of experience|r
.turnin 502 >> Turn in Elixir of Pain
.timer 9,Stanley RP (BE ALERT)
.mob Stanley
.isQuestTurnedIn 501
step
#completewith next
>>Kill |cRXP_ENEMY_Hillsbrad Peasants|r
.complete 528,1 
.mob Hillsbrad Peasant
.isQuestTurnedIn 527
step
#label Kalaba
.goto Hillsbrad Foothills,36.00,46.50
>>Kill |cRXP_ENEMY_Farmer Kalaba|r
.complete 567,4 
.mob Farmer Kalaba
.isOnQuest 567
step
#label HillsbradPeasants
#loop
.goto Hillsbrad Foothills,36.64,45.21,0
.goto Hillsbrad Foothills,36.64,45.21,25,0
.goto Hillsbrad Foothills,36.03,44.40,25,0
.goto Hillsbrad Foothills,34.36,44.62,25,0
.goto Hillsbrad Foothills,33.82,45.75,25,0
.goto Hillsbrad Foothills,33.25,48.54,25,0
.goto Hillsbrad Foothills,34.59,48.13,25,0
.goto Hillsbrad Foothills,35.29,47.28,25,0
.goto Hillsbrad Foothills,36.49,47.49,25,0
>>Kill |cRXP_ENEMY_Hillsbrad Peasants|r
.complete 528,1 
.mob Hillsbrad Peasant
.isQuestTurnedIn 527
step
#optional
#completewith next
>>Finish killing |cRXP_ENEMY_Mountain Lions|r. Loot them for their |cRXP_LOOT_Blood|r
.complete 501,1 
.mob Starving Mountain Lion
.isOnQuest 501
step
#loop
.goto Hillsbrad Foothills,66.52,34.52,0
.goto Hillsbrad Foothills,40.88,33.87,60,0
.goto Hillsbrad Foothills,40.86,37.40,60,0
.goto Hillsbrad Foothills,40.85,39.42,60,0
.goto Hillsbrad Foothills,38.50,38.04,60,0
.goto Hillsbrad Foothills,37.68,41.23,60,0
.goto Hillsbrad Foothills,38.71,42.66,60,0
.goto Hillsbrad Foothills,40.40,44.65,60,0
.goto Hillsbrad Foothills,44.39,41.34,60,0
.goto Hillsbrad Foothills,45.23,39.62,60,0
.goto Hillsbrad Foothills,43.87,37.01,60,0
.goto Hillsbrad Foothills,49.75,34.33,60,0
.goto Hillsbrad Foothills,52.06,36.86,60,0
.goto Hillsbrad Foothills,51.91,32.97,60,0
.goto Hillsbrad Foothills,52.39,29.27,60,0
.goto Hillsbrad Foothills,57.38,22.85,60,0
.goto Hillsbrad Foothills,57.09,25.67,60,0
.goto Hillsbrad Foothills,58.08,28.07,60,0
.goto Hillsbrad Foothills,56.88,28.85,60,0
.goto Hillsbrad Foothills,59.68,30.90,60,0
.goto Hillsbrad Foothills,57.71,34.06,60,0
.goto Hillsbrad Foothills,59.89,36.74,60,0
.goto Hillsbrad Foothills,62.63,37.64,60,0
.goto Hillsbrad Foothills,64.73,38.03,60,0
.goto Hillsbrad Foothills,66.52,34.52,60,0
>>Finish killing |cRXP_ENEMY_Bears|r. Loot them for their |cRXP_LOOT_Tongues|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
.isOnQuest 496
step
#loop
.goto Hillsbrad Foothills,43.87,37.01,0
.goto Hillsbrad Foothills,40.88,33.87,60,0
.goto Hillsbrad Foothills,40.86,37.40,60,0
.goto Hillsbrad Foothills,40.85,39.42,60,0
.goto Hillsbrad Foothills,38.50,38.04,60,0
.goto Hillsbrad Foothills,37.68,41.23,60,0
.goto Hillsbrad Foothills,38.71,42.66,60,0
.goto Hillsbrad Foothills,40.40,44.65,60,0
.goto Hillsbrad Foothills,44.39,41.34,60,0
.goto Hillsbrad Foothills,45.23,39.62,60,0
.goto Hillsbrad Foothills,43.87,37.01,60,0
.goto Hillsbrad Foothills,49.75,34.33,60,0
.goto Hillsbrad Foothills,52.06,36.86,60,0
.goto Hillsbrad Foothills,51.91,32.97,60,0
.goto Hillsbrad Foothills,52.39,29.27,60,0
.goto Hillsbrad Foothills,57.38,22.85,60,0
.goto Hillsbrad Foothills,57.09,25.67,60,0
.goto Hillsbrad Foothills,58.08,28.07,60,0
.goto Hillsbrad Foothills,56.88,28.85,60,0
.goto Hillsbrad Foothills,59.68,30.90,60,0
.goto Hillsbrad Foothills,57.71,34.06,60,0
.goto Hillsbrad Foothills,59.89,36.74,60,0
.goto Hillsbrad Foothills,62.63,37.64,60,0
.goto Hillsbrad Foothills,64.73,38.03,60,0
.goto Hillsbrad Foothills,66.52,34.52,60,0
>>Finish killing |cRXP_ENEMY_Mountain Lions|r. Loot them for their |cRXP_LOOT_Blood|r
.complete 501,1 
.mob Starving Mountain Lion
.isOnQuest 501
step
#loop
.goto Hillsbrad Foothills,62.85,38.74,0
.goto Hillsbrad Foothills,62.85,38.74,60,0
.goto Hillsbrad Foothills,62.24,39.96,60,0
.goto Hillsbrad Foothills,60.92,37.92,60,0
.goto Hillsbrad Foothills,59.62,33.33,60,0
.goto Hillsbrad Foothills,56.88,29.73,60,0
.goto Hillsbrad Foothills,59.80,27.72,60,0
.goto Hillsbrad Foothills,57.63,24.16,60,0
.goto Hillsbrad Foothills,56.47,16.42,60,0
.goto Hillsbrad Foothills,59.36,14.55,60,0
.goto Hillsbrad Foothills,60.54,13.67,60,0
.goto Hillsbrad Foothills,62.65,12.90,60,0
.goto Hillsbrad Foothills,64.43,10.22,60,0
.goto Hillsbrad Foothills,65.18,6.93,60,0
.goto Hillsbrad Foothills,65.31,5.76,60,0
.goto Hillsbrad Foothills,66.90,9.02,60,0
.goto Hillsbrad Foothills,70.39,8.89,60,0
.goto Hillsbrad Foothills,68.86,10.18,60,0
.goto Hillsbrad Foothills,67.35,12.95,60,0
.goto Hillsbrad Foothills,71.38,19.81,60,0
.goto Hillsbrad Foothills,71.78,21.89,60,0
.goto Hillsbrad Foothills,64.85,24.92,60,0
.goto Hillsbrad Foothills,66.68,28.15,60,0
.goto Hillsbrad Foothills,69.76,31.89,60,0
.goto Hillsbrad Foothills,67.62,37.65,60,0
>>Finish killing |cRXP_ENEMY_Forest Moss Creepers|r and |cRXP_ENEMY_Giant Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r
.complete 496,2 
.mob Forest Moss Creeper
.mob Giant Moss Creeper
.isOnQuest 496
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 496 >> Turn in Elixir of Suffering
.accept 499 >> Accept Elixir of Suffering
.turnin 501 >> Turn in Elixir of Pain
.accept 502 >> Accept Elixir of Pain
.isQuestComplete 496
.isQuestComplete 501
.target Apothecary Lydon
step
#optional
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 496 >> Turn in Elixir of Suffering
.accept 499 >> Accept Elixir of Suffering
.isQuestComplete 496
.target Apothecary Lydon
step
#optional
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 501 >> Turn in Elixir of Pain
.accept 502 >> Accept Elixir of Pain
.isQuestComplete 501
.target Apothecary Lydon
step
#optional
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 499 >> Accept Elixir of Suffering
.target Apothecary Lydon
.isQuestTurnedIn 496
step
#optional
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 502 >> Accept Elixir of Pain
.target Apothecary Lydon
.isQuestTurnedIn 501
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 1067 >> Accept Return to Thunder Bluff
.target Apothecary Lydon
.isQuestTurnedIn 1066
step
.goto Hillsbrad Foothills,61.53,19.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umpi|r
.turnin 499 >> Turn in Elixir of Suffering
.isQuestTurnedIn 496
.target Umpi
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 528 >> Turn in Battle of Hillsbrad
.accept 529 >> Accept Battle of Hillsbrad
.isQuestComplete 528
.target High Executor Darthalia
step
#optional
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.accept 529 >> Accept Battle of Hillsbrad
.isQuestTurnedIn 528
.target High Executor Darthalia
step << skip
#label Hillsbradturnins3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Umpi|r, and |cRXP_FRIENDLY_Darthalia|r
.turnin 496 >> Turn in Elixir of Suffering
.accept 499 >> Accept Elixir of Suffering
.turnin 501 >> Turn in Elixir of Pain
.accept 502 >> Accept Elixir of Pain
.accept 1067 >> Accept Return to Thunder Bluff
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >> Turn in Elixir of Suffering
.goto Hillsbrad Foothills,61.53,19.17
.turnin 528 >> Turn in Battle of Hillsbrad
.accept 529 >> Accept Battle of Hillsbrad
.goto Hillsbrad Foothills,62.37,20.32
.target Apothecary Lydon
.target Umpi
.target High Executor Darthalia
step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Umpi|r, and |cRXP_FRIENDLY_Darthalia|r
.turnin 496 >> Turn in Elixir of Suffering
.accept 499 >> Accept Elixir of Suffering
.accept 1067 >> Accept Return to Thunder Bluff
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >> Turn in Elixir of Suffering
.goto Hillsbrad Foothills,61.53,19.17
.turnin 528 >> Turn in Battle of Hillsbrad
.accept 529 >> Accept Battle of Hillsbrad
.goto Hillsbrad Foothills,62.37,20.32
.target Apothecary Lydon
.target Umpi
.target High Executor Darthalia
.isOnQuest 496
step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Umpi|r, and |cRXP_FRIENDLY_Darthalia|r
.turnin 501 >> Turn in Elixir of Pain
.accept 502 >> Accept Elixir of Pain
.accept 1067 >> Accept Return to Thunder Bluff
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >> Turn in Elixir of Suffering
.goto Hillsbrad Foothills,61.53,19.17
.turnin 528 >> Turn in Battle of Hillsbrad
.accept 529 >> Accept Battle of Hillsbrad
.goto Hillsbrad Foothills,62.37,20.32
.target Apothecary Lydon
.target Umpi
.target High Executor Darthalia
.isOnQuest 501
step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Umpi|r, and |cRXP_FRIENDLY_Darthalia|r
.turnin 496 >> Turn in Elixir of Suffering
.accept 499 >> Accept Elixir of Suffering
.turnin 501 >> Turn in Elixir of Pain
.accept 502 >> Accept Elixir of Pain
.accept 1067 >> Accept Return to Thunder Bluff
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >> Turn in Elixir of Suffering
.goto Hillsbrad Foothills,61.53,19.17
.turnin 528 >> Turn in Battle of Hillsbrad
.accept 529 >> Accept Battle of Hillsbrad
.goto Hillsbrad Foothills,62.37,20.32
.target Apothecary Lydon
.target Umpi
.target High Executor Darthalia
.isQuestTurnedIn 496
.isOnQuest 501
step << skip
#label Hillsbradturnins3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r and |cRXP_FRIENDLY_Darthalia|r
.accept 1067 >> Accept Return to Thunder Bluff
.goto Hillsbrad Foothills,61.44,19.05
.turnin 528 >> Turn in Battle of Hillsbrad
.accept 529 >> Accept Battle of Hillsbrad
.goto Hillsbrad Foothills,62.37,20.32
.target Apothecary Lydon
.target High Executor Darthalia
step << skip
.goto Hillsbrad Foothills,61.55,19.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umpi|r
.turnin 499 >> Turn in Elixir of Suffering
.target Umpi
.isOnQuest 499
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shay|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Shay
.isOnQuest 529
.subzoneskip 272,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
.collect 2515,1800,516,1 << Hunter 
.target Kayren Soothallow
.itemcount 2515,<1000
.xp >25,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
>>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
.collect 3030,1800,516,1 << Hunter 
.target Kayren Soothallow
.xp <25,1
.itemcount 3030,<1000
step << Shaman/Warrior
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
.vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Ott
.subzoneskip 272,1
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
.vendor >> |cRXP_BUY_Buy a|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up and you don't have it yet|r
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
.subzoneskip 272,1
step
#label Fields3
.goto Hillsbrad Foothills,36.02,39.19
.subzone 286 >> Travel to the Hillsbrad Fields
.isOnQuest 529
step
#completewith HillsbradBlacksmith
.goto Hillsbrad Foothills,32.67,35.33,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stanley|r
>>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_Enraged Stanley|r
>>|cRXP_ENEMY_Enraged Stanley|r |cRXP_WARN_gives a full quest's worth of experience|r
.turnin 502 >> Turn in Elixir of Pain
.timer 9,Stanley RP (BE ALERT)
.mob Stanley
.isQuestTurnedIn 501
step
#completewith next
>>Kill |cRXP_ENEMY_Blacksmith Verringtan|r and |cRXP_ENEMY_Hillsbrad Apprentice Blacksmiths|r
.complete 529,1 
.unitscan +Blacksmith Verringtan
.complete 529,2 
.mob +Hillsbrad Apprentice Blacksmith
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,32.02,45.45
>>Loot the |cRXP_PICK_Shipment of Iron|r for the |T132761:0|t[|cRXP_LOOT_Shipment of Iron|r]
.complete 529,3 
.isQuestTurnedIn 528
step
#label HillsbradBlacksmith
.goto Hillsbrad Foothills,32.65,45.48,20,0
.goto Hillsbrad Foothills,31.87,46.66,20,0
.goto Hillsbrad Foothills,32.23,45.32
>>Kill |cRXP_ENEMY_Blacksmith Verringtan|r and |cRXP_ENEMY_Hillsbrad Apprentice Blacksmiths|r
.complete 529,1 
.unitscan +Blacksmith Verringtan
.complete 529,2 
.mob +Hillsbrad Apprentice Blacksmith
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,32.67,35.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stanley|r
>>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_Enraged Stanley|r
>>|cRXP_ENEMY_Enraged Stanley|r |cRXP_WARN_gives a full quest's worth of experience|r
.turnin 502 >> Turn in Elixir of Pain
.timer 9,Stanley RP (BE ALERT)
.mob Stanley
.isQuestTurnedIn 501
step
#optional
#loop
.goto Hillsbrad Foothills,36.64,45.21,60,0
.goto Hillsbrad Foothills,36.03,44.40,60,0
.goto Hillsbrad Foothills,34.36,44.62,60,0
.goto Hillsbrad Foothills,33.82,45.75,60,0
.goto Hillsbrad Foothills,33.25,48.54,60,0
.goto Hillsbrad Foothills,34.59,48.13,60,0
.goto Hillsbrad Foothills,35.29,47.28,60,0
.goto Hillsbrad Foothills,36.49,47.49,60,0
.goto Hillsbrad Foothills,36.64,45.21,60,0
.xp 24 >>Grind to level 24
step << Rogue
#season 2
#completewith next
.zone Silverpine Forest >>Travel to Silverpine Forest
.train 400080,1
step << Rogue
#season 2
.goto Silverpine Forest,47.12,71.01
>>Click the |cRXP_PICK_Dead Drop|r
.accept 78261 >> Accept The Horn of Xelthos
.train 400080,1
step << Rogue
#season 2
#completewith next
.goto Silverpine Forest,44.87,67.86
.subzone 209,2 >> Enter Shadowfang Keep
>>|cRXP_WARN_You have to do the next part solo! Grouping up will prevent you from obtaining the keys you need|r
>>|cRXP_WARN_You need to have trained|r |T132331:0|t[Vanish] |cRXP_WARN_to be able to do this|r
step << Rogue
#season 2
.gossipoption 96495,1 >>Stealth past |cRXP_ENEMY_Rethilgore|r, talk to |cRXP_FRIENDLY_Deathstalker Adamant|r and vanish aftwards. He will open the door for you
.target Deathstalker Adamant
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
#completewith next
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gemela|r for |T134243:0|t[|cRXP_LOOT_Sister's Half-Key|r]
>>|cRXP_WARN_She is located in the dining hall on the bottom floor|r
.collect 210213,1 
.mob Gemela
.isOnQuest 78261
step << Rogue
#season 2
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gefell|r for |T134244:0|t[|cRXP_LOOT_Brother's Half-Key|r]
>>|cRXP_WARN_He is located above the dining hall on the second floor|r
.collect 210212,1 
.mob Gefell
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
>>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gemela|r for |T134243:0|t[|cRXP_LOOT_Sister's Half-Key|r]
>>|cRXP_WARN_She is located in the dining hall on the bottom floor|r
.collect 210213,1 
.mob Gemela
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
.use 210212 >>Return to the courtyard outside and enter the Stables. Combine the two keys for the |T237379:0|t[|cRXP_LOOT_Twin Key|r]
.collect 210209,1 
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
>>Open the |cRXP_PICK_Ornamented Chest|r in the stables for the |cRXP_LOOT_Horn of Xelthos|r
.complete 78261,1 
.isOnQuest 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest
.turnin 78261 >> Turn in The Horn of Xelthos
.isQuestComplete 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_You now need to enter a capital city to receive mail from *C*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >> Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Enter Undercity. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 6762 >> Train your class spells
.target Carolyn Ward
.xp <24,1
.xp >26,1
.dungeon !SFK
.zoneskip Undercity,1
step << Rogue
#season 2
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 1833 >> Train your class spells
.target Carolyn Ward
.xp <26,1
.dungeon !SFK
.zoneskip Undercity,1
step
#sticky
#completewith EnterSFK
.subzone 209,2 >> Now you should be looking for a group to Shadowfang Keep
.dungeon SFK
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 529 >> Turn in Battle of Hillsbrad
.target High Executor Darthalia
.isQuestComplete 529
.dungeon SFK
.zoneskip Hillsbrad Foothills,1
step
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarise|r
.fly The Sepulcher>> Fly to The Sepulcher
.target Zarise
.zoneskip Hillsbrad Foothills,1
.dungeon SFK
step << Rogue
#season 2
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher>> Fly to The Sepulcher
.target Michael Garrett
.zoneskip Undercity,1
.dungeon SFK
step
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadrec|r
.accept 1098 >>Accept Deathstalkers in Shadowfang
.target High Executor Hadrec
.dungeon SFK
step
.goto Silverpine Forest,44.22,39.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
.accept 1014 >>Accept Arugal Must Die
.target Dalar Dawnweaver
.dungeon SFK
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.use 203994
.itemcount 203994,1
.dungeon SFK
.isQuestTurnedIn 78261
step
#label EnterSFK
.goto Silverpine Forest,44.87,67.86
.subzone 209,2 >> Enter the SFK Instance portal. Zone in
.dungeon SFK
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vincent|r
.turnin 1098 >> Turn in Deathstalkers in Shadowfang
.target Deathstalker Vincent
.dungeon SFK
.isOnQuest 1098
step
>>Loot the |cRXP_PICK_Book of Ur|r from the bookshelf in |cRXP_ENEMY_Fenrus the Devourer's|r room
.complete 1013,1 
.dungeon SFK
.isOnQuest 1013
step
>>Kill |cRXP_ENEMY_Archmage Arugal|r. Loot him for his |cRXP_LOOT_Head|r
.complete 1014,1 
.mob Archmage Arugal
.dungeon SFK
.isOnQuest 1014
step
#hardcore
#completewith FlytoUC
.goto Silverpine Forest,45.51,41.26,150,0
.subzone 228 >>Travel to The Sepulcher
.dungeon SFK
step
#softcore
#completewith FlytoUC
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
.dungeon SFK
step
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadrec|r
.turnin 1098 >>Turn in Deathstalkers in Shadowfang
.target High Executor Hadrec
.dungeon SFK
.isQuestComplete 1098
step
.goto Silverpine Forest,44.22,39.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
.turnin 1014 >>Turn in Arugal Must Die
.target Dalar Dawnweaver
.dungeon SFK
.isQuestComplete 1014
step << Mage
#completewith ThunderBluffHS
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
.zoneskip Undercity
.dungeon SFK
step << !Mage
#label FlytoUC
#completewith ThunderBluffHS
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >> Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.dungeon SFK
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Enter Undercity. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step
#label BookofUrTurnin
.goto Undercity,53.74,54.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'dugur|r
.turnin 1013 >>Turn in The Book of Ur
.target Keeper Bel'dugur
.dungeon SFK
.isQuestComplete 1013
step << Warrior
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 5308 >> Train your class spells
.target Angela Curthas
.xp <24,1
.xp >26,1
.dungeon SFK
step << Warrior
#optional
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 6178 >> Train your class spells
.target Angela Curthas
.xp <26,1
.dungeon SFK
step << Rogue
.goto Undercity,75.19,51.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ezekiel|r|cRXP_BUY_. Buy |r |T133849:0|t[Dust of Decay] |cRXP_BUY_and|r |T132793:0|t[Empty Vials] |cRXP_BUY_from him|r
.collect 2928,40,1067,1 
.collect 3371,40,1067,1 
.target Ezekiel Graves
.dungeon SFK
step << Rogue
#completewith ThunderBluffHS
>>|cRXP_WARN_Craft|r |T132273:0|t[Instant Poisons]
.collect 6947,40,1067,1 
.dungeon SFK
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 6762 >> Train your class spells
.target Carolyn Ward
.xp <24,1
.xp >26,1
.dungeon SFK
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn|r
.train 1833 >> Train your class spells
.target Carolyn Ward
.xp <26,1
.dungeon SFK
step << Warlock
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 6223 >> Train your class spells
.target Richard Kerwin
.xp <24,1
.xp >26,1
.dungeon SFK
step << Warlock
#optional
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 1456 >> Train your class spells
.target Richard Kerwin
.xp <26,1
.dungeon SFK
step << Rogue
#season 2
#label DeadlyBrewPickup
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.fly The Sepulcher>> Fly to The Sepulcher
.target Michael Garrett
.zoneskip Silverpine Forest
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
.use 203994
.itemcount 203994,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Druid
#completewith next
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
.goto Moonglade,36.026,41.374
>>|cRXP_WARN_Combine the two pendants at the Shrine of Remulos for the |r|cRXP_LOOT_Pendant of the Sea Lion|r
.collect 15882,1,30,1,1
.collect 15883,1,30,1,1
.complete 30,1 
.itemcount 15882,1
step << Druid
.goto Moonglade,56.21,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
.turnin 30 >> Turn in Trial of the Sea lion
.accept 31 >> Accept Aquatic Form
.target Dendrite Starblaze
.itemcount 15885,1
step << Druid
#optional
.goto Moonglade,56.21,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
.accept 31 >> Accept Aquatic Form
.target Dendrite Starblaze
.isQuestTurnedIn 30
step
#label ThunderBluffHS
.hs >> Hearth to Thunder Bluff
.use 6948
.zoneskip Thunder Bluff
.bindlocation 1638,1
step
#optional
#label Hillsbradskip1
]]);
