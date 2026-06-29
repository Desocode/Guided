RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 30-40
#xprate <1.99
#classic
#tbc
#mop
<< Horde
#name 39-40 Badlands
#next RestedXP Horde 40-50\40-41 Stranglethorn Vale
step
#xprate <1.99
#season 2
#completewith next
.goto Arathi Highlands,45.46,88.21,50 >>Travel toward the Thandol Span bridge into the Wetlands
step
#xprate <1.99
#season 2
.goto Wetlands,58.320,6.927
.cast 6477 >>Enter the |cRXP_PICK_Rowboat|r in the water
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
.subzoneskip 308
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
#completewith next
.goto Arathi Highlands,93.90,71.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r. You will have to fight her after
.complete 79242,1 
.skipgossip 215655,1,1,1
.target Illari Duskfeather
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
.goto Arathi Highlands,93.90,71.49
>>Kill |cRXP_ENEMY_Illari Duskfeather|r. Open the |cRXP_PICK_Dropped Pouch|r she drops on the ground. Loot it for |cRXP_LOOT_Illari's Key|r
.collect 212347,1,79242,1 
.skipgossip 215655,1,1,1
.mob Illari Duskfeather
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>Click |cRXP_PICK_Illari's Loot Cache|r on the ground
.goto Arathi Highlands,94.154,69.266
.turnin 79242 >>Turn in No Honor Among Thieves
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] << Priest
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r] << Paladin
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Brain Freeze|r] << Mage
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Trapper|r] << Hunter
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse|r] << Druid
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r] << Warrior
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness|r] << Warlock
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Poisoned Blade|r] << Rogue
>>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Ancestral Awakening|r] << Shaman
.collect 212552,1 << Priest
.collect 212551,1 << Paladin
.collect 208853,1 << Mage
.collect 212549,1 << Hunter
.collect 212548,1 << Druid
.collect 212562,1 << Warrior
.collect 212561,1 << Warlock
.collect 212559,1 << Rogue
.collect 212560,1 << Shaman
.use 212553 
step
#xprate <1.99
#season 2
.train 431663 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] |cRXP_WARN_to train|r |T136181:0|t[Mind Spike] << Priest
.train 416031 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r] |cRXP_WARN_to train|r |T236246:0|t[The Art of War] << Paladin
.train 401752 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Brain Freeze|r] |cRXP_WARN_to train|r |T236206:0|t[Brain Freeze] << Mage
.train 410118 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Trapper|r] |cRXP_WARN_to train|r |T133882:0|t[Trap Launcher] << Hunter
.train 410029 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse|r] |cRXP_WARN_to train|r |T236151:0|t[Eclipse] << Druid
.train 403467 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r] |cRXP_WARN_to train|r |T132345:0|t[Enraged Regeneration] << Warrior
.train 426452 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness|r] |cRXP_WARN_to train|r |T135823:0|t[Shadow and Flame] << Warlock
.train 425102 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Poisoned Blade|r] |cRXP_WARN_to train|r |T236270:0|t[Poisoned Blade] << Rogue
.train 425883 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Ancestral Awakening|r] |cRXP_WARN_to train|r |T237571:0|t[Ancestral Awakening] << Shaman
.use 212552 << Priest
.use 212551 << Paladin
.use 208853 << Mage
.use 212549 << Hunter
.use 212548 << Druid
.use 212562 << Warrior
.use 212561 << Warlock
.use 212559 << Rogue
.use 212560 << Shaman
.itemcount 212552,1 << Priest
.itemcount 212551,1 << Paladin
.itemcount 208853,1 << Mage
.itemcount 212549,1 << Hunter
.itemcount 212548,1 << Druid
.itemcount 212562,1 << Warrior
.itemcount 212561,1 << Warlock
.itemcount 212559,1 << Rogue
.itemcount 212560,1 << Shaman
step
#xprate <1.99
#season 2
.goto 1417,89.536,78.149
.cast 6477 >>Enter the |cRXP_PICK_Rowboat|r in the water to get back to Arathi
.subzoneskip 308,1
step
#season 2
#completewith WetlandsLogoutSkip
.zone Wetlands >> Travel to the Wetlands
step
#season 0,1
#completewith WetlandsLogoutSkip
.goto Wetlands,32.29,12.56
.zone Wetlands >> Swim to the Wetlands
step
#optional
.abandon 639,652,673,680,640,679,643
step << Druid
#season 2
.goto Wetlands,36.941,15.157
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grugimdern|r
>>|cRXP_WARN_He will give you a|r |T134052:0|t[|cRXP_LOOT_Marshroom|r]
.collect 210499,1 
.skipgossip
.target Grugimdern
.train 424718,1
step << Druid
#season 2
#completewith next
.goto Wetlands,31.187,18.328
.cast 426019 >>|cRXP_WARN_Use the|r |T134052:0|t[|cRXP_LOOT_Marshroom|r] |cRXP_WARN_to eat it|r
.use 210499
.train 424718,1
step << Druid
#season 2
.goto Wetlands,31.187,18.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vodyanoi|r
>>|cRXP_WARN_You will only be able to see|r |cRXP_FRIENDLY_Vodyanoi|r |cRXP_WARN_if you eat the mushroom first|r
.collect 210500,1 
.skipgossip
.target Vodyanoi
.train 424718,1
step << Druid
#season 2
.train 424718 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Stars|r] |cRXP_WARN_to train|r |T135730:0|t[Starsurge]
.use 210500
.itemcount 210500,1
step << Hunter
#season 2
#completewith next
.goto Wetlands,51.914,62.692,30 >> Enter the Thelgen Rock cave
.train 410115,1
step << Hunter
#season 2
.goto Wetlands,47.24,65.34
>>Kill |cRXP_ENEMY_Carrodin|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Aspect of the Lion|r]
.collect 211205,1 
.mob Carrodin
.train 410115,1
step << Hunter
#season 2
.train 410115 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Aspect of the Lion|r] |cRXP_WARN_to train|r |T132185:0|t[Aspect of the Lion]
.use 211205
.itemcount 211205,1
step << Hunter
#season 2
#completewith next
.goto Wetlands,51.914,62.692,30 >> Exit the Thelgen Rock cave
.train 410115,1
step
.goto Wetlands,53.87,70.32,0
.goto Wetlands,53.87,70.32,15,0
.goto Wetlands,49.37,70.56,15,0
.goto Wetlands,48.27,67.52,25,0
.goto Wetlands,50.14,71.57,15,0
.goto Wetlands,50.18,78.30,15,0
.goto Wetlands,50.63,82.57,15,0
.goto Wetlands,55.13,83.53,15,0
.goto Loch Modan,25.27,0.04,15,0
.goto Loch Modan,25.56,10.12,15,0
.zone Loch Modan >>Travel through Dun Algaz into Loch Modan
.zoneskip Badlands
step
#optional
#label WetlandsLogoutSkip
step << skip
.goto Wetlands,53.86,46.42,150,0
.goto Wetlands,63.9,78.6
.zone Loch Modan >> Logout on top of the mushrooms at the back of the cave. When you log back in, this will teleport you should be just outside of Thelsamar
.link https://www.youtube.com/watch?v=21CuGto26Mk >> CLICK HERE for a video tutorial
>>|cRXP_WARN_After logging in at Thelsamar, run southwest to the other side of the road to avoid the guards. Be VERY careful not to move forward when you log in as it's likely to aggro the level 30-40 guards.|r
.unitscan Mountaineer Stenn
.unitscan Mountaineer Kamdar
step
#hardcore
#completewith next
+|cRXP_WARN_Be careful! Do not get hit by |cRXP_ENEMY_Mountaineers|r (Dwarf Guards) as it will PVP-flag you!|r
step
#completewith next
.goto Loch Modan,25.34,67.27,0
.goto Loch Modan,24.76,70.59,30,0
.goto Loch Modan,25.10,72.98,30,0
.goto Loch Modan,26.11,75.42,30,0
.goto Loch Modan,23.27,81.30,30,0
.goto Loch Modan,22.82,84.81,30,0
.goto Loch Modan,19.59,87.23,30,0
.goto Loch Modan,20.37,91.08,30,0
.goto Loch Modan,22.33,91.55,30,0
.goto Loch Modan,22.87,94.92,30,0
.goto Badlands,5.73,29.78,0
.zone Badlands >> Run to the Badlands
>>|cRXP_WARN_Use the shortcut to get to Badlands faster|r
.link https://www.youtube.com/watch?v=oNFXup-DCM0 >> CLICK HERE for a video tutorial
step
.goto Badlands,3.99,44.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorrik|r
.fp Kargath >> Get the Kargath Flight Path
.target Gorrik
.isQuestAvailable 1419
step
.goto Badlands,2.90,47.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sranda|r
.vendor >>|cRXP_BUY_Sell your junk and repair, if necessary|r
.target Sranda
.isQuestAvailable 1419
step
#optional
.goto Badlands,2.91,45.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorn|r
.accept 782 >> Accept Broken Alliances
.target Gorn
.xp <40,1
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarkal|r
.accept 2258 >> Accept Badlands Reagent Run
.target Jarkal Mossmeld
step
#era
.goto Badlands,6.4,47.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeka|r
.accept 1419 >> Accept Coyote Thieves
.target Neeka Bloodscar
step
#som
.goto Badlands,6.4,47.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeka|r
.accept 1419 >> Accept Coyote Thieves
.target Neeka Bloodscar
step
#ah
.goto Badlands,25.95,44.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil|r
.accept 713 >> Accept Coolant Heads Prevail
.turnin 713 >> Turn in Coolant Heads Prevail
.target Lotwil Veriatus
.itemcount 3829,1 
step
#ah
.goto Badlands,25.95,44.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil|r
.accept 714 >> Accept Gyro... What?
.turnin 714 >> Turn in Gyro... What?
.target Lotwil Veriatus
.itemcount 4389,1 
.isQuestTurnedIn 713
step
.goto Badlands,25.95,44.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil|r
.accept 710 >> Accept Study of the Elements: Rock
.target Lotwil Veriatus
step
#ah
.goto Badlands,25.82,44.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien|r
.accept 715 >> Accept Liquid Stone
.turnin 715 >> Turn in Liquid Stone
.target Lucien Tosselwrench
.itemcount 929,1 
.itemcount 3823,1 
.isQuestTurnedIn 714
step
#completewith badlandsall
>>While questing, kill any |cRXP_ENEMY_Buzzards|r and |cRXP_ENEMY_Coyotes|r you encounter. Loot them for their |cRXP_LOOT_Wings|r, |cRXP_LOOT_Gizzards|r, |cRXP_LOOT_Jawbones|r and |cRXP_LOOT_Fangs|r
>>|cRXP_WARN_Don't focus on this. You can complete it later|r
.collect 3404,4,703,1 
.mob +Buzzard
.mob +Giant Buzzard
.mob +Starving Buzzard
.complete 2258,1 
.mob +Buzzard
.mob +Giant Buzzard
.mob +Starving Buzzard
.complete 1419,1 
.mob +Crag Coyote
.mob +Feral Crag Coyote
.mob +Rabid Crag Coyote
.mob +Elder Crag Coyote
.complete 2258,2 
.mob +Crag Coyote
.mob +Feral Crag Coyote
.mob +Rabid Crag Coyote
.mob +Elder Crag Coyote
step
#loop
.goto Badlands,23.41,45.26,0
.goto Badlands,23.41,45.26,50,0
.goto Badlands,21.90,43.22,50,0
.goto Badlands,19.99,43.10,50,0
.goto Badlands,17.76,41.06,50,0
.goto Badlands,16.62,38.29,50,0
.goto Badlands,14.78,37.34,50,0
.goto Badlands,13.48,37.80,50,0
.goto Badlands,13.01,40.09,50,0
.goto Badlands,15.11,41.89,50,0
.goto Badlands,16.94,42.80,50,0
.goto Badlands,19.17,45.74,50,0
.goto Badlands,20.47,48.40,50,0
.goto Badlands,23.12,48.20,50,0
>>Kill |cRXP_ENEMY_Lesser Rock Elementals|r. Loot them for their |cRXP_LOOT_Stone Shards|r and |cRXP_LOOT_Elemental Shards|r
.complete 710,1 
.complete 2258,3 
.mob Lesser Rock Elemental
step
#label badlandsall
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 710 >> Turn in Study of the Elements: Rock
.accept 711 >> Accept Study of the Elements: Rock
.target Lotwil Veriatus
step
#completewith next
>>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Jawbones|r and |cRXP_LOOT_Fangs|r
.complete 1419,1 
.complete 2258,2 
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
#loop
.goto Badlands,17.24,58.53,0
.goto Badlands,17.24,58.53,50,0
.goto Badlands,15.35,58.51,50,0
.goto Badlands,14.85,60.16,50,0
.goto Badlands,15.00,61.98,50,0
.goto Badlands,16.15,61.84,50,0
.goto Badlands,17.01,61.24,50,0
>>Kill |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Wings|r
.collect 3404,4,703,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
#completewith badlands3
>>Kill |cRXP_ENEMY_Coyotes|r and |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Jawbones|r, |cRXP_LOOT_Fangs|r and |cRXP_LOOT_Gizzards|r
>>|cRXP_WARN_Prioritize|r |cRXP_ENEMY_Coyotes|r |cRXP_WARN_over|r |cRXP_ENEMY_Buzzards|r
.complete 1419,1 
.mob +Crag Coyote
.mob +Feral Crag Coyote
.mob +Rabid Crag Coyote
.mob +Elder Crag Coyote
.complete 2258,2 
.mob +Crag Coyote
.mob +Feral Crag Coyote
.mob +Rabid Crag Coyote
.mob +Elder Crag Coyote
.complete 2258,1 
.mob +Buzzard
.mob +Giant Buzzard
.mob +Starving Buzzard
step
#completewith BarbWings
.goto Badlands,42.47,52.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jazzrik|r
.vendor >>|cRXP_BUY_Sell your junk and repair, if necessary|r
.target Jazzrik
step
#ah
.goto Badlands,42.39,52.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.accept 705 >> Accept Pearl Diving
.turnin 705 >> Turn in Pearl Diving
.target Rigglefuzz
.itemcount 4611,9 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r and |cRXP_FRIENDLY_Martek|r
.accept 703 >> Accept Barbecued Buzzard Wings
.turnin 703 >> Turn in Barbecued Buzzard Wing
.target +Rigglefuzz
.goto Badlands,42.39,52.92
.turnin 1106 >> Turn in Martek the Exiled
.accept 1108 >> Accept Indurium
.target +Martek the Exiled
.goto Badlands,42.21,52.70
.isOnQuest 1106
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r and |cRXP_FRIENDLY_Martek|r
.accept 703 >> Accept Barbecued Buzzard Wings
.turnin 703 >> Turn in Barbecued Buzzard Wing
.target +Rigglefuzz
.goto Badlands,42.39,52.92
.accept 1108 >> Accept Indurium
.target +Martek the Exiled
.goto Badlands,42.21,52.70
.isQuestTurnedIn 1106
step
#label BarbWings
.goto Badlands,42.39,52.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.accept 703 >> Accept Barbecued Buzzard Wings
.turnin 703 >> Turn in Barbecued Buzzard Wing
.target Rigglefuzz
step
#era
.goto Badlands,23.2,47.0
.xp 40 >> Grind to 40
step
.goto Badlands,2.91,45.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorn|r
.accept 782 >> Accept Broken Alliances
.target Gorn
step
#sticky
#label signofearthBL
>>Find & kill |cRXP_ENEMY_Boss Tho'grun|r. Loot him for the |cRXP_LOOT_Sign of Earth|r
>>|cRXP_LOOT_Boss Tho'grun|r |cRXP_WARN_patrols the zone, accompanied by five guards|r
.complete 782,1 
.unitscan Boss Tho'grun
.mob Dustbelcher Mystic
.mob Dustbelcher Wyrmhunter
.mob Dustbelcher Shaman
.mob Dustbelcher Mauler
.isOnQuest 782
step
#loop
.goto Badlands,36.20,75.10,0
.goto Badlands,36.20,75.10,50,0
.goto Badlands,46.00,78.40,50,0
.goto Badlands,42.80,87.20,50,0
>>Kill |cRXP_ENEMY_Rock Elementals|r. Loot them for their |cRXP_LOOT_Stone Slabs|r
>>|cRXP_ENEMY_Rock Elementals|r |cRXP_WARN_are abundant in this southern location, but the northern location from the prior elemental quest has a few as well|r
.complete 711,1 
.mob Rock Elemental
step
#completewith next
>>Kill |cRXP_ENEMY_Stonevault Troggs|r. Loot them for their |cRXP_LOOT_Indurium Flakes|r
.complete 1108,1 
.mob Stonevault Bonesnapper
.mob Stonevault Shaman
.isQuestTurnedIn 1106
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin|r
.turnin 687 >> Turn in Theldurin the Lost
.target Theldurin the Lost
.isQuestTurnedIn 653
step
#loop
.goto Badlands,47.16,69.82,0
.goto Badlands,47.16,69.82,50,0
.goto Badlands,48.38,72.06,50,0
.goto Badlands,49.86,72.12,50,0
.goto Badlands,51.20,71.93,50,0
.goto Badlands,52.41,69.96,50,0
.goto Badlands,52.55,67.79,50,0
.goto Badlands,52.46,65.90,50,0
.goto Badlands,51.00,63.86,50,0
.goto Badlands,49.66,63.97,50,0
.goto Badlands,49.69,66.39,50,0
.goto Badlands,49.78,68.28,50,0
.goto Badlands,48.14,68.30,50,0
>>Kill |cRXP_ENEMY_Stonevault Troggs|r. Loot them for their |cRXP_LOOT_Indurium Flakes|r
.complete 1108,1 
.mob Stonevault Bonesnapper
.mob Stonevault Shaman
.isQuestTurnedIn 1106
step
#label badlands3
.goto Badlands,42.21,52.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek|r
.turnin 1108 >> Turn in Indurium
.timer 20,Indurium RP
.accept 1137 >> Accept News for Fizzle
.target Martek the Exiled
.isQuestTurnedIn 1106
step
#completewith next
>>Kill |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Gizzards|r
.complete 2258,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
#loop
.goto Badlands,25.09,55.10,0
.goto Badlands,44.11,71.87,90,0
.goto Badlands,37.09,69.28,90,0
.goto Badlands,30.28,62.70,90,0
.goto Badlands,25.09,55.10,90,0
>>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Jawbones|r and |cRXP_LOOT_Fangs|r
.complete 1419,1 
.complete 2258,2 
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
#loop
.goto Badlands,17.24,58.53,0
.goto Badlands,17.24,58.53,50,0
.goto Badlands,15.35,58.51,50,0
.goto Badlands,14.85,60.16,50,0
.goto Badlands,15.00,61.98,50,0
.goto Badlands,16.15,61.84,50,0`
.goto Badlands,17.01,61.24,50,0
>>Kill |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Gizzards|r
.complete 2258,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
#ssf
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil|r
.turnin 711 >> Turn in Study of the Elements: Rock
.target Lotwil Veriatus
step
#ah
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil|r
.turnin 711 >> Turn in Study of the Elements: Rock
.accept 712 >> Accept Study of the Elements: Rock
.target Lotwil Veriatus
step
#ah
#loop
.goto Badlands,6.58,75.55,0
.goto Badlands,6.58,75.55,50,0
.goto Badlands,1.23,79.29,50,0
.goto Badlands,2.06,82.38,50,0
.goto Badlands,6.66,81.68,50,0
>>Kill |cRXP_ENEMY_Greater Rock Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
.complete 712,1 
.mob Greater Rock Elemental
.group 2
step
#ah
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil|r
.turnin 712 >> Turn in Study of the Elements: Rock
.target Lotwil Veriatus
.group
step
#ah
.goto Badlands,25.82,44.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien|r
.accept 716 >> Accept Stone Is Better than Cloth
.turnin 716 >> Turn in Stone Is Better than Cloth
.target Lucien Tosselwrench
.itemcount 2868,1 
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil|r
.accept 734 >> Accept This is Going to Be Hard
.target Lotwil Veriatus
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,25.82,44.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien|r
.turnin 734 >> Turn in This is Going to Be Hard
.accept 777 >> Accept This is Going to Be Hard
.target Lucien Tosselwrench
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil|r
.turnin 777 >> Turn in This is Going to Be Hard
.accept 778 >> Accept This is Going to Be Hard
.target Lotwil Veriatus
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,26.09,46.83
>>Kill the |cRXP_ENEMY_Fam'retor Guardian|r. Loot him for his |cRXP_LOOT_Bindings|r
.complete 778,1 
.unitscan Fam'retor Guardian
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 778 >> Turn in This is Going to Be Hard
.target Lotwil Veriatus
.isQuestComplete 778
step
#completewith next
.subzone 340 >>Travel to Kargath
step
.goto Badlands,6.49,47.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeka|r
.turnin 1419 >> Turn in Coyote Thieves
.accept 1420 >> Accept Report to Helgrum
.target Neeka Bloodscar
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarkal|r
.turnin 2258 >> Turn in Badlands Reagent Run
.target Jarkal Mossmeld
step
#optional
#completewith HSOrg
.destroy 7846 >> |cRXP_WARN_Delete any extra|r |T134298:0|t[Crag Coyote Fangs] |cRXP_WARN_you still have|r
.itemcount 7846,1
step
#requires signofearthBL
.goto Badlands,2.91,45.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorn|r
.turnin 782 >> Turn in Broken Alliances
.target Gorn
.isQuestComplete 782
step << Druid
#completewith DruidTraining7
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9634 >> Train your class spells
.target Loganaar
.xp <40,1
.xp >42,1
step << Druid
#label DruidTraining7
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9750 >> Train your class spells
.target Loganaar
.xp <42,1
step << Mage
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
.train 3567,3
step
#optional << Mage
#completewith next << !Mage
.hs >> Hearth to Orgrimmar
.use 6948
.bindlocation 1637,1
.zoneskip Orgrimmar
.train 3567,1 << Mage
step << !Mage
#label HSOrg
.goto Orgrimmar,54.65,67.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barkeep Morag|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Barkeep Morag
]]);
