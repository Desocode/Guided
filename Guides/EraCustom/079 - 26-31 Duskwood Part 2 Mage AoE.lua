RXPGuides.RegisterGuide([[
#version 23
#defaultfor Alliance Mage
#group RestedXP Alliance Mage
#classic
#tbc
#mop
<< Alliance Mage
#name 26-31 Duskwood Part 2 Mage AoE
#next 31-33 Hillsbrad Mage AoE
step
.goto Redridge Mountains,26.76,46.40
.accept 180 >>Accept Wanted: Lieutenant Fangore
step
.goto Redridge Mountains,29.72,44.27
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
.accept 91 >>Accept Solomon's Law
step
#sticky
#label Pendants
>>AoE gnolls. Loot them for Shadowhide Pendants
.complete 91,1 
step
>>Kill Lieutenant Fangore. Be careful as he pulls as a pack of 3. You can split pull them all with Blizzard if needed
>>Loot his paw
.goto Redridge Mountains,80.17,37.08
.complete 180,1 
step
#requires Pendants
>>Go to the top floor of the tower. Loot the Blue book sticking out of the bookcase
>>Do not pull Morganth. Be careful as the Servants have high Arcane resistance and Mana burn
>>Be careful of the slayers, as they execute you when you're below 20% hp
.goto Redridge Mountains,78.88,47.66
.complete 1938,1 
step
.zone Stormwind City >> Teleport to Stormwind
step
>>Go through the green portal, on your left
.goto Stormwind City,37.53,81.66
>>Talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
.turnin 1938 >>Turn in Ur's Treatise on Shadow Magic
.target High Sorcerer Andromath
.accept 1940 >>Accept Pristine Spider Silk
step
.goto Stormwind City,66.28,62.14
.fly Darkshire >> Fly to Duskwood
step
>>Inside the house
.goto Duskwood,75.79,45.30
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.accept 66 >>Accept The Legend of Stalvan
step
.goto Duskwood,75.30,48.04
.target Calor
>>Talk to |cRXP_FRIENDLY_Calor|r
.accept 173 >>Accept Worgen in the Woods
step
.home >> Set your hearth to Darkshire
.goto Duskwood,73.87,44.41
step
.goto Duskwood,72.53,46.85
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 66 >>Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 67 >>Accept The Legend of Stalvan
step
>>Run to the Defias Farm. Click the dirt mound
>>Be careful as there are stealthed mobs around that slow, and mobs can run easily through the wall into the barn and awkwardly pull mobs
.goto Duskwood,49.86,77.72
.turnin 95 >>Turn in Sven's Revenge
.accept 230 >>Accept Sven's Camp
step
.isOnQuest 245
>>If Stitches has killed the questgiver, skip this and turn in some other time
.goto Duskwood,45.12,67.03
.target Watcher Dodds
>>Talk to |cRXP_FRIENDLY_Watcher Dodds|r
.turnin 245 >>Turn in Eight-Legged Menaces
step
>>AoE spiders for Pristine Spider Silk and Vials of Spider Venom en route to Abercrombie
.goto Duskwood,31.70,41.98
.complete 101,2 
.complete 1940,1 
step
.goto Duskwood,28.11,31.46
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 157 >>Turn in Deliver the Thread
.target Abercrombie
.accept 158 >>Accept Zombie Juice
step
>>AoE all the nearby ghouls en route
.goto Duskwood,7.81,34.06
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 230 >>Turn in Sven's Camp
.target Sven Yorgen
.accept 262 >>Accept The Shadowy Figure
step
#completewith next
>>Keep an eye out for the Old History Book that drops from humanoids in the zone
.collect 2794,1,337
.accept 337 >> Accept An Old History Book
step
#completewith next
>>AoE kill some Fiends and Horrors until you have 4 minutes left on your hearthstone. Kill other mobs if you're waiting on respawns
.complete 57,1 
.complete 57,2 
.complete 101,3 
step
.goto Duskwood,18.14,56.47
.target Jitters
>>Talk to |cRXP_FRIENDLY_Jitters|r
.turnin 240 >>Turn in Return to Jitters
step
>>Run all the way west into Westfall. Go into the Moonbrook Schoolhouse and open the footlocker on the ground
.goto Westfall,41.51,66.72
.turnin 67 >>Turn in The Legend of Stalvan
.accept 68 >>Accept The Legend of Stalvan
step
.hs >> Hearth to Darkshire
>> Buy food/water if needed
step
.goto Duskwood,75.81,45.32
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 262 >>Turn in The Shadowy Figure
.target Madame Eva
.accept 265 >>Accept The Shadowy Search Continues
step
.isQuestComplete 57
.goto Duskwood,73.56,46.88
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 57 >>Turn in The Night Watch
.target Commander Althea Ebonlocke
.accept 58 >>Accept The Night Watch
step
.goto Duskwood,72.52,46.85
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 68 >>Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 69 >>Accept The Legend of Stalvan
.turnin 265 >>Turn in The Shadowy Search Continues
.accept 266 >>Accept Inquire at the Inn
step
.goto Duskwood,73.78,44.49
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 266 >>Turn in Inquire at the Inn
.target Tavernkeep Smitts
.accept 453 >>Accept Finding the Shadowy Figure
.turnin 158 >>Turn in Zombie Juice
.accept 156 >>Accept Gather Rot Blossoms
step
#sticky
#completewith Grave
>>Keep an eye out for the Old History Book that drops from humanoids in the zone
.collect 2794,1,337
.accept 337 >> Accept An Old History Book
step
>>Single target burst some Shadow Weavers
.goto Duskwood,61.40,72.19
.complete 173,1 
step
.isOnQuest 245
.goto Duskwood,45.12,67.03
.target Watcher Dodds
>>Talk to |cRXP_FRIENDLY_Watcher Dodds|r
.turnin 245 >>Turn in Eight-Legged Menaces
step
.goto Duskwood,18.14,56.47
>>Talk to |cRXP_FRIENDLY_Jitters|r
.turnin 453 >>Turn in Finding the Shadowy Figure
.target Jitters
.accept 268 >>Accept Return to Sven
step
.goto Duskwood,7.79,34.06
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 268 >>Turn in Return to Sven
.target Sven Yorgen
.accept 323 >>Accept Proving Your Worth
step
#completewith next
>>Kill any Skeletal Raiders you see en route. You can finish this later
.complete 323,1 
step
>>AoE kill Fiends and Horrors. Kill Ghouls as well whilst waiting for respawns for extra xp
.goto Duskwood,22.61,46.53,90,0
.goto Duskwood,24.97,33.58,90,0
.goto Duskwood,14.43,43.54,90,0
.goto Duskwood,15.35,48.15,90,0
.goto Duskwood,22.61,46.53,90,0
.goto Duskwood,24.97,33.58,90,0
.goto Duskwood,14.43,43.54,90,0
.goto Duskwood,15.35,48.15,90,0
.complete 57,1 
.complete 57,2 
.complete 101,3 
.complete 156,1 
step
>>Kill Raiders primarily outside the crypt and near Morbent's house. Kill healers outside the crypt. Kill Warders inside the crypt
>>Be careful of warders. They can ward themselves for fire/frost immunity (and it's not interruptable by Counterspell)
.goto Duskwood,15.67,38.68,30,0
.complete 323,1 
.complete 323,2 
.complete 323,3 
step
.xp 28 >> Grind to 28 by aoeing skeletons/ghouls
step
#sticky
#label Grave
.goto Duskwood,17.73,29.06
>>Click on the grave
.accept 225 >>Accept The Weathered Grave
step
.goto Duskwood,7.78,34.06
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 323 >>Turn in Proving Your Worth
.target Sven Yorgen
.accept 269 >>Accept Seeking Wisdom
step
#requires Grave
>>Go inside the Goldshire Inn
.goto Elwynn Forest,43.77,65.80
>>Talk to |cRXP_FRIENDLY_Innkeeper Farley|r
.turnin 69 >>Turn in The Legend of Stalvan
.target Innkeeper Farley
.accept 70 >>Accept The Legend of Stalvan
step
>>Go upstairs. Loot the brown chest
.goto Elwynn Forest,44.30,65.83
.complete 70,1 
step
.zone Stormwind City >> Teleport to Stormwind
step
.goto Stormwind City,36.86,81.13
.trainer >> Train your class spells
step
>>Go through the green portal. Run into the clothes shop. Turn in
>>Wait out the RP event then turn in again. Choose the Blouse
.goto Stormwind City,41.56,76.32
.target Wynne Larson
>>Talk to |cRXP_FRIENDLY_Wynne Larson|r
.turnin 1940 >>Turn in Pristine Spider Silk
.turnin 1942 >>Turn in Astral Knot Garment
step
.goto Stormwind City,29.53,61.93
>>Talk to |cRXP_FRIENDLY_Caretaker Folsom|r
.turnin 70 >>Turn in The Legend of Stalvan
.target Caretaker Folsom
.accept 72 >>Accept The Legend of Stalvan
.goto Stormwind City,29.46,61.55
.turnin 72 >>Turn in The Legend of Stalvan
.accept 74 >>Accept The Legend of Stalvan
step
#sticky
#label Diplomat
>>Talk to Thomas. He's a kid who patrols around the Cathedral
.target Thomas
>>Talk to |cRXP_FRIENDLY_Thomas|r
.accept 1274 >>Accept The Missing Diplomat
step
>>Go into Stormwind Cathedral
.goto Stormwind City,42.62,33.59,30,0
.goto Stormwind City,39.11,27.87
>>Talk to |cRXP_FRIENDLY_Bishop Farthing|r
.turnin 269 >>Turn in Seeking Wisdom
.target Bishop Farthing
.accept 270 >>Accept The Doomed Fleet
step
#requires Diplomat
>>Go into Stormwind Keep
.goto Stormwind City,69.49,28.14,30,0
.goto Stormwind City,78.28,25.39
>>Talk to |cRXP_FRIENDLY_Bishop DeLavey|r
.turnin 1274 >>Turn in The Missing Diplomat
.target Bishop DeLavey
.accept 1241 >>Accept The Missing Diplomat
step
>>Go to the Library
.isOnQuest 337
.goto Stormwind City,74.19,7.44
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
.turnin 337 >>Turn in An Old History Book
.target Milton Sheaf
.accept 538 >>Accept Southshore
step
>>Leave Stormwind Keep. Go toward the front of Stormwind
.goto Stormwind City,69.49,28.14,30,0
.goto Stormwind City,73.17,78.42
>>Talk to |cRXP_FRIENDLY_Jorgen|r
.turnin 1241 >>Turn in The Missing Diplomat
.target Jorgen
.accept 1242 >>Accept The Missing Diplomat
step
.goto Stormwind City,56.12,65.27
>>Buy at least 3 runes of teleportation from Kyra
.collect 17031,3 
step
>>Go into the cheese shop and talk to Elling Trias
.goto Stormwind City,59.91,64.18
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1242 >>Turn in The Missing Diplomat
.target Elling Trias
.accept 1243 >>Accept The Missing Diplomat
step
.hs >> Hearth to Darkshire
>> Buy food/water if needed
step
.goto Duskwood,73.78,44.48
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 156 >>Turn in Gather Rot Blossoms
.target Tavernkeep Smitts
.accept 159 >>Accept Juice Delivery
step
#completewith next
.goto Duskwood,74.08,44.83
.vendor >> Buy 3 8 slot bags from Mabel Solaj if needed
step
>>Talk to Watcher Backus. He patrols along the road north of Darkshire
.goto Duskwood,74.58,41.38,60,0
.goto Duskwood,72.18,37.09,60,0
.goto Duskwood,73.47,31.84,60,0
.goto Duskwood,74.58,41.38,60,0
.goto Duskwood,72.18,37.09,60,0
.goto Duskwood,73.47,31.84,60,0
>>Talk to |cRXP_FRIENDLY_Watcher Backus|r
.turnin 1243 >>Turn in The Missing Diplomat
.target Watcher Backus
.accept 1244 >>Accept The Missing Diplomat
.unitscan Watcher Backus
step
>>Run (blink on cooldown) all the way to Eastvale
.goto Elwynn Forest,84.60,69.37
>>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
.turnin 74 >>Turn in The Legend of Stalvan
.target Marshal Haggard
.accept 75 >>Accept The Legend of Stalvan
step
>>Go inside the house, then upstairs. Loot the brown chest
>>When you loot it, run from the mob back to Haggard
.goto Elwynn Forest,85.70,69.54
.complete 75,1 
step
.goto Elwynn Forest,84.60,69.38
>>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
.turnin 75 >>Turn in The Legend of Stalvan
.target Marshal Haggard
.accept 78 >>Accept The Legend of Stalvan
step
>>Blink all the way to Redridge
.goto Redridge Mountains,29.72,44.27
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
.turnin 91 >>Turn in Solomon's Law
.target Magistrate Solomon
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 180 >>Turn in Wanted: Lieutenant Fangore
step
.goto Redridge Mountains,30.59,59.41
.fly Darkshire >> Fly to Darkshire
step
.goto Duskwood,75.75,47.57
>>Talk to |cRXP_FRIENDLY_Calor|r
.turnin 173 >>Turn in Worgen in the Woods
.target Calor
.accept 221 >>Accept Worgen in the Woods
step
>>Go inside the Inn
.goto Duskwood,73.78,44.49
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 78 >>Turn in The Legend of Stalvan
.target Tavernkeep Smitts
.accept 79 >>Accept The Legend of Stalvan
step
.goto Duskwood,73.56,46.88
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 79 >>Turn in The Legend of Stalvan
.target Commander Althea Ebonlocke
.accept 80 >>Accept The Legend of Stalvan
.turnin 57 >>Turn in The Night Watch
.accept 58 >>Accept The Night Watch
step
.goto Duskwood,72.53,46.86
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 80 >>Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 97 >>Accept The Legend of Stalvan
step
>>To the room on the left of Clerk Daltry
.goto Duskwood,72.64,47.59
>>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
.turnin 225 >>Turn in The Weathered Grave
.target Sirra Von'Indi
.accept 227 >>Accept Morgan Ladimore
step
.goto Duskwood,73.56,46.91
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 97 >>Turn in The Legend of Stalvan
.target Commander Althea Ebonlocke
.accept 98 >>Accept The Legend of Stalvan
.turnin 227 >>Turn in Morgan Ladimore
.accept 228 >>Accept Mor'Ladim
step
>>AoE Nightbane Dark Runners. Be careful as they run faster than normal mobs (and hit hard)
.goto Duskwood,63.96,51.35,70,0
.goto Duskwood,60.83,40.72,70,0
.complete 221,1 
step
>>Blink all the way over to Abercrombie
.goto Duskwood,28.11,31.46
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 159 >>Turn in Juice Delivery
.target Abercrombie
.accept 133 >>Accept Ghoulish Effigy
step
>>AoE any type of ghoul. Loot them for ribs
>>Be careful of Brain Eaters as they have a disease that reduces mp5
.goto Duskwood,23.59,35.15,50,0
.goto Duskwood,25.62,34.46,50,0
.goto Duskwood,24.76,29.16
.complete 58,1 
.complete 101,1 
.complete 133,1 
step
.goto Duskwood,28.11,31.47
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 133 >>Turn in Ghoulish Effigy
.target Abercrombie
.accept 134 >>Accept Ogre Thieves
step
>>Loot the strongbox inside of the house
.goto Duskwood,23.92,72.08
.complete 1244,1 
step
>>Loot the wooden box just outside of the cave
.goto Duskwood,33.42,76.37
.complete 134,1 
step
>>Go inside of the Ogre cave. Kill Zzarc'Vul
.goto Duskwood,36.82,83.78
.complete 181,1 
.unitscan Zzarc'Vul
step
.goto Duskwood,28.11,31.47
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 134 >>Turn in Ogre Thieves
.target Abercrombie
.accept 160 >>Accept Note to the Mayor
step
.hs >> Hearth to Darkshire
>>If your hearthstone is still on cooldown, AoE grind ghouls until it comes back up
step
>>Talk to Watcher Backus. He patrols along the road north of Darkshire
.goto Duskwood,74.58,41.38,60,0
.goto Duskwood,72.18,37.09,60,0
.goto Duskwood,73.47,31.84,60,0
.goto Duskwood,74.58,41.38,60,0
.goto Duskwood,72.18,37.09,60,0
.goto Duskwood,73.47,31.84,60,0
>>Talk to |cRXP_FRIENDLY_Watcher Backus|r
.turnin 1244 >>Turn in The Missing Diplomat
.target Watcher Backus
.accept 1245 >>Accept The Missing Diplomat
step
>>Kill Stalvan Mistmantle. Loot him for his ring
>>Be careful as he attacks quickly and deals a LOT of melee damage
.goto Duskwood,77.35,36.19
.complete 98,1 
step
.goto Duskwood,79.81,48.02
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 181 >>Turn in Look To The Stars
step
.goto Duskwood,75.78,45.31
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 98 >>Turn in The Legend of Stalvan
.turnin 101 >>Turn in The Totem of Infliction
step
.goto Duskwood,75.68,47.66
>>Talk to |cRXP_FRIENDLY_Calor|r
.turnin 221 >>Turn in Worgen in the Woods
.target Calor
.accept 222 >>Accept Worgen in the Woods
step
.goto Duskwood,73.58,46.89
.target Commander Althea Ebonlocke
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 58 >>Turn in The Night Watch
step
>>Go inside the Keep
.goto Duskwood,71.93,46.42
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 160 >>Turn in Note to the Mayor
.target Lord Ello Ebonlocke
.accept 251 >>Accept Translate Abercrombie's Note
step
.goto Duskwood,72.64,47.61
>>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
.turnin 251 >>Turn in Translate Abercrombie's Note
.target Sirra Von'Indi
.accept 401 >>Accept Wait for Sirra to Finish
.turnin 401 >>Turn in Wait for Sirra to Finish
.accept 252 >>Accept Translation to Ello
step
.goto Duskwood,71.93,46.43
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 252 >>Turn in Translation to Ello
.target Lord Ello Ebonlocke
.accept 253 >>Accept Bride of the Embalmer
step
#completewith NightbaneW
+It is HIGHLY Recommended you watch the Worgen Duskwood Section of the AoE guide, as it's important to know the pathing you should take for doing the 4 main worgen camps
.link https://youtu.be/SxMc2GoP33c?t=2450 >>CLICK HERE
step
#sticky
#label Book
>>Keep an eye out for the Old History Book. If you don't have it yet, keep grinding for it
.collect 2794,1,337
.accept 337 >> Accept An Old History Book
step
#label NightbaneW
.goto Duskwood,72.74,71.83,120,0
.goto Duskwood,61.98,81.51,120,0
.goto Duskwood,61.25,75.17,120,0
.goto Duskwood,63.63,51.01,120,0
.goto Duskwood,72.74,71.83,120,0
.goto Duskwood,61.98,81.51,120,0
.goto Duskwood,61.25,75.17,120,0
.goto Duskwood,63.63,51.01,120,0
.complete 222,1 
.complete 222,2 
step
.xp 31+40000 >> AoE grind the worgens to 31 & 40000/50800
step
#requires Book
.goto Duskwood,75.30,48.04
>>Talk to |cRXP_FRIENDLY_Calor|r
.turnin 222 >>Turn in Worgen in the Woods
.target Calor
.accept 223 >>Accept Worgen in the Woods
step
>>Go inside
.goto Duskwood,75.32,49.02
.target Jonathan Carevin
>>Talk to |cRXP_FRIENDLY_Jonathan Carevin|r
.turnin 223 >>Turn in Worgen in the Woods
step
.zone Stormwind City >> Teleport to Stormwind
step
.goto Stormwind City,36.86,81.13
.trainer >> Train your class spells
step
>>Bottom of the mage tower
.goto Stormwind City,39.83,81.46
.target Archmage Malin
>>Talk to |cRXP_FRIENDLY_Archmage Malin|r
.accept 690 >>Accept Malin's Request
step
.goto Stormwind City,56.47,73.41
>>Bank your cloth. Take at least 1 Light Feather out of your bank. If there's none in the bank, buy some off the AH
>>You'll eventually need 12 stacks of Wool, Silk, Mageweave and Runecloth
.collect 17056,1 
step
>>Go to the upstairs of the cheese shop
.goto Stormwind City,59.91,64.18
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1245 >>Turn in The Missing Diplomat
.target Elling Trias
.accept 1246 >>Accept The Missing Diplomat
step
>>When you handin the quest, this will start a 1v3 against you. Just frost nova and nuke Dashel
.goto Stormwind City,70.11,47.72,20,0
.goto Stormwind City,70.55,44.89
>>Talk to |cRXP_FRIENDLY_Dashel Stonefist|r
.turnin 1246 >>Turn in The Missing Diplomat
.target Dashel Stonefist
.accept 1447 >>Accept The Missing Diplomat
step
.goto Stormwind City,70.55,44.89
.complete 1447,1 
>>Talk to |cRXP_FRIENDLY_Dashel Stonefist|r
.turnin 1447 >>Turn in The Missing Diplomat
.target Dashel Stonefist
.accept 1247 >>Accept The Missing Diplomat
step
.goto Stormwind City,59.91,64.18
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1247 >>Turn in The Missing Diplomat
.target Elling Trias
.accept 1248 >>Accept The Missing Diplomat
step
>>Go to the Library
.isOnQuest 337
.goto Stormwind City,74.19,7.44
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
.turnin 337 >>Turn in An Old History Book
.target Milton Sheaf
.accept 538 >>Accept Southshore
step
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your level 32 spells
step
.goto Ironforge,55.50,47.74
.fly Menethil >> Fly to Menethil
]]);
