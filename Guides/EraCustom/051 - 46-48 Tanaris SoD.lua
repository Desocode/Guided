RXPGuides.RegisterGuide([[
#version 23
#season 2
#group RestedXP Alliance 40-50
#classic
#tbc
#mop
<< Alliance
#name 46-48 Tanaris SoD
#displayname 46-48 Tanaris
#next 48-50 Tanaris/UnGoro/Hinterlands SoD
step
#season 0
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 6257 >> Withdraw the following items from your bank:
>>|T133707:0|t[Roc Gizzard] (If you have any) 
.target Gimblethorn
step << skip
.goto Tanaris,51.80,28.66
.target Marin Noggenfogger
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.accept 2605 >> Accept The Thirsty Goblin
step
.goto Tanaris,52.51,27.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r
.home >> Set your Hearthstone to Gadgetzan
.target Innkeeper Fizzgrimble
step
.goto Tanaris,52.387,26.968
>>Click the |cRXP_PICK_Egg-O-Matic|r on the ground
.turnin 2741 >> Turn in The Super Egg-O-Matic
.itemcount 8564,1 
step
+Open your |T132594:0|t[Egg Crate]
.itemcount 8647,1 
.use 8647
step
#xprate <2.5
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.turnin 2941 >> Turn in The Borrower
.accept 2944 >> Accept The Super Snapper FX
.target Curgle Cranklehop
step
#xprate >2.49
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.turnin 2941 >> Turn in The Borrower
.target Curgle Cranklehop
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2750 >> Accept A Bad Egg
.turnin 2750 >> Turn in A Bad Egg
.target Curgle Cranklehop
.itemcount 8646,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2749 >> Accept An Ordinary Egg
.turnin 2749 >> Turn in An Ordinary Egg
.target Curgle Cranklehop
.itemcount 8645,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2748 >> Accept A Fine Egg
.turnin 2748 >> Turn in A Fine Egg
.target Curgle Cranklehop
.itemcount 8644,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2747 >> Accept An Extraordinary Egg
.turnin 2747 >> Turn in An Extraordinary Egg
.target Curgle Cranklehop
.itemcount 8643,1 
step
+Open your |T132594:0|t[Box of Rations]
.itemcount 9539,1 
.use 9539
step
+Open your |T132595:0|t[Box of Spells]
.itemcount 9540,1 
.use 9540
step
+Open your |T132597:0|t[Box of Goodies]
.itemcount 9541,1 
.use 9541
step << skip
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 3362 >> Accept Thistleshrub Valley
step
#label start
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 992 >> Accept Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
step << Hunter
#season 2
#label Zopilote
#optional
#completewith vultures
.goto 1446/1,-3973.700,-7372.900,0
.goto 1446/1,-3777.100,-7358.200,0
.goto 1446/1,-3290.200,-7330.700,0
.goto 1446/1,-3563.000,-7352.400,0
.goto 1446/1,-3386.400,-7337.400,0
.goto 1446/1,-3290.200,-7330.700,0
>>As you're questing you might run across |cRXP_ENEMY_Zopilote|r. A large white carrion bird. If you find it kill him and Loot for the |T134419:0|t[|cRXP_FRIENDLY_Rune of The Raptor|r].
>>|cRXP_ENEMY_Zopilote|r |cRXP_WARN_is a carrion bird that patrols east to west in a large area spanning from south of Sandsorrow Watch to Gadgetzan|r
>>|cRXP_WARN_Don't go out of your way to look for him. The rune is weak for leveling and you can find him later|r
.collect 220687,1
.unitscan Zopilote
.train 416093,1
step << Hunter
#season 2
#optional
#requires Zopilote
#completewith vultures
.train 416093 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Raptor|r] |cRXP_WARN_to train|r |T132253:0|t[Raptor Fury]
.use 2220687
.itemcount 220687,1
.train 416093,1
step
.goto Tanaris,39.016,29.244
.use 8584 >> |cRXP_WARN_Use the|r |T134867:0|t[Untapped Dowsing Widget] |cRXP_WARN_at the Sandsorrow Watch pond. Avoid the Elite |cRXP_ENEMY_Sandfury Trolls|r en-route|r
>>|cRXP_WARN_Two level 47/48 |cRXP_ENEMY_Centipaar Tunnelers|r will spawn once you fill the|r |T134867:0|t[Untapped Dowsing Widget]|cRXP_WARN_. You may kill them or run away to reset them|r
.complete 992,1 
.mob Centipaar Tunneler
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 992 >> Turn in Gadgetzan Water Survey
.accept 82 >> Accept Noxious Lair Investigation
.target Senior Surveyor Fizzledowser
step
#label vultures
.goto Tanaris,35.68,39.78,70,0
.goto Tanaris,36.55,41.98,70,0
.goto Tanaris,35.59,44.08,70,0
.goto Tanaris,35.60,48.79,70,0
.goto Tanaris,31.70,49.12,70,0
.goto Tanaris,30.83,46.10,70,0
.goto Tanaris,35.68,39.78
>>AoE |cRXP_ENEMY_Centipaar Sandreavers|r, |cRXP_ENEMY_Centipaar Swarmers|r, |cRXP_ENEMY_Centipaar Stingers|r, |cRXP_ENEMY_Centipaar Tunnelers|r, and |cRXP_ENEMY_Centipaar Wasps|r. Loot them for |cRXP_LOOT_Centipaar Insect Parts|r
>>|cRXP_WARN_Be careful as all |cRXP_ENEMY_Centipaar|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds), |cRXP_ENEMY_Centipaar Sandreavers|r cast|r |T132338:0|t[Arcing Smash] |cRXP_WARN_(Deals an extra melee attack), |cRXP_ENEMY_Centipaar Swarmers|r cast|r |T136122:0|t[Silithid Swarm] |cRXP_WARN_(Summons a 1 health mob every 10 seconds that deals current-level attack damage, instantly dies to AoE), |cRXP_ENEMY_Centipaar Stingers|r cast|r |T132274:0|t[Venom Sting] |cRXP_WARN_(deals 11-12 damage every 5 seconds for 45 seconds), |cRXP_ENEMY_Centipaar Tunnelers|r cast|r |T136231:0|t[Pierce Armor] |cRXP_WARN_(Reduces armor by 50% for 20 seconds), and |cRXP_ENEMY_Centipaar Wasps|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(deals 33-34 damage every 3 seconds for 30 seconds)|r
.complete 82,1 
.mob Centipaar Sandreaver
.mob Centipaar Swarmer
.mob Centipaar Stinger
.mob Centipaar Tunneler
.mob Centipaar Wasp
.mob Silithid Swarm
step << Hunter
#season 2
.goto 1446/1,-3973.700,-7372.900,0
.goto 1446/1,-3777.100,-7358.200,0
.goto 1446/1,-3290.200,-7330.700,0
.goto 1446/1,-3563.000,-7352.400,0
.goto 1446/1,-3386.400,-7337.400,0
.goto 1446/1,-3290.200,-7330.700,0
>>Use |T132172:0|t[|cRXP_FRIENDLY_Eagle Eye|r] to find |cRXP_ENEMY_Zopilote|r.
>>|cRXP_ENEMY_Zopilote|r |cRXP_WARN_is a carrion bird that patrols east to west in a large area spanning from south of Sandsorrow Watch to Gadgetzan|r
>>|cRXP_WARN_Skip this step if you don't care about collecting the rune. It's very weak for leveling and you will get a better one soon|r
.collect 220687,1
.unitscan Zopilote
.train 416093,1
step << Hunter
#season 2
.train 416093 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Raptor|r] |cRXP_WARN_to train|r |T132253:0|t[Raptor Fury]
.use 2220687
.itemcount 220687,1
.train 416093,1
step << Hunter
#optional
#completewith next
#season 2
.engrave 9 >> Open your character sheet and engrave your bracers with |T132253:0|t[Raptor Fury]
.train 415428,3
step << skip
#completewith next
>>Don't go out of your way to kill |cRXP_LOOT_Thistleshrub|r mobs for this quest, you'll have another opportunity to do it later, focus on killing |cRXP_LOOT_Dew Collectors|r
.complete 3362,1
.complete 3362,2
step << skip
.goto Tanaris,28.70,64.06
>> Kill |cRXP_LOOT_Dew Collectors|r. Loot them for the |cRXP_LOOT_Dew Gland|r
.complete 2605,1
step << skip
.goto Tanaris,51.80,28.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2605 >> Turn in The Thirsty Goblin
.target Marin Noggenfogger
.accept 2606 >> Accept In Good Taste
step << skip
.goto Tanaris,51.05,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2606 >> Turn in In Good Taste
.target Sprinkle
.accept 2641 >> Accept Sprinkle's Secret Ingredient
step
.goto Tanaris,50.886,26.963
.target Alchemist Pestlezugg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 82 >> Turn in Noxious Lair Investigation
step << skip 
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 10 >> Accept The Scrimshank Redemption
.target Senior Surveyor Fizzledowser
]]);
