RXPGuides.RegisterGuide([[
#version 23
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 41-42 ADV Badlands Mage AoE
#next 42-50 ADV Tanaris Mage AoE
step
.goto Loch Modan,34.02,46.54
>>Talk to |cRXP_FRIENDLY_Morhan|r
.vendor 167 >> Vendor Trash. Repair
.target Morhan Coppertongue
step
#completewith next
.goto Loch Modan,35.25,47.74,12,0
>>Go inside the Inn
.goto Loch Modan,35.54,48.40,10 >>Travel toward |cRXP_FRIENDLY_Hearthstove|r
step
.goto Loch Modan,34.02,46.54
>>Talk to |cRXP_FRIENDLY_Hearthstove|r
>>|cRXP_BUY_Buy some|r |T132789:0|t[Moonberry Juice] |cRXP_BUY_from him|r
.collect 1645,160,992,1 
.target Innkeeper Hearthstove
step
#completewith next
.goto Loch Modan,35.25,47.74,12,0
.goto Loch Modan,36.65,48.56,12,0
>>Exit the Inn. Go inside the House
.goto Loch Modan,37.07,49.38,10 >>Travel toward |cRXP_FRIENDLY_Ghak|r
step
.goto Loch Modan,37.07,49.38
>>Talk to |cRXP_FRIENDLY_Ghak|r
.accept 2500 >> Accept Badlands Reagent Run
.target Ghak Healtouch
step
#completewith next
.goto Loch Modan,46.14,63.53,50,0
.goto Loch Modan,49.35,67.36,50,0
.goto Loch Modan,51.91,68.00,50,0
.goto Loch Modan,65.94,65.62,20 >>Travel toward |cRXP_FRIENDLY_Ironband|r
step
.goto Loch Modan,65.94,65.62
>>Talk to |cRXP_FRIENDLY_Ironband|r
.turnin 707 >> Turn in Ironband Wants You!
.accept 738 >> Accept Find Agmond
.target Prospector Ironband
step << skip
#completewith next
.goto Loch Modan,63.68,74.61,15,0
.goto Loch Modan,62.93,74.96,6,0
.goto Loch Modan,62.51,73.85,8,0
.goto Loch Modan,61.55,73.91,12 >>Jump up the side of the mountain, then go into the cave
step << skip
.goto Loch Modan,61.84,75.66
.zone Badlands >>|cRXP_WARN_Logout Skip by logging out on top of the Mushroom at the back of the cave|r
.isOnQuest 738
step << skip
#completewith next
.goto Badlands,51.21,31.95,50,0
.goto Badlands,53.42,43.40,20 >>Travel toward |cRXP_FRIENDLY_Ryedol|r
step
#completewith next
.zone Badlands >> Travel to Badlands
step
>>Talk to |cRXP_FRIENDLY_Ryedol|r and |cRXP_FRIENDLY_Sigrun|r
.accept 719 >> Accept A Dwarf and His Tools
.target +Prospector Ryedol
.goto Badlands,53.42,43.40
.accept 718 >> Accept Mirages
.goto Badlands,53.80,43.31
.target +Sigrun Ironhew
step
#sticky
#label Tools
#loop
.line Badlands,53.03,33.95,54.38,33.73,52.29,31.88,53.72,31.24,45.60,33.38,44.56,29.92,42.63,29.57,42.99,33.25,45.60,33.38,53.03,33.95
.goto Badlands,53.03,33.95,25,0
.goto Badlands,54.38,33.73,25,0
.goto Badlands,52.29,31.88,25,0
.goto Badlands,53.72,31.24,25,0
.goto Badlands,45.60,33.38,25,0
.goto Badlands,44.56,29.92,25,0
.goto Badlands,42.63,29.57,25,0
.goto Badlands,42.99,33.25,25,0
.goto Badlands,45.60,33.38,25,0
.goto Badlands,53.03,33.95,25,0
>>AoE |cRXP_ENEMY_Shadowforge Darkweavers|r, |cRXP_ENEMY_Shadowforge Tunnelers|r, |cRXP_ENEMY_Shadowforge Chanters|r, and |cRXP_ENEMY_Shadowforge Warriors|r. Loot them for |cRXP_LOOT_Ryedol's Lucky Pick|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Shadowforge Darkweavers|r cast|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(deals about 120-180 ranged damage), |cRXP_ENEMY_Shadowforge Chanters|r cast|r |T135940:0|t[Power Word: Shield] |cRXP_WARN_(absorbs damage) and|r |T135953:0|t[Renew] |cRXP_WARN_(heals damage over time).|r |cRXP_ENEMY_Shadowforge Warriors|r |cRXP_WARN_cast|r |T132369:0|t[Whirlwind] |cRXP_WARN_(melee-ranged AoE)|r
.complete 719,1 
.mob Shadowforge Darkweaver
.mob Shadowforge Tunneler
.mob Shadowforge Chanter
.mob Shadowforge Warrior
step
.goto Badlands,53.03,33.95
>>|cRXP_WARN_Remember to check for the |cRXP_PICK_Solid Chest|r behind the tent|r
>>Click the |cRXP_PICK_Crumpled Map|r on the ground
.accept 720 >> Accept A Sign of Hope
step
#requires Tools
.goto Badlands,66.16,21.89,10,0
.goto Badlands,66.60,21.48,10,0
.goto Badlands,66.60,22.01,10,0
.goto Badlands,66.92,23.45
>>Open the |cRXP_PICK_Excavation Supply Crate|r on the ground. Loot it for the |cRXP_LOOT_Supply Crate|r
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_It has multiple spawnpoints within the camp|r
>>|cRXP_WARN_AoE the nearby |cRXP_ENEMY_Dustbelcher Warriors|r and |cRXP_ENEMY_Dustbelcher Mystics|r that are around the |cRXP_PICK_Excavation Supply Crate|r so you don't aggro any when opening it|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dustbelcher Mystics|r cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_and|r |T136026:0|t[Earth Shock] |cRXP_WARN_(instantly deals damage and interrupts)|r
.complete 718,1 
step
>>Talk to |cRXP_FRIENDLY_Sigrun|r and |cRXP_FRIENDLY_Ryedol|r
.turnin 718 >> Turn in Mirages
.accept 733 >> Accept Scrounging
.target +Sigrun Ironhew
.goto Badlands,53.80,43.31
.turnin 719 >> Turn in A Dwarf and His Tools
.turnin 720 >> Turn in A Sign of Hope
.goto Badlands,53.42,43.40
.target +Prospector Ryedol
step
#completewith Agmond
>>AoE |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Buzzard Gizzards|r and |cRXP_LOOT_Buzzard Wings|r
>>AoE |cRXP_ENEMY_Feral Crag Coyotes|r and |cRXP_ENEMY_Crag Coyotes|r. Loot them for their |cRXP_LOOT_Crag Coyote Fangs|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Buzzards|r cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 8, stackable if batched), and |cRXP_ENEMY_Feral Crag Coyotes|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
.complete 2500,1 
.mob +Buzzard
.collect 3404,4,703,1 
.mob +Buzzard
.complete 2500,2 
.mob +Feral Crag Coyote
.mob +Crag Coyote
step
.goto Badlands,61.94,54.27
>>Talk to |cRXP_FRIENDLY_Garek|r
.accept 732 >> Accept Tremors of the Earth
.target Garek
step
#completewith Lotwil
.line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
>>Split pull |cRXP_ENEMY_Boss Tho'grun|r from his guards. Kill him. Loot him for the |cRXP_LOOT_Sign of the Earth|r
>>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols counter-clockwise around the Middle/Western portions of Badlands|r
.complete 732,1 
.unitscan Boss Tho'grun
step
#completewith next
.goto Badlands,62.57,69.55,50,0
>>AoE |cRXP_ENEMY_Dustbelcher Brutes|r and |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for |cRXP_LOOT_Scrap Metal|r
.complete 733,1 
.mob Dustbelcher Brute
.mob Dustbelcher Ogre
step
#label Agmond
.goto Badlands,50.88,62.41
>>Click the |cRXP_PICK_Battered Dwarven Skeleton|r on the ground
>>|cRXP_WARN_This has a 5 second cast time|r
.turnin 738 >> Turn in Find Agmond
.accept 739 >> Accept Murdaloc
step
#loop
.line Badlands,50.10,64.60,50.29,67.50,48.16,68.88,47.04,70.14,48.82,72.15,51.30,71.52,52.76,69.57,52.62,65.86,50.10,64.60
.goto Badlands,50.10,64.60,35,0
.goto Badlands,50.29,67.50,35,0
.goto Badlands,48.16,68.88,35,0
.goto Badlands,47.04,70.14,35,0
.goto Badlands,48.82,72.15,35,0
.goto Badlands,51.30,71.52,35,0
.goto Badlands,52.76,69.57,35,0
.goto Badlands,52.62,65.86,35,0
.goto Badlands,50.10,64.60,35,0
>>AoE |cRXP_ENEMY_Stonevault Bonesnappers|r, |cRXP_ENEMY_Stonevault Shamans|r, and |cRXP_ENEMY_Murdaloc|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stonevault Bonesnappers|r cast|r |T132938:0|t[Pummel] |cRXP_WARN_(interrupts for 5 seconds) and |cRXP_ENEMY_Stonevault Shamans|r cast|r |T135928:0|t[Healing Ward] |cRXP_WARN_(Summons a ward that heals nearby Troggs)|r
.complete 739,2 
.mob +Stonevault Bonesnapper
.complete 739,1 
.mob +Murdaloc
.mob *Stonevault Shaman
step
#completewith Lotwil
.goto Badlands,29.58,57.30,50,0
>>AoE |cRXP_ENEMY_Dustbelcher Brutes|r and |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for |cRXP_LOOT_Scrap Metal|r
.complete 733,1 
.mob Dustbelcher Brute
.mob Dustbelcher Ogre
step
#completewith next
.goto Badlands,14.92,61.09,70,0
>>AoE |cRXP_ENEMY_Giant Buzzards|r. Loot them for their |cRXP_LOOT_Buzzard Gizzards|r and |cRXP_LOOT_Buzzard Wings|r
>>AoE |cRXP_ENEMY_Elder Crag Coyotes|r. Loot them for their |cRXP_LOOT_Crag Coyote Fangs|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Giant Buzzards|r cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 9, stackable if batched)|r
.complete 2500,1 
.mob +Giant Buzzard
.collect 3404,4,703,1 
.mob +Giant Buzzard
.complete 2500,2 
.mob +Elder Crag Coyote
step
#label Lotwil
.goto Badlands,25.95,44.87
>>Talk to |cRXP_FRIENDLY_Lotwil|r
.accept 710 >> Accept Study of the Elements: Rock
.target Lotwil Veriatus
step
#sticky
#label SmallRock
.goto Badlands,23.00,46.72,60,0
.goto Badlands,19.36,43.36,60,0
.goto Badlands,16.44,38.41,60,0
.goto Badlands,13.27,37.50,60,0
.goto Badlands,13.32,40.86,60,0
.goto Badlands,16.64,43.13,60,0
#loop
.line Badlands,23.00,46.72,19.36,43.36,16.44,38.41,13.27,37.50,13.32,40.86,16.64,43.13,23.00,46.72
.goto Badlands,23.00,46.72,40,0
.goto Badlands,19.36,43.36,40,0
.goto Badlands,16.44,38.41,40,0
.goto Badlands,13.27,37.50,40,0
.goto Badlands,13.32,40.86,40,0
.goto Badlands,16.64,43.13,40,0
.goto Badlands,23.00,46.72,40,0
>>AoE |cRXP_ENEMY_Lesser Rock Elementals|r. Loot them for |cRXP_LOOT_Small Rock Shards|r
>>|cRXP_WARN_DON'T kill the normal |cRXP_ENEMY_Rock Elementals|r as you need them later|r
.complete 710,1 
.mob Lesser Rock Elemental
step
#completewith SmallRock
.goto Badlands,14.92,61.09,70,0
>>AoE |cRXP_ENEMY_Giant Buzzards|r. Loot them for their |cRXP_LOOT_Buzzard Gizzards|r and |cRXP_LOOT_Buzzard Wings|r
>>AoE |cRXP_ENEMY_Elder Crag Coyotes|r. Loot them for their |cRXP_LOOT_Crag Coyote Fangs|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Giant Buzzards|r cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 9, stackable if batched)|r
.complete 2500,1 
.mob +Giant Buzzard
.collect 3404,4,703,1 
.mob +Giant Buzzard
.complete 2500,2 
.mob +Elder Crag Coyote
step
#requires SmallRock
.goto Badlands,25.95,44.87
>>Talk to |cRXP_FRIENDLY_Lotwil|r
.turnin 710 >> Turn in Study of the Elements: Rock
.accept 711 >> Accept Study of the Elements: Rock
.target Lotwil Veriatus
step
#completewith next
.goto Badlands,17.89,41.14,60,0
.goto Badlands,16.13,35.95,60 >>Travel toward the Rock Elementals
step
.goto Badlands,15.43,32.49,50,0
.goto Badlands,11.93,33.90
>>AoE |cRXP_ENEMY_Rock Elementals|r. Loot them for |cRXP_LOOT_Large Stone Slabs|r
.complete 711,1 
.mob Rock Elemental
step
#requires SmallRock
.goto Badlands,25.95,44.87
>>Talk to |cRXP_FRIENDLY_Lotwil|r
.turnin 711 >> Turn in Study of the Elements: Rock
.accept 712 >> Accept Study of the Elements: Rock
.target Lotwil Veriatus
step
#completewith Bracers
.line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
>>Split pull |cRXP_ENEMY_Boss Tho'grun|r from his guards. Kill him. Loot him for the |cRXP_LOOT_Sign of the Earth|r
>>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols counter-clockwise around the Middle/Western portions of Badlands|r
.complete 732,1 
.unitscan Boss Tho'grun
step
#completewith next
.goto Badlands,14.92,61.09,70,0
>>AoE |cRXP_ENEMY_Giant Buzzards|r. Loot them for their |cRXP_LOOT_Buzzard Gizzards|r and |cRXP_LOOT_Buzzard Wings|r
>>AoE |cRXP_ENEMY_Elder Crag Coyotes|r. Loot them for their |cRXP_LOOT_Crag Coyote Fangs|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Giant Buzzards|r cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 9, stackable if batched)|r
.complete 2500,1 
.mob +Giant Buzzard
.collect 3404,4,703,1 
.mob +Giant Buzzard
.complete 2500,2 
.mob +Elder Crag Coyote
step
#label Bracers
.goto Badlands,7.14,73.30,70 >>Travel toward the |cRXP_ENEMY_Greater Rock Elementals|r
.isOnQuest 712
step
#loop
.line Badlands,7.14,73.30,5.01,77.14,0.41,78.99,1.74,83.94,5.80,82.91,7.14,73.30
.goto Badlands,7.14,73.30,45,0
.goto Badlands,5.01,77.14,45,0
.goto Badlands,0.41,78.99,45,0
.goto Badlands,1.74,83.94,45,0
.goto Badlands,5.80,82.91,45,0
.goto Badlands,7.14,73.30,45,0
>>AoE |cRXP_ENEMY_Greater Rock Elementals|r. Loot them for |cRXP_LOOT_Bracers of Rock Binding|r
.complete 712,1 
.mob Greater Rock Elemental
step
#completewith next
.line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
>>Split pull |cRXP_ENEMY_Boss Tho'grun|r from his guards. Kill him. Loot him for the |cRXP_LOOT_Sign of the Earth|r
>>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols counter-clockwise around the Middle/Western portions of Badlands|r
.complete 732,1 
.unitscan Boss Tho'grun
step
.goto Badlands,13.78,75.31,50,0
.goto Badlands,9.59,81.59,50,0
.goto Badlands,7.80,73.95,50,0
#loop
.line Badlands,13.78,75.31,9.59,81.59,7.80,73.95,13.78,75.31
.goto Badlands,13.78,75.31,40,0
.goto Badlands,9.59,81.59,40,0
.goto Badlands,7.80,73.95,40,0
.goto Badlands,13.78,75.31,40,0
>>AoE |cRXP_ENEMY_Dustbelcher Wyrmhunters|r, |cRXP_ENEMY_Dustbelcher Maulers|r, and |cRXP_ENEMY_Dustbelcher Shamans|r. Loot them for |cRXP_LOOT_Scrap Metal|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Dustbelcher Wyrmhunters|r cast|r |T132324:0|t[Thrown] |cRXP_WARN_and|r |T132149:0|t[Net]|cRXP_WARN_, |cRXP_ENEMY_Dustbelcher Maulers|r cast|r |T132152:0|t[Thrash]|cRXP_WARN_, and |cRXP_ENEMY_Dustbelcher Shamans|r cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_and|r |T136052:0|t[Healing Wave]
.complete 733,1,6 
.mob Dustbelcher Wyrmhunter
.mob Dustbelcher Mauler
.mob Dustbelcher Shaman
step
#completewith Wings
.line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
.goto Badlands,17.47,77.30,70,0
.goto Badlands,21.77,75.72,70,0
>>Split pull |cRXP_ENEMY_Boss Tho'grun|r from his guards. Kill him. Loot him for the |cRXP_LOOT_Sign of the Earth|r
>>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols counter-clockwise around the Middle/Western portions of Badlands|r
.complete 732,1 
.unitscan Boss Tho'grun
step
.goto Badlands,14.92,61.09,50,0
.goto Badlands,17.16,58.96
>>AoE |cRXP_ENEMY_Giant Buzzards|r. Loot them for their |cRXP_LOOT_Buzzard Gizzards|r and |cRXP_LOOT_Buzzard Wings|r
>>AoE |cRXP_ENEMY_Elder Crag Coyotes|r. Loot them for their |cRXP_LOOT_Crag Coyote Fangs|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Giant Buzzards|r cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 9, stackable if batched)|r
.complete 2500,1 
.mob +Giant Buzzard
.collect 3404,4,703,1 
.mob +Giant Buzzard
.complete 2500,2 
.disablecheckbox
.mob Elder Crag Coyote
step
.goto Badlands,25.95,44.87
>>Talk to |cRXP_FRIENDLY_Lotwil|r
.turnin 712 >> Turn in Study of the Elements: Rock
.target Lotwil Veriatus
step
#completewith Wings
>>AoE |cRXP_ENEMY_Elder Crag Coyotes|r. Loot them for their |cRXP_LOOT_Crag Coyote Fangs|r
.complete 2500,2 
.mob Elder Crag Coyote
step
#completewith Wings
.goto Badlands,29.58,57.30,50,0
>>AoE |cRXP_ENEMY_Dustbelcher Brutes|r and |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for |cRXP_LOOT_Scrap Metal|r
.complete 733,1 
.mob Dustbelcher Brute
.mob Dustbelcher Ogre
step
#sticky
#label VendorR
.goto Badlands,42.47,52.50
>>Talk to |cRXP_FRIENDLY_Jazzrik|r
.vendor 9179 >> Vendor Trash. Repair
.target Jazzrik
step
#label Wings
.goto Badlands,42.39,52.93
>>Talk to |cRXP_FRIENDLY_Rigglefuzz|r
.accept 703 >> Accept Barbecued Buzzard Wings
.turnin 703 >> Turn in Barbecued Buzzard Wings
.target Rigglefuzz
step
#requires VendorR
#completewith Garek
>>AoE |cRXP_ENEMY_Feral Crag Coyotes|r and |cRXP_ENEMY_Crag Coyotes|r. Loot them for their |cRXP_LOOT_Crag Coyote Fangs|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Feral Crag Coyotes|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
.complete 2500,2 
.mob Feral Crag Coyote
.mob Crag Coyote
step
#requires VendorR
#completewith next
>>AoE |cRXP_ENEMY_Dustbelcher Brutes|r and |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for |cRXP_LOOT_Scrap Metal|r
.complete 733,1 
.mob Dustbelcher Brute
.mob Dustbelcher Ogre
step
#requires VendorR
.goto Badlands,45.44,51.70,70,0
.goto Badlands,48.53,53.02,70,0
.goto Badlands,54.73,58.52,70,0
.goto Badlands,61.89,67.68,70,0
.goto Badlands,51.70,73.52,70,0
.goto Badlands,43.61,72.61,70,0
.goto Badlands,39.75,72.36,70,0
.goto Badlands,36.37,71.63,70,0
.goto Badlands,32.13,74.04,70,0
.goto Badlands,25.39,73.02,70,0
.goto Badlands,21.83,78.10,70,0
.goto Badlands,14.51,79.15,70,0
.goto Badlands,12.85,77.42,70,0
.goto Badlands,12.51,72.73,70,0
.goto Badlands,16.05,64.35,70,0
.goto Badlands,19.50,57.77,70,0
.goto Badlands,28.17,56.44,70,0
.goto Badlands,35.35,56.99,70,0
.goto Badlands,41.01,54.95,70,0
#loop
.line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
.goto Badlands,36.37,71.63,50,0
.goto Badlands,39.75,72.36,50,0
.goto Badlands,43.61,72.61,50,0
.goto Badlands,51.70,73.52,50,0
.goto Badlands,61.89,67.68,50,0
.goto Badlands,54.73,58.52,50,0
.goto Badlands,48.53,53.02,50,0
.goto Badlands,45.44,51.70,50,0
.goto Badlands,41.01,54.95,50,0
.goto Badlands,35.35,56.99,50,0
.goto Badlands,28.17,56.44,50,0
.goto Badlands,19.50,57.77,50,0
.goto Badlands,16.05,64.35,50,0
.goto Badlands,12.51,72.73,50,0
.goto Badlands,12.85,77.42,50,0
.goto Badlands,14.51,79.15,50,0
.goto Badlands,21.83,78.10,50,0
.goto Badlands,25.39,73.02,50,0
.goto Badlands,32.13,74.04,50,0
.goto Badlands,36.37,71.63,50,0
>>Split pull |cRXP_ENEMY_Boss Tho'grun|r from his guards. Kill him. Loot him for the |cRXP_LOOT_Sign of the Earth|r
>>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols counter-clockwise around the Middle/Western portions of Badlands|r
.complete 732,1 
.unitscan Boss Tho'grun
step
#requires VendorR
.goto Badlands,62.57,69.55
>>AoE |cRXP_ENEMY_Dustbelcher Brutes|r and |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for |cRXP_LOOT_Scrap Metal|r
.complete 733,1 
.mob Dustbelcher Brute
.mob Dustbelcher Ogre
step
#requires VendorR
#label Garek
.goto Badlands,61.94,54.27
>>Talk to |cRXP_FRIENDLY_Garek|r
.turnin 732 >> Turn in Tremors of the Earth
.target Garek
step
#loop
.line Badlands,60.64,55.98,59.62,50.58,56.97,48.96,53.18,52.58,52.07,59.51,54.86,64.55,57.14,69.16,60.77,71.24,61.67,65.55,60.64,55.98
.goto Badlands,60.64,55.98,50,0
.goto Badlands,59.62,50.58,50,0
.goto Badlands,56.97,48.96,50,0
.goto Badlands,53.18,52.58,50,0
.goto Badlands,52.07,59.51,50,0
.goto Badlands,54.86,64.55,50,0
.goto Badlands,57.14,69.16,50,0
.goto Badlands,60.77,71.24,50,0
.goto Badlands,61.67,65.55,50,0
.goto Badlands,60.64,55.98,50,0
>>AoE |cRXP_ENEMY_Feral Crag Coyotes|r and |cRXP_ENEMY_Crag Coyotes|r. Loot them for their |cRXP_LOOT_Crag Coyote Fangs|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Feral Crag Coyotes|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
.complete 2500,2 
.mob Feral Crag Coyote
.mob Crag Coyote
step
.goto Badlands,53.80,43.31
>>Talk to |cRXP_FRIENDLY_Sigrun|r
.turnin 733,1 >> Turn in Scrounging
.target Sigrun Ironhew
step
#completewith next
.goto Badlands,51.56,16.72,60,0
.goto Loch Modan,47.33,77.17,60,0
.goto Loch Modan,65.94,65.62,20 >>Travel toward |cRXP_FRIENDLY_Ironband|r
step
.goto Loch Modan,65.94,65.62
>>Talk to |cRXP_FRIENDLY_Ironband|r
.turnin 739 >> Turn in Find Agmond
.target Prospector Ironband
step
#completewith next
.goto Loch Modan,51.91,68.00,50,0
.goto Loch Modan,49.35,67.36,50,0
.goto Loch Modan,46.14,63.53,50,0
.goto Loch Modan,37.07,49.38,10 >>Travel toward |cRXP_FRIENDLY_Ghak|r
step
.goto Loch Modan,37.07,49.38
>>Talk to |cRXP_FRIENDLY_Ghak|r
.turnin 2500 >> Turn in Badlands Reagent Run
.target Ghak Healtouch
step << Human
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step << Human
.goto Elwynn Forest,32.27,49.70
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132261:0|t[Horse Bridle] |cRXP_WARN_(90 Gold)|r
.zone Elwynn Forest >> Exit Stormwind
.skill riding,75,1
step << Human
.goto Elwynn Forest,84.16,65.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katie|r
>>Vendor Trash
+|cRXP_BUY_Buy any|r |T132261:0|t[Horse Bridle] |cRXP_BUY_that you like from her|r
.target Katie Hunter
.itemcount 2414,<1 
.itemcount 5655,<1 
.itemcount 5656,<1 
.zoneskip Elwynn Forest,1
step << Human
.goto Elwynn Forest,84.32,64.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal|r
.skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
.target Randal Hunter
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Pinto Bridle|r] to learn it
.use 2414
.itemcount 2414,1
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Chestnut Mare Bridle|r] to learn it
.use 5655
.itemcount 5655,1
.zoneskip Elwynn Forest,1
step << skip
.cast 55884 >> Use the |T132261:0|t[|cRXP_WARN_Brown Horse Bridle|r] to learn it
.use 5656
.itemcount 5656,1
.zoneskip Elwynn Forest,1
step << Gnome
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step << Gnome skip
.goto Ironforge,25.30,10.97
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold)|r
.zone Dun Morogh >> |cRXP_WARN_Jump up onto the pillar above |cRXP_FRIENDLY_Toldren|r. Logout skip to Dun Morogh|r
.skill riding,75,1
step << Gnome
#completewith next
.goto Ironforge,15.16,85.70,20,0
.goto Dun Morogh,49.12,47.95
>>|cRXP_WARN_Skip this step if you DONT have enough money after vendoring for your|r |T132247:0|t[Mechanostrider] |cRXP_WARN_(90 Gold)|r
.zone Dun Morogh >> Exit Ironforge
step << Gnome
.goto Dun Morogh,49.12,47.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milli|r
>>Vendor Trash
+|cRXP_BUY_Buy any|r |T132247:0|t[Mechanostrider] |cRXP_BUY_that you like from her|r
.target Milli Featherwhistle
.itemcount 8563,<1 
.itemcount 8595,<1 
.itemcount 13321,<1 
.itemcount 13322,<1 
.zoneskip Dun Morogh,1
step << Gnome
.goto Dun Morogh,49.14,48.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy|r
.skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
.target Binjy Featherwhistle
.zoneskip Dun Morogh,1
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Fireball r8, Arcane Intellect r4, Cone of Cold r3, Conjure Food r5)
.target Dink
.istrained 10156 
step
.goto Ironforge,31.32,27.80
>>Talk to |cRXP_FRIENDLY_Ginny|r inside
>>|cRXP_BUY_Buy eight|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from her|r
.collect 17031,8 
.target Ginny Longberry
]]);
