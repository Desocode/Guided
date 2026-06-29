RXPGuides.RegisterGuide([[
#version 23
#defaultfor Alliance Mage
#group RestedXP Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 31-33 Hillsbrad Mage AoE
#next 33-60 Mage AoE
step
>>Go inside the Wetlands Inn
.goto Wetlands,10.58,60.59
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 270 >>Turn in The Doomed Fleet
.target Glorin Steelbrow
.accept 321 >>Accept Lightforge Iron
step
>>Turning this in will make the NPC behind you start to run out of the Inn. Catch up to him
.goto Wetlands,10.60,60.77
>>Talk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1248 >>Turn in The Missing Diplomat
.target Mikhail
.accept 1249 >>Accept The Missing Diplomat
step
>>Quickly run outside the Inn. Nova/Polymorph his friend, and nuke Tapoke
.goto Wetlands,10.50,59.30
.complete 1249,1 
step
>>Mikhail might be stuck in an rp animation, you may have to wait a few seconds
.goto Wetlands,10.60,60.77
.target Mikhail
>>Talk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1249 >>Turn in The Missing Diplomat
step
>>Talk to Tapoke behind you
.goto Wetlands,10.55,60.26
.target Tapoke "Slim" Jahn
>>Talk to |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
.accept 1250 >>Accept The Missing Diplomat
step
.goto Wetlands,10.60,60.77
>>Talk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1250 >>Turn in The Missing Diplomat
.target Mikhail
.accept 1264 >>Accept The Missing Diplomat
step
>>Run out the inn, and swim over to the murlocs
.goto Wetlands,12.11,64.20
.turnin 321 >>Turn in Lightforge Iron
.accept 324 >>Accept The Lost Ingots
step
>>Single-target nuke the murlocs. Be careful as they net
>>The droprate can be really bad on this quest
.goto Wetlands,12.99,64.06,100,0
.goto Wetlands,10.26,67.93,100,0
.goto Wetlands,9.90,72.02,100,0
.complete 324,1 
step
.goto Wetlands,10.85,55.90
.target Harlo Barnaby
>>Talk to |cRXP_FRIENDLY_Harlo Barnaby|r
.accept 472 >>Accept Fall of Dun Modr
step
>>Run up the back of the ship. Kill Captain Halyndor. Don't cast on him when he has the green shield around him, as it reflects spells
.goto Wetlands,15.92,23.15,20,0
.goto Wetlands,15.49,23.50
.complete 290,1 
step
>>Swim under the ship on the north side. Open the grey strongbox
.goto Wetlands,14.36,24.04
.turnin 290 >>Turn in Lifting the Curse
.accept 292 >>Accept The Eye of Paleth
step
>>Right click on the catapult
.goto Wetlands,47.49,46.92
.turnin 465 >>Turn in Nek'rosh's Gambit
step << skip
.goto Wetlands,53.48,54.78
.complete 474,1 
step
.goto Wetlands,49.80,18.26
.target Longbraid the Grim
>>Talk to |cRXP_FRIENDLY_Longbraid the Grim|r
.turnin 472 >>Turn in Fall of Dun Modr
step
.goto Wetlands,49.90,18.23
.target Rhag Garmason
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
.accept 631 >>Accept The Thandol Span
step
>>Go into the doorway at the bridge. Avoid fighting mobs
>>Loot the corpse on the bottom floor
.goto Wetlands,51.30,8.11,20,0
.goto Wetlands,51.28,7.96
.turnin 631 >>Turn in The Thandol Span
.accept 632 >>Accept The Thandol Span
step
.goto Wetlands,49.90,18.23
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 632 >>Turn in The Thandol Span
.target Rhag Garmason
.accept 633 >>Accept The Thandol Span
step
>>Cross the bridge into Arathi. Get on the edge of the broken bridge, then cast Slow Fall on yourself with the feather you took out the bank earlier. Jump across
>>If you failed the jump, skip this quest
>>Accepting this quest will start a 15 minute timer. Be quick and focused
.goto Arathi Highlands,43.99,88.24,40,0
.goto Arathi Highlands,42.91,91.46,20,0
.goto Arathi Highlands,43.24,92.64
.target Foggy MacKreel
>>Talk to |cRXP_FRIENDLY_Foggy MacKreel|r
.accept 647 >>Accept MacKreel's Moonshine
step
>>Loot the letter near the dwarf corpse underwater
.goto Arathi Highlands,44.29,92.89
.collect 4433,1,637 
.accept 637 >>Accept Sully Balloo's Letter
step
#completewith next
.goto Arathi Highlands,52.5,90.4,45 >> Swim east toward the ramp here
step
>>Click on the Wagon
.goto Arathi Highlands,48.87,88.14
.complete 633,1 
step
>>Run back to Wetlands
.goto Arathi Highlands,46.25,88.14,40,0
.goto Wetlands,49.92,18.20
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 633 >>Turn in The Thandol Span
.target Rhag Garmason
.accept 634 >>Accept Plea To The Alliance
step
>>Run to Arathi
.goto Arathi Highlands,45.83,47.56
.target Captain Nials
>>Talk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 634 >>Turn in Plea To The Alliance
step
.goto Arathi Highlands,46.65,47.01
.target Skuerto
>>Talk to |cRXP_FRIENDLY_Skuerto|r
.turnin 690 >>Turn in Malin's Request
step
#completewith next
.goto Arathi Highlands,46.34,47.03
.vendor >>Buy potions from Drovnar if you want
step
.goto Arathi Highlands,45.73,46.10
.fp Refuge Pointe >> Get the Refuge Pointe flight path
step
>>Run to Southshore, into the inn, then into the basement. If you fail the timed quest, abandon it and skip this step
.goto Arathi Highlands,19.72,29.04,40,0
.goto Hillsbrad Foothills,50.71,58.76,15,0
.goto Hillsbrad Foothills,52.09,58.70
.target Brewmeister Bilger
>>Talk to |cRXP_FRIENDLY_Brewmeister Bilger|r
.turnin 647 >>Turn in MacKreel's Moonshine
step
>>go back upstairs
.goto Hillsbrad Foothills,51.89,58.68
.target Chef Jessen
>>Talk to |cRXP_FRIENDLY_Chef Jessen|r
.accept 555 >>Accept Soothing Turtle Bisque
step
>>Go back out the Inn
.goto Hillsbrad Foothills,50.34,59.05
.target Phin Odelic
>>Talk to |cRXP_FRIENDLY_Phin Odelic|r
.accept 659 >>Accept Hints of a New Plague?
step
.goto Hillsbrad Foothills,49.47,58.73
.target Marshal Redpath
>>Talk to |cRXP_FRIENDLY_Marshal Redpath|r
.accept 500 >>Accept Crushridge Bounty
step
.goto Hillsbrad Foothills,48.14,59.10
.target Magistrate Henry Maleb
>>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.accept 505 >>Accept Syndicate Assassins
step
.goto Hillsbrad Foothills,50.56,57.10
.target Loremaster Dibbs
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 538 >>Turn in Southshore
step
>>Go inside the building. Buy 4 soothing spices from Micha for quests later
.goto Hillsbrad Foothills,48.93,55.02
.collect 3713,4 
step
.goto Hillsbrad Foothills,49.34,52.27
.fp Southshore >> Get the Southshore flight path
.fly Menethil >> Fly to Menethil
step
>>Run Into the inn
.goto Wetlands,10.59,60.59
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 324 >> Turn in The Lost Ingots
.target Glorin Steelbrow
.accept 322 >>Accept Blessed Arm
.turnin 292 >>Turn in The Eye of Paleth
.accept 293 >>Accept Cleansing the Eye
step
.zone Stormwind City >> Teleport to Stormwind City
step << skip
.goto Stormwind City,36.86,81.13
.trainer >> Train your class spells
step
>>Go into Stormwind Cathedral
.goto Stormwind City,42.62,33.59,30,0
.goto Stormwind City,39.59,27.20
.target Archbishop Benedictus
>>Talk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.turnin 293 >>Turn in Cleansing the Eye
step
>>Run to the Dwarven District
.goto Stormwind City,51.76,12.08
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
.turnin 322 >>Turn in Blessed Arm
.target Grimand Elmore
.accept 325 >>Accept Armed and Ready
step
.goto Stormwind City,66.27,62.12
.fly Westfall >> Fly to Westfall
step
>>Go east to Duskwood
.goto Duskwood,7.78,34.06
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 325 >>Turn in Armed and Ready
.target Sven Yorgen
.accept 55 >>Accept Morbent Fel
step
>>Clear the mobs out inside the house. Equip Morbent's Bane in your inventory.
>>Split pull the pack in Morbent's upstairs room with a blizzard, then kite him out the building. Use Morbent's bane on him
>>Nuke him with Single Target
.goto Duskwood,17.60,33.42,20,0
.goto Duskwood,16.91,33.40
.complete 55,1 
step
>>Go to the big tree and pull Mor'Ladim when he patrols gets close. Kite him using Frostbolt and slowly kill him
.goto Duskwood,21.66,40.73
.complete 228,1 
step
>>Go to Eliza's Grave and summon her. Jump onto Abercrombie's shack behind you, and nuke Eliza down
>>Use Frost Ward if you trained it. Loot Eliza for her heart
.goto Duskwood,28.85,30.72
.turnin 254 >> Turn in Digging Through the Dirt
.complete 253,1 
step
.goto Duskwood,7.79,34.07
.target Sven Yorgen
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 55 >>Turn in Morbent Fel
step
.hs >> Hearth to Darkshire
>> Buy food/water if needed
step
.goto Duskwood,73.57,46.88
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 228 >>Turn in Mor'Ladim
.target Commander Althea Ebonlocke
.accept 229 >>Accept The Daughter Who Lived
step
>>Go into the Town Keep
.goto Duskwood,71.93,46.42
.target Lord Ello Ebonlocke
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 253 >>Turn in Bride of the Embalmer
step
#sticky
.destroy 3248 >>Throw away the Translated Letter from The Embalmer
step
>>Turn in at Watcher Ladimore. She patrols the inner circle of Darkshire
.goto Duskwood,75.02,45.51
.target Watcher Ladimore
>>Talk to |cRXP_FRIENDLY_Watcher Ladimore|r
.turnin 229 >>Turn in The Daughter Who Lived
step
.zone Ironforge >> Teleport to Ironforge
step
>>You may need to wait out her short RP event
.goto Ironforge,63.79,67.78
>>Talk to |cRXP_FRIENDLY_Sara Balloo|r
.turnin 637 >>Turn in Sully Balloo's Letter
.target Sara Balloo
.accept 683 >>Accept Sara Balloo's Plea
step
.goto Ironforge,39.10,56.19
>>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.turnin 683 >>Turn in Sara Balloo's Plea
.target King Magni Bronzebeard
.accept 686 >>Accept A King's Tribute
step
#completewith next
+Bank your cloth and light feathers if needed
step
.goto Ironforge,38.75,87.04
>>Talk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.turnin 686 >>Turn in A King's Tribute
.target Grand Mason Marblesten
.accept 689 >>Accept A King's Tribute
step
.goto Ironforge,55.50,47.74
.fly Southshore >> Fly to Southshore
step
>>Go into the Inn
.goto Hillsbrad Foothills,51.17,58.92
.home >> Set your hearth to Southshore
step
.goto Hillsbrad Foothills,52.42,55.96
.target Darren Malvew
>>Talk to |cRXP_FRIENDLY_Darren Malvew|r
.accept 564 >>Accept Costly Menace
step
#completewith next
.goto Hillsbrad Foothills,55.57,55.82,100 >> Run to the river leading up to Alterac
step
#completewith next
.goto Alterac Mountains,83.14,52.75,120,0
>>AoE turtles along the river up north toward Western Plaguelands. You can get all 10 later if needed
>>Note that Turtles have frost resistance, so use Arcane Explosion and backwards strafe to kill him. Watch the video for reference
.link https://youtu.be/SxMc2GoP33c?t=3375 >> CLICK HERE
.collect 3712,10,555,1 
step
.goto Alterac Mountains,80.50,32.01,100,0
.zone Western Plaguelands >> Travel to Western Plaguelands
step
.goto Alterac Mountains,79.01,30.63
.fp Chillwind Camp >> Get the Chillwind Camp flight path
step
>>AoE ogres. Loot them for knucklebones
>>Try and avoid the level 36 brutes, as they will resist too much
.goto Alterac Mountains,45.32,61.65,120,0
.goto Alterac Mountains,54.66,52.80,120,0
.goto Alterac Mountains,45.32,61.65,120,0
.goto Alterac Mountains,54.66,52.80,120,0
.complete 500,1 
step
#sticky
#completewith Syndicate
>>Kill Lions that you see. Focus on the Hulking ones if possible
.complete 564,1 
.complete 564,2 
step
#sticky
#label Plans
>>Loot the plans from the table in the camp
.goto Alterac Mountains,67.28,47.30,90,0
.goto Alterac Mountains,58.32,67.92
.accept 510 >>Accept Foreboding Plans
.accept 511 >>Accept Encrypted Letter
step
#label Syndicate
>>AoE Syndicates in the area. Go up north and kill Ogres for knucklebones if you're waiting on respawns after clearing both camps
.goto Alterac Mountains,58.32,67.92,100,0
.goto Alterac Mountains,47.72,82.08,100,0
.complete 505,1 
.complete 505,2 
step
#requires Plans
.goto Hillsbrad Foothills,43.1,28.0,24,0
.goto Hillsbrad Foothills,43.9,31.4,24,0
.goto Hillsbrad Foothills,44.1,29.0,24,0
.goto Hillsbrad Foothills,43.6,30.2,24,0
.goto Hillsbrad Foothills,43.0,32.9,24,0
.goto Hillsbrad Foothills,41.6,31.9,24,0
.goto Hillsbrad Foothills,45.1,28.3,24,0
.goto Hillsbrad Foothills,45.2,25.2,24,0
.goto Hillsbrad Foothills,46.3,31.9,24,0
>>Loot the lighter, highlighted shards of granite against the wall. There can only be 2-3 up at a time (so you'll likely backtrack for spawns)
>>AoE the Yetis in the area
.complete 689,1 
step
.goto Alterac Mountains,39.08,92.32,150,0
.goto Hillsbrad Foothills,35.25,23.37
>>AoE Lions that you see. Focus on the Hulking ones if possible
.complete 564,1 
.complete 564,2 
step
>>Run along the shore, AoEing turtles for their meat
.goto Alterac Mountains,18.36,51.30,100,0
.goto Alterac Mountains,36.90,20.14,100,0
.collect 3712,10,555,1 
step
.hs >> Hearth to Southshore
.vendor >> Buy up to 120 level 35 drink from the Innkeeper
step
>>At the back of the Inn
.goto Hillsbrad Foothills,51.89,58.68
.target Chef Jessen
>>Talk to |cRXP_FRIENDLY_Chef Jessen|r
.turnin 555 >>Turn in Soothing Turtle Bisque
step
.goto Hillsbrad Foothills,49.47,58.73
.target Marshal Redpath
>>Talk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 500 >>Turn in Crushridge Bounty
step
>>Inside the keep
.goto Hillsbrad Foothills,48.14,59.11
.target Magistrate Henry Maleb
>>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 505 >>Turn in Syndicate Assassins
.turnin 510 >>Turn in Foreboding Plans
step
.goto Hillsbrad Foothills,50.57,57.10
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 511 >>Turn in Encrypted Letter
.target Loremaster Dibbs
.accept 514 >>Accept Letter to Stormpike
step
.goto Hillsbrad Foothills,52.42,55.97
.target Darren Malvew
>>Talk to |cRXP_FRIENDLY_Darren Malvew|r
.turnin 564 >>Turn in Costly Menace
step
.zone Ironforge >> Teleport to Ironforge
step
#completewith next
+Make sure to bank your cloth and repair. You're not going back to town for hours soon
step
>>If you get unlucky on the quest accept and have to wait out the RP event, start conjuring level 25 water en masse
.goto Ironforge,39.02,88.08
>>Talk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.turnin 689 >>Turn in A King's Tribute
.target Grand Mason Marblesten
.accept 700 >>Accept A King's Tribute
step
.goto Ironforge,39.07,56.23
.target King Magni Bronzebeard
>>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.turnin 700 >>Turn in A King's Tribute
step
.goto Ironforge,74.64,11.74
>>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
.turnin 514 >>Turn in Letter to Stormpike
.target Prospector Stormpike
.accept 525 >>Accept Further Mysteries
step
.goto Ironforge,55.50,47.74
.fly Arathi >> Fly to Arathi
]]);
