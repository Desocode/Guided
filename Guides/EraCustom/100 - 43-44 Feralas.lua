RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 40-50
#classic
#tbc
#mop
<< Horde
#name 43-44 Feralas
#displayname 44-48 Feralas << sod
#next 44-45 Southern Stranglethorn;46-48 Tanaris
#somname 42-43 Feralas
step
#completewith FeralasHS
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Feralas >>Fly to Feralas
.target Bulkrek Ragefist
.zoneskip Feralas
step
#completewith FeralasHS
.line Feralas,75.99,42.85,76.49,43.22,75.53,43.68,74.38,44.01,73.56,46.53,73.52,45.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok|r
>>|cRXP_WARN_She patrols the road through Camp Mojache|r
.turnin 2981 >> Turn in A Threat in Feralas
.accept 2975 >> Accept The Ogres of Feralas
.unitscan Rok Orhan
step
.goto Feralas,75.70,44.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orwin|r
.accept 2987 >> Accept Gordunni Cobalt
.target Orwin Gizzmick
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronk|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Bronk
.subzoneskip 1099,1
step
.goto Feralas,76.00,42.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krueg|r
.accept 2973 >> Accept A New Cloak's Sheen
.target Krueg Skullsplitter
step
.goto Feralas,74.90,42.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
.accept 2862 >> Accept War on the Woodpaw
.target Hadoken Swiftstrider
step
.goto Feralas,74.50,42.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor|r inside the building
.accept 2822 >> Accept The Mark of Quality
.target Jangdor Swiftstrider
step
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Greul|r
.home >> Set your Hearthstone to Camp Mojache
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.collect 4537,5 >>Buy a couple |T133980:0|t|cRXP_LOOT_Tel'Abim Bananas|r. |cRXP_WARN_You will need at least one to unlock a rune later|r << Hunter sod
.target Innkeeper Greul
.train 416083,1 << Hunter SoD
.bindlocation 1099
.isQuestAvailable 2863,2973
step << Hunter SoD
#optional
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Greul|r
.home >> Set your Hearthstone to Camp Mojache
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Greul
.train 416083,3
.bindlocation 1099
.isQuestAvailable 2863,2973
step
#optional
#label FeralasHS
step
#loop
.line Feralas,75.99,42.85,76.49,43.22,75.53,43.68,74.38,44.01,73.56,46.53,73.52,45.13
.goto Feralas,73.56,46.53,20,0
.goto Feralas,73.71,46.03,20,0
.goto Feralas,75.99,42.85,20,0
.goto Feralas,76.49,43.22,20,0
.goto Feralas,75.53,43.68,20,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok|r
>>|cRXP_WARN_She patrols the road through Camp Mojache|r
.turnin 2981 >> Turn in A Threat in Feralas
.accept 2975 >> Accept The Ogres of Feralas
.unitscan Rok Orhan
step << Hunter
#completewith next
.goto Feralas,74.49,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shyrka Wolfrunner|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Longtooth Runner|r shortly
.target Shyrka Wolfrunner
step << Hunter
#loop
.goto Feralas,72.18,43.82,0
.goto Feralas,70.61,41.52,0
.goto Feralas,72.18,43.82,60,0
.goto Feralas,70.61,41.52,60,0
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Longtooth Runner|r to tame it|r 
.train 17266 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 6)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Longtooth Runner
step << Hunter
.goto Feralas,74.49,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shyrka Wolfrunner|r
.stable >> Abandon the |cRXP_ENEMY_Longtooth Runner|r and retrieve your regular pet
.target Shyrka Wolfrunner
.train 17266,3
.zoneskip Feralas,1
step << Warlock
#season 2
#sticky
#completewith FeralasEnd
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
#completewith FeralasEnd
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
#completewith FeralasEnd
.itemcount 221499,1 << Warlock 
.itemcount 223147,1 << Mage 
.train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
.train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
.use 221499 << Warlock
.use 223147 << Mage
step
#sticky
#completewith YetiHide
>>Look out for the |T132836:0|t[|cRXP_FRIENDLY_Distress Beacon|r] drop as you quest throughout Feralas
.collect 8705,1,2766
.accept 2766 >> Accept Find OOX-22/FE!
step
#loop
.goto Feralas,72.79,39.32,0
.goto Feralas,72.79,39.32,60,0
.goto Feralas,72.11,37.21,60,0
.goto Feralas,73.18,36.29,60,0
>>Kill |cRXP_ENEMY_Woodpaw Gnolls|r. Loot them for their |cRXP_LOOT_Manes|r
>>|cRXP_ENEMY_Woodpaw Trappers|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
.complete 2862,1 
.mob Woodpaw Mongrel
.mob Woodpaw Trapper
.mob Woodpaw Brute
.mob Woodpaw Reaver
.mob Woodpaw Mystic
.mob Woodpaw Alpha
step
#completewith scrolltwo
.goto Feralas,75.30,28.26,0
.use 9466 >>|cRXP_WARN_Use|r |T134435:0|t[Orwin's Shovel] |cRXP_WARN_at the blue circles|r
>>Loot the |cRXP_PICK_Gordunni Dirt Mounds|r that spawn on the ground for |cRXP_LOOT_Gordunni Cobalt|r
.complete 2987,1 
step
#completewith Shovel
.goto Feralas,76.10,33.20,0
>>Kill |cRXP_ENEMY_Gordunni Ogres|r, |cRXP_ENEMY_Ogre Mages|r, and |cRXP_ENEMY_Brutes|r at the Gordunni Outpost
.complete 2975,1 
.mob +Gordunni Ogre
.complete 2975,2 
.mob +Gordunni Ogre Mage
.complete 2975,3 
.mob +Gordunni Brute
step
#label Scroll
#loop
.goto Feralas,75.25,34.44,0
.goto Feralas,79.40,34.80,25,0
.goto Feralas,80.50,34.30,25,0
.goto Feralas,80.80,35.00,25,0
.goto Feralas,75.10,29.80,25,0
.goto Feralas,75.20,28.70,25,0
.goto Feralas,74.60,27.90,25,0
>>Loot the |cRXP_PICK_Scroll|r on the ground for the |T134943:0|t[|cRXP_LOOT_Gordunni Scroll|r]. Use it to start the quest
>>|cRXP_WARN_Follow the waypoint arrow to its different spawn locations|r
.collect 9370,1,2978 
.accept 2978 >> Accept The Gordunni Scroll
.use 9370
step << Warrior
#season 2
.goto Feralas,74.8,24.9
>>Find and kill |cRXP_ENEMY_Ohk'zi|r inside the cave (lvl 43 elite Ogre). Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Unbridled|r]
.collect 220682,1 
.unitscan Ohk'zi
.train 427081,1
step << Warrior
#season 2
.train 427081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Unbridled|r] |cRXP_WARN_to learn|r |T132352:0|t[Rampage]
.use 220682
.train 427081,1
step
#optional
#label scrolltwo
step
#label Shovel
#loop
.goto Feralas,74.29,28.98,0
.goto Feralas,74.29,28.98,30,0
.goto Feralas,75.35,28.23,30,0
.goto Feralas,76.01,29.00,30,0
.goto Feralas,76.89,29.60,30,0
.goto Feralas,76.47,33.05,30,0
.goto Feralas,76.70,33.86,30,0
.use 9466 >>|cRXP_WARN_Use|r |T134435:0|t[Orwin's Shovel] |cRXP_WARN_at the blue circles|r
>>Loot the |cRXP_PICK_Gordunni Dirt Mounds|r that spawn on the ground for |cRXP_LOOT_Gordunni Cobalt|r
.complete 2987,1 
step
#loop
.goto Feralas,74.82,27.53,0
.goto Feralas,74.82,27.53,50,0
.goto Feralas,75.25,29.55,50,0
.goto Feralas,76.51,30.48,50,0
.goto Feralas,75.45,34.59,50,0
>>Kill |cRXP_ENEMY_Gordunni Ogres|r, |cRXP_ENEMY_Ogre Mages|r, and |cRXP_ENEMY_Brutes|r at the Gordunni Outpost
.complete 2975,1 
.mob +Gordunni Ogre
.complete 2975,2 
.mob +Gordunni Ogre Mage
.complete 2975,3 
.mob +Gordunni Brute
step << Shaman
#completewith WoodpawWarTurnin
.hs >> Hearth to Camp Mojache
.use 6948
.bindlocation 1099,1
.subzoneskip 1099
step << !Shaman
#completewith next
.subzone 1099 >> Return to Camp Mojache
step
#label WoodpawWarTurnin
.goto Feralas,74.90,42.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
.turnin 2862 >> Turn in War on the Woodpaw
.accept 2863 >> Accept Alpha Strike
.target Hadoken Swiftstrider
step
.goto Feralas,75.70,44.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orwin|r
.turnin 2987 >> Turn in Gordunni Cobalt
.target Orwin Gizzmick
step
#loop
.line Feralas,75.99,42.85,76.49,43.22,75.53,43.68,74.38,44.01,73.56,46.53,73.52,45.13
.goto Feralas,73.56,46.53,20,0
.goto Feralas,73.71,46.03,20,0
.goto Feralas,75.99,42.85,20,0
.goto Feralas,76.49,43.22,20,0
.goto Feralas,75.53,43.68,20,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok|r
>>|cRXP_WARN_She patrols the road through Camp Mojache|r
.turnin 2975 >> Turn in The Ogres of Feralas
.accept 2980 >> Accept The Ogres of Feralas
.turnin 2978 >> Turn in The Gordunni Scroll
.accept 2979 >> Accept Dark Ceremony
.target Rok Orhan
step << Warlock
#season 2
.goto Feralas,69.6,43.3,
>>Head to the marked location west of Camp Mojache. Look for a |cRXP_ENEMY_Dead Diseased Grimtotem Shaman|r laying next to a tree. Open the |cRXP_PICK_Grimtotem Chest|r next to the corpse, loot it for a |T133291:0|t|cRXP_LOOT_Grimtotem Necklace|r
.collect 221974,1 
.unitscan Dead Diseased Grimtotem Shaman
.train 431743,1
step
.goto Feralas,68.80,48.00
>>Kill |cRXP_ENEMY_Sprite Darters|r. Loot them for their |cRXP_LOOT_Wings|r
.complete 2973,1 
.mob Sprite Darter
step
#loop
.goto Feralas,69.05,55.78,0
.goto Feralas,68.60,54.25,0
.goto Feralas,71.51,55.98,0
.goto Feralas,72.42,56.63,0
.goto Feralas,73.21,56.25,0
.goto Feralas,69.05,55.78,50,0
.goto Feralas,68.60,54.25,50,0
.goto Feralas,71.51,55.98,50,0
.goto Feralas,72.42,56.63,50,0
.goto Feralas,73.21,56.25,50,0
.goto Feralas,72.42,56.63,50,0
.goto Feralas,71.51,55.98,50,0
.goto Feralas,68.60,54.25,50,0
>>Kill |cRXP_ENEMY_Woodpaw Alphas|r within the allotted time
>>|cRXP_WARN_There's usually one in each camp|r
>>|cRXP_WARN_This is a timed quest (1hour). Re-accept the quest if you failed it|r
.complete 2863,1 
.unitscan Woodpaw Alpha
step
#completewith AlphaStrikeTI
.hs >> Hearth to Camp Mojache
.use 6948
.cooldown item,6948,>0
.bindlocation 1099,1
.subzoneskip 1099
step
#completewith AlphaStrikeTI
.subzone 1099 >> Return to Camp Mojache
.cooldown item,6948,<0
step
.goto Feralas,76.00,42.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krueg|r
.turnin 2973 >> Turn in A New Cloak's Sheen
.accept 2974 >> Accept A Grim Discovery
.target Krueg Skullsplitter
step
#label AlphaStrikeTI
.goto Feralas,74.90,42.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
.turnin 2863 >> Turn in Alpha Strike
.accept 2902 >> Accept Woodpaw Investigation
.target Hadoken Swiftstrider
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronk|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Bronk
.subzoneskip 1099,1
step << Druid
#season 2
#optional
#label GaleWinds
#completewith GrimtotemHorns
.train 431451,1
>>You can go a bit out of your way to find and kill |cRXP_ENEMY_Namida Grimtotem|r (marked on your map). This awards |T134419:0|t[|cRXP_FRIENDLY_Rune of the Windstorm|r], useless for leveling so feel free to skip this step if you don't care about collecting it
.goto Feralas,66.8,38.6
.collect 220754,1
.mob Namida Grimtotem
step << Druid
#season 2
#optional
#requires GaleWinds
#completewith GrimtotemHorns
.itemcount 220754,1
.use 220754
.train 431451 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Windstorm|r] |cRXP_WARN_to train|r |T236154:0|t[Gale Winds]
step
#label GrimtotemHorns
#loop
.goto Feralas,66.63,46.62,0
.goto Feralas,69.92,38.97,60,0
.goto Feralas,68.71,39.90,60,0
.goto Feralas,68.08,46.12,60,0
.goto Feralas,66.63,46.62,60,0
.goto Feralas,69.92,38.97,60,0
>>Kill |cRXP_ENEMY_Grimtotem Taurens|r. Loot them for their |cRXP_LOOT_Horns|r
>>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
.complete 2974,1 
.mob Grimtotem Shaman
.mob Grimtotem Raider
.mob Grimtotem Naturalist
step
.goto Feralas,71.60,55.90
>>Click on the |cRXP_PICK_Woodpaw Battle Map|r, on top of a crate
.turnin 2902 >> Turn in Woodpaw Investigation
.accept 2903 >> Accept The Battle Plans
step << Shaman
#season 2
#optional
#completewith next
+|cRXP_WARN_Completing the next couple steps will award you with the|r |T237590:0|t[Tidal Waves] |cRXP_WARN_rune. It's mainly useful for healers and not going to help you much with leveling|r
+|cRXP_WARN_Feel free to skip it if you want to save some time|r
step << Shaman
#season 2
.train 432234,1
>>Click on the |cRXP_PICK_Old Crate|r behind the tent to loot the |T134239:0|t[Old Key]
.goto Feralas,76.6,48.0
.collect 221497,1
step << Shaman
#season 2
.train 432234,1
>>Click on the |cRXP_PICK_Old Chest|r at the seafloor to loot the |T134419:0|t[|cRXP_FRIENDLY_Rune of Tidal Waves|r]
*|cRXP_WARN_Be careful! This will summon FOUR |cRXP_ENEMY_Simmering Elementals|r (lvl 42, Frost immune)|r
.goto Feralas,79.2,49.4
.collect 220612,1
.mob Simmering Elemental
step << Shaman
#season 2
.itemcount 220612,1
.use 220612
.train 432234 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Tidal Waves|r] |cRXP_WARN_to learn|r |T237590:0|t[Tidal Waves]
.train 432234,1
step << Warlock
#season 2
.goto 1444/1,695.400,-4920.300,20 >>Go to the path leading up the hill towards the Woodpaw Den
.train 431743,1
step << Warlock
#season 2
.goto 1444/1,831.200,-4851.000,20 >>Go up the path marked by torches
.train 431743,1
step << Warlock
#season 2
.goto 1444/1,826.500,-4725.100
>>Stick to the right edge of the camp and go to the |cRXP_ENEMY_Dead Diseased Woodpaw Mystic|r. Next to him you will find a |cRXP_PICK_Woodpaw Bag|r, loot it for a |T135139:0|t|cRXP_LOOT_Broken Woodpaw Staff|r
.collect 221975,1 
.unitscan Dead Diseased Woodpaw Mystic
.train 431743,1
step << Warlock
#season 2
>>Use the |T135139:0|t|cRXP_LOOT_Broken Woodpaw Staff|r to combine it with the |T133291:0|t|cRXP_LOOT_Grimtotem Necklace|r and create a |T135153:0|t|cRXP_LOOT_Diseased Nature Staff|r
.collect 221976,1 
.use 221975
.train 431743,1
step << Warlock
#season 2
.goto Feralas,72.6,50.8
>>Look for a sleeping |cRXP_ENEMY_Diseased Forest Walker|r, use your |T135153:0|t|cRXP_LOOT_Diseased Nature Staff|r to awaken him. Defeat him and loot for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Pandemic|r]
.collect 220617,1 
.use 221976
.train 431743,1
step << Warlock
#season 2
.train 431743 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Pandemic|r] |cRXP_WARN_to learn|r |T136227:0|t[Pandemic]
.use 220617
.train 431743,1
.itemcount 220617,1
step << Warlock
#optional
#completewith next
#season 2
.engrave 1 >> Open your character sheet and engrave your helmet with |T136227:0|t[Pandemic]
.train 431743,3
step
.goto Feralas,76.00,42.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krueg|r
.turnin 2974 >> Turn in A Grim Discovery
.accept 2976 >> Accept A Grim Discovery
.target Krueg Skullsplitter
step
.goto Feralas,74.90,42.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
.turnin 2903 >> Turn in The Battle Plans
.accept 7730 >> Accept Zukk'ash Infestation
.accept 7731 >> Accept Stinglasher
.target Hadoken Swiftstrider
step << Hunter
.goto Feralas,74.94,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cawind Trueaim|r
>>|cRXP_BUY_Buy|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_from him|r
.collect 11285,2600,7731,1 
.target Cawind Trueaim
step << !Mage
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Greul|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food|r << Rogue/Warrior
>>|cRXP_WARN_Make sure to buy 5 stacks or more. A LONG grind section is coming up|r
.target Innkeeper Greul
.isQuestAvailable 7730,7731,2980,2979,2822
step
#optional
#completewith ZukkCarapaces
.destroy 9460 >>|cRXP_WARN_Destroy the leftover|r |T133721:0|t[Grimtotem Horn] |cRXP_WARN_in your bag as it's no longer needed|r
step
#completewith ZukkCarapaces
.goto Feralas,73.38,62.94,0
>>Kill |cRXP_ENEMY_Zukk'ash Silithid|r. Loot them for their |cRXP_LOOT_Carapace|r
.complete 7730,1 
.mob Zukk'ash Worker
.mob Zukk'ash Wasp
.mob Zukk'ash Tunneler
.mob Zukk'ash Stinger
step
#loop
.goto Feralas,73.38,63.24,0
.goto Feralas,76.36,61.19,0
.goto Feralas,73.38,63.24,50,0
.goto Feralas,76.36,61.19,50,0
>>Kill |cRXP_ENEMY_Stinglasher|r. Loot it for its |cRXP_LOOT_Glands|r
>>|cRXP_WARN_This mob can be quite hard make sure to have cooldowns available|r
>>|cRXP_WARN_It patrols inside and outside of the Silithid Hives|r
.complete 7731,1 
.unitscan Stinglasher
step << Warrior
#season 2
#label RuneOfTheWatchman
.goto Feralas,77.6,62.0
>>Go into the Hive and look for the |cRXP_ENEMY_Tyrant of the Hive|r, you can try to kill him and loot for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Watchman|r]
>>|cRXP_WARN_Watch out as he's a lvl 46 elite mob, you might need help to be able to kill him. Skip this step if there's no one around and you can't solo it|r
.collect 221473,1 
.unitscan Tyrant of the Hive
.train 427078,1
step << Warrior
#season 2
#sticky
#requires RuneOfTheWatchman
.train 427078 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Watchman|r] |cRXP_WARN_to learn|r |T236318:0|t[Vigilance]
.use 221473
step
#optional
#label ZukkCarapaces
step
#loop
.goto Feralas,75.21,61.82,0
.goto Feralas,75.21,61.82,60,0
.goto Feralas,74.10,62.42,60,0
.goto Feralas,72.86,62.78,60,0
>>Kill |cRXP_ENEMY_Zukk'ash Silithid|r. Loot them for their |cRXP_LOOT_Carapace|r
.complete 7730,1 
.mob Zukk'ash Worker
.mob Zukk'ash Wasp
.mob Zukk'ash Tunneler
.mob Zukk'ash Stinger
step
#completewith GordunniOgres
.subzone 2522 >>Travel to the Ruins of Isildien
step
#completewith egghypo
.goto Feralas,56.15,46.88,0
.use 10699 >>Kill |cRXP_ENEMY_Vale Screechers|r
>>|cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses. Talk to the|r |cRXP_FRIENDLY_Screecher Spirit|r |cRXP_WARN_that appears|r
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
.target Screecher Spirit
step
#completewith GordunniOgres
.goto Feralas,58.59,69.85,0
>>Kill |cRXP_ENEMY_Gordunni Mage-Lords|r. Loot them for their |cRXP_LOOT_Orb|r
.complete 2979,1 
.mob Gordunni Mage-Lord
step << Shaman
#season 2
.train 432238,1
.goto Feralas,60.0,66.8
>>|cRXP_WARN_The steps related to the|r |cRXP_PICK_Charged Totem|r |cRXP_WARN_are going to award you with the|r |T237587:0|t[Static Shock] |cRXP_WARN_rune but you need a player to party with and help you.|r
>>|cRXP_WARN_THIS CANNOT BE COMPLETED ALONE. Skip this if there's no one nearby that could help|r
.aura 447259 >>Click on the |cRXP_PICK_Charged Totem|r to get the |T136075:0|t[Charged Air] buff
step << Shaman
#season 2
#label ChargedAir
.train 432238,1
>>|cRXP_WARN_Stay near the totem and kill the surrounding |cRXP_ENEMY_Gordunni Ogres|r with LIGHTNING DAMAGE (e.g. Lightning Shield) until the |cRXP_ENEMY_Whirling Tempest|r spawns.
>>Kill the |cRXP_ENEMY_Whirling Tempest|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Static Shock|r]
*|cRXP_WARN_All players of the party have to stay in range of the totem|r
.goto Feralas,60.0,66.8
.collect 220614,1
.mob Whirling Tempest
.mob Gordunni Warlock
.mob Gordunni Shaman
.mob Gordunni Mauler
step << Shaman
#season 2
.itemcount 220614,1
.use 220614
.train 432238 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Static Shock|r] |cRXP_WARN_to learn|r |T237587:0|t[Static Shock]
step
#label GordunniOgres
.goto Feralas,59.72,62.77,0
.goto Feralas,61.86,54.46,60,0
.goto Feralas,61.03,56.55,60,0
.goto Feralas,60.69,58.52,60,0
#loop
.goto Feralas,59.72,62.77,60,0
.goto Feralas,58.93,64.13,60,0
.goto Feralas,58.31,65.20,60,0
.goto Feralas,58.25,66.56,60,0
.goto Feralas,58.55,67.75,60,0
.goto Feralas,59.54,68.37,60,0
.goto Feralas,60.85,69.68,60,0
.goto Feralas,60.95,67.65,60,0
.goto Feralas,60.35,66.63,60,0
.goto Feralas,60.11,64.93,60,0
.goto Feralas,59.58,64.51,60,0
>>Kill |cRXP_ENEMY_Gordunni Maulers|r, |cRXP_ENEMY_Warlocks|r, and |cRXP_ENEMY_Shamans|r
>>|cRXP_WARN_Kill every|r |cRXP_ENEMY_Shaman|r |cRXP_WARN_you see as they have limited spawns|r
.complete 2980,1 
.mob +Gordunni Shaman
.complete 2980,2 
.mob +Gordunni Warlock
.complete 2980,3 
.mob +Gordunni Mauler
step
#loop
.goto Feralas,60.95,67.65,0
.goto Feralas,59.72,62.77,60,0
.goto Feralas,58.93,64.13,60,0
.goto Feralas,58.31,65.20,60,0
.goto Feralas,58.25,66.56,60,0
.goto Feralas,58.55,67.75,60,0
.goto Feralas,59.54,68.37,60,0
.goto Feralas,60.85,69.68,60,0
.goto Feralas,60.95,67.65,60,0
.goto Feralas,60.35,66.63,60,0
.goto Feralas,60.11,64.93,60,0
.goto Feralas,59.58,64.51,60,0
>>Kill |cRXP_ENEMY_Gordunni Mage-Lords|r. Loot them for their |cRXP_LOOT_Orb|r
.complete 2979,1 
.mob Gordunni Mage-Lord
step
#ssf
#completewith next
>>Kill |cRXP_ENEMY_Frayfeather Hippogryphs|r. Loot them for their |T135992:0|t[|cRXP_LOOT_Long Elegant Feathers|r]
>>|T135992:0|t[|cRXP_LOOT_Long Elegant Feathers|r] |cRXP_WARN_are dropped by|r |cRXP_ENEMY_Hippogryphs|r |cRXP_WARN_only.|r |cRXP_ENEMY_Stagwings|r |cRXP_WARN_and|r |cRXP_ENEMY_Skystormers|r |cRXP_WARN_DO NOT drop them|r
.collect 4589,10,7842,1 
.mob Frayfeather Hippogryph
step
#ah
#completewith next
>>Kill |cRXP_ENEMY_Frayfeather Hippogryphs|r. Loot them for their |T135992:0|t[|cRXP_LOOT_Long Elegant Feathers|r]
>>|cRXP_WARN_You could also buy these from the Auction House instead|r
>>|T135992:0|t[|cRXP_LOOT_Long Elegant Feathers|r] |cRXP_WARN_are dropped by|r |cRXP_ENEMY_Hippogryphs|r |cRXP_WARN_only.|r |cRXP_ENEMY_Stagwings|r |cRXP_WARN_and|r |cRXP_ENEMY_Skystormers|r |cRXP_WARN_DO NOT drop them|r
.collect 4589,10,7842,1 
.mob Frayfeather Hippogryph
step
#label egghypo
.goto Feralas,56.66,75.89
>>Loot a |T132833:0|t[|cRXP_LOOT_Hippogryph Egg|r] from a hippogryph nest
>>|cRXP_WARN_There are multiple nests located in the southern mountains|r
.collect 8564,1 
step
#completewith next
.use 10699 >>Kill |cRXP_ENEMY_Vale Screechers|r
>>|cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses. Talk to the|r |cRXP_FRIENDLY_Screecher Spirit|r |cRXP_WARN_that appears|r
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
.target Screecher Spirit
step
#ssf
#loop
.goto Feralas,56.71,64.09,0
.goto Feralas,56.71,64.09,60,0
.goto Feralas,56.61,62.01,60,0
.goto Feralas,55.87,60.34,60,0
.goto Feralas,54.79,60.44,60,0
.goto Feralas,55.30,62.17,60,0
.goto Feralas,54.49,64.33,60,0
.goto Feralas,55.23,66.21,60,0
.goto Feralas,55.88,65.91,60,0
>>Kill |cRXP_ENEMY_Frayfeather Hippogryphs|r. Loot them for their |T135992:0|t[|cRXP_LOOT_Long Elegant Feathers|r]
>>|T135992:0|t[|cRXP_LOOT_Long Elegant Feathers|r] |cRXP_WARN_are dropped by|r |cRXP_ENEMY_Hippogryphs|r |cRXP_WARN_only.|r |cRXP_ENEMY_Stagwings|r |cRXP_WARN_and|r |cRXP_ENEMY_Skystormers|r |cRXP_WARN_DO NOT drop them|r
.collect 4589,10,7842,1 
.mob Frayfeather Hippogryph
step
#ah
#loop
.goto Feralas,56.71,64.09,0
.goto Feralas,56.71,64.09,60,0
.goto Feralas,56.61,62.01,60,0
.goto Feralas,55.87,60.34,60,0
.goto Feralas,54.79,60.44,60,0
.goto Feralas,55.30,62.17,60,0
.goto Feralas,54.49,64.33,60,0
.goto Feralas,55.23,66.21,60,0
.goto Feralas,55.88,65.91,60,0
>>Kill |cRXP_ENEMY_Frayfeather Hippogryphs|r. Loot them for their |T135992:0|t[|cRXP_LOOT_Long Elegant Feathers|r]
>>|cRXP_WARN_You could also buy these from the Auction House instead|r
>>|T135992:0|t[|cRXP_LOOT_Long Elegant Feathers|r] |cRXP_WARN_are dropped by|r |cRXP_ENEMY_Hippogryphs|r |cRXP_WARN_only.|r |cRXP_ENEMY_Stagwings|r |cRXP_WARN_and|r |cRXP_ENEMY_Skystormers|r |cRXP_WARN_DO NOT drop them|r
.collect 4589,10,7842,1 
.mob Frayfeather Hippogryph
step
#loop
.goto Feralas,56.71,64.09,60,0
.goto Feralas,56.61,62.01,60,0
.goto Feralas,55.87,60.34,60,0
.goto Feralas,54.79,60.44,60,0
.goto Feralas,55.30,62.17,60,0
.goto Feralas,54.49,64.33,60,0
.goto Feralas,55.23,66.21,60,0
.goto Feralas,55.88,65.91,60,0
>>Continue to kill |cRXP_ENEMY_Frayfeather|r mobs
.xp 44+40000 >> Grind to level 44 40000/111800
.mob Frayfeather Hippogryph
.mob Frayfeather Patriarch
.mob Frayfeather Stagwing
.mob Frayfeather Skystormer
.xp <44,1 
step
#loop
.goto Feralas,58.39,51.88,0
.goto Feralas,57.54,48.70,0
.goto Feralas,55.74,46.71,0
.goto Feralas,58.45,55.83,0
.goto Feralas,58.39,51.88,80,0
.goto Feralas,57.54,48.70,80,0
.goto Feralas,55.74,46.71,80,0
.goto Feralas,58.45,55.83,80,0
.goto Feralas,56.70,56.13,80,0
.use 10699 >>Kill |cRXP_ENEMY_Vale Screechers|r
>>|cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses. Talk to the|r |cRXP_FRIENDLY_Screecher Spirit|r |cRXP_WARN_that appears|r
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
.target Screecher Spirit
step
#label YetiHide
#loop
.goto Feralas,52.05,58.40,0
.goto Feralas,55.14,56.35,70,0
.goto Feralas,53.12,56.27,70,0
.goto Feralas,52.05,58.40,70,0
>>Kill |cRXP_ENEMY_Yetis|r. Loot them for their |cRXP_LOOT_Hides|r
.complete 2822,1 
.mob Feral Scar Yeti
.mob Enraged Feral Scar
.mob Hulking Feral Scar
.mob Lurking Feral Scar
.mob Bloodroar the Stalker
.train 416083,3 << Hunter sod
step << Hunter
#season 2
#sticky
#completewith CatlikeReflexes
>>Kill |cRXP_ENEMY_Yetis|r. Loot them for their |cRXP_LOOT_Hides|r
.complete 2822,1 
.mob Feral Scar Yeti
.mob Enraged Feral Scar
.mob Hulking Feral Scar
.mob Lurking Feral Scar
.mob Bloodroar the Stalker
.train 416083,1
step << Hunter
#season 2
#label CatlikeReflexes
.goto 1444/1,1778.900,-5179.100,
>>Take the middle path at the crossroads after you enter the second cave. At the back of it you'll find a |cRXP_FRIENDLY_Groddoc Infant|r
.gossip 222376,1 >>Complete the monkeys dialogue to feed it the |T133951:0|t|cRXP_PICK_Soft Banana Bread|r or |T133980:0|t|cRXP_PICK_Tel'Abim Banana|r. It will spawn a version of it that follows you around.
.target Groddoc Infant
.train 416083,1
step << Hunter
#season 2
#label CatlikeReflexes
.goto 1444/1,1330.900,-5078.100
>>Escort the |cRXP_FRIENDLY_Groddoc Infant|r to a |cRXP_FRIENDLY_Groddoc Matriarch|r marked on your map. |cRXP_WARN_Be careful, the infant is agressive and will attack nearby enemies including opposing faction players|r
.gossip 222406,1 >>Once you're there talk to the Matriarch and complete her dialogue to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle Cat|r]
.collect 220791,1 
.train 416083,1
step << Hunter
#season 2
.train 416083 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle Cat|r] |cRXP_WARN_to train|r |T132167:0|t[Catlike Reflexes]
.use 220791
.train 416083,1
step << Hunter
#optional
#completewith next
#season 2
.engrave 1 >> Open your character sheet and engrave your helmet with |T132167:0|t[Catlike Reflexes]
.train 416083,1
step << Hunter
#season 2
.goto Feralas,52.05,58.40,0
.goto Feralas,55.14,56.35,70,0
.goto Feralas,53.12,56.27,70,0
.goto Feralas,52.05,58.40,70,0
>>Go back to the Yeti cave and finish off killing |cRXP_ENEMY_Yetis|r for their Hides
.complete 2821,1 
.mob Feral Scar Yeti
.mob Enraged Feral Scar
.mob Hulking Feral Scar
step
.accept 2766 >> Accept Find OOX-22/FE!
.itemcount 8705,1 
.use 8705
step
.goto Feralas,53.35,55.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
.turnin 2766 >> Turn in Find OOX-22/FE!
.target Homing Robot OOX-22/FE
.isOnQuest 2766
step
.goto Feralas,53.35,55.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
.accept 2767,1 >> Accept Rescue OOX-22/FE!
>>|cRXP_WARN_This starts the chicken escort; be ready to use cooldowns/consumables, as this quest is HARD|r
.target Homing Robot OOX-22/FE
.isQuestTurnedIn 2766
step
.goto Feralas,55.47,56.37,30,0
.goto Feralas,54.38,51.32,60,0
.goto Feralas,50.31,49.91,40,0
.goto Feralas,48.38,44.83,40,0
.goto Feralas,45.04,43.27
>>Escort |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r to the shore
>>|cRXP_WARN_3 Waves of mobs will spawn on the way. Save all your very long cooldowns for the|r |cRXP_ENEMY_Gnolls|r|cRXP_WARN_, and use some on the|r |cRXP_ENEMY_Yetis|r
+|cRXP_WARN_3 Yetis (level 46)|r
.disablecheckbox
+|cRXP_WARN_3 Gorillas (level 43)|r
.disablecheckbox
+|cRXP_WARN_4 Gnolls (level 41-43)|r
.disablecheckbox
.complete 2767,1 
.isOnQuest 2767
.target Homing Robot OOX-22/FE
step
#optional
#completewith next
.goto Feralas,26.13,67.41,40 >> Travel to the Naga cave south of Feathermoon Stronghold
>>|cRXP_WARN_You can either swim there, or take the alliance boat. You'll have to jump off the boat once you reach The Isle of Dread in between the two islands|r
.subzoneskip 3117
step
.goto Feralas,26.19,67.51
>>Kill |cRXP_ENEMY_Hatecrest Nagas|r
.xp 44+40000 >> Grind to level 44 40000/111800 or higher
step
#label FeralasEnd
.hs >> Hearth to Camp Mojache
.use 6948
.cooldown item,6948,>0
.bindlocation 1099,1
.subzoneskip 1099
.isQuestComplete 2980
step
.subzone 1099 >> Return to Camp Mojache
.cooldown item,6948,<0
.isQuestComplete 2980
step
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Greul|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
>>|cRXP_WARN_Make sure you DO NOT sell any|r |T135992:0|t[Long Elegant Feather]
.target Innkeeper Greul
.subzoneskip 1099,1
step << Hunter
.goto Feralas,74.94,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cawind Trueaim|r
>>|cRXP_BUY_Buy|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_from him|r
.collect 11285,2600,3002,1 
.target Cawind Trueaim
.subzoneskip 1099,1
step
#completewith MorePotions
.line Feralas,75.99,42.85,76.49,43.22,75.53,43.68,74.38,44.01,73.56,46.53,73.52,45.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok|r
>>|cRXP_WARN_She patrols the road through Camp Mojache|r
.turnin 2980 >> Turn in The Ogres of Feralas
.turnin 2979 >> Turn in Dark Ceremony
.accept 3002 >> Accept The Gordunni Orb
.target Rok Orhan
step
.goto Feralas,74.90,42.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
.turnin 7730 >> Turn in Zukk'ash Infestation
.turnin 7731 >> Turn in Stinglasher
.accept 7732 >> Accept Zukk'ash Report
.target Hadoken Swiftstrider
step
.goto Feralas,74.40,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
.accept 3121 >> Accept A Strange Request
.target Witch Doctor Uzer'i
step
.goto Feralas,74.40,42.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor|r
.turnin 2822 >> Turn in The Mark of Quality
.target Jangdor Swiftstrider
step
#label MorePotions
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronk|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Bronk
.subzoneskip 1099,1
step
#loop
.line Feralas,75.99,42.85,76.49,43.22,75.53,43.68,74.38,44.01,73.56,46.53,73.52,45.13
.goto Feralas,73.56,46.53,20,0
.goto Feralas,73.71,46.03,20,0
.goto Feralas,75.99,42.85,20,0
.goto Feralas,76.49,43.22,20,0
.goto Feralas,75.53,43.68,20,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok|r
>>|cRXP_WARN_She patrols the road through Camp Mojache|r
.turnin 2980 >> Turn in The Ogres of Feralas
.turnin 2979 >> Turn in Dark Ceremony
.accept 3002 >> Accept The Gordunni Orb
.target Rok Orhan
step << Druid
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 1824 >>Train your class spells
.target Jannos Lighthoof
.xp <44,1
.xp >46,1
step << Druid
#optional
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9821 >>Train your class spells
.target Jannos Lighthoof
.xp <46,1
step << !Mage
#completewith TBVisit
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shyn|r
.fly Thunder Bluff >> Fly to Thunder Bluff
.target Shyn
.zoneskip Thunder Bluff
step << Mage
#completewith TBVisit
.cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleport: Thunder Bluff]
.zoneskip Thunder Bluff
step
.goto Thunder Bluff,34.42,46.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.turnin 2280 >> Turn in The Platinum Discs
.accept 2440 >> Accept The Platinum Discs
.target Sage Truthseeker
.isQuestTurnedIn 2278
.dungeon ULDA
step
.goto Thunder Bluff,46.61,33.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bena|r
.turnin 2440 >> Turn in The Platinum Discs
.target Bena Winterhoof
.isQuestTurnedIn 2278
.dungeon ULDA
step
.goto Thunder Bluff,34.42,46.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.accept 2965 >> Accept Portents of Uldum
.target Sage Truthseeker
.isQuestTurnedIn 2440
.dungeon ULDA
.xp <45,1
step
.goto Thunder Bluff,75.67,31.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
.turnin 2965 >> Turn in Portents of Uldum
.accept 2966 >> Accept Seeing What Happens
.target Nara Wildmane
.isOnQuest 2965
.dungeon ULDA
step
#optional
.goto Thunder Bluff,75.67,31.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
.accept 2966 >> Accept Seeing What Happens
.target Nara Wildmane
.isQuestTurnedIn 2965
.dungeon ULDA
step
.goto Thunder Bluff,61.50,80.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
.turnin 1205 >>Turn in Deadmire
.target Melor Stonehoof
.isQuestComplete 1205
step << !Mage
#completewith STVZepp2
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Orgrimmar >>Fly to Orgrimmar
.target Tal
.zoneskip Thunder Bluff,1
step
#optional
#label TBVisit
step << !Mage
#optional
#completewith STVZepp2
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shyn|r
.fly Orgrimmar >>Fly to Orgrimmar
.target Shyn
.zoneskip Feralas,1
step << Mage
#completewith STVZepp2
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
step
.goto Orgrimmar,39.20,86.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthel'nay|r
.turnin 3002 >> Turn in The Gordunni Orb
.target Uthel'nay
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 10185 >> Train your class spells
.target Pephredo
.xp <44,1
.xp >46,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
.train 10197 >> Train your class spells
.target Pephredo
.xp <46,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10927 >> Train your class spells
.target Ur'kyo
.xp <44,1
.xp >46,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10945 >> Train your class spells
.target Ur'kyo
.xp <46,1
step
.goto Orgrimmar,39.00,38.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
.turnin 1262 >> Turn in Report to Zor
.target Zor Lonetree
.isOnQuest 1262
step
.goto Orgrimmar,39.00,38.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
.accept 7541 >> Accept Service to the Horde
.turnin 7541 >> Turn in Service to the Horde
.target Zor Lonetree
.isQuestTurnedIn 1262
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 16315 >> Train your class spells
.target Kardris Dreamseeker
.xp <44,1
.xp >46,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10472 >> Train your class spells
.target Kardris Dreamseeker
.xp <46,1
step
.goto Orgrimmar,56.50,46.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zilzibin|r
>>|cRXP_WARN_He is located on the upper level in the Drag|r
.turnin 7732 >> Turn in Zukk'ash Report
.target Zilzibin Drumlore
step
.goto Orgrimmar,75.20,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belgrom|r
.turnin 2976 >> Turn in A Grim Discovery
.target Belgrom Rockmaul
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11584 >> Train your class spells
.target Grezz Ragefist
.xp <44,1
.xp >46,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11578 >> Train your class spells
.target Grezz Ragefist
.xp <46,1
step
#xprate <2.1
#season 2
#completewith next
.goto Orgrimmar,75.50,25.34
.gossipoption 121185 >>Talk to |cRXP_FRIENDLY_Sovik|r
.target Sovik
step
#xprate <2.1
#season 2
.goto Orgrimmar,75.50,25.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sovik|r
.accept 80133 >>Accept Chief Engineer Scooty
.target Sovik
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14285 >> Train your class spells
.target Ormak Grimshot
.xp <44,1
.xp >46,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14304 >> Train your class spells
.target Ormak Grimshot
.xp <46,1
step << Orc !Warlock
#season 0
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kildar|r and |cRXP_FRIENDLY_Ogunaro|r
.train 825 >>Train |T136103:0|t[Wolf Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro Wolfrunner
step << Orc !Warlock
#season 2
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kildar|r and |cRXP_FRIENDLY_Ogunaro|r
.train 825 >>Train |T136103:0|t[Wolf Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <45
.skill riding,75,1
.target Kildar
.target Ogunaro Wolfrunner
step << Hunter
.goto Orgrimmar,78.11,38.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Jin'sora|r
.vendor >> |cRXP_BUY_Buy a|r |T135489:0|t[|cRXP_FRIENDLY_Massive Longbow|r] |cRXP_BUY_from him if it's available|r
.target Jin'sora
.money <6.7952
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
.itemcount 11307,<1
step
.goto Orgrimmar,49.60,50.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru|r
.turnin 3121 >> Turn in A Strange Request
.accept 3122 >> Accept Return to Witch Doctor Uzer'i
.target Neeru Fireblade
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
>>|T132273:0|t[Instant Poison Rank 4] |cRXP_WARN_requires 200 skill in Poisons!|r
.train 11341 >> Train your class spells
.target Ormok
.xp <44,1
.xp >46,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
>>|T132273:0|t[Instant Poison Rank 4] |cRXP_WARN_requires 200 skill in Poisons!|r
.train 11293 >> Train your class spells
.target Ormok
.xp <46,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r
.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
.target Rekkul
.zoneskip Orgrimmar,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11671 >> Train your class spells
.target Mirket
.xp <44,1
.xp >46,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11699 >> Train your class spells
.target Mirket
.xp <46,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
.vendor >>Buy any pet upgrades you can afford
.target Kurgul
.zoneskip Orgrimmar,1
step
#xprate <2.1
.goto Orgrimmar,49.58,69.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karus|r
.bankdeposit 10699,5862,9628,8564,4589 >>Deposit the following onto your bank:
>>|T135474:0|t[Yeh'kinya's Bramble] 
>>|T132385:0|t[Seaforium Booster] 
>>|T133645:0|t[Neeru's Herb Pouch] 
>>|T132833:0|t[Hippogryph Egg] 
>>|T135992:0|t[Long Elegant Feathers] 
step
#xprate <2.1
#ah
#completewith STVZepp2
+|cRXP_WARN_Check your bank for any missing|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_and buy any that you still need from the Auction House|r
>>|cRXP_WARN_Chapter.1 requires: Pages 1,4,6,8|r
>>|cRXP_WARN_Chapter.2 requires: Pages 10,11,14,16|r
>>|cRXP_WARN_Chapter.3 requires: Pages 18,20,21,24|r
>>|cRXP_WARN_Chapter.4 requires: Pages 25,26,27|r
>>|cRXP_WARN_Place any newly bought Pages into your bank. Skip this step if you aren't able to acquire them|r
step
#xprate <2.1
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Thathung|r
>>|cRXP_BUY_Buy ten|r |T134298:0|t[Gorilla Fangs] |cRXP_BUY_from the Auction House|r
.collect 2799,10,349,1 
.target Auctioneer Thathung
.zoneskip Orgrimmar,1
step << Troll
#season 0
#optional
#completewith next
.subzone 367 >> Travel to Sen'Jin Village
.xp <40,1
.money <90
.skill riding,75,1
step << Troll
#season 0
#optional
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r and |cRXP_FRIENDLY_Zjolnir|r
.train 10861 >>Train |T136103:0|t[Raptor Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFRaptor|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step << Troll
#season 2
#optional
#completewith next
.subzone 367 >> Travel to Sen'Jin Village
.xp <40,1
.money <45
.skill riding,75,1
step << Troll
#season 2
#optional
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r and |cRXP_FRIENDLY_Zjolnir|r
.train 10861 >>Train |T136103:0|t[Raptor Riding]
.vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFRaptor|r]
.xp <40,1
.money <45
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step
#optional
.maxlevel 47,AshenvaleIncursionsComplete
step
#season 2
#completewith next
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Splintertree Post >> Fly to Splintertree Post
.target Doras
.zoneskip Ashenvale
step
#season 2
.goto Ashenvale,89.53,40.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Hannalah|r
.accept 81772 >>Accept Ashenvale Mission V: Satyr Intelligence
.accept 81785 >>Accept Ashenvale Mission XVIII: Rescue Maseara Autumnmoon
.accept 81784 >>Accept Ashenvale Mission XVII: Rescue Doran Dreambough
.accept 81783 >>Accept Ashenvale Mission XVI: Rescue Alyssian Windcaller
.accept 81776 >>Accept Ashenvale Mission IX: Recover Dream-Touched Dragonegg
.accept 81775 >>Accept Ashenvale Mission VIII: Recover Azsharan Prophecy
.accept 81774 >>Accept Ashenvale Mission VII: Recover Dreamengine
.accept 81773 >>Accept Ashenvale Mission VI: Treant Intelligence
.accept 81771 >>Accept Ashenvale Mission IV: Dragon Intelligence
.accept 81768 >>Accept Ashenvale Mission I: Defeat Satyrs
.accept 81770 >>Accept Ashenvale Mission III: Defeat Dragonkin
.target Field Captain Hannalah
step
#season 2
.goto Ashenvale,89.60,40.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Kyleen|r
.vendor >>|cRXP_BUY_Buy up to 5|r |T236885:0|t[Major Healing Potions] |cRXP_BUY_from her if you want|r
>>|cRXP_WARN_These can only be used within the incursion zones|r
.target Quartermaster Kyleen
step
#season 2
#completewith IncursionsComplete
.goto Ashenvale,93.94,38.21,25,0
.goto Ashenvale,94.27,35.13,20 >>Enter the |cRXP_PICK_Emerald Dream Portal|r
>>|cRXP_WARN_Run straight past the |cRXP_ENEMY_Satyr's|r, |cRXP_ENEMY_Felhounds|r and |cRXP_ENEMY_Imps|r. They will reset agro as you enter the portal|r
.aura 444759
step
#season 2
#completewith EllodarReport
>>Kill |cRXP_ENEMY_Wyrmkin Nightstalkers|r and |cRXP_ENEMY_Terror Whelps|r
>>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Wyrmkin Nightstalkers|r |cRXP_WARN_are lvl 41 elites|r
.complete 81770,1 
.mob +Wyrmkin Nightstalker
.complete 81770,2 
.mob +Terror Whelp
step
#season 2
.goto Ashenvale,87.24,43.58
.gossipoption 122139 >>Talk to |cRXP_FRIENDLY_Doran Dreambough|r
.target Doran Dreambough
.isOnQuest 81784
step
#season 2
.goto Ashenvale,86.11,45.87
>>Loot a |cRXP_LOOT_Dream-Touched Dragon Egg|r on the ground
.complete 81776,1 
step
#season 2
#label EllodarReport
.goto Ashenvale,83.64,45.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Ellodar|r
.complete 81771,1 
.target Dreamwarden Ellodar
.skipgossip
step
#season 2
.goto Ashenvale,81.54,48.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Mandoran|r
.complete 81772,1 
.target Dreamwarden Mandoran
.skipgossip
step
#season 2
#completewith MasearaAut
.goto Ashenvale,80.74,51.19,0
.goto Ashenvale,80.72,50.24,0
.goto Ashenvale,80.74,51.19,0
.goto Ashenvale,79.89,49.31,0
.goto Ashenvale,80.78,48.47,0
.goto Ashenvale,81.72,48.52,0
.goto Ashenvale,82.20,50.18,0
.goto Ashenvale,80.00,46.71,0
.goto Ashenvale,78.29,44.73,0
.goto Ashenvale,80.72,50.24,0
>>Kill |cRXP_ENEMY_Dreamfire Betrayers|r and |cRXP_ENEMY_Dreamfire Hellcallers|r
.complete 81768,2 
.mob +Dreamfire Betrayer
.complete 81768,1 
.mob +Dreamfire Hellcaller
step
#season 2
.goto 1440/1,-2950.700,2791.700
>>Loot the |cRXP_LOOT_Azsharan Prophecy|r on the ground
.complete 81775,1 
step
#season 2
#label MasearaAut
#season 2
.goto 1440/1,-2978.000,2739.500
.gossipoption 122150 >>Talk to |cRXP_FRIENDLY_Maseara Autumnmoon|r
.target Maseara Autumnmoon
.isOnQuest 81785
step
#season 2
#loop
.goto Ashenvale,80.72,50.24,0
.goto Ashenvale,80.74,51.19,60,0
.goto Ashenvale,80.72,50.24,60,0
.goto Ashenvale,80.74,51.19,60,0
.goto Ashenvale,79.89,49.31,60,0
.goto Ashenvale,80.78,48.47,60,0
.goto Ashenvale,81.72,48.52,60,0
.goto Ashenvale,82.20,50.18,60,0
.goto Ashenvale,80.00,46.71,60,0
.goto Ashenvale,78.29,44.73,60,0
.goto Ashenvale,80.72,50.24,60,0
>>Kill |cRXP_ENEMY_Dreamfire Betrayers|r and |cRXP_ENEMY_Dreamfire Hellcallers|r
.complete 81768,2 
.mob +Dreamfire Betrayer
.complete 81768,1 
.mob +Dreamfire Hellcaller
step
#season 2
.goto 1440/1,-3394.600,2540.900
>>Open the |cRXP_PICK_Vibrating Crate|r. Loot it for the |cRXP_LOOT_Dreamengine|r
.complete 81774,1 
step
#season 2
#completewith next
.goto Ashenvale,90.14,58.08,10 >>Enter Kargathia Keep
>>|cRXP_WARN_The entrance is blocked by a|r |cRXP_ENEMY_Dreamharvester|r|cRXP_WARN_ (lvl 41 elite). Crowd control or kill it while you run inside|r
.mob Dreamharvester
step
#season 2
.goto Ashenvale,91.23,58.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dreamwarden Lanaria|r
.complete 81773,1 
.target Dreamwarden Lanaria
.skipgossip
step
#season 2
.goto Ashenvale,92.11,54.21
.gossipoption 122138 >>Talk to |cRXP_FRIENDLY_Alyssian Windcaller|r
.target Alyssian Windcaller
.isOnQuest 81783
step
#season 2
#loop
.goto Ashenvale,86.31,43.07,0
.goto Ashenvale,86.57,47.66,50,0
.goto Ashenvale,87.03,45.92,50,0
.goto Ashenvale,88.26,42.14,50,0
.goto Ashenvale,86.31,43.07,50,0
.goto Ashenvale,84.36,45.06,50,0
.goto Ashenvale,83.90,47.38,50,0
>>Kill |cRXP_ENEMY_Wyrmkin Nightstalkers|r and |cRXP_ENEMY_Terror Whelps|r
>>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Wyrmkin Nightstalkers|r |cRXP_WARN_are lvl 41 elites|r
.complete 81770,1 
.mob +Wyrmkin Nightstalker
.complete 81770,2 
.mob +Terror Whelp
step
#season 2
#label IncursionsComplete
.goto Ashenvale,93.97,38.02
>>Travel toward the |cRXP_PICK_Emerald Dream Portal|r
>>|cRXP_WARN_If |cRXP_FRIENDLY_Maseara|r, |cRXP_FRIENDLY_Alyssian|r or |cRXP_FRIENDLY_Doran|r is no longer following you, go back and talk to them again|r
.complete 81783,1 
.target +Alyssian Windcaller
.goto Ashenvale,92.11,54.21,0
.complete 81784,1 
.goto Ashenvale,87.24,43.58,0
.target +Doran Dreambough
.complete 81785,1 
.goto Ashenvale,81.16,50.28,0
.target +Maseara Autumnmoon
step
#season 2
#completewith next
.goto Ashenvale,93.94,38.21,25,0
.goto Ashenvale,94.27,35.13,20 >>Exit the |cRXP_PICK_Emerald Dream Portal|r
.aura -444759
step
#season 2
.goto Ashenvale,89.57,40.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Captain Hannalah|r
.turnin 81771 >>Turn in Ashenvale Mission IV: Dragon Intelligence
.turnin 81772 >>Turn in Ashenvale Mission V: Satyr Intelligence
.turnin 81773 >>Turn in Ashenvale Mission VI: Treant Intelligence
.turnin 81774 >>Turn in Ashenvale Mission VII: Recover Dreamengine
.turnin 81775 >>Turn in Ashenvale Mission VIII: Recover Azsharan Prophecy
.turnin 81776 >>Turn in Ashenvale Mission IX: Recover Dream-Touched Dragonegg
.turnin 81783 >>Turn in Ashenvale Mission XVI: Rescue Alyssian Windcaller
.turnin 81784 >>Turn in Ashenvale Mission XVII: Rescue Doran Dreambough
.turnin 81785 >>Turn in Ashenvale Mission XVIII: Rescue Maseara Autumnmoon
.turnin 81768 >>Turn in Ashenvale Mission I: Defeat Satyrs
.turnin 81770 >>Turn in Ashenvale Mission III: Defeat Dragonkin
.target Field Captain Hannalah
step
#optional
#label AshenvaleIncursionsComplete
step
#xprate <2.1
#season 2
#completewith STVZepp2
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fly Orgrimmar >>Fly to Orgrimmar
.target Vhulgra
.zoneskip Ashenvale,1
step
#xprate <2.1
#completewith next
.zone Durotar >> Leave Orgrimmar
.zoneskip Orgrimmar,1
step
#xprate <2.1
#label STVZepp2
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Stranglethorn Vale >>Take the Zeppelin to Grom'Gol Base Camp
.zoneskip Stranglethorn Vale
]]);
