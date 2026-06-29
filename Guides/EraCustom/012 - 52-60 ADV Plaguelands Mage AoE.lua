RXPGuides.RegisterGuide([[
#version 23
#defaultfor Alliance Mage
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 52-60 ADV Plaguelands Mage AoE
step
#completewith FlySouthshore
#labelTeleIF
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
#completewith FlySouthshore
#requires TeleIF
>>Talk to |cRXP_FRIENDLY_Hammerfall|r
.accept 5090 >> Accept A Call to Arms: The Plaguelands!
.target Courier Hammerfall
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Scorch r6, Mana Shield r5, Frost Ward r4, Blizzard r5, Conjure Food r6)
.target Dink
step
#completewith next
.goto Ironforge,24.51,38.01,30,0
.goto Ironforge,26.20,57.38,30,0
.goto Ironforge,32.22,63.26,12 >>Travel toward |cRXP_FRIENDLY_Rotimer|r
step << skip
#hardcoreserver
.goto Ironforge,32.23,63.24
>>Talk to |cRXP_FRIENDLY_Rotimer|r
>>|cRXP_WARN_NOTE: If this quest is not up on the Hardcore servers, skip this step|r
.accept 7261 >> Accept The Sovereign Imperative
.target Lieutenant Rotimer
step
#softcoreserver
.goto Ironforge,32.23,63.24
>>Talk to |cRXP_FRIENDLY_Rotimer|r
.accept 7261 >> Accept The Sovereign Imperative
.target Lieutenant Rotimer
step
#label FlySouthshore
#completewith Haggerdin
.goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth|r
.fly Southshore >> Fly to Southshore
.target Gryth Thurden
step
.goto Hillsbrad Foothills,51.17,58.93
>>Talk to |cRXP_FRIENDLY_Anderson|r inside
.home >> Set your Hearthstone to Southshore
.target Innkeeper Anderson
step
#softcoreserver
#completewith next
.goto Alterac Mountains,41.33,84.06,60,0
.goto Alterac Mountains,39.46,81.23,12 >>Travel toward |cRXP_FRIENDLY_Haggerdin|r
step
#softcoreserver
#label Haggerdin
.goto Alterac Mountains,41.33,84.06,60,0
.goto Alterac Mountains,39.46,81.23
>>Talk to |cRXP_FRIENDLY_Haggerdin|r
.turnin 7261 >> Turn in The Sovereign Imperative
.target Lieutenant Haggerdin
.isOnQuest 7261
step
#softcoreserver
#completewith WPLStart
.goto Alterac Mountains,53.16,65.42,60,0
.goto Alterac Mountains,60.61,57.26,60,0
.goto Alterac Mountains,66.81,47.80,60,0
.goto Alterac Mountains,78.17,43.16,60,0
.goto Western Plaguelands,42.70,84.03,12 >>Travel toward |cRXP_FRIENDLY_Ashlam|r
step
#hardcoreserver
#completewith next
.goto Hillsbrad Foothills,49.34,52.27
>>Talk to |cRXP_FRIENDLY_Darla|r
.fly Chillwind Camp >> Fly to Chillwind Camp
.target Darla Harris
.zoneskip Western Plaguelands
step
>>Talk to |cRXP_FRIENDLY_Ashlam|r and |cRXP_FRIENDLY_Pureheart|r
.turnin 5090 >> Turn in A Call to Arms: The Plaguelands!
.accept 5092 >> Accept Clear the Way
.target +Commander Ashlam Valorfist
.goto Western Plaguelands,42.70,84.03
.turnin 5401 >> Turn in Argent Dawn Commission
.goto Western Plaguelands,42.97,83.55
.target +Argent Officer Pureheart
.isQuestComplete 5090
step
#label WPLStart
>>Talk to |cRXP_FRIENDLY_Ashlam|r and |cRXP_FRIENDLY_Pureheart|r
.accept 5092 >> Accept Clear the Way
.target +Commander Ashlam Valorfist
.goto Western Plaguelands,42.70,84.03
.turnin 5401 >> Turn in Argent Dawn Commission
.goto Western Plaguelands,42.97,83.55
.target +Argent Officer Pureheart
step
#completewith next
+Equip the |T133440:0|t[Argent Dawn Commission]
.use 12846 
.itemcount 12846,1
step
#completewith next
>>Talk to |cRXP_FRIENDLY_Marlene|r inside
>>|cRXP_WARN_She can be on either floor|r
.accept 5142 >> Accept Little Pamela
.target Marlene Redpath
step
#loop
.line Western Plaguelands,47.17,80.33,47.48,81.82,48.46,82.62,49.32,81.24,50.68,80.52,51.03,76.17,50.32,75.15,49.54,76.30,49.72,77.72,48.79,80.23,47.17,80.33
.goto Western Plaguelands,47.17,80.33,30,0
.goto Western Plaguelands,47.48,81.82,30,0
.goto Western Plaguelands,48.46,82.62,30,0
.goto Western Plaguelands,49.32,81.24,30,0
.goto Western Plaguelands,50.68,80.52,30,0
.goto Western Plaguelands,51.03,76.17,30,0
.goto Western Plaguelands,50.32,75.15,30,0
.goto Western Plaguelands,49.54,76.30,30,0
.goto Western Plaguelands,49.72,77.72,30,0
.goto Western Plaguelands,48.79,80.23,30,0
.goto Western Plaguelands,47.17,80.33,30,0
>>AoE |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Slavering Ghouls|r. Loot them for |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r]
>>|cRXP_WARN_Be careful as they both cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds) and can one-shot you if they get close during the pull, and |cRXP_ENEMY_Slavering Ghouls|r cast|r |T136016:0|t[Toxic Saliva] |cRXP_WARN_(Deals 17 damage and leeches 20 mana every 6 seconds)|r
>>|cRXP_WARN_AoE |cRXP_ENEMY_Lord Maldazzar|r if he's up|r
.complete 5092,1 
.mob +Skeletal Flayer
.complete 5092,2 
.mob +Skeletal Ghoul
.collect 12840,1000 
.disablecheckbox
.unitscan Lord Maldazzar
step
.goto Western Plaguelands,49.28,78.54,8,0
.goto Western Plaguelands,49.15,78.99,6,0
.goto Western Plaguelands,49.15,78.45
>>Talk to |cRXP_FRIENDLY_Marlene|r inside
>>|cRXP_WARN_She can be on either floor|r
.accept 5142 >> Accept Little Pamela
.target Marlene Redpath
step
>>Talk to |cRXP_FRIENDLY_Ashlam|r and |cRXP_FRIENDLY_MacDonnell|r
.turnin 5092 >> Turn in Clear the Way
.accept 5097 >> Accept All Along the Watchtowers
.accept 5215 >> Accept The Scourge Cauldrons
.target +Commander Ashlam Valorfist
.goto Western Plaguelands,42.70,84.03
.turnin 5215 >>Turn in The Scourge Cauldrons
.accept 5216 >>Accept Target: Felstone Field
.goto Western Plaguelands,42.97,84.50
.target +High Priestess MacDonnell
step
#completewith TowerOne
+|cRXP_WARN_Do NOT click the |cRXP_PICK_Blood of Heroes|r on the ground if you ever see one. You WILL die|r
step
#completewith next
.goto Western Plaguelands,37.57,74.14,40,0
.goto Western Plaguelands,38.89,72.07,40,0
.goto Western Plaguelands,40.04,71.74,12 >>Travel toward the first tower
step
#label TowerOne
.goto Western Plaguelands,40.04,71.74
>>Use the |T135432:0|t[Beacon Torch] at the side of the doorway
>>|cRXP_WARN_You do NOT need to aggro the |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,1 
.use 12815 
step
.goto Western Plaguelands,37.01,57.09
>>AoE |cRXP_ENEMY_Cauldron Lord Bilemaw|r. Loot him for the |cRXP_LOOT_Felstone Field Cauldron Key|r
>>|cRXP_WARN_Pre-Cast|r |T135850:0|t[Frost Ward] |cRXP_WARN_and|r |T135988:0|t[Ice Barrier]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Cauldron Lord Bilemaw|r casts|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds),|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 12), and|r |T132109:0|t[Rend] |cRXP_WARN_(deals 42 damage every 3 seconds for 15 seconds), nearby |cRXP_ENEMY_Skeletal Sorcerers|r cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_(slows and deals about 150-200 frost damage), and|r |T135824:0|t[Fire Nova] |cRXP_WARN_(Instantly deals about 325 fire damage)|r
.complete 5216,1 
.mob Cauldron Lord Bilemaw
step
.goto Western Plaguelands,37.25,56.76
>>Click the |cRXP_PICK_Scourge Cauldron|r
>>|cRXP_WARN_This has a 5 second cast time|r
.turnin 5216 >>Turn in Target: Felstone Field
.accept 5217 >>Accept Return to Chillwind Camp
step
#completewith next
.goto Western Plaguelands,38.05,54.59,12 >>Go inside the house
step
.goto Western Plaguelands,38.40,54.05
>>Talk to |cRXP_FRIENDLY_Janice|r through the ground from the 1st floor
.accept 5021 >>Accept Better Late Than Never
.target Janice Felstone
step
#completewith next
.goto Western Plaguelands,38.05,54.56,8,0
>>Exit the house
.goto Western Plaguelands,38.58,55.33,6 >>Go inside the barn
step
.goto Western Plaguelands,38.72,55.24
>>Click |cRXP_PICK_Janice's Parcel|r on the ground
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_You can do this from behind the wall to avoid aggroing anything inside|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r outside the barn. If you do, run away|r
.turnin 5021 >>Turn in Better Late Than Never
.accept 5022 >>Accept Better Late Than Never
step
.goto Western Plaguelands,41.86,66.30,20,0
.goto Western Plaguelands,42.30,66.05
>>Use the |T135432:0|t[Beacon Torch] at the side of the doorway
>>|cRXP_WARN_You do NOT need to aggro the |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,2 
.use 12815 
step
.goto Western Plaguelands,42.97,84.50
>>Talk to |cRXP_FRIENDLY_MacDonnell|r
.turnin 5217 >>Turn in Return to Chillwind Camp
.accept 5219 >>Accept Target: Dalson's Tears
.target High Priestess MacDonnell
step
#completewith DalsonCauldron
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
.reputation 529,friendly,0 >>AoE |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Rotting Cadavers|r, |cRXP_ENEMY_Skeletal Terrors|r, and the |cRXP_ENEMY_Wandering Skeleton|r to Friendly Argent Dawn Reputation. Loot them for |T132903:0|t[|cRXP_LOOT_Runecloth|r], |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r], and |T133724:0|t[|cRXP_LOOT_Bone Fragments|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blighted Zombies|r cast|r |T135914:0|t[Volatile Infection] |cRXP_WARN_(deals 156 nature damage every 15 seconds, causing pushback, dispellable with|r |T135841:0|t[Ice Block]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Terrors|r cast|r |T136183:0|t[Fear]|cRXP_WARN_, (Fearing you for 4 seconds IF they've been rooted by|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Remember to|r |T135736:0|t[Blink] |cRXP_WARN_out of range of their cast if needed|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r. If you do, run away|r
.collect 14047,240 
.disablecheckbox
.collect 12840,1000 
.disablecheckbox
.collect 22526,30,9126,1 
.disablecheckbox
.mob Blighted Zombie
.mob Rotting Cadaver
.mob Skeletal Terror
.mob Wandering Skeleton
step
.goto Western Plaguelands,46.22,52.41
>>AoE |cRXP_ENEMY_Cauldron Lord Malvinous|r. Loot him for the |cRXP_LOOT_Dalson's Tears Cauldron Key|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Cauldron Lord Malvinous|r casts|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(deals about 300 shadow damage),|r |T136169:0|t[Drain Life] |cRXP_WARN_(deals 69 shadow damage, healing him for damage dealt), and|r |T136187:0|t[Summon Skeleton] |cRXP_WARN_(Summons a 1900 health, level 45 |cRXP_ENEMY_Skeleton)|r|r
.complete 5219,1 
.mob Cauldron Lord Malvinous
.mob Skeleton
step
#label DalsonCauldron
.goto Western Plaguelands,46.18,51.89
>>Click the |cRXP_PICK_Scourge Cauldron|r
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_Try and do this before |cRXP_ENEMY_Cauldron Lord Malvinous|r respawns as it can ruin future pulls (4-minute respawn timer)|r
.turnin 5219 >>Turn in Target: Dalson's Tears
.accept 5220 >>Accept Return to Chillwind Camp
step
#completewith next
>>Keep track of your |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r]
>>|cRXP_WARN_Every 20|r |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r] |cRXP_WARN_is worth 50 reputation|r
.collect 12840,1000 
step
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
.reputation 529,friendly,0 >>AoE |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Rotting Cadavers|r, |cRXP_ENEMY_Skeletal Terrors|r, and the |cRXP_ENEMY_Wandering Skeleton|r to Friendly Argent Dawn Reputation. Loot them for |T132903:0|t[|cRXP_LOOT_Runecloth|r], |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r], and |T133724:0|t[|cRXP_LOOT_Bone Fragments|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blighted Zombies|r cast|r |T135914:0|t[Volatile Infection] |cRXP_WARN_(deals 156 nature damage every 15 seconds, causing pushback, dispellable with|r |T135841:0|t[Ice Block]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Terrors|r cast|r |T136183:0|t[Fear]|cRXP_WARN_, (Fearing you for 4 seconds IF they've been rooted by|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Remember to|r |T135736:0|t[Blink] |cRXP_WARN_out of range of their cast if needed|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r. If you do, run away|r
>>|cRXP_WARN_Once you have enough|r |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r] |cRXP_WARN_turnins to reach friendly with the |cRXP_FRIENDLY_Argent Dawn|r, skip this step|r
.collect 14047,240 
.disablecheckbox
.collect 22526,30,9126,1 
.disablecheckbox
.mob Blighted Zombie
.mob Rotting Cadaver
.mob Skeletal Terror
.mob Wandering Skeleton
step
.goto Western Plaguelands,42.97,83.55
+Talk to |cRXP_FRIENDLY_Pureheart|r until you run out of |T133447:0|t[Minion's Scourgestones]
.dailyturnin 5402 >> Turn in Minion's Scourgestones
.disablecheckbox
.target Argent Officer Pureheart
.itemcount 12840,20 
step << skip
#completewith Level54
.destroy 12844 >>|cRXP_WARN_Destroy the|r |T133441:0|t[Argent Dawn Valor Tokens] |cRXP_WARN_If you're not playing this character at 60|r
.itemcount 12844,1
step
.goto Western Plaguelands,42.84,83.71
+Use the |T133441:0|t[Argent Dawn Valor Tokens] in your bags
.use 12844
.itemcount 12844,1
step
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
.reputation 529,friendly,0 >>AoE |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Rotting Cadavers|r, |cRXP_ENEMY_Skeletal Terrors|r, and the |cRXP_ENEMY_Wandering Skeleton|r to Friendly Argent Dawn Reputation. Loot them for |T132903:0|t[|cRXP_LOOT_Runecloth|r], |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r], and |T133724:0|t[|cRXP_LOOT_Bone Fragments|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blighted Zombies|r cast|r |T135914:0|t[Volatile Infection] |cRXP_WARN_(deals 156 nature damage every 15 seconds, causing pushback, dispellable with|r |T135841:0|t[Ice Block]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Terrors|r cast|r |T136183:0|t[Fear]|cRXP_WARN_, (Fearing you for 4 seconds IF they've been rooted by|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Remember to|r |T135736:0|t[Blink] |cRXP_WARN_out of range of their cast if needed|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r. If you do, run away|r
.collect 14047,240 
.disablecheckbox
.collect 12840,1000 
.disablecheckbox
.collect 22526,30,9126,1 
.disablecheckbox
.mob Blighted Zombie
.mob Rotting Cadaver
.mob Skeletal Terror
.mob Wandering Skeleton
step
.goto Western Plaguelands,42.84,83.71
>>Talk to |cRXP_FRIENDLY_Lightspark|r
.vendor 10857 >> Vendor Trash (and all your old food). Repair
>>|cRXP_BUY_Buy some|r |T133989:0|t[Enriched Manna Biscuits] |cRXP_BUY_from him|r
.collect 13724,260 
.target Argent Quartermaster Lightspark
step
.goto Western Plaguelands,42.97,84.50
>>Talk to |cRXP_FRIENDLY_MacDonnell|r
.turnin 5220 >>Turn in Return to Chillwind Camp
.accept 5222 >>Accept Target: Writhing Haunt
.target High Priestess MacDonnell
step
#label Level54
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
.xp 54 >>AoE |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Rotting Cadavers|r, |cRXP_ENEMY_Skeletal Terrors|r, and the |cRXP_ENEMY_Wandering Skeleton|r to Level 54. Loot them for |T132903:0|t[|cRXP_LOOT_Runecloth|r], |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r], and |T133724:0|t[|cRXP_LOOT_Bone Fragments|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blighted Zombies|r cast|r |T135914:0|t[Volatile Infection] |cRXP_WARN_(deals 156 nature damage every 15 seconds, causing pushback, dispellable with|r |T135841:0|t[Ice Block]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Terrors|r cast|r |T136183:0|t[Fear]|cRXP_WARN_, (Fearing you for 4 seconds IF they've been rooted by|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Remember to|r |T135736:0|t[Blink] |cRXP_WARN_out of range of their cast if needed|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r. If you do, run away|r
.collect 14047,240 
.disablecheckbox
.collect 12840,1000 
.disablecheckbox
.collect 22526,30,9126,1 
.disablecheckbox
.mob Blighted Zombie
.mob Rotting Cadaver
.mob Skeletal Terror
.mob Wandering Skeleton
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Fireball r10, Arcane Explosion r6, Fire Blast r7)
.target Dink
step
#completewith next
.hs >> Hearth to Southshore
step
.goto Hillsbrad Foothills,49.34,52.27
>>Talk to |cRXP_FRIENDLY_Darla|r
.fly Chillwind Camp >> Fly to Chillwind Camp
.target Darla Harris
.zoneskip Western Plaguelands
step
.goto Western Plaguelands,42.84,83.71
>>Talk to |cRXP_FRIENDLY_Lightspark|r
.vendor 10857 >> Vendor Trash. Repair
>>|cRXP_BUY_Buy some|r |T133989:0|t[Enriched Manna Biscuits] |cRXP_BUY_from him|r
.collect 13724,260 
.target Argent Quartermaster Lightspark
step << skip
.goto Western Plaguelands,42.97,83.55
+Talk to |cRXP_FRIENDLY_Pureheart|r until you run out of |T133447:0|t[Minion's Scourgestones]
.dailyturnin 5402 >> Turn in Minion's Scourgestones
.disablecheckbox
.target Argent Officer Pureheart
.itemcount 12840,20 
step
#completewith next
.goto Western Plaguelands,47.27,77.33,40,0
.goto Western Plaguelands,49.10,73.36,40,0
.goto Western Plaguelands,48.24,71.90,40,0
.goto Western Plaguelands,46.72,71.18,12 >>Travel toward the fourth tower
step
.goto Western Plaguelands,46.72,71.18
>>Use the |T135432:0|t[Beacon Torch] at the side of the doorway
>>|cRXP_WARN_You do NOT need to aggro the |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,4 
.use 12815 
step
#label Level56
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,47.24,49.88,,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,47.24,49.88,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
.xp 56 >>AoE |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Rotting Cadavers|r, |cRXP_ENEMY_Skeletal Terrors|r, and the |cRXP_ENEMY_Wandering Skeleton|r to Level 56. Loot them for |T132903:0|t[|cRXP_LOOT_Runecloth|r], |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r], and |T133724:0|t[|cRXP_LOOT_Bone Fragments|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blighted Zombies|r cast|r |T135914:0|t[Volatile Infection] |cRXP_WARN_(deals 156 nature damage every 15 seconds, causing pushback, dispellable with|r |T135841:0|t[Ice Block]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Terrors|r cast|r |T136183:0|t[Fear]|cRXP_WARN_, (Fearing you for 4 seconds IF they've been rooted by|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Remember to|r |T135736:0|t[Blink] |cRXP_WARN_out of range of their cast if needed|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r. If you do, run away|r
.collect 14047,240 
.disablecheckbox
.collect 12840,1000 
.disablecheckbox
.collect 22526,30,9126,1 
.disablecheckbox
.mob Blighted Zombie
.mob Rotting Cadaver
.mob Skeletal Terror
.mob Wandering Skeleton
step
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step
.goto Stormwind City,38.61,79.39
>>Talk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells (Arcane Intellect r5, Flamestrike r6, Frostbolt r10)
.target Jennea Cannon
step
#completewith Bathrilor
+|cRXP_WARN_Keep an eye out for |cRXP_FRIENDLY_Ol' Emma|r as she patrols around and you need to talk to her later|r
.unitscan Ol' Emma
step
#completewith next
.goto Stormwind City,47.87,31.31,8,0
.goto Stormwind City,47.87,31.31,6 >>Travel toward |cRXP_FRIENDLY_Bathrilor|r upstairs
step
#label Bathrilor
.goto Stormwind City,48.47,30.56
>>Talk to |cRXP_FRIENDLY_Bathrilor|r inside on the 2nd floor
.turnin 5022 >> Turn in Better Late Than Never
.accept 5048 >> Accept Good Natured Emma
.target Royal Factor Bathrilor
step
.goto Stormwind City,52.37,42.14
>>Talk to |cRXP_FRIENDLY_Ol' Emma|r either inside her home on the 2nd floor, or patrolling the Trade District
>>|cRXP_WARN_If she's in her home, jump up from the flowerpot outside her doorway whilst spamming your "Interact with Target" keybind|r
.turnin 5048 >> Turn in Good Natured Emma
.accept 5050 >> Accept Good Luck Charm
.unitscan Ol' Emma
step
#completewith next
.goto Stormwind City,70.24,27.24,30,0
.goto Stormwind City,78.22,17.98,12 >>Travel toward |cRXP_FRIENDLY_Bolvar|r
step
.goto Stormwind City,78.22,17.98
>>Talk to |cRXP_FRIENDLY_Bolvar|r
.accept 6182 >> Accept The First and the Last
.target Highlord Bolvar Fordragon
step
#completewith next
.goto Stormwind City,69.03,29.39,30,0
.goto Stormwind City,65.23,36.85,30,0
.goto Stormwind City,74.87,53.73,30,0
.goto Stormwind City,78.46,59.98,8,0
.goto Stormwind City,78.52,58.35,8,0
.goto Stormwind City,75.79,59.85,8 >>Travel toward |cRXP_FRIENDLY_Mathias|r upstairs
step
.goto Stormwind City,75.79,59.85
>>Talk to |cRXP_FRIENDLY_Mathias|r
.turnin 6182 >> Turn in The First and the Last
.accept 6183 >> Accept Honor the Dead
.turnin 6183 >> Turn in Honor the Dead
.accept 6184 >> Accept Flint Shadowmore
.target Master Mathias Shaw
step
#completewith next
.hs >> Hearth to Southshore
step
.goto Hillsbrad Foothills,49.34,52.27
>>Talk to |cRXP_FRIENDLY_Darla|r
.fly Chillwind Camp >> Fly to Chillwind Camp
.target Darla Harris
.zoneskip Western Plaguelands
step
.goto Western Plaguelands,42.84,83.71
>>Talk to |cRXP_FRIENDLY_Lightspark|r
.vendor 10857 >> Vendor Trash. Repair
>>|cRXP_BUY_Buy some|r |T133989:0|t[Enriched Manna Biscuits] |cRXP_BUY_from him|r
.collect 13724,260 
.target Argent Quartermaster Lightspark
step << skip
.goto Western Plaguelands,42.97,83.55
+Talk to |cRXP_FRIENDLY_Pureheart|r until you run out of |T133447:0|t[Minion's Scourgestones]
.dailyturnin 5402 >> Turn in Minion's Scourgestones
.disablecheckbox
.target Argent Officer Pureheart
.itemcount 12840,20 
step
#completewith next
.goto Western Plaguelands,47.27,77.33,40,0
.goto Western Plaguelands,49.10,73.36,40,0
.goto Western Plaguelands,44.18,63.37,12 >>Travel toward the third tower
step
.goto Western Plaguelands,44.18,63.37
>>Use the |T135432:0|t[Beacon Torch] at the side of the doorway
>>|cRXP_WARN_You do NOT need to aggro the |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,3 
.use 12815 
step
#completewith Better
+|cRXP_WARN_If possible, kite the |cRXP_ENEMY_Jabbering Ghoul|r inside. AoE it when you accept "Two Halves Become One" from|r |cRXP_FRIENDLY_Janice|r
>>|cRXP_WARN_Be careful as he casts|r |T136231:0|t[Pierce Armor] |cRXP_WARN_(Reduces Armor by 75% for 20 seconds), and|r |T136224:0|t[Enrage] |cRXP_WARN_(increases attack speed and increases melee damage by 70)|r
>>|cRXP_WARN_Otherwise, just keep an eye out for it|r
.unitscan Jabbering Ghoul
step
#completewith next
.goto Western Plaguelands,38.05,54.59,12 >>Go inside the house
step
#label Better
.goto Western Plaguelands,38.40,54.05
>>Talk to |cRXP_FRIENDLY_Janice|r through the ground from the 1st floor
.turnin 5050 >>Turn in Better Late Than Never
.accept 5051 >>Accept Two Halves Become One
.target Janice Felstone
step
.goto Western Plaguelands,38.16,57.10,60,0
.goto Western Plaguelands,36.34,58.23,60,0
.goto Western Plaguelands,36.43,56.37,60,0
.goto Western Plaguelands,38.16,57.10
>>AoE the |cRXP_ENEMY_Jabbering Ghoul|r. Loot it for the |T133443:0|t[Good Luck Other-Half-Charm]
>>|cRXP_WARN_Be careful as he casts|r |T136231:0|t[Pierce Armor] |cRXP_WARN_(Reduces Armor by 75% for 20 seconds), and|r |T136224:0|t[Enrage] |cRXP_WARN_(increases attack speed and increases melee damage by 70)|r
>>|cRXP_WARN_He patrols around the Field|r
.collect 12722,1,5051,1 
.unitscan Jabbering Ghoul
step
#completewith JaniceEnd
>>Use the |T133443:0|t[Good Luck Other-Half-Charm] to create the |cRXP_LOOT_Good Luck Charm|r
.collect 12723,1,5051,1 
.use 12722 
step
#completewith next
.goto Western Plaguelands,38.05,54.59,12 >>Go inside the house
step
.goto Western Plaguelands,38.40,54.05
>>Talk to |cRXP_FRIENDLY_Janice|r through the ground from the 1st floor
.turnin 5051 >>Turn in Two Halves Become One
.target Janice Felstone
step
#label Level57
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,47.24,49.88,,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,47.24,49.88,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
.xp 57 >>AoE |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Rotting Cadavers|r, |cRXP_ENEMY_Skeletal Terrors|r, and the |cRXP_ENEMY_Wandering Skeleton|r to Level 57. Loot them for |T132903:0|t[|cRXP_LOOT_Runecloth|r], |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r], and |T133724:0|t[|cRXP_LOOT_Bone Fragments|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blighted Zombies|r cast|r |T135914:0|t[Volatile Infection] |cRXP_WARN_(deals 156 nature damage every 15 seconds, causing pushback, dispellable with|r |T135841:0|t[Ice Block]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Terrors|r cast|r |T136183:0|t[Fear]|cRXP_WARN_, (Fearing you for 4 seconds IF they've been rooted by|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Remember to|r |T135736:0|t[Blink] |cRXP_WARN_out of range of their cast if needed|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r. If you do, run away|r
.collect 14047,240 
.disablecheckbox
.collect 12840,1000 
.disablecheckbox
.collect 22526,30,9126,1 
.disablecheckbox
.mob Blighted Zombie
.mob Rotting Cadaver
.mob Skeletal Terror
.mob Wandering Skeleton
step
#completewith next
.goto Western Plaguelands,47.58,50.93,8,0
.goto Western Plaguelands,47.75,50.99,6 >>Go inside the barn
step
#completewith Level58
#label Diary
.goto Western Plaguelands,47.80,50.67
>>Click |cRXP_PICK_Mrs. Dalson's Diary|r on the ground
.turnin 5058 >> Turn in Mrs. Dalson's Diary
step
#completewith Level58
#requires Diary
#label Outhouse
>>AoE the |cRXP_ENEMY_Wandering Skeleton|r. Loot it for the |cRXP_LOOT_Dalson Outhouse Key|r
.collect 12738,1,5060,1 
.itemcount 12739,<1
step
#completewith Level58
#requires Outhouse
.goto Western Plaguelands,48.11,49.65
>>Click the |cRXP_PICK_Outhouse|r to summon |cRXP_ENEMY_Farmer Dalson|r
>>AoE |cRXP_ENEMY_Farmer Dalson|r. Loot him for the |cRXP_LOOT_Dalson Cabinet Key|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Farmer Dalson|r casts|r |T135903:0|t[Altered Cauldron Toxin] |cRXP_WARN_(Reduces your damage dealt by 20%, 20 yard range,|r |T132126:0|t[Enrage] |cRXP_WARN_(increases attack speed and increases melee damage by 70 at <30% health), and|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
.turnin 5059 >> Turn in Locked Away
.collect 12739,1,5060,1 
.mob Farmer Dalson
step
#label Level58
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,47.24,49.88,,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,47.24,49.88,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
.xp 57+188350 >>AoE |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Rotting Cadavers|r, |cRXP_ENEMY_Skeletal Terrors|r, and the |cRXP_ENEMY_Wandering Skeleton|r to 188350+/195000xp. Loot them for |T132903:0|t[|cRXP_LOOT_Runecloth|r], |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r], and |T133724:0|t[|cRXP_LOOT_Bone Fragments|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blighted Zombies|r cast|r |T135914:0|t[Volatile Infection] |cRXP_WARN_(deals 156 nature damage every 15 seconds, causing pushback, dispellable with|r |T135841:0|t[Ice Block]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Terrors|r cast|r |T136183:0|t[Fear]|cRXP_WARN_, (Fearing you for 4 seconds IF they've been rooted by|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Remember to|r |T135736:0|t[Blink] |cRXP_WARN_out of range of their cast if needed|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r. If you do, run away|r
.collect 14047,240 
.disablecheckbox
.collect 12840,1000 
.disablecheckbox
.collect 22526,30,9126,1 
.disablecheckbox
.mob Blighted Zombie
.mob Rotting Cadaver
.mob Skeletal Terror
.mob Wandering Skeleton
step
#completewith Mulgris
+|cRXP_WARN_Be careful as nearby |cRXP_ENEMY_Freezing Ghouls|r cast|r |T135848:0|t[Flash Freeze] |cRXP_WARN_10-yard range aoe instant stun for 5 seconds)|r
step
.goto Western Plaguelands,52.99,66.10
>>AoE |cRXP_ENEMY_Cauldron Lord Razarch|r. Loot him for the |cRXP_LOOT_Writhing Haunt Cauldron Key|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Cauldron Lord Razarch|r casts|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(deals about 300 shadow damage),|r |T136169:0|t[Drain Life] |cRXP_WARN_(deals 69 shadow damage, healing him for damage dealt), and|r |T136187:0|t[Summon Skeleton] |cRXP_WARN_(Summons a 1900 health, level 45 |cRXP_ENEMY_Skeleton)|r|r
.complete 5222,1 
.mob Cauldron Lord Razarch
.mob Skeleton
step
.goto Western Plaguelands,53.02,65.60
>>Click the |cRXP_PICK_Scourge Cauldron|r
>>|cRXP_WARN_This has a 5 second cast time|r
.turnin 5222 >>Turn in Target: Writhing Haunt
.accept 5223 >>Accept Return to Chillwind Camp
step
#label Mulgris
.goto Western Plaguelands,53.73,64.66
>>Talk to |cRXP_FRIENDLY_Mulgris|r inside
.accept 4984 >> Accept The Wildlife Suffers Too
.target Mulgris Deepriver
step
.goto Western Plaguelands,53.02,65.60
.xp 58 >> Grind to level 58
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,27.17,8.58
>>Talk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells (Scorch r7, Conjure Mana Ruby, Cone of Cold r5, Mage Armor r3)
.target Dink
step
#completewith next
.hs >> Hearth to Southshore
step
.goto Hillsbrad Foothills,49.34,52.27
>>Talk to |cRXP_FRIENDLY_Darla|r
.fly Chillwind Camp >> Fly to Chillwind Camp
.target Darla Harris
.zoneskip Western Plaguelands
step
>>Talk to |cRXP_FRIENDLY_Nathaniel|r, |cRXP_FRIENDLY_Flint|r, |cRXP_FRIENDLY_MacDonnell|r, |cRXP_FRIENDLY_Ashlam|r, and |cRXP_FRIENDLY_Arbington|r
.accept 5903 >> Accept A Plague Upon Thee
.target +Nathaniel Dumah
.goto Western Plaguelands,43.42,84.83
.turnin 6184 >>Turn in Flint Shadowmore
.accept 6185 >>Accept The Eastern Plagues
.target +Flint Shadowmore
.goto Western Plaguelands,43.61,84.50
.turnin 5223 >>Turn in Return to Chillwind Camp
.accept 5225 >>Accept Target: Gahrron's Withering
.target +High Priestess MacDonnell
.goto Western Plaguelands,42.97,84.50
.turnin 5097 >>Turn in All Along the Watchtowers
.accept 5533 >>Accept Scholomance
.target +Commander Ashlam Valorfist
.goto Western Plaguelands,42.70,84.03
.turnin 5533 >>Turn in Scholomance
.accept 5537 >>Accept Skeletal Fragments
.goto Western Plaguelands,42.66,83.78
.target +Alchemist Arbington
step
#completewith next
.goto Western Plaguelands,42.97,83.55,0,0
+Talk to |cRXP_FRIENDLY_Pureheart|r until you run out of |T133447:0|t[Minion's Scourgestones]
>>|cRXP_WARN_Save one of the|r |T133441:0|t[Argent Dawn Valor Tokens] |cRXP_WARN_for later|r
.dailyturnin 5402 >> Turn in Minion's Scourgestones
.disablecheckbox
.target Argent Officer Pureheart
.itemcount 12840,20 
step
.goto Western Plaguelands,42.84,83.71
>>Talk to |cRXP_FRIENDLY_Lightspark|r
.vendor 10857 >> Vendor Trash. Repair
>>|cRXP_BUY_Buy some|r |T133989:0|t[Enriched Manna Biscuits] |cRXP_BUY_from him|r
.collect 13724,260 
.target Argent Quartermaster Lightspark
step
.goto Western Plaguelands,42.97,83.55
+Talk to |cRXP_FRIENDLY_Pureheart|r until you run out of |T133447:0|t[Minion's Scourgestones]
.dailyturnin 5402 >> Turn in Minion's Scourgestones
.disablecheckbox
.target Argent Officer Pureheart
.itemcount 12840,20 
step
#completewith next
.goto Western Plaguelands,47.58,50.93,8,0
.goto Western Plaguelands,47.75,50.99,6 >>Go inside the barn
step
#completewith Level59
#label Diary2
.goto Western Plaguelands,47.80,50.67
>>Click |cRXP_PICK_Mrs. Dalson's Diary|r on the ground
.turnin 5058 >> Turn in Mrs. Dalson's Diary
step
#completewith Level59
#requires Diary2
#label Outhouse2
>>AoE the |cRXP_ENEMY_Wandering Skeleton|r. Loot it for the |cRXP_LOOT_Dalson Outhouse Key|r
.collect 12738,1,5060,1 
.itemcount 12739,<1
step
#completewith Level59
#label DalsonKill2
#requires Outhouse2
.goto Western Plaguelands,48.11,49.65
>>Click the |cRXP_PICK_Outhouse|r to summon |cRXP_ENEMY_Farmer Dalson|r
>>AoE |cRXP_ENEMY_Farmer Dalson|r. Loot him for the |cRXP_LOOT_Dalson Cabinet Key|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Farmer Dalson|r casts|r |T135903:0|t[Altered Cauldron Toxin] |cRXP_WARN_(Reduces your damage dealt by 20%, 20 yard range,|r |T132126:0|t[Enrage] |cRXP_WARN_(increases attack speed and increases melee damage by 70 at <30% health), and|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
.turnin 5059 >> Turn in Locked Away
.collect 12739,1,5060,1 
.mob Farmer Dalson
step
#completewith next
#requires DalsonKill2
.goto Western Plaguelands,47.15,50.15,6 >>Go inside the house
step
#completewith next
#requires DalsonKill2
.goto Western Plaguelands,46.99,49.79,6,0
.goto Western Plaguelands,47.33,49.90,6,0
.goto Western Plaguelands,47.35,49.63
>>Click the |cRXP_PICK_Locked Cabinet|r on the 2nd floor
.turnin 5060 >> Turn in Locked Away
step
#label Level59
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,47.24,49.88,,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,47.24,49.88,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
.xp 59 >>AoE |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Rotting Cadavers|r, |cRXP_ENEMY_Skeletal Terrors|r, and the |cRXP_ENEMY_Wandering Skeleton|r to Level 59. Loot them for |T132903:0|t[|cRXP_LOOT_Runecloth|r], |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r], |T133724:0|t[|cRXP_LOOT_Bone Fragments|r], and |T133724:0|t|cRXP_LOOT_[Skeletal Fragments|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blighted Zombies|r cast|r |T135914:0|t[Volatile Infection] |cRXP_WARN_(deals 156 nature damage every 15 seconds, causing pushback, dispellable with|r |T135841:0|t[Ice Block]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Terrors|r cast|r |T136183:0|t[Fear]|cRXP_WARN_, (Fearing you for 4 seconds IF they've been rooted by|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Remember to|r |T135736:0|t[Blink] |cRXP_WARN_out of range of their cast if needed|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r. If you do, run away|r
.collect 14047,240 
.disablecheckbox
.collect 12840,1000 
.disablecheckbox
.collect 22526,30,9126,1 
.disablecheckbox
.complete 5537,1 
.mob Blighted Zombie
.mob Rotting Cadaver
.mob Skeletal Terror
.mob Wandering Skeleton
step
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,47.24,49.88,,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,47.24,49.88,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
>>AoE |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Rotting Cadavers|r, |cRXP_ENEMY_Skeletal Terrors|r, and the |cRXP_ENEMY_Wandering Skeleton|r. Loot them for |T132903:0|t[|cRXP_LOOT_Runecloth|r], |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r], |T133724:0|t[|cRXP_LOOT_Bone Fragments|r], and |T133724:0|t|cRXP_LOOT_[Skeletal Fragments|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blighted Zombies|r cast|r |T135914:0|t[Volatile Infection] |cRXP_WARN_(deals 156 nature damage every 15 seconds, causing pushback, dispellable with|r |T135841:0|t[Ice Block]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Terrors|r cast|r |T136183:0|t[Fear]|cRXP_WARN_, (Fearing you for 4 seconds IF they've been rooted by|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Remember to|r |T135736:0|t[Blink] |cRXP_WARN_out of range of their cast if needed|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r. If you do, run away|r
.collect 14047,240 
.disablecheckbox
.collect 12840,1000 
.disablecheckbox
.collect 22526,30,9126,1 
.complete 5537,1 
.mob Blighted Zombie
.mob Rotting Cadaver
.mob Skeletal Terror
.mob Wandering Skeleton
step
#completewith next
.goto Western Plaguelands,47.58,50.93,8,0
.goto Western Plaguelands,47.75,50.99,6 >>Go inside the barn
step
.goto Western Plaguelands,47.80,50.67
>>Click |cRXP_PICK_Mrs. Dalson's Diary|r on the ground
.turnin 5058 >> Turn in Mrs. Dalson's Diary
step
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,47.24,49.88,,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,47.24,49.88,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
>>AoE the |cRXP_ENEMY_Wandering Skeleton|r. Loot it for the |cRXP_LOOT_Dalson Outhouse Key|r
.collect 12738,1,5060,1 
.itemcount 12739,<1
.unitscan Wandering Skeleton
step
.goto Western Plaguelands,48.11,49.65
>>Click the |cRXP_PICK_Outhouse|r to summon |cRXP_ENEMY_Farmer Dalson|r
>>AoE |cRXP_ENEMY_Farmer Dalson|r. Loot him for the |cRXP_LOOT_Dalson Cabinet Key|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Farmer Dalson|r casts|r |T135903:0|t[Altered Cauldron Toxin] |cRXP_WARN_(Reduces your damage dealt by 20%, 20 yard range,|r |T132126:0|t[Enrage] |cRXP_WARN_(increases attack speed and increases melee damage by 70 at <30% health), and|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
.turnin 5059 >> Turn in Locked Away
.collect 12739,1,5060,1 
.mob Farmer Dalson
step
#completewith next
.goto Western Plaguelands,47.15,50.15,6 >>Go inside the house
step
.goto Western Plaguelands,46.99,49.79,6,0
.goto Western Plaguelands,47.33,49.90,6,0
.goto Western Plaguelands,47.35,49.63
>>Click the |cRXP_PICK_Locked Cabinet|r on the 2nd floor
.turnin 5060 >> Turn in Locked Away
step
#loop
.line Western Plaguelands,45.54,47.84,44.53,45.89,45.20,44.09,45.27,41.64,45.26,40.15,44.81,37.20,46.31,37.23,46.75,38.27,46.50,39.97,47.56,39.59,47.34,41.04,47.79,43.21,47.26,45.81,48.12,47.20,50.48,46.49,51.52,47.79,51.12,51.11,50.84,53.62,51.36,57.89,52.53,60.32,51.74,61.20,50.20,64.22,49.52,61.94,48.77,61.14,49.33,59.63,48.90,58.77,46.12,59.51,44.30,59.19,43.66,55.29,41.96,54.77,45.54,47.84
.goto Western Plaguelands,45.54,47.84,50,0
.goto Western Plaguelands,44.53,45.89,50,0
.goto Western Plaguelands,45.20,44.09,50,0
.goto Western Plaguelands,45.27,41.64,50,0
.goto Western Plaguelands,45.26,40.15,50,0
.goto Western Plaguelands,44.81,37.20,50,0
.goto Western Plaguelands,46.31,37.23,50,0
.goto Western Plaguelands,46.75,38.27,50,0
.goto Western Plaguelands,46.50,39.97,50,0
.goto Western Plaguelands,47.56,39.59,50,0
.goto Western Plaguelands,47.34,41.04,50,0
.goto Western Plaguelands,47.79,43.21,50,0
.goto Western Plaguelands,47.26,45.81,50,0
.goto Western Plaguelands,48.12,47.20,50,0
.goto Western Plaguelands,50.48,46.49,50,0
.goto Western Plaguelands,51.52,47.79,50,0
.goto Western Plaguelands,51.12,51.11,50,0
.goto Western Plaguelands,50.84,53.62,50,0
.goto Western Plaguelands,51.36,57.89,50,0
.goto Western Plaguelands,52.53,60.32,50,0
.goto Western Plaguelands,51.74,61.20,50,0
.goto Western Plaguelands,50.20,64.22,50,0
.goto Western Plaguelands,49.52,61.94,50,0
.goto Western Plaguelands,48.77,61.14,50,0
.goto Western Plaguelands,49.33,59.63,50,0
.goto Western Plaguelands,48.90,58.77,50,0
.goto Western Plaguelands,46.12,59.51,50,0
.goto Western Plaguelands,44.30,59.19,50,0
.goto Western Plaguelands,43.66,55.29,50,0
.goto Western Plaguelands,41.96,54.77,50,0
.goto Western Plaguelands,45.54,47.84,50,0
>>AoE |cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_WARN_AoE |cRXP_ENEMY_Carrion Lurkers|r too if toward the end of your pull phase and it's convenient|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Diseased Wolves|r cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 12), and |cRXP_ENEMY_Carrion Lurkers|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(deals 37-38 damage every 3 seconds for 30 seconds), and|r |T136016:0|t[Web] |cRXP_WARN_(roots for 10 seconds)|r
>>|cRXP_ENEMY_Carrion Lurkers|r |cRXP_WARN_share respawns with|r |cRXP_ENEMY_Diseased Wolves|r
.complete 4984,1 
.unitscan Diseased Wolf
.mob Carrion Lurkers
step
.goto Western Plaguelands,53.73,64.66
>>Talk to |cRXP_FRIENDLY_Mulgris|r inside
>>|cRXP_WARN_Be careful as nearby |cRXP_ENEMY_Freezing Ghouls|r cast|r |T135848:0|t[Flash Freeze] |cRXP_WARN_10-yard range aoe instant stun for 5 seconds)|r
.turnin 4984 >> Turn in The Wildlife Suffers Too
.accept 4985 >> Accept The Wildlife Suffers Too
.target Mulgris Deepriver
step
#completewith Soulwrath
>>AoE |cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Diseased Grizzlies|r cast|r |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 12)|r
.complete 4985,1 
.mob Diseased Grizzly
step
#completewith Gahrron
+|cRXP_WARN_Be careful as nearby |cRXP_ENEMY_Hungering Wraiths|r cast|r |T136197:0|t[Debilitating Touch] |cRXP_WARN_(Reduces Stamina by 20 for 2 minutes), and|r |T132126:0|t[Enrage] |cRXP_WARN_(increases attack speed and increases melee damage by 80 at <25% health),|r |cRXP_ENEMY_Wailing Deaths|r cast|r |T136183:0|t[Wailing Dead] |cRXP_WARN_Reduces all stats by 29% for 6 seconds), and|r |cRXP_ENEMY_Haunting Visions|r cast|r |T136135:0|t[Cripple] |cRXP_WARN_Slows movement by 50% for 15 seconds),|r |T136170:0|t[Mana Burn] |cRXP_WARN_Deals around 350 damage, burning 2x the damage in mana), and|r |T136224:0|t[Mind Blast] |cRXP_WARN_Deals around 250 shadow damage)|r
step
#label Soulwrath
.goto Western Plaguelands,62.66,58.94
>>Kill |cRXP_ENEMY_Cauldron Lord Soulwrath|r. Loot him for the |cRXP_LOOT_Gahrron's Withering Cauldron Key|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Cauldron Lord Soulwrath|r casts|r |T136197:0|t[Putrid Stench] |cRXP_WARN_(Reduces Agility by 50 >>>AND SILENCES YOU FOR 10 SECONDS<<<)|r
.complete 5225,1 
.mob Cauldron Lord Soulwrath
step
#label Gahrron
.goto Western Plaguelands,62.54,58.49
>>Click the |cRXP_PICK_Scourge Cauldron|r
>>|cRXP_WARN_This has a 5 second cast time|r
.turnin 5225 >>Turn in Target: Gahrron's Withering
.accept 5226 >>Accept Return to Chillwind Camp
step
.goto Western Plaguelands,64.73,54.49,70,0
.goto Western Plaguelands,67.16,55.40,70,0
.goto Western Plaguelands,65.90,52.94,70,0
.goto Western Plaguelands,63.59,47.10,70,0
.goto Western Plaguelands,65.70,44.29,70,0
.goto Western Plaguelands,67.05,45.05,70,0
.goto Western Plaguelands,68.14,46.97,70,0
.goto Western Plaguelands,67.03,50.00
>>AoE |cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Diseased Grizzlies|r cast |T136066:0|t[Infected Wound] |cRXP_WARN_(Increases physical damage taken by 12)|r
.complete 4985,1 
.mob Diseased Grizzly
step
#completewith Insignias
+|cRXP_WARN_Be careful as |cRXP_ENEMY_Duskwing|r patrols around the area. Run away from him if you aggro him|r
.unitscan Duskwing
step
.goto Eastern Plaguelands,27.15,74.96
>>Open the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_[SI:7 Insignia (Fredo)]|r
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_Keep a VERY close eye on the |cRXP_ENEMY_Blighthounds|r as they can patrol on top of the |cRXP_PICK_Mangled Human Remains|r. If you aggro them,|r |T135736:0|t[Blink] |cRXP_WARN_and run away (roots and slows do not work on them)|r
.complete 6185,2 
.mob Blighthound
step
.goto Eastern Plaguelands,28.80,74.88
>>Open the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_[SI:7 Insignia (Turyen)]|r
>>|cRXP_WARN_This has a 5 second cast time|r
.complete 6185,3 
step
#label Insignias
.goto Eastern Plaguelands,28.80,79.86
>>Open the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_[SI:7 Insignia (Rutger)]|r
>>|cRXP_WARN_This has a 5 second cast time|r
.complete 6185,1 
step
.goto Eastern Plaguelands,36.42,90.82
>>Talk to |cRXP_FRIENDLY_Pamela|r
.turnin 5142 >> Turn in Little Pamela
.accept 5149 >> Accept Pamela's Doll
.target Pamela Redpath
step
.goto Eastern Plaguelands,38.50,92.11,8,0
.goto Eastern Plaguelands,39.49,92.32,20,0
.goto Eastern Plaguelands,39.51,90.25,8,0
#loop
.line Eastern Plaguelands,38.50,92.11,39.49,92.32,39.51,90.25
.goto Eastern Plaguelands,38.50,92.11,15,0
.goto Eastern Plaguelands,39.49,92.32,15,0
.goto Eastern Plaguelands,39.51,90.25,15,0
>>Check the houses of Darrowshire for parts of |cRXP_LOOT_Pamela's Doll|r
>>Open the |T134230:0|t[|cRXP_PICK_Pamela's Doll's Parts|r] on the ground. Loot them for |T134164:0|t[|cRXP_LOOT_Pamela's Doll's Head|r], |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Left Side|r], and |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Right Side|r]
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_Be careful as running near the|r |T134230:0|t[Pamela's Doll's Parts] |cRXP_WARN_spawns |cRXP_ENEMY_Ghosts of the Past|r. AoE them. They cast|r |T135849:0|t[Frost Shock] |cRXP_WARN_(instantly deals 300 frost damage and slows for 8 seconds). They give 0 xp|r
.collect 12886,1,5149,1 
.collect 12887,1,5149,1 
.collect 12888,1,5149,1 
.mob Ghost of the Past
step
#completewith next
>>Use any of |T134230:0|t[Pamela's Doll's Parts] to combine them into |cRXP_LOOT_Pamela's Doll|r
.complete 5149,1 
.use 12886 
.use 12887 
.use 12888 
step
.goto Eastern Plaguelands,36.42,90.82
>>Talk to |cRXP_FRIENDLY_Pamela|r
.turnin 5149 >> Turn in Pamela's Doll
.accept 5152 >> Accept Auntie Marlene
.accept 5241 >> Accept Uncle Carlin
.target Pamela Redpath
step
.goto Eastern Plaguelands,79.39,63.95,8,0
.goto Eastern Plaguelands,79.48,63.90
>>Talk to |cRXP_FRIENDLY_Alen|r
.accept 5281 >> Accept The Restless Souls
.target Caretaker Alen
step
.goto Eastern Plaguelands,36.42,90.82
+Talk to |cRXP_FRIENDLY_Zverenhoff|r until you run out of |T133447:0|t[Minion's Scourgestones]
>>|cRXP_WARN_Save one of the|r |T133441:0|t[Argent Dawn Valor Tokens] |cRXP_WARN_for later|r
.dailyturnin 5510 >> Turn in Minion's Scourgestones
.disablecheckbox
.target Duke Nicholas Zverenhoff
.itemcount 12840,20 
step
.goto Eastern Plaguelands,81.52,59.76
>>Talk to |cRXP_FRIENDLY_Carlin|r
.turnin 5241 >> Turn in Uncle Carlin
.target Carlin Redpath
step
.goto Eastern Plaguelands,81.63,59.28
>>Talk to |cRXP_FRIENDLY_Khaelyn|r
.fp Light's Hope Chapel >> Get the Light's Hope Chapel flight path
.target Khaelyn Steelwing
step
#completewith Digs
.goto Eastern Plaguelands,81.18,58.56,8,0
.goto Eastern Plaguelands,81.43,58.51,6 >>Go inside the Chapel
step
>>Talk to |cRXP_FRIENDLY_Rohan|r and |cRXP_FRIENDLY_Korfax|r
.accept 9126 >> Accept Bonescythe Digs
.turnin 9126 >> Turn in Bonescythe Digs
.target +Rohan the Assassin
.goto Eastern Plaguelands,81.43,58.51
.accept 9131 >> Accept Binding the Dreadnaught
.turnin 9131 >> Turn in Binding the Dreadnaught
.goto Eastern Plaguelands,81.80,58.08
.target +Korfax, Champion of the Light
.itemcount 22528,30 
step
#label Digs
.goto Eastern Plaguelands,81.43,58.51
>>Talk to |cRXP_FRIENDLY_Rohan|r
.accept 9126 >> Accept Bonescythe Digs
.turnin 9126 >> Turn in Bonescythe Digs
.target Rohan the Assassin
step
.goto Eastern Plaguelands,81.05,57.55
>>Talk to |cRXP_FRIENDLY_Metz|r
.accept 9141 >> Accept They Call Me "The Rooster"
.turnin 9141 >> Turn in They Call Me "The Rooster"
.target Dispatch Commander Metz
.itemcount 12844,1 
step
#loop
.line Eastern Plaguelands,43.23,39.90,38.74,34.92,36.92,34.08,37.55,32.36,28.64,36.33,28.17,35.46,22.30,33.64,21.80,29.26,36.32,24.85,44.16,29.33,42.82,34.27,43.23,39.90
.goto Eastern Plaguelands,43.23,39.90,50,0
.goto Eastern Plaguelands,38.74,34.92,50,0
.goto Eastern Plaguelands,36.92,34.08,50,0
.goto Eastern Plaguelands,37.55,32.36,50,0
.goto Eastern Plaguelands,28.64,36.33,50,0
.goto Eastern Plaguelands,28.17,35.46,50,0
.goto Eastern Plaguelands,22.30,33.64,50,0
.goto Eastern Plaguelands,21.80,29.26,50,0
.goto Eastern Plaguelands,36.32,24.85,50,0
.goto Eastern Plaguelands,44.16,29.33,50,0
.goto Eastern Plaguelands,42.82,34.27,50,0
.goto Eastern Plaguelands,43.23,39.90,50,0
>>Open the |cRXP_PICK_Large Termite Mounds|r on the ground around Plaguewood. Loot them for |cRXP_LOOT_Plaguewood Termites|r
>>|cRXP_WARN_This has a 5 second cast time|r
.complete 5903,1 
step
.goto Eastern Plaguelands,14.45,33.74
>>Talk to |cRXP_FRIENDLY_Egan|r inside
.turnin 5281 >> Turn in The Restless Souls
.target Egan
step
#completewith next
.hs >> Hearth to Southshore
step
.goto Hillsbrad Foothills,49.34,52.27
>>Talk to |cRXP_FRIENDLY_Darla|r
.fly Chillwind Camp >> Fly to Chillwind Camp
.target Darla Harris
.zoneskip Western Plaguelands
step
>>Talk to |cRXP_FRIENDLY_Nathaniel|r, |cRXP_FRIENDLY_Flint|r, |cRXP_FRIENDLY_MacDonnell|r, |cRXP_FRIENDLY_Ashlam|r, and |cRXP_FRIENDLY_Arbington|r
.turnin 5903 >> Turn in A Plague Upon Thee
.accept 5904 >> Accept A Plague Upon Thee
.target +Nathaniel Dumah
.goto Western Plaguelands,43.42,84.83
.turnin 6185 >>Turn in The Eastern Plagues
.accept 6186 >>Accept The Blightcaller Cometh
.target +Flint Shadowmore
.goto Western Plaguelands,43.61,84.50
.turnin 5226 >>Turn in Return to Chillwind Camp
.target +High Priestess MacDonnell
.goto Western Plaguelands,42.97,84.50
.turnin 5237,1 >>Turn in Mission Accomplished!
.target +Commander Ashlam Valorfist
.goto Western Plaguelands,42.70,84.03
.turnin 5537 >>Turn in Skeletal Fragments
.goto Western Plaguelands,42.66,83.78
.target +Alchemist Arbington
step
.goto Western Plaguelands,49.28,78.54,8,0
.goto Western Plaguelands,49.15,78.99,6,0
.goto Western Plaguelands,49.15,78.45
>>Talk to |cRXP_FRIENDLY_Marlene|r inside
>>|cRXP_WARN_She can be on either floor|r
.turnin 5152 >> Turn in Auntie Marlene
.accept 5153 >> Accept A Strange Historian
.target Marlene Redpath
step
.goto Western Plaguelands,49.70,76.75
>>Open |cRXP_PICK_Joseph Redpath's Monument|r on the ground. Loot it for |cRXP_LOOT_Joseph's Wedding Ring|r
>>|cRXP_WARN_This has a 5 second cast time|r
.complete 5153,1 
step
.goto Western Plaguelands,53.73,64.66
>>Talk to |cRXP_FRIENDLY_Mulgris|r inside
>>|cRXP_WARN_Be careful as nearby |cRXP_ENEMY_Freezing Ghouls|r cast|r |T135848:0|t[Flash Freeze] |cRXP_WARN_10-yard range aoe instant stun for 5 seconds)|r
.turnin 4985 >> Turn in The Wildlife Suffers Too
.accept 4986 >> Accept Glyphed Oaken Branch
.target Mulgris Deepriver
step
#completewith next
.goto Western Plaguelands,44.70,34.23,50,0
+AoE |cRXP_ENEMY_Scarlet Lumberjacks|r and |cRXP_ENEMY_Scarlet Knights|r en route to the |cRXP_PICK_Termite Barrel|r
>>|cRXP_WARN_Try to avoid pulling|r |cRXP_ENEMY_High Protector Tarsen|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scarlet Lumberjacks|r cast|r |T132939:0|t[Cleave] |cRXP_WARN_(Deals an additional 50 damage), and|r |T132109:0|t[Rend] |cRXP_WARN_(deals 31 damage every 3 seconds for 15 seconds). |cRXP_ENEMY_Foreman Macrid|r (rare) that could be there casts|r |T132366:0|t[Call For Help] |cRXP_WARN_(Aggros nearby allies in a 75 yard radius at <50% health. |cRXP_ENEMY_High Protector Tarsen|r casts|r |T132325:0|t[Holy Strike] |cRXP_WARN_(deals 300 melee Holy Damage), and |r |T135807:0|t[Arcane Blast] |cRXP_WARN_(deals 100 ranged Arcane Damage). |cRXP_ENEMY_Scarlet Knights|r and |cRXP_ENEMY_High Protector Tarsen|r cast|r |T132109:0|t[Shield Slam] |cRXP_WARN_(deals 50 damage and stuns for 2 seconds)|r
.mob Scarlet Lumberjack
.mob Scarlet Knight
.unitscan Foreman Macrid
.unitscan High Protector Tarsen
step
.goto Western Plaguelands,48.35,32.00
>>Click the |cRXP_PICK_Northridge Lumber Mill Crate|r to summon the |cRXP_PICK_Termite Barrel|r on top of it. Click it
.turnin 5904 >> Turn in A Plague Upon Thee
.accept 6389 >> Accept A Plague Upon Thee
.skipgossip
step
.goto Western Plaguelands,51.92,28.06
>>Talk to |cRXP_FRIENDLY_Kirsta|r
.accept 6004 >> Accept Unfinished Business
.target Kirsta Deepshadow
.xp >59+132800,1
step
#completewith next
.goto Western Plaguelands,52.71,35.51,10,0
.goto Western Plaguelands,51.02,40.17,50,0
.goto Western Plaguelands,50.24,41.57,50,0
>>AoE |cRXP_ENEMY_Scarlet Mages|r, |cRXP_ENEMY_Scarlet Knights|r, and |cRXP_ENEMY_Scarlet Avengers|r
>>|cRXP_WARN_Be careful of the patrolling |cRXP_ENEMY_Scarlet Spellbinders|r. Avoid them - Run away if you aggro them|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scarlet Mages|r cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_(slows and deals about 225 frost damage),|r |T135812:0|t[Fireball] |cRXP_WARN_(Deals about 400 fire damage), and|r |T135848:0|t[Frost Nova] |cRXP_WARN_(Deals 100 frost damage and roots for 8 seconds). |cRXP_ENEMY_Scarlet Knights|r cast|r |T132109:0|t[Shield Slam] |cRXP_WARN_(deals 50 damage and stuns for 2 seconds), |r |cRXP_ENEMY_Scarlet Avengers|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds), and |cRXP_ENEMY_Scarlet Spellbinders|r cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_(slows and deals about 300 frost damage), and|r |T136091:0|t[Slow] |cRXP_WARN_(reduces movespeed by 60% for 10 seconds)|r
.complete 6004,3 
.mob +Scarlet Mage
.complete 6004,4 
.mob +Scarlet Knight
.mob *Scarlet Avenger
.isOnQuest 6004
step
.goto Western Plaguelands,51.62,43.75,50,0
.goto Western Plaguelands,52.09,44.91,50,0
.goto Western Plaguelands,47.17,51.41,50,0
.goto Western Plaguelands,40.74,52.47,50,0
.goto Western Plaguelands,51.62,43.75,50,0
.goto Western Plaguelands,52.09,44.91,50,0
.goto Western Plaguelands,47.17,51.41,50,0
.goto Western Plaguelands,40.74,52.47
>>AoE |cRXP_ENEMY_Scarlet Medics|r and |cRXP_ENEMY_Scarlet Hunters|r
>>|cRXP_WARN_You may have to check Dalson's Tears and the camp near Felstone Field as the tent near the Northridge Lumber Camp has shared spawns|r
>>|cRXP_WARN_Try to avoid killing |cRXP_ENEMY_Scarlet Invokers|r as they cast|r |T135907:0|t[Arcane Missiles] |cRXP_WARN_(Deals 180 damage every second)|r
>>Be careful as |cRXP_ENEMY_Scarlet Medics|r cast|r |T135907:0|t[Flash Heal] |cRXP_WARN_(Heals for about 700), and |cRXP_ENEMY_Scarlet Hunters|r cast|r |T132203:0|t[Summon Scarlet Hound] |cRXP_WARN_(Summons a Scarlet Hound Pet (3k health normal mob)), and|r |T132222:0|t[Shoot] |cRXP_WARN_(Deals about 100 ranged damage)|r
.complete 6004,1 
.mob +Scarlet Medic
.complete 6004,2 
.mob +Scarlet Hunter
.mob *Scarlet Hound
.isOnQuest 6004
step
.goto Western Plaguelands,50.24,41.57,50,0
.goto Western Plaguelands,51.02,40.17,50,0
.goto Western Plaguelands,53.39,36.66,50,0
.goto Western Plaguelands,57.46,35.97,50,0
.goto Western Plaguelands,50.24,41.57,50,0
.goto Western Plaguelands,51.02,40.17,50,0
.goto Western Plaguelands,53.39,36.66,50,0
.goto Western Plaguelands,57.46,35.97,50,0
.goto Western Plaguelands,50.24,41.57,50,0
.goto Western Plaguelands,51.02,40.17
>>AoE |cRXP_ENEMY_Scarlet Mages|r, |cRXP_ENEMY_Scarlet Knights|r, and |cRXP_ENEMY_Scarlet Avengers|r
>>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Scarlets|r have shared spawns|r
>>|cRXP_WARN_Do NOT kill |cRXP_ENEMY_Huntsman Radley|r yet|r
>>|cRXP_WARN_Be careful of the patrolling |cRXP_ENEMY_Scarlet Spellbinders|r. Avoid them - Run away if you aggro them|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scarlet Mages|r cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_(slows and deals about 225 frost damage),|r |T135812:0|t[Fireball] |cRXP_WARN_(Deals about 400 fire damage), and|r |T135848:0|t[Frost Nova] |cRXP_WARN_(Deals 100 frost damage and roots for 8 seconds). |cRXP_ENEMY_Scarlet Knights|r cast|r |T132109:0|t[Shield Slam] |cRXP_WARN_(deals 50 damage and stuns for 2 seconds), and|r |cRXP_ENEMY_Scarlet Avengers|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
.complete 6004,3 
.mob +Scarlet Mage
.complete 6004,4 
.mob +Scarlet Knight
.mob *Scarlet Avenger
.isOnQuest 6004
step
.goto Western Plaguelands,51.92,28.06
>>Talk to |cRXP_FRIENDLY_Kirsta|r
.turnin 6004 >> Turn in Unfinished Business
.accept 6023 >> Accept Unfinished Business
.target Kirsta Deepshadow
.xp >59+132800,1
.isQuestComplete 6004
step
.goto Western Plaguelands,51.92,28.06
>>Talk to |cRXP_FRIENDLY_Kirsta|r
.turnin 6004 >> Turn in Unfinished Business
.target Kirsta Deepshadow
.isQuestComplete 6004
step
.goto Western Plaguelands,51.92,28.06
>>Talk to |cRXP_FRIENDLY_Kirsta|r
.accept 6023 >> Accept Unfinished Business
.target Kirsta Deepshadow
.xp >59+132800,1
.isQuestTurnedIn 6004
step
#completewith next
.goto Western Plaguelands,52.71,35.51,10,0
.goto Western Plaguelands,50.38,36.53,50,0
.goto Western Plaguelands,57.82,36.10,50 >>Travel toward |cRXP_ENEMY_Huntsman Radley|r
step
.goto Western Plaguelands,57.82,36.10
>>AoE |cRXP_ENEMY_Huntsman Radley|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Huntsman Radley|r casts |T132222:0|t[Shoot] |cRXP_WARN_(Deals about 100 ranged damage).|r |cRXP_ENEMY_Scarlet Spellbinders|r cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_(slows and deals about 300 frost damage),|r |T136091:0|t[Slow] |cRXP_WARN_(reduces movespeed by 60% for 10 seconds), and |cRXP_ENEMY_Scarlet Avengers|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
.complete 6023,1 
.mob Huntsman Radley
.isOnQuest 6023
step
.goto Western Plaguelands,54.99,23.38
>>AoE |cRXP_ENEMY_Cavalier Durgen|r
>>|cRXP_WARN_He patrols up, down, and around the tower|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Cavalier Durgen|r casts|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_(Stuns for 3 seconds), and|r |T132325:0|t[Holy Strike] |cRXP_WARN_(Deals 250 Holy Damage).|r |cRXP_ENEMY_Scarlet Spellbinders|r cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_(slows and deals about 300 frost damage),|r |T136091:0|t[Slow] |cRXP_WARN_(reduces movespeed by 60% for 10 seconds), and |cRXP_ENEMY_Scarlet Avengers|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
>>|cRXP_WARN_Be careful of the |cRXP_ENEMY_Scarlet High Clerist|r that can spawn atop the tower. Wait for |cRXP_ENEMY_Cavalier Durgen|r to patrol back down if he's up top with him|r
.complete 6023,2 
.mob Cavalier Durgen
.isOnQuest 6023
step
.goto Western Plaguelands,51.92,28.06
>>Talk to |cRXP_FRIENDLY_Kirsta|r
.turnin 6023 >> Turn in Unfinished Business
.accept 6025 >> Accept Unfinished Business
.target Kirsta Deepshadow
.xp >59+132800,1
.isQuestComplete 6023
step
.goto Western Plaguelands,51.92,28.06
>>Talk to |cRXP_FRIENDLY_Kirsta|r
.turnin 6023 >> Turn in Unfinished Business
.target Kirsta Deepshadow
.isQuestComplete 6023
step
.goto Western Plaguelands,51.92,28.06
>>Talk to |cRXP_FRIENDLY_Kirsta|r
.accept 6025 >> Accept Unfinished Business
.target Kirsta Deepshadow
.xp >59+132800,1
.isQuestTurnedIn 6023
step
#completewith Tower
+|cRXP_WARN_Avoid pulling |cRXP_ENEMY_High Protector Lorik|r en route (he patrols all of Hearthglen, making it difficult to lose his leash)|r
.unitscan High Protector Lorik
step
#completewith next
.goto Western Plaguelands,50.08,29.22,25,0
.goto Western Plaguelands,50.29,25.61,15,0
.goto Western Plaguelands,50.64,24.87,15 >>Take the mountain shortcut up to Hearthglen
step
#completewith next
.goto Western Plaguelands,46.98,20.90,50,0
.goto Western Plaguelands,45.78,20.37,40,0
>>|cRXP_WARN_Run away from any |cRXP_ENEMY_Scarlets|r you pull en route|r
.goto Western Plaguelands,44.77,18.12,15 >>Travel toward Hearthglen's Tower
step
#label Tower
.goto Western Plaguelands,45.75,18.49
>>|cRXP_WARN_Be careful of the |cRXP_ENEMY_Scarlet Paladins|r at the base of the tower as they cast|r |T132325:0|t[Holy Strike] |cRXP_WARN_(deals 475 melee Holy Damage), and the |cRXP_ENEMY_Scarlet Executioner|r (rare) that could be there casts|r |T135358:0|t[Execute] |cRXP_WARN_(Kills you if cast when you're at <20% health)|r
>>|cRXP_WARN_Pre-cast|r |T135988:0|t[Ice Barrier] |cRXP_WARN_and|r |T136153:0|t[Mana Shield]
>>|cRXP_WARN_Pull the |cRXP_ENEMY_Scarlet Executioner|r (if he's up) with|r |T135856:0|t[Counterspell]|cRXP_WARN_, then cast|r |T135848:0|t[Frost Nova] |cRXP_WARN_to root them|r
>>|cRXP_WARN_Run to the top of the tower whilst using|r |T135988:0|t[Ice Barrier] |cRXP_WARN_and|r |T136153:0|t[Mana Shield] |cRXP_WARN_when available, then jump off the south side. Cast|r |T135736:0|t[Blink] |cRXP_WARN_before hitting the ground|r
.complete 6025,1 
.isOnQuest 6025
step
.goto Western Plaguelands,51.92,28.06
>>Talk to |cRXP_FRIENDLY_Kirsta|r
.turnin 6025 >> Turn in Unfinished Business
.target Kirsta Deepshadow
.isQuestComplete 6025
step
#completewith next
.goto Western Plaguelands,44.70,34.23,50,0
+AoE |cRXP_ENEMY_Scarlet Lumberjacks|r and |cRXP_ENEMY_Scarlet Knights|r en route to Dalson's Tears
>>|cRXP_WARN_Try to avoid pulling|r |cRXP_ENEMY_High Protector Tarsen|r
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scarlet Lumberjacks|r cast|r |T132939:0|t[Cleave] |cRXP_WARN_(Deals an additional 50 damage), and|r |T132109:0|t[Rend] |cRXP_WARN_(deals 31 damage every 3 seconds for 15 seconds). |cRXP_ENEMY_Foreman Macrid|r (rare) that could be there casts|r |T132366:0|t[Call For Help] |cRXP_WARN_(Aggros nearby allies in a 75 yard radius at <50% health. |cRXP_ENEMY_High Protector Tarsen|r casts|r |T132325:0|t[Holy Strike] |cRXP_WARN_(deals 300 melee Holy Damage), and |r |T135807:0|t[Arcane Blast] |cRXP_WARN_(deals 100 ranged Arcane Damage). |cRXP_ENEMY_Scarlet Knights|r and |cRXP_ENEMY_High Protector Tarsen|r cast|r |T132109:0|t[Shield Slam] |cRXP_WARN_(deals 50 damage and stuns for 2 seconds)|r
.mob Scarlet Lumberjack
.mob Scarlet Knight
.unitscan Foreman Macrid
.unitscan High Protector Tarsen
step
#label Level59
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,47.24,49.88,,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,47.24,49.88,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
.xp 59+132800 >>AoE |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Rotting Cadavers|r, |cRXP_ENEMY_Skeletal Terrors|r, and the |cRXP_ENEMY_Wandering Skeleton|r to 132800+/209800xp. Loot them for |T132903:0|t[|cRXP_LOOT_Runecloth|r] and |T133447:0|t[|cRXP_LOOT_Minion's Scourgestones|r]
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blighted Zombies|r cast|r |T135914:0|t[Volatile Infection] |cRXP_WARN_(deals 156 nature damage every 15 seconds, causing pushback, dispellable with|r |T135841:0|t[Ice Block]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Terrors|r cast|r |T136183:0|t[Fear]|cRXP_WARN_, (Fearing you for 4 seconds IF they've been rooted by|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Remember to|r |T135736:0|t[Blink] |cRXP_WARN_out of range of their cast if needed|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r. If you do, run away|r
.collect 14047,240 
.disablecheckbox
.collect 12840,1000 
.disablecheckbox
.mob Blighted Zombie
.mob Rotting Cadaver
.mob Skeletal Terror
.mob Wandering Skeleton
step
#completewith next
+|cRXP_WARN_NOTE: You do not need to kill anything from now on in order to ding 60 from quests until the end|r
step
#completewith next
.goto Western Plaguelands,39.60,68.35,8,0
.goto Western Plaguelands,39.84,67.44,8,0
.goto Western Plaguelands,39.81,67.24,5,0
.goto Western Plaguelands,39.66,67.53,5,0
.goto Western Plaguelands,39.49,67.18,8,0
.goto Western Plaguelands,39.46,66.76,10 >>Enter the Inn. Travel towards |cRXP_FRIENDLY_Chromie|r
step
.goto Western Plaguelands,39.46,66.76
>>Talk to |cRXP_FRIENDLY_Chromie|r upstairs
.turnin 5153 >> Turn in A Strange Historian
.accept 5154 >> Accept The Annals of Darrowshire
.target Kirsta Deepshadow
step
#completewith next
.goto Western Plaguelands,43.822,69.250,10,0 >> Enter the Ruins of Andorhal Town Hall
.link https://youtu.be/GUb1Ny4NwQw >> |cRXP_WARN_Click here for video reference on how to enter the Town Hall safely|r
step
#loop
.line Western Plaguelands,43.60,69.98,43.46,70.12,43.38,69.98,43.39,69.69,43.37,69.51,43.40,69.22,43.42,68.78,43.59,68.81,43.53,69.10,43.59,69.30,43.60,69.98
.goto Western Plaguelands,43.60,69.98,8,0
.goto Western Plaguelands,43.46,70.12,8,0
.goto Western Plaguelands,43.38,69.98,8,0
.goto Western Plaguelands,43.39,69.69,8,0
.goto Western Plaguelands,43.37,69.51,8,0
.goto Western Plaguelands,43.40,69.22,8,0
.goto Western Plaguelands,43.42,68.78,8,0
.goto Western Plaguelands,43.59,68.81,8,0
.goto Western Plaguelands,43.53,69.10,8,0
.goto Western Plaguelands,43.59,69.30,8,0
.goto Western Plaguelands,43.60,69.98,8,0
>>Open the |cRXP_PICK_Musty Tomes|r inside on the ground. Loot it for the |cRXP_LOOT_Annals of Darrowshire|r
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_Hover over the |cRXP_PICK_Musty Tomes|r with your mouse to check their page colours. If they're both the same colour, it's a real |cRXP_LOOT_Annals of Darrowshire|r and you should open it. If it's not real, it will spawn a |cRXP_ENEMY_Decrepit Guardian|r when opened that you must kill and gives 0 xp|r
>>|cRXP_WARN_You may get unlucky and there would be no |cRXP_LOOT_Annals of Darrowshire|r up. If so, open a few fake |cRXP_PICK_Musty Tomes|r and check their respawns after|r
.complete 5154,1 
.link https://i.imgur.com/B2HDb6K.png >> CLICK HERE for visual example
step
#completewith next
.goto Western Plaguelands,39.60,68.35,8,0
.goto Western Plaguelands,39.84,67.44,8,0
.goto Western Plaguelands,39.81,67.24,5,0
.goto Western Plaguelands,39.66,67.53,5,0
.goto Western Plaguelands,39.49,67.18,8,0
.goto Western Plaguelands,39.46,66.76,10 >>Enter the Inn. Travel towards |cRXP_FRIENDLY_Chromie|r
step
.goto Western Plaguelands,39.46,66.76
>>Talk to |cRXP_FRIENDLY_Chromie|r
.turnin 5154 >> Turn in The Annals of Darrowshire
.target Kirsta Deepshadow
step
.goto Western Plaguelands,42.97,83.55
+Talk to |cRXP_FRIENDLY_Pureheart|r until you run out of |T133447:0|t[Minion's Scourgestones]
.dailyturnin 5402 >> Turn in Minion's Scourgestones
.disablecheckbox
.target Argent Officer Pureheart
.itemcount 12840,20 
step
.goto Western Plaguelands,42.84,83.71
>>Talk to |cRXP_FRIENDLY_Lightspark|r
.vendor 10857 >> Vendor Trash (and all your food if you aren't playing this character at 60). Repair
.target Argent Quartermaster Lightspark
step
.goto Western Plaguelands,43.42,84.83
>>Talk to |cRXP_FRIENDLY_Nathaniel|r
.turnin 6389 >> Turn in A Plague Upon Thee
.target Nathaniel Dumah
step
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step
#completewith next
.goto Stormwind City,36.30,82.90,6 >>Go through the green portal
step
#completewith Bank
.goto Stormwind City,55.30,68.16,10 >>Enter the Stormwind Bank
step
.goto Stormwind City,57.03,72.97
>>Talk to |cRXP_FRIENDLY_Newton|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later|r
>>|cRXP_WARN_Withdraw 9 stacks of each cloth now: (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_)|r
.collect 2592,180 
.collect 4306,180 
.collect 4338,180 
.collect 14047,180 
.target Newton Burnside
step
#completewith next
.goto Stormwind City,44.42,73.84,8,0
.goto Stormwind City,44.28,74.01,8 >>Travel toward |cRXP_FRIENDLY_Clavicus|r
step
.goto Stormwind City,44.28,74.01
>>Talk to |cRXP_FRIENDLY_Clavicus|r inside on the 2nd floor
>>|cRXP_WARN_Jump up from the doorway whilst spamming your "Interact with Target" keybind|r
>>|cRXP_WARN_Make sure you turn off the automatic turnin functionality of other addons you may have so you don't accidentally turn in extra|r |T132903:0|t[Runecloth]
.turnin 7791 >> Turn in A Donation of Wool
.turnin 7793 >> Turn in A Donation of Silk
.turnin 7794 >> Turn in A Donation of Mageweave
.turnin 7795 >> Turn in A Donation of Runecloth
.target Clavicus Knavingham
step
#completewith next
.goto Stormwind City,70.24,27.24,30,0
.goto Stormwind City,78.22,17.98,12 >>Travel toward |cRXP_FRIENDLY_Bolvar|r
step
.goto Stormwind City,78.22,17.98
>>Talk to |cRXP_FRIENDLY_Bolvar|r
.turnin 6186 >> Turn in The Blightcaller Cometh
.target Highlord Bolvar Fordragon
step
#completewith Gnomes
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
#completewith next
.goto Ironforge,33.05,63.11,20,0
.goto Ironforge,35.93,60.13,30 >>Enter the Ironforge Bank
step
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
>>|cRXP_WARN_NOTE: You need 9 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later|r
>>|cRXP_WARN_Withdraw 6 stacks of each cloth now: (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_)|r
.collect 2592,120 
.collect 4306,120 
.collect 4338,120 
.collect 14047,120 
.target Bailey Stonemantle
step << skip
#completewith next
+|cRXP_WARN_Get ready to Logout Skip on the cart behind |cRXP_FRIENDLY_Mistina|r soon|r
step
.goto Ironforge,43.21,31.57
>>Talk to |cRXP_FRIENDLY_Mistina|r
.turnin 7802 >> Turn in A Donation of Wool
.turnin 7803 >> Turn in A Donation of Silk
.turnin 7804 >> Turn in A Donation of Mageweave
.turnin 7805 >> Turn in A Donation of Runecloth
.target Mistina Steelshield
step << skip
#completewith next
.goto Ironforge,42.66,31.19
.goto Ironforge,76.41,51.22,10 >>|cRXP_WARN_Logout skip from on top of the cart|r
step
.goto Ironforge,72.67,49.23,10,0
.goto Ironforge,72.85,47.81,10,0
.goto Ironforge,74.09,48.23
>>Talk to |cRXP_FRIENDLY_Bubulo|r
.turnin 7807 >> Turn in A Donation of Wool
.turnin 7808 >> Turn in A Donation of Silk
.turnin 7809 >> Turn in A Donation of Mageweave
.turnin 7811 >> Turn in A Donation of Runecloth
.target Bubulo Acerbus
step
#completewith next
#label GrythTravel
.goto Ironforge,71.73,45.95,30,0
.goto Ironforge,69.93,34.13,30,0
.goto Ironforge,63.03,30.09,30,0
.goto Ironforge,57.78,35.11,30,0
.goto Ironforge,55.49,47.74,10 >>Travel toward |cRXP_FRIENDLY_Gryth|r
step
#completewith next
.goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth|r
.fly Menethil >> Fly to Menethil Harbor
.target Gryth Thurden
step
#completewith next
#requires GrythTravel
.goto Wetlands,6.09,58.45,30,0
.goto Wetlands,4.50,57.02,30 >>Travel toward the Darkshore Boat
step
#requires GrythTravel
.goto Wetlands,4.25,57.21
.zone Darkshore >> Take the boat to Darkshore
step
#completewith next
>>|cRXP_WARN_Jump off the boat. Swim toward the shore (remember to use|r |T135736:0|t[Blink]|cRXP_WARN_)|r
.goto Darkshore,36.34,45.58,10 >>Travel toward |cRXP_FRIENDLY_Caylais|r
step
.goto Darkshore,36.34,45.58
>>Talk to |cRXP_FRIENDLY_Caylais|r
.fly Teldrassil >> Fly to Teldrassil
.target Caylais Moonfeather
step
#completewith Raedon
.goto Teldrassil,55.95,89.86,30 >> Go through the purple portal
step
.goto Darnassus,39.89,42.14
>>Talk to |cRXP_FRIENDLY_Idriana|r, |cRXP_FRIENDLY_Garryeth|r, or Lairn|r
>>|cRXP_WARN_NOTE: You need 3 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later|r
>>|cRXP_WARN_Withdraw 3 stacks of each cloth now: (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_)|r
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
.target Idriana
.target Garryeth
.target Lairn
step
#completewith next
.goto Darnassus,52.42,39.54,30,0
.goto Darnassus,61.37,23.74,30,0
.goto Darnassus,64.02,22.99,12 >>Travel toward |cRXP_FRIENDLY_Raedon|r
step
#label Raedon
.goto Darnassus,64.02,22.99
>>Talk to |cRXP_FRIENDLY_Raedon|r
.turnin 7792 >> Turn in A Donation of Wool
.turnin 7798 >> Turn in A Donation of Silk
.turnin 7799 >> Turn in A Donation of Mageweave
.turnin 7800 >> Turn in A Donation of Runecloth
.target Raedon Duskstriker
step
#completewith next
.goto Darnassus,36.26,11.69,12,0
.goto Darnassus,35.38,10.05,12,0
.goto Darnassus,33.96,7.16,8 >>Travel toward |cRXP_FRIENDLY_Mathrengyl|r
step
.goto Darnassus,35.38,8.40
>>Talk to |cRXP_FRIENDLY_Mathrengyl|r inside on the 2nd floor
.turnin 4986 >> Turn in Glyphed Oaken Branch
.target Mathrengyl Bearwalker
step
#completewith next
.hs >> Hearth to Southshore
.xp >60,1
step
.goto Hillsbrad Foothills,49.34,52.27
>>Talk to |cRXP_FRIENDLY_Darla|r
.fly Chillwind Camp >> Fly to Chillwind Camp
.target Darla Harris
.zoneskip Western Plaguelands
.xp >60,1
step
.goto Western Plaguelands,42.97,83.55
+Talk to |cRXP_FRIENDLY_Pureheart|r until you run out of |T133447:0|t[Minion's Scourgestones]
.dailyturnin 5402 >> Turn in Minion's Scourgestones
.disablecheckbox
.target Argent Officer Pureheart
.itemcount 12840,20 
.xp >60,1
step
#loop
.line Western Plaguelands,48.16,53.08,46.45,52.33,46.90,54.13,46.06,56.09,44.85,54.51,45.69,53.33,46.13,52.37,46.18,51.41,45.04,51.59,44.92,52.85,45.62,50.32,46.36,49.48,46.83,49.67,46.97,50.51,47.24,49.88,,46.97,50.51,46.83,49.67,47.44,49.31,47.76,50.05,48.31,50.60,48.05,51.56,48.16,53.08
.goto Western Plaguelands,48.16,53.08,25,0
.goto Western Plaguelands,46.45,52.33,25,0
.goto Western Plaguelands,46.90,54.13,25,0
.goto Western Plaguelands,46.06,56.09,25,0
.goto Western Plaguelands,44.85,54.51,25,0
.goto Western Plaguelands,45.69,53.33,25,0
.goto Western Plaguelands,46.13,52.37,25,0
.goto Western Plaguelands,46.18,51.41,25,0
.goto Western Plaguelands,45.04,51.59,25,0
.goto Western Plaguelands,44.92,52.85,25,0
.goto Western Plaguelands,45.62,50.32,25,0
.goto Western Plaguelands,46.36,49.48,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,47.24,49.88,25,0
.goto Western Plaguelands,46.97,50.51,25,0
.goto Western Plaguelands,46.83,49.67,25,0
.goto Western Plaguelands,47.44,49.31,25,0
.goto Western Plaguelands,47.76,50.05,25,0
.goto Western Plaguelands,48.31,50.60,25,0
.goto Western Plaguelands,48.05,51.56,25,0
.goto Western Plaguelands,48.16,53.08,25,0
.xp 60 >>AoE |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Rotting Cadavers|r, |cRXP_ENEMY_Skeletal Terrors|r, and the |cRXP_ENEMY_Wandering Skeleton|r to Level 60
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blighted Zombies|r cast|r |T135914:0|t[Volatile Infection] |cRXP_WARN_(deals 156 nature damage every 15 seconds, causing pushback, dispellable with|r |T135841:0|t[Ice Block]|cRXP_WARN_), and |cRXP_ENEMY_Skeletal Terrors|r cast|r |T136183:0|t[Fear]|cRXP_WARN_, (Fearing you for 4 seconds IF they've been rooted by|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Remember to|r |T135736:0|t[Blink] |cRXP_WARN_out of range of their cast if needed|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r. If you do, run away|r
.mob Blighted Zombie
.mob Rotting Cadaver
.mob Skeletal Terror
.mob Wandering Skeleton
step
+Congratulations on level 60!
>>Thank you for using the Advanced (|cRXP_FRIENDLY_Tommysalami|r) AoE Mage guide!
>>Be sure to post your time in Discord to see how your time compares to others!
>>Special thanks to |cRXP_FRIENDLY_Burning|r for a lot of help with the revised 1-22 route!
.link https://discord.gg/restedxp >> CLICK HERE for a link to the Discord
]]);
