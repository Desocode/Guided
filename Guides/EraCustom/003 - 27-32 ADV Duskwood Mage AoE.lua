RXPGuides.RegisterGuide([[
#version 23
#defaultfor Alliance Mage
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 27-32 ADV Duskwood Mage AoE
#next 32-33 ADV Hillsbrad Mage AoE
step
#completewith next
.goto Stormwind City,57.10,61.48,30,0
.goto Stormwind City,58.30,59.39,30,0
.goto Stormwind City,63.42,63.75,20,0
.goto Stormwind City,63.14,65.25,15,0
.goto Stormwind City,66.27,62.12,10 >>Travel toward |cRXP_FRIENDLY_Dungar|r
step
#completewith next
.goto Stormwind City,66.27,62.12
>>Talk to |cRXP_FRIENDLY_Dungar|r
.fly Duskwood >> Fly to Darkshire
.target Dungar Longdrink
.zoneskip Westfall
.zoneskip Duskwood
step
.goto Duskwood,81.77,59.37
>>Talk to |cRXP_FRIENDLY_Mary|r
.turnin 149 >>Turn in Ghost Hair Thread
.accept 154 >>Accept Return the Comb
.target Blind Mary
step
#completewith Mages
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
#sticky
#label Insane
.goto Duskwood,80.36,71.13,12,0
#loop
.line Duskwood,80.55,69.45,78.53,73.13,77.19,69.96,78.78,68.02
.goto Duskwood,80.55,69.45,35,0
.goto Duskwood,78.53,73.13,35,0
.goto Duskwood,77.19,69.96,35,0
.goto Duskwood,78.78,68.02,35,0
>>AoE the |cRXP_ENEMY_Insane Ghoul|r. Loot it for |cRXP_LOOT_Mary's Looking Glass|r
.complete 177,1 
.mob Insane Ghoul
.isQuestTurnedIn 174
step
#label Mages
.goto Duskwood,79.22,70.97
#loop
.line Duskwood,80.55,69.45,78.53,73.13,77.19,69.96,78.78,68.02
.goto Duskwood,80.55,69.45,35,0
.goto Duskwood,78.53,73.13,35,0
.goto Duskwood,77.19,69.96,35,0
.goto Duskwood,78.78,68.02,35,0
>>AoE |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
>>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Skeletal Mages|r cast|r |T135846:0|t[Frostbolt]|cRXP_WARN_. Cast|r |T135850:0|t[Frost Ward]|cRXP_WARN_ and|r |T135856:0|t[Counterspell] |cRXP_WARN_to AoE them|r
.complete 56,1 
.mob +Skeletal Warrior
.complete 56,2 
.mob +Skeletal Mage
step
#requires Insane
.goto Duskwood,79.80,48.01
>>Talk to |cRXP_FRIENDLY_Viktori|r
.turnin 177 >>Turn in Look To The Stars
.accept 181 >>Accept Look To The Stars
.target Viktori Prism'Antras
.isQuestTurnedIn 174
step
.goto Duskwood,75.83,45.30
>>Talk to |cRXP_FRIENDLY_Eva|r inside
.turnin 154 >>Turn in Return the Comb
.accept 157 >>Accept Deliver the Thread
.target Madame Eva
step
.goto Duskwood,73.57,46.85
>>Talk to |cRXP_FRIENDLY_Althea|r
.turnin 56 >>Turn in The Night Watch
.accept 57 >>Accept The Night Watch
.target Commander Althea Ebonlocke
step
#completewith Weaver
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
#completewith next
.goto Duskwood,72.43,45.87,30,0
.goto Duskwood,70.68,45.66,20,0
.goto Duskwood,68.46,44.97,45 >>Run up the ramp toward the |cRXP_ENEMY_Nightbane Shadow Weavers|r
step
#label Weaver
.goto Duskwood,63.50,40.71,60,0
.goto Duskwood,58.93,50.51,60,0
.goto Duskwood,66.00,46.42,60,0
.goto Duskwood,63.50,40.71,60,0
.goto Duskwood,58.93,50.51,60,0
.goto Duskwood,66.00,46.42
>>Kill |cRXP_ENEMY_Nightbane Shadow Weavers|r
>>|cRXP_WARN_Be careful as they cast|r |T136197:0|t[Shadow Bolt]
.complete 173,1 
.mob Nightbane Shadow Weaver
step
#completewith SvenDirt
.goto Duskwood,60.65,59.05,60,0
.goto Duskwood,56.12,58.11,60,0
.goto Duskwood,52.09,60.53,60,0
.goto Duskwood,53.33,65.92,60,0
>>AoE |cRXP_ENEMY_Black Ravager Mastiffs|r and |cRXP_ENEMY_Young Black Ravagers|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
.collect 1015,10,90,1 
.mob Black Ravager Mastiff
.mob Young Black Ravager
step
#completewith next
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
#label SvenDirt
.goto Duskwood,49.85,77.71
>>Click the |cRXP_PICK_Mound of loose dirt|r
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_Be careful of |cRXP_ENEMY_Defias Night Blades|r as they cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds) and|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind)|r
.turnin 95 >>Turn in Sven's Revenge
.accept 230 >>Accept Sven's Camp
step
.goto Duskwood,36.18,57.25,60,0
.goto Duskwood,32.70,51.26,60,0
.goto Duskwood,32.33,34.01
>>AoE |cRXP_ENEMY_Black Widow Hatchlings|r. Loot them for their |cRXP_LOOT_Vials of Spider Venom|r, |cRXP_LOOT_Pristine Spider Silk|r, and |cRXP_LOOT_Gooey Spider Legs|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Black Widow Hatchlings|r cast|r |T136127:0|t[Infected Bite] |cRXP_WARN_(deals 13 damage every 10 seconds and increases physical damage taken by 5 for 3 minutes) and|r |T136016:0|t[Poison] |cRXP_WARN_(deals 13-14 damage every 3 seconds for 30 seconds)|r
.collect 2251,6,93,1 
.complete 101,2 
.disablecheckbox
.complete 1940,1 
.disablecheckbox
.mob Black Widow Hatchling
step
.goto Duskwood,28.11,31.46
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 157 >>Turn in Deliver the Thread
.accept 158 >>Accept Zombie Juice
.target Abercrombie
step
#completewith next
.goto Duskwood,25.49,33.90,60,0
.goto Duskwood,24.79,38.96,60,0
.goto Duskwood,21.86,38.64,60,0
.goto Duskwood,21.78,33.55,60,0
>>AoE |cRXP_ENEMY_Plague Spreaders|r, |cRXP_ENEMY_Bone Chewers|r, and |cRXP_ENEMY_Rotted Ones|r en route to |cRXP_FRIENDLY_Sven|r. Loot them for their |cRXP_LOOT_Ghoul Fangs|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Rotted Ones|r have |cRXP_ENEMY_Flesh Eating Worms|r spawn after killing them (1 health, dies to AoE damage)|r
>>|cRXP_WARN_Avoid the |cRXP_ENEMY_Carrion Recluse|r as it casts|r |T132274:0|t[Paralyzing Poison] |cRXP_WARN_(Stuns you for 8 seconds)|r
.complete 101,1 
.mob Plague Spreader
.mob Bone Chewer
.mob Rotted One
step
>>Talk to |cRXP_FRIENDLY_Lars and Sven|r
.turnin 226 >> Turn in Wolves at Our Heels
.target +Lars
.goto Duskwood,7.70,33.29
.turnin 230 >>Turn in Sven's Camp
.accept 262 >>Accept The Shadowy Figure
.goto Duskwood,7.78,34.07
.target +Sven Yorgen
step
#completewith next
.goto Duskwood,15.05,44.56,70,0
>>AoE |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Skeleton Fingers|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Skeletal Fiends|r cast|r |T136224:0|t[Fiend Fury] |cRXP_WARN_A(Increases damage dealt by 45)|r
.complete 57,1 
.mob +Skeletal Fiend
.complete 57,2 
.mob +Skeletal Horror
.complete 101,3 
.mob +Skeletal Fiend
.mob +Skeletal Horror
.mob *Grave Robber
step
.goto Duskwood,18.14,56.47
>>Talk to |cRXP_FRIENDLY_Jitters|r
.turnin 163 >>Turn in Raven Hill
.accept 5 >>Accept Jitters' Growling Gut
.target Jitters
step
#completewith next
.goto Westfall,42.11,66.96,20,0
.goto Westfall,41.90,67.21,10,0
.goto Westfall,41.71,67.52,10 >>Go inside the Moonbrook Schoolhouse
step
.goto Westfall,41.51,66.72
>>Click the |cRXP_PICK_Old Footlocker|r on the ground
>>|cRXP_WARN_This will spawn a |cRXP_ENEMY_Forlon Spirit|r. Get ready to run back outside|r
.turnin 67 >>Turn in The Legend of Stalvan
.accept 68 >>Accept The Legend of Stalvan
step
#completewith Eva2
.goto Westfall,41.51,66.72
>>|cRXP_WARN_Jump on top of the chariot outside to evade the|r |cRXP_ENEMY_Forlon Spirit|r
.hs >> Hearth to Darkshire
step
.goto Duskwood,73.88,44.41
>>Talk to |cRXP_FRIENDLY_Trelayne|r
>>|cRXP_BUY_Buy some|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from her if needed|r
.collect 1708,60,262,1 
.target Innkeeper Trelayne
step
.goto Duskwood,73.84,43.21
>>Talk to |cRXP_FRIENDLY_Grual|r in the room behind |cRXP_FRIENDLY_Trelayne|r
.turnin 5 >>Turn in Jitters' Growling Gut
.accept 93 >> Accept Dusty Crab Cakes
.turnin 93 >> Turn in Dusty Crab Cakes
.accept 240 >> Accept Return to Jitters
.accept 90 >> Accept Seasoned Wolf Kabobs
.turnin 90 >> Turn in Seasoned Wolf Kabobs
.target Chef Grual
.itemcount 1015,10 
step
.goto Duskwood,73.84,43.21
>>Talk to |cRXP_FRIENDLY_Grual|r in the room behind |cRXP_FRIENDLY_Trelayne|r
.turnin 5 >>Turn in Jitters' Growling Gut
.accept 93 >> Accept Dusty Crab Cakes
.turnin 93 >> Turn in Dusty Crab Cakes
.accept 240 >> Accept Return to Jitters
.target Chef Grual
step
#completewith Eva2
>>Talk to |cRXP_FRIENDLY_Smitts|r
.turnin 158 >>Turn in Zombie Juice
.accept 156 >>Accept Gather Rot Blossoms
.target Tavernkeep Smitts
step
#sticky
#label Alyssa
.goto Duskwood,76.23,45.26,0,0
>>Talk to |cRXP_FRIENDLY_Alyssa|r inside
>>|cRXP_BUY_Buy four|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from her|r
.collect 17031,4 
.target Alyssa Eva
step
#label Eva2
.goto Duskwood,75.83,45.30
>>Talk to |cRXP_FRIENDLY_Eva|r inside
.turnin 262 >>Turn in The Shadowy Figure
.accept 265 >>Accept The Shadowy Search Continues
.target Madame Eva
step
#requires Alyssa
.goto Duskwood,75.76,47.56,12,0
.goto Duskwood,75.30,48.04
>>Talk to |cRXP_FRIENDLY_Calor|r
.turnin 173 >>Turn in Worgen in the Woods
.accept 221 >>Accept Worgen in the Woods
.target Calor
step
>>Talk to |cRXP_FRIENDLY_Althea|r and |cRXP_FRIENDLY_Daltry|r
.turnin 57 >>Turn in The Night Watch
.accept 58 >>Accept The Night Watch
.target +Commander Althea Ebonlocke
.goto Duskwood,73.57,46.85
.turnin 68 >>Turn in The Legend of Stalvan
.accept 69 >>Accept The Legend of Stalvan
.turnin 265 >>Turn in The Shadowy Search Continues
.accept 266 >>Accept Inquire at the Inn
.goto Duskwood,72.53,46.85
.target +Clerk Daltry
.isQuestComplete 57
step
.goto Duskwood,72.52,46.85
>>Talk to |cRXP_FRIENDLY_Daltry|r
.turnin 68 >>Turn in The Legend of Stalvan
.accept 69 >>Accept The Legend of Stalvan
.turnin 265 >>Turn in The Shadowy Search Continues
.accept 266 >>Accept Inquire at the Inn
.target Clerk Daltry
step
.goto Duskwood,74.09,44.71
>>Talk to |cRXP_FRIENDLY_Smitts|r
.turnin 266 >>Turn in Inquire at the Inn
.accept 453 >>Accept Finding the Shadowy Figure
.turnin 158 >>Turn in Zombie Juice
.accept 156 >>Accept Gather Rot Blossoms
.target Tavernkeep Smitts
step
#completewith JittersEnd
.goto Duskwood,60.65,59.05,60,0
.goto Duskwood,56.12,58.11,60,0
.goto Duskwood,52.09,60.53,60,0
.goto Duskwood,53.33,65.92,60,0
>>AoE |cRXP_ENEMY_Black Ravager Mastiffs|r and |cRXP_ENEMY_Young Black Ravagers|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
.collect 1015,10,90,1 
.mob Black Ravager Mastiff
.mob Young Black Ravager
step
.goto Duskwood,36.18,57.25,60,0
.goto Duskwood,32.70,51.26,60,0
.goto Duskwood,32.33,34.01
>>AoE |cRXP_ENEMY_Black Widow Hatchlings|r. Loot them for their |cRXP_LOOT_Vials of Spider Venom|r, |cRXP_LOOT_Pristine Spider Silk|r, and |cRXP_LOOT_Gooey Spider Legs|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Black Widow Hatchlings|r cast|r |T136127:0|t[Infected Bite] |cRXP_WARN_(deals 13 damage every 10 seconds and increases physical damage taken by 5 for 3 minutes) and|r |T136016:0|t[Poison] |cRXP_WARN_(deals 13-14 damage every 3 seconds for 30 seconds)|r
.complete 101,2, 
.complete 1940,1 
.mob Black Widow Hatchling
step
#label JittersEnd
.goto Duskwood,18.14,56.47
>>Talk to |cRXP_FRIENDLY_Jitters|r
.turnin 240 >>Turn in Return to Jitters
.turnin 453 >>Turn in Finding the Shadowy Figure
.accept 268 >>Accept Return to Sven
.target Jitters
step
#completewith Grind28
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
#completewith next
.goto Duskwood,15.05,44.56,70,0
>>AoE |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Skeleton Fingers|r and |cRXP_LOOT_Rot Blossoms|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Skeletal Fiends|r cast|r |T136224:0|t[Fiend Fury] |cRXP_WARN_A(Increases damage dealt by 45)|r
.complete 57,1 
.mob +Skeletal Fiend
.complete 57,2 
.mob +Skeletal Horror
.complete 101,3 
.mob +Skeletal Fiend
.mob +Skeletal Horror
.complete 156,1 
.mob +Skeletal Fiend
.mob +Skeletal Horror
.mob *Grave Robber
step
.goto Duskwood,7.78,34.07
>>Talk to |cRXP_FRIENDLY_Sven|r
.turnin 268 >>Turn in Return to Sven
.accept 323 >>Accept Proving Your Worth
.target Sven Yorgen
step
#completewith next
.goto Duskwood,15.29,38.60,40,0
>>AoE |cRXP_ENEMY_Skeletal Raiders|r
>>|cRXP_WARN_Be careful as they cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds)|r
.complete 323,1 
.mob Skeletal Raider
.unitscan Mor'Ladim
step
.goto Duskwood,14.63,42.15,60,0
.goto Duskwood,14.80,47.56,60,0
.goto Duskwood,17.85,47.48,60,0
.goto Duskwood,22.34,47.77,60,0
.goto Duskwood,22.50,43.34,60,0
.goto Duskwood,24.12,41.82,60,0
.goto Duskwood,23.00,40.36,60,0
#loop
.line Duskwood,14.63,42.15,14.80,47.56,17.85,47.48,22.34,47.77,22.50,43.34,24.12,41.82,23.00,40.36,15.29,38.60,14.63,42.15
.goto Duskwood,14.63,42.15,50,0
.goto Duskwood,14.80,47.56,50,0
.goto Duskwood,17.85,47.48,50,0
.goto Duskwood,22.34,47.77,50,0
.goto Duskwood,22.50,43.34,50,0
.goto Duskwood,24.12,41.82,50,0
.goto Duskwood,23.00,40.36,50,0
.goto Duskwood,15.29,38.60,50,0
.goto Duskwood,14.63,42.15,50,0
>>AoE |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Skeleton Fingers|r and |cRXP_LOOT_Rot Blossoms|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Skeletal Fiends|r cast|r |T136224:0|t[Fiend Fury] |cRXP_WARN_(Increases damage dealt by 45)|r
>>AoE nearby |cRXP_ENEMY_Ghouls|r whilst waiting for respawns if needed
.complete 57,1 
.mob +Skeletal Fiend
.complete 57,2 
.mob +Skeletal Horror
.complete 101,3 
.mob +Skeletal Fiend
.mob +Skeletal Horror
.complete 156,1 
.mob +Skeletal Fiend
.mob +Skeletal Horror
.mob *Grave Robber
step
#completewith next
.goto Duskwood,15.96,38.70,30 >>Enter the Dawning Wood Catacombs
.isOnQuest 323
step
.goto Duskwood,15.53,37.03,15,0
.goto Duskwood,16.17,33.24
>>AoE |cRXP_ENEMY_Skeletal Raiders|r and |cRXP_ENEMY_Skeletal Warders|r
>>Kill |cRXP_ENEMY_Skeletal Healers|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Skeletal Raiders|r cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds),|r |cRXP_ENEMY_Skeletal Warders|r |cRXP_WARN_cast|r |T135824:0|t[Quick Flame Ward] |cRXP_WARN_and|r |T135850:0|t[Quick Frost Ward] |cRXP_WARN_(Makes them immune to Fire/Frost for 10 seconds, NOT INTERRUPTABLE WITH|r |T135856:0|t[Counterspell]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Healers|r who cast|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(deals about 90 damage) and|r |T135916:0|t[Heal] |cRXP_WARN_(heals to full)|r
.complete 323,1,1 
.mob +Skeletal Raider
.complete 323,2 
.mob +Skeletal Healer
.complete 323,3 
.mob +Skeletal Warder
.unitscan Mor'Ladim
step
#completewith next
.goto Duskwood,15.96,38.70,20 >>Exit the Dawning Wood Catacombs
.isOnQuest 323
step
#loop
.line Duskwood,15.24,38.44,16.44,32.93,18.15,32.85,17.64,34.80,16.01,39.52,15.24,38.44
.goto Duskwood,15.24,38.44,40,0
.goto Duskwood,16.44,32.93,40,0
.goto Duskwood,18.15,32.85,40,0
.goto Duskwood,17.64,34.80,40,0
.goto Duskwood,16.01,39.52,40,0
.goto Duskwood,15.24,38.44,40,0
>>AoE |cRXP_ENEMY_Skeletal Raiders|r outside the Catacombs and outside |cRXP_ENEMY_Morbent Fel|r's house
>>|cRXP_WARN_Be careful as they cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds)|r
.complete 323,1 
.mob Skeletal Raider
.unitscan Mor'Ladim
step
#label Grind28
#loop
.line Duskwood,16.22,33.10,18.08,32.80,22.00,38.06,21.90,33.64,25.41,33.74,24.54,38.96,23.36,40.81,24.26,42.50,22.82,46.67,22.05,48.24,20.48,47.26,17.72,47.85,14.63,47.82,14.41,41.75,16.22,33.10
.goto Duskwood,16.22,33.10,40,0
.goto Duskwood,18.08,32.80,40,0
.goto Duskwood,22.00,38.06,40,0
.goto Duskwood,21.90,33.64,40,0
.goto Duskwood,25.41,33.74,40,0
.goto Duskwood,24.54,38.96,40,0
.goto Duskwood,23.36,40.81,40,0
.goto Duskwood,24.26,42.50,40,0
.goto Duskwood,22.82,46.67,40,0
.goto Duskwood,22.05,48.24,40,0
.goto Duskwood,20.48,47.26,40,0
.goto Duskwood,17.72,47.85,40,0
.goto Duskwood,14.63,47.82,40,0
.goto Duskwood,14.41,41.75,40,0
.goto Duskwood,16.22,33.10,40,0
.xp 27+36025 >> Grind to 36025+/38900xp
step
.goto Duskwood,7.78,34.07
>>Talk to |cRXP_FRIENDLY_Sven|r
.turnin 323 >>Turn in Proving Your Worth
.accept 269 >>Accept Seeking Wisdom
.target Sven Yorgen
step
.goto Duskwood,17.73,29.06
>>Click |cRXP_PICK_A Weathered Grave|r
.accept 225 >>Accept The Weathered Grave
.xp <28,1
step
#completewith next
.goto Elwynn Forest,42.98,65.66,12 >>Travel toward |cRXP_FRIENDLY_Farley|r
step
.goto Elwynn Forest,43.77,65.80
>>Talk to |cRXP_FRIENDLY_Farley|r inside
.turnin 69 >>Turn in The Legend of Stalvan
.accept 70 >>Accept The Legend of Stalvan
.target Innkeeper Farley
step
#completewith next
.goto Elwynn Forest,43.74,66.42,8,0
.goto Elwynn Forest,43.62,65.98,6,0
.goto Elwynn Forest,43.98,65.76,6,0
.goto Elwynn Forest,44.30,65.83,8 >>Go upstairs toward the |cRXP_PICK_Storage Chest|r
step
.goto Elwynn Forest,44.30,65.83
>>Open the |cRXP_PICK_Storage Chest|r. Loot it for |cRXP_LOOT_An Undelivered Letter|r
>>|cRXP_WARN_This has a 5 second cast time|r
.complete 70,1 
step
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step
.goto Stormwind City,38.62,79.30
>>Talk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells (Arcane Intellect r3, Blizzard r2, Conjure Mana Agate, Mana Shield r2)
.target Jennea Cannon
step
#completewith next
.goto Stormwind City,36.30,82.90,6 >>Go through the green portal
step
#completewith next
.goto Stormwind City,41.72,77.37,10,0
.goto Stormwind City,41.57,76.34,10 >>Travel toward |cRXP_FRIENDLY_Wynne|r
step
.goto Stormwind City,41.57,76.34
>>Talk to |cRXP_FRIENDLY_Wynne|r
>>|cRXP_WARN_Wait out the RP|r
.turnin 1940 >>Turn in Pristine Spider Silk
.timer 26,Pristine Spider Silk RP
.turnin 1942,2 >>Turn in Astral Knot Garment
.target Wynne Larson
step
#completewith next
+Equip the |T135015:0|t[Astral Knot Blouse]
.use 9516
.itemcount 9516,1
.itemStat 5,LEVEL,<31
step
>>Talk to |cRXP_FRIENDLY_Folsom|r. Click the |cRXP_PICK_Sealed Crate|r
>>|cRXP_WARN_This will spawn a |cRXP_ENEMY_Forlon Spirit|r. Get ready to run away from it|r
.turnin 70 >>Turn in The Legend of Stalvan
.accept 72 >>Accept The Legend of Stalvan
.goto Stormwind City,29.52,61.93
.turnin 72 >>Turn in The Legend of Stalvan
.accept 74 >>Accept The Legend of Stalvan
.goto Stormwind City,29.44,61.51
.target Caretaker Folsom
step
.goto Stormwind City,41.57,65.46
>>Enter the building
>>Talk to |cRXP_FRIENDLY_Adair|r
.vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
.target Adair Gilroy
step
#completewith next
.goto Stormwind City,37.84,58.50,5,0
.goto Stormwind City,37.81,45.02,20 >>Run up the edge of the wall instead of going around
step
#completewith Farthing
.goto Stormwind City,42.88,34.33,15,0
>>Go into the Stormwind Cathedral
.goto Stormwind City,39.10,27.85,20 >>Travel toward |cRXP_FRIENDLY_Farthing|r
step
#completewith next
>>Talk to |cRXP_FRIENDLY_Thomas|r
.accept 1274 >>Accept The Missing Diplomat
.target Thomas
step
#label Farthing
.goto Stormwind City,39.10,27.85
>>Talk to |cRXP_FRIENDLY_Farthing|r
.turnin 269 >>Turn in Seeking Wisdom
.accept 270 >>Accept The Doomed Fleet
.target Bishop Farthing
step
.goto Stormwind City,39.02,26.06,8,0
.goto Stormwind City,41.43,30.94
>>Talk to |cRXP_FRIENDLY_Thomas|r
.accept 1274 >>Accept The Missing Diplomat
.target Thomas
step
#completewith next
.goto Stormwind City,44.04,35.52,15,0
.goto Stormwind City,47.84,34.07,15,0
.goto Stormwind City,49.94,34.29,15,0
.goto Stormwind City,52.23,31.51,15,0
.goto Stormwind City,52.00,28.44,15,0
.goto Stormwind City,54.67,27.39,20,0
.goto Stormwind City,58.30,32.93,15,0
.goto Stormwind City,68.89,28.58,15,0
.goto Stormwind City,77.36,19.63,15,0
>>Go into the Stormwind Keep
.goto Stormwind City,78.34,25.48,20 >>Travel toward |cRXP_FRIENDLY_DeLavey|r
step
.goto Stormwind City,78.34,25.48
>>Talk to |cRXP_FRIENDLY_DeLavey|r
.turnin 1274 >>Turn in The Missing Diplomat
.accept 1241 >>Accept The Missing Diplomat
.target Bishop DeLavey
step
#completewith next
.goto Stormwind City,77.36,19.63,15,0
.goto Stormwind City,72.81,22.71,15,0
.goto Stormwind City,69.72,16.66,15,0
.goto Stormwind City,70.39,11.38,15,0
>>Go into the Stormwind Library
.goto Stormwind City,74.18,7.46,20 >>Travel toward |cRXP_FRIENDLY_Milton|r
step
.goto Stormwind City,74.18,7.46
>>Talk to |cRXP_FRIENDLY_Milton|r
.turnin 337 >>Turn in An Old History Book
.accept 538 >>Accept Southshore
.target Milton Sheaf
.isOnQuest 337
step
.goto Stormwind City,74.18,7.46
>>Talk to |cRXP_FRIENDLY_Milton|r
.accept 538 >>Accept Southshore
.target Milton Sheaf
.isQuestTurnedIn 337
step
#completewith next
.goto Stormwind City,69.23,29.03,20,0
.goto Stormwind City,61.70,42.34,20,0
.goto Stormwind City,57.81,54.96,20,0
.goto Stormwind City,63.39,63.63,20,0
.goto Stormwind City,63.13,65.24,15,0
.goto Stormwind City,65.93,65.47,20,0
.goto Stormwind City,73.17,78.42,20 >>Travel toward |cRXP_FRIENDLY_Jorgen|r
step
.goto Stormwind City,73.17,78.42
>>Talk to |cRXP_FRIENDLY_Jorgen|r
.turnin 1241 >>Turn in The Missing Diplomat
.accept 1242 >>Accept The Missing Diplomat
.target Jorgen
step
#completewith next
.goto Stormwind City,69.21,83.11,20,0
.goto Stormwind City,65.20,75.36,20,0
.goto Stormwind City,64.96,71.61,20,0
.goto Stormwind City,64.42,71.39,20,0
.goto Stormwind City,59.90,64.18,15 >>Travel toward |cRXP_FRIENDLY_Elling|r
step
.goto Stormwind City,59.90,64.18
>>Talk to |cRXP_FRIENDLY_Elling|r
>>|cRXP_WARN_Jump up from the doorway whilst spamming your "Interact with Target" keybind|r
.turnin 1242 >>Turn in The Missing Diplomat
.accept 1243 >>Accept The Missing Diplomat
.target Elling Trias
step
#completewith RotB
.goto Stormwind City,57.10,61.48,30,0
.goto Stormwind City,58.30,59.39,30,0
.goto Stormwind City,63.42,63.75,20,0
.goto Stormwind City,63.14,65.25,15,0
.goto Stormwind City,66.27,62.12,10 >>Travel toward |cRXP_FRIENDLY_Dungar|r
.cooldown item,6948,<0
step
#completewith RotB
.goto Stormwind City,66.27,62.12
>>Talk to |cRXP_FRIENDLY_Dungar|r
.fly Darkshire >> Fly to Darkshire
.target Dungar Longdrink
.zoneskip Westfall
.zoneskip Duskwood
.cooldown item,6948,<0
step
#completewith RotB
.hs >> Hearth to Darkshire
>>If you see this, you're currently slow - you should have around 20 minutes left on your hearthstone (assuming no competition)
.cooldown item,6948,>0
step << skip
#completewith next
.goto Duskwood,74.08,44.83
.vendor >> Buy 3 8 slot bags from Mabel Solaj if needed
step
#label RotB
.line Duskwood,74.80,44.11,74.73,43.54,74.44,40.93,73.93,39.69,72.57,38.50,72.17,37.19,72.20,35.12,72.57,33.67,73.30,32.55
.goto Duskwood,74.80,44.11,40,0
.goto Duskwood,74.73,43.54,40,0
.goto Duskwood,74.44,40.93,40,0
.goto Duskwood,73.93,39.69,40,0
.goto Duskwood,72.57,38.50,40,0
.goto Duskwood,72.17,37.19,40,0
.goto Duskwood,72.20,35.12,40,0
.goto Duskwood,72.57,33.67,40,0
.goto Duskwood,73.30,32.55
>>Talk to |cRXP_FRIENDLY_Backus|r
>>|cRXP_FRIENDLY_Backus|r |cRXP_WARN_patrols the path north of Darkshire|r
.turnin 1243 >>Turn in The Missing Diplomat
.accept 1244 >>Accept The Missing Diplomat
.target Watcher Backus
step
#completewith next
+|cRXP_WARN_Remember to use|r |T135736:0|t[Blink] |cRXP_WARN_on cooldown|r
step
#label Haggard
.goto Elwynn Forest,84.61,69.37
>>Talk to |cRXP_FRIENDLY_Haggard|r
.turnin 74 >>Turn in The Legend of Stalvan
.accept 75 >>Accept The Legend of Stalvan
.target Marshal Haggard
step
.goto Elwynn Forest,85.13,69.69,12,0
.goto Elwynn Forest,85.20,69.15,8,0
.goto Elwynn Forest,85.70,69.54
>>Go inside the house, then upstairs
>>Open |cRXP_PICK_Marshal Haggard's Chest|r. Loot it for |cRXP_LOOT_A Faded Journal Page|r
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_This will spawn a |cRXP_ENEMY_Forlon Spirit|r. Get ready to run back outside|r
.complete 75,1 
step
.goto Elwynn Forest,84.61,69.37
>>Talk to |cRXP_FRIENDLY_Haggard|r
.turnin 75 >>Turn in The Legend of Stalvan
.accept 78 >>Accept The Legend of Stalvan
.target Marshal Haggard
step
#completewith next
.hs >> Hearth to Darkshire
.cooldown item,6948,>0
step
.goto Duskwood,74.09,44.71
>>Talk to |cRXP_FRIENDLY_Smitts|r inside
.turnin 78 >>Turn in The Legend of Stalvan
.accept 79 >>Accept The Legend of Stalvan
.turnin 156 >>Turn in Gather Rot Blossoms
.accept 159 >>Accept Juice Delivery
.target Tavernkeep Smitts
step
>>Talk to |cRXP_FRIENDLY_Althea|r and |cRXP_FRIENDLY_Daltry|r
.turnin 79 >>Turn in The Legend of Stalvan
.accept 80 >>Accept The Legend of Stalvan
.turnin 57 >>Turn in The Night Watch
.accept 58 >>Accept The Night Watch
.target +Commander Althea Ebonlocke
.goto Duskwood,73.57,46.85
.turnin 80 >>Turn in The Legend of Stalvan
.accept 97 >>Accept The Legend of Stalvan
.goto Duskwood,72.53,46.85
.target +Clerk Daltry
step
.goto Duskwood,72.64,47.59
>>Talk to |cRXP_FRIENDLY_Sirra|r inside
.turnin 225 >>Turn in The Weathered Grave
.accept 227 >>Accept Morgan Ladimore
.target Sirra Von'Indi
.isOnQuest 225
step
.goto Duskwood,72.64,47.59
>>Talk to |cRXP_FRIENDLY_Sirra|r inside
.accept 227 >>Accept Morgan Ladimore
.target Sirra Von'Indi
.isQuestTurnedIn 225
step
.goto Duskwood,73.57,46.85
>>Talk to |cRXP_FRIENDLY_Althea|r
.turnin 97 >>Turn in The Legend of Stalvan
.accept 98 >>Accept The Legend of Stalvan
.turnin 227 >>Turn in Morgan Ladimore
.accept 228 >>Accept Mor'Ladim
.target Commander Althea Ebonlocke
.isOnQuest 227
step
.goto Duskwood,73.57,46.85
>>Talk to |cRXP_FRIENDLY_Althea|r
.turnin 97 >>Turn in The Legend of Stalvan
.accept 98 >>Accept The Legend of Stalvan
.accept 228 >>Accept Mor'Ladim
.target Commander Althea Ebonlocke
.isQuestTurnedIn 227
step
.goto Duskwood,73.57,46.85
>>Talk to |cRXP_FRIENDLY_Althea|r
.turnin 97 >>Turn in The Legend of Stalvan
.accept 98 >>Accept The Legend of Stalvan
.target Commander Althea Ebonlocke
step
#completewith DarkR
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
#completewith next
.goto Duskwood,72.70,48.65,12,0
.goto Duskwood,71.01,49.14,15,0
.goto Duskwood,69.22,53.20,25,0
.goto Duskwood,63.80,51.34,90 >>Travel toward the |cRXP_ENEMY_Nightbane Dark Runner|r camp
step
#label DarkR
.goto Duskwood,63.80,51.34
>>AoE |cRXP_ENEMY_Nightbane Dark Runners|r
>>|cRXP_WARN_Be careful as they have|r |T132307:0|t[Increased Movespeed] |cRXP_WARN_and cast|r |T132090:0|t[Exploit Weakness] |cRXP_WARN_(deals double damage from behind)|r
.complete 221,1,6 
.mob Nightbane Dark Runner
step
.goto Duskwood,60.65,59.05,60,0
.goto Duskwood,56.12,58.11,60,0
.goto Duskwood,52.09,60.53,60,0
.goto Duskwood,53.33,65.92
>>AoE |cRXP_ENEMY_Black Ravager Mastiffs|r and |cRXP_ENEMY_Young Black Ravagers|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
.collect 1015,10,90,1 
.mob Black Ravager Mastiff
.mob Young Black Ravager
step
.goto Duskwood,28.11,31.46
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 159 >>Turn in Juice Delivery
.accept 133 >>Accept Ghoulish Effigy
.target Abercrombie
step
#sticky
#label Grave
.goto Duskwood,17.73,29.06
>>Click |cRXP_PICK_A Weathered Grave|r
.accept 225 >>Accept The Weathered Grave
step
#completewith next
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
.goto Duskwood,25.49,33.90,60,0
.goto Duskwood,24.79,38.96,60,0
.goto Duskwood,21.86,38.64,60,0
.goto Duskwood,21.78,33.55,60,0
.goto Duskwood,18.18,33.17,60,0
.goto Duskwood,17.54,34.88,60,0
.goto Duskwood,15.98,34.41,60,0
.goto Duskwood,16.79,32.63,60,0
#loop
.line Duskwood,25.49,33.90,24.79,38.96,21.86,38.64,21.78,33.55,18.18,33.17,17.54,34.88,15.98,34.41,16.79,32.63,25.49,33.90
.goto Duskwood,25.49,33.90,45,0
.goto Duskwood,24.79,38.96,45,0
.goto Duskwood,21.86,38.64,45,0
.goto Duskwood,21.78,33.55,45,0
.goto Duskwood,18.18,33.17,45,0
.goto Duskwood,17.54,34.88,45,0
.goto Duskwood,15.98,34.41,45,0
.goto Duskwood,16.79,32.63,45,0
.goto Duskwood,25.49,33.90,45,0
>>AoE |cRXP_ENEMY_Plague Spreaders|r, |cRXP_ENEMY_Bone Chewers|r, and |cRXP_ENEMY_Rotted Ones|r. Loot them for their |cRXP_LOOT_Ghoul Fangs|r and |cRXP_LOOT_Ghoul Ribs|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Rotted Ones|r have |cRXP_ENEMY_Flesh Eating Worms|r spawn after killing them (1 health, dies to AoE damage)|r
>>|cRXP_WARN_Avoid the |cRXP_ENEMY_Carrion Recluse|r as it casts|r |T132274:0|t[Paralyzing Poison] |cRXP_WARN_(Stuns you for 8 seconds)|r
.complete 58,1 
.mob +Plague Spreader
.complete 101,1 
.mob +Plague Spreader
.mob +Bone Chewer
.mob +Rotted One
.complete 133,1 
.mob +Plague Spreader
.mob +Bone Chewer
.mob +Rotted One
step
#requires Grave
.goto Duskwood,28.11,31.47
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 133 >>Turn in Ghoulish Effigy
.accept 134 >>Accept Ogre Thieves
.target Abercrombie
step
#completewith Monocle
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
.goto Duskwood,23.93,72.07
>>Open the |cRXP_PICK_Defias Strongbox|r. Loot it for the |cRXP_LOOT_Defias Docket|r
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_Be careful of |cRXP_ENEMY_Defias Night Blades|r as they cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds) and|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind), and |cRXP_ENEMY_Defias Enchanters|r who cast|r |T135812:0|t[Fireball] |cRXP_WARN_(dealing about 90 damage). Remember to cast|r |T135806:0|t[Fire Ward]
>>|cRXP_WARN_If there are 1 or less |cRXP_ENEMY_Defias Enchanters|r, AoE them|r
>>|cRXP_WARN_If there are 2 or more |cRXP_ENEMY_Defias Enchanters|r, Gather them all and|r |T135848:0|t[Frost Nova] |cRXP_WARN_them outside the building.|r |T135736:0|t[Blink] |cRXP_WARN_away after looting the|r |cRXP_LOOT_Defias Docket|r
.complete 1244,1 
step
.goto Duskwood,33.42,76.37
>>Loot |cRXP_LOOT_Abercrombie's Crate|r on the ground
.complete 134,1 
step
.isOnQuest 181
#label Monocle
.goto Duskwood,34.91,78.05,40,0
.goto Duskwood,37.83,84.36
>>AoE |cRXP_ENEMY_Zzarc'Vul|r. Loot him for the |cRXP_LOOT_Ogre's Monocle|r
>>You can AoE the |cRXP_ENEMY_Splinter Fist Warriors|r and |cRXP_ENEMY_Splinter Fist Firemongers|r
>>|cRXP_WARN_You must single target kill |cRXP_ENEMY_Splinter Fist Enslavers|r as they cast|r |T132149:0|t[Net] |cRXP_WARN_and|r |T132324:0|t[Thrown]
.complete 181,1 
.mob Zzarc'Vul
step
.goto Duskwood,28.11,31.47
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 134 >>Turn in Ogre Thieves
.accept 160 >>Accept Note to the Mayor
.target Abercrombie
step
#completewith next
.hs >> Hearth to Darkshire
step
.line Duskwood,74.80,44.11,74.73,43.54,74.44,40.93,73.93,39.69,72.57,38.50,72.17,37.19,72.20,35.12,72.57,33.67,73.30,32.55
.goto Duskwood,74.80,44.11,40,0
.goto Duskwood,74.73,43.54,40,0
.goto Duskwood,74.44,40.93,40,0
.goto Duskwood,73.93,39.69,40,0
.goto Duskwood,72.57,38.50,40,0
.goto Duskwood,72.17,37.19,40,0
.goto Duskwood,72.20,35.12,40,0
.goto Duskwood,72.57,33.67,40,0
.goto Duskwood,73.30,32.55
>>Talk to |cRXP_FRIENDLY_Backus|r
.turnin 1244 >>Turn in The Missing Diplomat
.accept 1245 >>Accept The Missing Diplomat
.target Watcher Backus
step
#completewith next
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
.goto Duskwood,77.35,36.19
>>AoE |cRXP_ENEMY_Stalvan Mistmantle|r. Loot him for the |cRXP_LOOT_Mistmantle Family Ring|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stalvan Mistmantle|r deals a LOT of damage and is hard-leashed to within about 75 yards of the house|r
>>You can AoE |cRXP_ENEMY_Fetid Corpses|r
.complete 98,1 
.mob Stalvan Mistmantle
step
.goto Duskwood,79.80,48.01
>>Talk to |cRXP_FRIENDLY_Viktori|r
.turnin 181,1 >>Turn in Look To The Stars
.target Viktori Prism'Antras
.isQuestTurnedIn 174
step
.goto Duskwood,75.83,45.30
>>Talk to |cRXP_FRIENDLY_Eva|r inside
.turnin 98,2 >>Turn in The Legend of Stalvan
.turnin 101 >>Turn in The Totem of Infliction
.target Madame Eva
step
.goto Duskwood,75.76,47.56,12,0
.goto Duskwood,75.30,48.04
>>Talk to |cRXP_FRIENDLY_Calor|r
.turnin 221 >>Turn in Worgen in the Woods
.accept 222 >>Accept Worgen in the Woods
.target Calor
.isQuestComplete 221
step
.goto Duskwood,75.76,47.56,12,0
.goto Duskwood,75.30,48.04
>>Talk to |cRXP_FRIENDLY_Calor|r
.accept 222 >>Accept Worgen in the Woods
.target Calor
.isQuestTurnedIn 221
step
.goto Duskwood,73.57,46.85
>>Talk to |cRXP_FRIENDLY_Althea|r
.turnin 58,3 >>Turn in The Night Watch
.target Commander Althea Ebonlocke
step
.goto Duskwood,71.93,46.43
>>Talk to |cRXP_FRIENDLY_Ello|r inside
.turnin 160 >>Turn in Note to the Mayor
.accept 251 >>Accept Translate Abercrombie's Note
.target Lord Ello Ebonlocke
step
.goto Duskwood,72.64,47.61
>>Talk to |cRXP_FRIENDLY_Sirra|r
.turnin 225 >>Turn in The Weathered Grave
.accept 227 >>Accept Morgan Ladimore
.turnin 251 >>Turn in Translate Abercrombie's Note
.accept 401 >>Accept Wait for Sirra to Finish
.turnin 401 >>Turn in Wait for Sirra to Finish
.accept 252 >>Accept Translation to Ello
.target Sirra Von'Indi
.isOnQuest 225
step
.goto Duskwood,72.64,47.61
>>Talk to |cRXP_FRIENDLY_Sirra|r
.accept 227 >>Accept Morgan Ladimore
.turnin 251 >>Turn in Translate Abercrombie's Note
.accept 401 >>Accept Wait for Sirra to Finish
.turnin 401 >>Turn in Wait for Sirra to Finish
.accept 252 >>Accept Translation to Ello
.target Sirra Von'Indi
.isQuestAvailable 227
step
.goto Duskwood,72.64,47.61
>>Talk to |cRXP_FRIENDLY_Sirra|r
.turnin 251 >>Turn in Translate Abercrombie's Note
.accept 401 >>Accept Wait for Sirra to Finish
.turnin 401 >>Turn in Wait for Sirra to Finish
.accept 252 >>Accept Translation to Ello
.target Sirra Von'Indi
step
.goto Duskwood,71.93,46.43
>>Talk to |cRXP_FRIENDLY_Ello|r
.turnin 252 >>Turn in Translation to Ello
.accept 253 >>Accept Bride of the Embalmer
.target Lord Ello Ebonlocke
step
#sticky
#label Embalmer
.destroy 3248 >>|cRXP_WARN_Destroy the|r |T134939:0|t[Translated Letter from The Embalmer] |cRXP_WARN_from your bags, as it's no longer needed|r
step
.goto Duskwood,73.57,46.85
>>Talk to |cRXP_FRIENDLY_Althea|r
.turnin 227 >>Turn in Morgan Ladimore
.accept 228 >>Accept Mor'Ladim
.target Commander Althea Ebonlocke
.isOnQuest 227
step
.goto Duskwood,73.57,46.85
>>Talk to |cRXP_FRIENDLY_Althea|r
.accept 228 >>Accept Mor'Ladim
.target Commander Althea Ebonlocke
.isQuestTurnedIn 227
step
#completewith DarkR2
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
#completewith next
.goto Duskwood,72.70,48.65,12,0
.goto Duskwood,71.01,49.14,15,0
.goto Duskwood,69.22,53.20,25,0
.goto Duskwood,63.80,51.34,90 >>Travel toward the |cRXP_ENEMY_Nightbane Dark Runner|r camp
step
#label DarkR2
.goto Duskwood,63.80,51.34
>>AoE |cRXP_ENEMY_Nightbane Dark Runners|r
>>|cRXP_WARN_Be careful as they have|r |T132307:0|t[Increased Movespeed] |cRXP_WARN_and cast|r |T132090:0|t[Exploit Weakness] |cRXP_WARN_(deals double damage from behind)|r
.complete 221,1 
.mob Nightbane Dark Runner
step
#requires Embalmer
.goto Duskwood,75.76,47.56,12,0
.goto Duskwood,75.30,48.04
>>Talk to |cRXP_FRIENDLY_Calor|r
.turnin 221 >>Turn in Worgen in the Woods
.accept 222 >>Accept Worgen in the Woods
.target Calor
step
#completewith next
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
#loop
.line Duskwood,73.74,71.16,73.08,75.24,73.38,76.67,74.35,77.80,74.03,79.11,74.35,77.80,73.38,76.67,73.08,75.24,71.90,70.66,69.55,72.28,68.67,75.05,68.71,77.45,67.33,80.79,65.52,80.20,64.56,82.57,62.58,83.75,61.87,82.97,61.98,81.49,61.18,75.31,64.15,73.11,64.83,56.72,63.80,51.34,73.74,71.16
.goto Duskwood,73.74,71.16,30,0
.goto Duskwood,73.08,75.24,30,0
.goto Duskwood,73.38,76.67,30,0
.goto Duskwood,74.35,77.80,30,0
.goto Duskwood,74.03,79.11,30,0
.goto Duskwood,74.35,77.80,30,0
.goto Duskwood,73.38,76.67,30,0
.goto Duskwood,73.08,75.24,30,0
.goto Duskwood,71.90,70.66,30,0
.goto Duskwood,69.55,72.28,30,0
.goto Duskwood,68.67,75.05,30,0
.goto Duskwood,68.71,77.45,30,0
.goto Duskwood,67.33,80.79,30,0
.goto Duskwood,65.52,80.20,30,0
.goto Duskwood,64.56,82.57,30,0
.goto Duskwood,62.58,83.75,30,0
.goto Duskwood,61.87,82.97,30,0
.goto Duskwood,61.98,81.49,30,0
.goto Duskwood,61.18,75.31,30,0
.goto Duskwood,64.15,73.11,30,0
.goto Duskwood,64.83,56.72,30,0
.goto Duskwood,63.80,51.34,30,0
.goto Duskwood,73.74,71.16,30,0
>>AoE |cRXP_ENEMY_Nightbane Vile Fangs|r, |cRXP_ENEMY_Nightbane Tainted Ones|r, and |cRXP_ENEMY_Nightbane Dark Runners|r
>>|cRXP_WARN_Be careful of |cRXP_ENEMY_Nightbane Vile Fangs|r as they cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 6, stackable if batched), |cRXP_ENEMY_Nightbane Tainted Ones|r cast|r |T136188:0|t[Tainted Howl] |cRXP_WARN_(stackable buff giving a chance to inflict|r |T136016:0|t[Poison] |cRXP_WARN_on melee attack, dealing 16.5 damage every 3 seconds for 30 seconds)|r |cRXP_ENEMY_Nightbane Dark Runners|r |cRXP_WARN_as they have|r |T132307:0|t[Increased Movespeed] |cRXP_WARN_and cast|r |T132090:0|t[Exploit Weakness] |cRXP_WARN_(deals double damage from behind)|r
.complete 222,1 
.mob +Nightbane Vile Fang
.complete 222,2 
.mob +Nightbane Tainted One
.mob *Nightbane Dark Runner
step
>>Talk to |cRXP_FRIENDLY_Calor|r and then |cRXP_FRIENDLY_Jonathan|r inside
.turnin 222 >>Turn in Worgen in the Woods
.accept 223 >>Accept Worgen in the Woods
.target +Calor
.goto Duskwood,75.76,47.56,12,0
.goto Duskwood,75.30,48.04
.turnin 223 >>Turn in Worgen in the Woods
.goto Duskwood,75.32,49.01
.target +Jonathan Carevin
step
#completewith WorgenEnd1
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
#completewith next
+Equip the |T135637:0|t[Consecrated Wand]
.use 5244
.itemcount 5244,1
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<24.1
step
#loop
.line Duskwood,73.74,71.16,73.08,75.24,73.38,76.67,74.35,77.80,74.03,79.11,74.35,77.80,73.38,76.67,73.08,75.24,71.90,70.66,69.55,72.28,68.67,75.05,68.71,77.45,67.33,80.79,65.52,80.20,64.56,82.57,62.58,83.75,61.87,82.97,61.98,81.49,61.18,75.31,64.15,73.11,64.83,56.72,63.80,51.34,73.74,71.16
.goto Duskwood,73.74,71.16,30,0
.goto Duskwood,73.08,75.24,30,0
.goto Duskwood,73.38,76.67,30,0
.goto Duskwood,74.35,77.80,30,0
.goto Duskwood,74.03,79.11,30,0
.goto Duskwood,74.35,77.80,30,0
.goto Duskwood,73.38,76.67,30,0
.goto Duskwood,73.08,75.24,30,0
.goto Duskwood,71.90,70.66,30,0
.goto Duskwood,69.55,72.28,30,0
.goto Duskwood,68.67,75.05,30,0
.goto Duskwood,68.71,77.45,30,0
.goto Duskwood,67.33,80.79,30,0
.goto Duskwood,65.52,80.20,30,0
.goto Duskwood,64.56,82.57,30,0
.goto Duskwood,62.58,83.75,30,0
.goto Duskwood,61.87,82.97,30,0
.goto Duskwood,61.98,81.49,30,0
.goto Duskwood,61.18,75.31,30,0
.goto Duskwood,64.15,73.11,30,0
.goto Duskwood,64.83,56.72,30,0
.goto Duskwood,63.80,51.34,30,0
.goto Duskwood,73.74,71.16,30,0
.xp 30 >>AoE |cRXP_ENEMY_Nightbane Vile Fangs|r, |cRXP_ENEMY_Nightbane Tainted Ones|r, and |cRXP_ENEMY_Nightbane Dark Runners|r to Level 30
>>|cRXP_WARN_Be careful of |cRXP_ENEMY_Nightbane Vile Fangs|r as they cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 6, stackable if batched), |cRXP_ENEMY_Nightbane Tainted Ones|r cast|r |T136188:0|t[Tainted Howl] |cRXP_WARN_(stackable buff giving a chance to inflict|r |T136016:0|t[Poison] |cRXP_WARN_on melee attack, dealing 16.5 damage every 3 seconds for 30 seconds)|r |cRXP_ENEMY_Nightbane Dark Runners|r |cRXP_WARN_as they have|r |T132307:0|t[Increased Movespeed] |cRXP_WARN_and cast|r |T132090:0|t[Exploit Weakness] |cRXP_WARN_(deals double damage from behind)|r
.mob Nightbane Vile Fang
.mob Nightbane Tainted One
.mob Nightbane Dark Runner
step
#label WorgenEnd1
#loop
.line Duskwood,73.74,71.16,73.08,75.24,73.38,76.67,74.35,77.80,74.03,79.11,74.35,77.80,73.38,76.67,73.08,75.24,71.90,70.66,69.55,72.28,68.67,75.05,68.71,77.45,67.33,80.79,65.52,80.20,63.35,81.38,61.98,81.49,61.18,75.31,64.15,73.11,64.83,56.72,63.80,51.34,73.74,71.16
.goto Duskwood,73.74,71.16,30,0
.goto Duskwood,73.08,75.24,30,0
.goto Duskwood,73.38,76.67,30,0
.goto Duskwood,74.35,77.80,30,0
.goto Duskwood,74.03,79.11,30,0
.goto Duskwood,74.35,77.80,30,0
.goto Duskwood,73.38,76.67,30,0
.goto Duskwood,73.08,75.24,30,0
.goto Duskwood,71.90,70.66,30,0
.goto Duskwood,69.55,72.28,30,0
.goto Duskwood,68.67,75.05,30,0
.goto Duskwood,68.71,77.45,30,0
.goto Duskwood,67.33,80.79,30,0
.goto Duskwood,65.52,80.20,30,0
.goto Duskwood,63.35,81.38,30,0
.goto Duskwood,61.98,81.49,30,0
.goto Duskwood,61.18,75.31,30,0
.goto Duskwood,64.15,73.11,30,0
.goto Duskwood,64.83,56.72,30,0
.goto Duskwood,63.80,51.34,30,0
.goto Duskwood,73.74,71.16,30,0
.xp 31 >>AoE |cRXP_ENEMY_Nightbane Vile Fangs|r, |cRXP_ENEMY_Nightbane Tainted Ones|r, and |cRXP_ENEMY_Nightbane Dark Runners|r until your |T134414:0|t[Hearthstone] is off cooldown
>>|cRXP_WARN_Be careful of |cRXP_ENEMY_Nightbane Vile Fangs|r as they cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 6, stackable if batched), |cRXP_ENEMY_Nightbane Tainted Ones|r cast|r |T136188:0|t[Tainted Howl] |cRXP_WARN_(stackable buff giving a chance to inflict|r |T136016:0|t[Poison] |cRXP_WARN_on melee attack, dealing 16.5 damage every 3 seconds for 30 seconds)|r |cRXP_ENEMY_Nightbane Dark Runners|r |cRXP_WARN_as they have|r |T132307:0|t[Increased Movespeed] |cRXP_WARN_and cast|r |T132090:0|t[Exploit Weakness] |cRXP_WARN_(deals double damage from behind)|r
.mob Nightbane Vile Fang
.mob Nightbane Tainted One
.mob Nightbane Dark Runner
.zoneskip Stormwind City
.zoneskip Ironforge
.cooldown item,6948,<0
step
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step
.goto Stormwind City,38.62,79.30
>>Talk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells (Arcane Explosion r3, Conjure water r4, Fire Blast r4, Slow Fall, Ice Armor r1, Polymorph r2, Fireball r6)
.target Jennea Cannon
step
#completewith Bank
.goto Stormwind City,55.30,68.16,10 >>Enter the Stormwind Bank
step
.goto Stormwind City,57.03,72.97
>>Talk to |cRXP_FRIENDLY_Newton|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
.bankdeposit 2592 >> Deposit the following items into the bank:
>>|T132911:0|t[Wool Cloth]
.target Newton Burnside
step
.goto Stormwind City,57.03,72.97
.bankwithdraw 17056,3339 >> Withdraw the following items from your bank:
>>|T132917:0|t[Light Feather]
>>|T133849:0|t[Dwarven Tinder]
.target Newton Burnside
step
#completewith next
.hs >> Hearth to Darkshire
.zoneskip Duskwood
step
.goto Duskwood,73.68,48.55,10,0
.goto Duskwood,73.94,48.87
>>Talk to |cRXP_FRIENDLY_Morg|r or |cRXP_FRIENDLY_Gavin|r
.vendor >> Vendor Trash. Repair
>>|cRXP_WARN_Do NOT sell your|r |T132917:0|t[Light Feathers]
.target Morg Gnarltree
.target Gavin Gnarltree
step
#completewith next
>>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337,1 
.accept 337 >> Accept An Old History Book
.use 2794
step
#loop
.line Duskwood,73.74,71.16,73.08,75.24,73.38,76.67,74.35,77.80,74.03,79.11,74.35,77.80,73.38,76.67,73.08,75.24,71.90,70.66,69.55,72.28,68.67,75.05,68.71,77.45,67.33,80.79,65.52,80.20,63.35,81.38,61.98,81.49,61.18,75.31,64.15,73.11,64.83,56.72,63.80,51.34,73.74,71.16
.goto Duskwood,73.74,71.16,30,0
.goto Duskwood,73.08,75.24,30,0
.goto Duskwood,73.38,76.67,30,0
.goto Duskwood,74.35,77.80,30,0
.goto Duskwood,74.03,79.11,30,0
.goto Duskwood,74.35,77.80,30,0
.goto Duskwood,73.38,76.67,30,0
.goto Duskwood,73.08,75.24,30,0
.goto Duskwood,71.90,70.66,30,0
.goto Duskwood,69.55,72.28,30,0
.goto Duskwood,68.67,75.05,30,0
.goto Duskwood,68.71,77.45,30,0
.goto Duskwood,67.33,80.79,30,0
.goto Duskwood,65.52,80.20,30,0
.goto Duskwood,63.35,81.38,30,0
.goto Duskwood,61.98,81.49,30,0
.goto Duskwood,61.18,75.31,30,0
.goto Duskwood,64.15,73.11,30,0
.goto Duskwood,64.83,56.72,30,0
.goto Duskwood,63.80,51.34,30,0
.goto Duskwood,73.74,71.16,30,0
.xp 32 >>AoE |cRXP_ENEMY_Nightbane Vile Fangs|r, |cRXP_ENEMY_Nightbane Tainted Ones|r, and |cRXP_ENEMY_Nightbane Dark Runners|r to Level 32
>>|cRXP_WARN_Be careful of |cRXP_ENEMY_Nightbane Vile Fangs|r as they cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 6, stackable if batched), |cRXP_ENEMY_Nightbane Tainted Ones|r cast|r |T136188:0|t[Tainted Howl] |cRXP_WARN_(stackable buff giving a chance to inflict|r |T136016:0|t[Poison] |cRXP_WARN_on melee attack, dealing 16.5 damage every 3 seconds for 30 seconds)|r |cRXP_ENEMY_Nightbane Dark Runners|r |cRXP_WARN_as they have|r |T132307:0|t[Increased Movespeed] |cRXP_WARN_and cast|r |T132090:0|t[Exploit Weakness] |cRXP_WARN_(deals double damage from behind)|r
>>Talk to |cRXP_FRIENDLY_Morg|r or |cRXP_FRIENDLY_Gavin|r in Darkshire to Vendor and Repair whenever needed after clearing the northern |cRXP_ENEMY_Nightbane Dark Runner|r camp
.mob Nightbane Vile Fang
.mob Nightbane Tainted One
.mob Nightbane Dark Runner
.zoneskip Stormwind City
.zoneskip Ironforge
step
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step << skip
.goto Stormwind City,38.62,79.30
>>Talk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells (Conjure Food r4, Flamestrike r3, Frost Ward r2)
.target Jennea Cannon
step
#completewith next
.goto Stormwind City,36.30,82.90,6 >>Go through the green portal
step
.goto Stormwind City,39.83,81.46
>>Talk to |cRXP_FRIENDLY_Malin|r outside
.accept 690 >>Accept Malin's Request
.target Archmage Malin
step
#completewith next
.goto Stormwind City,39.83,85.57,12,0
.goto Stormwind City,39.90,87.23,12,0
.goto Stormwind City,40.50,90.78,12,0
>>Go inside The Blue Recluse's kitchen downstairs
.goto Stormwind City,40.64,91.87,10 >>Travel toward |cRXP_FRIENDLY_Connor|r
step
.goto Stormwind City,40.64,91.87
>>Talk to |cRXP_FRIENDLY_Connor|r
.accept 1301 >>Accept James Hyal
.target Connor Rivers
step
.goto Stormwind City,59.90,64.18
>>Talk to |cRXP_FRIENDLY_Elling|r
>>|cRXP_WARN_Jump up from the doorway whilst spamming your "Interact with Target" keybind|r
.turnin 1245 >>Turn in The Missing Diplomat
.accept 1246 >>Accept The Missing Diplomat
.target Elling Trias
step
#completewith next
.goto Stormwind City,57.00,61.64,20,0
.goto Stormwind City,58.19,57.66,20,0
.goto Stormwind City,57.81,54.73,20,0
.goto Stormwind City,59.91,51.65,20,0
.goto Stormwind City,64.78,48.93,20,0
.goto Stormwind City,67.52,46.92,20,0
.goto Stormwind City,70.02,48.13,15,0
.goto Stormwind City,69.94,45.94,15,0
.goto Stormwind City,70.54,44.89,15 >>Travel toward |cRXP_FRIENDLY_Dashel|r
step
.goto Stormwind City,70.54,44.89
>>Talk to |cRXP_FRIENDLY_Dashel|r
>>|cRXP_WARN_This will start an event where |cRXP_ENEMY_Dashel|r and his |cRXP_ENEMY_Old Town Thugs|r 3v1 you|r
>>|cRXP_WARN_Defeat |cRXP_ENEMY_Dashel|r, then AoE the |cRXP_ENEMY_Old Town Thugs|r once they reset the first time|r
.turnin 1246 >>Turn in The Missing Diplomat
.accept 1447 >>Accept The Missing Diplomat
.target Dashel Stonefist
step
.goto Stormwind City,70.54,44.89
>>Defeat |cRXP_ENEMY_Dashel|r
.complete 1447,1 
.mob Dashel Stonefist
step
.goto Stormwind City,70.54,44.89
>>Talk to |cRXP_FRIENDLY_Dashel|r
.turnin 1447 >>Turn in The Missing Diplomat
.accept 1247 >>Accept The Missing Diplomat
.target Dashel Stonefist
.mob Old Town Thug
step
.goto Stormwind City,59.90,64.18
>>Talk to |cRXP_FRIENDLY_Elling|r
>>|cRXP_WARN_Jump up from the doorway whilst spamming your "Interact with Target" keybind|r
.turnin 1247 >>Turn in The Missing Diplomat
.accept 1248 >>Accept The Missing Diplomat
.target Elling Trias
step
#completewith next
.goto Stormwind City,68.97,29.47,15,0
.goto Stormwind City,72.54,25.97,15,0
.goto Stormwind City,74.00,30.25,20 >>Travel toward |cRXP_FRIENDLY_Remington|r
step
.goto Stormwind City,74.18,7.46
>>Talk to |cRXP_FRIENDLY_Remington|r
.accept 543 >> Accept The Perenolde Tiara
.target Court Remington Ridgewell
step
#completewith next
.goto Stormwind City,72.62,23.18,15,0
.goto Stormwind City,69.72,16.66,15,0
.goto Stormwind City,70.39,11.38,15,0
>>Go into the Stormwind Library
.goto Stormwind City,74.18,7.46,20 >>Travel toward |cRXP_FRIENDLY_Milton|r
step
.goto Stormwind City,74.18,7.46
>>Talk to |cRXP_FRIENDLY_Milton|r
.turnin 337 >>Turn in An Old History Book
.accept 538 >>Accept Southshore
.target Milton Sheaf
.isOnQuest 337
step
.goto Stormwind City,74.18,7.46
>>Talk to |cRXP_FRIENDLY_Milton|r
.accept 538 >>Accept Southshore
.target Milton Sheaf
.isQuestTurnedIn 337
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Conjure Food r4, Flamestrike r3)
.target Dink
step
#completewith next
.goto Ironforge,28.70,25.58,12,0
.goto Ironforge,29.60,26.62,10,0
.goto Ironforge,30.50,26.58,10,0
.goto Ironforge,31.32,27.80,12 >>Travel toward |cRXP_FRIENDLY_Ginny|r
step
.goto Ironforge,31.32,27.80
>>Talk to |cRXP_FRIENDLY_Ginny|r inside
>>|cRXP_BUY_Buy four|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from her|r
.collect 17031,4 
.target Ginny Longberry
]]);
