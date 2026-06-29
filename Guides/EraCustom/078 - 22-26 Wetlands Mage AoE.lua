RXPGuides.RegisterGuide([[
#version 23
#defaultfor Alliance Mage
#group RestedXP Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 22-26 Wetlands Mage AoE
#next 26-31 Duskwood Mage AoE
step
.goto Wetlands,8.32,58.57
.target Karl Boran
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
.accept 279 >>Accept Claws from the Deep
step
#completewith next
.vendor >> Buy an extra Rune of Teleportation from Falkan or Healing Potions from Dewin inside the house behind Falkan if needed
step
.goto Wetlands,8.55,55.73
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
.accept 484 >> Accept Young Crocolisk Skins
step
.goto Wetlands,10.91,59.64
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 463 >>Accept The Greenwarden
step
>>Go Upstairs
#completewith next
.goto Wetlands,10.49,60.20
.vendor >> Buy Healing Potions from Samor if needed
step
.isQuestTurnedIn 741
.goto Wetlands,10.84,60.44
>>Talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.turnin 942 >>Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
.accept 943 >>Accept The Absent Minded Prospector
step
.goto Wetlands,10.70,60.95
.home >> Set your hearth to Menethil Harbor
step
.goto Wetlands,11.80,57.99
.target Sida
>>Talk to |cRXP_FRIENDLY_Sida|r
.accept 470 >>Accept Digging Through the Ooze
step
.goto Wetlands,11.50,52.13
.target Tarrel Rockweaver
>>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.accept 305 >>Accept In Search of The Excavation Team
step
#sticky
#label Skins
>>AoE Young Crocolisks. Loot them for their skins
.complete 484,1 
step
>>Run to the Raptor Excavation site
.goto Wetlands,34.51,41.70,60,0
.goto Wetlands,37.02,43.82,40,0
.goto Wetlands,37.17,48.09,40,0
.goto Wetlands,38.19,50.90
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.accept 294 >>Accept Ormer's Revenge
step
>>Go into the cave. do NOT loot the fossil yet
.goto Wetlands,38.81,52.39
>>Talk to |cRXP_FRIENDLY_Merrin Rockweaver|r
.turnin 305 >>Turn in In Search of The Excavation Team
.target Merrin Rockweaver
.accept 306 >>Accept In Search of The Excavation Team
step
>>Go back onto the main road and follow it east
.goto Wetlands,34.51,41.70,100,0
.goto Wetlands,49.92,39.37
.target Einar Stonegrip
>>Talk to |cRXP_FRIENDLY_Einar Stonegrip|r
.accept 469 >>Accept Daily Delivery
step
#completewith next
.goto Wetlands,50.20,37.73,0
.vendor >> Buy Healing Potions from Kixxle if you have money
step
.goto Wetlands,56.32,40.41
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 463 >>Turn in The Greenwarden
.target Rethiel the Greenwarden
.accept 276 >>Accept Tramping Paws
step
#completewith next
+It is HIGHLY Recommended you watch the Wetlands Section of the AoE guide, as the gnoll section can be a bit tricky (especially for new AoE mage players)
.link https://youtu.be/SxMc2GoP33c?t=555 >>CLICK HERE
step
.goto Wetlands,63.97,63.30,120,0
.goto Wetlands,62.69,69.21,120,0
.goto Wetlands,55.86,74.99,120,0
.goto Wetlands,61.64,72.37,120,0
.goto Wetlands,63.97,63.30,120,0
.goto Wetlands,62.69,69.21,120,0
.goto Wetlands,55.86,74.99,120,0
.goto Wetlands,61.64,72.37,120,0
>>Run back and forth between the four main gnoll camps, AoEing them all down
.complete 276,1 
.complete 276,2 
step
.xp 24 >> AoE the gnolls all the way until level 24
step
.goto Wetlands,56.32,40.41
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 276 >>Turn in Tramping Paws
.target Rethiel the Greenwarden
.accept 277 >>Accept Fire Taboo
step
#requires Skins
.trainer >> Teleport back to Stormwind or Ironforge, and train your level 24 class spells
step
#completewith next
.goto Ironforge,35.92,60.15,0
+If you have a couple of stacks of wool/silk cloth, go to the bank and bank it
step
.hs >> Hearth to Menethil
>> Buy food/water if needed
step
>>Buy a Flagon of Mead from the Innkeeper
>>Also buy some level 25 drink down to 20 silver
.goto Wetlands,10.69,60.95
.complete 288,1 
step
.goto Wetlands,10.90,59.63
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 288 >>Accept The Third Fleet
.turnin 288 >>Turn in The Third Fleet
.accept 289 >>Accept The Cursed Crew
step
>>Have at least 2 runes of teleportation. If you don't, buy some from Falkan
>>Remember to buy healing potions from Dewin in the building behind him too if needed
.goto Wetlands,8.33,56.45
.collect 17031,2 
step
>>Go into the Barracks. Talk to Stoutfist
.goto Wetlands,9.86,57.49
.target Captain Stoutfist
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
.accept 464 >>Accept War Banners
step
.goto Wetlands,11.50,52.13
.target Tarrel Rockweaver
>>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.turnin 306 >>Turn in In Search of The Excavation Team
step
.goto Wetlands,15.84,40.19,70,0
.goto Wetlands,19.65,40.08,70,0
.goto Wetlands,15.84,40.19,70,0
.goto Wetlands,19.65,40.08,70,0
>>AoE the murlocs in the area. Be careful as they have frost resistance, so save your cold snap for a big blizzard pull
>>If Cold Snap is down, kill the rest of the murlocs with relative safety using Arcane Explosion spam if frost nova gets resisted on pull (refer to video)
.complete 279,1 
.complete 279,2 
.unitscan Gobbler
step
.goto Wetlands,45.98,34.17
>>AoE some of the gnolls en route back to the gnolls you grinded from 22-24. Loot them for some of the flint needed
>>Trappers Net, Fenrunners run fast and at higher hp (25%), and brutes hit very hard
.collect 2611,5 
step
#sticky
#completewith next
.goto Wetlands,64.69,55.48,0
>>Also start AoEing the small Fenrunner pull at the trees just north of the northern-most AoE-able gnoll camp until you have all of your Flint
.complete 277,1 
step
.goto Wetlands,63.97,63.30,120,0
.goto Wetlands,62.69,69.21,120,0
.goto Wetlands,55.86,74.99,120,0
.goto Wetlands,61.64,72.37,120,0
>>Run back and forth between the four main gnoll camps, AoEing them all down
.xp 25 >> AoE the gnolls all the way until level 25
step
.goto Wetlands,45.98,34.17
>>Finish off getting the flint from the Gnolls
>>Trappers Net, Fenrunners run fast and at higher hp (25%), and brutes hit very hard
.collect 2611,9 
step
>>Keep AoEing the gnolls until you have less than 2 minutes on your Hearthstone cd
.goto Wetlands,56.36,40.48
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 277 >>Turn in Fire Taboo
.target Rethiel the Greenwarden
.accept 275 >>Accept Blisters on the Land
step
.hs >> Hearth to Menethil Harbor
>> Buy food/water if needed
step
.goto Wetlands,10.69,60.95
.vendor >>Buy some level 25 drink from the Innkeeper
>>Remember to Conjure level 15 food instead of buying it (and DONT buy level 25 food)
step
.goto Wetlands,8.33,58.58
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >>Turn in Claws from the Deep
.target Karl Boran
.accept 281 >>Accept Reclaiming Goods
step
.goto Wetlands,8.55,55.73
>>Talk to |cRXP_FRIENDLY_James Halloran|r
.turnin 484 >>Turn in Young Crocolisk Skins
.target James Halloran
.accept 471 >>Accept Apprentice's Duties
step
>>Click on the Crate
.goto Wetlands,13.51,41.39
.turnin 281 >>Turn in Reclaiming Goods
.accept 284 >>Accept The Search Continues
step
>>Click on the barrel (5s casttime on opening it)
.goto Wetlands,13.62,38.20
.turnin 284 >>Turn in The Search Continues
.accept 285 >>Accept Search More Hovels
step
>>Click on the barrel
.goto Wetlands,13.94,34.80
.turnin 285 >>Turn in Search More Hovels
.accept 286 >>Accept Return the Statuette
step
#completewith next
+I suggest looking at the pulls for the undead here, as they can be extremely tricky
>>Mobs can be 3 levels above, and you have water disadvantage. There is a cheese aoe spot on the first boat you can abuse however
.link https://youtu.be/SxMc2GoP33c?t=899 >> CLICK HERE
step
#sticky
#label Snuffbox
>>Kill Snellig at the bottom of the first ship. Loot him for his Snuffbox
.goto Wetlands,13.82,30.18
.complete 289,3 
step
.goto Wetlands,13.93,29.75,60,0
.goto Wetlands,14.75,23.95,60,0
.goto Wetlands,13.93,29.75,60,0
.goto Wetlands,14.75,23.95,60,0
.complete 289,1 
.complete 289,2 
step
#sticky
#completewith Ormer
>>Kill the stealthed Fen Creepers found in the shallow parts of the inland water
.complete 275,1 
step
#requires Snuffbox
>>Kill Giant Crocolisks all along the coast. Loot them for their skins
>>Be careful as they Tendon Rip (really long movespeed slow ability)
.goto Wetlands,16.55,27.67,70,0
.goto Wetlands,25.72,20.22,70,0
.complete 471,1 
step
.isOnQuest 943
#sticky
#label Relu
>>AoE Raptors for the Stone of Relu
.complete 943,1 
step
>>AoE the raptors in the area
.goto Wetlands,29.35,45.02,70,0
.goto Wetlands,22.96,55.77,70,0
.complete 294,1 
.complete 294,2 
step
#label Ormer
.goto Wetlands,38.17,50.89
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 294 >>Turn in Ormer's Revenge
.target Ormer Ironbraid
.accept 295 >>Accept Ormer's Revenge
step
.isOnQuest 943
>>Go into the cave. Loot the fossil on the ground
.goto Wetlands,38.81,52.39
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
.accept 299 >>Accept Uncovering the Past
.complete 943,2 
step
>>Go into the cave
.goto Wetlands,38.81,52.39
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
.accept 299 >>Accept Uncovering the Past
step
#sticky
#label Relics
>>Loot the relics found within the Excavation Site. They can be found all over (even up to where Sarltooth is)
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step
.goto Wetlands,34.81,44.02,80,0
.goto Wetlands,32.62,50.73,80,0
.complete 295,1 
.complete 295,2 
step
#requires Relics
>>Kite Sarltooth all the way back to Ormer without killing him until you pick up the next quest if you can, otherwise just turn in
.goto Wetlands,38.18,50.89
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 295 >>Turn in Ormer's Revenge
.target Ormer Ironbraid
.accept 296 >>Accept Ormer's Revenge
step
>>Kill Sarltooth. Loot him for his Talon. He's found on the south-eastern part of the site, up the mountain
.goto Wetlands,33.11,51.40
.complete 296,1 
step
.goto Wetlands,38.18,50.89
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 296 >>Turn in Ormer's Revenge
step
>>Go into the cave
.goto Wetlands,38.81,52.39
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
.turnin 299 >>Turn in Uncovering the Past
step
#sticky
#label Creeperawman
>>Kill the stealthed Fen Creepers found in the shallow parts of the inland water
.complete 275,1 
step
.isOnQuest 943
#requires Relu
>>Run out of the Site to Ironbeard's Tomb. AoE Oozes. Loot them for Sida's Bag
.goto Wetlands,44.07,26.67
.complete 470,1 
step
>>Run out of the Site to Ironbeard's Tomb. AoE Oozes. Loot them for Sida's Bag
.goto Wetlands,44.07,26.67
.complete 470,1 
step
#requires Creeperawman
>>Run to the orc area. AoE them for their War Banners
>>Be careful as they attack fast, net, and have higher fire resistance
.goto Wetlands,43.71,43.98
.complete 464,1 
step
.goto Wetlands,56.36,40.48
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 275 >>Turn in Blisters on the Land
step
.hs >> Hearth to Menethil Harbor
>> Buy food/water if needed
step
#completewith Crew
.vendor >> Remember to buy level 25 drink/Healing Potions if needed. But save some money for level 26 training later
step
.isOnQuest 943
.goto Wetlands,10.84,60.43
>>Go upstairs
.target Archaeologist Flagongut
>>Talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.turnin 943 >>Turn in The Absent Minded Prospector
step
#label Crew
.goto Wetlands,10.91,59.63
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.turnin 289 >>Turn in The Cursed Crew
.target First Mate Fitzsimmons
.accept 290 >>Accept Lifting the Curse
step
.goto Wetlands,11.80,57.99
.target Sida
>>Talk to |cRXP_FRIENDLY_Sida|r
.turnin 470 >>Turn in Digging Through the Ooze
step
>>Go inside the barracks
.goto Wetlands,9.86,57.49
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
.turnin 464 >> Turn in War Banners
.target Captain Stoutfist
.accept 465 >>Accept Nek'rosh's Gambit
step
.goto Wetlands,8.57,55.73
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
.turnin 471 >>Turn in Apprentice's Duties
step
#completewith next
.vendor >> Make sure you have at least 2 runes of teleportation from Falkan
.collect 17031,2 
step
.goto Wetlands,8.32,58.58
.target Karl Boran
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 286 >>Turn in Return the Statuette
step
.xp 26
step
.zone Stormwind City >> Teleport to Stormwind
step
>>Talk to Jennea
.goto Stormwind City,38.62,79.30
.target Jennea Cannon
.target Bink
>>Talk to |cRXP_FRIENDLY_Bink|r
.accept 1939 >>Accept High Sorcerer Andromath
.trainer >> Train your level 26 spells
step
>>Go through the green portal, then turnin immediately on your left
.goto Stormwind City,37.53,81.65
>>Talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
.turnin 1939 >>Turn in High Sorcerer Andromath
.target High Sorcerer Andromath
.accept 1938 >>Accept Ur's Treatise on Shadow Magic
step
#completewith next
+Bank cloth and/or buy more runes of teleportation if needed
>>You'll eventually need 12 stacks of Wool, Silk, Mageweave and Runecloth
step
.goto Stormwind City,66.28,62.14
.fly Redridge >> Fly to Redridge
]]);
