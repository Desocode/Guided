RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 40-50
#classic
#tbc
#mop
<< Horde
#xprate <2.1
#name 44-45 Southern Stranglethorn
#displayname 46-47 Southern Stranglethorn << sod
#next 45-46 Swamp of Sorrows;46-48 Tanaris
#somname 43-45 Southern Stranglethorn
step
.goto Stranglethorn Vale,32.20,27.60
>>Click on the |cRXP_PICK_Bubbling Cauldron|r
.accept 586 >> Accept Speaking with Gan'zulah
step
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
.accept 571 >> Accept Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,33.51,32.53
>>Kill an |cRXP_ENEMY_Elder Saltwater Crocolisk|r. Loot it for its |cRXP_LOOT_Skin|r
>>|cRXP_WARN_There are more|r |cRXP_ENEMY_Elder Saltwater Crocolisks|r |cRXP_WARN_North along the coast|r
.complete 628,1 
.unitscan Elder Saltwater Crocolisk
.isOnQuest 628
step
.goto Stranglethorn Vale,28.80,44.80
>>Kill |cRXP_ENEMY_Tethis|r. Loot him for his |cRXP_LOOT_Talon|r
>>|cRXP_WARN_He patrols all around the raptor area|r
.complete 197,1 
.unitscan Tethis
step
#completewith Anathek
>>Kill |cRXP_ENEMY_Skullsplitter Hunters|r, |cRXP_ENEMY_Berserkers|r and |cRXP_ENEMY_Headhunters|r. Loot them for their |cRXP_LOOT_Necklaces|r
.complete 586,1 
.mob +Skullsplitter Hunter
.complete 586,3 
.mob +Skullsplitter Berserker
.complete 586,2 
.mob +Skullsplitter Headhunter
.complete 598,1 
.isOnQuest 598
step
#completewith Anathek
>>Kill |cRXP_ENEMY_Skullsplitter Hunters|r, |cRXP_ENEMY_Berserkers|r and |cRXP_ENEMY_Headhunters|r
.complete 586,1 
.mob +Skullsplitter Hunter
.complete 586,3 
.mob +Skullsplitter Berserker
.complete 586,2 
.mob +Skullsplitter Headhunter
.isQuestTurnedIn 598
step
#completewith Anathek
.goto Stranglethorn Vale,43.22,38.84,60,0
.subzone 103 >>Travel to the Ruins of Zul'Mamwe
step
#hardcore
#completewith next
+|cRXP_WARN_This next quest can be quite hard, be extra careful|r
step
#label Anathek
.goto Stranglethorn Vale,44.3,44.9,30,0
#loop
.line Stranglethorn Vale,47.1,40.7,44.3,44.9,45.8,41.2,47.1,40.7
.goto Stranglethorn Vale,47.10,40.70,50,0
.goto Stranglethorn Vale,44.30,44.90,50,0
.goto Stranglethorn Vale,45.80,41.20,50,0
.goto Stranglethorn Vale,47.10,40.70,50,0
>>Kill |cRXP_ENEMY_Ana'thek the Cruel|r. Loot him for his |cRXP_LOOT_Armor|r
*|cRXP_WARN_Be careful of Ana'thek's adds and his|r |cFFEB144Cexecute ability|r
.complete 586,4 
.unitscan Ana'thek the Cruel
step
#loop
.goto Stranglethorn Vale,47.90,42.90,0
.goto Stranglethorn Vale,47.90,42.90,50,0
.goto Stranglethorn Vale,47.60,44.10,50,0
.goto Stranglethorn Vale,46.00,42.80,50,0
.goto Stranglethorn Vale,44.40,41.90,50,0
.goto Stranglethorn Vale,47.40,39.80,50,0
>>Kill |cRXP_ENEMY_Skullsplitter Hunters|r, |cRXP_ENEMY_Berserkers|r and |cRXP_ENEMY_Headhunters|r. Loot them for their |cRXP_LOOT_Necklaces|r
.complete 586,1 
.mob +Skullsplitter Hunter
.complete 586,3 
.mob +Skullsplitter Berserker
.complete 586,2 
.mob +Skullsplitter Headhunter
.complete 598,1 
.isOnQuest 598
step
#loop
.goto Stranglethorn Vale,47.90,42.90,0
.goto Stranglethorn Vale,47.90,42.90,50,0
.goto Stranglethorn Vale,47.60,44.10,50,0
.goto Stranglethorn Vale,46.00,42.80,50,0
.goto Stranglethorn Vale,44.40,41.90,50,0
.goto Stranglethorn Vale,47.40,39.80,50,0
>>Kill |cRXP_ENEMY_Skullsplitter Hunters|r, |cRXP_ENEMY_Berserkers|r and |cRXP_ENEMY_Headhunters|r
.complete 586,1 
.mob +Skullsplitter Hunter
.complete 586,3 
.mob +Skullsplitter Berserker
.complete 586,2 
.mob +Skullsplitter Headhunter
.isQuestTurnedIn 598
step
#completewith next
.subzone 100 >>Travel to Nesingwary's Expedition
step
.goto Stranglethorn Vale,35.66,10.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet|r
.turnin 197 >> Turn in Raptor Mastery
.accept 208 >> Accept Big Game Hunter
.target Hemet Nesingwary
step
#completewith next
.subzone 117 >>Travel to Grom'gol Base Camp
step
.goto Stranglethorn Vale,32.20,27.70
>>Click on the |cRXP_PICK_Bubbling Cauldron|r
.turnin 586 >> Turn in Speaking with Gan'zulah
.accept 588 >> Accept The Fate of Yenniku
step
.goto Stranglethorn Vale,32.20,27.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r
.turnin 588 >> Turn in The Fate of Yenniku
.turnin 598 >> Turn in Split Bone Necklace
.accept 589 >> Accept The Singing Crystals
.target Kin'weelay
.isQuestComplete 598
step
.goto Stranglethorn Vale,32.20,27.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r
.turnin 588 >> Turn in The Fate of Yenniku
.accept 589 >> Accept The Singing Crystals
.target Kin'weelay
step
#completewith BBpickups3
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thysta|r
.fly Booty Bay >> Fly to Booty Bay
.target Thysta
.subzoneskip 35
step
.goto Stranglethorn Vale,26.70,76.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
.accept 617 >> Accept Akiris by the Bundle
.target Privateer Bloads
step
#xprate <2.1
#season 2
.goto Stranglethorn Vale,27.60,77.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scooty|r
.turnin 80133 >>Turn in Chief Engineer Scooty
.target Scooty
step
.goto Stranglethorn Vale,28.35,76.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe|r
.turnin 2767 >> Turn in Rescue OOX-22/FE!
.target Oglethorpe Obnoticus
.isQuestComplete 2767
step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 628 >> Turn in Excelsior
.target Drizzlik
.isQuestComplete 628
step
#era
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.turnin 1118 >> Turn in Back to Booty Bay
.accept 621 >> Accept Zanzil's Secret
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.accept 606 >> Accept Scaring Shaky
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.70,76.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin|r
.accept 348 >> Accept Stranglethorn Fever
.target Fin Fizracket
step
.goto Stranglethorn Vale,28.10,76.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
.accept 595 >> Accept The Bloodsail Buccaneers
.target First Mate Crazz
step
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.accept 8551 >> Accept The Captain's Chest
.target Captain Hecklebury Smotts
step
.goto Stranglethorn Vale,27.27,69.51
>>Click on the |cRXP_PICK_Bloodsail Correspondence|r on top of a barrel in the center of the camp
.turnin 595 >> Turn in The Bloodsail Buccaneers
.accept 597 >> Accept The Bloodsail Buccaneers
step
#completewith BBpickups3
.subzone 35 >>Return to Booty bay
step
.goto Stranglethorn Vale,28.09,76.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
.turnin 597 >> Turn in The Bloodsail Buccaneers
.accept 599 >> Accept The Bloodsail Buccaneers
.target First Mate Crazz
step
.goto Stranglethorn Vale,26.92,77.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
.accept 587 >> Accept Up to Snuff
.target Deeg
step
.goto Stranglethorn Vale,27.17,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 599 >> Turn in The Bloodsail Buccaneers
.accept 604 >> Accept The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
#label BBpickups3
.goto Stranglethorn Vale,28.59,75.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.accept 576 >> Accept Keep An Eye Out
.target Dizzy One-Eye
step
#era
#completewith Swashbucklers
>>Kill |cRXP_ENEMY_Bloodsail Pirates|r. Loot them for |cRXP_LOOT_Dizzy's Eye|r
>>|cRXP_WARN_Don't focus on this, you can finish it later|r
.complete 576,1 
step
#som
#completewith Swashbucklers
>>Kill |cRXP_ENEMY_Bloodsail Pirates|r. Loot them for |cRXP_LOOT_Dizzy's Eye|r
.complete 576,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Bloodsail Swashbucklers|r
.complete 604,1 
.mob Bloodsail Swashbuckler
step
#loop
.goto Stranglethorn Vale,26.94,82.49,0
.goto Stranglethorn Vale,29.61,80.89,0
.goto Stranglethorn Vale,27.75,83.13,0
.goto Stranglethorn Vale,29.61,80.89,20,0
.goto Stranglethorn Vale,27.75,83.13,20,0
.goto Stranglethorn Vale,27.18,82.66,20,0
.goto Stranglethorn Vale,26.94,82.49,20,0
>>Loot the |cRXP_LOOT_Bloodsail Orders|r and |cRXP_LOOT_Bloodsail Charts|r
>>|cRXP_WARN_They're typically in the large camp on the peninsula, or in the boat near that camp|r
.complete 604,2 
.complete 604,3 
step
#label Swashbucklers
#loop
.goto Stranglethorn Vale,27.18,82.79,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
>>Kill |cRXP_ENEMY_Bloodsail Swashbucklers|r
.complete 604,1 
.mob Bloodsail Swashbuckler
step
#som
#loop
.goto Stranglethorn Vale,27.18,82.79,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
>>Kill |cRXP_ENEMY_Bloodsail Pirates|r. Loot them for their |cRXP_LOOT_Dizzy's Eye|r
.complete 576,1 
step
#softcore
#loop
.goto Stranglethorn Vale,31.27,65.53,0
.goto Stranglethorn Vale,31.19,68.29,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44,60,0
.goto Stranglethorn Vale,31.12,59.80,60,0
.goto Stranglethorn Vale,31.27,65.53,60,0
>>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for their |cRXP_LOOT_Giblets|r and |cRXP_LOOT_Sinew|r
>>|cRXP_WARN_Save any|r |T134298:0|t[|cRXP_LOOT_Gorilla Fangs|r] |cRXP_WARN_you loot. You will need them for another quest later|r
.complete 606,1 
.complete 571,1 
.collect 2799,10 
.mob Elder Mistvale Gorilla
.addquestitem 2799,348
step
#hardcore
#completewith next
.goto Stranglethorn Vale,32.80,65.80,0
>>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for their |T134298:0|t[|cRXP_LOOT_Gorilla Fangs|r]
>>|cRXP_WARN_You can skip this if you want, the quest proceeding this is VERY difficult|r
.collect 2799,10 
step
#hardcore
#loop
.goto Stranglethorn Vale,31.27,65.53,0
.goto Stranglethorn Vale,31.19,68.29,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44,60,0
.goto Stranglethorn Vale,31.12,59.80,60,0
.goto Stranglethorn Vale,31.27,65.53,60,0
>>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for their |cRXP_LOOT_Giblets|r and |cRXP_LOOT_Sinew|r
.complete 606,1 
.complete 571,1 
.mob Elder Mistvale Gorilla
step
#hardcore
#completewith next
+|cRXP_WARN_This quest will be very hard and dangerous, consider skipping it|r
step
.goto Stranglethorn Vale,35.27,60.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Unbagwa|r
>>|cRXP_WARN_This quest is very hard. 3 waves of |cRXP_ENEMY_Gorillas|r will spawn. Consider grouping up if possible|r
.turnin 349 >> Turn in Stranglethorn Fever
.target Witch Doctor Unbagwa
.isOnQuest 348
.unitscan Mokk the Savage
step
.goto Stranglethorn Vale,35.27,60.40
>>Face waves of |cRXP_ENEMY_Gorillas|r until |cRXP_ENEMY_Mokk the Savage|r appears. Kill him and loot him for his |cRXP_LOOT_Heart|r
>>|cRXP_WARN_This quest is very hard. Use no cooldowns on wave 1. Use all cooldowns on wave 2. On wave 3 avoid them by going a bit up the mountain, then when they aggro the NPC kill |cRXP_ENEMY_Mokk the Savage|r only and loot it|r
.complete 348,1 
.unitscan Mokk the Savage
.isOnQuest 348
step
#completewith ZanzilSecretTurnin
.goto Stranglethorn Vale,26.70,73.60,150,0
.subzone 35 >>Return to Booty Bay
step
.goto Stranglethorn Vale,26.90,73.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
.turnin 606 >> Turn in Scaring Shaky
.accept 607 >> Accept Return to MacKinley
.target "Shaky" Phillipe
step
#optional
.goto Stranglethorn Vale,28.60,75.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.turnin 576 >> Keep An Eye Out
.target Dizzy One-Eye
.isQuestComplete 576
step
.goto Stranglethorn Vale,27.60,76.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
.turnin 348 >> Turn in Stranglethorn Fever
.target Fin Fizracket
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.turnin 607 >> Turn in Return to MacKinley
.accept 609 >> Accept Voodoo Dues
.target "Sea Wolf" MacKinley
step
#era
.goto Stranglethorn Vale,27.20,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 604 >> Turn in The Bloodsail Buccaneers
.accept 608 >> Accept The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
#som
.goto Stranglethorn Vale,27.20,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 604 >> Turn in The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
#optional
#label BBTurnins2
step
.goto Stranglethorn Vale,26.87,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gringer|r
.fly Grom'gol >> Fly to Grom'gol Base Camp
.target Gringer
.subzoneskip 35,1
step
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
.turnin 571 >> Turn in Mok'thardin's Enchantment
.accept 573 >> Accept Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,38.18,35.60
>>Kill |cRXP_ENEMY_King Bangalash|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_This quest is HARD. He comes with 2 mobs when he spawns, and spawns 2 more at about 50% health|r
.complete 208,1 
.unitscan King Bangalash
step
#completewith next
.goto Stranglethorn Vale,39.48,47.42,60,0
.goto Stranglethorn Vale,41.83,50.12,20,0
.subzone 310 >>Enter the Crystalvein Mine
step
#loop
.goto Stranglethorn Vale,43.84,47.77,0
.goto Stranglethorn Vale,42.69,49.05,20,0
.goto Stranglethorn Vale,43.84,47.77,20,0
>>Kill |cRXP_ENEMY_Ironjaw Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
.complete 589,1 
.mob Ironjaw Basilisk
step
#completewith Chucky
>>Kill |cRXP_ENEMY_Zanzil Undeads|r. Loot them for their |cRXP_LOOT_Mixture|r
>>|cRXP_WARN_Do NOT pull or attack|r |cRXP_ENEMY_Zanzil the Outcast|r
.complete 621,1 
step
.goto Stranglethorn Vale,35.25,51.25
>>Kill |cRXP_ENEMY_Maury|r. Loot her for her |cRXP_LOOT_Clubbed Foot|r
.complete 609,1 
.unitscan Maury "Club Foot" Wilkins
step
.goto Stranglethorn Vale,34.92,51.84
>>Kill |cRXP_ENEMY_Jon-Jon|r. Loot him for his |cRXP_LOOT_Spyglass|r
.complete 609,2 
.unitscan Jon-Jon the Crow
step
#label Chucky
.goto Stranglethorn Vale,40.00,58.24
>>Kill |cRXP_ENEMY_Chucky|r. Loot him for his |cRXP_LOOT_Ring|r
.complete 609,3 
.unitscan Chucky "Ten Thumbs"
step
#loop
.goto Stranglethorn Vale,40.63,60.03,0
.goto Stranglethorn Vale,40.63,60.03,50,0
.goto Stranglethorn Vale,39.66,59.28,50,0
.goto Stranglethorn Vale,38.71,59.72,50,0
.goto Stranglethorn Vale,38.58,58.54,50,0
.goto Stranglethorn Vale,38.90,57.60,50,0
.goto Stranglethorn Vale,39.95,57.25,50,0
.goto Stranglethorn Vale,41.27,57.15,50,0
.goto Stranglethorn Vale,40.77,59.00,50,0
>>Kill |cRXP_ENEMY_Zanzil Undeads|r. Loot them for their |cRXP_LOOT_Mixture|r
>>|cRXP_WARN_Do NOT pull or attack|r |cRXP_ENEMY_Zanzil the Outcast|r
.complete 621,1 
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Witch Doctor
.mob Zanzil Naga
step
.goto Stranglethorn Vale,36.86,69.51
>>Kill |cRXP_ENEMY_Gorlash|r. Loot him for his |cRXP_LOOT_Chest|r
>>|cRXP_WARN_You can kite him back to the Booty Bay guards and get credit for the quest if you deal 50%+ of the damage|r
>>|cRXP_WARN_This quest is HARD depending on how well you can kite and do damage on the move. You can skip this quest if needed|r
.link https://youtu.be/-2CfRb_LRDY >> CLICK HERE for a reference
.complete 8551,1 
.isOnQuest 8551
.unitscan Gorlash
step
#era
#hardcore
#sticky
#completewith Keelhaul
+|cRXP_WARN_These next ship quests can be very hard. Be careful|r
step
#era
#completewith Keelhaul
>>Search the ships' lower levels until you find a |cRXP_PICK_Small Scroll|r on the ground. Loot it for |T134939:0|t[|cRXP_LOOT_Cortello's Riddle|r]. Use it to start the quest
.accept 624 >> Accept Cortello's Riddle
.collect 4056,1,624 
.use 4056
step
#era
#completewith Keelhaul
>>Kill |cRXP_ENEMY_Bloodsail Pirates|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
.complete 587,1 
.complete 576,1 
step
#era
.goto Stranglethorn Vale,32.90,88.20
>>Kill |cRXP_ENEMY_Captain Stillwater|r on the 2nd floor at the back of the ship
.complete 608,1 
.unitscan Captain Stillwater
step
#era
.goto Stranglethorn Vale,30.60,90.60
>>Kill |cRXP_ENEMY_Fleet Master Firallon|r on the 2nd floor at the back of the ship
.complete 608,3 
.unitscan Fleet Master Firallon
step
#era
.goto Stranglethorn Vale,29.30,88.30
>>Kill |cRXP_ENEMY_Captain Keelhaul|r on the 2nd floor at the back of the ship.
>>|cRXP_ENEMY_Garr|r |cRXP_WARN_can charge for heavy damage, stun for 2 seconds, and|r |T132152:0|t[Thrash]
.complete 608,2 
.unitscan Captain Keelhaul
.unitscan Garr Salthoof
step
#era
#label Keelhaul
.goto Stranglethorn Vale,32.90,88.0
.goto Stranglethorn Vale,30.60,90.0
.goto Stranglethorn Vale,29.30,88.0
.goto Stranglethorn Vale,32.90,88.20,0
.goto Stranglethorn Vale,30.60,90.60,0
.goto Stranglethorn Vale,29.30,88.30,0
>>Search the ships' lower levels until you find a |cRXP_PICK_Small Scroll|r on the ground. Loot it for |T134939:0|t[|cRXP_LOOT_Cortello's Riddle|r]. Use it to start the quest
.accept 624 >> Accept Cortello's Riddle
.collect 4056,1,624 
.use 4056
step
#era
#completewith next
>>Kill |cRXP_ENEMY_Bloodsail Pirates|r. Loot them for their |cRXP_LOOT_Snuff|r
.complete 587,1 
.isOnQuest 587
step
#era
#loop
.goto Stranglethorn Vale,32.02,79.47,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
>>Kill |cRXP_ENEMY_Bloodsail Pirates|r. Loot them for |cRXP_LOOT_Dizzy's Eye|r
.complete 576,1 
.isOnQuest 576
step
#era
.goto Stranglethorn Vale,32.02,79.47,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
>>Kill |cRXP_ENEMY_Bloodsail Pirates|r. Loot them for their |cRXP_LOOT_Snuff|r
.complete 587,1 
.isOnQuest 587
step
#completewith next
>>Kill |cRXP_ENEMY_Naga Explorers|r. Loot them for their |cRXP_LOOT_Akiris Reed|r
.complete 573,1 
.complete 617,1 
.mob Naga Explorer
step
.goto Stranglethorn Vale,28.96,61.94
>>Click |cRXP_PICK_The Holy Spring|r to loot the |cRXP_LOOT_Holy Spring Water|r
.collect 737,1,573,1 
step
#loop
.goto Stranglethorn Vale,28.00,63.12,0
.goto Stranglethorn Vale,28.00,63.12,50,0
.goto Stranglethorn Vale,28.15,64.42,50,0
.goto Stranglethorn Vale,25.55,63.11,50,0
.goto Stranglethorn Vale,25.07,63.73,50,0
.goto Stranglethorn Vale,24.61,64.59,50,0
.goto Stranglethorn Vale,24.02,63.74,50,0
.goto Stranglethorn Vale,24.15,62.14,50,0
.goto Stranglethorn Vale,24.49,61.33,50,0
.goto Stranglethorn Vale,24.73,59.87,50,0
.goto Stranglethorn Vale,25.21,59.03,50,0
.goto Stranglethorn Vale,25.92,59.52,50,0
.goto Stranglethorn Vale,26.95,59.14,50,0
.goto Stranglethorn Vale,27.00,61.39,50,0
>>Finish killing |cRXP_ENEMY_Naga Explorers|r. Loot them for their |cRXP_LOOT_Akiris Reed|r
.complete 573,1 
.complete 617,1 
.mob Naga Explorer
step
#completewith ZanzilSecretTurnin
.goto Stranglethorn Vale,26.70,73.60,150,0
.subzone 35 >>Return to Booty Bay
step
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.turnin 8551 >> Turn in The Captain's Chest
.target Captain Hecklebury Smotts
.isQuestComplete 8551
step
#optional
.abandon 8551 >> Abandon The Captain's Chest
step
.goto Stranglethorn Vale,28.60,75.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.turnin 576 >> Turn in Keep An Eye Out
.target Dizzy One-Eye
.isQuestComplete 576
step
.goto Stranglethorn Vale,27.80,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.turnin 609 >> Turn in Voodoo Dues
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,26.70,76.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
.turnin 617 >> Turn in Akiris by the Bundle
.target Privateer Bloads
step
.goto Stranglethorn Vale,26.55,76.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik Goldgrubber|r
.bankwithdraw 2725,2728,2735,2730,2742,2732,2748,2751,2734,2740,2749,2745,2738,2744,2750,10699,5862,9628,8564 >>Withdraw the following from your bank:
>>All your |T134332:0|t[Green Hills of Stranglethorn Pages] 
>>|T135474:0|t[Yeh'kinya's Bramble] 
>>|T132385:0|t[Seaforium Booster] 
>>|T133645:0|t[Neeru's Herb Pouch] 
>>|T132833:0|t[Hippogryph Egg] 
.target Viznik Goldgrubber
step
#label ZanzilSecretTurnin
.goto Stranglethorn Vale,27.11,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.turnin 621 >> Turn in Zanzil's Secret
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.13,77.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
.accept 580 >> Accept Whiskey Slim's Lost Grog
.target Whiskey Slim
step
#era
.goto Stranglethorn Vale,27.11,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.accept 1119 >> Accept Zanzil's Mixture and a Fool's Stout
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.00,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
.turnin 587 >> Turn in Up to Snuff
.target Deeg
.isQuestComplete 587
step
#era
.goto Stranglethorn Vale,27.10,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 608 >> Turn in The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
#completewith CrystalTI
.isOnQuest 1119
+|cRXP_WARN_Note the Zanzil's Mixture and a Fool's Stout quest has a 2 hour timer|r
step
.goto Stranglethorn Vale,28.14,78.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Glyx|r
.vendor >> |cRXP_BUY_Buy|r |T134832:0|t[Greater Healing Potions] |cRXP_BUY_from him if they're up|r
.target Glyx Brewright
.subzoneskip 35,1
step
.goto Stranglethorn Vale,26.87,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gringer|r
.fly Grom'gol >> Fly to Grom'gol Base Camp
.target Gringer
.subzoneskip 35,1
step
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Mok'thardin|r
.turnin 573 >> Turn in Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
#label CrystalTI
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r
.turnin 589 >> Turn in The Singing Crystals
.target Kin'weelay
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
>>Use the |T134325:0|t[Bug Catching Net] on the |cRXP_ENEMY_Arbor Tarantula|r on the tree stump
.goto Stranglethorn Vale,44.6,19.8
.use 213562
.collect 213566,1 
.mob Arbor Tarantula
step
#completewith next
.goto Stranglethorn Vale,35.70,10.80,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil|r
+|cRXP_WARN_Turn in all the|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_that you have|r
.target Barnil Stonepot
step
.goto Stranglethorn Vale,35.70,10.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet|r
.turnin 208 >> Turn in Big Game Hunter
.target Hemet Nesingwary
step
#som
#completewith next
.hs >>Hearth to Camp Mojache
.use 6948
.bindlocation 1099,1
.zoneskip Feralas
step
#som
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Greul|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Greul
step
#era
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thysta|r
.fly Stonard>> Fly to Stonard
.target Thysta
.zoneskip Swamp of Sorrows
]]);
