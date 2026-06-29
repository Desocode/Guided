RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance 30-40
#season 0,1
#classic
#tbc
#mop
<< Alliance
#name 29-32 Duskwood
#next 32-33 Hillsbrad/Arathi
#displayname 28-31 Duskwood II << sod
#subgroup RXP Speedrun Guide 20-30 << sod
step
#hidewindow
#completewith next
.abandon 277 >> Abandon Fire Taboo
step
#xprate >1.99
#sticky
.abandon 94 >> Abandon A Watchful Eye
step << Mage
#xprate >1.99
.xp <28,1
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
.trainer >> Train your class spells
.target Elsharin
step << Warlock
#xprate >1.99
.xp <28,1
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Head to the Slaughtered Lamb and go downstairs
step << Warlock
#xprate >1.99
.xp <28,1
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Priest/Paladin
#xprate >1.99
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
#xprate >1.99
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
#xprate >1.99
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Warrior
#xprate >1.99
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
#xprate >1.99
.xp <28,1
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step << Druid
#xprate >1.99
.xp <28,1
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
.trainer >> Train your class spells
.target Sheldras Moontree
step << !Priest !Paladin
#xprate >1.99
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step
#xprate >1.99
.isQuestTurnedIn 323
.goto Stormwind City,39.108,27.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop Farthing|r
.turnin 269 >> Turn in Seeking Wisdom
.accept 270 >> Accept The Doomed Fleet
.target Bishop Farthing
step
#xprate >1.99
.goto Stormwind City,38.72,25.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
>>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_walks around through the Cathedral|r
.accept 1274 >> Accept The Missing Diplomat
.target Thomas
step
#xprate >1.99
#season 0,1
.goto Stormwind City,40.551,30.959
.target Brother Sarno
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sarno|r
.accept 2923 >> Accept Tinkmaster Overspark
step << Hunter
#xprate >1.99
.xp <28,1
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step
#xprate >1.99
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
step
#season 0,1
#xprate <1.2
#completewith start
+ This segment has a long grinding session, you can substitute that for a Gnomeregan run
step << !Mage !Hunter
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.goto Wetlands,9.49,59.69
.fly Ironforge>> Fly to Ironforge
.target Shellei Brondir
step << Mage
#xprate <1.99
#completewith next
.zone Ironforge >> Teleport to Ironforge
step << Mage
#xprate <1.99
.goto Ironforge,27.18,8.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << Mage
#xprate <1.99
.goto Ironforge,31.33,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginny Longberry|r
.vendor >> |cRXP_BUY_Buy 3|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
.collect 17031,3 
.target Ginny Longberry
step << !Druid !Warrior !Hunter !Mage !Priest !Rogue
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Briarthorn << Warlock
.target Brandur Ironhammer << Paladin
step << Warlock
#xprate <1.99
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus] |cRXP_BUY_or your|r |T136221:0|t[Voidwalker]
.target Jubahl Corpseseeker
step << Priest
#xprate <1.99
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harick Boulderdrum|r downstairs
.goto Ironforge,22.837,17.094,8,0
.goto Ironforge,21.131,17.276,5,0
.goto Ironforge,23.135,15.936
>>|cRXP_BUY_Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_if it's better than your current wand|r
.collect 5347,1 
.target Harick Boulderdrum
step
#xprate <1.99
.goto Ironforge,63.50,67.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Balloo|r
.turnin 637 >> Turn in Sully Balloo's Letter
.timer 17,Sully Balloo's Letter RP
.accept 683 >> Accept Sara Balloo's Plea
.target Sara Balloo
step
#xprate <1.99
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.turnin 683 >> Turn in Sara Balloo's Plea
.accept 686 >> Accept A King's Tribute
.target King Magni Bronzebeard
step
#xprate <1.99
#era/som
.goto Ironforge,39.03,88.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.turnin 686 >> Turn in A King's Tribute
.accept 689 >> Accept A King's Tribute
.target Grand Mason Marblesten
step << Hunter
#xprate <1.99
.goto Ironforge,61.442,88.232,15,0
.goto Ironforge,61.549,89.432
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalgus Thunderfist|r downstairs
>>|cRXP_BUY_Buy a|r |T134402:0|t[|cRXP_FRIENDLY_Heavy Quiver|r]
.collect 7371,1
.target Thalgus Thunderfist
step
#xprate <1.99
.goto Ironforge,72.74,94.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Longbeard|r
.accept 1179 >>Accept The Brassbolts Brothers
.target Pilot Longbeard
step << !Mage
#xprate <1.99
#completewith Eye
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the tram|r
step << Mage
#xprate <1.99
#completewith Eye
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City>> Teleport to Stormwind
step
#xprate <1.99
#label BlessedArm
.goto Stormwind City,51.75,12.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
.turnin 322 >> Turn in Blessed Arm
.accept 325 >> Accept Armed and Ready
.target Grimand Elmore
.isQuestTurnedIn 324
step
#xprate <1.99
#sticky
#label Eye
.goto Stormwind City,39.60,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.turnin 293 >> Turn in Cleansing the Eye
.target Archbishop Benedictus
step
#xprate <1.99
.goto Stormwind City,38.72,25.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
>>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_walks around through the Cathedral|r
.accept 1274 >> Accept The Missing Diplomat
.target Thomas
step << Hunter
#xprate <1.99
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
.xp <30,1
step << Hunter
#xprate <1.99
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r
.trainer >> Train your pet spells
>>|cRXP_WARN_Make sure you have your|r |T136085:0|t[Nature] |cRXP_WARN_and|r |T135850:0|t[Frost] |cRXP_WARN_reistances maxed on your pet. Talk to|r |cRXP_FRIENDLY_Karrina Mekenda|r |cRXP_WARN_to respec it if you don't have enough pet training points|r
.target Karrina Mekenda
.xp <30,1
step
#requires Eye
.goto Stormwind City,78.30,25.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop DeLavey|r
.turnin 1274 >> Turn in The Missing Diplomat
.accept 1241 >> Accept The Missing Diplomat
.target Bishop DeLavey
step
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
>>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
.turnin 337 >> Turn in An Old History Book
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step << Hunter
#xprate <1.99
#completewith start
.goto StormwindClassic,61.609,15.269,0
.trainer >> |cRXP_WARN_If you hit level 30 turning in the next few quests in Stormwind, remember to train class/pet skills if you haven't already|r
.target Einris Brightspear
step
.goto Stormwind City,73.17,78.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorgen|r
.turnin 1241 >> Turn in The Missing Diplomat
.accept 1242 >> Accept The Missing Diplomat
.target Jorgen
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1242 >> Turn in The Missing Diplomat
.accept 1243 >> Accept The Missing Diplomat
.target Elling Trias
step
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.goto Stormwind City,57.00,72.88
.bankwithdraw 916,1451,2378,1130 >> Withdraw the following items from your bank:
>>|T133688:0|t[A Torn Journal Page]
>>|T134776:0|t[Bottle of Zombie Juice]
>>|T133718:0|t[Skeleton Finger]
>>|T134799:0|t[Vial of Spider Venom]
.target Newton Burnside
step
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.goto Stormwind City,57.00,72.88
.bankdeposit 2784,5849,3712 >> Deposit the following items into your bank:
>>|T134187:0|t[Musquash Root]
>>|T132765:0|t[Crate of Crash Helmets]
>>|T134026:0|t[Turtle Meat]
.target Newton Burnside
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>Buy the following items for faster turn ins at Duskwood shortly
>>|T133024:0|t[Bronze Tube]
.collect 4371,1,174,1 
.bronzetube
.target Auctioneer Jaxon
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy 7|r |T134743:0|t[Jungle Remedy] |cRXP_BUY_from the Auction House for a quest later in Stranglethorn Vale|r
>>|cRXP_WARN_This is optional, you may also farm them from the mobs later|r
>>|cRXP_WARN_You may want to buy extra for yourself to use as it cures diseases and removes poisons|r << !Paladin
.collect 2633,7,204,1 
.target Auctioneer Jaxon
step
#label start
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.goto Stormwind City,66.27,62.12
.fly Duskwood>> Fly to Duskwood
.target Dungar Longdrink
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
>>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
.accept 58 >> Accept The Night Watch
.target Commander Althea Ebonlocke
step
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
.goto Duskwood,73.87,44.40
.home >> Set your Hearthstone to Darkshire
.target Innkeeper Trelayne
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
#completewith next
>>Kill |cRXP_ENEMY_Black Widow Hatchlings|r on the way to Abercrombie. Loot them for |T134799:0|t[|cRXP_LOOT_Vials of Spider Venom|r]
>>|cRXP_WARN_Don't go out of your way to complete this objective now, you will complete it later|r
.complete 101,2 
.mob Black Widow Hatchling
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 159 >> Turn in Juice Delivery
.accept 133 >> Accept Ghoulish Effigy
.target Abercrombie
step
.goto Duskwood,24.26,32.90
>>Kill |cRXP_ENEMY_Plague Spreaders|r. Loot them for their |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Fangs|r
>>|cRXP_WARN_Other |cRXP_ENEMY_Ghouls|r may also drop |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Fangs|r but focus on|r |cRXP_ENEMY_Plague Spreaders|r
.complete 58,1 
.mob +Plague Spreader
.complete 133,1 
.mob +Flesh Eater
.mob +Rotted One
.mob +Bone Chewer
.complete 101,1 
.mob +Flesh Eater
.mob +Rotted One
.mob +Bone Chewer
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 133 >> Turn in Ghoulish Effigy
.accept 134 >> Accept Ogre Thieves
.target Abercrombie
step
#completewith next
>>Kill |cRXP_ENEMY_Black Widow Hatchlings|r on the way south. Loot them for |T134799:0|t[|cRXP_LOOT_Vials of Spider Venom|r]
>>|cRXP_WARN_Don't go out of your way to complete this objective now, you will complete it later|r
.complete 101,2 
.mob Black Widow Hatchling
step
.goto Duskwood,23.926,72.075
>>Open the |cRXP_PICK_Defias Strongbox|r. Loot it for the |cRXP_LOOT_Defias Docket|r
.complete 1244,1 
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
.target +Barnil Stonepot
.goto Stranglethorn Vale,35.662,10.529
.turnin 583 >> Turn in Welcome to the Jungle
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
step
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 185 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.accept 190 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
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
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.turnin 190 >> Turn in Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
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
>>Kill |cRXP_ENEMY_Black Widow Hatchlings|r and |cRXP_ENEMY_Carrion Recluses|r. Finish off looting them for their |cRXP_LOOT_Spider Venom|r
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
#xprate <1.99
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <30,1 
step << Druid
#xprate <1.99
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <30,1 
step
#xprate <1.99
.hs >> Hearth to Darkshire
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#xprate >1.99
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Darkshire >> Fly to Duskwood
.target Thor
step
#xprate <1.2
#completewith next
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
.vendor >>|cRXP_BUY_Buy food/water. You'll need at least 2 1/2 stacks for the upcoming segment|r
.target Innkeeper Trelayne
step
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r inside the inn
.turnin 78 >> Turn in The Legend of Stalvan
.accept 79 >> Accept The Legend of Stalvan
.target Tavernkeep Smitts
step << Hunter
#xprate <1.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avette Fellwood|r
.goto Duskwood,73.28,44.76
.vendor 228 >>|cRXP_BUY_Stock up on|r |T132382:0|t[Razor Arrows] |cRXP_WARN_Don't forget this, there is a grinding session ahead!|r
.target Avette Fellwood
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
>>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
.turnin 58 >> Turn in The Night Watch
.turnin 79 >> Turn in The Legend of Stalvan
.accept 80 >> Accept The Legend of Stalvan
.target Commander Althea Ebonlocke
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r in the town hall building
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
>>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
.turnin 97 >> Turn in The Legend of Stalvan
.accept 98 >> Accept The Legend of Stalvan
.turnin 227 >> Turn in Morgan Ladimore
.accept 228 >> Accept Mor'Ladim
.target Commander Althea Ebonlocke
step
#sticky
.destroy 2154 >> Throw away |T133741:0|t[The Story of Morgan Ladimore]
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
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r inside
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
.goto Duskwood,58.64,80.00,50 >> Head to the worgen area south of the Rotten Orchard
step
#xprate <1.2
#completewith worgenGrind
.goto Duskwood,62.33,81.77,0
.goto Duskwood,61.30,74.36,0
.goto Duskwood,65.10,73.91,0
.goto Duskwood,64.14,68.49,0
>>Kill |cRXP_ENEMY_Nightbane Worgens|r. Loot them for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]
>>|cRXP_WARN_Don't start the quest for it yet|r
.collect 2794,1,337
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
.goto Duskwood,62.33,81.77
.goto Duskwood,71.9,72.1,0
>> Kill |cRXP_ENEMY_Nightbane Vile Fangs|r and |cRXP_ENEMY_Nightbane Tainted Ones|r
>>|cRXP_WARN_Be careful as all the mobs in the area respawn at once after 4.75-6.5 minutes of killing the first one|r
>>This area is a popular grinding spot for mages and may be constested. If you feel like there's too much competition you can complete this objective in the Roland's Doom area (cave, marked on your map)
.complete 222,1 
.mob +Nightbane Vile Fang
.complete 222,2 
.mob +Nightbane Tainted One
step
#xprate <1.2
#label worgenGrind
.goto Duskwood,62.33,81.77,0
.goto Duskwood,61.30,74.36,0
.goto Duskwood,65.10,73.91,0
.goto Duskwood,64.14,68.49,0
.xp 31+38100 >> Grind until 38100/50800 xp into level 31 << !Druid
.xp 31+43180 >> Grind until 43180/50800 xp into level 31 << Druid
>>Kill |cRXP_ENEMY_Nightbane Worgens|r until your Hearthstone cooldown is <25 minutes
>>|cRXP_WARN_If you know that you will be leveling in one session or generally not getting a lot of rested experience up to level 38, consider grinding to level 32 instead. This will help you reach a level 38 xp gate that is required later on|r
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
#xprate <1.2
.goto Duskwood,62.33,81.77,0
.goto Duskwood,61.30,74.36,0
.goto Duskwood,65.10,73.91,0
.goto Duskwood,64.14,68.49,0
>>Keep killing |cRXP_ENEMY_Nightbane Worgens|r. Untill you loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r]
>>|cRXP_WARN_Don't start the quest for it yet|r
.collect 2794,1,337
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
#xprate <1.2
.goto Duskwood,62.33,81.77,0
.goto Duskwood,61.30,74.36,0
.goto Duskwood,65.10,73.91,0
.goto Duskwood,64.14,68.49,0
+Keep killing |cRXP_ENEMY_Nightbane Worgens|r until your Hearthstone cooldown is <25 minutes
>>|cRXP_WARN_This step will autocomplete when your HS cooldown is low enough to continue|r
.cooldown item,6948,<1500
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
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
#completewith next
>>Clear your way to the 2nd floor of the house
.cast 8913 >>|cRXP_WARN_Equip|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_in your off-hand|r
>>|cRXP_WARN_Use|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
>>|cRXP_WARN_Remember to equip your weapon/off-hand slot after weakening him|r
.use 7297
step
.goto Duskwood,16.90,33.40
>>Kill |cRXP_ENEMY_Morbent Fel|r
>>|cRXP_WARN_This quest can be difficult. You may skip this step and come back at a higher level if you wish|r
.complete 55,1 
.use 7297
.mob Morbent Fel
.isOnQuest 55
step
.goto Duskwood,19.59,37.28
>>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
>>|cRXP_WARN_This quest can be difficult. You may skip this step and come back at a higher level if you wish|r
.complete 228,1 
.unitscan Mor'Ladim
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 55 >> Turn in Morbent Fel
.isQuestComplete 55
.target Sven Yorgen
step
.goto Duskwood,19.59,37.28
>>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
>>|cRXP_WARN_This quest can be difficult. You may skip this step and come back at a higher level if you wish|r
.complete 228,1 
.unitscan Mor'Ladim
step
#completewith next
.goto Duskwood,44.598,87.565,0
.goto Stranglethorn Vale,40.635,3.514
.zone Stranglethorn Vale >> Travel to Stranglethorn Vale
step
#completewith stvEnd2
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
>>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
>>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
.accept 215 >> Accept Jungle Secrets
.unitscan Private Thorsen
.mob Kurzen's Agent
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.accept 583 >> Accept Welcome to the Jungle
.target +Barnil Stonepot
.goto Stranglethorn Vale,35.662,10.529
.turnin 583 >> Turn in Welcome to the Jungle
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 185 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.accept 190 >> Accept Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
step
#completewith next
>>Kill |cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step
.goto Stranglethorn Vale,35.40,12.50,50,0
.goto Stranglethorn Vale,33.30,11.90,50,0
.goto Stranglethorn Vale,31.76,9.00,50,0
.goto Stranglethorn Vale,35.40,12.50
>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
.goto Stranglethorn Vale,41.50,12.00,50,0
.goto Stranglethorn Vale,42.74,12.40,50,0
.goto Stranglethorn Vale,41.43,9.77,50,0
.goto Stranglethorn Vale,40.67,11.65,50,0
.goto Stranglethorn Vale,41.50,12.00
>>Kill |cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step
#label stvEnd2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
>>|cRXP_WARN_Don't accept the follow ups yet|r
.turnin 185 >> Turn in Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.turnin 190 >> Turn in Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
>>|cRXP_WARN_Don't accept the follow up yet|r
.turnin 215 >> Turn in Jungle Secrets
.isOnQuest 215
.target Lieutenant Doren
step << Druid
#xprate <1.2
.goto Stranglethorn Vale,33.43,11.85
.xp 32 >> Grind to 32
step << Druid
#xprate <1.2
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <32,1
step << Druid
#xprate <1.2
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <32,1
step << Druid
#xprate >1.99
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <30,1 
step << Druid
#xprate >1.99
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <30,1 
step
#completewith next
.hs >> Hearth to Darkshire
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
>>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
.turnin 228 >> Turn in Mor'Ladim
.isQuestComplete 228
.target Commander Althea Ebonlocke
step
.goto Duskwood,73.59,46.89
.isQuestTurnedIn 228
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
>>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town untill she respawns or changing your layer (if possible)|r
.accept 229 >> Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 253 >> Turn in Bride of the Embalmer
.isQuestComplete 253
.target Lord Ello Ebonlocke
step
#sticky
.destroy 3248 >>Throw away the |T134939:0|t[Translated Letter from The Embalmer] you no longer need it
step
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_she patrols around the Darkshire main square|r
>>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols around in Darkshire|r
.turnin 229 >> Turn in The Daughter Who Lived
.accept 231 >> Accept A Daughter's Love
.isQuestTurnedIn 228
.target Watcher Ladimore
step
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
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.goto Duskwood,77.49,44.28
.fly Stormwind>> Fly to Stormwind
.target Felicia Maline
step << Mage
#xprate <1.2
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
#xprate <1.2/#som
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
step << Mage
#xprate <1.2
.isOnQuest 1078
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.goto Stormwind City,43.088,80.391
.turnin 1078 >> Turn in Retrieval for Mauren
.target Collin Mauren
step << Mage
#xprate <1.99
.goto Stormwind City,57.00,72.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 2784,5849,3712,2794 >> Withdraw the following items:
>>|T132765:0|t[Crate of Crash Helmets]
>>|T134026:0|t[Turtle Meat]
>>|T134187:0|t[Musquash Root]
>>|T133741:0|t[An Old History Book]
.target Newton Burnside
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1245 >> Turn in The Missing Diplomat
.accept 1246 >> Accept The Missing Diplomat
.target Elling Trias
step << !Mage
#xprate <1.99
.goto Stormwind City,57.00,72.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 2784,5849,3712,2794 >> Withdraw the following items:
>>|T132765:0|t[Crate of Crash Helmets]
>>|T134026:0|t[Turtle Meat]
>>|T134187:0|t[Musquash Root]
>>|T133741:0|t[An Old History Book]
.target Newton Burnside
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
>>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Old Town Thugs|r |cRXP_WARN_will reset when you defeat Dashel but then become hostile again after returning to their original locations|r
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
step
#season 0,1
#xprate <1.99 << !Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
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
step
#xprate <1.99
.goto Stormwind City,75.226,31.670
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Baurles K. Wishock|r
.turnin 336 >> Turn in A Noble Brew
.target Lord Baurles K. Wishock
step
.goto Stormwind City,68.7,29.1,20 >> Head to the Stormwind Keep
.itemcount 2794,1 
step
.goto Stormwind City,70.2,11.6,20 >> Head to the Stormwind Keep Library
.itemcount 2794,1 
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
step
.dungeon Gnomer
#season 0,1
.goto StormwindClassic,55.511,12.502
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
.accept 2928 >> Accept Gyrodrillmatic Excavationators
.target Shoni the Shilent
step << !Mage
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the Tram|r
step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Teleport to Ironforge
step
#season 0,1
.goto Ironforge,69.540,50.325
.target Tinkmaster Overspark
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
.turnin -2923 >> Turn in Tinkmaster Overspark
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
.target +Gnoarn
.goto Ironforge,69.182,50.556
.turnin -2923 >> Turn in Tinkmaster Overspark
.accept 2922 >> Accept Save Techbot's Brain!
.target +Tinkmaster Overspark
.goto Ironforge,69.540,50.325
.accept 2929 >> Accept The Grand Betrayal
.target +High Tinker Mekkatorque
.goto Ironforge,68.743,48.969
.accept 2930 >> Accept Data Rescue
.target +Master Mechanic Castpipe
.goto Ironforge,69.823,48.101
.accept 2924 >> Accept Essential Artificials
.target +Klockmort Spannerspan
.goto Ironforge,67.925,46.101
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
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
.target Innkeeper Belm
.goto Dun Morogh,47.377,52.523
.home >> Set your Hearthstone to Kharanos
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
.hs >> Hearth to Kharanos
.zoneskip Dun Morogh
.zoneskip Ironforge
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
.goto Ironforge,36.0,4.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
.turnin 2947 >> Turn in Return of the Ring
.accept 2948 >> Accept Gnome Improvement
.target Talvash del Kissel
.isOnQuest 2947
step
.dungeon Gnomer
#season 0,1
.goto Ironforge,36.0,4.0
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
.target +Tinkmaster Overspark
.goto Ironforge,69.540,50.325
.turnin -2929,1 >> Turn in The Grand Betrayal
.target +High Tinker Mekkatorque
.goto Ironforge,68.743,48.969
.turnin -2930,1 >> Turn in Data Rescue
.target +Master Mechanic Castpipe
.goto Ironforge,69.823,48.101
.turnin -2924,1 >> Turn in Essential Artificials
.target +Klockmort Spannerspan
.goto Ironforge,67.925,46.101
step
.dungeon Gnomer
#season 0,1
.abandon 2948 >> Abandon Gnome Improvement
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
