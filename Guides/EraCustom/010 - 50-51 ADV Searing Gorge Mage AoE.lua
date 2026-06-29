RXPGuides.RegisterGuide([[
#version 23
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 50-51 ADV Searing Gorge Mage AoE
#next 51-52 ADV Tanaris/Un'Goro Mage AoE
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Fire Ward r4, Ice Armor r3, Cone of Cold r4, Conjure Water r6, Frostbolt r9)
.target Dink
step
#completewith BankDeposit
.goto Ironforge,33.44,63.56,30 >>Enter the Ironforge Bank
step
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
>>|cRXP_WARN_Skip this step if you already have 12 stacks of|r |T132905:0|t[Silk Cloth] |cRXP_WARN_and|r |T132892:0|t[Mageweave Cloth] |cRXP_WARN_in your bank|r
>>|cRXP_WARN_MAKE SURE You keep an extra 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_on your character for Searing Gorge|r
.bankdeposit 4338 >> Deposit the following items into the bank:
>>|T132905:0|t[Silk Cloth]
>>|T132892:0|t[Mageweave Cloth]
.collect 4306,15,4449,2 
.target Bailey Stonemantle
step
#label BankDeposit
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
.bankwithdraw 17056 >> Withdraw the following items from your bank. Use them whenever needed:
>>|T132917:0|t[Light Feather]
.target Bailey Stonemantle
step
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
>>|cRXP_WARN_MAKE SURE You keep an extra 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_on your character for Searing Gorge|r
>>|cRXP_WARN_Farm some extra|r |T132905:0|t[Silk Cloth] |cRXP_WARN_in Alterac later if you don't have 12 stacks in your bank|r
.collect 4306,15,4449,2 
.target Bailey Stonemantle
step
#completewith next
>>|cRXP_WARN_===PAY ATTENTION===|r
+|cRXP_WARN_Whilst on route, follow the link below to open the website unstuck page|r
>>|cRXP_WARN_You're NOT going to AFK on this flight|r
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_CLICK HERE|r
step
.goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth|r
.fly Stormwind >> Fly to Stormwind City
.target Gryth Thurden
.zoneskip Searing Gorge
step
>>|cRXP_WARN_===PAY ATTENTION===|r
>>|cRXP_WARN_Whilst on route, follow the link below to open the website unstuck page|r
>>|cRXP_WARN_Be prepared to logout when you reach Searing Gorge (WHEN PROMPTED), select your current character on the website, then move them to the nearest graveyard (Thorium Point)|r
.zone Searing Gorge >> Fly to Searing Gorge
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_CLICK HERE|r
.xp >52,1
step
>>|cRXP_WARN_Logout, select your current character on the website, then move them to the nearest graveyard (Thorium Point)|r
>>|cRXP_WARN_If this fails, skip this step|r
.goto Searing Gorge,35.43,23.57,5 >> Website Unstuck to Thorium Point
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_CLICK HERE|r
.zoneskip Searing Gorge,1
.xp >52,1
step
#completewith next
>>|cRXP_WARN_Since the website unstuck didn't work, you now have to take the alternative route|r
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Searing Gorge
.xp >52,1
step << skip
.goto Ironforge,25.30,10.97
.zone Dun Morogh >> |cRXP_WARN_Jump up onto the pillar above |cRXP_FRIENDLY_Toldren|r. Logout skip to Dun Morogh|r
.zoneskip Searing Gorge
.xp >52,1
step << skip
#completewith next
.goto Dun Morogh,70.58,56.53,60 >>Travel toward the Gol'Bolar Quarry
.zoneskip Searing Gorge
.xp >52,1
step << skip
.goto Dun Morogh,70.69,55.85
.goto Searing Gorge,35.43,23.57,5 >> |cRXP_WARN_Jump up onto the side of the rock, then perform a jumping logout skip to Thorium Point|r
.zoneskip Searing Gorge
.xp >52,1
step
#completewith SGEntry
.goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth|r
.fly Thelsamar >> Fly to Thelsamar
.target Gryth Thurden
.zoneskip Searing Gorge
.xp >52,1
step
.goto Badlands,49.62,9.50
.zone Badlands >> Travel to Badlands, then onward to Searing Gorge
.zoneskip Searing Gorge
.xp >52,1
step
#label SGEntry
.goto Searing Gorge,76.28,56.77
.zone Searing Gorge >> Travel to Searing Gorge
.xp >52,1
step
#completewith FP
+|cRXP_WARN_Save all the|r |T133614:0|t[Dark Iron Scraps] |cRXP_WARN_you get. You may need them later|r
step
.goto Searing Gorge,37.65,26.47
>>Click the |cRXP_PICK_Wanted/Missing/Lost & Found|r board
.accept 7728 >> Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
.accept 7729 >> Accept JOB OPPORTUNITY: Culling the Competition
step
>>Talk to |cRXP_FRIENDLY_Hansel|r and |cRXP_FRIENDLY_Burninate|r
.accept 7723 >> Accept Curse These Fat Fingers
.accept 7724 >> Accept Fiery Menace!
.accept 7727 >> Accept Incendosaurs? Whateverosaur is More Like It
.target +Hansel Heavyhands
.goto Searing Gorge,38.58,27.81
.accept 7722 >> Accept What the Flux?
.vendor 14624 >> Vendor Trash. Repair
>>|cRXP_BUY_Buy some|r |T134712:0|t[Morning Glory Dew] |cRXP_BUY_and|r |T133971:0|t[Roasted Quail] |cRXP_BUY_from him|r
.collect 8766,160,82,1 
.collect 8952,160,82,1 
.goto Searing Gorge,38.80,28.50
.target +Master Smith Burninate
step
#label FP
.goto Searing Gorge,37.94,30.87
>>Talk to |cRXP_FRIENDLY_Lanie|r
.fp Thorium Point >> Get the Thorium Point flight path
.target Lanie Reed
step
.goto Searing Gorge,39.06,38.99
>>Talk to |cRXP_FRIENDLY_Velarok|r
.accept 3441 >> Accept Divine Retribution
.complete 3441,1 
.skipgossip 8479,1
.target Velarok Windblade
step
.goto Searing Gorge,39.06,38.99
>>Talk to |cRXP_FRIENDLY_Velarok|r
.turnin 3441 >> Turn in Divine Retribution
.accept 3442 >> Accept The Flawless Flame
.target Velarok Windblade
step
#completewith Pit
>>AoE |cRXP_ENEMY_Greater Lava Spiders|r
>>|cRXP_WARN_Be careful as they cast|r |T135812:0|t[Fireball] |cRXP_WARN_(dealing ranged damage). Remember to cast|r |T135806:0|t[Fire Ward]
.complete 7724,1 
.mob Greater Lava Spider
step
#completewith Pit
#label HeavyGolems1
>>AoE |cRXP_ENEMY_Heavy War Golems|r. Loot them for |cRXP_LOOT_Golem Oil|r
.complete 7723,1 
.mob Heavy War Golem
.itemcount 10511,<4 
.isOnQuest 3442
step
#completewith Pit
#requires HeavyGolems1
>>AoE |cRXP_ENEMY_Heavy War Golems|r
.complete 7723,1 
.mob Heavy War Golem
step << skip
#completewith X
>>Kill |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for their |T133614:0|t[|cRXP_LOOT_Dark Iron Scraps|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Slavers|r cast|r |T132149:0|t[Net] |cRXP_WARN_(Immobilizes for 9 seconds)|r
.complete 7729,1 
.mob +Dark Iron Taskmaster
.complete 7729,2 
.mob +Dark Iron Slaver
.collect 11818,1,4451,1 
.mob +Dark Iron Taskmaster
.mob +Dark Iron Slaver
.accept 4451 >> Accept The Key to Freedom
.use 11818
step
#completewith Hearts
.goto Searing Gorge,39.00,41.53,40,0
.goto Searing Gorge,43.71,34.31,40,0
.goto Searing Gorge,42.67,38.72,40,0
>>AoE |cRXP_ENEMY_Blazing Elementals|r, |cRXP_ENEMY_Inferno Elementals|r, and |cRXP_ENEMY_Magma Elementals|r. Loot them for |cRXP_LOOT_Hearts of Flame|r and |cRXP_LOOT_Golem Oil|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blazing Elementals|r and |cRXP_ENEMY_Inferno Elementals|r are|r |T135824:0|t[Fire Immune]|cRXP_WARN_, and|r |cRXP_ENEMY_Magma Elementals|r |cRXP_WARN_have increased|r |T135824:0|t[Fire Immunity]|cRXP_WARN_. |cRXP_ENEMY_Magma Elementals|r also cast|r |T135824:0|t[Fire Nova] |cRXP_WARN_(Instantly deals about 300 fire damage)|r
.complete 3442,1 
.complete 3442,2 
.mob Blazing Elemental
.mob Inferno Elemental
.mob Magma Elemental
step
#completewith Shaft
.goto Searing Gorge,43.11,52.04,50,0
.goto Searing Gorge,40.09,49.02,50,0
.goto Searing Gorge,37.98,50.79,50,0
.goto Searing Gorge,31.06,43.35,50,0
.goto Searing Gorge,24.20,54.31,50,0
>>AoE |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>AoE |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r. Loot them both for the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Lookouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
.complete 7728,1 
.mob +Dark Iron Taskmaster
.complete 7728,2 
.mob +Dark Iron Lookout
.collect 11818,1,4451,1 
.mob +Dark Iron Steamsmith
.mob +Dark Iron Lookout
step
.goto Searing Gorge,29.50,78.00,100 >> Travel toward Blackrock Mountain
.itemcount 10511,<4 
.isOnQuest 3442
step
#label Hearts
.goto Searing Gorge,29.50,78.00,100 >> Travel toward Blackrock Mountain
.itemcount 10509,<4 
.isOnQuest 3442
step
.goto Searing Gorge,27.69,63.37,70,0
.goto Searing Gorge,24.20,54.31,50,0
.goto Searing Gorge,31.06,43.35,50,0
.goto Searing Gorge,39.00,41.53,40,0
.goto Searing Gorge,43.71,34.31,40,0
.goto Searing Gorge,42.67,38.72
>>AoE |cRXP_ENEMY_Blazing Elementals|r, |cRXP_ENEMY_Inferno Elementals|r, and |cRXP_ENEMY_Magma Elementals|r. Loot them for |cRXP_LOOT_Hearts of Flame|r and |cRXP_LOOT_Golem Oil|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blazing Elementals|r and |cRXP_ENEMY_Inferno Elementals|r are|r |T135824:0|t[Fire Immune]|cRXP_WARN_, and|r |cRXP_ENEMY_Magma Elementals|r |cRXP_WARN_have increased|r |T135824:0|t[Fire Immunity]|cRXP_WARN_. |cRXP_ENEMY_Magma Elementals|r also cast|r |T135824:0|t[Fire Nova] |cRXP_WARN_(Instantly deals about 300 fire damage)|r
.complete 3442,1 
.complete 3442,2 
.mob Blazing Elemental
.mob Inferno Elemental
.mob Magma Elemental
step
#label Shaft
.goto Searing Gorge,39.06,38.99
>>Talk to |cRXP_FRIENDLY_Velarok|r
.turnin 3442 >> Turn in The Flawless Flame
.accept 3443 >> Accept Forging the Shaft
.target Velarok Windblade
step
#completewith next
.goto Searing Gorge,43.11,52.04,50,0
.goto Searing Gorge,40.09,49.02,50,0
.goto Searing Gorge,37.98,50.79,50,0
>>AoE |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for |cRXP_LOOT_Thorium Plated Daggers|r, the |cRXP_LOOT_Smithing Tuyere|r, and the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Use the|r |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r] |cRXP_WARN_to start the quest|r
.complete 3343,1 
.mob +Dark Iron Steamsmith
.mob +Dark Iron Lookout
.complete 7728,1 
.mob +Dark Iron Steamsmith
.collect 11818,1,4451,1 
.mob +Dark Iron Steamsmith
.mob +Dark Iron Lookout
.accept 4451 >> Accept The Key to Freedom
.use 11818
step
#label Pit
.goto Searing Gorge,35.21,42.57,8 >>Jump down the hole into The Slag Pit
.isOnQuest 7729
step
#completewith Bridge
>>AoE |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r] and |T133614:0|t[|cRXP_LOOT_Dark Iron Scraps|r]
>>|cRXP_WARN_Use the|r |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r] |cRXP_WARN_to start the quest|r
.collect 11818,1,4451,1 
.accept 4451 >> Accept The Key to Freedom
.use 11818
step
.goto Searing Gorge,35.92,42.11,30,0
.goto Searing Gorge,39.12,35.76,30,0
.goto Searing Gorge,40.67,30.21,30,0
.goto Searing Gorge,43.07,23.38,30,0
.goto Searing Gorge,44.07,24.31,20,0
.goto Searing Gorge,43.78,27.87,10,0
.goto Searing Gorge,45.30,26.21,20,0
.goto Searing Gorge,45.86,26.94,15,0
.goto Searing Gorge,45.41,29.76,15,0
.goto Searing Gorge,44.31,31.11,25,0
.goto Searing Gorge,43.41,31.39,25,0
.goto Searing Gorge,42.46,33.69,40,0
.goto Searing Gorge,44.05,34.47,40,0
.goto Searing Gorge,44.42,35.46,40,0
.goto Searing Gorge,42.75,36.22
>>AoE |cRXP_ENEMY_Dark Iron Taskmasters|r, |cRXP_ENEMY_Dark Iron Slavers|r, and |cRXP_ENEMY_Slave Workers|r. Loot them for |cRXP_LOOT_Thorium Plated Daggers|r and |T133614:0|t[|cRXP_LOOT_Dark Iron Scraps|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Slavers|r cast|r |T132149:0|t[Net] |cRXP_WARN_(Immobilizes for 9 seconds)|r
.complete 7729,1 
.disablecheckbox
.complete 7729,2 
.disablecheckbox
.complete 3343,1 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
.mob Slave Worker
step
#completewith Bridge
>>AoE |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for their |T133614:0|t[|cRXP_LOOT_Dark Iron Scraps|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Slavers|r cast|r |T132149:0|t[Net] |cRXP_WARN_(Immobilizes for 9 seconds)|r
.complete 7729,1 
.mob +Dark Iron Taskmaster
.complete 7729,2 
.mob +Dark Iron Slaver
.mob *Slave Worker
step
.goto Searing Gorge,40.45,35.75
>>|cRXP_WARN_Pre-cast|r |T135988:0|t[Ice Barrier]
>>|cRXP_WARN_Cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Overseer Maltorious|r
>>|cRXP_WARN_Be careful as he casts|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(deals about 300 ranged damage),|r |T136207:0|t[Shadow Word: Pain] |cRXP_WARN_(Deals 864 damage over 18 seconds), and|r |T136071:0|t[Polymorph] |cRXP_WARN_(sheeps you for 20 seconds until you take damage, casts if he's locked from casting shadow spells)|r
>>|cRXP_WARN_Move the |cRXP_ENEMY_ODark Iron Sentries|r (and potentially |cRXP_ENEMY_OSlave Master Blackheart|r) away from the plans and |cRXP_ENEMY_OOverseer Maltorious|r, then cast|r |T135848:0|t[Frost Nova]
>>|T135736:0|t[Blink] |cRXP_WARN_toward the table|r
>>|cRXP_WARN_Loot the |cRXP_LOOT_Secret Plans: Fiery Flux|r on the table|r
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_Jump down to the north side if you're at low health and want to evade them instantly, otherwise run back behind you toward the metal bridge|r
.complete 7722,1 
.mob Overseer Maltorious
step
#completewith next
#label Bridge
.goto Searing Gorge,47.37,41.32,30,0
.goto Searing Gorge,49.96,38.98,30 >>Travel across the bridge, then jump down toward the |cRXP_ENEMY_Incendosaurs|r
step
#loop
.line Searing Gorge,51.41,37.16,51.13,33.36,51.06,28.96,50.12,26.00,49.47,23.72,47.75,21.59,46.30,20.09,45.23,21.72,44.50,24.90,43.47,28.24,44.50,24.90,48.51,26.63,50.12,26.00,51.06,28.96,51.13,33.36,51.41,37.16
.goto Searing Gorge,51.41,37.16,35,0
.goto Searing Gorge,51.13,33.36,35,0
.goto Searing Gorge,51.06,28.96,35,0
.goto Searing Gorge,50.12,26.00,35,0
.goto Searing Gorge,49.47,23.72,35,0
.goto Searing Gorge,47.75,21.59,35,0
.goto Searing Gorge,46.30,20.09,35,0
.goto Searing Gorge,45.23,21.72,35,0
.goto Searing Gorge,44.50,24.90,35,0
.goto Searing Gorge,43.47,28.24,35,0
.goto Searing Gorge,44.50,24.90,35,0
.goto Searing Gorge,48.51,26.63,35,0
.goto Searing Gorge,50.12,26.00,35,0
.goto Searing Gorge,51.06,28.96,35,0
.goto Searing Gorge,51.13,33.36,35,0
.goto Searing Gorge,51.41,37.16,35,0
>>AoE |cRXP_ENEMY_Incendosaurs|r
>>|cRXP_WARN_Be careful as they eventually cast|r |T135812:0|t[Fireball] |cRXP_WARN_(dealing ranged damage). Remember to cast|r |T135806:0|t[Fire Ward] |cRXP_WARN_and|r |T135856:0|t[Counterspell]
.complete 7727,1 
.mob Incendosaur
step << skip
#completewith next
.goto Searing Gorge,52.14,36.25,-1
.goto Searing Gorge,51.89,38.17,-1
.goto Searing Gorge,51.61,32.81,-1
.goto Searing Gorge,50.52,32.23,-1
.goto Searing Gorge,49.83,33.50,-1
.goto Searing Gorge,50.68,29.39,-1
.goto Searing Gorge,51.77,28.66,-1
.goto Searing Gorge,51.54,27.10,-1
.goto Searing Gorge,50.49,26.43,-1
.goto Searing Gorge,49.65,27.33,-1
.goto Searing Gorge,49.65,25.39,-1
.goto Searing Gorge,49.37,22.83,-1
.goto Searing Gorge,47.58,25.68,-1
.goto Searing Gorge,46.50,27.50,-1
.goto Searing Gorge,47.35,20.34,-1
.goto Searing Gorge,46.65,22.00,-1
.goto Searing Gorge,45.96,19.21,-1
.goto Searing Gorge,45.94,22.06,-1
.goto Searing Gorge,44.51,21.69,-1
.goto Searing Gorge,43.59,24.75,-1
.goto Searing Gorge,44.30,28.11,-1
.goto Searing Gorge,42.44,31.13,-1
.goto Searing Gorge,35.43,23.57,5 >>|cRXP_WARN_Logout Skip out of the cave|r
step
#completewith next
.goto Searing Gorge,47.09,43.07,20,0
.goto Searing Gorge,47.75,47.22,20 >> Exit the Incendosaur cave and head back to Thorium Point
step
.goto Searing Gorge,39.06,38.99
>>Talk to |cRXP_FRIENDLY_Velarok|r
.turnin 3443 >> Turn in Forging the Shaft
.accept 3452 >> Accept The Flame's Casing
.target Velarok Windblade
step
#completewith TowerEnd
>>AoE |cRXP_ENEMY_Heavy War Golems|r
.complete 7723,1 
.mob Heavy War Golem
step
#completewith Casing
>>AoE |cRXP_ENEMY_Greater Lava Spiders|r
>>|cRXP_WARN_Be careful as they cast|r |T135812:0|t[Fireball] |cRXP_WARN_(dealing ranged damage). Remember to cast|r |T135806:0|t[Fire Ward]
.complete 7724,1 
.mob Greater Lava Spider
step
#completewith Ridge
.goto Searing Gorge,43.11,52.04,50,0
.goto Searing Gorge,40.09,49.02,50,0
.goto Searing Gorge,37.98,50.79,50,0
>>AoE |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r and the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
.complete 7728,1 
.collect 11818,1,4451,1 
.mob Dark Iron Steamsmith
.itemcount 11818,<1
step
#completewith next
.goto Searing Gorge,43.11,52.04,50,0
.goto Searing Gorge,40.09,49.02,50,0
.goto Searing Gorge,37.98,50.79,50,0
>>AoE |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
.complete 7728,1 
.mob Dark Iron Steamsmith
step
#label Ridge
.goto Searing Gorge,23.56,42.15,100 >>Travel toward Firewatch Ridge
.isOnQuest 3452
step
.goto Searing Gorge,23.31,40.52,60,0
.goto Searing Gorge,22.74,37.08,80,0
.goto Searing Gorge,24.55,25.85,60,0
.goto Searing Gorge,23.31,40.52,60,0
.goto Searing Gorge,22.74,37.08,80,0
.goto Searing Gorge,24.55,25.85
>>Kill |cRXP_ENEMY_Twilight Dark Shamans|r and |cRXP_ENEMY_Twilight Geomancers|r. Loot them for a Symbol of Ragnaros|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Dark Shamans|r cast|r |T136052:0|t[Healing Wave] |cRXP_WARN_(heals for about 1000 damage) and|r |T136115:0|t[Shock] |cRXP_WARN_(instantly deals about 500 damage) and |cRXP_ENEMY_Twilight Geomancers|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(deals about 350 ranged fire damage),|r |T136186:0|t[Rain of Fire] |cRXP_WARN_(deals about 150 fire damage per tick, don't stand in it), and|r |T136091:0|t[Slow] |cRXP_WARN_(reduces movespeed by 60% for 10 seconds)|r
>>|cRXP_WARN_Avoid the |cRXP_ENEMY_Twilight Fire Guards|r as they have too much health|r
>>|cRXP_WARN_If you run out of visible |cRXP_ENEMY_Twilight Dark Shamans|r and |cRXP_ENEMY_Twilight Geomancers|r, skip this step|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Geomancer
step
#label Casing
.goto Searing Gorge,39.06,38.99
>>Talk to |cRXP_FRIENDLY_Velarok|r
.turnin 3452 >> Turn in The Flame's Casing
.accept 3453 >> Accept The Torch of Retribution
.timer 27,The Torch of Retribution RP
.target Velarok Windblade
.isQuestComplete 3452
step
.goto Searing Gorge,39.06,38.99
>>Talk to |cRXP_FRIENDLY_Velarok|r
.accept 3453 >> Accept The Torch of Retribution
.timer 27,The Torch of Retribution RP
.target Velarok Windblade
.isQuestTurnedIn 3452
step
>>|cRXP_WARN_Wait out the RP|r
>>Talk to |cRXP_FRIENDLY_Velarok|r, then click |cRXP_PICK_The Torch of Retribution|r, then talk to |cRXP_FRIENDLY_Velarok|r and |cRXP_FRIENDLY_Maltrake|r
.turnin 3453 >> Turn in The Torch of Retribution
.accept 3454 >> Accept The Torch of Retribution
.target +Velarok Windblade
.goto Searing Gorge,39.06,38.99
.turnin 3454 >> Turn in The Torch of Retribution
.goto Searing Gorge,39.03,39.09
.accept 3462 >> Accept Squire Maltrake
.target +Velarok Windblade
.goto Searing Gorge,39.06,38.99
.turnin 3462 >> Turn in Squire Maltrake
.accept 3463 >> Accept Set Them Ablaze!
.goto Searing Gorge,39.17,38.98
.target +Squire Maltrake
.isQuestComplete 7723
.isQuestTurnedIn 3452
step
>>|cRXP_WARN_Wait out the RP|r
>>|cRXP_WARN_AoE |cRXP_ENEMY_Heavy War Golems|r while you wait|r
>>Talk to |cRXP_FRIENDLY_Velarok|r, then click |cRXP_PICK_The Torch of Retribution|r, then talk to |cRXP_FRIENDLY_Velarok|r and |cRXP_FRIENDLY_Maltrake|r
.turnin 3453 >> Turn in The Torch of Retribution
.accept 3454 >> Accept The Torch of Retribution
.target +Velarok Windblade
.goto Searing Gorge,39.06,38.99
.turnin 3454 >> Turn in The Torch of Retribution
.goto Searing Gorge,39.03,39.09
.accept 3462 >> Accept Squire Maltrake
.target +Velarok Windblade
.goto Searing Gorge,39.06,38.99
.turnin 3462 >> Turn in Squire Maltrake
.accept 3463 >> Accept Set Them Ablaze!
.goto Searing Gorge,39.17,38.98
.target +Squire Maltrake
.isQuestTurnedIn 3452
step
#completewith TowerBlaze
.goto Searing Gorge,43.11,52.04,50,0
.goto Searing Gorge,40.09,49.02,50,0
.goto Searing Gorge,37.98,50.79,50,0
>>AoE |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r and the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
.complete 7728,1 
.collect 11818,1,4451,1 
.mob Dark Iron Steamsmith
.itemcount 11818,<1
step
#completewith TowerBlaze
.goto Searing Gorge,43.11,52.04,50,0
.goto Searing Gorge,40.09,49.02,50,0
.goto Searing Gorge,37.98,50.79,50,0
>>AoE |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
.complete 7728,1 
.mob Dark Iron Steamsmith
step
#completewith TowerBlaze
.goto Searing Gorge,43.11,52.04,50,0
.goto Searing Gorge,40.09,49.02,50,0
.goto Searing Gorge,37.98,50.79,50,0
>>AoE |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r and the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Lookouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
.complete 7728,2 
.collect 11818,1,4451,1 
.mob Dark Iron Lookout
.itemcount 11818,<1
step
#completewith TowerBlaze
>>AoE |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Lookouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
.complete 7728,2 
.mob Dark Iron Lookout
step
#completewith next
+Equip the |T135466:0|t[Torch of Retribution]
.use 10515 
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>0.1
step
#label TowerBlaze
.goto Searing Gorge,33.46,53.64,12,0
.goto Searing Gorge,34.40,54.33,12,0
.goto Searing Gorge,33.29,54.47
>>Click the |cRXP_WARN_Sentry Blazer|r atop the tower
.complete 3463,4 
step
#completewith next
+Re-Equip your main weapon
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<0.1
step
#loop
.line Searing Gorge,26.85,49.67,28.79,48.83,29.42,44.19,27.24,42.94,27.27,45.32,26.85,49.67,26.75,52.92,28.91,56.04,30.35,56.18,30.68,59.56,31.22,63.83,31.28,68.17,28.62,76.18,30.06,79.36
.goto Searing Gorge,26.85,49.67,40,0
.goto Searing Gorge,28.79,48.83,40,0
.goto Searing Gorge,29.42,44.19,40,0
.goto Searing Gorge,27.24,42.94,40,0
.goto Searing Gorge,27.27,45.32,40,0
.goto Searing Gorge,26.85,49.67,40,0
.goto Searing Gorge,26.75,52.92,40,0
.goto Searing Gorge,28.91,56.04,40,0
.goto Searing Gorge,30.35,56.18,40,0
.goto Searing Gorge,30.68,59.56,40,0
.goto Searing Gorge,31.22,63.83,40,0
.goto Searing Gorge,31.28,68.17,40,0
.goto Searing Gorge,28.62,76.18,40,0
.goto Searing Gorge,30.06,79.36,40,0
>>AoE |cRXP_ENEMY_Greater Lava Spiders|r
>>|cRXP_WARN_Be careful as they cast|r |T135812:0|t[Fireball] |cRXP_WARN_(dealing ranged damage). Remember to cast|r |T135806:0|t[Fire Ward]
.complete 7724,1 
.mob Greater Lava Spider
step
#completewith TowerEnd
.goto Searing Gorge,43.11,52.04,50,0
.goto Searing Gorge,40.09,49.02,50,0
.goto Searing Gorge,37.98,50.79,50,0
>>AoE |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r and the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Lookouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
.complete 7728,2 
.collect 11818,1,4451,1 
.mob Dark Iron Lookout
.itemcount 11818,<1
step
#completewith TowerEnd
>>AoE |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Lookouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
.complete 7728,2 
.mob Dark Iron Lookout
step
#completewith next
+Equip the |T135466:0|t[Torch of Retribution]
.use 10515 
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>0.1
step
.goto Searing Gorge,35.81,59.96,12,0
.goto Searing Gorge,36.81,60.47,12,0
.goto Searing Gorge,35.67,60.68
>>Click the |cRXP_WARN_Sentry Blazer|r atop the tower
.complete 3463,1 
step
.goto Searing Gorge,44.07,62.04,12,0
.goto Searing Gorge,43.10,61.86,12,0
.goto Searing Gorge,44.04,60.90
>>Click the |cRXP_WARN_Sentry Blazer|r atop the tower
.complete 3463,2 
step
#label TowerEnd
.goto Searing Gorge,52.49,58.06,15,0
.goto Searing Gorge,51.34,55.58,15,0
.goto Searing Gorge,50.08,55.65,12,0
.goto Searing Gorge,49.20,55.66,12,0
.goto Searing Gorge,50.07,54.74
>>Click the |cRXP_WARN_Sentry Blazer|r atop the tower
.complete 3463,3 
step
#completewith Suntara
+Re-Equip your main weapon
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<0.1
step
#completewith next
.goto Searing Gorge,68.30,71.17,50 >> Travel towards Margol
step
.goto Searing Gorge,70.61,72.87,30,0
.goto Searing Gorge,73.10,74.11,30,0
.goto Searing Gorge,72.66,78.63,30,0
.goto Searing Gorge,72.86,79.92
>>Kill |cRXP_ENEMY_Margol the Rager|r. Loot him for |T134229:0|t[|cRXP_LOOT_Margol's Horn|r]
>>|cRXP_WARN_Use |T134229:0|t[|cRXP_LOOT_Margol's Horn|r] to start the quest|r
>>|cRXP_WARN_Let him cast |T136015:0|t[Chained Bolt] from range as they do very little damage|r
.collect 10000,1,3181,1 
.accept 3181 >> Accept The Horn of the Beast
.mob Margol the Rager
.use 10000
step
.goto Searing Gorge,65.59,62.17
>>|cRXP_WARN_Use the|r |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r] |cRXP_WARN_to start the quest|r
.accept 4451 >> Accept The Key to Freedom
.use 11818
.itemcount 11818,1
step
.goto Searing Gorge,65.59,62.17
>>Click the |cRXP_PICK_Wooden Outhouse|r
.accept 4449 >> Accept Caught!
.turnin 4451 >> Turn in The Key to Freedom
.isOnQuest 4451
step
.goto Searing Gorge,65.59,62.17
>>Click the |cRXP_PICK_Wooden Outhouse|r
.accept 4449 >> Accept Caught!
step
.goto Searing Gorge,63.10,60.94,40,0
.goto Searing Gorge,63.34,58.92,40,0
.goto Searing Gorge,69.24,33.38,40,0
.goto Searing Gorge,63.10,60.94,40,0
.goto Searing Gorge,63.34,58.92,40,0
.goto Searing Gorge,69.24,33.38,40,0
.goto Searing Gorge,63.10,60.94,40,0
.goto Searing Gorge,63.34,58.92,40,0
.goto Searing Gorge,69.24,33.38,40,0
.goto Searing Gorge,63.10,60.94,40,0
.goto Searing Gorge,63.34,58.92
>>AoE |cRXP_ENEMY_Dark Iron Geologists|r and |cRXP_ENEMY_Dark Iron Watchmen|r. Loot them for their |cRXP_LOOT_Silk Cloth|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Geologists|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(dealing ranged damage)|r
>>|cRXP_ENEMY_Dark Iron Geologists|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Dark Iron Watchmen|r. AoE them too if you run out of spawns|r
>>|cRXP_WARN_Do NOT talk to |cRXP_FRIENDLY_Dorius yet|r
.complete 4449,1 
.complete 4449,2 
.mob Dark Iron Geologist
.itemcount 4306,<15
step
.goto Searing Gorge,63.10,60.94,40,0
.goto Searing Gorge,63.34,58.92,40,0
.goto Searing Gorge,69.24,33.38,40,0
.goto Searing Gorge,63.10,60.94,40,0
.goto Searing Gorge,63.34,58.92,40,0
.goto Searing Gorge,69.24,33.38,40,0
.goto Searing Gorge,63.10,60.94,40,0
.goto Searing Gorge,63.34,58.92,40,0
.goto Searing Gorge,69.24,33.38,40,0
.goto Searing Gorge,63.10,60.94,40,0
.goto Searing Gorge,63.34,58.92
>>AoE |cRXP_ENEMY_Dark Iron Geologists|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Geologists|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(dealing ranged damage)|r
>>|cRXP_WARN_They share spawns with |cRXP_ENEMY_Dark Iron Watchmen|r. AoE them too if you run out of spawns|r
>>|cRXP_WARN_Do NOT talk to |cRXP_FRIENDLY_Dorius yet|r
.complete 4449,1 
.mob Dark Iron Geologist
.itemcount 4306,15
step
.goto Searing Gorge,65.59,62.17
>>Click the |cRXP_PICK_Wooden Outhouse|r
.turnin 4449 >> Turn in Caught!
step
#label Suntara
.goto Searing Gorge,63.91,60.98
>>Talk to |cRXP_FRIENDLY_Dorius|r to begin the escort
.accept 3367 >> Accept Suntara Stones
.target Dorius Stonetender
step
.goto Searing Gorge,62.48,55.54,50,0
.goto Searing Gorge,64.04,50.70,50,0
.goto Searing Gorge,61.40,50.38,50,0
.goto Searing Gorge,60.81,48.03,20,0
.goto Searing Gorge,62.60,45.70,25,0
.goto Searing Gorge,65.84,45.30,35,0
.goto Searing Gorge,66.92,41.12,50,0
.goto Searing Gorge,67.86,37.57,50,0
.goto Searing Gorge,71.36,33.77,50,0
>>Escort |cRXP_FRIENDLY_Dorius|r
>>|cRXP_WARN_Be careful as when |cRXP_FRIENDLY_Dorius|r reaches an area around ore veins, |cRXP_ENEMY_Dark Iron Steelshifters|r will spawn and attack him. Try to aggro and AoE them before |cRXP_FRIENDLY_Dorius|r aggroes onto them|r
>>|cRXP_ENEMY_Dark Iron Steelshifters|r |cRXP_WARN_have reduced health|r
.complete 3367,1 
.target Dorius Stonetender
.mob Dark Iron Steelshifter
step
.goto Searing Gorge,74.44,19.28
>>Click the |cRXP_PICK_Singed Letter|r on the ground
>>|cRXP_WARN_This has a 5 second cast time|r
.turnin 3367 >> Turn in Suntara Stones
.accept 3368 >> Accept Suntara Stones
step
#completewith FlyThelsamar
#label TeleIF
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
#completewith FlyThelsamar
#requires TeleIF
>>Talk to |cRXP_FRIENDLY_Hammerfall|r
.accept 5090 >> Accept A Call to Arms: The Plaguelands!
.target Courier Hammerfall
step
.goto Ironforge,31.32,27.80
>>Talk to |cRXP_FRIENDLY_Ginny|r inside
>>|cRXP_BUY_Buy eight|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from her|r
.collect 17031,8 
.target Ginny Longberry
step << skip
#hardcoreserver
.goto Ironforge,32.23,63.24
>>Talk to |cRXP_FRIENDLY_Rotimer|r
>>|cRXP_WARN_NOTE: If this quest is not up on the Hardcore servers, skip this step|r
.accept 7261 >> Accept The Sovereign Imperative
.target Lieutenant Rotimer
.xp <51,1
step
#softcoreserver
.goto Ironforge,32.23,63.24
>>Talk to |cRXP_FRIENDLY_Rotimer|r
.accept 7261 >> Accept The Sovereign Imperative
.target Lieutenant Rotimer
.xp <51,1
step
#label FlyThelsamar
.goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth|r
.fly Thelsamar >> Fly to Thelsamar
.target Gryth Thurden
step
#completewith next
.goto Loch Modan,27.66,65.26,50,0
.goto Loch Modan,24.69,68.79,50,0
.goto Loch Modan,18.18,84.02,40 >>Travel toward |cRXP_FRIENDLY_Pebblebitty|r
step
.goto Loch Modan,18.18,84.02
>>Talk to |cRXP_FRIENDLY_Pebblebitty|r
.turnin 3181 >> Turn in The Horn of the Beast
.accept 3182 >> Accept Proof of Deed
.target Mountaineer Pebblebitty
step
#completewith FlySearing
#label TeleIF2
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
#completewith FlySearing
#requires TeleIF2
>>Talk to |cRXP_FRIENDLY_Hammerfall|r
.accept 5090 >> Accept A Call to Arms: The Plaguelands!
.target Courier Hammerfall
step
#completewith next
.goto Ironforge,40.20,12.33,20,0
.goto Ironforge,52.61,11.14,20,0
.goto Ironforge,59.74,13.41,20,0
.goto Ironforge,64.71,3.63,20 >>Travel toward |cRXP_FRIENDLY_Thorius|r
step
.goto Ironforge,64.71,3.63,20,0
>>Talk to |cRXP_FRIENDLY_Thorius|r
.turnin 3182 >> Turn in Proof of Deed
.turnin 3368 >> Turn in Suntara Stones
.accept 3371 >> Accept Dwarven Justice
.target Curator Thorius
step
#label FlySearing
#completewith next
.goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth|r
.fly Thorium Point >> Fly to Thorium Point
.target Gryth Thurden
step
.zone Searing Gorge >> Travel to Searing Gorge
.xp >53,1
step
>>Talk to |cRXP_FRIENDLY_Maltrake|r, then click the |cRXP_PICK_Hoard of the Black Dragonflight|r twice
>>|cRXP_WARN_This has a 5 second cast time|r
.turnin 3463,3 >> Turn in Set Them Ablaze!
.goto Searing Gorge,39.17,38.98
.accept 3481 >> Accept Trinkets...
.turnin 3481 >> Turn in Trinkets...
.goto Searing Gorge,38.85,38.99
.target Squire Maltrake
.isQuestTurnedIn 3452
step
#completewith Justice
+Open the |T132595:0|t[Hoard of the Black Dragonflight] in your bags
.use 10569
.itemcount 10569,1
step
#completewith Spyglass
.goto Searing Gorge,43.11,52.04,50,0
.goto Searing Gorge,40.09,49.02,50,0
.goto Searing Gorge,37.98,50.79,50,0
>>AoE |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
.complete 7728,1 
.mob Dark Iron Steamsmith
step
#completewith Pit2
.goto Searing Gorge,34.28,46.62,50,0
>>AoE |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for their |T133614:0|t[|cRXP_LOOT_Dark Iron Scraps|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Slavers|r cast|r |T132149:0|t[Net] |cRXP_WARN_(Immobilizes for 9 seconds)|r
.complete 7729,1 
.mob +Dark Iron Taskmaster
.complete 7729,2 
.mob +Dark Iron Slaver
step
#completewith next
.goto Searing Gorge,33.12,53.94,50,0
.goto Searing Gorge,36.65,61.22,50,0
>>AoE |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Lookouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
.complete 7728,2 
.mob Dark Iron Lookout
step
#loop
.line Searing Gorge,44.37,39.54,46.74,37.04,50.94,39.01,45.59,42.10,43.85,44.26,38.01,47.41,35.45,45.52,33.43,48.42,32.58,52.43,32.38,46.52,35.58,40.71,44.37,39.54
.goto Searing Gorge,44.37,39.54,45,0
.goto Searing Gorge,46.74,37.04,45,0
.goto Searing Gorge,50.94,39.01,45,0
.goto Searing Gorge,45.59,42.10,45,0
.goto Searing Gorge,43.85,44.26,45,0
.goto Searing Gorge,38.01,47.41,45,0
.goto Searing Gorge,35.45,45.52,45,0
.goto Searing Gorge,33.43,48.42,45,0
.goto Searing Gorge,32.58,52.43,45,0
.goto Searing Gorge,32.38,46.52,45,0
.goto Searing Gorge,35.58,40.71,45,0
.goto Searing Gorge,44.37,39.54,45,0
>>AoE |cRXP_ENEMY_Heavy War Golems|r
.complete 7723,1 
.mob Heavy War Golem
step
#label Spyglass
.goto Searing Gorge,33.12,53.94,50,0
.goto Searing Gorge,36.65,61.22
>>AoE |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Lookouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
>>|cRXP_WARN_If there are no more |cRXP_ENEMY_Dark Iron Lookouts|r, skip this step|r
.complete 7728,2 
.mob Dark Iron Lookout
step
#label Tuyere
.goto Searing Gorge,43.11,52.04,50,0
.goto Searing Gorge,40.09,49.02,50,0
.goto Searing Gorge,37.98,50.79
>>AoE |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>|cRXP_WARN_If there are no more |cRXP_ENEMY_Dark Iron Steamsmiths|r, skip this step|r
.complete 7728,1 
.mob Dark Iron Steamsmith
.itemcount 18960,1
step
#label Pit2
.goto Searing Gorge,35.21,42.57,8 >>Jump down the hole into The Slag Pit
.isOnQuest 3371
step
#completewith next
>>AoE |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for their |T133614:0|t[|cRXP_LOOT_Dark Iron Scraps|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Slavers|r cast|r |T132149:0|t[Net] |cRXP_WARN_(Immobilizes for 9 seconds)|r
.complete 7729,1 
.mob +Dark Iron Taskmaster
.complete 7729,2 
.mob +Dark Iron Slaver
.collect 22528,30,9131,1 
.disablecheckbox
step
#label Justice
.goto Searing Gorge,35.92,42.11,50,0
.goto Searing Gorge,39.12,35.76,50,0
.goto Searing Gorge,40.67,30.21,50,0
.goto Searing Gorge,41.15,25.55
>>Talk to the |cRXP_FRIENDLY_Dying Archaeologist|r on the ground
.turnin 3371 >> Turn in Dwarven Justice
step
.goto Searing Gorge,43.07,23.38,30,0
.goto Searing Gorge,44.07,24.31,20,0
.goto Searing Gorge,43.78,27.87,10,0
.goto Searing Gorge,45.30,26.21,20,0
.goto Searing Gorge,45.86,26.94,15,0
.goto Searing Gorge,45.41,29.76,15,0
.goto Searing Gorge,44.31,31.11,25,0
.goto Searing Gorge,43.41,31.39,25,0
.goto Searing Gorge,42.46,33.69,40,0
.goto Searing Gorge,44.05,34.47,40,0
.goto Searing Gorge,44.42,35.46,40,0
.goto Searing Gorge,42.75,36.22
>>AoE |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for their |T133614:0|t[|cRXP_LOOT_Dark Iron Scraps|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Slavers|r cast|r |T132149:0|t[Net] |cRXP_WARN_(Immobilizes for 9 seconds)|r
.complete 7729,1 
.mob +Dark Iron Taskmaster
.complete 7729,2 
.mob +Dark Iron Slaver
.collect 22528,30,9131,1 
.disablecheckbox
step
.goto Searing Gorge,43.07,23.38,30,0
.goto Searing Gorge,44.07,24.31,20,0
.goto Searing Gorge,43.78,27.87,10,0
.goto Searing Gorge,45.30,26.21,20,0
.goto Searing Gorge,45.86,26.94,15,0
.goto Searing Gorge,45.41,29.76,15,0
.goto Searing Gorge,44.31,31.11,25,0
.goto Searing Gorge,43.41,31.39,25,0
.goto Searing Gorge,42.46,33.69,40,0
.goto Searing Gorge,44.05,34.47,40,0
.goto Searing Gorge,44.42,35.46,40,0
.goto Searing Gorge,42.75,36.22
>>AoE |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for their |T133614:0|t[|cRXP_LOOT_Dark Iron Scraps|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dark Iron Slavers|r cast|r |T132149:0|t[Net] |cRXP_WARN_(Immobilizes for 9 seconds)|r
.collect 22528,30,9131,1 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
.itemcount 22528,25 
step
#completewith SGTurnins
.destroy 22528 >>|cRXP_WARN_As you didn't loot enough|r |T133614:0|t[|cRXP_LOOT_Dark Iron Scraps|r]|cRXP_WARN_, either delete them from your bags, have someone send some to you, or buy the rest from the Auction House|r
.itemcount 22528,<25 
step << skip
#completewith next
.goto Searing Gorge,43.84,25.69,-1
.goto Searing Gorge,41.24,25.35,-1
.goto Searing Gorge,41.74,28.18,-1
.goto Searing Gorge,42.46,23.66,-1
.goto Searing Gorge,43.73,22.19,-1
.goto Searing Gorge,44.48,25.57,-1
.goto Searing Gorge,42.14,29.59,-1
.goto Searing Gorge,42.31,32.59,-1
.goto Searing Gorge,35.43,23.57,5 >>|cRXP_WARN_Logout Skip out of the cave. Remember to jumping logout skip if you don't think you're high up enough|r
step
#completewith next
.goto Searing Gorge,49.80,45.72,20 >> Exit the cave and head back to Thorium Point
step
>>Talk to |cRXP_FRIENDLY_Hansel|r, |cRXP_FRIENDLY_Scrange|r, and |cRXP_FRIENDLY_Burninate|r
.turnin 7723 >> Turn in Curse These Fat Fingers
.turnin 7724 >> Turn in Fiery Menace!
.turnin 7727 >> Turn in Incendosaurs? Whateverosaur is More Like It
.target +Hansel Heavyhands
.goto Searing Gorge,38.58,27.81
.turnin 7728 >> Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass
.turnin 7729 >> Turn in JOB OPPORTUNITY: Culling the Competition
.target +Taskmaster Scrange
.goto Searing Gorge,38.98,27.50
.turnin 7722 >> Turn in What the Flux?
.vendor 14624 >> Vendor Trash. Repair
>>|cRXP_BUY_Buy some|r |T134712:0|t[Morning Glory Dew] |cRXP_BUY_from him|r
.collect 8766,160,82,1 
.goto Searing Gorge,38.80,28.50
.isQuestComplete 7728
step
#label SGTurnins
>>Talk to |cRXP_FRIENDLY_Hansel|r, |cRXP_FRIENDLY_Scrange|r, and |cRXP_FRIENDLY_Burninate|r
.turnin 7723 >> Turn in Curse These Fat Fingers
.turnin 7724 >> Turn in Fiery Menace!
.turnin 7727 >> Turn in Incendosaurs? Whateverosaur is More Like It
.target +Hansel Heavyhands
.goto Searing Gorge,38.58,27.81
.turnin 7729 >> Turn in JOB OPPORTUNITY: Culling the Competition
.target +Taskmaster Scrange
.goto Searing Gorge,38.98,27.50
.turnin 7722 >> Turn in What the Flux?
.vendor 14624 >> Vendor Trash. Repair
>>|cRXP_BUY_Buy some|r |T134712:0|t[Morning Glory Dew] |cRXP_BUY_from him|r
.collect 8766,160,82,1 
.goto Searing Gorge,38.80,28.50
.target +Master Smith Burninate
step
#completewith next
.abandon 7728 >> Abandon STOLEN: Smithing Tuyere and Lookout's Spyglass
step
#completewith next
.hs >> Hearth to Gadgetzan
step
.zone Tanaris >> Travel to Tanaris
.xp >54,1
]]);
