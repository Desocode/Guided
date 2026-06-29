RXPGuides.RegisterGuide([[
#version 23
#defaultfor Horde Mage
#group RestedXP Horde Mage AoE
#version 23
#classic
#tbc
#mop
<< Horde Mage
#name 21-30 Silverpine/Hillsbrad AoE
#next 30-36 Arathi/Alterac AoE
step
.goto Orgrimmar,38.69,85.38
.trainer >> Go Upstairs. Train Portal: Orgrimmar
step
#level 22
.goto Orgrimmar,38.34,85.56
.trainer >> Train your class spells
>>Respec to Frost Mage AoE spec if you haven't already
>>Make sure you have at least 30 silver left over
step
#completewith next
>>Run out of Orgrimmar
.goto Orgrimmar,49.10,94.82,100,0
.goto Durotar,50.82,13.86
+Wait for the Zeppelin to Arrive, get on it when it comes
step
.zone Tirisfal Glades >> Travel to Tirisfal
step
.goto Tirisfal Glades,61.87,65.02,40,0
.goto Tirisfal Glades,61.81,74.42,40 >> Run to Undercity, then run to the Elevator room. Take one of the lifts down to the main part of Undercity
step
#completewith next
+Bank items if you need to
step << skip Undead Mage
.goto Undercity,62.01,42.73
>>Talk to |cRXP_FRIENDLY_Raleigh Andrean|r
.turnin 441 >>Turn in Raleigh and the Undercity
.target Raleigh Andrean
.accept 530 >>Accept A Husband's Revenge
step << !Undead Mage
.goto Undercity,63.27,48.60
.fp Undercity >> Get the Undercity flight path
step
.goto Undercity,82.79,15.82
.vendor >> Go to Hannah. Buy a Rune of Teleportation
.collect 17031,1 
step
.goto Undercity,84.20,15.55
.trainer >> Train the Undercity Portal
>>If you don't have enough money, vendor some things to the reagent vendor below
step << Undead Mage
.goto Undercity,63.27,48.60
.fly Silverpine >> Fly to Silverpine Forest
step << skip 
#sticky
#completewith next
.goto Undercity,82.36,15.31
+Go to the Reagent Vendor on your right and perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in.
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
>>If you can't do this, just run out of Undercity normally
step << !Undead Mage
.goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << !Undead Mage
.goto Silverpine Forest,67.42,5.91
.zone Silverpine Forest >> Follow the road west to Silverpine Forest
step << Mage
#completewith next
.money <0.1400
.goto Silverpine Forest,44.80,39.24
.vendor >> Talk to Andrea and check for a Wise Man's Belt. Buy it if its up (and if you need it)
step
>>Travel to The Sepulcher << !Undead Mage
.goto Silverpine Forest,42.80,40.87
.target Apothecary Renferrel
>>Talk to |cRXP_FRIENDLY_Apothecary Renferrel|r
.accept 493 >>Accept Journey to Hillsbrad Foothills
step
.goto Silverpine Forest,42.90,41.99
.target Mura Runetotem
>>Talk to |cRXP_FRIENDLY_Mura Runetotem|r
.turnin 3301 >>Turn in Mura Runetotem
step
.goto Silverpine Forest,44.18,42.67
.turnin 264 >>Turn in Until Death Do Us Part
step << skip Undead Mage
#sticky
#label Valdred
.goto Silverpine Forest,44.63,84.69
.complete 530,1 
>>Kill Valdred Moray (He is AoE-able). Loot him for his hands
step
#completewith next
.goto Silverpine Forest,46.50,86.49,0
+It is HIGHLY recommended you watch the link, as it can be a bit tricky here
.link https://youtu.be/0WICrQXuxIs >>CLICK HERE
>>You can also vendor/repair/buy potions at Wallace the Blind next to the gates if needed
step << Undead Mage
#requires Valdred
step
.goto Silverpine Forest,46.10,85.75
.xp 22 >> Run south to The Greymane Wall. AoE here until 22
step
>>Run East into Hillsbrad
.goto Silverpine Forest,72.58,81.35
.target Deathstalker Lesh
>>Talk to |cRXP_FRIENDLY_Deathstalker Lesh|r
.accept 494 >>Accept Time To Strike
step
>>Run to Tarren Mill
.goto Hillsbrad Foothills,62.37,20.58
>>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
.turnin 494 >>Turn in Time To Strike
.target High Executor Darthalia
.accept 527 >>Accept Battle of Hillsbrad
step << skip
#som
.goto Hillsbrad Foothills,62.62,20.73
.accept 549 >>Accept WANTED: Syndicate Personnel
step << skip
#som
.goto Hillsbrad Foothills,63.24,20.65
.target Krusk
>>Talk to |cRXP_FRIENDLY_Krusk|r
.accept 498 >>Accept The Rescue
step
>>Click the Wanted Poster outside the Inn
.goto Hillsbrad Foothills,62.55,19.69
.accept 567 >>Accept Dangerous!
step
.goto Hillsbrad Foothills,62.77,19.02
.home >> Set your Hearth to Tarren Mill
step
.goto Hillsbrad Foothills,61.44,19.05
>>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
.turnin 493 >>Turn in Journey to Hillsbrad Foothills
.turnin 1065 >>Turn in Journey to Tarren Mill
.target Apothecary Lydon
.accept 501 >>Accept Elixir of Pain
step
.goto Hillsbrad Foothills,60.14,18.62
.fp Hillsbrad >> Get the Tarren Mill Flight Path
step << skip
#sticky
#completewith Hillsbrad1
>>AoE Bears. Loot them for their Tongues
.complete 496,1 
step << skip
#sticky
#completewith Hillsbrad1
>>Kill Spiders. Loot them for their Ichor
.complete 496,2 
step
#sticky
#completewith Hillsbrad1
>>AoE Lions. Loot them for their Blood
.complete 501,1 
step
#label Hillsbrad1
.goto Hillsbrad Foothills,36.02,39.19,150 >> Run to the Hillsbrad Fields
step
#sticky
#completewith next
+It is HIGHLY recommended you watch the link, as it can be a bit tricky here
.link https://youtu.be/pfUnj69wAqY >>CLICK HERE
step
#sticky
#completewith l24
>>Kill Citizen Wilkes. He patrols around the fields
.complete 567,2 
step
#sticky
#completewith next
.goto Hillsbrad Foothills,35.16,39.06
>>AoE the Hillsbrad Mobs in the area. Keep an eye out for Farmer Rey and Getz
.complete 527,1 
.complete 527,2 
.complete 527,3 
.complete 527,4 
step
#label l24
.xp 24 >> AoE the middle and northern fields (with Farmers and Farmhands) to 24
>>Start saving the Wool Cloth you get. You need 12 stacks for later
step
#sticky
#label Getz
>>Kill Farmer Getz, he can be in the House, Barn, or Field
.goto Hillsbrad Foothills,36.7,39.4,60,0
.goto Hillsbrad Foothills,35.2,37.6,45,0
.goto Hillsbrad Foothills,35.1,41.0,60,0
.complete 527,4 
step
>>Kill Farmer Ray. He can be in the 1st or 2nd floor of the house. He can also be outside under the grapevine (hut)
.goto Hillsbrad Foothills,33.7,35.5,20,0
.goto Hillsbrad Foothills,33.2,34.8,20,0
.goto Hillsbrad Foothills,33.7,35.5,20,0
.goto Hillsbrad Foothills,33.2,34.8,20,0
.goto Hillsbrad Foothills,33.7,35.5,20,0
.goto Hillsbrad Foothills,33.2,34.8,20,0
.goto Hillsbrad Foothills,33.7,35.5,20,0
.goto Hillsbrad Foothills,33.2,34.8,20,0
.goto Hillsbrad Foothills,33.7,35.5,20,0
.goto Hillsbrad Foothills,33.2,34.8,20,0
.goto Hillsbrad Foothills,33.2,34.8
.complete 527,3 
step
>>AoE the Hillsbrad Mobs in the area. Keep an eye out for Farmer Rey and Getz
.complete 527,1 
.complete 527,2 
step
>>Kill Citizen Wilkes. He patrols around the fields
.complete 567,2 
step
#requires Getz
.zone Undercity >> Teleport to Undercity
step
.goto Undercity,85.14,10.03
.trainer >> Train your class spells
>>Make sure you have at least 10s leftover
step
.goto Undercity,82.79,15.82
.vendor >> Go to Hannah. Buy a Rune of Teleportation
.collect 17031,1 
step
.goto Undercity,57.30,32.76
.trainer >> Train 1h Swords, Daggers
step << skip Undead Mage
.goto Undercity,62.01,42.72
.target Raleigh Andrean
>>Talk to |cRXP_FRIENDLY_Raleigh Andrean|r
.turnin 530 >>Turn in A Husband's Revenge
step
#completewith next
.goto Undercity,65.97,44.73
+Bank your Wool Cloth here from earlier. You need 12 stacks (240) for later
step
.hs >> Hearth to Tarren Mill
.vendor >> Buy level 25 drink from the Innkeeper once you hearthed
step
#hardcore
#completewith next
.goto Hillsbrad Foothills,62.56,19.91
.vendor >> Buy 8-10 slot bags from Kayren if needed
step
.goto Hillsbrad Foothills,62.34,20.44
>>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
.turnin 527 >>Turn in Battle of Hillsbrad
.target High Executor Darthalia
.accept 528 >>Accept Battle of Hillsbrad
step
.goto Hillsbrad Foothills,62.13,19.57
.target Deathguard Samsa
>>Talk to |cRXP_FRIENDLY_Deathguard Samsa|r
.accept 546 >>Accept Souvenirs of Death
step
.isQuestComplete 501
.goto Hillsbrad Foothills,61.44,19.06
>>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
.turnin 501 >>Turn in Elixir of Pain
.target Apothecary Lydon
.accept 502 >>Accept Elixir of Pain
step
.goto Hillsbrad Foothills,39.10,38.68
>>AoE Lions en route to the fields. Loot them for their Blood
.complete 501,1 
step
.goto Hillsbrad Foothills,36.02,39.19,150 >> Run to the Hillsbrad Fields
+It is HIGHLY recommended you watch the link for the new field pulls you have to do, as it can be a bit tricky here
.link https://youtu.be/5M9vn4XLBoQ >> CLICK HERE
step
.isOnQuest 502
>>Turn in the Elixir at Stanley. Kill him afterwards
.goto Hillsbrad Foothills,32.66,35.32
.target Stanley
>>Talk to |cRXP_FRIENDLY_Stanley|r
.turnin 502 >>Turn in Elixir of Pain
step
#sticky
#label Kalaba
>>Kill Farmer Kalaba. She patrols around the southern field
.complete 567,4 
step
#sticky
#completewith next
.goto Hillsbrad Foothills,35.29,46.83,0
>>AoE the Peasants in the southern field
.complete 528,1 
step
.xp 25 >> AoE all of the fields to 25
step
>>Keep grinding until you've looted 30 skulls
.complete 546,1 
>>AoE the Peasants in the southern field
.complete 528,1 
step
#requires Kalaba
.hs >> If your hearth is up, hearth to Tarren Mill
>> If your hearth is down, keep AoE farming until it's back up
.vendor >> Buy level 25 drink from the Innkeeper once you hearthed
step
.goto Hillsbrad Foothills,62.35,20.51
>>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
.turnin 528 >>Turn in Battle of Hillsbrad
.target High Executor Darthalia
.accept 529 >>Accept Battle of Hillsbrad
step
.goto Hillsbrad Foothills,62.13,19.57
.target Deathguard Samsa
>>Talk to |cRXP_FRIENDLY_Deathguard Samsa|r
.turnin 546 >>Turn in Souvenirs of Death
step
.isOnQuest 501
.goto Hillsbrad Foothills,61.44,19.06
>>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
.turnin 501 >>Turn in Elixir of Pain
.target Apothecary Lydon
.accept 502 >>Accept Elixir of Pain
.accept 509 >>Accept Elixir of Agony
step
.goto Hillsbrad Foothills,61.44,19.06
.target Apothecary Lydon
>>Talk to |cRXP_FRIENDLY_Apothecary Lydon|r
.accept 509 >>Accept Elixir of Agony
step
.goto Hillsbrad Foothills,36.02,39.19,150 >> Run to the Hillsbrad Fields
step
#sticky
#label Iron
>>Loot the Shipment of Iron found within the Smith
.goto Hillsbrad Foothills,32.00,45.44
.complete 529,3 
step
#sticky
#completewith next
>>Kill Blacksmith Verringtan and his Apprentices around the Smith
.complete 529,1 
.complete 529,2 
step
.xp 26 >> AoE all of the fields to 26
>>Start saving the Wool Cloth you get. You need 12 stacks for later
step
>>Kill Blacksmith Verringtan and his Apprentices around the Smith
.complete 529,1 
.complete 529,2 
step
#requires Iron
>> If your hearth is down, keep AoE farming until it's back up
.zone Undercity >> Teleport (don't hearth) to Undercity
step
.goto Undercity,85.14,10.03
.trainer >> Train your class spells
>>Make sure you have at least 30s leftover
step
.goto Undercity,82.79,15.82
.vendor >> Go to Hannah. Buy some Runes of Teleportation
.collect 17031,3 
step
#completewith next
.goto Undercity,65.97,44.73
+Bank your Wool Cloth here from earlier. You need 12 stacks (240) for later
step
#softcore
#completewith next
.goto Undercity,71.50,41.92,0
+Buy some bags from the auction house if you have spare money, you're in for a long grind ahead
step
.hs >> If your hearth is up, hearth to Tarren Mill
.vendor >> Buy level 25 drink from the Innkeeper once you hearthed
step
#hardcore
#completewith next
.goto Hillsbrad Foothills,62.56,19.91
.vendor >> Buy 8-10 slot bags from Kayren if needed
step
.goto Hillsbrad Foothills,62.27,20.40
>>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
.turnin 529 >>Turn in Battle of Hillsbrad
.target High Executor Darthalia
.accept 532 >>Accept Battle of Hillsbrad
step
#sticky
>>Kill the Clerk. He's inside the Hall
.complete 567,1 
step
>>Kill the Councilmans. Be careful as they Frost Nova and Frostbolt
.goto Hillsbrad Foothills,29.63,42.33
.complete 532,2 
step
>>Single-target kill Burnside inside the Hall. Loot the book and Burn the scroll after
.goto Hillsbrad Foothills,29.67,41.64
.complete 532,1 
.goto Hillsbrad Foothills,29.52,41.53
.complete 532,4 
.goto Hillsbrad Foothills,29.73,41.75
.complete 532,3 
step
.xp 27 >> AoE all of the fields to 27
step
.hs >> If your hearth is up, hearth to Tarren Mill. Otherwise, keep AoE farming
.vendor >> Buy level 25 drink from the Innkeeper once you hearthed
step
>>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
.turnin 532 >>Turn in Battle of Hillsbrad
.target High Executor Darthalia
.accept 539 >>Accept Battle of Hillsbrad
step
>>Loot the big blue mushrooms in the area.
>>You can AoE the gnolls, but be careful of Shamans as they cast Lightning Bolt+Healing Wave (remember to use Counterspell)
.goto Hillsbrad Foothills,63.70,61.59
.complete 509,1 
step
.goto Hillsbrad Foothills,27.21,57.20,150 >> Run to Azurelode Mine
step
#sticky
#completewith next
+It is HIGHLY recommended you watch the link, as it can be a bit tricky here
.link https://youtu.be/KTrj8CLBG2o >>CLICK HERE
step
#sticky
#label Hackett
>>Kill Miner Hackett. He can be found all throughout the mine
.complete 567,3 
step
#sticky
#completewith next
>>Kill Foreman Bonds. Be careful as he has a stun
.goto Hillsbrad Foothills,31.20,56.02
.complete 539,1 
step
.xp 30 >> AoE mobs in the mine to Level 30
>>Start saving the Wool Cloth you get. You need 12 stacks for later
>>You can hearth back to Tarren Mill to buy more water+vendor trash if ever needed, then run back to the mine
step
>>Kill 10 Miners inside the mine
.complete 539,2 
step
>>Kill Foreman Bonds. Be careful as he has a stun
.goto Hillsbrad Foothills,31.20,56.02
.complete 539,1 
step
#requires Hackett
.zone Undercity >> Teleport to Undercity
step
.goto Undercity,85.14,10.03
.trainer >> Train your class spells
>>Make sure you have at least 40s leftover
step
.goto Undercity,82.79,15.82
.vendor >> Go to Hannah. Buy some Runes of Teleportation
.collect 17031,4 
step
.goto Undercity,63.82,49.37
.target Genavie Callow
>>Talk to |cRXP_FRIENDLY_Genavie Callow|r
.accept 1164 >>Accept To Steal From Thieves
step
#completewith next
.goto Undercity,65.97,44.73
+Bank your Wool Cloth here from earlier. You need 12 stacks (240) for later
step
.hs >> If your hearth is up, hearth to Tarren Mill
.vendor >> Buy level 25 drink from the Innkeeper once you hearthed
step
#hardcore
#completewith next
.goto Hillsbrad Foothills,62.56,19.91
.vendor >> Buy 8-10 slot bags from Kayren if needed
step
.goto Hillsbrad Foothills,61.86,19.57
.target Tallow
>>Talk to |cRXP_FRIENDLY_Tallow|r
.accept 676 >>Accept The Hammer May Fall
step
.goto Hillsbrad Foothills,61.57,20.84
.target Magus Wordeen Voidglare
>>Talk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
.accept 544 >>Accept Prison Break In
.target Keeper Bel'varil
>>Talk to |cRXP_FRIENDLY_Keeper Bel'varil|r
.accept 556 >>Accept Stone Tokens
step
.goto Hillsbrad Foothills,62.38,20.56
.target High Executor Darthalia
>>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
.turnin 539 >>Turn in Battle of Hillsbrad
.turnin 567 >>Turn in Dangerous!
step
.goto Hillsbrad Foothills,63.24,20.65
.target Krusk
>>Talk to |cRXP_FRIENDLY_Krusk|r
.accept 533 >>Accept Infiltration
step
.goto Hillsbrad Foothills,63.88,19.67
.target Novice Thaivand
>>Talk to |cRXP_FRIENDLY_Novice Thaivand|r
.accept 552 >>Accept Helcular's Revenge
step
.goto Hillsbrad Foothills,88.20,48.09,40,0
.zone Arathi Highlands >>Run to Arathi Highlands
]]);
