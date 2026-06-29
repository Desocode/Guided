RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde Mage AoE
#classic
#tbc
#mop
<< Horde Mage
#name 36-60 Mage AoE
step
.goto The Barrens,45.58,59.04
.home >> Set your Hearth to Camp Taurajo
step
>>Run South into Dustwallow Marsh
>>Click the Hoofprints on the ground
.goto Dustwallow Marsh,29.71,47.65
.accept 1268 >>Accept Suspicious Hoofprints
step
.goto Dustwallow Marsh,29.83,48.24
>>Click the Badge on the wood
.accept 1269 >>Accept Lieutenant Paval Reethe
step
>>Click the Shield above the fireplace
.goto Dustwallow Marsh,29.64,48.58
.accept 1251 >>Accept The Black Shield
step
.goto Dustwallow Marsh,35.15,38.26
.target Mudcrush Durtfeet
>>Talk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
.accept 1177 >>Accept Hungry!
step
.goto Dustwallow Marsh,35.56,31.88
.fp Brackenwall >> Get the Brackenwall flight path
step
.goto Dustwallow Marsh,36.42,31.89
>>Talk to |cRXP_FRIENDLY_Krog|r
.turnin 1251 >>Turn in The Black Shield
.target Krog
.accept 1321 >>Accept The Black Shield
.turnin 1268 >>Turn in Suspicious Hoofprints
.turnin 1269 >>Turn in Lieutenant Paval Reethe
step
.goto Dustwallow Marsh,36.53,30.79
.target Do'gol
>>Talk to |cRXP_FRIENDLY_Do'gol|r
.turnin 1321 >>Turn in The Black Shield
step
.goto Dustwallow Marsh,34.35,22.03
.target Do'gol
>>Talk to |cRXP_FRIENDLY_Do'gol|r
.accept 1322 >>Accept The Black Shield
step
.goto Dustwallow Marsh,35.21,30.66
.target Nazeer Bloodpike
>>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
.accept 1201 >>Accept in Theramore Spies
step
>>Search for stealthed Theramore Infiltrators north-east of Brackenwall. AoE them if possible
.goto Dustwallow Marsh,39.11,22.81,120,0
.goto Dustwallow Marsh,38.99,27.55,120,0
.goto Dustwallow Marsh,41.65,25.78,120,0
.complete 1201,1 
step
.goto Dustwallow Marsh,55.43,26.26
.target "Swamp Eye" Jarl
>>Talk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1218 >>Accept Soothing Spices
.turnin 1218 >>Turn in Soothing Spices
.accept 1206 >>Accept Jarl Needs Eyes
step
.goto Dustwallow Marsh,55.45,25.92
.accept 1238 >>Accept The Lost Report
step
#completewith next
+I HIGHLY recommend watching the mage guide for these mobs, as they are arguably the hardest part of the AoE Mage leveling experience
>>I wouldn't recommend doing the turtle pack until level 38+
.link https://youtu.be/SxMc2GoP33c?t=3824 >> CLICK HERE
step
#sticky
#label Head
>>Kill Murlocs. Loot them for their heads
.complete 1177,1 
step
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 38 >> AoE Murlocs to level 38
step
#requires Head
.trainer >> Teleport to Undercity. Train your level 38 spells
>>Start being very careful with your money too, as it's very nice to have your mount at level 40
step
.hs >> Hearth to Camp Taurajo
.vendor >> Buy level 35 drink if needed
step
.goto The Barrens,44.44,59.15
.fly Brackenwall >> Fly to Brackenwall Village
step
.goto Dustwallow Marsh,35.15,38.25
.target Mudcrush Durtfeet
>>Talk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
.turnin 1177 >>Turn in Hungry!
step
.goto Dustwallow Marsh,35.21,30.66
.target Nazeer Bloodpike
>>Talk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
.turnin 1201 >>Turn in Theramore Spies
.turnin 1238 >>Turn in The Lost Report
step
>>AoE Spiders in the area
.goto Dustwallow Marsh,34.39,21.97
.complete 1322,1 
.complete 1206,1 
step
.goto Dustwallow Marsh,36.53,30.80
>>Talk to |cRXP_FRIENDLY_Do'gol|r
.turnin 1322 >>Turn in The Black Shield
.target Do'gol
.accept 1323 >>Accept The Black Shield
step
.goto Dustwallow Marsh,36.42,31.89
.target Krog
>>Talk to |cRXP_FRIENDLY_Krog|r
.turnin 1323 >>Turn in The Black Shield
step
.goto Dustwallow Marsh,55.43,26.26
.target "Swamp Eye" Jarl
>>Talk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.turnin 1206 >>Turn in Jarl Needs Eyes
step
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 40 >> AoE Murlocs to level 40
step << Undead
.zone Undercity >> Teleport to Undercity
.trainer >> Train your class spells
step << skip 
#sticky
#completewith next
.goto Undercity,82.36,15.31
+Go to the Reagent Vendor on your right and perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in.
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
>>If you can't do this, just run out of Undercity normally
step << Undead
#era
>>Skip this step if you won't have 90g or more after vendoring trash
.goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << Undead
#som
>>Skip this step if you won't have 50g or more after vendoring trash
.goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << Undead
#era
.zone Tirisfal Glades >>Skip this step if you won't have 90g or more after vendoring trash
.trainer >>Run into Tirisfal Glades and get your mount and mount training.
.goto Tirisfal Glades,59.93,52.57
step << Undead
#som
.zone Tirisfal Glades >>Skip this step if you won't have 50g or more after vendoring trash
.trainer >>Run into Tirisfal Glades and get your mount and mount training.
.goto Tirisfal Glades,59.93,52.57
step << Troll
.zone Orgrimmar >> Teleport to Orgrimmar
.trainer >> Train your class spells
step << Troll
#era
.zone Durotar >>Skip this step if you won't have 90g or more after vendoring trash
.goto Durotar,55.21,75.53
.trainer >>Run to out of Orgrimmar all the way down to Sen'jin and get your mount and mount training.
step << Troll
#som
.zone Durotar >>Skip this step if you won't have 50g or more after vendoring trash
.goto Durotar,55.21,75.53
.trainer >>Run to out of Orgrimmar all the way down to Sen'jin and get your mount and mount training.
step
.hs >> Hearth to Camp Taurajo
>> Buy food/water if needed
step
#softcore
#som
.fly Brackenwall >> Fly to Brackenwall Village
step
#hardcore
.fly Brackenwall >> Fly to Brackenwall Village
step
#softcore
#som
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 42+80000 >> AoE Murlocs to level 42 & 80000+/101000xp
step
#hardcore
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 42+80000 >> AoE Murlocs to level 42 & 80000+/101000xp
step
#hardcore
.zone Undercity >> Teleport to Undercity
.trainer >> Train your class spells
step
#hardcore
.hs >> Hearth to Camp Taurajo
>> Buy food/water if needed
step
#softcore
#som
.zone Undercity >> Teleport to Undercity
.trainer >> Train your class spells
step
#softcore
#som
.hs >> Hearth to Camp Taurajo
>> Buy food/water if needed
step
#completewith next
.goto Thousand Needles,45.14,49.11,0
.fp Freewind Post >> Get the Freewind Post flight path
>>This is completely optional, as it is not used at all in the route, but is a convenient time to get it
step
>>Travel to Tanaris. Ride through Barrens -> Thousand Needles -> Gadgetzan
.goto Tanaris,52.51,27.91
.home >> Set your hearth to Gadgetzan
step
#softcore
#era
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.accept 3042 >>Accept Troll Temper
.vendor >> Vendor and Repair at Krinkle
step
#softcore
#era
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 992 >>Accept Gadgetzan Water Survey
step
#softcore
#era
.goto Tanaris,38.73,20.02,60 >> Travel to Zul'Farrak
step
#softcore
#era
#completewith next
+You're now going to be doing Zul'Farrak. This can be extremely difficult, but is absolutely worth the xp/hr once you learn to do it
>>Click either of the links depending on whether or not you have a mount yet
>>If you have no mount, as soon as you get 90g worth of loot, teleport back to Undercity, run to Brill, and then buy your mount. Hearth back to Gadgetzan << Undead
>>If you have no mount, as soon as you get 90g worth of loot, teleport back to Orgrimmar, run to Durotar, then run to Sen'jin and buy your mount. Hearth back to Gadgetzan << Troll
.link https://youtu.be/TgwHw7qT4ws >> If you have a mount, CLICK HERE 
.link https://youtu.be/4-yJ47T728Y?t=6 >> If you DONT have a mount, CLICK HERE 
step
#softcore
#sticky
#label Temper
#era
>>Loot Troll Temper from the mobs you kill inside of Zul'Farrak
.complete 3042,1 
step
#softcore
#era
.xp 44 >> AoE Zul'Farrak to level 44
>>Start saving the Silk Cloth and Mageweave Cloth you get. You need 12 stacks of each for later
step
#softcore
#som
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>Talk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.accept 1707 >>Accept Water Pouch Bounty
.target Chief Engineer Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 1690 >>Accept Wastewander Justice
step
#softcore
#som
.goto Tanaris,51.84,27.02
.accept 2781 >>Accept WANTED: Caliph Scorpidsting
.accept 2875 >>Accept WANTED: Andre Firebeard
step
#softcore
#som
#completewith next
.goto Tanaris,60.18,23.29,0
>>AoE some Bandits/Thieves in Noonshade Ruins en route to Steamwheedle Port
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#softcore
#som
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
.accept 8365 >>Accept Pirate Hats Ahoy!
step
#softcore
#som
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.accept 8366 >>Accept Southsea Shakedown
step
#softcore
#som
.goto Tanaris,63.67,31.29
>>AoE Bandits and Thieves. Loot them for Water Pouches
>>Be careful as some of the mobs under the tents are bugged, and will evade all mobs aggroed onto you if you aggro one of them
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#softcore
#som
.goto Tanaris,62.22,37.75
>>Look for Caliph Scorpidsting in the area. Kill and loot him for his head
>>Be careful as he has two stealthed adds right next to him
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
#softcore
#som
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>Talk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.turnin 1707 >>Turn in Water Pouch Bounty
.target Chief Engineer Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 1690 >>Turn in Wastewander Justice
.turnin 2781 >>Turn in WANTED: Caliph Scorpidsting
step
#softcore
#som
.goto Tanaris,68.73,41.49,50 >> Travel to Lost Rigger Cove. Open the AoE guide en route and watch it
.link https://youtu.be/SxMc2GoP33c?t=4113 >> CLICK HERE for reference
step
#softcore
#som
#sticky
#label Hats
>>Loot pirates you AoE in the area for their hats
.complete 8365,1 
step
#softcore
#som
#sticky
#label Andre
>>Kill Andre Firebeard
.complete 2875,1 
step
#softcore
#som
#sticky
#completewith end
>>Loot the Ship Schedule from the footlockers that drop from pirates in the area
.collect 9250,1,2876 
.accept 2876 >>Accept Ship Schedules
step
#softcore
#som
.goto Tanaris,73.72,46.86
.xp 43+91000 >> AoE Grind to 43 & 91000+/106300xp
>>Use any Captain's Keys you get on the 2nd floor of the 2nd ship to the east
step
#softcore
#som
#requires Hats
step
#softcore
#som
#requires Andre
>>Finish off killing the Southsea Mobs
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
step
#softcore
#som
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
.turnin 8365 >>Turn in Pirate Hats Ahoy!
step
#softcore
#som
.isOnQuest 2876
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 2876 >>Turn in Ship Schedules
.turnin 8366 >>Turn in Southsea Shakedown
step
#softcore
#som
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 8366 >>Turn in Southsea Shakedown
step
#hardcore
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>Talk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.accept 1707 >>Accept Water Pouch Bounty
.target Chief Engineer Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 1690 >>Accept Wastewander Justice
step
#hardcore
.goto Tanaris,51.84,27.02
.accept 2781 >>Accept WANTED: Caliph Scorpidsting
.accept 2875 >>Accept WANTED: Andre Firebeard
step
#hardcore
#completewith next
.goto Tanaris,60.18,23.29,0
>>AoE some Bandits/Thieves in Noonshade Ruins en route to Steamwheedle Port
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#hardcore
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
.accept 8365 >>Accept Pirate Hats Ahoy!
step
#hardcore
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.accept 8366 >>Accept Southsea Shakedown
step
#hardcore
.goto Tanaris,63.67,31.29
>>AoE Bandits and Thieves. Loot them for Water Pouches
>>Be careful as some of the mobs under the tents are bugged, and will evade all mobs aggroed onto you if you aggro one of them
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#hardcore
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>Talk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.turnin 1707 >>Turn in Water Pouch Bounty
.target Chief Engineer Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 1690 >>Turn in Wastewander Justice
step
#hardcore
.goto Tanaris,68.73,41.49,50 >> Travel to Lost Rigger Cove. Open the AoE guide en route and watch it
.link https://youtu.be/SxMc2GoP33c?t=4113 >> CLICK HERE for reference
step
#hardcore
#sticky
#label Hats
>>Loot pirates you AoE in the area for their hats
.complete 8365,1 
step
#hardcore
#sticky
#label Andre
>>Kill Andre Firebeard
.complete 2875,1 
step
#hardcore
#sticky
#completewith end
>>Loot the Ship Schedule from the footlockers that drop from pirates in the area
.collect 9250,1,2876 
.accept 2876 >>Accept Ship Schedules
step
#hardcore
.goto Tanaris,73.72,46.86
.xp 44 >> AoE Grind to 44
>>Use any Captain's Keys you get on the 2nd floor of the 2nd ship to the east
>>Start saving the Silk Cloth and Mageweave Cloth you get. You need 12 stacks of each for later
step
#hardcore
#requires Hats
step
#hardcore
#requires Andre
>>Finish off killing the Southsea Mobs
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
step
#softcore
#era
#requires Temper
.zone Undercity >> Teleport to Undercity
step
#softcore
#som
.zone Undercity >> Teleport to Undercity
step
#hardcore
.zone Undercity >> Teleport to Undercity
step
.goto Undercity,85.16,10.01
.trainer >> Train your class spells
step
.goto Undercity,82.79,15.82
>> Talk to Hannah. Buy 6 Runes of Teleportation
>>You can also go to the AH and buy bigger bags if you need
.collect 17031,6 
step
.hs >> Hearth to Gadgetzan
.vendor >> Buy 140 level 45 drink
step
#completewith next
.goto Tanaris,52.30,28.92
+Bank your Silk Cloth and Mageweave Cloth here from earlier. You need 12 stacks (240) of each for later
step
#hardcore
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
.turnin 8365 >>Turn in Pirate Hats Ahoy!
step
#hardcore
.isOnQuest 2876
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 2876 >>Turn in Ship Schedules
.turnin 8366 >>Turn in Southsea Shakedown
step
#hardcore
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 8366 >>Turn in Southsea Shakedown
step
#hardcore
#label Caliph
.goto Tanaris,62.22,37.75
>>Look for Caliph Scorpidsting in the area. Kill and loot him for his head
>>Be careful as he has two stealthed adds right next to him
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
#hardcore
.goto Tanaris,73.72,46.86
.xp 48 >> AoE grind to 48
>>Use any Captain's Keys you get on the 2nd floor of the 2nd ship to the east
step
#softcore
#som
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.accept 3042 >>Accept Troll Temper
.vendor >> Vendor and Repair at Krinkle
step
#softcore
#era
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.turnin 3042 >>Turn in Troll Temper
.vendor >> Vendor and Repair at Krinkle
step
#softcore
.goto Tanaris,51.57,26.75
.target Tran'rek
>>Talk to |cRXP_FRIENDLY_Tran'rek|r
.accept 2865 >> Accept Scarab Shells
step
#softcore
.goto Tanaris,38.73,20.02,60 >> Travel to Zul'Farrak
step
#softcore
#sticky
#completewith ZF54
.goto Tanaris,39.14,29.15,0
>>If you ever hit lockout (max 5 instances per hour) and it won't let you back in ZF, do the Dowsing Widget
.complete 992,1 
step
#softcore
#era
#completewith next
+You're now going to learn to do a harder version which takes longer, but gives more xp: Pulling scarabs.
.link https://youtu.be/rFO4prcG2p0 >> CLICK HERE
step
#softcore
#som
#completewith next
+You're now going to be doing Zul'Farrak. This can be extremely difficult, but is absolutely worth the xp/hr once you learn to do it
>>Click either of the links depending on whether or not you have a mount yet
>>If you have no mount, as soon as you get 50g worth of loot, teleport back to Undercity, run to Brill, and then buy your mount. Hearth back to Gadgetzan << Undead
>>If you have no mount, as soon as you get 50g worth of loot, teleport back to Orgrimmar, run to Durotar, then run to Sen'jin and buy your mount. Hearth back to Gadgetzan << Troll
.link https://youtu.be/TgwHw7qT4ws >> If you have a mount, CLICK HERE 
.link https://youtu.be/4-yJ47T728Y?t=6 >> If you DONT have a mount, CLICK HERE 
.link https://youtu.be/rFO4prcG2p0 >> CLICK HERE when you're comfortable enough to do the additional Scarab pull
step
#softcore
#sticky
#label ScarabS
>>Loot Scarab Shells inside of ZF after you've AoE'd them
.complete 2865,1 
step
#softcore
#som
>>Loot Troll Temper from the zombies you AoE inside of Zul'Farrak
.complete 3042,1 
step
#softcore
.xp 48 >> AoE Zul'Farrak to level 48
step
#softcore
#requires ScarabS
.trainer >> Teleport to Orgrimmar or Undercity. Train your level 46-48 spells
step
#hardcore
.trainer >> Teleport to Orgrimmar or Undercity. Train your level 46-48 spells
step
.hs >> Hearth to Gadgetzan. Buy level 45 drink if needed
>> Buy food/water if needed
step
#completewith next
.goto Tanaris,52.30,28.92
+Bank your Silk Cloth and Mageweave Cloth here from earlier. You need 12 stacks (240) of each for later
step
#hardcore
.goto Tanaris,52.46,28.52
.target Chief Engineer Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 2781 >>Turn in WANTED: Caliph Scorpidsting
step
#softcore
#som
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.turnin 3042 >>Turn in Troll Temper
.vendor >> Vendor and Repair at Krinkle
step
#softcore
.isQuestComplete 992
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 992 >>Turn in Gadgetzan Water Survey
step
#softcore
.goto Tanaris,51.57,26.75
.target Tran'rek
>>Talk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2865 >> Turn in Scarab Shells
step
#softcore
.goto Tanaris,38.73,20.02,60 >> Travel to Zul'Farrak
step
#softcore
.xp 52 >> AoE Zul'Farrak to level 52
step
#hardcore
.isOnQuest 2876
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2876 >>Turn in Ship Schedules
step
#hardcore
.goto Tanaris,73.72,46.86
.xp 52 >> AoE grind to 52
>>Use any Captain's Keys you get on the 2nd floor of the 2nd ship to the east
>>Remember to save 12 stacks of Mageweave. You'll need it for cloth turnins later
step
#softcore
.trainer >> Teleport to Orgrimmar or Undercity. Train your level 50-52 spells
step
#softcore
.hs >> Hearth to Gadgetzan. Buy level 45 drink if needed
>> Buy food/water if needed
step
#softcore
.isQuestComplete 992
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 992 >>Turn in Gadgetzan Water Survey
step
#softcore
.goto Tanaris,51.57,26.75
.target Tran'rek
>>Talk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2865 >> Turn in Scarab Shells
step
#softcore
.goto Tanaris,38.73,20.02,60 >> Travel to Zul'Farrak
step
#softcore
#label ZF54
.xp 54 >> AoE Zul'Farrak to level 54
>>Remember to save 12 stacks of Mageweave. You'll need it for cloth turnins later
step
.zone Undercity >> Teleport to Undercity
step
.goto Undercity,85.16,10.01
.trainer >> Train your class spells
step << skip 
#sticky
#completewith next
.goto Undercity,82.36,15.31
+Go to the Reagent Vendor on your right and perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in.
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
>>If you can't do this, just run out of Undercity normally
step
.goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step
>>Run East to The Bulwark
.goto Tirisfal Glades,83.19,68.45
.target Argent Officer Garush
>>Talk to |cRXP_FRIENDLY_Argent Officer Garush|r
.turnin 5405 >> Turn in Argent Dawn Commission
step
.goto Tirisfal Glades,83.1,68.9
.target High Executor Derrington
>>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
.accept 5096 >>Accept Scarlet Diversions
step
.goto Western Plaguelands,26.55,56.18
>>Loot the crate next to the fire
.collect 12814,1 
step
>> Be careful as the mobs are relatively difficult, and can chain-pull each other here
>>Burn the command tent down, then use the banner in your inventory on top of it
.goto Western Plaguelands,40.5,51.8
.complete 5096,1 
step
.goto Tirisfal Glades,83.1,68.9
>>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
.turnin 5096 >>Turn in Scarlet Diversions
.target High Executor Derrington
.accept 5098 >>Accept All Along the Watchtowers
.accept 5228 >>Accept The Scourge Cauldrons
step
.goto Tirisfal Glades,83.03,71.91
>>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
.turnin 5228 >>Turn in The Scourge Cauldrons
.target Shadow Priestess Vandis
.accept 5229 >>Accept Target: Felstone Field
step
>>Kill Cauldron Lord Bilemaw. Loot him for the key
.goto Western Plaguelands,37.12,57.18
.complete 5229,1 
.unitscan Cauldron Lord Bilemaw
step
>>Go to the top floor of the house. Talk to Janice
.goto Western Plaguelands,38.40,54.05
.target Janice Felstone
>>Talk to |cRXP_FRIENDLY_Janice Felstone|r
.accept 5021 >>Accept Better Late Than Never
step
>>Click the package on the floor of the barn
.goto Western Plaguelands,38.8,55.3
.turnin 5021 >>Turn in Better Late Than Never
.accept 5023 >>Accept Better Late Than Never
step
.goto Western Plaguelands,37.22,56.88
.turnin 5229 >>Turn in Target: Felstone Field
.accept 5230 >>Accept Return to the Bulwark
step
.goto Western Plaguelands,26.41,59.14
>>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
.turnin 5230 >>Turn in Return to the Bulwark
.target Shadow Priestess Vandis
.accept 5231 >>Accept Target: Dalson's Tears
step
>>Kill Cauldron Lord Malvinous. Loot him for the key
.goto Western Plaguelands,46.04,52.33
.complete 5231,1 
step
.goto Western Plaguelands,46.19,52.01
.turnin 5231 >>Turn in Target: Dalson's Tears
.accept 5232 >>Accept Return to the Bulwark
step
>>Inside the barn on the ground
.goto Western Plaguelands,47.79,50.67
.turnin 5058 >> Turn in Mrs. Dalson's Diary
step
#completewith next
+Start AoEing the undead in the area. Be careful as the Skeletal Terrors fear. Watch the video for more info << !Undead
+Start AoEing the undead in the area. Be careful as the Skeletal Terrors fear (remember to use your racial Will of the Forsaken). Watch the video for more info << Undead
.link https://youtu.be/SxMc2GoP33c?t=4759 >> CLICK HERE
step
#label SkeletonKey
#completewith UD58
>>Keep an eye out for the Wandering Skeleton whilst you're AoEing. Kill him then loot him for the Outhouse Key
.collect 12738,1 
step
#completewith UD58
#label LockedAway
#requires SkeletonKey
.goto Western Plaguelands,48.16,49.64
>>Click the outhouse. This will spawn a mob. Kill it
.turnin 5059 >> Turn in Locked Away
.collect 12739,1 
step
#completewith UD58
#requires LockedAway
>>Click the cabinet at the top floor of the house
.goto Western Plaguelands,47.37,49.66
.turnin 5060 >> Turn in Locked Away
step
#phase 5
#sticky
>>Save Bone Fragments looted from skeletons for a quest later
.collect 22526,30 
step
#hardcore
.goto Western Plaguelands,46.49,52.15
.xp 53+100000 >>AoE Undead in the area to 53 & 100000+/167100xp
>>Remember to try and save 12 stacks of Runecloth. You'll need it for cloth turnins later
step
#softcore
.goto Western Plaguelands,46.49,52.15
.xp 55+100000 >>AoE Undead in the area to 55 & 100000+/180800xp
>>Remember to try and save 12 stacks of Runecloth. You'll need it for cloth turnins later
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,44.24,63.06
.complete 5098,3 
step
.goto Western Plaguelands,26.65,55.18
.vendor >> You should be Friendly with the Argent Dawn now, so buy as many Manna Biscuits as possible to last you to level 60
>>If you're not, turn in scourgestones you looted until you are
step
.goto Western Plaguelands,26.40,59.14
>>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
.turnin 5232 >>Turn in Return to the Bulwark
.target Shadow Priestess Vandis
.accept 5233 >>Accept Target: Writhing Haunt
step
.goto Western Plaguelands,26.68,59.59
.target Mickey Levine
>>Talk to |cRXP_FRIENDLY_Mickey Levine|r
.accept 5901 >>Accept A Plague Upon Thee
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,42.28,66.05
.complete 5098,2 
step
#label UD58
.goto Western Plaguelands,46.49,52.15
.xp 58 >> AoE Undead in the area to 58
step
>>Kill Cauldron Lord Razarch. Loot him for the key
.goto Western Plaguelands,53.07,65.97
.complete 5233,1 
step
.goto Western Plaguelands,53.05,65.71
.turnin 5233 >>Turn in Target: Writhing Haunt
.accept 5234 >>Accept Return to the Bulwark
step
.goto Western Plaguelands,53.73,64.66
.target Mulgris Deepriver
>>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
.accept 4984 >>Accept The Wildlife Suffers Too
step
.zone Undercity >> Teleport to Undercity
step
.goto Undercity,85.16,10.01
.trainer >> Train your class spells
step
.goto Undercity,67.62,44.16
>>Talk to |cRXP_FRIENDLY_Royal Overseer Bauhaus|r
.turnin 5023 >>Turn in Better Late Than Never
.target Royal Overseer Bauhaus
.accept 5049 >>Accept The Jeremiah Blues
step
>>Under the staircase
.goto Undercity,67.62,44.16
>>Talk to |cRXP_FRIENDLY_Jeremiah Payson|r
.turnin 5049 >>Turn in The Jeremiah Blues
.target Jeremiah Payson
.target Ol' Emma
>>Talk to |cRXP_FRIENDLY_Ol' Emma|r
.accept 5050 >>Accept Good Luck Charm
step << skip 
#sticky
#completewith next
.goto Undercity,67.62,44.16
+Perform a Logout Skip by positioning your character until it looks like they're floating with some distance between you and the ground, then logging out and back in.
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
>>If you can't do this, just run out of Undercity normally
step
.goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step
.goto Western Plaguelands,26.40,59.15
>>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
.turnin 5234 >>Turn in Return to the Bulwark
.target Shadow Priestess Vandis
.accept 5235 >>Accept Target: Gahrron's Withering
step
#phase 5
#softcore
#completewith next
+You can now go and do ZG from 58-60. This is EXTREMELY hard, but is faster than open world aoe leveling if you're confident/already know how to do it
.link https://youtu.be/lfgvyhmf3q4?t=7 >>CLICK HERE 
step
>>Go to the top floor of the house. Talk to Janice
.goto Western Plaguelands,38.401,54.053
>>Talk to |cRXP_FRIENDLY_Janice Felstone|r
.turnin 5050 >>Turn in Good Luck Charm
.target Janice Felstone
.accept 5051 >>Accept Two Halves Become One
step
.goto Western Plaguelands,38.0,54.7
>>Find a Jabbering Ghoul. Kill him and loot the Good Luck Charm
.complete 5051,1 
step
.goto Western Plaguelands,38.401,54.053
.target Janice Felstone
>>Talk to |cRXP_FRIENDLY_Janice Felstone|r
.turnin 5051 >>Turn in Two Halves Become One
step
>>AoE Wolves in the area. You may need to kill spiders to force respawns on wolves
.goto Western Plaguelands,47.14,44.80
.complete 4984,1 
step
.goto Western Plaguelands,53.72,64.66
>>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
.turnin 4984 >>Turn in The Wildlife Suffers Too
.target Mulgris Deepriver
.accept 4985 >>Accept The Wildlife Suffers Too
step
.abandon 4984 >> Abandon The Wildlife Suffers Too
step
#sticky
#label Grizzly
>>AoE Grizzlys en route to other quests
.complete 4985,1 
step
>>Kill Cauldron Lord Soulwrath. Loot him for the key
.goto Western Plaguelands,62.80,58.76
.complete 5235,1 
step
.goto Western Plaguelands,62.59,58.55
.turnin 5235 >>Turn in Target: Gahrron's Withering
.accept 5236 >>Accept Return to the Bulwark
step
#requires Grizzly
.goto Western Plaguelands,67.33,24.23
.target Tirion Fordring
>>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
.accept 5542 >>Accept Demon Dogs
.accept 5543 >>Accept Blood Tinged Skies
.accept 5544 >>Accept Carrion Grubbage
step
#label grubs
#sticky
>>AoE Carrion Worms
.complete 5544,1 
step
#label fordring1
#sticky
.goto Eastern Plaguelands,40.8,68.1,0
>>AoE Plaguebots and Plaguehounds
>>Be careful as Plaguebats can terrify
.complete 5543,1 
.complete 5542,1 
step << skip
.goto Eastern Plaguelands,26.54,74.74
.target Nathanos Blightcaller
>>Talk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
.accept 6022 >>Accept To Kill With Purpose
step
.goto Eastern Plaguelands,36.5,90.8
.target Pamela Redpath
>>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
.accept 5149 >> Accept Pamela's Doll
step
.goto Eastern Plaguelands,39.2,91.6
>>Loot the 3 doll parts found on the floor throughout Darrowshire and then combine them together
.complete 5149,1 
step
.goto Eastern Plaguelands,36.4,90.9
>>Talk to |cRXP_FRIENDLY_Pamela Redpath|r
.turnin 5149 >> Turn in Pamela's Doll
.target Pamela Redpath
.accept 5152 >> Accept Auntie Marlene
.accept 5241 >> Accept Uncle Carlin
step
#requires fordring1
.goto Eastern Plaguelands,81.6,59.3
.complete 5542,2 
step
#phase 5
.goto Eastern Plaguelands,81.63,58.07
.home >> Set your Hearth to Light's Hope Chapel
step
#phase 5
.goto Eastern Plaguelands,81.42,58.51
.target Rohan the Assassin
>>Talk to |cRXP_FRIENDLY_Rohan the Assassin|r
.accept 9126 >> Accept Bonescythe Digs
step
#phase 5
.isQuestComplete 9126
.target Rohan the Assassin
>>Talk to |cRXP_FRIENDLY_Rohan the Assassin|r
.turnin 9126 >> Turn in Bonescythe Digs
step
.goto Eastern Plaguelands,81.6,59.3
.fp Light's Hope Chapel >> Get the Light's Hope Chapel flight path
step
.goto Eastern Plaguelands,81.4,59.9
>>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5241 >> Turn in Uncle Carlin
.target Carlin Redpath
.accept 5211 >> Accept Defenders of Darrowshire
step
.goto Eastern Plaguelands,79.7,63.6
.target Caretaker Alen
>>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
.accept 5281 >> Accept The Restless Souls
.accept 6021 >> Accept Zaeldarr the Outcast
step
#sticky
#completewith EPL1
.goto Eastern Plaguelands,76.48,49.66,0
.goto Eastern Plaguelands,83.90,40.88,0
.goto Eastern Plaguelands,65.50,38.66,0
.goto Eastern Plaguelands,26.75,27.56,0
.goto Eastern Plaguelands,17.71,32.13,0
.goto Eastern Plaguelands,59.54,68.65,0
>>Kill ghouls and then talk to the Darrowshire spirits that spawn from their corpses
.complete 5211,1
step
#sticky
#label FPlague
.goto Eastern Plaguelands,23.5,37.4
.complete 5542,3 
step
.goto Eastern Plaguelands,34.0,28.1
>>Look for termite mounds around Plaguewood
.complete 5901,1 
step
#sticky
#completewith next
+Drop any spare Plagueland Termites you have, if you have them (NOT the 100 stack)
step
.goto Eastern Plaguelands,14.5,33.6
.target Egan
>>Talk to |cRXP_FRIENDLY_Egan|r
.turnin 5281 >> Turn in The Restless Souls
step
#requires grubs
#label EPL1
.goto Eastern Plaguelands,7.6,43.7
>>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5542 >> Turn in Demon Dogs
.turnin 5543 >> Turn in Blood Tinged Skies
.turnin 5544 >> Turn in Carrion Grubbage
.target Tirion Fordring
.accept 5742 >> Accept Redemption
step
#requires FPlague
.goto Eastern Plaguelands,7.6,43.7
>>Talk to Tirion
.complete 5742,1 
>>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5742 >> Turn in Redemption
.target Tirion Fordring
.accept 5781 >> Accept Of Forgotten Memories
step
.goto Eastern Plaguelands,27.4,84.9
>>Enter the troll crypt
.complete 6021,1 
step
.goto Eastern Plaguelands,27.3,85.2
.accept 6024 >> Accept Hameya's Plea
step
.goto Eastern Plaguelands,28.4,86.6
>>Summon Mercutio and his goons by clicking on the dirt pile, you have to kill him while handling 3 other adds
>>Simply AoE them down as normal
.complete 5781,1 
step
.goto Eastern Plaguelands,7.6,43.7
>>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5781 >> Turn in Of Forgotten Memories
.target Tirion Fordring
.accept 5845 >> Accept Of Lost Honor
step
.zone Undercity >> Teleport to Undercity
step << skip 
#sticky
#completewith next
.goto Undercity,82.36,15.31
+Go to the Reagent Vendor on your right and perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in.
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
>>If you can't do this, just run out of Undercity normally
step
.goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step
.goto Tirisfal Glades,83.04,71.91
.target Shadow Priestess Vandis
>>Talk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
.turnin 5236 >>Turn in Return to the Bulwark
step
.goto Tirisfal Glades,83.30,72.33
>>Talk to |cRXP_FRIENDLY_Mickey Levine|r
.turnin 5901 >>Turn in A Plague Upon Thee
.target Mickey Levine
.accept 5902 >>Accept A Plague Upon Thee
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,40.15,71.50
.complete 5098,1 
step
.goto Western Plaguelands,49.2,78.6
>>Talk to |cRXP_FRIENDLY_Marlene Redpath|r
.turnin 5152 >> Turn in Auntie Marlene
.target Marlene Redpath
.accept 5153 >> Accept A Strange Historian
step
.goto Western Plaguelands,49.6,76.8
>>Loot the gravestone right outside the house
.complete 5153,1 
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,46.73,71.14
.complete 5098,4 
step
>>Go into the Inn. Try to avoid mobs en route
.goto Western Plaguelands,39.5,66.9
>>Talk to |cRXP_FRIENDLY_Chromie|r
.turnin 5153 >> Turn in A Strange Historian
.target Chromie
.accept 5154 >> Accept The Annals of Darrowshire
step << skip
#sticky
#label parasites
.goto Western Plaguelands,46.7,62.3
>>Use the temporal displacer on the grain silos
.complete 4971,1 
step
.goto Western Plaguelands,43.4,69.6
>>Loot books inside the Andorhal town hall until you get the correct one
.complete 5154,1 
*The correct book's pages has a lighter shade of grey on BOTH pages and sometimes the correct book won't spawn
*If you're unlucky, you have to keep looting bad tomes until a good one spawns
step
#requires parasites
.goto Western Plaguelands,39.5,66.8
>>Talk to |cRXP_FRIENDLY_Chromie|r
.turnin 5154 >> Turn in The Annals of Darrowshire
.target Chromie
.accept 5210 >> Accept Brother Carlin
step << skip
.goto Western Plaguelands,41.3,67.1
>>Look for small lockboxes inside the burnt houses
.complete 4972,1 
step << skip
.goto Western Plaguelands,39.4,66.9
.target Chromie
>>Talk to |cRXP_FRIENDLY_Chromie|r
.turnin 4972 >> Turn in Counting Out Time
step
#phase 1-4
.zone Undercity >> Teleport to Undercity
step
#phase 1-4
.goto Undercity,63.28,48.58
.fly Eastern Plaguelands >> Fly to Light's Hope Chapel
step
#phase 5
.hs >> Hearth to Light's Hope Chapel
>> Buy food/water if needed
step
#phase 5
.isQuestComplete 9126
.target Rohan the Assassin
>>Talk to |cRXP_FRIENDLY_Rohan the Assassin|r
.turnin 9126 >> Turn in Bonescythe Digs
step
.goto Eastern Plaguelands,81.5,59.8
>>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5210 >> Turn in Brother Carlin
.target Carlin Redpath
.accept 5181 >> Accept Villains of Darrowshire
.accept 5168 >> Accept Heroes of Darrowshire
step
.goto Eastern Plaguelands,79.7,63.7
.target Caretaker Alen
>>Talk to |cRXP_FRIENDLY_Caretaker Alen|r
.turnin 6021 >> Turn in Zaeldarr the Outcast
step
.goto Eastern Plaguelands,71.3,34.0
>>Loot the banner underwater
.complete 5845,1 
step
.goto Eastern Plaguelands,70.8,16.2
>>Run past all the mobs up the hill, then go and kill Infiltrator Hameya, he walks around the shallow graves
.complete 6024,1 
step
.goto Eastern Plaguelands,51.2,49.9
>>Loot the skull underwater
.complete 5181,1 
step
.goto Eastern Plaguelands,60.6,68.4
>>Kill ghouls and then talk to the Darrowshire spirits that spawn from their corpses
.complete 5211,1
step
.goto Eastern Plaguelands,53.9,65.8
.complete 5181,2 
step
.goto Eastern Plaguelands,28.1,86.1
.turnin 6024 >> Turn in Hameya's Plea
step
.goto Eastern Plaguelands,7.6,43.6
>>Talk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5845 >> Turn in Of Lost Honor
.target Tirion Fordring
.accept 5846 >> Accept Of Love and Family
step
.goto Western Plaguelands,63.8,57.2
>>Loot the shield on the ground, just outside the barn
.complete 5168,2 
step
.goto Western Plaguelands,65.7,75.4
.target Artist Renfray
>>Talk to |cRXP_FRIENDLY_Artist Renfray|r
.turnin 5846 >> Turn in Of Love and Family
step
.isQuestComplete 4985
.goto Western Plaguelands,53.7,64.7
>>Talk to |cRXP_FRIENDLY_Mulgris Deepriver|r
.turnin 4985 >> Turn in The Wildlife Suffers Too
.target Mulgris Deepriver
.accept 4987 >> Accept Glyphed Oaken Branch
step
.goto Western Plaguelands,48.4,31.9
.turnin 5902 >> Turn in A Plague Upon Thee
.accept 6390 >> Accept A Plague Upon Thee
step
.goto Western Plaguelands,51.9,28.2
.target Kirsta Deepshadow
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.accept 6004 >> Accept Unfinished Business
step
.goto Western Plaguelands,51.80,44.25,100,0
.goto Western Plaguelands,40.53,51.79,100,0
.complete 6004,1 
.complete 6004,2 
.complete 6004,3 
.complete 6004,4 
step
.goto Western Plaguelands,51.920,28.058
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6004 >> Turn in Unfinished Business
.target Kirsta Deepshadow
.accept 6023 >> Accept Unfinished Business
step
.goto Western Plaguelands,57.8,36.2
.complete 6023,1 
step
.goto Western Plaguelands,55.1,23.5
>>Look for the named mob that patrols up and down the tower
.complete 6023,2 
*There is a level 63 elite mob that can spawn at the tower, if that's the case just be patient and wait for Durgen to come down
step
.goto Western Plaguelands,51.9,28.0
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6023 >> Turn in Unfinished Business
.target Kirsta Deepshadow
.accept 6025 >> Accept Unfinished Business
step
.goto Western Plaguelands,45.7,18.8
.complete 6025,1 
step
#softcore
.goto Western Plaguelands,42.5,18.9
>>Loot the libram inside the town hall. Either slowly kill all the mobs one-by-one, or pull all of the mobs inside, kite them outside, freeze them in place, then loot the Libram and run
>>do NOT die here or you have a very long run
.complete 5168,1 
step
#hardcore
.goto Western Plaguelands,42.5,18.9
>>Loot the libram inside the town hall. Either slowly kill all the mobs one-by-one, or pull all of the mobs inside, kite them outside, freeze them in place, then loot the Libram and run
>>this quest is VERY difficult and risky. I wouldn't recommend doing this on hardcore
.complete 5168,1 
step
#sticky
#completewith next
+I HIGHLY recommend watching the mage guide for these mobs
.link https://youtu.be/SxMc2GoP33c?t=3824 >> CLICK HERE
step
.goto Western Plaguelands,46.30,16.86,120,0
.goto Western Plaguelands,44.84,12.43,120,0
.goto Western Plaguelands,45.53,9.51,120,0
.goto Western Plaguelands,43.97,17.21,120,0
.xp 59+130000 >> Grind to 59 & 130000+/209800
step
.goto Western Plaguelands,51.9,28.0
.target Kirsta Deepshadow
>>Talk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6025 >> Turn in Unfinished Business
step
.goto Western Plaguelands,26.51,56.02
>>Talk to |cRXP_FRIENDLY_High Executor Derrington|r
.turnin 5098 >>Turn in All Along the Watchtowers
.turnin 5238 >>Turn in Mission Accomplished!
.target High Executor Derrington
.accept 838 >>Accept Scholomance
step
.goto Western Plaguelands,26.67,56.33
.target Apothecary Dithers
>>Talk to |cRXP_FRIENDLY_Apothecary Dithers|r
.turnin 838 >>Turn in Scholomance
step
#phase 1-4
.zone Undercity >> Teleport to Undercity
step
#phase 1-4
.goto Undercity,63.28,48.58
.fly Eastern Plaguelands >> Fly to Light's Hope Chapel
step
#phase 5
.hs >> Hearth to Light's Hope Chapel
>> Buy food/water if needed
step
#phase 5
.isQuestComplete 9126
.target Rohan the Assassin
>>Talk to |cRXP_FRIENDLY_Rohan the Assassin|r
.turnin 9126 >> Turn in Bonescythe Digs
step
.goto Eastern Plaguelands,81.5,59.8
.target Carlin Redpath
>>Talk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5168 >> Turn in Heroes of Darrowshire
.turnin 5181 >> Turn in Villains of Darrowshire
.turnin 5211 >> Turn in Defenders of Darrowshire
step
.zone Undercity >> Teleport to Undercity
step
#softcore
#completewith UCBank
.goto Undercity,60.48,41.77
+If you don't have 12 stacks of each cloth, buy them from the Auction House
step
#label UCBank
.goto Undercity,65.65,44.10,50,0
>>Withdraw all your cloth from the bank. You need 12 stacks of Wool, Silk, Mageweave, and Runecloth
>>If you don't have inventory space, then leave half of the cloth in the bank and skip this step
.collect 2592,240 
.collect 4306,240 
.collect 4338,240 
.collect 14047,240 
step
>>Make sure you have no addons on that will automatically turn in extra runecloth (for rep) or you will be told to buy it again later
.goto Undercity,71.65,29.25
.target Ralston Farnsley
>>Talk to |cRXP_FRIENDLY_Ralston Farnsley|r
.turnin 7813 >> Turn in A Donation of Wool
.turnin 7814 >> Turn in A Donation of Silk
.turnin 7817 >> Turn in A Donation of Mageweave
.turnin 7818 >> Turn in A Donation of Runecloth
step
.zone Orgrimmar >> Teleport to Orgrimmar
step
#softcore
#completewith OGBank
.goto Orgrimmar,55.55,64.71
+If you don't have 9 stacks of each cloth, buy it from the Auction House
step
#label OGBank
.goto Orgrimmar,49.57,69.10,40,0
>>Withdraw all your cloth from the bank. You need 9 stacks of Wool, Silk, Mageweave, and Runecloth
>>If you don't have inventory space, then leave half of the cloth in the bank and skip this step
.collect 2592,180 
.collect 4306,180 
.collect 4338,180 
.collect 14047,180 
step
>>Make sure you have no addons on that will automatically turn in extra runecloth (for rep) or you will be told to buy it again later
.goto Orgrimmar,63.62,51.24
.target Rashona Straglash
>>Talk to |cRXP_FRIENDLY_Rashona Straglash|r
.turnin 7826 >> Turn in A Donation of Wool
.turnin 7827 >> Turn in A Donation of Silk
.turnin 7831 >> Turn in A Donation of Mageweave
.turnin 7824 >> Turn in A Donation of Runecloth
step
>>Make sure you have no addons on that will automatically turn in extra runecloth (for rep) or you will be told to buy it again later
.goto Orgrimmar,37.69,87.92
.target Vehena
>>Talk to |cRXP_FRIENDLY_Vehena|r
.turnin 7833 >> Turn in A Donation of Wool
.turnin 7834 >> Turn in A Donation of Silk
.turnin 7835 >> Turn in A Donation of Mageweave
.turnin 7836 >> Turn in A Donation of Runecloth
step
.goto Orgrimmar,45.11,63.89
.fly Thunder Bluff >> Fly to Thunder Bluff
step
#softcore
#completewith TBBank
.goto Thunder Bluff,40.42,51.76
+If you don't have 3 stacks of each cloth, buy it from the Auction House
step
#label TBBank
.goto Thunder Bluff,47.28,58.62,40,0
>>Withdraw all your cloth from the bank. You need 3 stacks of Wool, Silk, Mageweave, and Runecloth
>>If you don't have inventory space, then leave half of the cloth in the bank and skip this step
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
.goto Thunder Bluff,75.63,31.66
.target Nara Wildmane
>>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
.turnin 4987 >>Turn in Glyphed Oaken Branch
step
>>Make sure you have no addons on that will automatically turn in extra runecloth (for rep) or you will be told to buy it again later
.goto Thunder Bluff,43.05,42.73
.target Rumstag Proudstrider
>>Talk to |cRXP_FRIENDLY_Rumstag Proudstrider|r
.turnin 7820 >> Turn in A Donation of Wool
.turnin 7821 >> Turn in A Donation of Silk
.turnin 7822 >> Turn in A Donation of Mageweave
.turnin 7823 >> Turn in A Donation of Runecloth
step
+Congratulations on level 60!
]]);
