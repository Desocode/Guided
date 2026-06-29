RXPGuides.RegisterGuide([[
#version 23
#season 2
#group RestedXP Alliance 50-60
#classic
#tbc
#mop
<< Alliance
#name 58-60 Western/Eastern Plaguelands SoD
#displayname 56-60 Western/Eastern Plaguelands
step
.goto Ironforge,55.492,47.728
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Southshore>> Fly to Southshore
.target Gryth Thurden
step
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Anderson|r
.home >> Set your Hearthstone to Southshore
.target Innkeeper Anderson
step
#hardcoreserver
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Western Plaguelands >> Fly to Western Plaguelands
.target Darla Harris
.subzoneskip 3486 
step
#softcoreserver
#completewith next
.goto Alterac Mountains,39.461,81.230,100 >> Travel towards |cRXP_FRIENDLY_Lieutenant Haggerdin|r in Alterac Mountains
step
#softcoreserver
.isOnQuest 7261
.goto Alterac Mountains,39.461,81.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Haggerdin|r
.turnin 7261 >> Turn in The Sovereign Imperative
.target Lieutenant Haggerdin
step
#softcoreserver
#completewith TravelWPL
.goto Western Plaguelands,42.702,84.031
.zone Western Plaguelands >> Travel to Western Plaguelands
step
#phase 1-3 << Paladin
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step << Paladin
#phase 4-6
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
.turnin 8415 >> Turn in Chillwind Point
.accept 8414 >> Accept Dispelling Evil
.target Commander Ashlam Valorfist
step
.goto Western Plaguelands,42.967,83.546
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
.turnin 6028 >> Turn in The Everlook Report
.target Argent Officer Pureheart
.isOnQuest 6028
step
.goto Western Plaguelands,42.968,83.546
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
.accept 5401 >> Accept Argent Dawn Commission
.turnin 5401 >> Turn in Argent Dawn Commission
.target Argent Officer Pureheart
step
#completewith ADC
.cast 17670 >> |cRXP_WARN_Equip the|r |T133440:0|t[Argent Dawn Commission] |cRXP_WARN_to start collecting|r |T133447:0|t[Scourgestones]
.use 12846
step << Warlock
#season 2
#loop
#sticky
#label PlaguedSoulShard
.goto Western Plaguelands,50.6,77.6
>>|cRXP_WARN_Cast|r |T136163:0|t[Drain Soul] |cRXP_WARN_on |cRXP_ENEMY_Skeletal Flayers|r until you have received 3|r |cRXP_LOOT_Plagued Soul Shards|r
>>|cRXP_WARN_These are necessary to unlock a very powerful rune:|r |T136226:0|t[Mark of Chaos] |cRXP_WARN_don't skip this step|r
.collect 225929,3
.mob Skeletal Flayer
.train 440924,1
step
.goto Western Plaguelands,48.91,80.84,70,0
.goto Western Plaguelands,50.01,76.90
>>Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Slavering Ghouls|r
.complete 5092,1 
.complete 5092,2 
.mob Skeletal Flayer
.mob Slavering Ghoul
step
#requires PlaguedSoulShard << Warlock
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5092 >> Turn in Clear the Way
.target Commander Ashlam Valorfist
step << Warlock
#season 2
.goto Western Plaguelands,43.361,84.143 << Alliance
>>|cRXP_WARN_Turn in your |cRXP_LOOT_Plagued Soul Shards|r to |cRXP_FRIENDLY_Pixi Pilfershard|r at Chillwind Camp to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mark of Chaos|r] << Alliance
.collect 225688,1
.target Pixi Pilfershard << Alliance
.train 440924,1
step << Warlock
#season 2
.train 440924 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mark of Chaos|r] |cRXP_WARN_to learn|r |T136226:0|t[Mark of Chaos]
.use 225688
step
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5215 >> Accept The Scourge Cauldrons
.accept 5097 >> Accept All Along the Watchtowers
.target Commander Ashlam Valorfist
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5215 >> Turn in The Scourge Cauldrons
.accept 5216 >> Accept Target: Felstone Field
.target High Priestess MacDonnell
step << Mage
#season 2
#sticky
.train 401764,1
#completewith Felstone
#label FelstoneNovice
.goto Western Plaguelands,36.8,54.7,0
>>Look for a frozen |cRXP_FRIENDLY_Novice Frost Mage|r in the marked location on the Felstone Field
>>|cRXP_WARN_Using Fire spells, unfreeze the|r |cRXP_FRIENDLY_Novice Frost Mage|r|cRXP_WARN_. DO NOT KILL HIM!|r
>>|cRXP_WARN_Afterwards cast|r |T136082:0|t[Remove Lesser Curse] |cRXP_WARN_on them and talk to them to receive their|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r] you will need it later to unlock the |T135813:0|t[Overheat] rune
.collect 225938,1
.mob Novice Frost Mage
step
#completewith next
.goto Western Plaguelands,38.05,54.59,12 >>Go inside the house
step
#label Better
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r through the ground from the 1st floor
.accept 5021 >>Accept Better Late Than Never
.target Janice Felstone
step
#completewith next
.goto Western Plaguelands,38.05,54.56,8,0
>>Exit the house
.goto Western Plaguelands,38.58,55.33,6 >>Go inside the barn
step
#label BLTN
.goto Western Plaguelands,38.72,55.24
>>Click |cRXP_PICK_Janice's Parcel|r on the ground
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_You can do this from behind the wall to avoid aggroing anything inside|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r outside the barn. If you do, run away|r
.turnin 5021 >>Turn in Better Late Than Never
.accept 5022 >>Accept Better Late Than Never
step
.goto Western Plaguelands,37.015,57.145
>>Kill |cRXP_ENEMY_Cauldron Lord Bilemaw|r. Loot him for the |cRXP_LOOT_Felstone Field Cauldron Key|r
>>|cRXP_ENEMY_Cauldron Lord Bilemaw|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
.complete 5216,1 
.unitscan Cauldron Lord Bilemaw
step
.goto Western Plaguelands,37.194,56.860
>>Click on the |cRXP_PICK_Scourge Cauldron|r
.turnin 5216 >> Turn in Target: Felstone Field
.accept 5217 >> Accept Return to Chillwind Camp
step
#label Felstone
#requires FelstoneNovice << Mage
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5217 >> Turn in Return to Chillwind Camp
.accept 5219 >> Accept Target: Dalson's Tears
.target High Priestess MacDonnell
step
#label TravelWPL
.goto Western Plaguelands,43.419,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
.accept 5903 >> Accept A Plague Upon Thee
.target Nathaniel Dumah
step
.isQuestTurnedIn 6183
.goto Western Plaguelands,43.607,84.506
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flint Shadowmore|r
.turnin 6184 >> Turn in Flint Shadowmore
.accept 6185 >> Accept The Eastern Plagues
.target Flint Shadowmore
step
#completewith next
.abandon 5601 >> Abandon Sister Pamela if you have it. You cannot accept Little Pamela if you have the quest Sister Pamela. Little Pamela gives more XP
step
.goto Western Plaguelands,49.2,78.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marlene Redpath|r
>>|cRXP_FRIENDLY_Marlene Redpath|r may also be upstairs
.accept 5142 >> Accept Little Pamela
.target Marlene Redpath
step
#label ADC
.goto Western Plaguelands,46.681,71.135,-1
.goto Western Plaguelands,46.558,71.156,-1
.use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,4 
step
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time|r
.accept 4984 >> Accept The Wildlife Suffers Too
.target Mulgris Deepriver
step
#completewith DalsonCauldron
.goto Western Plaguelands,49.2,58.4,0
.goto Western Plaguelands,51.6,47.6,0
.goto Western Plaguelands,43.0,48.2,0
.goto Western Plaguelands,43.4,57.8,0
.goto Western Plaguelands,46.6,40.4,0
>>Kill |cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Carrion Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Wolves|r to spawn|r
.complete 4984,1 
.unitscan Diseased Wolf
step << Paladin
#season 2
.goto Western Plaguelands,44.6,46.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Knight|r
.gossip 227519,1 >> Go through his dialogue
.target Fallen Knight
step << Paladin
#season 2
.goto Western Plaguelands,47.5,50.4
>>Enter the barn next to the |cRXP_FRIENDLY_Fallen Knight|r and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r
.accept 83808 >> Accept In a Bind
.target Squire Cuthbert
step << Paladin
#season 2
.goto Western Plaguelands,47.5,50.4
.goto Western Plaguelands,45.7,53.9
>>Loot [|cRXP_PICK_Squire Cuthbert's Sword|r] laying on the field nearby
.complete 83808,1
step << Paladin
#season 2
>>Go back to the barn and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r
.turnin 83808 >> Turn in In a Bind
.accept 83935 >> Accept Clearing the Path
.target Squire Cuthbert
step << Paladin
#season 2
#sticky
#completewith SquireEnd
#label ClearingThePath
.goto Western Plaguelands,45.7,53.9
>>Kill |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Skeletal Terrors|r and |cRXP_ENEMY_Rotting Cadavers|r
.complete 83935,1 
.complete 83935,2 
.complete 83935,3 
.mob Blighted Zombie
.mob Skeletal Terror
.mob Rotting Cadaver
step
.goto Western Plaguelands,47.796,50.671
>>|cRXP_WARN_Enter the Dalson's Tears Barn|r
>>Click |cRXP_PICK_Mrs. Dalson's Diary|r on the ground
.accept 5058 >> Accept Mrs. Dalson Diary
.turnin 5058 >> Turn in Mrs. Dalson Diary
step << Mage
#season 2
#sticky
.train 401764,1
#completewith Dalsons
#label DalsonsNovice
.goto Western Plaguelands,45.1,51.9,0
>>Look for a frozen |cRXP_FRIENDLY_Novice Frost Mage|r in the marked location on the Dalson's Tears
>>|cRXP_WARN_Using Fire spells, unfreeze the|r |cRXP_FRIENDLY_Novice Frost Mage|r|cRXP_WARN_. DO NOT KILL HIM!|r
>>|cRXP_WARN_Afterwards cast|r |T136082:0|t[Remove Lesser Curse] |cRXP_WARN_on them and talk to them to receive their|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r] you will need it later to unlock the |T135813:0|t[Overheat] rune
.collect 225939,1
.mob Novice Frost Mage
step
.goto Western Plaguelands,47.86,49.88,25,0
.goto Western Plaguelands,48.48,51.56,25,0
.goto Western Plaguelands,47.39,51.77,25,0
.goto Western Plaguelands,46.64,49.21,25,0
.goto Western Plaguelands,47.86,49.88
>>Kill the |cRXP_LOOT_Wandering Skeleton|r. Loot it for the |cRXP_LOOT_Dalson Outhouse Key|r
>>|cRXP_WARN_The |cRXP_LOOT_Wandering Skeleton|r patrols around the Dalson's Tear Barn and House|r
.collect 12738,1,5060,1 
.unitscan Wandering Skeleton
step
#completewith next
.goto Western Plaguelands,48.109,49.654
>>Click the |cRXP_PICK_Outhouse|r to summon |cRXP_ENEMY_Farmer Dalson|r
.turnin 5059 >> Turn in Locked Away
step
.goto Western Plaguelands,48.115,49.814
>>Kill |cRXP_ENEMY_Farmer Dalson|r. Loot him for the |cRXP_LOOT_Dalson Cabinet Key|r
.collect 12739,1,5060,1 
.mob Farmer Dalson
step
.goto Western Plaguelands,47.353,49.626
>>Click the |cRXP_PICK_Locked Cabinet|r up stairs in the house
.turnin 5060 >> Turn in Locked Away
step
.goto Western Plaguelands,46.156,52.427
>>Kill |cRXP_ENEMY_Cauldron Lord Malvinious|r. Loot him for the |cRXP_LOOT_Dalson's Tears Cauldron Key|r
>>|cRXP_ENEMY_Cauldron Lord Malvinious|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
.complete 5219,1 
.unitscan Cauldron Lord Malvinious
step
#label DalsonCauldron
.goto Western Plaguelands,46.176,52.009
>>Click on the |cRXP_PICK_Scourge Cauldron|r
.turnin 5219 >> Turn in Target: Dalson's Tears
.accept 5220 >> Accept Return to Chillwind Camp
step << Paladin
#season 2
#requires ClearingThePath
.goto Western Plaguelands,47.5,50.4
>>Go back to the barn and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r
.turnin 83935 >> Turn in Clearing the Path
.accept 83822,1 >> Accept The Fallen Knight, |cRXP_WARN_this is an escort quest|r
.target Squire Cuthbert
step << Paladin
#season 2
.goto Western Plaguelands,44.6,46.6
>>Escort |cRXP_FRIENDLY_Squire Cuthbert|r back to the Fallen Knight and help him burn the corpse
.complete 83822,1
step << Paladin
#season 2
.goto Western Plaguelands,44.6,46.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r
.turnin 83822 >> Turn in The Fallen Knight
.accept 83936 >> Accept Dalton's Quest
.target Squire Cuthbert
step << Paladin
#season 2
.goto Western Plaguelands,44.6,46.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r and go through his dialogue
.complete 83936,1
.target Squire Cuthbert
step << Paladin
#season 2
#label SquireEnd
.goto Western Plaguelands,44.6,46.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r and go through his dialogue. Turning in this quest will train you on how to engrave |T236260:0|t[|cRXP_FRIENDLY_Righteous Vengeance|r]
>>You will also receive |T237377:0|t[|cFF0070FFDalton's Horn|r] which you will need in order to unlock the rune of |T252188:0|t[|cRXP_FRIENDLY_Shock and Awe|r]
.turnin 83936 >> Turn in Dalton's Quest
.target Squire Cuthbert
step << Paladin
#season 2
#sticky
#label SquireLvlup
>>|cRXP_WARN_Use the|r |T237377:0|t[|cFF0070FFDalton's Horn|r] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Squire Cuthbert|r |cRXP_WARN_and keep him around as you're questing. Eventually he will level up and give you a free turn-in quest|r
.accept 83823 >> Accept a Lesson in Violence
.turnin 83823 >> Turn in a Lesson in Violence
.use 226122
step << Paladin
#season 2
#sticky
#requires SquireLvlup
#label SquireLvlupTwo
#completewith PlaguelandsEnd
.goto Eastern Plaguelands,78.6,47.6
>>|cRXP_WARN_Use the|r |T237377:0|t[|cFF0070FFDalton's Horn|r] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Squire Cuthbert|r |cRXP_WARN_and keep killing mobs untill he levels up again. Once he does he will give you another free turn-in quest and another quest to find a lich named|r |cRXP_ENEMY_Arkonos the Cursed|r
.accept 84008 >> Accept a Lesson in Grace
.turnin 84008 >> Turn in a Lesson in Grace
.accept 84017 >> Accept A Time to Kill
.use 226523
step
#label Dalsons
#requires DalsonsNovice << Mage
.goto Western Plaguelands,49.2,58.4,0
.goto Western Plaguelands,51.6,47.6,0
.goto Western Plaguelands,43.0,48.2,0
.goto Western Plaguelands,43.4,57.8,0
.goto Western Plaguelands,49.2,58.4,70,0
.goto Western Plaguelands,51.6,47.6,70,0
.goto Western Plaguelands,43.0,48.2,70,0
.goto Western Plaguelands,43.4,57.8,70,0
.goto Western Plaguelands,46.6,40.4,70,0
.goto Western Plaguelands,49.2,58.4,70,0
.goto Western Plaguelands,51.6,47.6,70,0
.goto Western Plaguelands,43.0,48.2,70,0
.goto Western Plaguelands,43.4,57.8,70,0
.goto Western Plaguelands,46.6,40.4
>>Kill |cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Carrion Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Wolves|r to spawn|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,44.217,63.319,-1
.goto Western Plaguelands,44.247,63.131,-1
.use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,3 
step
.goto Western Plaguelands,42.326,66.105,-1
.goto Western Plaguelands,42.422,66.222,-1
.use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,2 
step
.goto Western Plaguelands,40.116,71.561,-1
.goto Western Plaguelands,40.038,71.713,-1
.use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,1 
step
#completewith next
.subzone 3197 >> Travel to Chillwind Camp
step
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5097 >> Turn in All Along the Watchtowers
.target Commander Ashlam Valorfist
.accept 5533 >> Accept Scholomance
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
>>|cRXP_WARN_Don't accept the follow up yet|r
.turnin 5533 >> Turn in Scholomance
.target Alchemist Arbington
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.target High Priestess MacDonnell
.turnin 5220 >> Turn in Return to Chillwind Camp
.accept 5222 >> Accept Target: Writhing Haunt
step << Paladin
#phase 4-6
#optional
.isQuestComplete 8414
.goto Western Plaguelands,51.99,82.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Thel'danis|r
.turnin 8414 >> Turn in Dispelling Evil
.accept 8416 >> Accept Inert Scourgestones
.target High Priest Thel'danis
step << Paladin
#phase 4-6
#optional
.isQuestTurnedIn 8414
.goto Western Plaguelands,51.99,82.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Thel'danis|r
.accept 8416 >> Accept Inert Scourgestones
.target High Priest Thel'danis
step
#completewith Writhing
.isQuestTurnedIn 5097
.destroy 12815 >> Delete the |T135432:0|t[Beacon Torch]
step << Mage
#season 2
#sticky
.train 401764,1
#completewith Writhing
#label WrithingNovice
.goto Western Plaguelands,53.3,64.5,0
>>Look for a frozen |cRXP_FRIENDLY_Novice Frost Mage|r in the marked location on the Writhing Haunt
>>|cRXP_WARN_Using Fire spells, unfreeze the|r |cRXP_FRIENDLY_Novice Frost Mage|r|cRXP_WARN_. DO NOT KILL HIM!|r
>>|cRXP_WARN_Afterwards cast|r |T136082:0|t[Remove Lesser Curse] |cRXP_WARN_on them and talk to them to receive their|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r] you will need it later to unlock the |T135813:0|t[Overheat] rune
.collect 225940,1
.mob Novice Frost Mage
step
.goto Western Plaguelands,53.021,66.052
>>Kill |cRXP_ENEMY_Cauldron Lord Razarch|r. Loot him for the |cRXP_LOOT_Writhing Haunt Cauldron Key|r
>>|cRXP_ENEMY_Cauldron Lord Razarch|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time|r
.complete 5222,1 
.unitscan Cauldron Lord Razarch
step
.goto Western Plaguelands,53.020,65.718
>>Click on the |cRXP_PICK_Scourge Cauldron|r
.turnin 5222 >> Turn in Target: Writhing Haunt
.accept 5223 >> Accept Return to Chillwind Camp
step
#label Writhing
#requires WrithingNovice << Mage
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time|r
.turnin 4984 >> Turn in The Wildlife Suffers Too
.accept 4985 >> Accept The Wildlife Suffers Too
.target Mulgris Deepriver
step
#completewith ArriveTirion
.isOnQuest 4985
>>Kill any |cRXP_ENEMY_Diseased Grizzlies|r you see en-route to Eastern Plaguelands
>>|cRXP_WARN_It is important you kill any you see along the way, but you don't have to complete it now|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
#completewith next
.goto Eastern Plaguelands,9.57,66.20
.zone Eastern Plaguelands >> Travel to Eastern Plaguelands
step
#label ArriveTirion
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.accept 5542 >> Accept Demon Dogs
.accept 5543 >> Accept Blood Tinged Skies
.accept 5544 >> Accept Carrion Grubbage
.target Tirion Fordring
step
#completewith PamelaRedpath << !Paladin
#completewith OrthasEnd << Paladin
>>Kill |cRXP_ENEMY_Plaguebats|r
>>Kill |cRXP_ENEMY_Plaguehound Runts|r
>>Kill |cRXP_ENEMY_Carrion Grubs|r. Loot them for their |cRXP_LOOT_Worm Meat|r
.complete 5543,1 
.complete 5542,1 
.complete 5544,1 
.mob Plaguebat
.mob Plaguehound Runt
.mob Carrion Grub
step << Hunter/Warrior/Rogue
#season 2
.goto Eastern Plaguelands,26.0,74.0
>>Loot the red book next to |cRXP_ENEMY_Nathanos Blightcaller|r. Its outside the house, to the left of the door. It contains the |T134419:0|t[|cRXP_FRIENDLY_Rune of Ranged Weapon Specialization|r]
>>|cRXP_WARN_If there's someone nearby ask them to pull|r |cRXP_ENEMY_Nathanos Blightcaller|r |cRXP_WARN_away for a while while you safely loot the rune|r
>>|cRXP_WARN_If there's no one nearby you can die to|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_and then respawn while standing inside the house and outside of his line of sight. Then loot the book from inside the house either by using the interact key or angling your camera so you can click it|r << Warrior/Rogue
>>|cRXP_WARN_If there's no one nearby set your pet to|r |T136106:0|t[Stay] |cRXP_WARN_a decent distance away from|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_then send a pet|r |T132152:0|t[Attack] |cRXP_WARN_command to aggro him onto your pet. Once he's targetting your pet set your pet to|r |T132311:0|t[Passive], |cRXP_WARN_this will make your pet return to it's Stay position and give you time to loot the rune|r << Hunter
.collect 226410,1 
.train 453692,1
step << Hunter/Warrior/Rogue
#season 2
#completewith next
.train 453692 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Ranged Weapon Specialization|r] |cRXP_WARN_to learn|r |T135490:0|t[Ranged Weapon Specialization]
.use 226410
.itemcount 226410,1
.train 453692,1
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,27.266,74.956
>>Click the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_SI:7 Insignia (Fredo)|r
.complete 6185,2 
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,28.805,74.880
>>Click the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_SI:7 Insignia (Turyen)|r
.complete 6185,3 
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,28.806,79.853
>>Click the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_SI:7 Insignia (Rutger)|r
.complete 6185,1 
step << Paladin
#sticky
#season 2
#label Orthas
#completewith OrthasEnd
.line Eastern Plaguelands,28.6,84.2,33.2,83.0,35.30,82.55,41.19,81.68,45.42,80.68,48.8,79.9,51.5,78.3,55.1,76.4
>>Look for a |cRXP_ENEMY_Slack-Jawed Ghoul|r as you're questing. Kill him and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orthas|r a dwarf spirit that will appear. Accept his quest
>>|cRXP_WARN_The|r |cRXP_ENEMY_Slack-Jawed Ghoul|r |cRXP_WARN_patrolls the area south of the road between the Undercroft and Corrin's Crossing|r
.accept 84318 >> Accept Oi!
.unitscan Slack-Jawed Ghoul
.target Orthas
step
.isOnQuest 5601
.goto Eastern Plaguelands,36.489,90.718
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
.turnin 5601 >> Turn in Sister Pamela
.accept 5149 >> Accept Pamela's Doll
.target Pamela Redpath
step
.isOnQuest 5142
.goto Eastern Plaguelands,36.489,90.718
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
.turnin 5142 >> Turn in Little Pamela
.accept 5149 >> Accept Pamela's Doll
.target Pamela Redpath
step
#label PamelaRedpath
.goto Eastern Plaguelands,36.489,90.718
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
.accept 5149 >> Accept Pamela's Doll
.target Pamela Redpath
step
.goto Eastern Plaguelands,38.038,92.549,15,0
.goto Eastern Plaguelands,39.643,92.522,15,0
.goto Eastern Plaguelands,39.622,90.079
>>Loot |T134164:0|t[|cRXP_LOOT_Pamela's Doll's Head|r], |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Left Side|r] and |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Right Side|r] throughout the buildings
>>|cRXP_WARN_They all spawn randomly in any of the 3 buildings in Darrowshire|r
.collect 12886,1,5149,1 
.collect 12887,1,5149,1 
.collect 12888,1,5149,1 
step
>>|cRXP_WARN_Use|r |T134164:0|t[|cRXP_LOOT_Pamela's Doll's Head|r]|cRXP_WARN_,|r |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Left Side|r] |cRXP_WARN_or|r |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Right Side|r] |cRXP_WARN_to combine them into|r |cRXP_LOOT_Pamela's Doll|r
.complete 5149,1 
.use 12886
.use 12887
.use 12888
step
.goto Eastern Plaguelands,36.489,90.718
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
.turnin 5149 >> Turn in Pamela's Doll
.accept 5152 >> Accept Auntie Marlene
.accept 5241 >> Accept Uncle Carlin
.target Pamela Redpath
step << Paladin
#season 2
#requires Orthas
.goto Eastern Plaguelands,59.8,70.8 
>>Enter the house in Corrin's Crossing. Loot the |T133040:0|t[|cRXP_PICK_Ornate Warhammer|r] |cRXP_WARN_on the second floor|r
.complete 84318,1
step << Paladin
#season 2
.goto Eastern Plaguelands,59.8,70.8
>>Use |T134566:0|t[Orthas' Favourite Gold Tooth] to summon |cRXP_FRIENDLY_Orthas|r again. Talk to him to turnin the quest and get the followup
.turnin 84318 >> Turn in Oi!
.accept 84319 >> Accept Oh No Ye Don't
.use 227687
step << Paladin
#season 2
.goto Eastern Plaguelands,59.7,68.7
>>Kill any |cRXP_ENEMY_Stitched Horror|r and loot it for the |T133823:0|t[|cRXP_LOOT_Partially-Digested Plate Armor|r]
.complete 84319,1
.mob Stitched Horror
step << Paladin
#season 2
#label OrthasEnd
>>Use |T134566:0|t[Orthas' Favourite Gold Tooth] to summon |cRXP_FRIENDLY_Orthas|r again. Talk to him to turnin the quest and get the followup
.turnin 84319 >> Turn in Oh No Ye Don't
.accept 84330 >> Accept A Wee Bit O' Necromancy. |cRXP_WARN_This is a dungeon quest but you can take it so you don't need to come back for it after you're done leveling|r
step
#requires OrthasEnd << Paladin
#label grubs
#completewith next
#sticky
>>Kill |cRXP_ENEMY_Carrion Grubs|r and |cRXP_ENEMY_Carrion Devourers|r. Loot them for their |cRXP_LOOT_Worm Meat|r
.complete 5544,1 
.mob Carrion Grub
.mob Carrion Devourer
step
>>Kill |cRXP_ENEMY_Plaguebats|r
>>Kill |cRXP_ENEMY_Plaguehound Runts|r and |cRXP_ENEMY_Plaguehounds|r
.complete 5543,1 
.goto Eastern Plaguelands,33.8,82.2,70,0
.goto Eastern Plaguelands,17.2,78.2,70,0
.goto Eastern Plaguelands,16.6,65.8,70,0
.goto Eastern Plaguelands,40.8,71.8,70,0
.goto Eastern Plaguelands,48.8,77.6,70,0
.goto Eastern Plaguelands,32.2,83.4,70,0
.goto Eastern Plaguelands,31.6,71.6
.complete 5542,1 
.goto Eastern Plaguelands,33.8,82.2,70,0
.goto Eastern Plaguelands,17.2,78.2,70,0
.goto Eastern Plaguelands,16.6,65.8,70,0
.goto Eastern Plaguelands,40.8,71.8,70,0
.goto Eastern Plaguelands,48.8,77.6,70,0
.goto Eastern Plaguelands,32.2,83.4,70,0
.goto Eastern Plaguelands,31.6,71.6
.complete 5542,2 
.goto Eastern Plaguelands,46.6,64.6,70,0
.goto Eastern Plaguelands,51.6,61.0,70,0
.goto Eastern Plaguelands,50.0,54.6,70,0
.goto Eastern Plaguelands,53.8,51.6,70,0
.goto Eastern Plaguelands,61.6,61.2,70,0
.goto Eastern Plaguelands,75.0,73.2,70,0
.goto Eastern Plaguelands,68.6,58.4,70,0
.goto Eastern Plaguelands,54.6,59.0
.mob Plaguebat
.mob Plaguehound Runt
.mob Plaguehound
step << Hunter
.goto Eastern Plaguelands,74.4,62.7
.goto Eastern Plaguelands,72.5,66.4,0
.goto Eastern Plaguelands,72.6,63.7,0
.goto Eastern Plaguelands,76.7,62.6,0
.goto Eastern Plaguelands,74.8,58.9,0
.goto Eastern Plaguelands,76.7,58.7,0
.goto Eastern Plaguelands,55.6,67.0,0
.goto Eastern Plaguelands,54.3,70.1,0
.goto Eastern Plaguelands,51.9,70.0,0
>>Kill and loot any |cRXP_ENEMY_Rotting Sludges|r and |cRXP_ENEMY_Living Decay|r untill you loot a |T132108:0|t[|cRXP_LOOT_Bubbling Green Ichor|r]. You will need it to get the rune of |T132178:0|t[|cRXP_FRIENDLY_Resourcefulness|r] soon
>>|cRXP_WARN_The ichor is a gray item, be careful not to vendor it!|r
.collect 20770,1 
.train 440557,1
.mob Living Decay
.mob Rotting Sludge
step
.goto Eastern Plaguelands,81.437,59.820
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
.turnin 6030 >> Turn in Duke Nicholas Zverenhoff
.target Duke Nicholas Zverenhoff
.isOnQuest 6030
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5241 >> Turn in Uncle Carlin
.accept 5211 >> Accept Defenders of Darrowshire
.target Carlin Redpath
step
#ah
.goto Eastern Plaguelands,80.605,57.979
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r
.accept 6026 >> Accept That's Asking A Lot
.turnin 6026 >> Turn in That's Asking A Lot
.itemcount 12359,2 
.itemcount 11128,1 
.itemcount 10562,8 
.itemcount 10560,8 
.target Smokey LaRue
step
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khaelyn Steelwing|r
.fp Chapel >> Get the Light's Hope Chapel flight path
.target Khaelyn Steelwing
step
.goto Eastern Plaguelands,79.405,63.983
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
.accept 5281 >> Accept The Restless Souls
.accept 6021 >> Accept Zaeldarr the Outcast
.target Caretaker Alen
step
#completewith Egan
.goto Eastern Plaguelands,60.6,68.4,0
.goto Eastern Plaguelands,67.7,41.5,0
.goto Eastern Plaguelands,75.5,51.2,0
.goto Eastern Plaguelands,41.8,30.4,0
.goto Eastern Plaguelands,28.35,28.49,0
>>Kill |cRXP_ENEMY_Diseased Flayers|r, |cRXP_ENEMY_Gibbering Ghouls|r and |cRXP_ENEMY_Cannibal Ghouls|r. Talk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that spawn from their corpses
.complete 5211,1 
.mob Diseased Flayer
.mob Gibbering Ghoul
.mob Cannibal Ghoul
.target Darrowshire Spirit
step
#completewith Egan
.goto Eastern Plaguelands,69.2,50.6,70,0
.goto Eastern Plaguelands,64.6,32.0,70,0
.goto Eastern Plaguelands,51.6,30.6,70,0
.goto Eastern Plaguelands,56.6,40.0,70,0
.goto Eastern Plaguelands,44.4,36.4,70,0
.goto Eastern Plaguelands,48.0,24.6,70,0
.goto Eastern Plaguelands,50.9,38.3
>>Kill |cRXP_ENEMY_Frenzied Plaguehounds|r
.complete 5542,3 
.mob Frenzied Plaguehound
step << Paladin
#season 2
.goto Eastern Plaguelands,78.6,47.6
>>|cRXP_WARN_Head to the Noxious Glade, an area just north of Light's Hope chapel. Once you're there summon your squire again. The quest to find Arkonos should complete and you will get another quest, accept it|r
.turnin 84017 >> Turn in A Time to Kill
.accept 84125 >> Accept Close Enough To Touch
.use 226545
.isOnQuest 84017
step << Paladin
#season 2
.goto Eastern Plaguelands,83.7,41.9
>>Kill |cRXP_ENEMY_Shadowmages|r and |cRXP_ENEMY_Dread Weavers|r in the Noxious Glade. Loot them for |T135482:0|t[|cRXP_LOOT_Scourge Shadow Scalpel|r]
.complete 84125,1
.mob Shadowmage
.mob Dread Weaver
.isOnQuest 84125
step << Paladin
#season 2
>>Use the |T237377:0|t[|cFF0070FFDalton's Horn|r] to summon |cRXP_FRIENDLY_Squire Cuthbert|r if you lost him. Talk to him
.turnin 84125 >> Turn in Close Enough To Touch
.accept 84126 >> Accept Finish the Fight
.use 226122
.target Squire Cuthbert
.isQuestComplete 84125
step << Paladin
#season 2
.goto Eastern Plaguelands,86.6,39.8
>>Use the |T237490:0|t[|cRXP_LOOT_Modified Shadow Scalpel|r] you got to dispell |cRXP_ENEMY_Arkonos's|r shield. Kill him to complete the quest
>>|cRXP_WARN_Arkonos is Elite and has a lot of health. Look for help or skip this step if you're unable to solo him|r
.complete 84126,1 
.use 227685
.isOnQuest 84126
step << Paladin
#season 2
>>Use the |T237377:0|t[|cFF0070FFDalton's Horn|r] to summon |cRXP_FRIENDLY_Squire Cuthbert|r if you lost him. Talk to him
>>Turning in this quest will train you on how to engrave |T252188:0|t[Shock and Awe] and also give you the |T133745:0|t[|cRXP_FRIENDLY_Testament of Avenging Wrath|r] which will teach you |T135875:0|t[Avenging Wrath]
.turnin 84126 >> Turn in Finish the Fight
.use 226122
.target Squire Cuthbert
.isQuestComplete 84126
step << Paladin
#season 2
#sticky
#completewith Termites
.train 407788 >> Use the |T133745:0|t[|cRXP_FRIENDLY_Testament of Avenging Wrath|r] to train |T135875:0|t[Avenging Wrath]
.use 226399
.itemcount 226399,1
step
.isQuestComplete 5245
.goto Eastern Plaguelands,53.506,21.999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurora Skycaller|r
.turnin 5245 >> Turn in Troubled Spirits of Kel'Theril
.target Aurora Skycaller
step
#label Termites
.goto Eastern Plaguelands,41.2,25.2,70,0
.goto Eastern Plaguelands,42.1,38.2,70,0
.goto Eastern Plaguelands,32.0,35.8,70,0
.goto Eastern Plaguelands,33.8,25.8,70,0
.goto Eastern Plaguelands,29.9,23.1,70,0
.goto Eastern Plaguelands,26.5,37.5,70,0
.goto Eastern Plaguelands,20.4,20.8,70,0
.goto Eastern Plaguelands,31.4,29.6
>>Open the |cRXP_PICK_Large Termite Mounds|r throughout Plaguewood. Loot them for the |cRXP_LOOT_Plagueland Termites|r
.complete 5903,1 
step << Hunter
#sticky
#completewith Egan
.goto Eastern Plaguelands,17.8,30.2,0
>>Head to Terrordale and kill |cRXP_ENEMY_Plagued Swines|r untill you loot a |T134046:0|t[|cRXP_LOOT_Tainted Boar Meat|r]
.collect 225942,1 
.mob Plagued Swine
.train 440557,1
step
#label Egan
.goto Eastern Plaguelands,14.448,33.740
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Egan|r
.turnin 5281 >> Turn in The Restless Souls
.target Egan
step << Hunter
.goto Eastern Plaguelands,17.8,30.2
>>Head to Terrordale and kill |cRXP_ENEMY_Plagued Swines|r untill you loot a |T134046:0|t[|cRXP_LOOT_Tainted Boar Meat|r]
.collect 225942,1 
.mob Plagued Swine
.train 440557,1
step << Hunter
>>Use the |T134046:0|t[|cRXP_LOOT_Tainted Boar Meat|r] to combine it with the |T132108:0|t[|cRXP_LOOT_Bubbling Green Ichor|r] and create a |T134047:0|t[Rancid Hunk of Flesh]
.collect 225943,1 
.use 225942
.train 440557,1
.itemcount 225942,1
.itemcount 20770,1
step << Hunter
.goto Eastern Plaguelands,22.68,37.12,-1
.goto Eastern Plaguelands,19.37,26.42,-1
.goto Eastern Plaguelands,29.83,39.05,-1
>>Look for a |cRXP_ENEMY_Carrion Grub|r or a |cRXP_ENEMY_Carrion Devourer|r. The closest possible spawns to Terrordale are just north and south of it
>>Use the |T134047:0|t[Rancid Hunk of Flesh] on it to feed it. |cRXP_WARN_The grub will spawn a skeleton after a short animation, loot it for|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Resourceful|r]
.use 225943
.collect 225955,1 
.mob Carrion Grub
.mob Carrion Devourer
.train 440557,1
step << Hunter
.train 440557 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of the Resourceful|r] |cRXP_WARN_to train|r |T132178:0|t[Resourcefulness]
.use 225955
.train 440557,1
.itemcount 225955,1
step
#completewith next
.goto Eastern Plaguelands,60.6,68.4,0
.goto Eastern Plaguelands,67.7,41.5,0
.goto Eastern Plaguelands,75.5,51.2,0
.goto Eastern Plaguelands,41.8,30.4,0
.goto Eastern Plaguelands,28.35,28.49,0
.goto Eastern Plaguelands,66.0,39.2,0
>>Kill |cRXP_ENEMY_Diseased Flayers|r, |cRXP_ENEMY_Gibbering Ghouls|r and |cRXP_ENEMY_Cannibal Ghouls|r. Talk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that spawn from their corpses
.complete 5211,1 
.mob Diseased Flayer
.mob Gibbering Ghoul
.mob Cannibal Ghoul
.target Darrowshire Spirit
step
.goto Eastern Plaguelands,69.2,50.6,70,0
.goto Eastern Plaguelands,64.6,32.0,70,0
.goto Eastern Plaguelands,51.6,30.6,70,0
.goto Eastern Plaguelands,56.6,40.0,70,0
.goto Eastern Plaguelands,44.4,36.4,70,0
.goto Eastern Plaguelands,48.0,24.6,70,0
.goto Eastern Plaguelands,50.9,38.3
>>Kill |cRXP_ENEMY_Frenzied Plaguehounds|r
.complete 5542,3 
.mob Frenzied Plaguehound
step
#completewith next
#requires grubs
.goto Eastern Plaguelands,23.850,42.438,10,0
.goto Eastern Plaguelands,23.253,41.611,5 >> If you have |T134863:0|t[Noggenfogger Elixirs] you may try the mountain skip to get to |cRXP_FRIENDLY_Tirion Fordring|r faster << !Priest !Mage
.goto Eastern Plaguelands,23.253,41.611,5 >> If you have |T134863:0|t[Noggenfogger Elixirs] or |T132917:0|t[Light Feathers] you may try the mountain skip to get to |cRXP_FRIENDLY_Tirion Fordring|r faster << Priest/Mage
>>The starting location is marked on your map. If you're unable to do it, just run around normally
.link https://youtu.be/m5KSjcm1lSM >> |cRXP_WARN_Click here for video reference|r
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5542 >> Turn in Demon Dogs
.turnin 5543 >> Turn in Blood Tinged Skies
.turnin 5544 >> Turn in Carrion Grubbage
.accept 5742 >> Accept Redemption
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.complete 5742,1 
.skipgossip
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5742 >> Turn in Redemption
.accept 5781 >> Accept Of Forgotten Memories
.target Tirion Fordring
step
#completewith next
.goto Eastern Plaguelands,27.850,86.245,15 >> Enter The Undercroft crypt
step
.goto Eastern Plaguelands,27.467,84.853
>>Kill |cRXP_ENEMY_Zaeldarr the Outcast|r. Loot him for his |cRXP_LOOT_Head|r
.complete 6021,1 
.mob Zaeldarr the Outcast
step
.goto Eastern Plaguelands,27.276,85.213
>>Click the |cRXP_PICK_Torn Scroll|r on the ground
.accept 6024 >> Accept Hameya's Plea
step
#completewith next
.goto Eastern Plaguelands,28.307,86.885
.cast 6478 >>Click the |cRXP_PICK_Loose Dirt Mound|r to summon |cRXP_ENEMY_Mercutio Filthgorger|r and 3 additional |cRXP_ENEMY_Crypt Robbers|r
step
.goto Eastern Plaguelands,28.307,86.885
>>Kill |cRXP_ENEMY_Mercutio Filthgorger|r. Loot him for |cRXP_LOOT_Taelan's Hammer|r
>>|cRXP_WARN_This quest can be very hard, skip it if you have to|r
>>Try to |cRXP_WARN_split pull|r him if you can
.link https://www.youtube.com/live/svdic7rZYv4?si=ZSkwOWQdlWGDx_yK&t=7175 >> Click here for a reference video
.link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Click here to watch a video about splitpulling (useful to learn)
.complete 5781,1 
.mob Mercutio Filthgorger
step
.isQuestComplete 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5781 >> Turn in Of Forgotten Memories
.accept 5845 >> Accept Of Lost Honor
.target Tirion Fordring
step
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.accept 5845 >> Accept Of Lost Honor
.target Tirion Fordring
step
.abandon 5781 >> Abandon Of Forgotten Memories
step
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#completewith next
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Western Plaguelands >> Fly to Western Plaguelands
.target Darla Harris
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5223 >> Turn in Return to Chillwind Camp
.accept 5225 >> Accept Target: Gahrron's Withering
.target High Priestess MacDonnell
step << Paladin
#optional
#phase 4-6
.isOnQuest 8416
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8416 >> Turn in Inert Scourgestones
.target Commander Ashlam Valorfist
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
.accept 5537 >> Accept Skeletal Fragments
.target Alchemist Arbington
step
.goto Western Plaguelands,43.418,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
.turnin 5903 >> Turn in A Plague Upon Thee
.accept 5904 >> Accept A Plague Upon Thee
.target Nathaniel Dumah
step
.isQuestTurnedIn 6183
.goto Western Plaguelands,43.607,84.506
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flint Shadowmore|r
.turnin 6185 >> Turn in The Eastern Plagues
.accept 6186 >> Accept The Blightcaller Cometh
.target Flint Shadowmore
step
.isQuestTurnedIn 5903
.destroy 15043 >> Delete any left over |T134321:0|t[Plagueland Termites]
step
.goto Western Plaguelands,49.2,78.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marlene Redpath|r
>>|cRXP_FRIENDLY_Marlene Redpath|r may also be upstairs
.turnin 5152 >> Turn in Auntie Marlene
.accept 5153 >> Accept A Strange Historian
.target Marlene Redpath
step
.goto Western Plaguelands,49.696,76.754
>>Click |cRXP_PICK_Joseph Redpath's Monument|r. Loot it for |cRXP_LOOT_Joseph's Wedding Ring|r
.complete 5153,1 
step
#completewith CountingTime
>>Kill |cRXP_ENEMY_Skeletal Executioners|r and |cRXP_ENEMY_Skeletal Acolytes|r. Loot them for their |cRXP_LOOT_Skeletal Fragments|r
.complete 5537,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
step
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
.turnin 5153 >> Turn in A Strange Historian
.accept 5154 >> Accept The Annals of Darrowshire
.accept 4971 >> Accept A Matter of Time
.target Chromie
step
#completewith next
.goto Western Plaguelands,43.822,69.250,10,0 >> Enter the Ruins of Andorhal Town Hall
.link https://youtu.be/GUb1Ny4NwQw >> |cRXP_WARN_Click here for video reference on how to enter the Town Hall safely|r
step
.goto Western Plaguelands,43.50,69.46
>>Enter the Ruins of Andorhal Town Hall
>>Open the |cRXP_PICK_Musty Tomes|r. Loot them for the |cRXP_LOOT_Annals of Darrowshire|r
>>|cRXP_WARN_The correct |cRXP_PICK_Musty Tome|r will have its pages be a completely dark-shade, or have a brown stain. If it's only half white and half black, that is a trap|r
>>|cRXP_WARN_There can be times where all |cRXP_PICK_Musty Tomes|r are traps and you must open them to force a correct one to spawn|r
.complete 5154,1 
.link https://youtu.be/GUb1Ny4NwQw >> |cRXP_WARN_Click here for video reference on how to identify the correct|r |cRXP_PICK_Musty Tome|r
step
.goto Western Plaguelands,45.172,62.559,25,0
.goto Western Plaguelands,46.858,62.040,25,0
.goto Western Plaguelands,48.324,62.610,25,0
.goto Western Plaguelands,48.10,63.92,20,0
.goto Western Plaguelands,48.06,66.18
>>Kill |cRXP_ENEMY_Temporal Parasites|r
.use 12627 >>|cRXP_WARN_Use the|r |T134229:0|t[Temporal Displacer] |cRXP_WARN_at the silos to make them spawn. If the silo isn't pulsing blue then it cannot spawn any|r |cRXP_ENEMY_Temporal Parasites|r
>>|cRXP_WARN_Multiple |cRXP_ENEMY_Temporal Parasites|r can spawn at the same time, and once one dies, another one can instantly spawn|r
.complete 4971,1 
.mob Temporal Parasite
step
.isQuestComplete 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
.turnin 4971 >> Turn in A Matter of Time
.accept 4972 >> Accept Counting Out Time
.turnin 5154 >> Turn in The Annals of Darrowshire
.accept 5210 >> Accept Brother Carlin
.target Chromie
step
.isQuestTurnedIn 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
.accept 4972 >> Accept Counting Out Time
.turnin 5154 >> Turn in The Annals of Darrowshire
.accept 5210 >> Accept Brother Carlin
.target Chromie
step
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
.turnin 5154 >> Turn in The Annals of Darrowshire
.accept 5210 >> Accept Brother Carlin
.target Chromie
step
#optional
.abandon 4971 >> Abandon A Matter of Time if it's too difficult
step
.isQuestTurnedIn 4971
.goto Western Plaguelands,38.71,68.25,20,0
.goto Western Plaguelands,38.51,69.74,20,0
.goto Western Plaguelands,40.63,68.40,20,0
.goto Western Plaguelands,41.08,67.45,20,0
.goto Western Plaguelands,40.69,66.16,20,0
.goto Western Plaguelands,41.46,69.85,15,0
.goto Western Plaguelands,42.17,68.88,20,0
.goto Western Plaguelands,42.67,70.31
>>Open the |cRXP_PICK_Small Lockboxes|r. Loot them for |cRXP_LOOT_Andorhal Watches|r
>>|cRXP_WARN_These are found inside of the burnt-down houses|r
.complete 4972,1 
step
#label CountingTime
.isQuestTurnedIn 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
.turnin 4972 >> Turn in Counting Out Time
.target Chromie
step
.goto Western Plaguelands,37.8,70.6,70,0
.goto Western Plaguelands,42.6,73.8,70,0
.goto Western Plaguelands,49.6,69.4,70,0
.goto Western Plaguelands,49.6,63.6,70,0
.goto Western Plaguelands,43.0,63.4,70,0
.goto Western Plaguelands,39.8,67.4
>>Kill |cRXP_ENEMY_Skeletal Executioners|r and |cRXP_ENEMY_Skeletal Acolytes|r. Loot them for their |cRXP_LOOT_Skeletal Fragments|r
.complete 5537,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
.turnin 5537 >> Turn in Skeletal Fragments
.target Alchemist Arbington
step
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.fly Eastern Plaguelands >> Fly to Eastern Plaguelands
.target Bibilfaz Featherwhistle
step << skip 
#phase 6
.goto Eastern Plaguelands,81.627,58.077
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessica Chambers|r
.home >> Set your Hearthstone to Light's Hope Chapel
.target Jessica Chambers
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5210 >> Turn in Brother Carlin
.accept 5181 >> Accept Villains of Darrowshire
.accept 5168 >> Accept Heroes of Darrowshire
.target Carlin Redpath
step
.goto Eastern Plaguelands,79.405,63.983
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
.turnin 6021 >> Turn in Zaeldarr the Outcast
.target Caretaker Alen
step
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,71.300,33.959
>>Loot the |cRXP_LOOT_Symbol of Lost Honor|r underwater
.complete 5845,1 
step
.goto Eastern Plaguelands,64.80,21.45,35,0
.goto Eastern Plaguelands,70.8,16.2
>>Kill |cRXP_ENEMY_Infiltrator Hameya|r. Loot him for |cRXP_LOOT_Hameya's Key|r
>>|cRXP_ENEMY_Mossflayer Scouts|r |cRXP_WARN_will run away and call for help as soon as you agro them|r
>>|cRXP_ENEMY_Infiltrator Hameya|r |cRXP_WARN_patrols around the graves of Zul'Mashar|r
.complete 6024,1 
.unitscan Infiltrator Hameya
step
.goto Eastern Plaguelands,51.106,49.937
>>Loot the |cRXP_LOOT_Skull of Horgus|r underwater
.complete 5181,1 
step
.goto Eastern Plaguelands,60.6,68.4,0
.goto Eastern Plaguelands,67.7,41.5,0
.goto Eastern Plaguelands,75.5,51.2,0
.goto Eastern Plaguelands,41.8,30.4,0
.goto Eastern Plaguelands,28.35,28.49,0
.goto Eastern Plaguelands,28.35,28.49,70,0
.goto Eastern Plaguelands,37.85,31.10,70,0
.goto Eastern Plaguelands,66.0,39.2,80,0
.goto Eastern Plaguelands,59.4,69.0,100,0
.goto Eastern Plaguelands,77.4,54.0,70,0
.goto Eastern Plaguelands,80.6,43.6,80,0
.goto Eastern Plaguelands,66.0,39.2
>>Kill |cRXP_ENEMY_Diseased Flayers|r, |cRXP_ENEMY_Gibbering Ghouls|r and |cRXP_ENEMY_Cannibal Ghouls|r. Talk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that spawn from their corpses
.complete 5211,1 
.mob Diseased Flayer
.mob Gibbering Ghoul
.mob Cannibal Ghoul
.target Darrowshire Spirit
step
.goto Eastern Plaguelands,53.913,65.755
>>Loot the |cRXP_LOOT_Shattered Sword of Marduk|r on the ground
.complete 5181,2 
step
.isQuestComplete 6024
.goto Eastern Plaguelands,28.036,86.155
>>Click the |cRXP_PICK_Mound of Dirt|r
.turnin 6024 >> Turn in Hameya's Plea
step
.abandon 6024 >> Abandon Hameya's Plea
step
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5845 >> Turn in Of Lost Honor
.accept 5846 >> Accept Of Love and Family
.target Tirion Fordring
step
#completewith next
>>Kill |cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Plague Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Grizzlies|r to spawn|r
.complete 4985,1 
.unitscan Diseased Grizzly
step << Mage
#season 2
#sticky
.train 401764,1
#completewith Gahrrons
#label GahrronsNovice
.goto Western Plaguelands,64.2,57.7,0
>>Look for a frozen |cRXP_FRIENDLY_Novice Frost Mage|r in the marked location on the Gahrron's Withering
>>|cRXP_WARN_Using Fire spells, unfreeze the|r |cRXP_FRIENDLY_Novice Frost Mage|r|cRXP_WARN_. DO NOT KILL HIM!|r
>>|cRXP_WARN_Afterwards cast|r |T136082:0|t[Remove Lesser Curse] |cRXP_WARN_on them and talk to them to receive their|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r] you will need it later to unlock the |T135813:0|t[Overheat] rune
.collect 225941,1
.mob Novice Frost Mage
step << Mage
#season 2
#sticky
#requires GahrronsNovice
#completewith Gahrrons
#label OverheatRune
.train 401764,1
.use 225938 >> |cRXP_WARN_Use any of the|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r] |cRXP_WARN_to combine them into|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Overheat|r]
.use 225939
.use 225940
.use 225941
.collect 225691,1
step << Mage
#season 2
#sticky
#requires OverheatRune
#completewith Gahrrons
.train 401764 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Overheat|r] |cRXP_WARN_to train|r |T135813:0|t[Overheat]
.use 225691
step
.isOnQuest 5168
.goto Western Plaguelands,63.789,57.192
>>Loot |cRXP_LOOT_Redpath's Shield|r on the ground
>>|cRXP_WARN_The other objective of this quest requires going into Hearthglen. If you are not comfortable going into Hearthglen with a group later, skip this step now and abandon Heroes of Darrowshire|r
.complete 5168,2 
step
.goto Western Plaguelands,62.644,58.945
>>Kill |cRXP_ENEMY_Cauldron Lord Soulwrath|r. Loot him for the |cRXP_LOOT_Gahrron's Withering Cauldron Key|r
>>|cRXP_ENEMY_Cauldron Lord Soulwrath|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
.complete 5225,1 
.unitscan Cauldron Lord Soulwrath
step
.goto Western Plaguelands,62.573,58.573
>>Click on the |cRXP_PICK_Scourge Cauldron|r
.turnin 5225 >> Turn in Target: Gahrron's Withering
.accept 5226 >> Accept Return to Chillwind Camp
step
#requires GahrronsNovice << Mage
.goto Western Plaguelands,58.8,58.6,70,0
.goto Western Plaguelands,53.6,48.0,70,0
.goto Western Plaguelands,58.8,52.6,70,0
.goto Western Plaguelands,67.2,46.6,70,0
.goto Western Plaguelands,66.0,55.6,70,0
.goto Western Plaguelands,60.8,50.8
>>Kill |cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Plague Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Grizzlies|r to spawn|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
#label Gahrrons
#xprate <2.5 << !Mage
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time|r
.turnin 4985 >> Turn in The Wildlife Suffers Too
.accept 4986 >> Accept Glyphed Oaken Branch
.target Mulgris Deepriver
step << !Mage
#label Gahrrons
#xprate >2.49
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time|r
.turnin 4985 >> Turn in The Wildlife Suffers Too
.target Mulgris Deepriver
step
.goto Western Plaguelands,48.348,31.996
>>Click on the |cRXP_PICK_Northridge Lumber Mill Crate|r to place the |cRXP_PICK_Termite Barrel|r and then click on the |cRXP_PICK_Termite Barrel|r after
.skipgossip
.turnin 5904 >> Turn in A Plague Upon Thee
.accept 6389 >> Accept A Plague Upon Thee
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.accept 6004 >> Accept Unfinished Business
.target Kirsta Deepshadow
step
.goto Western Plaguelands,50.85,40.68,60,0
.goto Western Plaguelands,51.97,44.47,60,0
.goto Western Plaguelands,41.23,51.54,60,0
.goto Western Plaguelands,50.85,40.68
>>Kill |cRXP_ENEMY_Scarlet Medics|r, |cRXP_ENEMY_Scarlet Hunters|r, |cRXP_ENEMY_Scarlet Mages|r and |cRXP_ENEMY_Scarlet Knights|r
>>|cRXP_ENEMY_Scarlet Medics|r |cRXP_WARN_and |cRXP_ENEMY_Scarlet Hunters|r share spawns|r
>>|cRXP_ENEMY_Scarlet Mages|r |cRXP_WARN_and |cRXP_ENEMY_Scarlet Knights|r share spawns|r
.complete 6004,1 
.complete 6004,2 
.complete 6004,3 
.complete 6004,4 
.mob Scarlet Medic
.mob Scarlet Hunter
.mob Scarlet Mage
.mob Scarlet Knight
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6004 >> Turn in Unfinished Business
.accept 6023 >> Accept Unfinished Business
.target Kirsta Deepshadow
step
.goto Western Plaguelands,56.38,34.11,50,0
.goto Western Plaguelands,57.83,36.10
>>Kill |cRXP_ENEMY_Huntsman Radley|r
.complete 6023,1 
.mob Huntsman Radley
step
.goto Western Plaguelands,54.520,23.818
>>Kill |cRXP_ENEMY_Cavalier Durgen|r
>>|cRXP_ENEMY_Cavalier Durgen|r |cRXP_WARN_will patrol up and down the Tower. Wait at the bottom for him to come to you instead of going inside|r
.complete 6023,2 
.unitscan Cavalier Durgen
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6023 >> Turn in Unfinished Business
.accept 6025 >> Accept Unfinished Business
.target Kirsta Deepshadow
step
#completewith HearthglenFinish
.goto Western Plaguelands,45.7,18.8
.subzone 190 >> Travel to Hearthglen
step << Rogue
#season 2
#label ToolboxKey
.train 415918,1
.goto Western Plaguelands,45.0,13.6
>>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Scarlet Workers|r. Loot them for the |cRXP_LOOT_Toolbox Key|r
.collect 227928,1 
.mob Scarlet Worker
step << Rogue
#season 2
.train 415918,1
.goto Western Plaguelands,45.0,14.2
>>Open the |cRXP_PICK_Scarlet Toolbox|r. Loot it for the |cRXP_LOOT_Rusty Crowbar|r
.collect 227932,1 
step << Rogue
#season 2
#sticky
#label SafeboxKey
.goto Western Plaguelands,49.5,18.5
>>Head to the top of the tower in the middle of Hearthglen. Open the |cRXP_PICK_Marked Crate|r there. Loot it for the |T133640:0|t[|cRXP_LOOT_Hidden Bundle|r] and open it to loot a |T134237:0|t[|cRXP_LOOT_Safe Box Key|r]
.collect 227930,1
.train 415918,1
step
.goto Western Plaguelands,45.7,18.8
>>Ascend the Hearthglen Tower
>>|cRXP_WARN_You may either run straight to the top and jump down or clear your way up|r
>>|cRXP_WARN_Avoid |cRXP_ENEMY_High Protector Lorik|r who is a strong Elite that roams Hearthglen|r
>>|cRXP_WARN_This quest can be difficult. Skip it if you are not confident going into Hearthglen|r
.complete 6025,1 
.link https://youtu.be/zScCxcSNqdI >> |cRXP_WARN_Click here for video reference|r
.unitscan High Protector Lorik
step << Mage/Hunter/Druid
.goto Western Plaguelands,47.3,13.6
>>|cRXP_WARN_Head to the top of the tower marked on your map. Look for a red book laying in a corner next to a bookshelf, it's guarded by a|r |cRXP_ENEMY_Scarlet Priest|r. |cRXP_WARN_Loot it for the rune of |r |T132849:0|t[Arcane Specialization]. |cRXP_WARN_You can skip this step if you don't feel like getting this rune|r
.collect 226413,1 
.train 453702,1
step << Mage/Hunter/Druid
#completewith HearthglenFinish
.train 453695 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Arcane Specialization|r] to train |T132849:0|t[Arcane Specialization]
.train 453695,1
.itemcount 226413,1
.use 226413
step << Rogue
#season 2
#requires SafeboxKey << Rogue
.goto Western Plaguelands,46.3,14.6
>>Head to the middle floor of the second tower in Hearthglen located on the northern side of the city. Use the |T134237:0|t[|cRXP_LOOT_Safe Box Key|r] to open [|cRXP_PICK_Belavus' Safe Box|r] and loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Crimson Tempest|r]
.collect 227456,1 
.train 415918,1
step << Rogue
#season 2
#sticky
#completewith next
.use 227456
.itemcount 227456,1
.train 415918 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Crimson Tempest|r] |cRXP_WARN_to train|r |T135315:0|t[Crimson Tempest]
.train 415918,1
step
#label HearthglenFinish
.isOnQuest 5168
.goto Western Plaguelands,42.519,18.990
>>Loot |cRXP_LOOT_Davil's Libram|r on the table
>>|cRXP_WARN_Avoid |cRXP_ENEMY_High Protector Lorik|r who is a strong Elite that roams Hearthglen|r
>>|cRXP_WARN_This quest can be difficult. Skip it if you are not confident going into Hearthglen|r
.complete 5168,1 
.link https://youtu.be/XTpyJFLge3o >> |cRXP_WARN_Click here for video reference|r << Hunter
.link https://youtu.be/L6meUz3Ya48 >> |cRXP_WARN_Click here for video reference|r << Warlock
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6025 >> Turn in Unfinished Business
.isQuestComplete 6025
.target Kirsta Deepshadow
step
#optional
.abandon 6025 >> Abandon Unfinished Business
step
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#completewith next
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Western Plaguelands >> Fly to Western Plaguelands
.target Darla Harris
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5226 >> Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
step
.goto Western Plaguelands,42.702,84.031
.target Commander Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5237 >> Accept Mission Accomplished!
.turnin 5237 >> Turn in Mission Accomplished!
step
.goto Western Plaguelands,43.418,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
.turnin 6389 >> Turn in A Plague Upon Thee
.target Nathaniel Dumah
step
.isQuestTurnedIn 5781
.goto Western Plaguelands,65.7,75.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artist Renfray|r
.turnin 5846 >> Turn in Of Love and Family
.target Artist Renfray
step
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.fly Eastern Plaguelands >> Fly to Eastern Plaguelands
.target Bibilfaz Featherwhistle
step << skip 
#phase 6
.hs >> Hearth to Light's Hope Chapel
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.isQuestComplete 5211
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5211 >> Turn in Defenders of Darrowshire
.target Carlin Redpath
step
.isQuestComplete 5168
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5181 >> Turn in Villains of Darrowshire
.turnin 5168 >> Turn in Heroes of Darrowshire
.target Carlin Redpath
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5181 >> Turn in Villains of Darrowshire
.target Carlin Redpath
step
.abandon 5168 >> Abandon Heroes of Darrowshire
step << Paladin
#season 2
#requires SquireLvlupTwo
.goto Eastern Plaguelands,78.6,47.6
>>|cRXP_WARN_Head to the Noxious Glade, an area just north of Light's Hope chapel. Once you're there summon your squire again. The quest to find Arkonos should complete and you will get another quest, accept it|r
.turnin 84017 >> Turn in A Time to Kill
.accept 84125 >> Accept Close Enough To Touch
.use 226545
.isOnQuest 84017
step << Paladin
#season 2
#requires SquireLvlupTwo
.goto Eastern Plaguelands,83.7,41.9
>>Kill |cRXP_ENEMY_Shadowmages|r and |cRXP_ENEMY_Dread Weavers|r in the Noxious Glade. Loot them for |T135482:0|t[|cRXP_LOOT_Scourge Shadow Scalpel|r]
.complete 84125,1
.mob Shadowmage
.mob Dread Weaver
.isOnQuest 84125
step << Paladin
#season 2
#requires SquireLvlupTwo
>>Use the |T237377:0|t[|cFF0070FFDalton's Horn|r] to summon |cRXP_FRIENDLY_Squire Cuthbert|r if you lost him. Talk to him
.turnin 84125 >> Turn in Close Enough To Touch
.accept 84126 >> Accept Finish the Fight
.use 226122
.target Squire Cuthbert
.isQuestComplete 84125
step << Paladin
#season 2
#requires SquireLvlupTwo
.goto Eastern Plaguelands,86.6,39.8
>>Use the |T237490:0|t[|cRXP_LOOT_Modified Shadow Scalpel|r] you got to dispell |cRXP_ENEMY_Arkonos's|r shield. Kill him to complete the quest
>>|cRXP_WARN_Arkonos is Elite and has a lot of health. Look for help or skip this step if you're unable to solo him|r
.complete 84126,1 
.use 227685
.isOnQuest 84126
step << Paladin
#season 2
#requires SquireLvlupTwo
>>Use the |T237377:0|t[|cFF0070FFDalton's Horn|r] to summon |cRXP_FRIENDLY_Squire Cuthbert|r if you lost him. Talk to him
>>Turning in this quest will train you on how to engrave |T252188:0|t[Shock and Awe] and also give you the |T133745:0|t[|cRXP_FRIENDLY_Testament of Avenging Wrath|r] which will teach you |T135875:0|t[Avenging Wrath]
.turnin 84126 >> Turn in Finish the Fight
.use 226122
.target Squire Cuthbert
.isQuestComplete 84126
step << Paladin
#season 2
#requires SquireLvlupTwo
#sticky
#completewith Termites
.train 407788 >> Use the |T133745:0|t[|cRXP_FRIENDLY_Testament of Avenging Wrath|r] to train |T135875:0|t[Avenging Wrath]
.use 226399
.itemcount 226399,1
step << skip 
#phase 6
#ah
.goto Eastern Plaguelands,80.937,58.515
+|cRXP_WARN_If you bought|r |T133614:0|t[Dark Iron Scraps] |cRXP_WARN_/|r |T134139:0|t[Core of Elements] |cRXP_WARN_/|r |T133571:0|t[Crypt Fiend Parts] |cRXP_WARN_/|r |T133724:0|t[Bone Fragments] |cRXP_WARN_/|r |T136074:0|t[Savage Fronds] |cRXP_WARN_take them out of your mail. If you did not buy any, skip this step|r
.itemcount 22529,<30 
.itemcount 22526,<30 
.itemcount 22525,<30 
.itemcount 22527,<30 
.itemcount 22528,<30 
step << skip 
#phase 6
#completewith 5TurnIns
.goto Western Plaguelands,50.01,76.90,0
>>|cRXP_WARN_If you do not have the Reputation required to accept these quests, grind on nearby |cRXP_ENEMY_Undead|r until you are Friendly with the Argent Dawn|r
>>|cRXP_WARN_If you still have quests to turn in at Western Plaguelands fly there and turn them in, then grind any needed reputation still at Sorrow Hill in WPL. The location is marked on your map|r
.reputation 529,friendly
step << skip 
#phase 6
#optional
.goto Eastern Plaguelands,81.200,59.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne|r
.accept 9136 >> Accept Savage Flora
.turnin 9136 >> Turn in Savage Flora
.itemcount 22529,30
.target Rayne
step << skip 
#phase 6
#optional
.goto Eastern Plaguelands,81.505,58.556
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Leopold|r
.accept 9124 >> Accept Cryptstalker Armor Doesn't Make Itself...
.turnin 9124 >> Turn in Cryptstalker Armor Doesn't Make Itself...
.itemcount 22525,30
.target Huntsman Leopold
step << skip 
#phase 6
#optional
.goto Eastern Plaguelands,81.428,58.507
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rohan the Assassin|r
.accept 9126 >> Accept Bonescythe Digs
.turnin 9126 >> Turn in Bonescythe Digs
.itemcount 22526,30
.target Rohan the Assassin
step << skip 
#phase 6
#optional
.goto Eastern Plaguelands,81.523,58.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r
.accept 9128 >> Accept The Elemental Equation
.turnin 9128 >> Turn in The Elemental Equation
.itemcount 22527,30
.target Archmage Angela Dosantos
step << skip 
#phase 6
#optional
#label 5TurnIns
.goto Eastern Plaguelands,81.798,58.079
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korfax|r
.accept 9131 >> Accept Binding the Dreadnaught
.turnin 9131 >> Turn in Binding the Dreadnaught
.itemcount 22528,30
.target Korfax, Champion of the Light
step << skip 
#phase 6
#completewith next
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khaelyn Steelwing|r
.fly Western Plaguelands>> Fly to Western Plaguelands
.target Khaelyn Steelwing
step << skip 
#phase 6
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5226 >> Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
step << skip 
#phase 6
.goto Western Plaguelands,42.702,84.031
.target Commander Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5237 >> Accept Mission Accomplished!
.turnin 5237 >> Turn in Mission Accomplished!
step << skip 
#phase 6
.goto Western Plaguelands,43.418,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
.turnin 6389 >> Turn in A Plague Upon Thee
.target Nathaniel Dumah
step << skip 
#phase 6
.isQuestTurnedIn 5781
.goto Western Plaguelands,65.7,75.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artist Renfray|r
.turnin 5846 >> Turn in Of Love and Family
.target Artist Renfray
step << !Mage
#label PlaguelandsEnd
>>|cRXP_WARN_If you're not within 40.000 xp away from the threshold skip this step|r
.xp 60-23500 >> Grind mobs untill you're 23500 xp away from level 60
.isOnQuest 6186
step << Mage
>>|cRXP_WARN_If you're not within 40.000 xp away from the threshold skip this step|r
.xp 60-32000 >> Grind mobs untill you're 32000 xp away from level 60
.isOnQuest 6186
step << Mage
#completewith next
.zone Stormwind City >> Teleport to Stormwind City
.isOnQuest 6186
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
.isOnQuest 6186
step << !Mage
#optional
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khaelyn Steelwing|r
.fly Ironforge >> Fly to Ironforge
.target Khaelyn Steelwing
.zoneskip Eastern Plaguelands,1
.isOnQuest 6186
step << !Mage
#optional
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.fly Ironforge >> Fly to Ironforge
.target Bibilfaz Featherwhistle
.zoneskip Western Plaguelands,1
.isOnQuest 6186
step << !Mage
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
.isOnQuest 6186
step
.isQuestTurnedIn 4182
#completewith next
.goto Stormwind City,47.87,31.31,8,0
.goto Stormwind City,47.87,31.31,6 >>Travel toward |cRXP_FRIENDLY_Royal Factor Bathrilor|r upstairs
.isOnQuest 6186
step
.isQuestTurnedIn 4182
.isOnQuest 5022
.goto Stormwind City,48.47,30.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Factor Bathrilor|r inside on the 2nd floor
.turnin 5022 >> Turn in Better Late Than Never
.accept 5048 >> Accept Good Natured Emma
.target Royal Factor Bathrilor
.isOnQuest 6186
step
.isQuestTurnedIn 4182
.isQuestTurnedIn 5022
.goto Stormwind City,52.6,41.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ol' Emma|r inside on the 2nd floor
.turnin 5048 >> Turn in Good Natured Emma
.target Ol' Emma
.isOnQuest 6186
step
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.turnin 6186 >> Turn in The Blightcaller Cometh
.target Highlord Bolvar Fordragon
.isOnQuest 6186
step << Mage
#completewith next
.zone Darnassus >> Teleport to Darnassus
.isOnQuest 4986
step << Mage
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 4986 >> Turn in Glyphed Oaken Branch
.target Mathrengyl Bearwalker
.isOnQuest 4986
step
+|cRXP_WARN_Congratulations on reaching level 60! Thank you for using our guide!
+|cRXP_WARN_Sincerly, the RestedXP team
.disablecheckbox
>>If you are not level 60 yet consider doing a loop of the |cRXP_WARN_Searing Gorge Daily Quests|r. They should likely ding you and provide important reputation with |cRXP_FRIENDLY_Hydraxian Waterlords|r and |cRXP_FRIENDLY_Thorium Brotherhood|r as well as the |T132847:0|t[|cRXP_FRIENDLY_Firelands Embers|r] currency. All of which you will likely need for the endgame
]]);
