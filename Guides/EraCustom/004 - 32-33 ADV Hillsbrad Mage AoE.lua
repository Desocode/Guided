RXPGuides.RegisterGuide([[
#version 23
#defaultfor Alliance Mage
#group RestedXP ADV AoE Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 32-33 ADV Hillsbrad Mage AoE
#next 33-37 ADV Arathi Mage AoE
step
#completewith next
.goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth|r
.fly Menethil >> Fly to Menethil
.target Gryth Thurden
.zoneskip Wetlands
step
#completewith next
.goto Wetlands,10.74,59.75,10,0
.goto Wetlands,10.63,60.10,10 >>Go inside the Inn
step
>>Talk to |cRXP_FRIENDLY_Glorin|r and |cRXP_FRIENDLY_Mikhail|r inside
>>|cRXP_WARN_After talking to |cRXP_FRIENDLY_Mikhail|r, quickly run back outside the Inn|r
.turnin 270 >>Turn in The Doomed Fleet
.accept 321 >>Accept Lightforge Iron
.target +Glorin Steelbrow
.goto Wetlands,10.58,60.60
.turnin 1248 >>Turn in The Missing Diplomat
.accept 1249 >>Accept The Missing Diplomat
.target +Mikhail
.timer 8,The Missing Diplomat RP
.goto Wetlands,10.60,60.77
step
#completewith next
.goto Wetlands,10.79,59.79,10,0
.goto Wetlands,10.78,59.57,15 >>|cRXP_WARN_Quickly run back outside the Inn|r
step
.goto Wetlands,10.81,59.83
>>Defeat |cRXP_ENEMY_Tapoke "Slim" Jahn|r
>>Ignore/CC |cRXP_ENEMY_Slim's Friend|r when he spawns after aggroing |cRXP_ENEMY_Tapoke "Slim" Jahn|r
.complete 1249,1 
.timer 11,The Missing Diplomat RP
.mob Tapoke "Slim" Jahn
step
>>|cRXP_WARN_Wait out the RP|r
>>Talk to |cRXP_FRIENDLY_Vincent|r, |cRXP_FRIENDLY_Mikhail|r, |cRXP_FRIENDLY_Jahn|r, and |cRXP_FRIENDLY_Mikhail|r again
.turnin 1301 >>Turn in James Hyal
.accept 1302 >>Accept James Hyal
.target +Vincent Hyal
.goto Wetlands,10.83,60.40
.turnin 1249 >>Turn in The Missing Diplomat
.goto Wetlands,10.60,60.77
.accept 1250 >>Accept The Missing Diplomat
.goto Wetlands,10.55,60.26
.target +Mikhail
.turnin 1250 >>Turn in The Missing Diplomat
.accept 1264 >>Accept The Missing Diplomat
.goto Wetlands,10.60,60.77
.target +Tapoke "Slim" Jahn
step
#completewith next
.goto Wetlands,10.63,60.10,10,0
.goto Wetlands,10.88,59.71,10 >>Exit the Inn
step
.goto Wetlands,12.11,64.20
>>Click the |cRXP_PICK_Waterlogged Chest|r
>>|cRXP_WARN_Do not AoE any |cRXP_ENEMY_Bluegill Raiders|r until after you've clicked the|r |cRXP_PICK_Waterlogged Chest|r
>>|cRXP_WARN_Be careful as they cast|r |T132149:0|t[Net] |cRXP_WARN_and|r |T132324:0|t[Thrown]
.turnin 321 >>Turn in Lightforge Iron
.accept 324 >>Accept The Lost Ingots
step
#loop
.line Wetlands,11.99,64.01,13.35,63.98,12.34,66.56,11.42,65.28,9.83,66.79,9.60,68.85,10.45,70.75,10.83,71.55,9.51,72.71,7.14,72.69,7.83,70.30,9.83,66.79,11.42,65.28,11.99,64.01
.goto Wetlands,11.99,64.01,35,0
.goto Wetlands,13.35,63.98,35,0
.goto Wetlands,12.34,66.56,35,0
.goto Wetlands,11.42,65.28,35,0
.goto Wetlands,9.83,66.79,35,0
.goto Wetlands,9.60,68.85,35,0
.goto Wetlands,10.45,70.75,35,0
.goto Wetlands,10.83,71.55,35,0
.goto Wetlands,9.51,72.71,35,0
.goto Wetlands,7.14,72.69,35,0
.goto Wetlands,7.83,70.30,35,0
.goto Wetlands,9.83,66.79,35,0
.goto Wetlands,11.42,65.28,35,0
.goto Wetlands,11.99,64.01,35,0
>>AoE |cRXP_ENEMY_Bluegill Raiders|r. Loot them for their |cRXP_LOOT_Lightforge Ingots|r
>>|cRXP_WARN_Be careful as they cast|r |T132149:0|t[Net] |cRXP_WARN_and|r |T132324:0|t[Thrown]|cRXP_WARN_. Try to gather 3 at once before casting|r |T135848:0|t[Frost Nova]|cRXP_WARN_, deadzoning them into|r |T135826:0|t[Flamestrike] |cRXP_WARN_and then|r |T136116:0|t[Arcane Explosion]
>>|cRXP_WARN_Cast|r |T135841:0|t[Ice Block] |cRXP_WARN_to make them all run underneath you|r
.complete 324,1 
.mob Bluegill Raider
step
.goto Wetlands,10.85,55.90
>>Talk to |cRXP_FRIENDLY_Harlo|r
.accept 472 >>Accept Fall of Dun Modr
.target Harlo Barnaby
step
#completewith next
>>AoE |cRXP_ENEMY_Cursed Sailors|r and |cRXP_ENEMY_Cursed Marines|r
>>|cRXP_WARN_Be careful as they all cast|r |T136224:0|t[Curse of the Eye]|cRXP_WARN_, (Makes you cast spells 20% slower). Remember to cast|r |T136082:0|t[Remove Lesser Curse] |cRXP_WARN_to decurse it|r
.complete 289,1 
.mob +Cursed Sailor
.complete 289,2 
.mob +Cursed Marine
step
.goto Wetlands,14.08,29.99
>>AoE |cRXP_ENEMY_First Mate Snellig|r at the bottom of the ship. Loot him for |cRXP_LOOT_Snellig's Snuffbox|r
.complete 289,3 
.mob First Mate Snellig
step
.goto Wetlands,14.21,28.45,15,0
.goto Wetlands,13.71,30.56,30,0
.goto Wetlands,14.48,23.67,30,0
.goto Wetlands,14.21,28.45,15,0
.goto Wetlands,13.71,30.56,30,0
.goto Wetlands,14.48,23.67
>>AoE |cRXP_ENEMY_Cursed Sailors|r and |cRXP_ENEMY_Cursed Marines|r
>>|cRXP_WARN_Be careful as they all cast|r |T136224:0|t[Curse of the Eye]|cRXP_WARN_, (Makes you cast spells 20% slower). Remember to cast|r |T136082:0|t[Remove Lesser Curse] |cRXP_WARN_to decurse it|r
.complete 289,1 
.mob +Cursed Sailor
.complete 289,2 
.mob +Cursed Marine
step
.goto Wetlands,10.90,59.63
>>Talk to |cRXP_FRIENDLY_Fitzsimmons|r
.turnin 289 >>Turn in The Cursed Crew
.accept 290 >>Accept Lifting the Curse
.target First Mate Fitzsimmons
step
#completewith next
.goto Wetlands,15.98,23.11,12,0
.goto Wetlands,15.65,23.35,12 >>Run up the back of the ship
step
.goto Wetlands,15.45,23.60
>>AoE |cRXP_ENEMY_Captain Halyndor|r. Loot him for the |cRXP_LOOT_Intrepid Strongbox Key|r
>>|cRXP_WARN_Be careful as he casts|r |T136232:0|t[Ward of the Eye] |cRXP_WARN_(reflects all single target spells for 6 seconds)|r
.complete 290,1 
.mob Captain Halyndor
step
.goto Wetlands,14.33,23.61,15,0
.goto Wetlands,14.38,24.05
>>Swim underwater to the bottom floor of the ship
>>Click |cRXP_PICK_Intrepid's Locked Strongbox|r
.turnin 290 >>Turn in Lifting the Curse
.accept 292 >>Accept The Eye of Paleth
step
.goto Wetlands,47.46,47.01
>>Click the |cRXP_PICK_Dragonmaw Catapult|r
.turnin 465 >>Turn in Nek'rosh's Gambit
step
>>Talk to |cRXP_FRIENDLY_Longbraid|r and |cRXP_FRIENDLY_Rhag|r
.turnin 472 >>Turn in Fall of Dun Modr
.target +Longbraid the Grim
.goto Wetlands,49.80,18.26
.accept 631 >>Accept The Thandol Span
.goto Wetlands,49.92,18.22
.target +Rhag Garmason
step
.goto Wetlands,51.36,8.11,15,0
.goto Wetlands,51.28,7.96
>>Go through the doorway at the bridge
>>Click |cRXP_PICK_Ebenezer Rustlocke's Corpse|r on the bottom floor
>>Run away from the |cRXP_ENEMY_Dark Iron Saboteurs|r
>>|cRXP_WARN_Be careful as they may hit you from below as you run back up|r
.turnin 631 >>Turn in The Thandol Span
.accept 632 >>Accept The Thandol Span
step
.goto Wetlands,49.92,18.22
>>Talk to |cRXP_FRIENDLY_Rhag|r
.turnin 632 >>Turn in The Thandol Span
.accept 633 >>Accept The Thandol Span
.target Rhag Garmason
step
.goto Wetlands,50.90,11.69,25,0
.goto Arathi Highlands,45.00,90.49,25,0
.goto Arathi Highlands,44.85,90.48,6,0
>>Travel toward the other side of the bridge
.goto Arathi Highlands,43.88,90.51,15 >>Jump onto the bridge's border, onto the chain, then onto the other side
.isQuestAvailable 647
step
#completewith MacKreel
.cast 130 >>|cRXP_WARN_Cast|r |T135992:0|t[Slow Fall] |cRXP_WARN_before you run off the bridge|r
.itemcount 17056,1
step
#completewith next
.goto Arathi Highlands,42.93,91.49,8 >>Go toward the furthest point outward of the broken bridge
step
#label MacKreel
.goto Arathi Highlands,43.31,92.27,8,0
.goto Arathi Highlands,43.24,92.74
>>|cRXP_WARN_Run down toward the metal pipe below|r
>>Talk to |cRXP_FRIENDLY_MacKreel|r inside
>>|cRXP_WARN_If you missed the jump, skip this step|r
>>|cRXP_WARN_This quest starts a 15 minute timer. Do not go AFK/Log out in this time or you will fail the quest|r
.accept 647 >>Accept MacKreel's Moonshine
.target Foggy MacKreel
step
.goto Arathi Highlands,44.29,92.88
>>Click the |cRXP_PICK_Waterlogged Letter|r underwater. Loot it for the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope]|r
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r] to start the quest|r
.collect 4433,1,637,1 
.accept 637 >>Accept Sully Balloo's Letter
.use 4433
step
#completewith next
>>|cRXP_WARN_Remember to use|r |T135736:0|t[Blink] |cRXP_WARN_on cooldown|r
.goto Arathi Highlands,52.54,91.29,50,0
.goto Arathi Highlands,52.18,89.97,50 >> Swim toward the ramp back up
step
.goto Arathi Highlands,48.79,88.07
>>Click the |cRXP_PICK_Cache of Explosives|r
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_Make sure you have a|r |T134104:0|t[Mana Agate]
>>Gather up the 5 mobs consisting of |cRXP_ENEMY_Dark Iron Bombardiers|r and |cRXP_ENEMY_Dark Iron Shadowcasters|r
>>|cRXP_WARN_Cast|r |T135841:0|t[Ice Block] |cRXP_WARN_so they all run underneath you. Use|r |T135856:0|t[Counterspell] |cRXP_WARN_on the |cRXP_ENEMY_Dark Iron Shadowcaster|r to interrupt him.|r |T135852:0|t[Cone of Cold] |cRXP_WARN_->|r |T135848:0|t[Frost Nova] |cRXP_WARN_->|r |T135826:0|t[Flamestrike] |cRXP_WARN_->|r |T136116:0|t[Arcane Explosion] |cRXP_WARN_them. Remember to use|r |T135865:0|t[Cold Snap] |cRXP_WARN_and|r |T134831:0|t[Healing Potion] |cRXP_WARN_if needed|r
.complete 633,1 
.mob Dark Iron Bombardier
.mob Dark Iron Shadowcaster
step
#completewith next
.goto Arathi Highlands,46.06,88.20,20,0
.goto Arathi Highlands,45.68,89.32,20,0
.goto Wetlands,49.92,18.22,10 >>Travel toward |cRXP_FRIENDLY_Rhag|r
step
.goto Wetlands,49.92,18.22
>>Talk to |cRXP_FRIENDLY_Rhag|r
.turnin 633 >>Turn in The Thandol Span
.accept 634 >>Accept Plea To The Alliance
.target Rhag Garmason
step
#sticky
#label Drovnar
.goto Arathi Highlands,46.38,47.04,0,0
>>Talk to |cRXP_FRIENDLY_Drovnar|r
.vendor 2812 >> |cRXP_BUY_Buy|r |T134832:0|t[Greater Healing Potions] |cRXP_BUY_and|r |T134852:0|t[Mana Potions] |cRXP_BUY_from him (if they're up)|r
.target Drovnar Strongbrew
step
>>Travel to Refuge Pointe
>>Talk to |cRXP_FRIENDLY_Nials|r and |cRXP_FRIENDLY_Skuerto|r
.turnin 634 >>Turn in Plea To The Alliance
.target +Captain Nials
.goto Arathi Highlands,45.83,47.56
.turnin 690 >>Turn in Malin's Request
.goto Arathi Highlands,46.65,47.01
.target +Skuerto
step
#requires Drovnar
.goto Arathi Highlands,45.76,46.09
>>Talk to |cRXP_FRIENDLY_Cedrik|r
.fp Refuge Pointe >> Get the Refuge Pointe flight path
.target Cedrik Prose
step
#completewith MacKreel
.goto Arathi Highlands,43.41,50.12,40,0
.goto Hillsbrad Foothills,81.85,57.34,25,0
.goto Hillsbrad Foothills,50.56,58.15,20,0
.goto Hillsbrad Foothills,50.47,58.49,10,0
.goto Hillsbrad Foothills,50.82,58.82,10 >>Travel toward Southshore
step
#completewith Southshore
>>Kill a |cRXP_ENEMY_Shadowy Assassin|r if the event is up. Loot it for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
>>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] |cRXP_WARN_to start the quest|r
.collect 3668,1,522,1 
.accept 522 >> Accept Assassin's Contract
.use 3668
.unitscan Shadowy Assassin
step
#label MacKreel
.goto Hillsbrad Foothills,51.65,58.73,8,0
.goto Hillsbrad Foothills,52.07,58.39,8,0
.goto Hillsbrad Foothills,52.11,58.82
>>Talk to |cRXP_FRIENDLY_Bilger|r in the basement of the Inn
.turnin 647 >>Turn in MacKreel's Moonshine
.target Brewmeister Bilger
.isOnQuest 647
step
#sticky
#label MoonshineF
.abandon 647 >> Abandon MacKreel's Moonshine
step
>>Talk to |cRXP_FRIENDLY_Phin|r and |cRXP_FRIENDLY_Redpath|r outside
.accept 659 >>Accept Hints of a New Plague?
.target +Phin Odelic
.goto Hillsbrad Foothills,50.35,59.04
.accept 500 >>Accept Crushridge Bounty
.goto Hillsbrad Foothills,49.47,58.73
.target +Marshal Redpath
step
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.accept 505 >>Accept Syndicate Assassins
.turnin 522 >>Turn in Assassin's Contract
.target Magistrate Henry Maleb
.isOnQuest 522
step
#requires MoonshineF
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.accept 505 >>Accept Syndicate Assassins
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,50.57,57.09
>>Talk to |cRXP_FRIENDLY_Dibbs|r outside
.turnin 538 >>Turn in Southshore
.accept 540 >>Accept Preserving Knowledge
.target Loremaster Dibbs
.isOnQuest 538
step
.goto Hillsbrad Foothills,50.57,57.09
>>Talk to |cRXP_FRIENDLY_Dibbs|r
.accept 540 >>Accept Preserving Knowledge
.target Loremaster Dibbs
.isQuestTurnedIn 538
step << skip
#completewith next
.goto Hillsbrad Foothills,50.93,57.10
>>Talk to |cRXP_FRIENDLY_Nandar|r
.vendor 2380 >> |cRXP_BUY_Buy|r |T134832:0|t[Greater Healing Potions] |cRXP_BUY_and|r |T134852:0|t[Mana Potions] |cRXP_BUY_from him (if they're up)|r
.target Nandar Branson
step
#label Southshore
.goto Hillsbrad Foothills,49.34,52.27
>>Talk to |cRXP_FRIENDLY_Darla|r
.fp Southshore >> Get the Southshore flight path
.fly Menethil >> Fly to Menethil
.target Darla Harris
.zoneskip Wetlands
step
#completewith next
.goto Wetlands,10.74,59.75,10,0
.goto Wetlands,10.63,60.10,10 >>Go inside the Inn
step
.goto Wetlands,10.60,60.77
>>Talk to |cRXP_FRIENDLY_Glorin|r
.turnin 324 >>Turn in The Lost Ingots
.accept 322 >>Accept Blessed Arm
.turnin 292 >>Turn in The Eye of Paleth
.accept 293 >>Accept Cleansing the Eye
.target Glorin Steelbrow
step
#completewith next
.cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
.zoneskip Stormwind City
step
#completewith next
.goto Stormwind City,42.88,34.33,15,0
>>Go into the Stormwind Cathedral
.goto Stormwind City,39.59,27.20,20 >>Travel toward |cRXP_FRIENDLY_Benedictus|r
step
.goto Stormwind City,42.62,33.59,30,0
.goto Stormwind City,39.59,27.20
>>Talk to |cRXP_FRIENDLY_Benedictus|r
.turnin 293 >>Turn in Cleansing the Eye
.target Archbishop Benedictus
step
#completewith next
.goto Stormwind City,44.13,35.49,20,0
.goto Stormwind City,49.91,34.32,20,0
.goto Stormwind City,52.24,31.54,20,0
.goto Stormwind City,51.99,28.45,20,0
.goto Stormwind City,53.39,25.14,20,0
.goto Stormwind City,51.83,21.40,20,0
.goto Stormwind City,53.73,18.12,20,0
.goto Stormwind City,51.83,13.07,10,0
.goto Stormwind City,51.76,12.08,12 >>Travel toward |cRXP_FRIENDLY_Grimand|r
step
.goto Stormwind City,51.76,12.08
>>Talk to |cRXP_FRIENDLY_Grimand|r
.turnin 322 >>Turn in Blessed Arm
.accept 325 >>Accept Armed and Ready
.target Grimand Elmore
step
#completewith next
.goto Stormwind City,55.30,68.16,10 >>Enter the Stormwind Bank
step
.goto Stormwind City,57.03,72.97
>>Talk to |cRXP_FRIENDLY_Newton|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
.bankdeposit 2592,17056 >> Deposit the following items into the bank:
>>|T132911:0|t[Wool Cloth]
>>|T132917:0|t[Light Feather]
.target Newton Burnside
step
#completewith next
.goto Stormwind City,66.27,62.12
>>Talk to |cRXP_FRIENDLY_Dungar|r
.fly Westfall >> Fly to Westfall
.target Dungar Longdrink
.zoneskip Westfall
.zoneskip Duskwood
step
.goto Duskwood,7.78,34.07
>>Talk to |cRXP_FRIENDLY_Sven|r
.turnin 325 >>Turn in Armed and Ready
.accept 55 >>Accept Morbent Fel
.target Sven Yorgen
step
#completewith MorbentEnd
#label Morbent1
.goto Duskwood,17.59,33.44,10 >>Enter |cRXP_ENEMY_Morbent Fel|r's house
step
#completewith MorbentEnd
#requires Morbent1
#label Morbent2
+|cRXP_WARN_Equip|r |T135142:0|t[Morbent's Bane]
.use 7297
.itemcount 7297,1
.itemStat 17,LEVEL,<33
step
#completewith next
#requires Morbent2
.cast 8913 >> |cRXP_WARN_Use|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on |cRXP_ENEMY_Morbent Fel|r AFTER he's been successfully split-pulled|r
.use 7297
step
#label MorbentEnd
.goto Duskwood,16.90,33.41
>>Kill |cRXP_ENEMY_Morbent Fel|r
>>|cRXP_WARN_AoE the Undead on the bottom floor and first room of the top floor of the house|r
>>|cRXP_WARN_Split pull |cRXP_ENEMY_Morbent Fel|r by casting|r |T135857:0|t[Blizzard] |cRXP_WARN_and refreshing his leash as you run away out of the house|r
>>|cRXP_WARN_Do NOT use|r |T135856:0|t[Counterspell] |cRXP_WARN_on him as his melee attacks deal a LOT more damage than his|r |T136230:0|t[Touch of Death] |cRXP_WARN_spell|r
>>|cRXP_WARN_Kite him back toward|r |cRXP_FRIENDLY_Sven|r
.complete 55,1 
.mob Morbent Fel
step
.goto Duskwood,7.78,34.07
>>Talk to |cRXP_FRIENDLY_Sven|r
.turnin 55 >>Turn in Morbent Fel
.target Sven Yorgen
step
#completewith next
.goto Duskwood,23.02,34.67,20 >>AoE the nearby |cRXP_ENEMY_Plague Spreaders|r, |cRXP_ENEMY_Bone Chewers|r, and |cRXP_ENEMY_Rotted Ones|r near the fence to |cRXP_ENEMY_Mor'Ladim|r kite around
>>|cRXP_WARN_Be careful as |cRXP_ENEMY_Rotted Ones|r have |cRXP_ENEMY_Flesh Eating Worms|r spawn after killing them (1 health, dies to AoE damage)|r
.mob Plague Spreader
.mob Bone Chewer
.mob Rotted One
step
#loop
.line Duskwood,18.51,39.03,17.77,40.52,16.51,39.12,16.72,34.24,17.54,35.99,18.35,36.32,19.00,35.77,20.17,35.62,20.60,36.84,20.36,38.46,21.64,40.96,21.01,41.74,20.21,40.69,19.86,42.16,19.04,42.40,18.61,41.82,18.58,40.57,18.98,39.46,19.07,37.55,18.65,37.52,18.32,37.79,18.51,39.03
.goto Duskwood,18.51,39.03,45,0
.goto Duskwood,17.77,40.52,45,0
.goto Duskwood,16.51,39.12,45,0
.goto Duskwood,16.72,34.24,45,0
.goto Duskwood,17.54,35.99,45,0
.goto Duskwood,18.35,36.32,45,0
.goto Duskwood,19.00,35.77,45,0
.goto Duskwood,20.17,35.62,45,0
.goto Duskwood,20.60,36.84,45,0
.goto Duskwood,20.36,38.46,45,0
.goto Duskwood,21.64,40.96,45,0
.goto Duskwood,21.01,41.74,45,0
.goto Duskwood,20.21,40.69,45,0
.goto Duskwood,19.86,42.16,45,0
.goto Duskwood,19.04,42.40,45,0
.goto Duskwood,18.61,41.82,45,0
.goto Duskwood,18.58,40.57,45,0
.goto Duskwood,18.98,39.46,45,0
.goto Duskwood,19.07,37.55,45,0
.goto Duskwood,18.65,37.52,45,0
.goto Duskwood,18.32,37.79,45,0
.goto Duskwood,18.51,39.03,45,0
>>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for |cRXP_LOOT_Mor'Ladim's Skull|r
>>|cRXP_WARN_Kite |cRXP_ENEMY_Mor'Ladim|r to the fence you just cleared around. Damage him whilst jumping back and forth to maintain his leash and avoid damage|r
.complete 228,1 
.unitscan Mor'Ladim
step
#completewith next
>>|cRXP_WARN_Pre-cast|r |T135850:0|t[Frost Ward] |cRXP_WARN_before clicking|r |cRXP_PICK_Eliza's Grave Dirt|r
step
#completewith next
.goto Duskwood,28.86,30.79
>>Click |cRXP_PICK_Eliza's Grave Dirt|r on the ground to summon |cRXP_ENEMY_Eliza|r
>>|cRXP_WARN_Get ready to jump onto |cRXP_FRIENDLY_Abercrombie|r's Shack|r
.turnin 254 >> Turn in Digging Through the Dirt
step
#label Eliza
.goto Duskwood,28.13,31.41
>>|cRXP_WARN_Jump onto the cart, then jump onto |cRXP_FRIENDLY_Abercrombie|r's shack behind you|r
>>Kill |cRXP_ENEMY_Eliza|r. Loot her for |cRXP_LOOT_The Embalmer's Heart|r
>>|cRXP_WARN_Remember to cast|r |T135850:0|t[Frost Ward] |cRXP_WARN_when it's up|r
.complete 253,1 
.mob Eliza
step
#completewith next
.hs >> Hearth to Darkshire
step
.goto Duskwood,73.57,46.85
>>Talk to |cRXP_FRIENDLY_Althea|r
.turnin 228 >>Turn in Mor'Ladim
.accept 229 >>Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
.goto Duskwood,71.93,46.43
>>Talk to |cRXP_FRIENDLY_Ello|r inside
.turnin 253 >>Turn in Bride of the Embalmer
.target Lord Ello Ebonlocke
step
#loop
.line Duskwood,75.27,47.34,75.47,46.40,75.08,46.24,75.02,45.56,74.50,46.08,73.59,46.52,73.65,47.22,75.27,47.34
.goto Duskwood,75.27,47.34,12,0
.goto Duskwood,75.47,46.40,12,0
.goto Duskwood,75.08,46.24,12,0
.goto Duskwood,75.02,45.56,12,0
.goto Duskwood,74.50,46.08,12,0
.goto Duskwood,73.59,46.52,12,0
.goto Duskwood,73.65,47.22,12,0
.goto Duskwood,75.27,47.34,12,0
>>Talk to |cRXP_FRIENDLY_Ladimore|r
>>|cRXP_FRIENDLY_Ladimore|r |cRXP_WARN_patrols around Darkshire|r
.turnin 229 >>Turn in The Daughter Who Lived
.target Watcher Ladimore
step
#completewith next
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
.goto Ironforge,63.50,67.30
>>Talk to |cRXP_FRIENDLY_Sara|r
>>|cRXP_WARN_Wait out the RP|r
.turnin 637 >>Turn in Sully Balloo's Letter
.accept 683 >>Accept Sara Balloo's Plea
.target Sara Balloo
step
#completewith next
.goto Ironforge,46.74,50.69,20,0
.goto Ironforge,44.02,50.47,20,0
.goto Ironforge,39.08,56.23,12 >>Travel toward |cRXP_FRIENDLY_Magni|r
step
.goto Ironforge,39.08,56.23
>>Talk to |cRXP_FRIENDLY_Magni|r
.turnin 683 >>Turn in Sara Balloo's Plea
.accept 686 >>Accept A King's Tribute
.target King Magni Bronzebeard
step
#completewith next
.goto Ironforge,44.02,50.47,20,0
.goto Ironforge,46.74,50.69,20,0
.goto Ironforge,43.65,59.56,20,0
.goto Ironforge,38.15,71.28,20,0
.goto Ironforge,33.42,75.48,20,0
.goto Ironforge,33.28,78.29,20,0
.goto Ironforge,39.89,84.20,12,0
.goto Ironforge,38.46,86.19,12,0
.goto Ironforge,38.74,87.01,12 >>Travel toward |cRXP_FRIENDLY_Marblesten|r
step
.goto Ironforge,38.74,87.01
>>Talk to |cRXP_FRIENDLY_Marblesten|r
.turnin 686 >>Turn in A King's Tribute
.accept 689 >>Accept A King's Tribute
.target Grand Mason Marblesten
step
#completewith next
.goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth|r
.fly Southshore >> Fly to Southshore
.target Gryth Thurden
step
.goto Hillsbrad Foothills,51.17,58.93
>>Talk to |cRXP_FRIENDLY_Anderson|r inside
>>|cRXP_BUY_Buy some|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from him|r
.home >> Set your Hearthstone to Southshore
.collect 1708,80,564,1 
.target Innkeeper Anderson
step
.goto Hillsbrad Foothills,52.42,55.96
>>Talk to |cRXP_FRIENDLY_Darren|r outside
.accept 564 >>Accept Costly Menace
.target Darren Malvew
step
#completewith next
.goto Hillsbrad Foothills,46.10,31.84,20 >>Enter the Yeti Cave
step
#loop
.line Hillsbrad Foothills,43.84,31.43,43.23,28.53,45.10,28.43,43.11,26.14,45.22,25.20,45.10,28.43,43.49,30.29,43.02,32.93
.goto Hillsbrad Foothills,43.84,31.43,20,0
.goto Hillsbrad Foothills,43.23,28.53,20,0
.goto Hillsbrad Foothills,45.10,28.43,20,0
.goto Hillsbrad Foothills,43.11,26.14,20,0
.goto Hillsbrad Foothills,45.22,25.20,20,0
.goto Hillsbrad Foothills,45.10,28.43,20,0
.goto Hillsbrad Foothills,43.49,30.29,20,0
.goto Hillsbrad Foothills,43.02,32.93,20,0
>>Loot the |cRXP_LOOT_Alterac Granite|r against the walls inside the cave
>>|cRXP_WARN_There are only 2-3 up at a time. You may have to backtrack for respawns|r
>>AoE |cRXP_ENEMY_Ferocious Yetis|r and |cRXP_ENEMY_Cave Yetis|r
.complete 689,1 
.mob Ferocious Yeti
.mob Cave Yeti
step << skip
#completewith next
.goto Hillsbrad Foothills,45.14,30.59,-1
.goto Hillsbrad Foothills,43.99,29.74,-1
.goto Hillsbrad Foothills,42.54,31.47,-1
.goto Alterac Mountains,34.58,74.94,20 >>|cRXP_WARN_Logout Skip out of the cave|r
.isOnQuest 689
step
.goto Alterac Mountains,39.17,80.37,20 >>Exit the Cave
.isOnQuest 689
step
#completewith Documents
.goto Alterac Mountains,31.94,80.17,60,0
.goto Alterac Mountains,29.63,86.51,60,0
.goto Alterac Mountains,35.42,83.73,60,0
.goto Alterac Mountains,39.20,92.75,60,0
.goto Alterac Mountains,40.04,86.19,60,0
.goto Alterac Mountains,45.33,76.91,60,0
>>AoE |cRXP_ENEMY_Hulking Mountain Lions|r and |cRXP_ENEMY_Mountain Lions|r
.complete 564,1 
.mob +Mountain Lion
.complete 564,2 
.mob +Hulking Mountain Lion
step
#completewith next
.goto Alterac Mountains,47.94,82.55,60,0
.goto Alterac Mountains,49.06,73.60,60,0
.goto Alterac Mountains,53.74,65.45,60,0
>>AoE |cRXP_ENEMY_Syndicate Footpads|r and |cRXP_ENEMY_Syndicate Thieves|r
>>|cRXP_WARN_Single target kill the |cRXP_ENEMY_Syndicate Wizard|r if it's up to create space|r
>>|cRXP_WARN_Be careful as they both cast|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind) and the |cRXP_ENEMY_Syndicate Thieves|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(18 damage every 3 seconds for 30 seconds)|r
.complete 505,1 
.mob +Syndicate Footpad
.complete 505,2 
.mob +Syndicate Thief
.mob *Syndicate Wizard
step
#label Documents
.goto Alterac Mountains,58.32,67.92
>>Click the |cRXP_PICK_Syndicate Documents|r on the table
.accept 510 >> Accept Foreboding Plans
.accept 511 >> Accept Encrypted Letter
step
#completewith SyndicateAndys
.goto Alterac Mountains,47.24,63.48,60,0
.goto Alterac Mountains,45.09,60.68,60,0
.goto Alterac Mountains,48.97,54.52,60,0
.goto Alterac Mountains,51.16,57.63,60,0
.goto Alterac Mountains,51.14,52.79,60,0
.goto Alterac Mountains,55.13,52.24,60,0
.goto Alterac Mountains,55.97,55.02,60,0
>>AoE |cRXP_ENEMY_Crushridge Brutes|r and |cRXP_ENEMY_Crushridge Ogres|r. Loot them for their |cRXP_LOOT_Dirty Knucklebones|r and |cRXP_LOOT_Recovered Tomes|r
>>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Crushridge Brutes|r can be level 36|r
>>|cRXP_WARN_Skip this step if there are enough nearby |cRXP_ENEMY_Syndicate Footpads|r and |cRXP_ENEMY_Syndicate Thieves|r to complete that quest|r
.complete 500,1 
.complete 540,1 
.disablecheckbox
.mob Crushridge Brute
.mob Crushridge Ogre
.isQuestTurnedIn 538 
step
#completewith next
.goto Alterac Mountains,47.24,63.48,60,0
.goto Alterac Mountains,45.09,60.68,60,0
.goto Alterac Mountains,48.97,54.52,60,0
.goto Alterac Mountains,51.16,57.63,60,0
.goto Alterac Mountains,51.14,52.79,60,0
.goto Alterac Mountains,55.13,52.24,60,0
.goto Alterac Mountains,55.97,55.02,60,0
>>AoE |cRXP_ENEMY_Crushridge Brutes|r and |cRXP_ENEMY_Crushridge Ogres|r. Loot them for their |cRXP_LOOT_Dirty Knucklebones|r
>>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Crushridge Brutes|r can be level 36|r
>>|cRXP_WARN_Skip this step if there are enough nearby |cRXP_ENEMY_Syndicate Footpads|r and |cRXP_ENEMY_Syndicate Thieves|r to complete that quest|r
.complete 500,1 
.mob Crushridge Brute
.mob Crushridge Ogre
.isQuestAvailable 538
step
#label SyndicateAndys
.goto Alterac Mountains,53.74,65.45
>>AoE |cRXP_ENEMY_Syndicate Footpads|r and |cRXP_ENEMY_Syndicate Thieves|r
>>|cRXP_WARN_Single target kill the |cRXP_ENEMY_Syndicate Wizard|r if it's up to create space|r
>>|cRXP_WARN_Be careful as they both cast|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind) and the |cRXP_ENEMY_Syndicate Thieves|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(18 damage every 3 seconds for 30 seconds)|r
.complete 505,1 
.mob +Syndicate Footpad
.complete 505,2 
.mob +Syndicate Thief
.mob *Syndicate Wizard
step << skip
.goto Alterac Mountains,47.24,63.48,60,0
.goto Alterac Mountains,45.09,60.68,60,0
.goto Alterac Mountains,48.97,54.52,60,0
.goto Alterac Mountains,51.16,57.63,60,0
.goto Alterac Mountains,51.14,52.79,60,0
.goto Alterac Mountains,55.13,52.24,60,0
.goto Alterac Mountains,55.97,55.02
>>AoE |cRXP_ENEMY_Crushridge Brutes|r and |cRXP_ENEMY_Crushridge Ogres|r. Loot them for their |cRXP_LOOT_Dirty Knucklebones|r
>>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Crushridge Brutes|r can be level 36|r
.complete 500,1 
.itemcount 2843,6 
.mob Crushridge Brute
.mob Crushridge Ogre
step
.goto Alterac Mountains,63.56,50.61,60,0
.goto Alterac Mountains,65.31,50.19,60,0
.goto Alterac Mountains,67.77,47.22,60,0
#loop
.line Alterac Mountains,77.03,51.54,74.43,54.61,73.93,58.29,74.54,61.51,82.79,64.82,82.47,58.96,83.03,57.06,81.31,47.96,77.03,51.54
.goto Alterac Mountains,77.03,51.54,50,0
.goto Alterac Mountains,74.43,54.61,50,0
.goto Alterac Mountains,73.93,58.29,50,0
.goto Alterac Mountains,74.54,61.51,50,0
.goto Alterac Mountains,82.79,64.82,50,0
.goto Alterac Mountains,82.47,58.96,50,0
.goto Alterac Mountains,83.03,57.06,50,0
.goto Alterac Mountains,81.31,47.96,50,0
.goto Alterac Mountains,77.03,51.54,50,0
>>AoE |cRXP_ENEMY_Hulking Mountain Lions|r and |cRXP_ENEMY_Mountain Lions|r
>>|cRXP_WARN_Avoid |cRXP_ENEMY_Narillasanz|r if she's around|r
.complete 564,1 
.mob +Mountain Lion
.complete 564,2 
.mob +Hulking Mountain Lion
.unitscan Narillasanz
step
.goto Western Plaguelands,42.92,85.07
>>Talk to |cRXP_FRIENDLY_Bibilfaz|r
.fp Chillwind Camp >> Get the Chillwind Camp flight path
.fly Southshore >> Fly to Southshore
.target Bibilfaz Featherwhistle
step
#completewith SouthshoreEnd
>>Kill a |cRXP_ENEMY_Shadowy Assassin|r if the event is up. Loot it for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
>>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] |cRXP_WARN_to start the quest|r
.collect 3668,1,522,1 
.accept 522 >> Accept Assassin's Contract
.use 3668
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,52.42,55.96
>>Talk to |cRXP_FRIENDLY_Darren|r
.turnin 564,1 >>Turn in Costly Menace
.target Darren Malvew
step
.goto Hillsbrad Foothills,52.42,55.96
>>Talk to |cRXP_FRIENDLY_Robert|r
.vendor 3543 >> Vendor Trash. Repair
.target Robert Aebischer
.isOnQuest 511
step
.goto Hillsbrad Foothills,50.57,57.09
>>Talk to |cRXP_FRIENDLY_Dibbs|r
.turnin 511 >>Turn in Encrypted Letter
.accept 514 >>Accept Letter to Stormpike
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,49.47,58.73
>>Talk to |cRXP_FRIENDLY_Redpath|r
.turnin 500 >>Turn in Crushridge Bounty
.target Marshal Redpath
.isQuestComplete 500
step
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.turnin 505 >>Turn in Syndicate Assassins
.accept 512 >>Accept Noble Deaths
.turnin 510 >>Turn in Foreboding Plans
.turnin 522 >>Turn in Assassin's Contract
.target Magistrate Henry Maleb
.isOnQuest 522
step
#label SouthshoreEnd
.goto Hillsbrad Foothills,48.14,59.11
>>Talk to |cRXP_FRIENDLY_Henry|r inside
.turnin 505 >>Turn in Syndicate Assassins
.accept 512 >>Accept Noble Deaths
.turnin 510 >>Turn in Foreboding Plans
.target Magistrate Henry Maleb
step
#completewith KTributeEnd
.cast 3562 >> Cast |T135757:0|t[Teleport: Ironforge]
.zoneskip Ironforge
step
#completewith BankDeposit
.goto Ironforge,33.44,63.56,30 >>Enter the Ironforge Bank
step
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
.bankdeposit 17056,2592,2843,3658 >> Deposit the following items into the bank:
>>|T132917:0|t[Light Feather]
>>|T132911:0|t[Wool Cloth]
>>|T133727:0|t[Dirty Knucklebones]
>>|T133743:0|t[Recovered Tome]
.target Bailey Stonemantle
.isOnQuest 500
.isOnQuest 540
.itemcount 2843,1
.itemcount 3658,1
step
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
.bankdeposit 17056,2592,2843 >> Deposit the following items into the bank:
>>|T132917:0|t[Light Feather]
>>|T132911:0|t[Wool Cloth]
>>|T133727:0|t[Dirty Knucklebones]
.target Bailey Stonemantle
.isOnQuest 500
.itemcount 2843,1
step
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
.bankdeposit 17056,2592,3658 >> Deposit the following items into the bank:
>>|T132917:0|t[Light Feather]
>>|T132911:0|t[Wool Cloth]
>>|T133743:0|t[Recovered Tome]
.target Bailey Stonemantle
.isOnQuest 540
.itemcount 3658,1
step
#label BankDeposit
.goto Ironforge,35.93,60.13
>>Talk to |cRXP_FRIENDLY_Bailey|r
>>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
.bankdeposit 17056,2592 >> Deposit the following items into the bank:
>>|T132917:0|t[Light Feather]
>>|T132911:0|t[Wool Cloth]
.target Bailey Stonemantle
.itemcount 17056,1
.itemcount 2592,1
step
#label KTributeEnd
.goto Ironforge,38.74,87.01
>>Talk to |cRXP_FRIENDLY_Marblesten|r
>>|cRXP_WARN_If you have to wait out the RP, start spam casting|r |T132797:0|t[Conjure Water r4]
.turnin 689 >>Turn in A King's Tribute
.timer 57,A King's Tribute RP
.accept 700 >>Accept A King's Tribute
.target Grand Mason Marblesten
step
#completewith next
.goto Ironforge,46.74,50.69,20,0
.goto Ironforge,44.02,50.47,20,0
.goto Ironforge,39.08,56.23,12 >>Travel toward |cRXP_FRIENDLY_Magni|r
step
.goto Ironforge,39.08,56.23
>>Talk to |cRXP_FRIENDLY_Magni|r
.turnin 700 >>Turn in A King's Tribute
.target King Magni Bronzebeard
step
.goto Ironforge,74.64,11.74
>>Talk to |cRXP_FRIENDLY_Stormpike|r
.turnin 514 >>Turn in Letter to Stormpike
.accept 525 >>Accept Further Mysteries
.accept 707 >>Accept Ironband Wants You!
.target Prospector Stormpike
]]);
