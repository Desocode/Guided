RXPGuides.RegisterGuide([[
#version 23
#defaultfor Alliance Mage
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 26-27 ADV Redridge 2 Mage AoE
#next 27-32 ADV Duskwood Mage AoE
step
>>Talk to |cRXP_FRIENDLY_Sven and Lars|r
.turnin 164 >> Turn in Deliveries to Sven
.target +Sven Yorgen
.accept 95 >> Accept Sven's Revenge
.goto Duskwood,7.78,34.07
.accept 226 >> Accept Wolves at Our Heels
.goto Duskwood,7.70,33.29
.target +Lars
step
#completewith next
.goto Duskwood,16.07,25.39,70,0
.goto Duskwood,23.86,27.57,70,0
>>AoE |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Starving Dire Wolves|r have|r |T132150:0|t[Increased Aggro Range] |cRXP_WARN_and|r |cRXP_ENEMY_Rabid Dire Wolves|r cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Reduces ALL health regen by 50%)|r
.complete 226,1 
.mob +Starving Dire Wolf
.complete 226,2 
.mob +Rabid Dire Wolf
.collect 1015,10,90,1 
.disablecheckbox
step
.goto Duskwood,28.10,31.47
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 165 >> Turn in The Hermit
.accept 148 >> Accept Supplies from Darkshire
.target Abercrombie
step
.goto Duskwood,29.84,25.70,70,0
.goto Duskwood,33.70,22.90,70,0
.goto Duskwood,41.18,18.48,70,0
.goto Duskwood,65.60,17.63
>>AoE |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Starving Dire Wolves|r have|r |T132150:0|t[Increased Aggro Range] |cRXP_WARN_and |cRXP_ENEMY_Rabid Dire Wolves|r cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Reduces ALL health regen by 50%)|r
.complete 226,1 
.mob +Starving Dire Wolf
.complete 226,2 
.mob +Rabid Dire Wolf
.collect 1015,10,90,1 
.disablecheckbox
step
.goto Duskwood,73.03,44.41
>>Talk to |cRXP_FRIENDLY_Avette|r
.vendor 228 >> Vendor Trash. Repair
.target Avette Fellwood
.isQuestAvailable 90
step
#completewith next
.goto Duskwood,73.79,45.98,20,0
.goto Duskwood,74.01,45.36,10 >>Go Inside the Inn
step
.goto Duskwood,73.88,44.41
>>Talk to |cRXP_FRIENDLY_Trelayne|r
>>|cRXP_BUY_Buy some|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from her if needed|r
.home >> Set your Hearthstone to Darkshire
.collect 1708,40,471,1 
.target Innkeeper Trelayne
step
.goto Duskwood,73.84,43.21
>>Talk to |cRXP_FRIENDLY_Grual|r in the room behind |cRXP_FRIENDLY_Trelayne|r
.accept 90 >> Accept Seasoned Wolf Kabobs
.turnin 90 >> Turn in Seasoned Wolf Kabobs
.target Chef Grual
.itemcount 1015,10 
step
#completewith next
.goto Duskwood,74.01,45.36,10,0
.goto Duskwood,73.79,45.98,10 >>Exit the Inn
step
.goto Duskwood,75.83,45.30
>>Talk to |cRXP_FRIENDLY_Eva|r inside
.turnin 148 >> Turn in Supplies from Darkshire
.accept 149 >> Accept Ghost Hair Thread
.accept 66 >> Accept The Legend of Stalvan
.accept 101 >> Accept The Totem of Infliction
.target Madame Eva
step
.goto Duskwood,75.76,47.56,12,0
.goto Duskwood,75.30,48.04
>>Talk to |cRXP_FRIENDLY_Calor|r
.accept 173 >>Accept Worgen in the Woods
.target Calor
step
>>Talk to |cRXP_FRIENDLY_Althea|r and |cRXP_FRIENDLY_Daltry|r
.accept 56 >>Accept The Night Watch
.target +Commander Althea Ebonlocke
.goto Duskwood,73.57,46.85
.turnin 66 >>Turn in The Legend of Stalvan
.accept 67 >>Accept The Legend of Stalvan
.goto Duskwood,72.53,46.85
.target +Clerk Daltry
step
#completewith next
.goto Duskwood,77.48,44.29
>>Talk to |cRXP_FRIENDLY_Felicia|r
.fly Redridge >> Fly to Redridge
.target Felicia Mane
step
.zone Redridge Mountains >> Travel to Redridge
.isQuestAvailable 180
step
.goto Redridge Mountains,26.76,46.40
>>Click the |cRXP_PICK_Wanted Poster|r
.accept 180 >>Accept Wanted: Lieutenant Fangore
step
.goto Redridge Mountains,29.72,44.26
>>Talk to |cRXP_FRIENDLY_Conacher|r inside
.accept 91 >>Accept Solomon's Law
.target Bailiff Conacher
step
.goto Redridge Mountains,33.51,48.96
>>Talk to |cRXP_FRIENDLY_Marris|r
.accept 19 >>Accept Tharil'zun
.target Marshal Marris
.isQuestTurnedIn 20
step
#completewith next
.goto Redridge Mountains,42.66,39.42,60,0
.goto Redridge Mountains,48.19,40.66,60,0
.goto Redridge Mountains,60.21,44.45,60,0
.goto Redridge Mountains,61.85,47.16,30,0
.goto Redridge Mountains,67.12,47.92,40 >>Travel toward |cRXP_ENEMY_Tharil'zun|r
.isOnQuest 19
step
#completewith next
.goto Redridge Mountains,66.37,54.26,45,0
>>|cRXP_WARN_Split pull |cRXP_ENEMY_Tharil'zun|r IF he's patrolled to the north side of the keep. Kill him. Loot him for|r |cRXP_LOOT_Tharil'zun's Head|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Tharil'zun|r casts|r |T132149:0|t[Net]
>>|cRXP_WARN_If he's not patrolling, skip this step|r
.complete 19,1 
.unitscan Tharil'zun
step
.goto Redridge Mountains,66.37,54.26,100 >> Travel toward the Gnolls
.isOnQuest 91
step
#completewith Fangore
>>AoE all types of |cRXP_ENEMY_Shadowhide Gnolls|r EXCEPT |cRXP_ENEMY_Shadowhide Darkweavers|r. Loot them for their |cRXP_LOOT_Shadowhide Pendants|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Rabid Shadowhide Gnolls|r cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Reduces ALL health regen by 50%), |cRXP_ENEMY_Shadowhide Slayers|r cast|r |T135358:0|t[Execute] |cRXP_WARN_(deals a LOT of damage when you're at <20% health), and |cRXP_ENEMY_Shadowhide Assassins|r are |T132320:0|t[Stealthed]|r
.complete 91,1 
.mob Rabid Shadowhide Gnoll
.mob Shadowhide Gnoll
.mob Shadowhide Brute
.mob Shadowhide Assassin
.mob Shadowhide Warrior
.mob Shadowhide Slayer
step
.goto Redridge Mountains,80.89,48.84,10 >> Travel to the Tower of Ilgalar
.isOnQuest 1938
step
.goto Redridge Mountains,78.88,47.66
>>Loot |cRXP_LOOT_Ur's Treatise on Shadow Magic|r on the bookcase located on the top floor of the Tower behind the |cRXP_ENEMY_Shadowhide Darkweaver|r
>>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Shadowhide Assassin|r |T132320:0|t[Stealthed] |cRXP_WARN_inside the first room|r
>>|cRXP_WARN_AoE |cRXP_ENEMY_Servants of Ilgalar|r whilst LoSing them around the Stairs and Railings of the tower to avoid their|r |T136170:0|t[Mana Burn] |cRXP_WARN_(|r|T135857:0|t[Blizzard] |cRXP_WARN_and|r |T135826:0|t[Flamestrike] |cRXP_WARN_are both useful)|r
>>|cRXP_WARN_Do NOT aggro|r |cRXP_ENEMY_Morganth|r
>>|cRXP_WARN_This has a 5 second cast time|r
.complete 1938,1 
step
.goto Redridge Mountains,84.61,46.72
>>Click the |cRXP_PICK_Old Lion Statue|r
>>|cRXP_WARN_This has a 5 second cast time|r
.turnin 94 >> Turn in A Watchful Eye
step
#label Fangore
.goto Redridge Mountains,80.45,37.95
>>|cRXP_WARN_Split pull |cRXP_ENEMY_Lieutenant Fangore|r with|r |T135857:0|t[Blizzard]|cRXP_WARN_.|r Loot him for |cRXP_LOOT_Fangore's Paw|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Lieutenant Fangore|r has a permanent passive call for help in a 60 yard radius|r
.complete 180,1 
.mob Lieutenant Fangore
step
#loop
.line Redridge Mountains,75.10,49.84,75.76,47.03,76.49,37.79,79.14,40.67,75.10,49.84
.goto Redridge Mountains,75.10,49.84,40,0
.goto Redridge Mountains,75.76,47.03,40,0
.goto Redridge Mountains,76.49,37.79,40,0
.goto Redridge Mountains,79.14,40.67,40,0
.goto Redridge Mountains,75.10,49.84,40,0
>>AoE all types of |cRXP_ENEMY_Shadowhide Gnolls|r EXCEPT |cRXP_ENEMY_Shadowhide Darkweavers|r. Loot them for their |cRXP_LOOT_Shadowhide Pendants|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Rabid Shadowhide Gnolls|r cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Reduces ALL health regen by 50%), |cRXP_ENEMY_Shadowhide Slayers|r cast|r |T135358:0|t[Execute] |cRXP_WARN_(deals a LOT of damage when you're at <20% health), and |cRXP_ENEMY_Shadowhide Assassins|r are |T132320:0|t[Stealthed]|r
>>|cRXP_WARN_Try and save|r |T135865:0|t[Cold Snap]|cRXP_WARN_, a|r |T134831:0|t[Healing Potion] |cRXP_WARN_and|r |T136075:0|t[Evocation] |cRXP_WARN_for later|r
.complete 91,1 
.mob Rabid Shadowhide Gnoll
.mob Shadowhide Gnoll
.mob Shadowhide Brute
.mob Shadowhide Assassin
.mob Shadowhide Warrior
.mob Shadowhide Slayer
step << skip
.goto Redridge Mountains,75.73,32.43,15,0
>>AoE the Gnolls inside the cave
>>Use |T136153:0|t[Mana Shield] before pulling to negate damage. Cast |T135856:0|t[Counterspell] on the |cRXP_ENEMY_Shadowhide Darkweaver|r to interrupt him. |T135852:0|t[Cone of Cold] -> |T135848:0|t[Frost Nova] -> |T135826:0|t[Flamestrike] -> |T136116:0|t[Arcane Explosion] them
.goto Redridge Mountains,75.81,29.38
.goto Redridge Mountains,33.82,48.07,30 >>|cRXP_WARN_Logout Skip by logging out on top of the Mushroom at the back of the cave|r
.isOnQuest 91
step
#completewith LakeshireTurnins
.goto Redridge Mountains,75.73,32.43,15,0
>>AoE the Gnolls inside the cave
>>Use |T136153:0|t[Mana Shield] before pulling to negate damage. Cast |T135856:0|t[Counterspell] on the |cRXP_ENEMY_Shadowhide Darkweaver|r to interrupt him. |T135852:0|t[Cone of Cold] -> |T135848:0|t[Frost Nova] -> |T135826:0|t[Flamestrike] -> |T136116:0|t[Arcane Explosion] them
.subzone 69 >> Return to Lakeshire after
.isOnQuest 91
step
.goto Redridge Mountains,33.51,48.96
>>Talk to |cRXP_FRIENDLY_Marris|r
.turnin 19,2 >>Turn in Tharil'zun
.target Marshal Marris
.isQuestComplete 19
step
#sticky
#label Tharil
.abandon 19 >>Abandon Tharil'zun
step
#label LakeshireTurnins
>>Talk to |cRXP_FRIENDLY_Conacher|r and |cRXP_FRIENDLY_Solomon|r inside
.turnin 91 >>Turn in Solomon's Law
.target +Bailiff Conacher
.goto Redridge Mountains,29.99,44.45
.turnin 180 >>Turn in Wanted: Lieutenant Fangore
.goto Redridge Mountains,29.72,44.26
.target +Magistrate Solomon
step
#requires Tharil
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step
#requires Tharil
#completewith next
.goto Stormwind City,36.30,82.90,6 >>Go through the green portal
step
#requires Tharil
.goto Stormwind City,37.53,81.65
>>Talk to |cRXP_FRIENDLY_Andromath|r
.turnin 1938 >>Turn in Ur's Treatise on Shadow Magic
.accept 1940 >>Accept Pristine Spider Silk
.target High Sorcerer Andromath
]]);
