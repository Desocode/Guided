RXPGuides.RegisterGuide([[
#version 23
#defaultfor Horde Mage
#group RestedXP Horde Mage AoE
#classic
#tbc
#mop
<< Horde Mage
#name 30-36 Arathi/Alterac AoE
#next 36-60 Mage AoE
step
.goto Arathi Highlands,73.84,32.47
.home >> Set your Hearth to Hammerfall
step
.goto Arathi Highlands,73.02,32.70
.fp Hammerfall >> Get the Hammerfall Flight Path
step
.goto Arathi Highlands,72.77,33.67
.target Gor'mul
>>Talk to |cRXP_FRIENDLY_Gor'mul|r
.accept 655 >>Accept Hammerfall
step
.goto Arathi Highlands,74.71,36.29
>>Talk to |cRXP_FRIENDLY_Tor'gan|r
.turnin 655 >>Turn in Hammerfall
.target Tor'gan
.accept 672 >>Accept Raising Spirits
.accept 671 >>Accept Foul Magics
step
#completewith next
>>AoE raptors en route to Dabyrie Farmstead. Loot them for their eyes
.complete 672,1 
step
.goto Arathi Highlands,55.25,39.86,150 >> Run to Dabyrie's Farmstead
step
#completewith next
+Try and avoid pulling the named mobs just yet if possible. Marcel has Shield Wall (75% reduced damage), Fardel has ranged poison+Thrash, Kenata does nothing
step
.xp 32 >> AoE the Dabyrie Farmstead to 32
>>Start saving the Wool Cloth and Silk Cloth you get. You need 12 stacks for later
step
>>AoE the named NPCs. Loot them for their heads
.goto Arathi Highlands,56.56,38.69
.complete 1164,3 
.goto Arathi Highlands,54.20,38.05
.complete 1164,2 
.goto Arathi Highlands,56.41,36.09
.complete 1164,1 
step
.zone Undercity >> Teleport to Undercity
step
.goto Undercity,85.14,10.03
.trainer >> Train your class spells
step
.goto Undercity,82.79,15.82
.vendor >> Go to Hannah. Buy some Runes of Teleportation
.collect 17031,3 
step
#completewith next
.goto Undercity,65.97,44.73
+Bank your Wool Cloth and Silk Cloth here from earlier. You need 12 stacks of each (240) for later
step
.goto Undercity,63.82,49.37
.target Genavie Callow
>>Talk to |cRXP_FRIENDLY_Genavie Callow|r
.turnin 1164 >>Turn in To Steal From Thieves
step
.goto Undercity,53.00,77.48,40,0
.goto Undercity,48.82,69.28
.target Master Apothecary Faranell
>>Talk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
.turnin 513 >>Turn in Elixir of Agony
step
.hs >> Hearth to Hammerfall
.vendor >> vendor trash
step
.goto Arathi Highlands,42.14,39.38
>>AoE raptors en route to Dabyrie Farmstead. Loot them for their eyes
.complete 672,1 
step
.goto Arathi Highlands,55.25,39.86,150 >> Run to Dabyrie's Farmstead
step
.xp 34 >> AoE the Dabyrie Farmstead to 34
>>Start saving the Wool Cloth and Silk Cloth you get. You need 12 stacks for later
step
>>Go in and around the cave. Start AoEing ogres
.goto Arathi Highlands,32.93,44.02
.complete 676,1 
.complete 676,2 
step
>>Start AoEing Syndicates in the area. Try and avoid the Pathstalkers. Be careful of misspulling stealthed mobs
.goto Arathi Highlands,32.32,28.58
.complete 671,1 
step
.zone Undercity >> Teleport to Undercity
step
.goto Undercity,85.14,10.03
.trainer >> Train your class spells
step
.goto Undercity,82.79,15.82
.vendor >> Go to Hannah. Buy some Runes of Teleportation
.collect 17031,3 
step
#completewith next
.goto Undercity,65.97,44.73
+Bank your Wool Cloth and Silk Cloth here from earlier. You need 12 stacks of each (240) for later
step
.hs >> Hearth to Hammerfall
.vendor >> Buy level 35 drink from the Innkeeper once you hearthed
step
.goto Arathi Highlands,74.26,33.93
.target Drum Fel
>>Talk to |cRXP_FRIENDLY_Drum Fel|r
.turnin 676 >>Turn in The Hammer May Fall
step
.goto Arathi Highlands,74.72,36.29
>>Talk to |cRXP_FRIENDLY_Tor'gan|r
.turnin 671 >>Turn in Foul Magics
.turnin 672 >>Turn in Raising Spirits
.target Tor'gan
.accept 674 >>Accept Raising Spirits
step
.goto Arathi Highlands,72.61,34.16
>>Talk to |cRXP_FRIENDLY_Gor'mul|r
.turnin 674 >>Turn in Raising Spirits
.target Gor'mul
.accept 675 >>Accept Raising Spirits
step
.goto Arathi Highlands,74.72,36.29
.target Tor'gan
>>Talk to |cRXP_FRIENDLY_Tor'gan|r
.turnin 675 >>Turn in Raising Spirits
step
.goto Arathi Highlands,73.02,32.70
.fly Hillsbrad >> Fly to Tarren Mill
step
.home >> Set your Hearth to Tarren Mill
.goto Hillsbrad Foothills,62.78,19.03
step
#sticky
#completewith next
+It is HIGHLY recommended you watch the link, as it can be a bit tricky here
.link https://youtu.be/9zss2r74wmA >>CLICK HERE
step
>>AoE Syndicates. Loot them for the Missive
.goto Alterac Mountains,58.35,67.49,120,0
.goto Alterac Mountains,47.65,82.22,120,0
.complete 533,1 
step
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.xp 34+56000 >> AoE Ogres and Syndicate to 34 & 56000+/62800xp
>>Keep grinding until your hearth cooldown is <8 minutes
step
#completewith next
.goto Alterac Mountains,42.67,95.30,40 >> Go into the Yeti Cave
step
>>AoE Yetis. Loot them for the Rod
.goto Alterac Mountains,40.83,93.24
.complete 552,1 
step
#sticky
#completewith Stonetoken
>>AoE the Dalaran mobs. Loot them for Worn Stone Tokens
.complete 556,1 
step
>>Kill Alina. Loot her for the Shard. Kill Dermot, loot him for the Wedge
.goto Alterac Mountains,20.2,86.3
.complete 544,3 
.complete 544,1 
step
>>Go outside and kill Ricter. Loot him for the Marble
.goto Alterac Mountains,19.7,84.6
.complete 544,2 
step
#label Stonetoken
>>Go into the second floor of the other building. Kill Kegan Darkmar. Loot him for the Oval
.goto Alterac Mountains,18.6,84.4,15,0
.goto Alterac Mountains,17.8,83.2
.complete 544,4 
step
.goto Alterac Mountains,20.1,86.2,40,0
.goto Alterac Mountains,17.9,83.0,40,0
.goto Alterac Mountains,10.7,76.6,40,0
.goto Alterac Mountains,19.4,75.6,40,0
.goto Alterac Mountains,20.1,86.2,40,0
.goto Alterac Mountains,17.9,83.0,40,0
.goto Alterac Mountains,10.7,76.6,40,0
.goto Alterac Mountains,19.4,75.6,40,0
>>Kill the Dalaran mobs. Loot them for Worn Stone Tokens
.complete 556,1 
step
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.xp 36 >> AoE Cats/Syndicates/Ogre mobs to level 36
>>Start saving the Silk Cloth you get. You need 12 stacks for later
step
.zone Undercity >> Teleport to Undercity
step
.goto Undercity,85.14,10.03
.trainer >> Train your class spells
>>Make sure you have at least 50s leftover
step
.goto Undercity,82.79,15.82
.vendor >> Go to Hannah. Buy some Runes of Teleportation
.collect 17031,5 
step
#completewith next
.goto Undercity,65.97,44.73
+Bank your Silk Cloth here from earlier. You need 12 stacks of each (240) for later
step
.hs >> Hearth to Tarren Mill
.vendor >> Buy level 35 drink if needed
step
.goto Hillsbrad Foothills,61.50,20.94
>>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
.turnin 556 >>Turn in Stone Tokens
>>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
.turnin 544 >>Turn in Prison Break In
.target Keeper Bel'varil
.accept 557 >>Accept Bracers of Binding
.target Magus Wordeen Voidglare
.accept 545 >>Accept Dalaran Patrols
step
.goto Hillsbrad Foothills,63.24,20.65
>>Talk to |cRXP_FRIENDLY_Krusk|r
.turnin 533 >>Turn in Infiltration
.target Krusk
.accept 503 >>Accept Gol'dir
step
.goto Hillsbrad Foothills,63.88,19.66
.target Novice Thaivand
>>Talk to |cRXP_FRIENDLY_Novice Thaivand|r
.turnin 552 >>Turn in Helcular's Revenge
step
>>Find and kill Jailor Borhuin. Loot him for the Rusted Iron Key
.goto Alterac Mountains,63.19,43.68,40,0
.goto Alterac Mountains,62.11,40.43,40,0
.goto Alterac Mountains,59.96,43.68,40,0
.complete 503,2 
.unitscan Jailor Borhuin
step
>>Go upstairs into the second floor of the inn
.goto Alterac Mountains,60.64,43.89
.complete 503,1 
>>Talk to |cRXP_FRIENDLY_Gol'dir|r
.turnin 503 >>Turn in Gol'dir
.target Gol'dir
.accept 506 >>Accept Blackmoore's Legacy
step
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.xp 36+60000 >> Grind the Ogres and Syndicate to 36 & 60000+/71600xp
>>Keep grinding until your hearth cooldown is <8 minutes
step
>>AoE Cats/Syndicates/Ogres en route
>>Kill/AoE the dalaran mobs in the area
.goto Alterac Mountains,11.73,77.20,120,0
.goto Alterac Mountains,21.51,56.63,120,0
.goto Alterac Mountains,11.73,77.20
.complete 545,1 
.complete 545,2 
.complete 557,1 
step
.hs >> Hearth to Tarren Mill
.vendor >> Buy level 35 drink if needed
step
.goto Hillsbrad Foothills,62.29,19.04
.vendor >> Buy 3 Soothing Spices from Christoph on the first floor of the Inn
.collect 3713,3 
step
.goto Hillsbrad Foothills,63.24,20.66
.target Krusk
>>Talk to |cRXP_FRIENDLY_Krusk|r
.turnin 506 >>Turn in Blackmoore's Legacy
step
.goto Hillsbrad Foothills,61.50,20.94
.target Keeper Bel'varil
>>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
.turnin 557 >>Turn in Bracers of Binding
.target Magus Wordeen Voidglare
>>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
.turnin 545 >>Turn in Dalaran Patrols
step
.zone Orgrimmar >> Teleport to Orgrimmar
step
.goto Orgrimmar,45.11,63.91
.fly Camp T >> Fly to Camp Taurajo
]]);
