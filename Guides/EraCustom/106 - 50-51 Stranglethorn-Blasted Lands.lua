RXPGuides.RegisterGuide([[
#version 23
#xprate <1.5
#group RestedXP Horde 50-60
#classic
#tbc
#mop
<< Horde
#name 50-51 Stranglethorn/Blasted Lands
#next 51-52 Searing Gorge/Burning Steppes
step << !Warrior !Rogue !Shaman
.goto Stranglethorn Vale,23.60,72.00
>>Kill |cRXP_ENEMY_Mok'rash|r. Loot him for |T133694:0|t[|cRXP_LOOT_Monogrammed Sash|r]. Use it to start the quest
>>|cRXP_WARN_He has a long respawn timer. Skip this step if he isn't up|r
.collect 3985,1,8552 
.accept 8552 >>Accept The Monogrammed Sash
.use 3985
step << !Warrior !Rogue !Shaman
.goto Stranglethorn Vale,23.60,72.00
>>Kill |cRXP_ENEMY_Mok'rash|r. Loot him for |T133694:0|t[|cRXP_LOOT_Monogrammed Sash|r]. Use it to start the quest
>>|cRXP_WARN_Set up a slow trap near the goblin statue and kite him with Aspect of the Cheetah|r << Hunter
>>|cRXP_WARN_Kill him by kiting in circles around the goblin statue|r << Mage
>>|cRXP_WARN_Fear him as much as you can, he's not immune to fear or slows|r << Priest/Warlock
>>|cRXP_WARN_Once he gets to around 60% hp, use Levitate to kite him back to Booty Bay|r << Priest
>>|cRXP_WARN_Only use ranged spells (root/starfire/moonfire) he hits HARD|r << Druid
>>|cRXP_WARN_He has a long respawn timer. Skip this step if he isn't up or if you can't solo him|r
.collect 3985,1,8552 
.accept 8552 >>Accept The Monogrammed Sash
.use 3985
.link https://www.youtube.com/watch?v=xw2mGnQaCQM >> Click here for video reference << Priest
.link https://youtu.be/ZaSOwy1h-ZI >> |cRXP_WARN_Click here for video reference|r << !Warlock !Priest
.link https://youtu.be/cT3Hfq1vZRc >> |cRXP_WARN_Click here for video reference|r << Warlock
.solo
step
#ah
.goto Stranglethorn Vale,23.60,72.00
>>Kill |cRXP_ENEMY_Mok'rash|r. Loot him for |T133694:0|t[|cRXP_LOOT_Monogrammed Sash|r]. Use it to start the quest
>>|cRXP_WARN_He has a long respawn timer. Skip this step if he isn't up|r
.collect 3985,1,8552 
.accept 8552 >>Accept The Monogrammed Sash
.use 3985
.group 3
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe|r
.turnin 648 >>Turn in Rescue OOX-17/TN!
.target Oglethorpe Obnoticus
.isQuestComplete 648
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe|r
.turnin 836 >>Turn in Rescue OOX-09/HL!
.target Oglethorpe Obnoticus
.isQuestComplete 836
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe|r
.turnin 2767 >>Turn in Rescue OOX-22/FE!
.target Oglethorpe Obnoticus
.isQuestComplete 2767
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe|r
.accept 3721 >>Accept An OOX of Your Own
.turnin 3721 >>Turn in An OOX of Your Own
.target Oglethorpe Obnoticus
.isQuestTurnedIn 648
.isQuestTurnedIn 836
.isQuestTurnedIn 2767
step << !Warrior !Rogue !Shaman
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smotts|r
.turnin 8552 >>Turn in The Monogrammed Sash
.target Captain Hecklebury Smotts
.isOnQuest 8552
.solo
step
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smotts|r
.turnin 8552 >>Turn in The Monogrammed Sash
.target Captain Hecklebury Smotts
.isOnQuest 8552
.group
step << !Warrior !Rogue !Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smotts|r and |cRXP_FRIENDLY_Sprogger|r
.accept 615 >>Accept The Captain's Cutlass
.target +Captain Hecklebury Smotts
.goto Stranglethorn Vale,26.69,73.62
.turnin 615 >>Turn in The Captain's Cutlass
.target +Sprogger
.goto Stranglethorn Vale,26.66,73.64
.isQuestTurnedIn 8552
.solo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smotts|r and |cRXP_FRIENDLY_Sprogger|r
.accept 615 >>Accept The Captain's Cutlass
.target +Captain Hecklebury Smotts
.goto Stranglethorn Vale,26.69,73.62
.turnin 615 >>Turn in The Captain's Cutlass
.target +Sprogger
.goto Stranglethorn Vale,26.66,73.64
.isQuestTurnedIn 8552
.group
step
#ah
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprogger|r
.accept 8554 >>Accept Facing Negolash
.target Sprogger
.group
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf"|r
.turnin 2874 >>Turn in Deliver to MacKinley
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.10,77.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
.turnin 580 >>Turn in Whiskey Slim's Lost Grog
.target Whiskey Slim
.isQuestComplete 580
step
#era
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.turnin 1122 >>Turn in Report Back to Fizzlebub
.target Crank Fizzlebub
step
#ah
.goto Stranglethorn Vale,27.04,77.17,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nixxrax|r
>>|cRXP_WARN_If you didn't get|r |T133974:0|t[Barbecued Buzzard Wings] |cRXP_WARN_earlier (and none of your group members do either), then skip this step. You need 10 wings in total to summon|r |cRXP_ENEMY_Negolash|r
.vendor >>Buy |cRXP_BUY_Junglevine Wine|r from |cRXP_FRIENDLY_Nixxrax|r
.collect 4457,10 
.collect 4595,5 
.target Nixxrax Fillamug
.isOnQuest 8554
.group
step
#ah
#completewith next
.goto Stranglethorn Vale,29.83,72.25,50,0
.goto Stranglethorn Vale,33.66,75.05,50,0
.subzone 43 >>Travel north out of Booty Bay, then east to the beach
.group
step
#ah
.goto Stranglethorn Vale,32.5,81.90
>>Click the |cRXP_PICK_Ruined Lifeboat|r
.turnin 619 >>Turn in Facing Negolash
.isOnQuest 8554
.group
step
#ah
.goto Stranglethorn Vale,32.50,81.94
>>Click the |cRXP_PICK_Ruined Lifeboat|r to summon |cRXP_ENEMY_Negolash|r. Kill him and loot him for |cRXP_LOOT_Smotts' Cutlass|r
>>|cRXP_WARN_If you didn't get|r |T133974:0|t[Barbecued Buzzard Wings] |cRXP_WARN_earlier (and none of your group members do either), then skip this step. You need 10 wings in total to summon|r |cRXP_ENEMY_Negolash|r
.complete 8554,1 
.unitscan Negolash
.isOnQuest 8554
.group 3
step
#ah 
#loop
.goto Stranglethorn Vale,32.38,82.23,0
.goto Stranglethorn Vale,34.22,73.25,60,0
.goto Stranglethorn Vale,34.01,77.21,60,0
.goto Stranglethorn Vale,32.34,79.44,60,0
.goto Stranglethorn Vale,32.38,82.23,60,0
>>Loot the |cRXP_PICK_Half-Burried Bottles|r along the southeastern coast
.collect 4098,1,594
.accept 594 >> Accept Message in a Bottle
.group
step
#ah
.goto Stranglethorn Vale,38.53,80.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.turnin 594 >>Turn in Message in a Bottle
.accept 630 >>Accept Message in a Bottle
.target Princess Poobah
.group
step
#ah
.goto Stranglethorn Vale,40.94,83.89
>>Kill |cRXP_ENEMY_King Mukla|r. Loot him for his |cRXP_LOOT_Key|r
>>|cRXP_WARN_Clear a bit of space around|r |cRXP_ENEMY_King Mukla|r|cRXP_WARN_, as he has a fear|r
.complete 630,1 
.unitscan King Mukla
.group 4
step
#ah
.goto Stranglethorn Vale,38.53,80.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.turnin 630 >>Turn in Message in a Bottle
.target Princess Poobah
.group
step
#ah
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprogger|r
.turnin 8554 >>Turn in Facing Negolash
.target Sprogger
.isQuestComplete 8554
.group
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 8643 >> Train your class spells
.target Ian Strom
.xp <50,1
.xp >52,1
step << Rogue
#optional
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 11342 >> Train your class spells
.target Ian Strom
.xp <52,1
step
#ssf
.goto Stranglethorn Vale,26.55,76.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r
.bankwithdraw 4306,15 >> Withdraw 15 |T132905:0|t[Silk Cloth] from your bank
.target Viznik Goldgrubber
step
#ah
.goto Stranglethorn Vale,26.55,76.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r
.bankwithdraw 4306,8391,8392,8393,8396,8394 >>Withdraw the following from your bank:
+|T132905:0|t[Silk Cloth] 
+|T133972:0|t[Snickerfang Jowl] 
+|T134343:0|t[Blasted Boar Lung] 
+|T133708:0|t[Scorpok Pincer] 
+|T134342:0|t[Vulture Gizzard] 
+|T134340:0|t[Basilisk Brain] 
.target Viznik Goldgrubber
step
#era
#completewith StonardPots2
.goto Stranglethorn Vale,26.87,77.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gringer|r
>>|cRXP_WARN_NOTE: The Blasted Lands part of the guide is a filler section in case you are behind on levels. If you are level 52 or above skip to the next part (Searing Gorge or Azshara)|r
.fly Stonard >>Fly to Stonard
.target Gringer
.zoneskip Swamp of Sorrows
.zoneskip Blasted Lands
step
#era
.goto Swamp of Sorrows,47.90,55.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r
.turnin 1444 >>Turn in Return to Fel'Zerul
.target Fel'zerul
.isQuestTurnedIn 1429
step << Hunter
#era
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogrom|r
.train 13554 >> Train your class spells
.target Ogrom
.xp <50,1
.xp >52,1
step << Hunter
#era
#optional
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogrom|r
.train 13543 >> Train your class spells
.target Ogrom
.xp <52,1
step << Warlock
#era
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kartosh|r
.train 17925 >> Train your class spells
.target Kartosh
.xp <50,1
.xp >52,1
step << Warlock
#era
#optional
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kartosh|r
.train 11675 >> Train your class spells
.target Kartosh
.xp <52,1
step << Warlock
#era
.goto Swamp of Sorrows,48.59,55.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greshka|r
.vendor >>Buy any pet upgrades you can afford
.target Greshka
step << Shaman
#era
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greshka|r
.train 10437 >> Train your class spells
.target Haromm
.xp <50,1
.xp >52,1
step << Shaman
#era
#optional
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greshka|r
.train 10467 >> Train your class spells
.target Haromm
.xp <52,1
step << Warrior
#era
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malosh|r
.train 1719 >> Train your class spells
.target Malosh
.xp <50,1
.xp >52,1
step << Warrior
#era
#optional
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malosh|r
.train 11551 >> Train your class spells
.target Malosh
.xp <52,1
step
#era
#label StonardPots2
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rartar|r inside the inn
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Rartar
step << Warrior
#era
#phase 4-6
.goto Swamp of Sorrows,34.20,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.accept 8423 >>Accept Warrior Kinship
.target Fallen Hero of the Horde
step
#completewith BlastedEnd
.zone Blasted Lands >>Travel to Blasted Lands
step << Warrior
#era
#phase 4-6
#loop
.goto Blasted Lands,53.60,37.20,0
.goto Blasted Lands,53.60,37.20,60,0
.goto Blasted Lands,54.60,41.40,60,0
.goto Blasted Lands,55.60,43.20,60,0
.goto Blasted Lands,52.80,41.80,60,0
.goto Blasted Lands,50.20,38.60,60,0
.goto Blasted Lands,48.00,37.60,60,0
.goto Blasted Lands,46.60,40.20,60,0
.goto Blasted Lands,44.60,37.00,60,0
.goto Blasted Lands,44.60,33.80,60,0
.goto Blasted Lands,48.00,34.40,60,0
.goto Blasted Lands,50.80,36.00,60,0
>>Kill |cRXP_ENEMY_Helboars|r in the Blasted Lands
.complete 8423,1 
.mob Helboar
step << Warrior
#era
#phase 4-6
.goto Swamp of Sorrows,34.20,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 8423 >>Turn in Warrior Kinship
.accept 8424 >>Accept War on the Shadowsworn
.target Fallen Hero of the Horde
step << Warlock
#season 2
#sticky
#completewith BlastedEnd
#label ExplorerImp
>>As you're questing cast |T136163:0|t|cRXP_FRIENDLY_[Drain Soul]|r on mobs untill you receive an |T133257:0|t|cRXP_LOOT_Explorer's Soul|r. |cRXP_WARN_Use it to learn how to summon an|r |T236294:0|t|cRXP_FRIENDLY_[Explorer Imp]|r
.train 445459 >>|cRXP_WARN_Use|r |T133257:0|t|cRXP_LOOT_Explorer's Soul|r |cRXP_WARN_to learn how to summon an|r |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]
.train 445459,1 
.train 1120,3 
.use 221978
step << Warlock/Mage
#season 2
#requires ExplorerImp << Warlock
#sticky
#completewith BlastedEnd
#label FelPortalRune
>>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one summon your |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r] and talk to it while next to a portal to send it on an expedition. After 10-20 minutes it will return with loot and a chance to award you with |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
>>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one close it using a |T134945:0|t[|cRXP_LOOT_Scroll of Spatial Mending|r]. This will award you with |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r] << Mage
>>|cRXP_WARN_Be on the lookout for the portals untill you get the rune|r
.collect 221499,1 << Warlock 
.collect 223147,1 << Mage 
.itemcount 220792,1 << Mage 
.use 223148 << Warlock 
.use 220792 << Mage
.train 429311,1 << Mage
.train 431756,1 << Warlock
.train 1120,3 << Warlock 
.unitscan Fel Sliver
.unitscan Fel Crack
.unitscan Fel Tear
.unitscan Fel Scar
.unitscan Fel Rift
step << Warlock/Mage
#season 2
#requires FelPortalRune
#sticky
#completewith BlastedEnd
.itemcount 221499,1 << Warlock 
.itemcount 223147,1 << Mage 
.train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
.train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
.use 221499 << Warlock
.use 223147 << Mage
step << Rogue
#season 2
#completewith next
.goto Blasted Lands,45.27,16.52,10 >>Travel to the top of the tower in front of Dreadmaul Hold
step << Rogue
#season 2
.goto Blasted Lands,45.27,16.52
>>Open the |cRXP_PICK_Abandoned Cache|r. Kill the |cRXP_ENEMY_Murderous Lost One|r (level 46) that spawns
>>Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Carnage|r]
.collect 221461,1 
.unitscan Murderous Lost One
.skill lockpicking,225,1
.train 432299,1
step << Rogue
#season 2
.use 221461
.train 432299 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Carnage|r] |cRXP_WARN_to train|r |T236268:0|t[Carnage]
.itemcount 221461,1
.skill lockpicking,225,1
step
#era
#completewith BlastedEnd
>>As you're questing, keep an eye out for |T134089:0|t[|cRXP_LOOT_Imperfect Draenethyst Fragments|r] and a |T134564:0|t[|cRXP_LOOT_Flawless Draenethyst Sphere|r]
.collect 10593,1,3501,1 
.collect 8244,1,3501,1 
step << Hunter/Rogue
#era
#completewith next
.blastedLands
#loop
.goto Blasted Lands,62.48,27.98,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_Prioritize |cRXP_ENEMY_Scorpids|r, |cRXP_ENEMY_Vultures|r and |cRXP_ENEMY_Boars|r so you can receive the 25 Agility buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Hunter/Rogue
#era
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
>>|cRXP_WARN_Once you have 3 |cRXP_LOOT_Pincers|r, 2 |cRXP_LOOT_Gizzards|r and 1 |cRXP_LOOT_Lung|r turn in the quest for the 25 Agility buff|r
.collect 8393,3,2585,1 
.collect 8396,2,2585,1 
.collect 8392,1,2585,1 
.accept 2585 >> Accept The Decisive Striker
.disablecheckbox
.turnin 2585 >> Turn in The Decisive Striker
.disablecheckbox
.target Bloodmage Drazial
step << Hunter/Rogue
#era
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
.accept 2585 >> Accept The Decisive Striker
.turnin 2585 >> Turn in The Decisive Striker
.target Bloodmage Drazial
step << Druid/Shaman/Warrior
#era
#completewith next
.blastedLands
#loop
.goto Blasted Lands,62.48,27.98,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_Prioritize |cRXP_ENEMY_Hyenas|r, |cRXP_ENEMY_Boars|r and |cRXP_ENEMY_Scorpids|r so you can receive the 25 Strength buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Druid/Shaman/Warrior
#era
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
>>|cRXP_WARN_Once you have 3 |cRXP_LOOT_Jowls|r, 2 |cRXP_LOOT_Lungs|r and 1 |cRXP_LOOT_Pincer|r turn in the quest for the 25 Strength buff|r
.collect 8391,3,2581,1 
.collect 8392,2,2581,1 
.collect 8393,1,2581,1 
.accept 2581 >> Accept Snickerfang Jowls
.disablecheckbox
.turnin 2581 >> Turn in Snickerfang Jowls
.disablecheckbox
.target Bloodmage Drazial
step << Druid/Shaman/Warrior
#era
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
.accept 2581 >> Accept Snickerfang Jowls
.turnin 2581 >> Turn in Snickerfang Jowls
.target Bloodmage Drazial
step
#era
.blastedLands
#loop
.goto Blasted Lands,62.48,27.98,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Lynnore|r and |cRXP_FRIENDLY_Bloodmage Drazial|r
.accept 2601 >> Accept The Basilisk's Bite
.turnin 2601 >> Turn in The Basilisk's Bite
.accept 2603 >> Accept Vulture's Vigor
.turnin 2603 >> Turn in Vulture's Vigor
.target +Bloodmage Lynnore
.goto Blasted Lands,50.640,14.299
.accept 2585 >> Accept The Decisive Striker
.turnin 2585 >> Turn in The Decisive Striker
.accept 2583 >> Accept A Boar's Vitality
.turnin 2583 >> Turn in A Boar's Vitality
.accept 2581 >> Accept Snickerfang Jowls
.turnin 2581 >> Turn in Snickerfang Jowls
.target +Bloodmage Drazial
.goto Blasted Lands,50.548,14.204
.addquestitem 8391,2581
.addquestitem 8392,2583
.addquestitem 8393,2585
.addquestitem 8394,2601
.addquestitem 8396,2603
step
#era
#optional
#completewith BlastedEnd
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
.accept 3501 >> Accept Everything Counts In Large Amounts
.turnin 3501 >> Turn in Everything Counts In Large Amounts
.collect 10593,1,3501,1 
.itemcount 10593,1 
.target Kum'isha the Collector
step
#era
#optional
#completewith BlastedEnd
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
.accept 2521 >> Accept To Serve Kum'isha
.turnin 2521 >> Turn in To Serve Kum'isha
.collect 8244,1,2521,1 
.itemcount 8244,1 
.target Kum'isha the Collector
step << Warrior
#era
#phase 4-6
#loop
.line Blasted Lands,62.4,39.4,62.4,43.0,64.6,47.8,64.0,45.6,63.6,42.6,63.6,39.2,62.4,39.4
.goto Blasted Lands,62.40,39.40,0
.goto Blasted Lands,62.40,39.40,50,0
.goto Blasted Lands,62.40,43.00,50,0
.goto Blasted Lands,64.60,47.80,50,0
.goto Blasted Lands,64.00,45.60,50,0
.goto Blasted Lands,63.60,42.60,50,0
.goto Blasted Lands,63.60,39.20,50,0
.complete 8424,1 
.mob +Shadowsworn Adept
.complete 8424,2 
.mob +Shadowsworn Cultist
.complete 8424,3 
.mob +Shadowsworn Thug
>>|CRXP_WARN_If you go into the cave, be careful of the two elites at each end|r
step << Warrior
#era
#phase 4-6
.goto Swamp of Sorrows,34.20,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 8424 >>Turn in War on the Shadowsworn
.target Fallen Hero of the Horde
step
#era
#completewith next
.subzone 75 >> Travel to Stonard
step
#era
.goto Swamp of Sorrows,45.78,52.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thultazor|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Thultazor
step
#label BlastedEnd
#era
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rartar|r inside the inn
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
.target Rartar
]]);
