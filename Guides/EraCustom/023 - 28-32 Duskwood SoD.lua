RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 20-30
#season 2
#classic
#tbc
#mop
<< Alliance
#name 28-32 Duskwood SoD
#displayname 28-32 Duskwood
#next RestedXP Alliance 30-40\32-34 Wetlands/Hillsbrad SoD
step
#hidewindow
#completewith next
.abandon 277 >> Abandon Fire Taboo
step
#xprate >1.99
#sticky
.abandon 94 >> Abandon A Watchful Eye
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
.bronzetube
.target Herble Baubbletump
.isQuestAvailable 174
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
>>|cRXP_WARN_Skip this step if you haven't found a bronze tube|r
.accept 174 >> Accept Look To The Stars
.turnin 174 >> Turn in Look To The Stars
.target Viktori Prism'Antras
.itemcount 4371,1
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 175 >> Accept Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,81.46,59.02
>> Head south towards the chapel
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 175 >> Turn in Look To The Stars
.accept 177 >> Accept Look To The Stars
.isQuestTurnedIn 174
.target Blind Mary
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1 
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >> Turn in Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 181 >> Accept Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,75.75,47.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.accept 173 >> Accept Worgen in the Woods
.target Calor
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.accept 58 >> Accept The Night Watch
.target Commander Althea Ebonlocke
step
.goto Duskwood,72.55,33.54
.line Duskwood,74.54,42.90,74.38,40.82,73.87,39.50,72.72,38.91,72.24,37.30,72.20,34.86,72.55,33.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r. He patrols the road north of Darkshire
.turnin 1243 >> Turn in The Missing Diplomat
.accept 1244 >> Accept The Missing Diplomat
.target Watcher Backus
step
.goto Duskwood,66.0,44.6,60,0
.goto Duskwood,64.2,38.8,60,0
.goto Duskwood,60.8,37.4,60,0
.goto Duskwood,61.2,46.0,60,0
.goto Duskwood,67.6,46.6,60,0
.goto Duskwood,63.6,41.2
>>Kill |cRXP_ENEMY_Nightbane Shadow Weavers|r
.complete 173,1 
.mob Nightbane Shadow Weaver
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.turnin 173 >> Turn in Worgen in the Woods
.accept 221 >> Accept Worgen in the Woods
.target Calor
step
.goto Duskwood,63.8,51.8,60,0
.goto Duskwood,61.2,40.2,60,0
.goto Duskwood,65.2,51.6,60,0
.goto Duskwood,61.4,41.2
>>Kill |cRXP_ENEMY_Nightbane Dark Runners|r
>>|cRXP_ENEMY_Nightbane Dark Runners|r |cRXP_WARN_move very fast and have a larger than normal agro radius|r
.complete 221,1 
.mob Nightbane Dark Runner
step
#completewith next
.goto Elwynn Forest,84.60,69.37,100 >> Travel to the Eastvale Logging Camp
step
.goto Elwynn Forest,84.60,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
.turnin 74 >> Turn in The Legend of Stalvan
.accept 75 >> Accept The Legend of Stalvan
.target Marshal Haggard
step
.goto Elwynn Forest,85.70,69.53
>>Head upstairs in the House
>>Open |cRXP_PICK_Marshal Haggard's Chest|r. Loot it for |cRXP_LOOT_A Faded Journal Page|r
.complete 75,1 
step
.goto Elwynn Forest,84.60,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
.turnin 75 >> Turn in The Legend of Stalvan
.accept 78 >> Accept The Legend of Stalvan
.target Marshal Haggard
step
#completewith next
.goto Duskwood,28.10,31.46,100 >> Travel towards |cRXP_FRIENDLY_Abercrombie|r in Duskwood
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 159 >> Turn in Juice Delivery
.accept 133 >> Accept Ghoulish Effigy
.target Abercrombie
step << Warrior/Mage
#season 2
#completewith next
.goto Duskwood,23.630,34.888,15 >> Enter the north eastern crypt
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
#completewith next
.goto Duskwood,26.115,30.863
>>Open the |cRXP_PICK_Dusty Coffer|r. Loot it for the |T252996:0|t[|cRXP_LOOT_Decrepit Phylactery|r]
.collect 210568,1 
.train 403480,1 << Warrior
.train 415939,1 << Mage
step
.goto Duskwood,24.26,32.90
>>Kill |cRXP_ENEMY_Plague Spreaders|r. Loot them for their |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Fangs|r
>>|cRXP_WARN_Other |cRXP_ENEMY_Ghouls|r may also drop |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Fangs|r but focus on|r |cRXP_ENEMY_Plague Spreaders|r
.complete 58,1 
.complete 133,1 
.complete 101,1 
.mob Plague Spreader
.mob Flesh Eater
.mob Rotted One
.mob Bone Chewer
step << Warrior/Mage
#season 2
.goto Duskwood,26.115,30.863
>>Open the |cRXP_PICK_Dusty Coffer|r. Loot it for the |T252996:0|t[|cRXP_LOOT_Decrepit Phylactery|r]
.collect 210568,1 
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
#completewith next
.goto Duskwood,15.602,38.621,15 >> Enter the western crypt
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
#completewith next
.goto Duskwood,18.140,37.940
.cast 426182 >> Click the |cRXP_PICK_Slumbering Bones|r on the small throne|r
>>|cRXP_WARN_This will summon a level 25 elite|r |cRXP_ENEMY_Awakened Lich|r
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
.goto Duskwood,18.140,37.940
>>Kill the |cRXP_ENEMY_Awakened Lich|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Flagellation|r] << Warrior
>>Kill the |cRXP_ENEMY_Awakened Lich|r. Loot it for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Mass Regeneration|r] << Mage
>>|cRXP_WARN_If someone else is there killing the |cRXP_ENEMY_Awakened Lich|r you can also help them and you will still be able to loot it|r
.collect 210569,1 << Warrior 
.collect 211514,1 << Mage 
.mob Awakened Lich
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior
#season 2
.train 416050 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flagellation|r] |cRXP_WARN_to train|r |T133495:0|t[Flagellation]
.use 210569
.itemcount 210569,1
.train 403480,1
step << Mage
#season 2
.train 416050 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Mass Regeneration|r] |cRXP_WARN_to train|r |T132870:0|t[Mass Regeneration]
.use 211514
.itemcount 211514,1
.train 415939,1
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 133 >> Turn in Ghoulish Effigy
.accept 134 >> Accept Ogre Thieves
.target Abercrombie
step << Paladin
#season 2
#completewith next
>>Kill |cRXP_ENEMY_Defias Night Runners|r, |cRXP_ENEMY_Defias Night Blades|r, and |cRXP_ENEMY_Defias Enchanters|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Night Runners|r and |cRXP_ENEMY_Defias Night Blades|r cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds),|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind. |cRXP_ENEMY_Defias Night Runners|r are|r |T132320:0|t[Stealthed]|cRXP_WARN_, and |cRXP_ENEMY_Defias Enchanters|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(deals about 150 fire damage) and have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows attack and movespeed on hit)|r
.collect 211472,1 
.mob Defias Night Runner
.mob Defias Night Blade
.mob Defias Enchanter
.train 416037,1
.xp <24,1
step
#sticky
#completewith next
.isOnQuest 101
>>Kill |cRXP_ENEMY_spiders|r as you travel. Loot them for |T134799:0|t[|cRXP_LOOT_Vials of Spider Venom|r]
.complete 101,2 
.mob Black Widow Hatchlings
.mob Venom Web Spider
.mob Pygmy Venom Web Spider
step
.goto Duskwood,23.926,72.075
>>Open the |cRXP_PICK_Defias Strongbox|r. Loot it for the |cRXP_LOOT_Defias Docket|r
.complete 1244,1 
step << Paladin
#season 2
#loop
.goto Duskwood,20.84,63.75,40,0
.goto Duskwood,20.00,71.10,40,0
.goto Duskwood,21.58,72.00,40,0
.goto Duskwood,24.26,71.82,40,0
.goto Duskwood,22.91,66.62,40,0
>>Kill |cRXP_ENEMY_Defias Night Runners|r, |cRXP_ENEMY_Defias Night Blades|r, and |cRXP_ENEMY_Defias Enchanters|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Night Runners|r and |cRXP_ENEMY_Defias Night Blades|r cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds),|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind. |cRXP_ENEMY_Defias Night Runners|r are|r |T132320:0|t[Stealthed]|cRXP_WARN_, and |cRXP_ENEMY_Defias Enchanters|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(deals about 150 fire damage) and have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows attack and movespeed on hit)|r
.collect 211472,1 
.mob Defias Night Runner
.mob Defias Night Blade
.mob Defias Enchanter
.train 416037,1
.xp <24,1
step << Paladin
#season 2
.equip 18,211472 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
.use 211472
.itemcount 211472,1 
.train 416037,1
.xp <24,1
step << Paladin
#season 2
#loop
.goto Duskwood,22.49,47.91,40,0
.goto Duskwood,20.41,47.56,40,0
.goto Duskwood,14.65,47.37,40,0
.goto Duskwood,16.31,44.96,40,0
.goto Duskwood,22.95,40.55,40,0
>>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r
.aura 408828 >>|cRXP_WARN_Cast|r |T135983:0|t[Turn Undead] |cRXP_WARN_and then kill them with|r |T135903:0|t[Exorcism] |cRXP_WARN_5 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
.mob Skeletal Fiend
.mob Skeletal Horror
.itemStat 18,QUALITY,2
.train 416037,1
.xp <24,1
step << Paladin
#season 2
.cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Aura Mastery]
.use 211472
.aura -408828
.train 416037,1
.xp <24,1
step
.goto Duskwood,33.419,76.356
>>Loot |cRXP_LOOT_Abercrombie's Crate|r on the ground
.complete 134,1 
step
#completewith next
.goto Duskwood,34.63,77.87,20 >> Enter the Vul'Gol Ogre Cave
.isOnQuest 181
step
.goto Duskwood,37.98,79.90,30,0
.goto Duskwood,36.81,83.78
>>Kill |cRXP_ENEMY_Zzarc' Vul|r. Loot him for his |cRXP_LOOT_Monocle|r
>>|cRXP_ENEMY_Zzarc' Vul|r |cRXP_WARN_has 2 spawn points inside the Cave|r
.complete 181,1 
.mob Zzarc' Vul
.isOnQuest 181
step
#som
#completewith next
.goto Duskwood,44.598,87.565,0
.goto Stranglethorn Vale,40.635,3.514
.zone Stranglethorn Vale >> Travel to Stranglethorn Vale
step
#som
#completewith stvEnd2
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
>>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
>>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
.accept 215 >> Accept Jungle Secrets
.unitscan Private Thorsen
.mob Kurzen's Agent
step
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.accept 583 >> Accept Welcome to the Jungle
.goto Stranglethorn Vale,35.662,10.529
.turnin 583 >> Turn in Welcome to the Jungle
.goto Stranglethorn Vale,35.658,10.808
.target Barnil Stonepot
.target Hemet Nesingwary
step
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 185 >> Accept Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.accept 190 >> Accept Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#som
#completewith next
>>Kill |cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step
#som
.goto Stranglethorn Vale,35.40,12.50,50,0
.goto Stranglethorn Vale,33.30,11.90,50,0
.goto Stranglethorn Vale,31.76,9.00,50,0
.goto Stranglethorn Vale,35.40,12.50
>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#som
.goto Stranglethorn Vale,41.50,12.00,50,0
.goto Stranglethorn Vale,42.74,12.40,50,0
.goto Stranglethorn Vale,41.43,9.77,50,0
.goto Stranglethorn Vale,40.67,11.65,50,0
.goto Stranglethorn Vale,41.50,12.00
>>Kill |cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step
#som
#label stvEnd2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
>>|cRXP_WARN_Don't accept the follow ups yet|r
.turnin 185 >> Turn in Tiger Mastery
.accept 186 >> Accept Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.turnin 190 >> Turn in Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#som
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
>>|cRXP_WARN_Don't accept the follow up yet|r
.turnin 215 >> Turn in Jungle Secrets
.isOnQuest 215
.target Lieutenant Doren
step
#som
#completewith note
.goto Duskwood,44.7,85.6
.zone Duskwood >> Travel back to Duskwood
step
#completewith next
.goto Duskwood,31.6,59.4,0
.goto Duskwood,34.4,54.6,0
.goto Duskwood,28.6,49.4,0
.goto Duskwood,32.8,35.2,0
.goto Duskwood,23.6,36.6,0
>>Kill |cRXP_ENEMY_Black Widow Hatchlings|r and |cRXP_ENEMY_Carrion Recluses|r. Loot them for their |cRXP_LOOT_Spider Venom|r
.complete 101,2 
.mob Black Widow Hatchling
.mob Carrion Recluse
step
.goto Duskwood,22.95,44.75,80,0
.goto Duskwood,20.39,47.02,70,0
.goto Duskwood,15.07,46.91,70,0
.goto Duskwood,15.65,42.81,70,0
.goto Duskwood,18.30,47.75,70,0
.goto Duskwood,22.11,46.93,70,0
.goto Duskwood,23.68,42.13,70,0
.goto Duskwood,21.21,47.07
>>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Fingers|r
.complete 101,3 
.mob Skeletal Fiend
.mob Skeletal Horror
step
.goto Duskwood,31.6,59.4,0
.goto Duskwood,34.4,54.6,0
.goto Duskwood,28.6,49.4,0
.goto Duskwood,32.8,35.2,0
.goto Duskwood,31.6,59.4,50,0
.goto Duskwood,34.4,54.6,50,0
.goto Duskwood,28.6,49.4,50,0
.goto Duskwood,32.8,35.2,50,0
.goto Duskwood,23.6,36.6
>>Kill |cRXP_ENEMY_Black Widow Hatchlings|r and |cRXP_ENEMY_Carrion Recluses|r. Loot them for their |cRXP_LOOT_Spider Venom|r
.complete 101,2 
.mob Black Widow Hatchling
.mob Carrion Recluse
step
#label note
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 134 >> Turn in Ogre Thieves
.accept 160 >> Accept Note to the Mayor
.target Abercrombie
step
>>Click |cRXP_PICK_A Weathered Grave|r
.goto Duskwood,17.72,29.07
.accept 225 >> Accept The Weathered Grave
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 325 >> Turn in Armed and Ready
.accept 55 >> Accept Morbent Fel
.target Sven Yorgen
.isQuestTurnedIn 322
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <30,1 
.cooldown item,6948,>0,1
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <30,1 
.cooldown item,6948,>0,1
step
#completewith DShireHSOne
.hs >> Hearth to Darkshire
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
.subzoneskip 42 
step
#completewith next
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Darkshire >> Fly back to Darkshire if your HS is on cooldown
.target Thor
.subzoneskip 42 
step
#label DShireHSOne
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 78 >> Turn in The Legend of Stalvan
.accept 79 >> Accept The Legend of Stalvan
.target Tavernkeep Smitts
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 58 >> Turn in The Night Watch
.turnin 79 >> Turn in The Legend of Stalvan
.accept 80 >> Accept The Legend of Stalvan
.target Commander Althea Ebonlocke
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 80 >> Turn in The Legend of Stalvan
.accept 97 >> Accept The Legend of Stalvan
.target Clerk Daltry
step
.goto Duskwood,72.64,47.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
.turnin 225 >> Turn in The Weathered Grave
.accept 227 >> Accept Morgan Ladimore
.target Sirra Von'Indi
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 160 >> Turn in Note to the Mayor
.accept 251 >> Accept Translate Abercrombie's Note
.target Lord Ello Ebonlocke
step
.goto Duskwood,72.64,47.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
.turnin 251 >> Turn in Translate Abercrombie's Note
.target Sirra Von'Indi
.accept 401 >> Accept Wait for Sirra to Finish
.turnin 401 >> Turn in Wait for Sirra to Finish
.accept 252 >> Accept Translation to Ello
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 252 >> Turn in Translation to Ello
.target Lord Ello Ebonlocke
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.accept 253 >> Accept Bride of the Embalmer
.target Lord Ello Ebonlocke
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 97 >> Turn in The Legend of Stalvan
.accept 98 >> Accept The Legend of Stalvan
.turnin 227 >> Turn in Morgan Ladimore
.accept 228 >> Accept Mor'Ladim
.target Commander Althea Ebonlocke
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.turnin 221 >> Turn in Worgen in the Woods
.accept 222 >> Accept Worgen in the Woods
.target Calor
step
#label exit1
.goto Duskwood,72.55,33.54
.line Duskwood,74.54,42.90,74.38,40.82,73.87,39.50,72.72,38.91,72.24,37.30,72.20,34.86,72.55,33.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r. He patrols the road north of Darkshire
.turnin 1244 >> Turn in The Missing Diplomat
.accept 1245 >> Accept The Missing Diplomat
.target Watcher Backus
step
#sticky
#label FlowerX
.goto Duskwood,78.348,35.952
>>Loot the |cRXP_LOOT_Tear of Tilloa|r on the ground
.complete 335,1 
.isOnQuest 335
step
.goto Duskwood,77.30,36.20
>> Kill |cRXP_ENEMY_Stalvan Mistmantle|r. Loot him for his |cRXP_LOOT_Family Ring|r
>>|cRXP_ENEMY_Stalvan Mistmantle|r |cRXP_WARN_can hit quite hard. Kite him back to town and get help from the |cRXP_FRIENDLY_Watchers|r if needed|r
.complete 98,1 
.mob Stalvan Mistmantle
step
#requires FlowerX
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 98 >> Turn in The Legend of Stalvan
.turnin 101 >> Turn in The Totem of Infliction
.target Madame Eva
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 181 >> Turn in Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,62.33,81.77
>> Kill |cRXP_ENEMY_Nightbane Vile Fangs|r and |cRXP_ENEMY_Nightbane Tainted Ones|r
>>|cRXP_WARN_Be careful as all the mobs in the area respawn at once after a few minutes|r
.complete 222,1 
.complete 222,2 
.mob Nightbane Vile Fang
.mob Nightbane Tainted One
step
.goto 1431/0,-438.800,-10793.400,30 >> Head to the path leading into the Twilight Grove
step
.goto 1431/0,-376.600,-10768.500,30 >> Go up the path
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Palandar|r
>>|cRXP_WARN_You will now do an incursion quest loop. All of these quests can be completed in a party making them even more efficient. If u see any players near the questgiver try to form a group. If you find a couple players you can also do the boss quests that wouldn't be soloable otherwise|r
.goto Duskwood,45.6,51.2
.target Field Captain Palandar
.accept 81730 >> Accept Duskwood Mission I: Defeat Worgen
.accept 81731 >> Accept Duskwood Mission II: Defeat Ogres
.accept 81732 >> Accept Duskwood Mission III: Defeat Dragonkin
.accept 81733 >> Accept Duskwood Mission IV: Ogre Intelligence
.accept 81734 >> Accept Duskwood Mission V: Worgen Intelligence
.accept 81735 >> Accept Duskwood Mission VI: Dragon Intelligence
.accept 81736 >> Accept Duskwood Mission VII: Recover Shadowscythe
.accept 81737 >> Accept Duskwood Mission VIII: Recover Ogre Magi Text
.accept 81738 >> Accept Duskwood Mission IX: Recover Dragon Egg
.accept 81745 >> Accept Duskwood Mission XVI: Rescue Kroll Mountainshade
.accept 81746 >> Accept Duskwood Mission XVII: Rescue Alara Grovemender
.accept 81747 >> Accept Duskwood Mission XVII: Rescue Elenora Marshwalker
step
.goto Duskwood,45.6,51.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Falinar|r
.vendor >> |cRXP_BUY_Buy up to 5|r |T134718:0|t[Greater Healing Potions] |cRXP_BUY_from him if you want.|r |cRXP_WARN_These can only be used within the incursion zones|r
.target Quartermaster Falinar
step
#completewith next
+|cRXP_WARN_Click on the portal next to the questgiver|r to be phased into the Emerald Dream
step
.goto Duskwood,47.07,49.64,10 >> Head out of the Twilight Grove |cRXP_WARN_once inside the Emerald Dream|r
step
#sticky
#label Ogres
>>Kill |cRXP_ENEMY_Deranged Ogres|r and |cRXP_ENEMY_Demented Fire Weavers|r as you complete other objectives
.complete 81731,1
.complete 81731,2
.mob Deranged Ogre
.mob Demented Fire Weaver
step
.goto Duskwood,32.48,69.60
.gossipoption 122140 >> Talk to |cRXP_FRIENDLY_Elenora Marshwalker|r laying on the ground. She should start following you around
>>|cRXP_WARN_If she's not there that means someone else is escorting her, skip this step if u can't find her|r
.target Elenora Marshwalker
step
#sticky
#completewith next
+|cRXP_WARN_Be careful, if you die all of escort NPCs following you will return to where you picked them up and you will have to find them again|r
step
.goto Duskwood,35.67,80.35
>>Enter the cave and loot the [|cRXP_LOOT_Ogre Magi Text|r] laying on the platform in the middle of it
.complete 81737,1 
step
.goto Duskwood,36.62,83.75
>> Head deeper into the cave and talk to |cRXP_FRIENDLY_Dreamwarden Thalinar|r to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
.complete 81733,1
.target Dreamwarden Thalinar
.skipgossip
step
#sticky
#label Dragons
#requires Ogres
>>Kill |cRXP_ENEMY_Nightterror Whelps|r and |cRXP_ENEMY_Wyrmkin Terrorwalkers|r as you complete other objectives
.complete 81732,1
.complete 81732,2
.mob Nightterror Whelp
.mob Wyrmkin Terrorwalker
step
#requires Ogres
.goto Duskwood,48.92,72.97
>>Loot the [|cRXP_LOOT_Unhatched Green Dragon Egg|r] laying on the ground next to the tree stump
.complete 81738,1
step
.goto Duskwood,49.13,77.41
.gossipoption 122136 >> Talk to |cRXP_FRIENDLY_Alara Grovemender|r laying on the ground. She should start following you around
>>|cRXP_WARN_If she's not there that means someone else is escorting her, skip this step if u can't find her|r
.target Alara Grovemender
step
.goto Duskwood,50.6,77.0
>>Head into the farmhouse and talk to |cRXP_FRIENDLY_Dreamwarden Amalia|r to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
.complete 81735,1
.target Dreamwarden Amalia
.skipgossip
step
#sticky
#label Worgen
#requires Dragons
>>Kill |cRXP_ENEMY_Nightmare Runners|r and |cRXP_ENEMY_Nightmare Weavers|r as you complete other objectives
.complete 81730,1
.complete 81730,2
.mob Nightmare Runner
.mob Nightmare Weaver
step
#requires Dragons
.goto Duskwood,66.32,76.09
>>Head inside the barn and talk to |cRXP_FRIENDLY_Dreamwarden Dorilar|r to receive the |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
>>|cRXP_WARN_DO NOT ENTER DEEP INTO THE BARN. You can talk to the NPC through the inside wall by targetting him and then using your interact key|r
>>|cRXP_WARN_Be careful as the boss|r |cRXP_ENEMY_Amokarok|r |cRXP_WARN_is standing right next to the NPC|r
.complete 81734,1
.target Dreamwarden Dorilar
.skipgossip
step
.goto Duskwood,65.99,69.36
.gossipoption 122146 >> Talk to |cRXP_FRIENDLY_Kroll Mountainshade|r laying on the ground. He should start following you around
>>|cRXP_WARN_If he's not there that means someone else is escorting him, skip this step if u can't find him|r
.target Kroll Mountainshade
step
.goto Duskwood,65.60,67.30
>>Go to the second floor of the larger house and loot the box there for the |T135138:0|t[|cRXP_LOOT_Shadowscythe|r]
.complete 81736,1
step
#requires Worgen
.goto Duskwood,70.93,65.90
.goto Duskwood,44.60,65.80,50 >> Head west untill you reach an out of bounds area of the nightmare. Your screen will start glowing green and you will be teleported back near the entrance. |cRXP_WARN_Don't worry the NPCs you're escorting will follow you back|r
step
#completewith next
.goto 1431/0,-421.400,-10360.601,5 >> Head to the big nightmare portal. |cRXP_WARN_Do not die on the way or the escort quests will fail! If you safely reach the portal all three quests should complete|r
step
.goto 1431/0,-421.400,-10360.601
>>Make sure you got the credit for all of the escort quests. They should all complete by the time you reach the portal. |cRXP_WARN_Try moving back and forth a bit if you don't get the credit|r
.complete 81745,1
.complete 81746,1
.complete 81747,1
step
.goto Duskwood,46.63,47.90,5 >> Return to the portal you ussed to phase into the emerald dream and |cRXP_WARN_click it to phase back into the normal world|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Palandar|r
.goto Duskwood,45.6,51.2
.target Field Captain Palandar
.turnin 81730 >> Turn in Duskwood Mission I: Defeat Worgen
.turnin 81731 >> Turn in Duskwood Mission II: Defeat Ogres
.turnin 81732 >> Turn in Duskwood Mission III: Defeat Dragonkin
.turnin 81733 >> Turn in Duskwood Mission IV: Ogre Intelligence
.turnin 81734 >> Turn in Duskwood Mission V: Worgen Intelligence
.turnin 81735 >> Turn in Duskwood Mission VI: Dragon Intelligence
.turnin 81736 >> Turn in Duskwood Mission VII: Recover Shadowscythe
.turnin 81737 >> Turn in Duskwood Mission VIII: Recover Ogre Magi Text
.turnin 81738 >> Turn in Duskwood Mission IX: Recover Dragon Egg
.turnin 81745 >> Turn in Duskwood Mission XVI: Rescue Kroll Mountainshade
.turnin 81746 >> Turn in Duskwood Mission XVII: Rescue Alara Grovemender
.turnin 81747 >> Turn in Duskwood Mission XVII: Rescue Elenora Marshwalker
step
.goto Duskwood,28.864,30.765
>>Click |cRXP_PICK_Eliza's Grave Dirt|r to summon |cRXP_ENEMY_Eliza|r
>>Kill |cRXP_ENEMY_Eliza|r. Loot her for the |cRXP_LOOT_Embalmer's Heart|r
>>|cRXP_ENEMY_Eliza|r |cRXP_WARN_will cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] |cRXP_WARN_along with summoning multiple|r |cRXP_ENEMY_Guards|r
>>|cRXP_WARN_You can avoid dealing with |cRXP_ENEMY_Eliza's Guards|r by using the Wagon to jump on top of |cRXP_FRIENDLY_Abercrombie's|r Hut|r << Hunter/Mage/Warlock/Priest
>>|cRXP_WARN_You can evade |cRXP_ENEMY_Eliza's Guards|r by using the Wagon to jump on top of Abercrombie's Hut. |cRXP_ENEMY_Eliza|r will continue to cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_at you if you do this while she's alive|r << Warrior/Rogue/Druid/Paladin
.complete 253,1 
.mob Eliza
step
.goto Duskwood,19.59,37.28
>>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
>>|cRXP_WARN_This quest can be difficult. You may skip this step and come back at a higher level if you wish|r
.complete 228,1 
.unitscan Mor'Ladim
step << Druid
#xprate >1.99
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <30,1 
.cooldown item,6948,>0,1 
step << Druid
#xprate >1.99
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <30,1 
.cooldown item,6948,>0,1 
step
#completewith DShireHSTwo
.hs >> Hearth to Darkshire
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
.subzoneskip 42 
step
#completewith next
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Darkshire >> Fly back to Darkshire if your HS is on cooldown
.target Thor
.subzoneskip 42 
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 228 >> Turn in Mor'Ladim
.isQuestComplete 228
.target Commander Althea Ebonlocke
step
.goto Duskwood,73.59,46.89
.isQuestTurnedIn 228
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.accept 229 >> Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 253 >> Turn in Bride of the Embalmer
.isQuestComplete 253
.target Lord Ello Ebonlocke
step
.destroy 3248 >>Throw away the |T134939:0|t[Translated Letter from The Embalmer] you no longer need it
step
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
>>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols around in Darkshire|r
.turnin 229 >> Turn in The Daughter Who Lived
.accept 231 >> Accept A Daughter's Love
.isQuestTurnedIn 228
.target Watcher Ladimore
step
#label DShireHSTwo
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.turnin 222 >> Turn in Worgen in the Woods
.accept 223 >> Accept Worgen in the Woods
.target Calor
step
.goto Duskwood,75.32,49.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
.turnin 223 >> Turn in Worgen in the Woods
.target Jonathan Carevin
step
.abandon 93 >> Abandon Dusky Crab Cakes
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.goto Duskwood,77.49,44.28
.fly Stormwind>> Fly to Stormwind
.target Felicia Maline
step << Mage
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << Mage
.goto Stormwind City,39.843,81.446
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Malin|r
.accept 690 >> Accept Malin's Request
.target Archmage Malin
step << Mage
.goto Stormwind City,40.633,91.867
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Connor Rivers|r
.accept 1301 >> Accept James Hyal
.target Connor Rivers
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1245 >> Turn in The Missing Diplomat
.accept 1246 >> Accept The Missing Diplomat
.target Elling Trias
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Warrior
.goto Stormwind City,78.680,45.802
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu Shen|r
.accept 1718 >> Accept The Islander
.target Wu Shen
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step
#completewith next
.goto Stormwind City,70.549,44.887
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dashel Stonefist|r
>>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_will become hostile after accepting the follow up quest. Defeat him|r
.turnin 1246 >> Turn in The Missing Diplomat
.accept 1447,1 >> Accept The Missing Diplomat
.target Dashel Stonefist
step
.goto Stormwind City,70.549,44.887
>>Defeat |cRXP_ENEMY_Dashel Stonefist|r
>>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_will also attack with 2 |cRXP_ENEMY_Old Town Thugs|r. Ignore them and focus on|r |cRXP_ENEMY_Dashel Stonefist|r
.complete 1447,1 
.mob Dashel Stonefist
step
.goto Stormwind City,70.549,44.887
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dashel Stonefist|r
.turnin 1447 >> Turn in The Missing Diplomat
.accept 1247 >> Accept The Missing Diplomat
.target Dashel Stonefist
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1247 >> Turn in The Missing Diplomat
.accept 1248 >> Accept The Missing Diplomat
.target Elling Trias
step << !Mage
#xprate <1.2
.goto Stormwind City,43.088,80.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1078 >> Turn in Retrieval for Mauren
.isOnQuest 1078
.target Collin Mauren
step << !Mage
.goto Stormwind City,39.843,81.446
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Malin|r
.accept 690 >> Accept Malin's Request
.target Archmage Malin
step << !Mage
.goto Stormwind City,40.633,91.867
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Connor Rivers|r
.accept 1301 >> Accept James Hyal
.target Connor Rivers
step << Paladin
#season 2
#completewith next
.goto StormwindClassic,29.04,74.28,10,0
.goto StormwindClassic,27.40,76.48,10,0
.goto StormwindClassic,27.14,77.83,5,0
.goto StormwindClassic,26.12,77.23,8 >>Travel toward |cRXP_FRIENDLY_Ursula Deline|r inside The Slaughtered Lamb
.train 410014,1
step << Paladin
#season 2
.goto StormwindClassic,26.12,77.23
>>Talk to |cRXP_FRIENDLY_Ursula Deline|r
.turnin 78091 >> Turn in Earning Your Salt
.accept 78092 >> Accept It Must Be Destroyed
.target Ursula Deline
.train 410014,1
.isQuestComplete 78091
step << Paladin
#season 2
.goto StormwindClassic,26.12,77.23
>>Talk to |cRXP_FRIENDLY_Ursula Deline|r
.accept 78092 >> Accept It Must Be Destroyed
.target Ursula Deline
.train 410014,1
.isQuestTurnedIn 78091
step
#season 0,1
#xprate <1.99 << !Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step
#season 2
#xprate <1.99 << !Paladin !Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
.isQuestTurnedIn 78092 << Paladin
step
#xprate <1.99
.goto Stormwind City,26.439,78.629
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
.turnin 335 >> Turn in A Noble Brew
.accept 336 >> Accept A Noble Brew
.target Zardeth of the Black Claw
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto Stormwind City,25.255,78.591
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
.accept 1798 >> Accept Seeking Strahad
.target Gakin the Darkbinder
step << Warlock
#xprate <1.99
.goto Stormwind City,25.283,78.223
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Demisette Cloyce|r
>>|cRXP_WARN_Skip this step if you picked up the same quest from Ironforge earlier|r
.accept 4738 >> Accept In Search of Menara Voidrender
.target Demisette Cloyce
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Warrior
.goto Stormwind City,43.8,43.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agustus Moulaine|r
>>Buy an |T133071:0|t[Augmented Chain Helm] from him Equip it and engrave |T132344:0|t[|cRXP_FRIENDLY_Endless Rage|r] on it.
>>|cRXP_WARN_Skip this step if you already have a helmet|r|cRXP_LOOT_|r
.collect 3891,1
.target Agustus Moulaine
step << Warrior
#completewith next
.engrave 1 >>|cRXP_WARN_Engrave your helmet |cRXP_WARN_with|r |T132344:0|t[|cRXP_FRIENDLY_Endless Rage|r]
step
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
>>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
.accept 337 >> Accept An Old History Book
.turnin 337 >> Turn in An Old History Book
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step
.isQuestTurnedIn 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
.accept 538 >> Accept Southshore
.target Milton Sheaf
step << Mage
#som
#level 34
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
>>Teleport back to the Stormwind Trainer and Train your level 34 class spells if you didn't earlier
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r and |cRXP_FRIENDLY_Zggi|r
.accept 397 >> Accept You Have Served Us Well
.goto Stormwind City,26.439,78.629
.turnin 397 >> Turn in You Have Served Us Well
.goto Stormwind City,26.537,78.660
.target Zardeth of the Black Claw
.target Zggi
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << !Mage
#completewith FlytoSouthshoreA
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the Tram|r
step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Teleport to Ironforge
step
#xprate >1.99
.goto Ironforge,72.74,94.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Longbeard|r
.accept 1179 >>Accept The Brassbolts Brothers
.target Pilot Longbeard
step << Hunter
#xprate >1.99
.goto Ironforge,61.442,88.232,15,0
.goto Ironforge,61.549,89.432
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalgus Thunderfist|r downstairs
>>|cRXP_BUY_Buy a|r |T134402:0|t[|cRXP_FRIENDLY_Heavy Quiver|r]
.collect 7371,1
.target Thalgus Thunderfist
step << !Mage
#xprate >1.99
.goto Ironforge,18.14,51.45
>>Talk to |cRXP_FRIENDLY_Innkeeper Firebrew|r inside
.home >> Set your Hearthstone to Ironforge
.target Innkeeper Firebrew
step
.dungeon Gnomer
#season 0,1
#completewith next
.goto Dun Morogh,24.2,39.1,0
+Start Looking for a Gnomeregan group
step
.dungeon Gnomer
#season 0,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.goto Wetlands,9.49,59.70
.fly Ironforge >>Fly to Ironforge
.target Shellei Brondir
.zoneskip Ironforge
step
.dungeon Gnomer
#season 0,1
#completewith StartGnomer
.goto Dun Morogh,24.2,39.1,0
+Start Looking for a Gnomeregan group
.subzoneskip 133
.subzoneskip 721,2
step
.dungeon Gnomer
#season 0,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnoarn|r, |cRXP_FRIENDLY_Tinkmaster Overspark|r, |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Master Mechanic Castpipe|r and |cRXP_FRIENDLY_Klockmort Spannerspan|r
.accept 2927 >> Accept The Day After
.goto Ironforge,69.182,50.556
.turnin -2923 >> Turn in Tinkmaster Overspark
.accept 2922 >> Accept Save Techbot's Brain!
.goto Ironforge,69.540,50.325
.accept 2929 >> Accept The Grand Betrayal
.goto Ironforge,68.743,48.969
.accept 2930 >> Accept Data Rescue
.goto Ironforge,69.823,48.101
.accept 2924 >> Accept Essential Artificials
.goto Ironforge,67.925,46.101
.target Gnoarn
.target Tinkmaster Overspark
.target High Tinker Mekkatorque
.target Master Mechanic Castpipe
.target Klockmort Spannerspan
step
.dungeon Gnomer
#season 0,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
.goto Ironforge,18.10,51.60
.home >> Set your Hearthstone to Ironforge
.target Innkeeper Firebrew
step
.dungeon Gnomer
#season 0,1
#completewith next
.goto Dun Morogh,53.5,34.9
.zone Dun Morogh>>Exit Ironforge
step
.dungeon Gnomer
#season 0,1
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
.turnin 2927 >> Turn in The Day After
.accept 2926 >> Accept Gnogaine
.target Ozzie Togglevolt
step
.dungeon Gnomer
#season 0,1
#label StartGnomer
#completewith next
.goto Dun Morogh,24.35,39.78,0
.goto Dun Morogh,24.35,39.78,30,0
.goto 1415,43.42,53.81,45 >> Travel to Gnomeregan
step
.dungeon Gnomer
#season 0,1
.goto 1415,43.40,53.41,50,0
.goto 1415,43.13,53.36,50,0
.goto 1415,43.38,52.94,50,0
.goto 1415,43.40,53.41
.use 9283 >>|cRXP_WARN_Use the|r |T132788:0|t[Empty Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Invader|r or|r |cRXP_ENEMY_Irradiated Pillager|r
>>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Invader|r or |cRXP_ENEMY_Irradiated Pillager|r must be ALIVE when you use it|r
>>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
.complete 2926,1 
.mob Irradiated Invader
.mob Irradiated Pillager
.isOnQuest 2926
step
.dungeon Gnomer
#season 0,1
#completewith next
.goto Dun Morogh,46.005,48.637,40 >> Travel to |cRXP_FRIENDLY_Ozzie Togglevolt|r in Kharanos
>>|cRXP_WARN_You will get a follow up for when you go inside the dungeon|r
.isOnQuest 2926
step
.dungeon Gnomer
#season 0,1
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
.turnin 2926 >> Turn in Gnogaine
.target Ozzie Togglevolt
.isQuestComplete 2926
step
.dungeon Gnomer
#season 0,1
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
.accept 2962 >> Accept The Only Cure is More Green Glow
.target Ozzie Togglevolt
.isQuestTurnedIn 2926
step
.dungeon Gnomer
#season 0,1
#completewith next
.goto Dun Morogh,24.35,39.78,0
.goto Dun Morogh,24.35,39.78,30,0
.goto 1415,43.42,53.81,45 >> Travel to Gnomeregan
.isOnQuest 2962
step
.dungeon Gnomer
#season 0,1
.goto 1415,43.37,53.11,70,0
.goto 1415,43.10,52.81
>>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
.collect 9279,1,2930,1,1 
>>Kill |cRXP_ENEMY_Techbot|r. Loot him for his |cRXP_LOOT_Memory Core|r
>>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
.complete 2922,1 
.mob Techbot
.isOnQuest 2922
step
.dungeon Gnomer
#season 0,1
.goto 1415,43.40,53.41,50,0
.goto 1415,43.13,53.36,50,0
.goto 1415,43.38,52.94,50,0
.goto 1415,43.40,53.41
>>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
.collect 9279,1 
>>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
.isOnQuest 2930
step
.dungeon Gnomer
#season 0,1
.goto 1415,43.364,52.892,-1
.goto 1415,43.411,52.898,-1
.goto 1415,43.402,52.672,-1
.goto 1415,43.430,52.675,-1
>>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_White Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-A|r
>>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
.collect 9280,1,2930,1 
.itemcount 9279,1 
.skipgossip
.isOnQuest 2930
step
.dungeon Gnomer
#season 0,1
.goto 1415,43.17,53.36,40,0
.goto 1415,42.78,53.81
.subzone 721,2 >> Enter the Gnomeregan instance portal
step
.dungeon Gnomer
#season 0,1
#completewith Thermaplugg
>>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
.complete 2928,1 
.isOnQuest 2928
step
.dungeon Gnomer
#season 0,1
>>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Yellow Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-B|r
>>The console looking machine is located at the gnomish safe zone at the bottom floor, next to the big circular room where the slimes are located
.collect 9282,1,2930,1 
.itemcount 9280,1 
.skipgossip
.isOnQuest 2930
step
.dungeon Gnomer
#season 0,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernobee|r
>>|cRXP_WARN_This will start an escort quest. |cRXP_FRIENDLY_Kernobee|r spawns randomly in The Dormitory, right outside of the gnomish safe zone|r
.accept 2904 >> Accept A Fine Mess
.unitscan Kernobee
step
.dungeon Gnomer
#season 0,1
>>Escort |cRXP_FRIENDLY_Kernobee|r back to the start of the dungeon
.complete 2904,1 
.isOnQuest 2904
step
.dungeon Gnomer
#season 0,1
.use 9364 >>|cRXP_WARN_Use the|r |T132788:0|t[Heavy Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Slime|r, |cRXP_ENEMY_Irradiated Lurker|r or|r |cRXP_ENEMY_Irradiated Horror|r
>>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Slime|r, |cRXP_ENEMY_Irradiated Lurker|r or |cRXP_ENEMY_Irradiated Horror|r must be ALIVE when you use it|r
>>|cRXP_WARN_Note: You must turn this quest in within 2 hours of acquiring the|r |T136006:0|t[High Potency Radioactive Fallout]
.complete 2962,1 
.mob Irradiated Slime
.mob Irradiated Lurker
.mob Irradiated Horror
.isOnQuest 2962
step
.dungeon Gnomer
#season 0,1
#completewith Thermaplugg
>>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
.complete 2924,1 
.isOnQuest 2924
step
.dungeon Gnomer
#season 0,1
>>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Blue Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-C|r
>>The Punchograph is located on the suspended platform right next to the |cRXP_ENEMY_Electrocutioner 6000|r
.collect 9281,1,2930,1 
.itemcount 9282,1 
.skipgossip
.isOnQuest 2930
.unitscan Electrocutioner 6000
step
.dungeon Gnomer
#season 0,1
>>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Red Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-D|r
.complete 2930,1 
.itemcount 9281,1 
.skipgossip
.isOnQuest 2930
step
.dungeon Gnomer
#season 0,1
#label Thermaplugg
>>Kill |cRXP_ENEMY_Mekgineer Thermaplugg|r
.complete 2929,1 
.isOnQuest 2929
step
.dungeon Gnomer
#season 0,1
#completewith Finished
>>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
>>If you still haven't finished this quest, go back to places where you looted them before, since they respawn after a few minutes
.complete 2924,1 
.isOnQuest 2924
step
.dungeon Gnomer
#season 0,1
#completewith Finished
>>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
.complete 2928,1 
.isOnQuest 2928
step
.dungeon Gnomer
#season 0,1
>>|cRXP_WARN_Use the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to start the quest|r
.accept 2945 >> Accept Grime-Encrusted Ring
.collect 9326,1,2945 
.itemcount 9326,1
.use 9326
step
.dungeon Gnomer
#season 0,1
>>|cRXP_WARN_Take the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to |cRXP_PICK_The Sparklematic 5200|r in The Clean Zone|r
*You will have to back track to The Clean Zone near the instance entrance, make sure your teamates are there to help you on your trip back
.turnin 2945 >> Turn in Grime-Encrusted Ring
.itemcount 9326,1 
step
.dungeon Gnomer
#season 0,1
>>Click the |cRXP_PICK_The Sparklematic 5200|r one more time
.accept 2947 >> Accept Return of the Ring
.isQuestTurnedIn 2945
step
.dungeon Gnomer
#season 0,1
.hs >> Hearth to Ironforge
.zoneskip Dun Morogh
.zoneskip Ironforge
step
.dungeon Gnomer
#season 0,1
#completewith next
.goto Dun Morogh,53.5,34.9
.zone Dun Morogh>>Exit Ironforge
step 
.dungeon Gnomer
#season 0,1
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
.turnin 2962 >> Turn in The Only Cure is More Green Glow
.target Ozzie Togglevolt
.isQuestComplete 2962
step
.dungeon Gnomer
#season 0,1
#completewith next
.goto Dun Morogh,47.58,41.58,40,0
.goto Dun Morogh,50.19,40.79,20,0
.goto Ironforge,14.90,87.10,40,0
.zone Ironforge >> Travel to Ironforge
step
.dungeon Gnomer
#season 0,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
.turnin 2947 >> Turn in Return of the Ring
.accept 2948 >> Accept Gnome Improvement
.target Talvash del Kissel
.isOnQuest 2947
step
.dungeon Gnomer
#season 0,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
>>|cRXP_WARN_If you are able to obtain a|r |T133215:0|t[Silver Bar] |cRXP_WARN_and a|r |T134105:0|t[Moss Agate] |cRXP_WARN_finish this quest. If not, abandon it|r
.collect 2842,1,2948,1 
.collect 1206,1 
.turnin 2948,2948,1 >> Turn in Gnome Improvement
.target Talvash del Kissel
.isOnQuest 2948
step
.dungeon Gnomer
#season 0,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r, |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Master Mechanic Castpipe|r and |cRXP_FRIENDLY_Klockmort Spannerspan|r
.turnin -2922,1 >> Turn in Save Techbot's Brain!
.goto Ironforge,69.540,50.325
.turnin -2929,1 >> Turn in The Grand Betrayal
.goto Ironforge,68.743,48.969
.turnin -2930,1 >> Turn in Data Rescue
.goto Ironforge,69.823,48.101
.turnin -2924,1 >> Turn in Essential Artificials
.goto Ironforge,67.925,46.101
.target Tinkmaster Overspark
.target High Tinker Mekkatorque
.target Master Mechanic Castpipe
.target Klockmort Spannerspan
step
.dungeon Gnomer
#season 0,1
.abandon 2948 >> Abandon Gnome Improvement
step << !Hunter
.dungeon Gnomer
#season 0,1
.goto Ironforge,55.51,47.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Wetlands>> Fly to Wetlands
.target Gryth Thurden
.zoneskip Wetlands
step
#era/som
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_and a|r |T132913:0|t[Bolt of Woolen Cloth] |cRXP_BUY_to complete an optional quest coming up in Hillsbrad Foothills|r
>>|cRXP_BUY_Buy 4|r |T134577:0|t[Lesser Bloodstone Ore] |cRXP_BUY_to complete an optional quest coming up in Stranglethorn Vale|r
>>|cRXP_WARN_You may also craft the|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_with Leatherworking|r
>>|cRXP_WARN_Skip this step if you cannot acquire them|r
.collect 3719,1,565,1 
.collect 2997,1,565,1 
.collect 4278,4,627,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
.skill leatherworking,<150,1
step
#era/som
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_and a|r |T132913:0|t[Bolt of Woolen Cloth] |cRXP_BUY_to complete an optional quest coming up in Hillsbrad Foothills|r
>>|cRXP_BUY_Buy 4|r |T134577:0|t[Lesser Bloodstone Ore] |cRXP_BUY_to complete an optional quest coming up in Stranglethorn Vale|r
>>|cRXP_WARN_Skip this step if you cannot acquire them|r
.collect 3719,1,565,1 
.collect 2997,1,565,1 
.collect 4278,4,627,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
.skill leatherworking,150,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.50,47.70
.fly Wetlands>> Fly to Wetlands
.target Gryth Thurden
.zoneskip Wetlands
]]);
