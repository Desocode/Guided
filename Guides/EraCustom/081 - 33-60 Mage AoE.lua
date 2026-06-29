RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 33-60 Mage AoE
step
#completewith next
+Congratulations! You're now onto the AoE grind part. If there is competition in the area you're AoEing in, then you can always log and play an alt, do dungeons, or try to kick them out the spot by being more persistent than them.
>>Good luck, and have fun!
step
.goto Arathi Highlands,60.18,53.85
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 659 >>Turn in Hints of a New Plague?
.target Quae
.accept 658 >>Accept Hints of a New Plague?
step
#completewith next
+It's highly recommended you watch the video on how to do all 4-5 pulls effectively in the area for the orcs
.link https://youtu.be/SxMc2GoP33c?t=3477 >> CLICK HERE
step
#completewith next
.goto Arathi Highlands,66.34,64.29,120,0
.goto Arathi Highlands,63.49,67.77,120,0
.goto Arathi Highlands,61.25,72.37,120,0
.goto Arathi Highlands,64.77,73.22,120,0
.goto Arathi Highlands,70.50,69.58,120 >> Check the camps for Nimar the Slayer
step
.goto Arathi Highlands,73.20,64.88,30 >> Check the troll camps that are outside for Nimar the Slayer, as he drops a really good cloth helm
.unitscan Nimar the Slayer
>>If he's not up or you can't find him, skip this step
step
#sticky
#label Folder
>>Kill the Forsaken Courier when it spawns. Loot it for the folder
.complete 658,1 
.unitscan Forsaken Courier
step
.goto Arathi Highlands,61.89,58.12
.xp 36 >> AoE grind orcs to 36. Check the video guide linked earlier if you're struggling
>>Don't be afraid to Hearth early and restock/repair if needed
>>Remember to start saving Silk Cloth to bank later (for cloth turnins)
step
.isQuestComplete 658
.goto Arathi Highlands,60.19,53.85
.target Quae
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 658 >>Turn in Hints of a New Plague?
step
.isQuestTurnedIn 658
.target Quae
>>Talk to |cRXP_FRIENDLY_Quae|r
.accept 657 >>Accept Hints of a New Plague?
>>Talk to |cRXP_FRIENDLY_Kinelory|r
.turnin 657 >>Turn in Hints of a New Plague?
.target Kinelory
.accept 660 >>Accept Hints of a New Plague?
step
.isQuestTurnedIn 658
>>Escort Kinelory
.complete 660,1 
step
.isQuestTurnedIn 658
.goto Arathi Highlands,60.19,53.85
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 660 >>Turn in Hints of a New Plague?
.target Quae
.accept 661 >>Accept Hints of a New Plague?
step
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your class spells
>>Bank your cloth too if needed
step
.hs >> Hearth to Southshore
.vendor >> Buy up to 140 level 35 water
step
.isOnQuest 661
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>Talk to |cRXP_FRIENDLY_Phin Odelic|r
.turnin 661 >>Turn in Hints of a New Plague?
step
.goto Hillsbrad Foothills,48.14,59.11
.target Magistrate Henry Maleb
>>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 525 >>Turn in Further Mysteries
step
.goto Hillsbrad Foothills,49.34,52.27
.fly Arathi >> Fly to Arathi
step
#completewith next
.goto Arathi Highlands,45.98,47.72
.vendor >> Talk to Jannos and vendor/repair if needed
step
.goto Arathi Highlands,61.89,58.12,250 >> Run back to the orc farm
step
#sticky
#completewith next
>>Kill the Forsaken Courier when it spawns. Loot it for the folder
.complete 658,1 
.unitscan Forsaken Courier
step
.goto Arathi Highlands,61.89,58.12
.xp 37 >> AoE grind orcs to 37. Check the video guide linked earlier if you're struggling
step
.isQuestComplete 658
.goto Arathi Highlands,60.19,53.85
.target Quae
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 658 >>Turn in Hints of a New Plague?
step
.isQuestTurnedIn 658
.target Quae
>>Talk to |cRXP_FRIENDLY_Quae|r
.accept 657 >>Accept Hints of a New Plague?
>>Talk to |cRXP_FRIENDLY_Kinelory|r
.turnin 657 >>Turn in Hints of a New Plague?
.target Kinelory
.accept 660 >>Accept Hints of a New Plague?
step
.isQuestTurnedIn 658
>>Escort Kinelory
.complete 660,1 
step
.isQuestTurnedIn 658
.goto Arathi Highlands,60.19,53.85
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 660 >>Turn in Hints of a New Plague?
.target Quae
.accept 661 >>Accept Hints of a New Plague?
step
.hs >> Hearth to Southshore
.vendor >> Buy level 35 drink if needed
step
.isOnQuest 661
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>Talk to |cRXP_FRIENDLY_Phin Odelic|r
.turnin 661 >>Turn in Hints of a New Plague?
step
.goto Hillsbrad Foothills,49.34,52.27
.fly Wetlands >> Fly to Wetlands
step
#completewith next
.goto Wetlands,5.14,63.40,20 >> Go to the end of the dock. Wait here for the boat
step
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >> Take the boat to Theramore
step
.goto Dustwallow Marsh,67.47,51.30
.fp Theramore >> Get the Theramore Flight Path
step
>>Go into the house and buy Soothing Spices from Helenia if you didn't get them in Southshore
.goto Dustwallow Marsh,66.44,51.46
.collect 3713,3 
step
.goto Dustwallow Marsh,66.15,46.07
.target Guard Byron
>>Talk to |cRXP_FRIENDLY_Guard Byron|r
.accept 1282 >>Accept They Call Him Smiling Jim
step
>>Go into the Inn
.goto Dustwallow Marsh,66.33,45.47
.target Morgan Stern
>>Talk to |cRXP_FRIENDLY_Morgan Stern|r
.accept 1204 >>Accept Mudrock Soup and Bugs
step
.goto Dustwallow Marsh,66.59,45.22
.home >> Set your hearth to Theramore
.vendor >> Buy up to 180 level 35 drink
step
>>Go upstairs in the keep
.goto Dustwallow Marsh,67.79,47.62,30,0
.goto Dustwallow Marsh,68.02,48.71
>>Talk to |cRXP_FRIENDLY_Commander Samaul|r
.turnin 1264 >>Turn in The Missing Diplomat
.target Commander Samaul
.accept 1265 >>Accept The Missing Diplomat
step
.goto Dustwallow Marsh,68.21,48.62
.target Captain Garran Vimes
>>Talk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1282 >>Turn in They Call Him Smiling Jim
step
>>Wait for Tervosh to appear in the tower. Turn in, then wait for him to cast his buff on you
.goto Dustwallow Marsh,59.72,41.17
.complete 1265,1 
>>Talk to |cRXP_FRIENDLY_Archmage Tervosh|r
.turnin 1265 >> Turn in The Missing Diplomat
.target Archmage Tervosh
.accept 1266 >> Accept The Missing Diplomat
step
>>Talk to Private Hendel. This will start a 1v3 event
>>Nova the other mobs, try to focus Hendel
.goto Dustwallow Marsh,45.20,24.58
>>Talk to |cRXP_FRIENDLY_Private Hendel|r
.turnin 1266 >>Turn in The Missing Diplomat
.target Private Hendel
.accept 1324 >>Accept The Missing Diplomat
.complete 1324,1 
step
>>Turn in behind you
.goto Dustwallow Marsh,45.19,24.27
.target Archmage Tervosh
>>Talk to |cRXP_FRIENDLY_Archmage Tervosh|r
.turnin 1324 >>Turn in The Missing Diplomat
.target Lady Jaina Proudmoore
>>Talk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
.turnin 1267 >>Turn in The Missing Diplomat
step
>>Turn in the Soothing Spices that you got earlier from Southshore
.goto Dustwallow Marsh,55.44,26.27
.target "Swamp Eye" Jarl
>>Talk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1218 >>Accept Soothing Spices
.turnin 1218 >>Turn in Soothing Spices
step
>>Click the dirt grave
.goto Dustwallow Marsh,55.44,25.92
.accept 1219 >>Accept The Orc Report
step
#completewith next
+I HIGHLY recommend watching the mage guide for these mobs, as they are arguably the hardest part of the AoE Mage leveling experience
>>I wouldn't recommend doing the turtle pack until level 38+
.link https://youtu.be/SxMc2GoP33c?t=3824 >> CLICK HERE
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
.trainer >> Teleport to Stormwind or Ironforge. Train your level 38 spells
>>Start being very careful with your money too, as it's very nice to have your mount at level 40
step
.hs >> Hearth to Theramore
>> Buy food/water if needed
step
.goto Dustwallow Marsh,65.07,47.12
>>Talk to |cRXP_FRIENDLY_Theramore Lieutenant|r
.turnin 1219 >>Turn in The Orc Report
.target Theramore Lieutenant
.accept 1220 >>Accept Captain Vimes
step
>>Go upstairs in the keep
.goto Dustwallow Marsh,67.79,47.62,30,0
.goto Dustwallow Marsh,68.21,48.62
.target Captain Garran Vimes
>>Talk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1220 >>Turn in Captain Vimes
step
#sticky
#completewith next
.goto Dustwallow Marsh,54.33,12.41,0
>>Start doing the Turtle pack just north of the north-western murloc camp
.complete 1204,1 
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
step
.goto Dustwallow Marsh,64.80,40.43
>>Finish AoEing the turtles for their tongues
.complete 1204,1 
step << Gnome
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your class spells
step << Gnome
#era
.zone Dun Morogh >>Skip this step if you won't have 90g or more after vendoring trash
.trainer >>Run into Dun Morogh and get your mount and mount training.
.goto Dun Morogh,49.15,48.05
step << Gnome
#som
.zone Dun Morogh >>Skip this step if you won't have 50g or more after vendoring trash
.trainer >>Run into Dun Morogh and get your mount and mount training.
.goto Dun Morogh,49.15,48.05
step << Human
.zone Stormwind City >> Teleport to Stormwind
.trainer >> Train your class spells
step << Human
#era
.goto Stormwind City,66.27,62.13
.fly Redridge >> Fly to Redridge. Skip this step if you won't have 90g or more after vendoring trash
.goto Elwynn Forest,84.32,64.87
.trainer >>Run to Eastvale and get your mount and mount training.
step << Human
#som
.goto Stormwind City,66.27,62.13
.fly Redridge >> Fly to Redridge. Skip this step if you won't have 50g or more after vendoring trash
.goto Elwynn Forest,84.32,64.87
.trainer >>Run to Eastvale and get your mount and mount training.
step
.hs >> Hearth to Theramore
>> Buy food/water if needed
step
.goto Dustwallow Marsh,66.33,45.47
.target Morgan Stern
>>Talk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1204 >>Turn in Mudrock Soup and Bugs
step
#hardcore
#era
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
#era
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your class spells
step
#hardcore
#era
.hs >> Hearth to Theramore
>> Buy food/water if needed
step
#som
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your class spells
step
#som
.hs >> Hearth to Theramore
>> Buy food/water if needed
step
>>Travel to Tanaris. You can either ride through Dustwallow -> Barrens -> Thousand Needles -> Gadgetzan
>>Or you can go straight south and swim near the fatigue water to eastern tanaris -> Gadgetzan
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
>>If you have no mount, as soon as you get 90g worth of loot, teleport back to Ironforge, go to Dun Morogh, and buy your mount. Hearth back to Gadgetzan << Gnome
>>If you have no mount, as soon as you get 90g worth of loot, teleport back to Stormwind, Fly to Redridge, run to Eastvale, then go and buy your mount. Hearth back to Gadgetzan << Human
.link https://youtu.be/TgwHw7qT4ws >> If you have a mount, CLICK HERE 
.link https://youtu.be/4-yJ47T728Y?t=6 >> If you DONT have a mount, CLICK HERE 
step
#softcore
#era
#sticky
#label Temper
>>Loot Troll Temper from the mobs you kill inside of Zul'Farrak
.complete 3042,1 
step
#softcore
#era
.xp 44 >> AoE Zul'Farrak to level 44
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
.zone Ironforge >> Teleport to Ironforge
step
#softcore
#som
.zone Ironforge >> Teleport to Ironforge
step
#hardcore
.zone Ironforge >> Teleport to Ironforge
step
.goto Ironforge,27.17,8.58
.trainer >> Train your class spells
step
.goto Ironforge,31.32,27.80
.vendor >> Talk to Ginny. Buy 6 Runes of Teleportation
>>You can also go to the AH and buy bigger bags if you need
.collect 17031,6 
step
.hs >> Hearth to Gadgetzan
.vendor >> Buy 140 level 45 drink
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
>>If you have no mount, as soon as you get 50g worth of loot, teleport back to Ironforge, go to Dun Morogh, and buy your mount. Hearth back to Gadgetzan << Gnome
>>If you have no mount, as soon as you get 50g worth of loot, teleport back to Stormwind, Fly to Redridge, run to Eastvale, then go and buy your mount. Hearth back to Gadgetzan << Human
.link https://youtu.be/TgwHw7qT4ws >> If you have a mount, CLICK HERE 
.link https://youtu.be/4-yJ47T728Y?t=6 >> If you DONT have a mount, CLICK HERE 
.link https://youtu.be/rFO4prcG2p0 >> CLICK HERE when you're comfortable enough to do the additional Scarab pull
step
#softcore
#sticky
#label ScarabS
>>Loot Scarab Shells inside of Zul'Farrak after you've AoE'd them
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
.trainer >> Teleport to Stormwind or Ironforge. Train your level 46-48 spells
step
#hardcore
.trainer >> Teleport to Stormwind or Ironforge. Train your level 46-48 spells
step
.hs >> Hearth to Gadgetzan.
>> Buy level 45 drink if needed
>> Buy food/water if needed
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
#hardcore
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your level 50-52 spells
step
#softcore
.trainer >> Teleport to Stormwind or Ironforge. Train your level 50-52 spells
step
#softcore
.hs >> Hearth to Gadgetzan. Buy level 45 drink if needed
>> Buy food/water if needed
step
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
#softcore
.trainer >> Teleport to Ironforge. Train your level 54 spells
step
.goto Ironforge,55.50,47.75
.fly Chillwind >> Fly to Western Plaguelands
step
.goto Western Plaguelands,42.70,84.03
.target Commander Ashlam Valorfist
>>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
step
.goto Western Plaguelands,42.97,83.55
.target Argent Officer Pureheart
>>Talk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
.turnin 5401 >> Turn in Argent Dawn Commission
step
>>Equip your Argent Dawn Commission
>>AoE the skeletons and ghouls. Be careful when going back into melee range after pulling as they thrash (multiple attacks at once)
.goto Western Plaguelands,51.00,76.16
.complete 5092,1 
.complete 5092,2 
step
.goto Western Plaguelands,42.70,84.03
>>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5092 >> Turn in Clear the Way
.target Commander Ashlam Valorfist
.accept 5097 >> Accept All Along the Watchtowers
.accept 5215 >> Accept The Scourge Cauldrons
step
.goto Western Plaguelands,42.97,84.50
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5215 >>Turn in The Scourge Cauldrons
.target High Priestess MacDonnell
.accept 5216 >>Accept Target: Felstone Field
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,40.02,71.74
.complete 5097,1 
step
>>Kill Cauldron Lord Bilemaw. Loot him for the key
.goto Western Plaguelands,37.12,57.18
.complete 5216,1 
.unitscan Cauldron Lord Bilemaw
step
>>Click on the Cauldron in front of you
.goto Western Plaguelands,37.21,56.88
.turnin 5216 >>Turn in Target: Felstone Field
.accept 5217 >>Accept Return to Chillwind Camp
step
>>2nd floor of the house
.goto Western Plaguelands,38.40,54.06
.target Janice Felstone
>>Talk to |cRXP_FRIENDLY_Janice Felstone|r
.accept 5021 >>Accept Better Late Than Never
step
>>Small package inside the barn. Try not to aggro the scarlet mobs if they're alive outside
.goto Western Plaguelands,38.73,55.24
.turnin 5021 >>Turn in Better Late Than Never
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,42.30,66.04
.complete 5097,2 
step
.goto Western Plaguelands,42.97,84.50
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5217 >>Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
.accept 5219 >>Accept Target: Dalson's Tears
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,44.18,63.36
.complete 5097,3 
step
>>Kill Cauldron Lord Malvinous. Loot him for the key
.goto Western Plaguelands,46.04,52.34
.complete 5219,1 
.unitscan Cauldron Lord Malvinous
step
>>Click the Cauldron
.goto Western Plaguelands,46.19,52.01
.turnin 5219 >>Turn in Target: Dalson's Tears
.accept 5220 >>Accept Return to Chillwind Camp
step
>>Inside the barn on the ground
.goto Western Plaguelands,47.79,50.67
.turnin 5058 >> Turn in Mrs. Dalson's Diary
step
#completewith next
+Start AoEing the undead in the area. Be careful as the Skeletal Terrors fear. Watch the video for more info
.link https://youtu.be/SxMc2GoP33c?t=4759 >> CLICK HERE
step
#completewith 54Grind
#label SkeletonKey
>>Keep an eye out for the Wandering Skeleton whilst you're AoEing. Kill him then loot him for the Outhouse Key
.collect 12738,1 
step
#completewith 54Grind
#label LockedAway
#requires SkeletonKey
.goto Western Plaguelands,48.16,49.64
>>Click the outhouse. This will spawn a mob. Kill it
.turnin 5059 >> Turn in Locked Away
.collect 12739,1 
step
#completewith 54Grind
#requires LockedAway
>>Click the cabinet at the top floor of the house
.goto Western Plaguelands,47.37,49.66
.turnin 5060 >> Turn in Locked Away
step
#label 54Grind
.xp 54+156900 >>AoE Undead in the area to 54 & 156900+/173900xp
>>Remember to try and save 12 stacks of Runecloth. You'll need it for cloth turnins later
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,46.52,71.21
.complete 5097,4 
step
.goto Western Plaguelands,42.70,84.04
.target Commander Ashlam Valorfist
>>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5097 >>Turn in All Along the Watchtowers
step
.goto Western Plaguelands,42.97,84.51
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5220 >>Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
.accept 5222 >>Accept Target: Writhing Haunt
step
>>Kill Cauldron Lord Razarch. Loot him for the key
.goto Western Plaguelands,53.11,65.98
.complete 5222,1 
step
>>Click the Cauldron
.goto Western Plaguelands,53.04,65.71
.turnin 5222 >>Turn in Target: Writhing Haunt
.accept 5223 >>Accept Return to Chillwind Camp
step
#softcore
.deathskip >> Die and Respawn back in Chillwind
step
#completewith next
.goto Western Plaguelands,42.84,83.72
.vendor >> If you would have friendly rep after turning in and using your scourgestones to Pureheart, buy as many Manna Biscuits as possible to last you to level 60
>>If you don't, skip this step
step
.goto Western Plaguelands,42.97,84.50
.target High Priestess MacDonnell
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5223 >>Turn in Return to Chillwind Camp
step
.zone Stormwind City >> Teleport to Stormwind City
step
#softcore
#completewith SWBank
.goto Stormwind City,53.61,59.77
+If you don't have 12 stacks of each cloth, or the Feathers, buy them from the Auction House
step
#label SWBank
.goto Stormwind City,56.48,73.41,50,0
>>Withdraw all your cloth from the bank. You need 12 stacks of Wool, Silk, Mageweave, and Runecloth
>>If you don't have inventory space, then leave half of the cloth in the bank and skip this step
>>Also get as many Light Feathers as you can. You'll need them for later
.collect 2592,240 
.collect 4306,240 
.collect 4338,240 
.collect 14047,240 
.collect 17056,10 
step
>>Inside the 2nd floor of the house
>>Make sure you have no addons on that will automatically turn in extra runecloth (for rep) or you will be told to buy it again later
.goto Stormwind City,44.27,73.99
.target Clavicus Knavingham
>>Talk to |cRXP_FRIENDLY_Clavicus Knavingham|r
.turnin 7791 >> Turn in A Donation of Wool
.turnin 7793 >> Turn in A Donation of Silk
.turnin 7794 >> Turn in A Donation of Mageweave
.turnin 7795 >> Turn in A Donation of Runecloth
step
.zone Ironforge >> Teleport to Ironforge
step
#softcore
#completewith IFBank
.goto Ironforge,25.75,75.42
+If you don't have 9 stacks of each cloth, buy it from the Auction House
step
#label IFBank
.goto Ironforge,35.92,60.14,40,0
>>Withdraw all your cloth from the bank. You need 9 stacks of Wool, Silk, Mageweave, and Runecloth
>>If you don't have inventory space, then leave half of the cloth in the bank and skip this step
.collect 2592,180 
.collect 4306,180 
.collect 4338,180 
.collect 14047,180 
step
.goto Ironforge,43.22,31.59
.target Mistina Steelshield
>>Talk to |cRXP_FRIENDLY_Mistina Steelshield|r
.turnin 7802 >> Turn in A Donation of Wool
.turnin 7803 >> Turn in A Donation of Silk
.turnin 7804 >> Turn in A Donation of Mageweave
.turnin 7805 >> Turn in A Donation of Runecloth
step
.goto Ironforge,74.09,48.23
.target Bubulo Acerbus
>>Talk to |cRXP_FRIENDLY_Bubulo Acerbus|r
.turnin 7807 >> Turn in A Donation of Wool
.turnin 7808 >> Turn in A Donation of Silk
.turnin 7809 >> Turn in A Donation of Mageweave
.turnin 7811 >> Turn in A Donation of Runecloth
step
.goto Ironforge,55.50,47.75
.fly Wetlands >> Fly to Wetlands
step
#sticky
#completewith Darkshore1
+Wait here for the boat
.goto Wetlands,4.7,57.3
step
#label Darkshore1
.zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore
step
.goto Darkshore,37.04,44.13
.home >> Set your hearth to Auberdine
step
.isQuestTurnedIn 741
.goto Darkshore,36.34,45.57
.fly Teldrassil >> Fly to Teldrassil
step
#sticky
#completewith next
+Wait here for the boat
.goto Darkshore,33.17,40.18
step
.zone Teldrassil >>Get onto the boat when it comes. Take it to Darnassus
step
.goto Teldrassil,55.95,89.88,40 >> Take the purple portal into Darnassus
step
#softcore
#completewith NEBank
.goto Darnassus,56.37,51.80
+If you don't have 3 stacks of each cloth, buy it from the Auction House
step
#label NEBank
.goto Darnassus,39.90,42.08,40,0
>>Withdraw all your cloth from the bank. You need 3 stacks of Wool, Silk, Mageweave, and Runecloth
>>If you don't have inventory space, then leave half of the cloth in the bank and skip this step
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
#completewith next
.goto Darnassus,40.60,82.13
.trainer >> Train the Darnassus portal for convenience if you want (its not needed for any part of the route later)
step
.goto Darnassus,64.02,23.00
.target Raedon Duskstriker
>>Talk to |cRXP_FRIENDLY_Raedon Duskstriker|r
.turnin 7792 >> Turn in A Donation of Wool
.turnin 7798 >> Turn in A Donation of Silk
.turnin 7799 >> Turn in A Donation of Mageweave
.turnin 7800 >> Turn in A Donation of Runecloth
step
.hs >> Hearth to Auberdine
>> Buy food/water if needed
step
.goto Darkshore,37.12,43.62
.vendor >> Buy A LOT level 45 water from Allyndia if you didn't get the Manna Biscuits earlier. Fill your bags with it
>>Alternatively, if you don't want to go broke, just conjure level 45 water instead
step
.goto Darkshore,38.14,41.11
.vendor >> Repair. You're going to be AoE grinding solidly for the next 5 levels, so make sure you're at full durability
step
#completewith next
+You're now going to do the Dancing Troll Village. You can get there through Darkshore (pretty hard, needs Light Feathers, but 10 mins faster) or through Winterspring
.link https://youtu.be/1nBptJKSJto >> CLICK HERE for Darkshore
.link https://youtu.be/2aAD8pgMaF4?t=40 >> CLICK HERE for Winterspring 
step
.goto Darkshore,69.07,20.58,150 >> Arrive in the Dancing Troll Village
step
.goto Darkshore,68.34,22.98,60,0
.goto Darkshore,68.42,18.97,60,0
.goto Darkshore,69.63,21.01,60,0
.goto Darkshore,68.34,22.98,60,0
.goto Darkshore,68.42,18.97,60,0
.goto Darkshore,69.63,21.01,60,0
.xp 60 >> Grind the trolls to 60
>>DO NOT DIE. Look at the video guide if needed. If you die, you'll need to do the Darkshore jumps or travel to Winterspring again
step
+Congratulations on level 60!
]]);
