RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 22-30
#xprate >1.99
#classic
#tbc
#mop
<< Horde
#name 26-28 SoD Ashenvale
#next 28-30 Thousand Needles
step
#optional
.abandon 1058,1068,1095
step << Warlock
#season 2
#sticky
#completewith AshenvaleEnd
#label ExplorerImp
>>As you're questing cast |T136163:0|t|cRXP_FRIENDLY_[Drain Soul]|r on mobs untill you receive an |T133257:0|t|cRXP_LOOT_Explorer's Soul|r. |cRXP_WARN_Use it to learn how to summon an|r |T236294:0|t|cRXP_FRIENDLY_[Explorer Imp]|r
.train 445459 >>|cRXP_WARN_Use|r |T133257:0|t|cRXP_LOOT_Explorer's Soul|r |cRXP_WARN_to learn how to summon an|r |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]
.train 445459,1 
.train 1120,3 
.use 221978
step << Warlock/Mage
#season 2
#requires ExplorerImp << Warlock
#sticky
#completewith AshenvaleEnd
#label FelPortalRune
>>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one summon your |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r] and talk to it while next to a portal to send it on an expedition. After 10-20 minutes it will return with loot and a chance to award you with |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
>>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one close it using a |T134945:0|t[|cRXP_LOOT_Scroll of Spatial Mending|r]. This will award you with |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r] << Mage
>>|cRXP_WARN_Be on the lookout for the portals untill you get the rune|r
.collect 221499,1 << Warlock 
.collect 223147,1 << Mage 
.itemcount 220792,1 << Mage 
.use 223148 << Warlock 
.use 220792 << Mage
.train 429311,1 << Mage
.train 431756,1 << Warlock
.train 1120,3 << Warlock 
.unitscan Fel Sliver
.unitscan Fel Crack
.unitscan Fel Tear
.unitscan Fel Scar
.unitscan Fel Rift
step << Warlock/Mage
#season 2
#requires FelPortalRune
#sticky
#completewith AshenvaleEnd
.itemcount 221499,1 << Warlock 
.itemcount 223147,1 << Mage 
.train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
.train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
.use 221499 << Warlock
.use 223147 << Mage
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r
.dailyturnin 235,742,6382 >> Turn in The Ashenvale Hunt
.turnin 6383 >> Turn in The Ashenvale Hunt
.target Senani Thunderheart
step
#optional
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r
.turnin 6382 >> Turn in The Ashenvale Hunt
.target Senani Thunderheart
step
.goto Ashenvale,74.00,60.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kaylisk|r
.home >>Set your Hearthstone to Splintertree Post
.target Innkeeper Kaylisk
.bindlocation 431
.isQuestAvailable 25
step
.goto Ashenvale,73.67,60.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mastok|r
.accept 25 >> Accept Stonetalon Standstill
.target Mastok Wrilehiss
step
#xprate <2.1
.goto Ashenvale,73.06,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
.accept 6441 >> Accept Satyr Horns
.target Pixel
.maxlevel 28
step
#xprate >2.09
.goto Ashenvale,73.06,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
.accept 6441 >> Accept Satyr Horns
.target Pixel
.maxlevel 27
step
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fp Splintertree Post >> Get the Splintertree Post flight path
.target Vhulgra
.isQuestAvailable 25
step << Hunter
#completewith ClawBiteAshenvale1
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Qeeju|r
.stable >> Stable your pet. You will tame an |cRXP_ENEMY_Elder Ashenvale Bear|r and a |cRXP_ENEMY_Ghostpaw Alpha|r shortly
.target Qeeju
step << Hunter
#loop
.goto Ashenvale,65.31,64.65,0
.goto Ashenvale,69.12,64.45,0
.goto Ashenvale,69.12,64.45,50,0
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65,50,0
.train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
.mob +Elder Ashenvale Bear
.train 17264 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Ghostpaw Alpha|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
.mob +Ghostpaw Alpha
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.xp <27,1 
step << Hunter
#label ClawBiteAshenvale1
#optional
#loop
.goto Ashenvale,65.31,64.65,0
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65,50,0
.train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
.mob Elder Ashenvale Bear
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.xp >26,1 
step << Hunter
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Qeeju|r
.stable >> Abandon the |cRXP_ENEMY_Elder Ashenvale Bear|r or |cRXP_ENEMY_Ghostpaw Alpha|r and retrieve your regular pet
.target Qeeju
.zoneskip Ashenvale,1
step
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
.accept 6503 >> Accept Ashenvale Outrunners
.target Kuray'bin
step
#ah
#completewith Outrunners
.goto Ashenvale,70.01,71.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurda|r
>>|cRXP_WARN_Skip this step if you do not have (all the) pages|r
.accept 6504 >> Accept The Lost Pages
.turnin 6504 >> Turn in The Lost Pages
.target Gurda Ragescar
step
#completewith Outrunners
.goto Ashenvale,75.25,71.86,0
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Sharptalon|r |cRXP_WARN_is level 31 and patrols around. You can kite him back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit. You can also do this quest later|r
.collect 16305,1,2 
.accept 2 >> Accept Sharptalon's Claw
.unitscan Sharptalon
.use 16305
step << Hunter
#completewith next
.cast 19885 >>Cast |T132320:0|t[Track Hidden] to find the |cRXP_ENEMY_Ashenvale Outrunners|r more easily
.train 19885,3
step
#label Outrunners
#loop
.goto Ashenvale,76.15,67.60,0
.goto Ashenvale,76.15,67.60,15,0
.goto Ashenvale,76.03,69.02,15,0
.goto Ashenvale,76.25,70.62,15,0
.goto Ashenvale,75.76,71.61,15,0
.goto Ashenvale,75.57,70.33,15,0
.goto Ashenvale,75.20,70.62,15,0
.goto Ashenvale,74.37,69.31,15,0
.goto Ashenvale,73.61,70.91,15,0
.goto Ashenvale,72.96,70.34,15,0
.goto Ashenvale,72.66,69.46,15,0
.goto Ashenvale,72.09,70.17,15,0
.goto Ashenvale,71.07,72.60,15,0
.goto Ashenvale,71.92,73.64,15,0
.goto Ashenvale,72.53,72.58,15,0
.goto Ashenvale,72.32,74.64,15,0
.goto Ashenvale,73.36,74.43,15,0
.goto Ashenvale,73.85,75.03,15,0
>>Kill |cRXP_ENEMY_Ashenvale Outrunners|r
>>|cRXP_WARN_They are stealthed|r
.complete 6503,1 
.mob Ashenvale Outrunner
step
#loop
.goto Ashenvale,78.24,65.72,0
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Sharptalon|r |cRXP_WARN_is level 31 and patrols around. You can kite him back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit. You can also do this quest later|r
.collect 16305,1,2 
.accept 2 >> Accept Sharptalon's Claw
.unitscan Sharptalon
.use 16305
step << !Hunter
.goto Ashenvale,68.34,75.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torek|r to start the escort
>>|cRXP_FRIENDLY_Torek|r |cRXP_WARN_has a 5 minute respawn time|r
.accept 6544 >> Accept Torek's Assault
.target Torek
step << !Hunter
.goto Ashenvale,66.08,74.50,60,0
.goto Ashenvale,65.07,75.36,20,0
.goto Ashenvale,64.28,75.33,10,0
.goto Ashenvale,64.81,75.34
>>Follow |cRXP_FRIENDLY_Torek|r
>>Let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r tank the |cRXP_ENEMY_Silverwing Warriors|r and |cRXP_ENEMY_Silverwing Sentinels|r
>>|cRXP_WARN_When you clear the building, run toward the Balcony. When |cRXP_ENEMY_Duriel Moonfire|r comes, let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r take aggro before you deal damage|r
.complete 6544,1 
.mob Silverwing Warrior
.mob Silverwing Sentinel
.unitscan Duriel Moonfire
step
.goto Ashenvale,59.73,62.81,80,0
.goto Ashenvale,62.99,44.16,50 >> Travel toward the western entrance point into Night Run
>>|cRXP_WARN_Be careful! A level 35|r |cRXP_ENEMY_Wandering Protector|r |cRXP_WARN_(PVP elite) might patrol the area!|r
.isOnQuest 6441
step
#completewith next
.goto Ashenvale,64.88,43.81,50,0
.goto Ashenvale,67.04,50.73,80 >> Travel to Night Run
step
#loop
.goto Ashenvale,67.85,51.34,0
.goto Ashenvale,66.78,51.71,50,0
.goto Ashenvale,66.19,53.44,50,0
.goto Ashenvale,66.17,54.40,50,0
.goto Ashenvale,66.22,55.27,50,0
.goto Ashenvale,66.20,56.37,50,0
.goto Ashenvale,66.77,57.14,50,0
.goto Ashenvale,67.11,56.39,50,0
.goto Ashenvale,67.35,55.53,50,0
.goto Ashenvale,67.92,54.42,50,0
.goto Ashenvale,68.92,53.44,50,0
.goto Ashenvale,68.63,52.69,50,0
.goto Ashenvale,67.85,51.34,50,0
>>Kill |cRXP_ENEMY_Felmusk Shadowstalkers|r, |cRXP_ENEMY_Felmusk Satyrs|r, and |cRXP_ENEMY_Felmusk Felsworns|r. Loot them for their |cRXP_LOOT_Satyr Horns|r
>>|cRXP_WARN_Be careful! All the Felmusk cast|r |T136119:0|t[Overwhelming Stench]|cRXP_WARN_, an instant-cast 6 second silence|r << Mage/Warlock/Priest/Druid/Shaman
.complete 6441,1 
.mob Felmusk Shadowstalker
.mob Felmusk Felsworn
.mob Felmusk Satyr
.isOnQuest 6441
step
#completewith Shadumbra
.subzone 426 >> Travel West toward Raynewood Retreat
.isOnQuest 1195
step
#completewith next
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,60.94,51.53,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,52.24,54.38,40,0
>>Kill |cRXP_ENEMY_Shadumbra|r. Loot her for |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r] and use it to start the quest
>>|cRXP_ENEMY_Shadumbra|r |cRXP_WARN_patrols around slightly|r
>>|cRXP_WARN_She does not spawn during the Ashenvale PVP event!|r << sod
.collect 16304,1,24 
.accept 24 >> Accept Shadumbra's Head
.unitscan Shadu
step
#loop
.goto Ashenvale,58.08,56.06,0
.goto Ashenvale,58.08,56.06,40,0
.goto Ashenvale,58.69,55.18,40,0
.goto Ashenvale,59.27,54.47,40,0
.goto Ashenvale,59.83,53.26,40,0
.goto Ashenvale,60.40,52.83,40,0
.goto Ashenvale,61.03,51.96,40,0
.goto Ashenvale,60.99,49.19,40,0
.goto Ashenvale,62.51,50.16,40,0
>>Kill |cRXP_ENEMY_Laughing Sisters|r. Loot them for an |T134776:0|t[|cRXP_LOOT_Etched Phial|r]
.collect 5867,1,1195,1 
.mob Laughing Sister
step
#label Shadumbra
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,60.94,51.53,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,52.24,54.38,40,0
.goto Ashenvale,62.39,49.80,40,0
.goto Ashenvale,62.39,49.80,0
>>Kill |cRXP_ENEMY_Shadumbra|r. Loot her for |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r] and use it to start the quest
>>|cRXP_ENEMY_Shadumbra|r |cRXP_WARN_patrols around slightly|r
>>|cRXP_WARN_She does not spawn during the Ashenvale PVP event!|r << sod
.collect 16304,1,24 
.accept 24 >> Accept Shadumbra's Head
.unitscan Shadumbra
.use 16304
step
#loop
.line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
.goto Ashenvale,43.78,68.86,0
.goto Ashenvale,43.78,68.86,40,0
.goto Ashenvale,43.33,68.09,40,0
.goto Ashenvale,42.46,68.39,40,0
.goto Ashenvale,42.08,68.71,40,0
.goto Ashenvale,41.79,68.28,40,0
.goto Ashenvale,41.55,67.71,40,0
.goto Ashenvale,41.46,67.44,40,0
.goto Ashenvale,41.41,66.56,40,0
.goto Ashenvale,40.22,66.23,40,0
.goto Ashenvale,39.77,65.40,40,0
.goto Ashenvale,39.65,63.74,40,0
.goto Ashenvale,39.81,62.94,40,0
>>Kill |cRXP_ENEMY_Ursangous|r. Loot him for |T132941:0|t[|cRXP_LOOT_Ursangous's Paw|r] and use it to start the quest
>>|cRXP_WARN_He patrols around slightly|r
.collect 16303,1,23 
.accept 23 >> Accept Ursangous's Paw
.unitscan Ursangous
.use 16303
step << Shaman
.goto Ashenvale,33.55,67.47
>>|cRXP_WARN_Use the|r |T132821:0|t[Empty Blue Waterskin] |cRXP_WARN_under the Gazebo|r
.complete 1534,1 
.use 7767
step
#completewith Tideress
.subzone 421 >> Travel to Mystral Lake
.isOnQuest 25
step
#completewith Tideress
>>Kill |cRXP_ENEMY_Befouled Water Elementals|r
.complete 25,1 
.mob Befouled Water Elemental
step
#completewith next
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
>>Kill |cRXP_ENEMY_Tideress|r. Loot her for the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r]. Use it to start the quest
>>|cRXP_ENEMY_Tideress|r |cRXP_WARN_patrols around the island and underwater|r
.collect 16408,1,1918,1 
.accept 1918 >>Accept The Befouled Element
.use 16408
.unitscan Tideress
step
.goto Ashenvale,48.93,69.56
>>|cRXP_WARN_Move onto the Gazebo in the center of Mystral Lake|r
.complete 25,2 
step
#label Tideress
#loop
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
.goto Ashenvale,48.71,69.54,40,0
.goto Ashenvale,48.04,69.67,40,0
.goto Ashenvale,47.79,69.90,40,0
.goto Ashenvale,47.57,70.42,40,0
.goto Ashenvale,47.22,70.44,40,0
.goto Ashenvale,46.72,70.63,40,0
.goto Ashenvale,46.53,70.80,40,0
.goto Ashenvale,46.07,70.83,40,0
.goto Ashenvale,45.84,70.67,40,0
.goto Ashenvale,45.84,70.67,0
>>Kill |cRXP_ENEMY_Tideress|r. Loot her for the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r]. Use it to start the quest
>>|cRXP_ENEMY_Tideress|r |cRXP_WARN_patrols around the island and underwater|r
.collect 16408,1,1918,1 
.accept 1918 >>Accept The Befouled Element
.use 16408
.unitscan Tideress
step
#loop
.goto Ashenvale,48.36,69.74,0
.goto Ashenvale,48.36,69.74,50,0
.goto Ashenvale,48.43,70.14,50,0
.goto Ashenvale,48.93,70.82,50,0
.goto Ashenvale,49.49,70.76,50,0
.goto Ashenvale,50.21,70.36,50,0
.goto Ashenvale,50.47,70.43,50,0
.goto Ashenvale,50.54,71.08,50,0
.goto Ashenvale,50.74,71.31,50,0
.goto Ashenvale,51.42,70.86,50,0
.goto Ashenvale,52.13,71.14,50,0
.goto Ashenvale,52.18,71.60,50,0
.goto Ashenvale,52.08,72.10,50,0
.goto Ashenvale,45.84,70.67,50,0
>>Kill |cRXP_ENEMY_Befouled Water Elementals|r
.complete 25,1 
.mob Befouled Water Elemental
step
.goto Ashenvale,60.20,72.90
>>|cRXP_WARN_Use the|r |T134776:0|t[|cRXP_LOOT_Etched Phial|r] |cRXP_WARN_in the Moonwell|r
.complete 1195,1 
.use 5867
step
#completewith OutrunnerTurnIn
.hs >> Hearth to Splintertree Post
.use 6948
.bindlocation 431,1
.subzoneskip 431
.cooldown item,6948,>0
step
#completewith OutrunnerTurnIn
.goto Ashenvale,71.10,68.12,80 >>Travel to Splintertree Post
.subzoneskip 431
.cooldown item,6948,<0,1
step
#label OutrunnerTurnIn
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
.turnin 6503 >> Turn in Ashenvale Outrunners
.target Kuray'bin
step
#loop
.goto Ashenvale,78.24,65.72,0
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest
>>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Sharptalon|r |cRXP_WARN_is level 31 and patrols around. You can kite him back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit|r
.collect 16305,1,2 
.accept 2 >> Accept Sharptalon's Claw
.unitscan Sharptalon
.use 16305
step << !Hunter
.goto Ashenvale,73.04,62.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ertog|r
.turnin 6544 >> Turn in Torek's Assault
.target Ertog Ragetusk
.isQuestComplete 6544
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r
.turnin 2 >> Turn in Sharptalon's Claw
.turnin 24 >> Turn in Shadumbra's Head
.turnin 23 >> Turn in Ursangous's Paw
.turnin 247 >> Turn in The Hunt Completed
.target Senani Thunderheart
.isOnQuest 2
step
#optional
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r
.turnin 24 >> Turn in Shadumbra's Head
.turnin 23 >> Turn in Ursangous's Paw
.turnin 247 >> Turn in The Hunt Completed
.target Senani Thunderheart
.isQuestTurnedIn 2
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r
.turnin 24 >> Turn in Shadumbra's Head
.turnin 23 >> Turn in Ursangous's Paw
.target Senani Thunderheart
step
.goto Ashenvale,73.06,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
.turnin 6441 >> Turn in Satyr Horns
.target Pixel
.isQuestComplete 6441
step
.goto Ashenvale,73.67,60.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mastok|r
.turnin 25 >> Turn in Stonetalon Standstill
.turnin 1918 >> Turn in The Befouled Element
.target Mastok Wrilehiss
step << Hunter
#optional
#completewith ClawBiteAshenvale2
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Qeeju|r
.stable >> Stable your pet. You will tame an |cRXP_ENEMY_Elder Ashenvale Bear|r and a |cRXP_ENEMY_Ghostpaw Alpha|r shortly
.target Qeeju
step << Hunter
#optional
#loop
.goto Ashenvale,65.31,64.65,0
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65,50,0
.train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
.mob +Elder Ashenvale Bear
.train 17264 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Ghostpaw Alpha|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
.mob +Ghostpaw Alpha
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.xp <27,1 
step << Hunter
#label ClawBiteAshenvale2
#optional
#loop
.goto Ashenvale,65.31,64.65,0
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65,50,0
.train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
.mob Elder Ashenvale Bear
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.xp >26,1 
step << Rogue/Warlock
#completewith next
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fly Orgrimmar >> Fly to Orgrimmar
.target Vhulgra
.train 8687,1 << Rogue
.train 6217,1 << Warlock
.zoneskip Orgrimmar
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 8687 >> Train your class spells
>>|T132273:0|t[Instant Poison Rank 2] |cRXP_WARN_requires 120 skill in Poisons!|r
.target Ormok
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 6217 >> Train your class spells
.target Mirket
.xp <28,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
.vendor >>Buy any pet upgrades you can afford
.target Kurgul
.zoneskip Orgrimmar,1
step << Warlock
.goto Orgrimmar,44.16,48.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r
.collect 5347,1 
.money <1.5713
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
.target Katis
.zoneskip Orgrimmar,1
step << Rogue/Warlock
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.target Doras
.zoneskip Orgrimmar,1
step
#label AshenvaleEnd
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.target Vhulgra
.zoneskip Ashenvale,1
]]);
