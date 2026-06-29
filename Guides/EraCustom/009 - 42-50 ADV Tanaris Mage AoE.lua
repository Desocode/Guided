RXPGuides.RegisterGuide([[
#version 23
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 42-50 ADV Tanaris Mage AoE
#next 50-51 ADV Searing Gorge Mage AoE
step
#completewith next
.hs >> Hearth to Theramore
step
.goto Dustwallow Marsh,66.59,45.22
>>Talk to |cRXP_FRIENDLY_Janene|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from her|r
.collect 1645,200,992,1 
.target Innkeeper Janene
step
#completewith TanarisTravel
#label Hats1
.goto Tanaris,66.56,22.27,0,0
>>Talk to |cRXP_FRIENDLY_Haughty|r
.accept 8365 >>Accept Pirate Hats Ahoy!
.target Haughty Modiste
step
#completewith TanarisTravel
#requires Hats1
>>Talk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.accept 8366 >>Accept Southsea Shakedown
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.06,23.89,0,0
.accept 2873 >>Accept Stoley's Shipment
.goto Tanaris,67.11,23.98,0,0
.target +Stoley
step
.goto Tanaris,66.83,4.43
>>|cRXP_WARN_Jump off the south side of Theramore's Harbor, then swim south hugging the cliff side, using|r |T135736:0|t[Blink] |cRXP_WARN_on cooldown and your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_where possible|r << Gnome
>>|cRXP_WARN_Jump off the south side of Theramore's Harbor, then swim south hugging the cliff side, using|r |T135736:0|t[Blink] |cRXP_WARN_on cooldown and your|r |T132261:0|t[Horse Bridle] |cRXP_WARN_where possible|r << Human
>>|cRXP_WARN_Whilst on route, follow the link below to open the website unstuck page. Once you reach the waypoint arrow, logout, select your current character on the website, then move them to the nearest graveyard (Gadgetzan)|r
>>|cRXP_WARN_If this fails, skip this step|r
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_CLICK HERE|r
.goto Tanaris,54.00,28.61,10 >>Website unstuck to Gadgetzan
.xp >44,1
step
#label TanarisTravel
.goto Tanaris,52.50,27.91,200 >>Travel to Gadgetzan
.xp >44,1
step
.goto Tanaris,51.84,27.03
>>Click the |cRXP_PICK_Wanted Poster|r
.accept 2781 >> Accept WANTED: Caliph Scorpidsting
.accept 2875 >> Accept WANTED: Andre Firebeard
step
.goto Tanaris,52.50,27.91
>>Talk to |cRXP_FRIENDLY_Fizzgrimble|r
.home >> Set your Hearthstone to Gadgetzan
.target Innkeeper Fizzgrimble
step
>>Talk to |cRXP_FRIENDLY_Luglunket|r and |cRXP_FRIENDLY_Bilgewhizzle|r
.accept 1707 >>Accept Water Pouch Bounty
.target +Spigot Operator Luglunket
.goto Tanaris,52.48,28.44
.accept 1690 >>Accept Wastewander Justice
.goto Tanaris,52.46,28.52
.target +Chief Engineer Bilgewhizzle
step
.goto Tanaris,51.47,28.82
>>Talk to |cRXP_FRIENDLY_Krinkle|r
.vendor 5411 >> Vendor Trash. Repair
.target Krinkle Goodsteel
step << skip
.goto Tanaris,51.01,29.35
>>Talk to |cRXP_FRIENDLY_Bera|r
.fp Gadgetzan >> Get the Gadgetzan flight path
.target Bera Stonehammer
step
#completewith BanditThief
.goto Tanaris,58.88,23.68,60,0
.goto Tanaris,60.95,23.05,60,0
.goto Tanaris,60.76,24.41,60,0
>>AoE |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for |cRXP_LOOT_Wastewander Water Pouches|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Wastewander Bandits|r cast|r |T132155:0|t[Gouge] |cRXP_WARN_(stuns you until you take damage if you're facing them) and|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind)|r
>>|cRXP_WARN_You can one-pull the entire ruin if you kite them around with|r |T135852:0|t[Cone of Cold] |cRXP_WARN_to slow them and refresh their leash|r
.complete 1690,1 
.mob +Wastewander Bandit
.complete 1690,2 
.mob +Wastewander Thief
.complete 1707,1 
.mob +Wastewander Bandit
.mob +Wastewander Thief
step
.goto Tanaris,66.56,22.27
>>Talk to |cRXP_FRIENDLY_Haughty|r
.accept 8365 >>Accept Pirate Hats Ahoy!
.target Haughty Modiste
step
>>Talk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.accept 8366 >>Accept Southsea Shakedown
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.06,23.89,-1
.accept 2873 >>Accept Stoley's Shipment
.goto Tanaris,67.11,23.98,-1
.target +Stoley
step
#label BanditThief
.goto Tanaris,64.30,29.38,150 >>Travel toward the Waterspring Field
.isOnQuest 1690
step
.goto Tanaris,64.30,29.38,60,0
.goto Tanaris,63.32,29.50,60,0
.goto Tanaris,62.98,30.72,60,0
.goto Tanaris,63.90,31.30,60,0
.goto Tanaris,62.79,33.35,60,0
.goto Tanaris,63.32,34.32,60,0
.goto Tanaris,65.22,33.23,60,0
.goto Tanaris,65.61,31.98,60,0
.goto Tanaris,58.88,23.68,60,0
.goto Tanaris,60.95,23.05,60,0
.goto Tanaris,60.76,24.41,60,0
#loop
.line Tanaris,64.30,29.38,63.32,29.50,62.98,30.72,63.90,31.30,62.79,33.35,63.32,34.32,65.22,33.23,65.61,31.98,64.30,29.38
.goto Tanaris,64.30,29.38,45,0
.goto Tanaris,63.32,29.50,45,0
.goto Tanaris,62.98,30.72,45,0
.goto Tanaris,63.90,31.30,45,0
.goto Tanaris,62.79,33.35,45,0
.goto Tanaris,63.32,34.32,45,0
.goto Tanaris,65.22,33.23,45,0
.goto Tanaris,65.61,31.98,45,0
.goto Tanaris,64.30,29.38,45,0
>>AoE |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for |cRXP_LOOT_Wastewander Water Pouches|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Wastewander Bandits|r cast|r |T132155:0|t[Gouge] |cRXP_WARN_(stuns you until you take damage if you're facing them) and|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind)|r
>>|cRXP_WARN_You can make bigger pulls by kiting them around with|r |T135852:0|t[Cone of Cold] |cRXP_WARN_to slow them and refresh their leash|r
>>|cRXP_WARN_Be careful as aggroing the |cRXP_ENEMY_Wastewanderers|r under the tent will evade your whole pull after about 10 seconds|r
>>|cRXP_WARN_Avoid pulling any|r |cRXP_ENEMY_Wastewander Shadow Mages|r
.complete 1690,1 
.mob +Wastewander Bandit
.complete 1690,2 
.mob +Wastewander Thief
.complete 1707,1 
.mob +Wastewander Bandit
.mob +Wastewander Thief
step
#completewith next
.hs >> Hearth to Gadgetzan
.isOnQuest 1690
.cooldown item,6948,>0
step
>>Talk to |cRXP_FRIENDLY_Luglunket|r and |cRXP_FRIENDLY_Bilgewhizzle|r
.turnin 1707 >>Turn in Water Pouch Bounty
.target +Spigot Operator Luglunket
.goto Tanaris,52.48,28.44
.turnin 1690 >>Turn in Wastewander Justice
.goto Tanaris,52.46,28.52
.target +Chief Engineer Bilgewhizzle
.xp >42+97000,1
step
.goto Tanaris,64.30,29.38,60,0
.goto Tanaris,63.32,29.50,60,0
.goto Tanaris,62.98,30.72,60,0
.goto Tanaris,63.90,31.30,60,0
.goto Tanaris,62.79,33.35,60,0
.goto Tanaris,63.32,34.32,60,0
.goto Tanaris,65.22,33.23,60,0
.goto Tanaris,65.61,31.98,60,0
.goto Tanaris,58.88,23.68,60,0
.goto Tanaris,60.95,23.05,60,0
.goto Tanaris,60.76,24.41,60,0
#loop
.line Tanaris,64.30,29.38,63.32,29.50,62.98,30.72,63.90,31.30,62.79,33.35,63.32,34.32,65.22,33.23,65.61,31.98,58.88,23.68,60.95,23.05,60.76,24.41,64.30,29.38
.goto Tanaris,64.30,29.38,50,0
.goto Tanaris,63.32,29.50,50,0
.goto Tanaris,62.98,30.72,50,0
.goto Tanaris,63.90,31.30,50,0
.goto Tanaris,62.79,33.35,50,0
.goto Tanaris,63.32,34.32,50,0
.goto Tanaris,65.22,33.23,50,0
.goto Tanaris,65.61,31.98,50,0
.goto Tanaris,58.88,23.68,50,0
.goto Tanaris,60.95,23.05,50,0
.goto Tanaris,60.76,24.41,50,0
.goto Tanaris,64.30,29.38,50,0
.xp 42+97000 >>AoE |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r to 97000+/101000xp
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Wastewander Bandits|r cast|r |T132155:0|t[Gouge] |cRXP_WARN_(stuns you until you take damage if you're facing them) and|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind)|r
>>|cRXP_WARN_You can make bigger pulls by kiting them around with|r |T135852:0|t[Cone of Cold] |cRXP_WARN_to slow them and refresh their leash|r
>>|cRXP_WARN_Be careful as aggroing the |cRXP_ENEMY_Wastewanderers|r under the tent will evade your whole pull after about 10 seconds|r
>>|cRXP_WARN_Avoid pulling any|r |cRXP_ENEMY_Wastewander Shadow Mages|r
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,68.56,41.47,20,0
.goto Tanaris,69.83,42.40,20,0
.goto Tanaris,74.38,45.28,40 >>Travel toward the Lost Rigger Cove dock
.isOnQuest 8366
step
#completewith Level44
#label Schedule44
>>|cRXP_WARN_Loot the |cRXP_ENEMY_Southsea|r for|r |T132905:0|t[|cRXP_LOOT_Silk Cloth|r]|cRXP_WARN_,|r |T132892:0|t[|cRXP_LOOT_Mageweave Cloth|r]|cRXP_WARN_, and the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]
>>|cRXP_WARN_Open|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]|cRXP_WARN_. Loot them for|r |T134235:0|t[|cRXP_LOOT_Captain's Keys|r] |cRXP_WARN_and the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] |cRXP_WARN_to start the quest|r
.collect 9250,1,2876,1 
.accept 2876 >> Accept Ship Schedules
.use 9250 
.use 9276 
step
#completewith Level44
#requires Schedule44
+Loot the |cRXP_ENEMY_Southsea|r for |T132905:0|t[|cRXP_LOOT_Silk Cloth|r], |T132892:0|t[|cRXP_LOOT_Mageweave Cloth|r], and |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]
>>Open |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]. Loot them for |T134235:0|t[|cRXP_LOOT_Captain's Keys|r]
.use 9276 
step
#label Level44
#loop
.line Tanaris,75.30,45.72,74.57,47.86,73.40,46.29,83.35,47.32,72.27,46.41,75.30,45.72
.goto Tanaris,75.30,45.72,20,0
.goto Tanaris,74.57,47.86,20,0
.goto Tanaris,73.40,46.29,20,0
.goto Tanaris,83.35,47.32,20,0
.goto Tanaris,72.27,46.41,20,0
.goto Tanaris,75.30,45.72,20,0
.xp 44 >>AoE |cRXP_ENEMY_Southsea Swashbucklers|r, |cRXP_ENEMY_Southsea Dock Workers|r, |cRXP_ENEMY_Southsea Freebooters|r, and |cRXP_ENEMY_Southsea Pirates|r to Level 44
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Southsea Pirates|r cast|r |T132282:0|t[Strike] |cRXP_WARN_(deals double damage every 10 seconds) and |cRXP_ENEMY_Southsea Freebooters|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
.mob Southsea Swashbuckler
.mob Southsea Dock Worker
.mob Southsea Freebooter
.mob Southsea Pirate
.mob Andre Firebeard
step
#completewith next
.goto Tanaris,75.35,45.50,12,0
.goto Tanaris,75.59,45.32,12,0
.goto Tanaris,76.32,45.43,10,0
.goto Tanaris,76.19,45.50,6,0
.goto Tanaris,76.32,45.42,6,0
.goto Tanaris,76.47,45.73,6 >>Travel toward the |cRXP_PICK_Captain's Chest|r
step
.goto Tanaris,76.47,45.73
+Open the |cRXP_PICK_Captain's Chest|r on the first floor of the boat until you run out of |T134235:0|t[|cRXP_LOOT_Captain's Keys|r]
>>|cRXP_WARN_This has a 5 second cast time|r
.itemcount 9249,1 
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Blizzard r4)
.target Dink
step
#completewith next
.goto Ironforge,38.98,77.42,10,0
.goto Ironforge,37.54,75.24,10,0
.goto Ironforge,38.01,74.75,10 >>Travel toward |cRXP_FRIENDLY_Pithwick|r
step
.goto Ironforge,38.01,74.75
>>|cRXP_WARN_You need three eight slots (or more) for your bank to do cloth turnins later|r
>>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Pithwick|r on the bottom floor inside|r
>>|cRXP_BUY_Buy up to three|r |T133634:0|t[Brown Leather Satchels] |cRXP_BUY_(you only need three|r |T133634:0|t[Brown Leather Satchels] |cRXP_BUY_to have enough space for all the cloth you need)|r
>>|cRXP_WARN_Skip this step if you already have enough extra bags for your bank|r
.collect 4498,1,5863,1 
.target Pithwick
step
#completewith Cove46
.hs >> Hearth to Gadgetzan
step
#completewith next
.goto Tanaris,52.22,28.58,15 >>Enter the Gadgetzan Bank
step
.goto Tanaris,52.30,28.91
>>Talk to |cRXP_FRIENDLY_Gimblethorn|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
>>|cRXP_WARN_Buy more bank slots and equip your|r |T133634:0|t[Brown Leather Satchels] |cRXP_WARN_into the bag slots if you have enough gold|r
.bankdeposit 4306,4338 >> Deposit the following items into the bank:
>>|T132905:0|t[Silk Cloth]
>>|T132892:0|t[Mageweave Cloth]
.target Gimblethorn
step
.goto Tanaris,52.63,28.12
>>Talk to |cRXP_FRIENDLY_Dirge|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_and|r |T134712:0|t[Morning Glory Dew] |cRXP_BUY_from him|r
.collect 1645,120,82,1 
.collect 8766,120,82,1 
.target Dirge Quikcleave
step
>>Talk to |cRXP_FRIENDLY_Luglunket|r and |cRXP_FRIENDLY_Bilgewhizzle|r
.turnin 1707 >>Turn in Water Pouch Bounty
.target +Spigot Operator Luglunket
.goto Tanaris,52.48,28.44
.turnin 1690 >>Turn in Wastewander Justice
.goto Tanaris,52.46,28.52
.target +Chief Engineer Bilgewhizzle
step
.goto Tanaris,51.47,28.82
>>Talk to |cRXP_FRIENDLY_Krinkle|r
.vendor 5411 >> Vendor Trash. Repair
.target Krinkle Goodsteel
step
#completewith next
.line Tanaris,63.98,31.74,63.02,33.17,62.53,33.87,61.93,34.78,62.53,33.87,63.02,33.17,63.98,31.74,63.99,33.07,63.80,33.89,63.46,34.31,62.89,34.84,62.50,35.18,61.94,35.53,61.52,36.12,61.29,36.37,61.05,36.65,60.57,36.90,60.27,37.37,58.89,59.82,37.87,60.21,37.22,60.71,36.34,61.15,35.75,61.53,35.37,61.79,35.23,60.09,37.69,61.87,35.25,62.04,35.32,62.34,35.67,62.91,36.92,63.20,37.31,63.46,37.46,62.62,37.81,61.88,38.15,61.08,38.49,60.31,38.82,59.67,39.07,60.31,38.82,61.08,38.49,61.88,38.15,62.62,37.81,63.46,37.46,63.67,37.23,64.09,36.71,64.64,35.40,64.63,34.82,64.52,34.27,64.31,33.77,64.27,33.22,64.21,32.56,64.07,32.04,63.98,31.74
>>AoE |cRXP_ENEMY_Caliph Scorpidsting|r. Loot him for |cRXP_LOOT_Caliph Scorpidsting's Head|r
>>|cRXP_WARN_Be careful as two|r |T132320:0|t[Stealthed] |cRXP_ENEMY_Wastewander Rogues|r |cRXP_WARN_travel with |cRXP_ENEMY_Caliph Scorpidsting|r. They cast|r |T132155:0|t[Gouge] |cRXP_WARN_(stuns you until you take damage if you're facing them) and|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind)|r
>>|cRXP_WARN_He patrols all around the Waterspring Field|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
#label Cove46
.goto Tanaris,68.56,41.47,20,0
.goto Tanaris,69.83,42.40,20,0
.goto Tanaris,74.38,45.28,40 >>Travel toward the Lost Rigger Cove dock
.xp >46,1
step
#completewith Level46
#label Schedule46
>>|cRXP_WARN_Loot the |cRXP_ENEMY_Southsea|r for|r |T132905:0|t[|cRXP_LOOT_Silk Cloth|r]|cRXP_WARN_,|r |T132892:0|t[|cRXP_LOOT_Mageweave Cloth|r]|cRXP_WARN_, and the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]
>>|cRXP_WARN_Open|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]|cRXP_WARN_. Loot them for|r |T134235:0|t[|cRXP_LOOT_Captain's Keys|r] |cRXP_WARN_and the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] |cRXP_WARN_to start the quest|r
.collect 9250,1,2876,1 
.accept 2876 >> Accept Ship Schedules
.use 9250 
.use 9276 
step
#completewith Level46
#requires Schedule46
+Loot the |cRXP_ENEMY_Southsea|r for |T132905:0|t[|cRXP_LOOT_Silk Cloth|r], |T132892:0|t[|cRXP_LOOT_Mageweave Cloth|r], and |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]
>>Open |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]. Loot them for |T134235:0|t[|cRXP_LOOT_Captain's Keys|r]
.use 9276 
step
#label Level46
#loop
.line Tanaris,75.30,45.72,74.57,47.86,73.40,46.29,83.35,47.32,72.27,46.41,75.30,45.72
.goto Tanaris,75.30,45.72,20,0
.goto Tanaris,74.57,47.86,20,0
.goto Tanaris,73.40,46.29,20,0
.goto Tanaris,83.35,47.32,20,0
.goto Tanaris,72.27,46.41,20,0
.goto Tanaris,75.30,45.72,20,0
.xp 46 >>AoE |cRXP_ENEMY_Southsea Swashbucklers|r, |cRXP_ENEMY_Southsea Dock Workers|r, |cRXP_ENEMY_Southsea Freebooters|r, and |cRXP_ENEMY_Southsea Pirates|r to Level 46
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Southsea Pirates|r cast|r |T132282:0|t[Strike] |cRXP_WARN_(deals double damage every 10 seconds) and |cRXP_ENEMY_Southsea Freebooters|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
.mob Southsea Swashbuckler
.mob Southsea Dock Worker
.mob Southsea Freebooter
.mob Southsea Pirate
.mob Andre Firebeard
step
#completewith next
.goto Tanaris,75.35,45.50,12,0
.goto Tanaris,75.59,45.32,12,0
.goto Tanaris,76.32,45.43,10,0
.goto Tanaris,76.19,45.50,6,0
.goto Tanaris,76.32,45.42,6,0
.goto Tanaris,76.47,45.73,6 >>Travel toward the |cRXP_PICK_Captain's Chest|r
step
.goto Tanaris,76.47,45.73
+Open the |cRXP_PICK_Captain's Chest|r on the first floor of the boat until you run out of |T134235:0|t[|cRXP_LOOT_Captain's Keys|r]
>>|cRXP_WARN_This has a 5 second cast time|r
.itemcount 9249,1 
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Arcane Explosion r5, Fire Blast r6)
.target Dink
step
#completewith Cove48
.hs >> Hearth to Gadgetzan
step
#completewith next
.goto Tanaris,52.22,28.58,15 >>Enter the Gadgetzan Bank
step
.goto Tanaris,52.30,28.91
>>Talk to |cRXP_FRIENDLY_Gimblethorn|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
>>|cRXP_WARN_Skip this step if you already have 12 stacks of|r |T132905:0|t[Silk Cloth] |cRXP_WARN_and|r |T132892:0|t[Mageweave Cloth] |cRXP_WARN_in your bank|r
.bankdeposit 4306,4338 >> Deposit the following items into the bank:
>>|T132905:0|t[Silk Cloth]
>>|T132892:0|t[Mageweave Cloth]
.target Gimblethorn
step
.goto Tanaris,52.63,28.12
>>Talk to |cRXP_FRIENDLY_Dirge|r
>>|cRXP_BUY_Buy some|r |T134712:0|t[Morning Glory Dew] |cRXP_BUY_from him|r
.collect 8766,200,82,1 
.target Dirge Quikcleave
step
.goto Tanaris,51.47,28.82
>>Talk to |cRXP_FRIENDLY_Krinkle|r
.vendor 5411 >> Vendor Trash. Repair
.target Krinkle Goodsteel
step
#completewith next
.line Tanaris,63.98,31.74,63.02,33.17,62.53,33.87,61.93,34.78,62.53,33.87,63.02,33.17,63.98,31.74,63.99,33.07,63.80,33.89,63.46,34.31,62.89,34.84,62.50,35.18,61.94,35.53,61.52,36.12,61.29,36.37,61.05,36.65,60.57,36.90,60.27,37.37,58.89,59.82,37.87,60.21,37.22,60.71,36.34,61.15,35.75,61.53,35.37,61.79,35.23,60.09,37.69,61.87,35.25,62.04,35.32,62.34,35.67,62.91,36.92,63.20,37.31,63.46,37.46,62.62,37.81,61.88,38.15,61.08,38.49,60.31,38.82,59.67,39.07,60.31,38.82,61.08,38.49,61.88,38.15,62.62,37.81,63.46,37.46,63.67,37.23,64.09,36.71,64.64,35.40,64.63,34.82,64.52,34.27,64.31,33.77,64.27,33.22,64.21,32.56,64.07,32.04,63.98,31.74
>>AoE |cRXP_ENEMY_Caliph Scorpidsting|r. Loot him for |cRXP_LOOT_Caliph Scorpidsting's Head|r
>>|cRXP_WARN_Be careful as two|r |T132320:0|t[Stealthed] |cRXP_ENEMY_Wastewander Rogues|r |cRXP_WARN_travel with |cRXP_ENEMY_Caliph Scorpidsting|r. They cast|r |T132155:0|t[Gouge] |cRXP_WARN_(stuns you until you take damage if you're facing them) and|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind)|r
>>|cRXP_WARN_He patrols all around the Waterspring Field|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
#label Cove48
.goto Tanaris,68.56,41.47,20,0
.goto Tanaris,69.83,42.40,20,0
.goto Tanaris,74.38,45.28,40 >>Travel toward the Lost Rigger Cove dock
.xp >48,1
step
#completewith Level48
#label Schedule48
>>|cRXP_WARN_Loot the |cRXP_ENEMY_Southsea|r for|r |T132905:0|t[|cRXP_LOOT_Silk Cloth|r]|cRXP_WARN_,|r |T132892:0|t[|cRXP_LOOT_Mageweave Cloth|r]|cRXP_WARN_, and the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]
>>|cRXP_WARN_Open|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]|cRXP_WARN_. Loot them for|r |T134235:0|t[|cRXP_LOOT_Captain's Keys|r] |cRXP_WARN_and the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] |cRXP_WARN_to start the quest|r
.collect 9250,1,2876,1 
.accept 2876 >> Accept Ship Schedules
.use 9250 
.use 9276 
step
#completewith Level48
#requires Schedule48
+Loot the |cRXP_ENEMY_Southsea|r for |T132905:0|t[|cRXP_LOOT_Silk Cloth|r], |T132892:0|t[|cRXP_LOOT_Mageweave Cloth|r], and |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]
>>Open |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]. Loot them for |T134235:0|t[|cRXP_LOOT_Captain's Keys|r]
.use 9276 
step
#label Level48
#loop
.line Tanaris,75.30,45.72,74.57,47.86,73.40,46.29,83.35,47.32,,73.37,48.35,72.78,47.90,72.27,46.41,75.30,45.72
.goto Tanaris,75.30,45.72,20,0
.goto Tanaris,74.57,47.86,20,0
.goto Tanaris,73.40,46.29,20,0
.goto Tanaris,83.35,47.32,20,0
.goto Tanaris,73.37,48.35,20,0
.goto Tanaris,72.78,47.90,20,0
.goto Tanaris,72.27,46.41,20,0
.goto Tanaris,75.30,45.72,20,0
.xp 48 >>AoE |cRXP_ENEMY_Southsea Swashbucklers|r, |cRXP_ENEMY_Southsea Dock Workers|r, |cRXP_ENEMY_Southsea Freebooters|r, and |cRXP_ENEMY_Southsea Pirates|r to Level 48
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Southsea Pirates|r cast|r |T132282:0|t[Strike] |cRXP_WARN_(deals double damage every 10 seconds) and |cRXP_ENEMY_Southsea Freebooters|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
.mob Southsea Swashbuckler
.mob Southsea Dock Worker
.mob Southsea Freebooter
.mob Southsea Pirate
.mob Andre Firebeard
step
#completewith next
.goto Tanaris,75.35,45.50,12,0
.goto Tanaris,75.59,45.32,12,0
.goto Tanaris,76.32,45.43,10,0
.goto Tanaris,76.19,45.50,6,0
.goto Tanaris,76.32,45.42,6,0
.goto Tanaris,76.47,45.73,6 >>Travel toward the |cRXP_PICK_Captain's Chest|r
step
.goto Tanaris,76.47,45.73
+Open the |cRXP_PICK_Captain's Chest|r on the first floor of the boat until you run out of |T134235:0|t[|cRXP_LOOT_Captain's Keys|r]
>>|cRXP_WARN_This has a 5 second cast time|r
.itemcount 9249,1 
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Flamestrike r5, Dampen Magic r4, Conjure Mana Citrine, Fireball r9)
.target Dink
step
#completewith Cove50
.hs >> Hearth to Gadgetzan
step
#completewith next
.goto Tanaris,52.22,28.58,15 >>Enter the Gadgetzan Bank
step
.goto Tanaris,52.30,28.91
>>Talk to |cRXP_FRIENDLY_Gimblethorn|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
>>|cRXP_WARN_Skip this step if you already have 12 stacks of|r |T132905:0|t[Silk Cloth] |cRXP_WARN_and|r |T132892:0|t[Mageweave Cloth] |cRXP_WARN_in your bank|r
.bankdeposit 4306,4338 >> Deposit the following items into the bank:
>>|T132905:0|t[Silk Cloth]
>>|T132892:0|t[Mageweave Cloth]
.target Gimblethorn
step
.goto Tanaris,52.63,28.12
>>Talk to |cRXP_FRIENDLY_Dirge|r
>>|cRXP_BUY_Buy some|r |T134712:0|t[Morning Glory Dew]|cRXP_BUY_,|r |T133970:0|t[Cured Ham Steak]|cRXP_BUY_,|r |T133970:0|t[Cured Ham Steak]|cRXP_BUY_, and|r |T133971:0|t[Roasted Quail] |cRXP_BUY_from him|r
.collect 8766,220,82,1 
.collect 4599,140,82,1 
.collect 8952,60,82,1 
.target Dirge Quikcleave
step
.goto Tanaris,51.47,28.82
>>Talk to |cRXP_FRIENDLY_Krinkle|r
.vendor 5411 >> Vendor Trash. Repair
.target Krinkle Goodsteel
step
.goto Tanaris,58.89,39.50,70,0
.goto Tanaris,60.28,37.18,70,0
.goto Tanaris,63.45,37.62,70,0
.goto Tanaris,64.62,35.16,70,0
.goto Tanaris,63.93,31.57,70,0
.goto Tanaris,62.05,35.11,70,0
.goto Tanaris,58.89,39.50,70,0
.goto Tanaris,60.28,37.18,70,0
.goto Tanaris,63.45,37.62,70,0
.goto Tanaris,64.62,35.16,70,0
.goto Tanaris,63.93,31.57,70,0
.goto Tanaris,62.05,35.11
.line Tanaris,63.98,31.74,63.02,33.17,62.53,33.87,61.93,34.78,62.53,33.87,63.02,33.17,63.98,31.74,63.99,33.07,63.80,33.89,63.46,34.31,62.89,34.84,62.50,35.18,61.94,35.53,61.52,36.12,61.29,36.37,61.05,36.65,60.57,36.90,60.27,37.37,58.89,59.82,37.87,60.21,37.22,60.71,36.34,61.15,35.75,61.53,35.37,61.79,35.23,60.09,37.69,61.87,35.25,62.04,35.32,62.34,35.67,62.91,36.92,63.20,37.31,63.46,37.46,62.62,37.81,61.88,38.15,61.08,38.49,60.31,38.82,59.67,39.07,60.31,38.82,61.08,38.49,61.88,38.15,62.62,37.81,63.46,37.46,63.67,37.23,64.09,36.71,64.64,35.40,64.63,34.82,64.52,34.27,64.31,33.77,64.27,33.22,64.21,32.56,64.07,32.04,63.98,31.74
>>AoE |cRXP_ENEMY_Caliph Scorpidsting|r. Loot him for |cRXP_LOOT_Caliph Scorpidsting's Head|r
>>|cRXP_WARN_Be careful as two|r |T132320:0|t[Stealthed] |cRXP_ENEMY_Wastewander Rogues|r |cRXP_WARN_travel with |cRXP_ENEMY_Caliph Scorpidsting|r. They cast|r |T132155:0|t[Gouge] |cRXP_WARN_(stuns you until you take damage if you're facing them) and|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind)|r
>>|cRXP_WARN_He patrols all around the Waterspring Field|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
#label Cove50
.goto Tanaris,68.56,41.47,20,0
.goto Tanaris,69.83,42.40,20,0
.goto Tanaris,74.38,45.28,40 >>Travel toward the Lost Rigger Cove dock
.xp >50,1
step
#loop
.line Tanaris,75.30,45.72,74.57,47.86,73.40,46.29,83.35,47.32,,73.37,48.35,72.78,47.90,72.27,46.41,75.30,45.72
.goto Tanaris,75.30,45.72,20,0
.goto Tanaris,74.57,47.86,20,0
.goto Tanaris,73.40,46.29,20,0
.goto Tanaris,83.35,47.32,20,0
.goto Tanaris,73.37,48.35,20,0
.goto Tanaris,72.78,47.90,20,0
.goto Tanaris,72.27,46.41,20,0
.goto Tanaris,75.30,45.72,20,0
>>AoE |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r, and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for |cRXP_LOOT_Southsea Pirate Hats|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Southsea Pirates|r cast|r |T132282:0|t[Strike] |cRXP_WARN_(deals double damage every 10 seconds) and |cRXP_ENEMY_Southsea Freebooters|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
.complete 8365,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.mob +Andre Firebeard
.complete 8366,1 
.mob +Southsea Pirate
.complete 8366,2 
.mob +Southsea Freebooter
.complete 8366,3 
.mob +Southsea Dock Worker
.complete 8366,4 
.mob +Southsea Swashbuckler
step
.goto Tanaris,73.37,47.14
>>AoE |cRXP_ENEMY_Andre Firebeard|r. Loot him for |cRXP_LOOT_Firebeard's Head|r
.complete 2875,1 
.mob Andre Firebeard
step
#completewith next
.goto Tanaris,72.59,46.83,12,0
.goto Tanaris,72.22,46.46,12,0
.goto Tanaris,72.17,46.97,8,0
.goto Tanaris,72.32,46.95,8 >> Go inside and then up to the 2nd floor of the house
step
.goto Tanaris,72.15,46.78
>>Open the |cRXP_PICK_Stolen Cargo|r on the ground. Loot it for |cRXP_LOOT_Stoley's Shipment|r
>>|cRXP_WARN_This has a 5 second cast time|r
.complete 2873,1 
step << skip
#completewith Level50
#label Schedule50
>>|cRXP_WARN_Loot the |cRXP_ENEMY_Southsea|r for|r |T132905:0|t[|cRXP_LOOT_Silk Cloth|r]|cRXP_WARN_,|r |T132892:0|t[|cRXP_LOOT_Mageweave Cloth|r]|cRXP_WARN_,|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]|cRXP_WARN_, and the|r |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r]
>>|cRXP_WARN_Open|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]|cRXP_WARN_. Loot them for|r |T134235:0|t[|cRXP_LOOT_Captain's Keys|r] |cRXP_WARN_and the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] |cRXP_WARN_and|r |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r] |cRXP_WARN_to start their quests|r
.collect 9250,1,2876,1 
.collect 8623,1,351,1 
.accept 2876 >> Accept Ship Schedules
.accept 351 >> Accept Find OOX-17/TN!
.use 8623 
.use 9250 
.use 9276 
step
#completewith Level50
#label Schedule50
>>|cRXP_WARN_Loot the |cRXP_ENEMY_Southsea|r for|r |T132905:0|t[|cRXP_LOOT_Silk Cloth|r]|cRXP_WARN_,|r |T132892:0|t[|cRXP_LOOT_Mageweave Cloth|r]|cRXP_WARN_, and the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]
>>|cRXP_WARN_Open|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]|cRXP_WARN_. Loot them for|r |T134235:0|t[|cRXP_LOOT_Captain's Keys|r] |cRXP_WARN_and the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] |cRXP_WARN_to start the quest|r
.collect 9250,1,2876,1 
.accept 2876 >> Accept Ship Schedules
.use 9250 
.use 9276 
step
#completewith Level50
#requires Schedule50
+Loot the |cRXP_ENEMY_Southsea|r for |T132905:0|t[|cRXP_LOOT_Silk Cloth|r], |T132892:0|t[|cRXP_LOOT_Mageweave Cloth|r], and |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]
>>Open |T132596:0|t[|cRXP_LOOT_Pirate's Footlockers|r]. Loot them for |T134235:0|t[|cRXP_LOOT_Captain's Keys|r]
.use 9276 
step
#completewith next
>>Loot the |cRXP_ENEMY_Southsea|r for 15 |T132905:0|t[|cRXP_LOOT_Silk Cloth|r]
>>|cRXP_WARN_NOTE: This is seperate from the 12 stacks you need for cloth turnins later|r
.collect 4306,15,4449,1 
step
#label Level50
#loop
.line Tanaris,75.30,45.72,74.57,47.86,73.40,46.29,83.35,47.32,,73.37,48.35,72.78,47.90,72.27,46.41,75.30,45.72
.goto Tanaris,75.30,45.72,20,0
.goto Tanaris,74.57,47.86,20,0
.goto Tanaris,73.40,46.29,20,0
.goto Tanaris,83.35,47.32,20,0
.goto Tanaris,73.37,48.35,20,0
.goto Tanaris,72.78,47.90,20,0
.goto Tanaris,72.27,46.41,20,0
.goto Tanaris,75.30,45.72,20,0
.xp 50 >>AoE |cRXP_ENEMY_Southsea Swashbucklers|r, |cRXP_ENEMY_Southsea Dock Workers|r, |cRXP_ENEMY_Southsea Freebooters|r, and |cRXP_ENEMY_Southsea Pirates|r to Level 50. Loot them for their Silk Cloth
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Southsea Pirates|r cast|r |T132282:0|t[Strike] |cRXP_WARN_(deals double damage every 10 seconds) and |cRXP_ENEMY_Southsea Freebooters|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals ranged damage)|r
>>|cRXP_WARN_MAKE SURE You keep an extra 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_on your character for Searing Gorge|r
.collect 4306,15,4449,2 
.mob Southsea Swashbuckler
.mob Southsea Dock Worker
.mob Southsea Freebooter
.mob Southsea Pirate
.mob Andre Firebeard
step
#completewith next
.goto Tanaris,75.35,45.50,12,0
.goto Tanaris,75.59,45.32,12,0
.goto Tanaris,76.32,45.43,10,0
.goto Tanaris,76.19,45.50,6,0
.goto Tanaris,76.32,45.42,6,0
.goto Tanaris,76.47,45.73,6 >>Travel toward the |cRXP_PICK_Captain's Chest|r
step
.goto Tanaris,76.47,45.73
+Open the |cRXP_PICK_Captain's Chest|r on the first floor of the boat until you run out of |T134235:0|t[|cRXP_LOOT_Captain's Keys|r]
>>|cRXP_WARN_This has a 5 second cast time|r
.itemcount 9249,1 
step
>>Talk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 2876 >> Turn in Ship Schedules
.turnin 8366,2 >>Turn in Southsea Shakedown
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.06,23.89,-1
.turnin 2873 >>Turn in Stoley's Shipment
.goto Tanaris,67.11,23.98,-1
.target +Stoley
.isOnQuest 2876
step
>>Talk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 8366,2 >>Turn in Southsea Shakedown
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.06,23.89,-1
.turnin 2873 >>Turn in Stoley's Shipment
.goto Tanaris,67.11,23.98,-1
.target +Stoley
step
.goto Tanaris,66.56,22.27
>>Talk to |cRXP_FRIENDLY_Haughty|r
.turnin 8365 >>Turn in Pirate Hats Ahoy!
.target Haughty Modiste
]]);
