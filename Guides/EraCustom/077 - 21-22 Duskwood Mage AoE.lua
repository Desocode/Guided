RXPGuides.RegisterGuide([[
#version 23
#defaultfor Alliance Mage
#group RestedXP Alliance Mage
#version 23
#classic
#tbc
#mop
<< Alliance Mage
#name 21-22 Duskwood Mage AoE
#next 22-26 Wetlands Mage AoE
step
.goto Duskwood,81.82,19.77
.vendor >> Talk to Kzixx. Buy one of the green BoE belts (lower level = better). Buy potions too if any of these are available 
step
>>Follow the road down into Darkshire.
.goto Duskwood,77.48,44.29
.fp Darkshire >> Get the Darkshire flight path
step
#completewith next
.goto Duskwood,78.00,48.34,0
>> Buy a bronze tube from Herble if you didn't get one earlier
.collect 4371,1 
step
>>If you didn't get a bronze tube, then you can do this later
.goto Duskwood,79.80,48.03
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >>Accept Look To The Stars
.turnin 174 >>Turn in Look To The Stars
.accept 175 >>Accept Look To The Stars
step
>>Inside the building
.goto Duskwood,75.34,48.74
.target Elaine Carevin
>>Talk to |cRXP_FRIENDLY_Elaine Carevin|r
.accept 163 >>Accept Raven Hill
.accept 164 >>Accept Deliveries to Sven
.accept 165 >>Accept The Hermit
step
#sticky
#label Eva
>>Go into the building
.goto Duskwood,75.80,45.35
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.accept 101 >>Accept The Totem of Infliction
step
>>Go behind Eva
.goto Duskwood,76.29,45.28
.vendor >> Buy 2 Runes of Teleportation from Alyssa
.collect 17031,2 
step << skip
.goto Duskwood,73.87,44.40
.home >> Set your hearth in Darkshire
step
#requires Eva
>>Go into the Inn. Remember you need 50 skill in cooking to accept the quest
.goto Duskwood,73.83,44.05
.target Chef Grual
>>Talk to |cRXP_FRIENDLY_Chef Grual|r
.accept 90 >>Accept Seasoned Wolf Kabobs
step
.goto Duskwood,73.57,46.85
.target Commander Althea Ebonlocke
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.accept 56 >>Accept The Night Watch
step
>>If Stitches has just killed this npc, skip the quest.
.goto Duskwood,45.12,67.03
.target Watcher Dodds
>>Talk to |cRXP_FRIENDLY_Watcher Dodds|r
.accept 245 >>Accept Eight-Legged Menaces
step
.goto Duskwood,18.22,56.22
>>Talk to |cRXP_FRIENDLY_Jitters|r
.turnin 163 >>Turn in Raven Hill
.target Jitters
.accept 5 >>Accept Jitters' Growling Gut
step
#completewith next
+start AoEing needed quest mobs in groups of 3+ that you see.
>>Keep this tutorial open in another tab for the Duskwood AoE Section if needed:
.link https://youtu.be/SxMc2GoP33c?t=376 >> CLICK HERE
step
#completewith next
>>Go to the shore. Start AoEing spiders en route to Sven's Camp
.complete 245,1 
.complete 93,1 
step
.goto Duskwood,7.80,34.05
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 164 >>Turn in Deliveries to Sven
.target Sven Yorgen
.accept 95 >>Accept Sven's Revenge
.target Lars
>>Talk to |cRXP_FRIENDLY_Lars|r
.accept 226 >>Accept Wolves at Our Heels
step
#completewith WolvesT
>>Go to the shore. Start AoEing spiders en route to Sven's Camp. Loot them for Gooey Spider Legs
.complete 245,1 
.complete 93,1 
step
#sticky
#label Wolves
.goto Duskwood,54.66,14.53
>>AoE Wolves all along the coast
.complete 90,1 
.complete 226,1 
.complete 226,2 
step
.goto Duskwood,28.10,31.47
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 165 >>Turn in The Hermit
.target Abercrombie
.accept 148 >>Accept Supplies from Darkshire
step
#requires Wolves
#label WolvesT
.goto Duskwood,7.72,33.21
.target Lars
>>Talk to |cRXP_FRIENDLY_Lars|r
.turnin 226 >>Turn in Wolves at Our Heels
step
.goto Duskwood,10.68,59.08
>>Finish off Spiders and their Legs
.complete 245,1 
.complete 93,1 
step
>>Run to Westfall
.goto Westfall,56.33,47.52
>>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
.turnin 132 >>Turn in The Defias Brotherhood
.target Gryan Stoutmantle
.accept 135 >>Accept The Defias Brotherhood
.turnin 143 >>Turn in Messenger to Westfall
.accept 144 >>Accept Messenger to Westfall
step
.goto Westfall,56.55,52.64
.fly Stormwind >> Fly to Stormwind City
step
.goto Stormwind City,39.04,81.88,40,0
.goto Stormwind City,36.93,81.97,40,0
.goto Stormwind City,37.80,78.22,40,0
.goto Stormwind City,37.80,81.93,10 >> Run up the mage tower, then run through the green portal
step
.goto Stormwind City,36.87,81.15
.trainer >> Train your class spells. Make sure you have at least 20 silver for later
step
.goto Stormwind City,39.83,79.46
.trainer >> Train the SW Portal
step
#completewith next
+Remember to bind Blink to your bars
step
>>Run back through the green portal
.goto Stormwind City,45.70,38.42
.target Brother Kristoff
>>Talk to |cRXP_FRIENDLY_Brother Kristoff|r
.accept 343 >>Accept Speaking of Fortitude
step
.goto Stormwind City,58.09,16.53
.target Furen Longbeard
>>Talk to |cRXP_FRIENDLY_Furen Longbeard|r
.turnin 1338 >>Turn in Stormpike's Order
step
.goto Stormwind City,69.55,28.10,30,0
>>Run to the Stormwind Keep, then into the Library
.goto Stormwind City,74.18,7.47
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
.turnin 343 >>Turn in Speaking of Fortitude
.target Milton Sheaf
.accept 344 >>Accept Brother Paxton
step
>>Go upstairs in SI:7
.goto Stormwind City,75.52,55.18,20,0
.goto Stormwind City,75.78,59.85
.target Master Mathias Shaw
>>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 135 >>Turn in The Defias Brotherhood
step
.goto Stormwind City,58.65,52.98,40,0
.goto Stormwind City,64.19,60.60
>> Buy Stormwind Seasoning Herbs from Felicia for the Lean Wolf Meat (Darkshire) quest
.collect 2665,1 
step
.goto Elwynn Forest,32.19,49.27,90 >> Exit Stormwind
step
>>Run into Northshire Abbey
.goto Elwynn Forest,45.50,48.25,40,0
.goto Elwynn Forest,48.82,41.65,40,0
.goto Elwynn Forest,49.60,40.41
>>Talk to |cRXP_FRIENDLY_Brother Paxton|r
.turnin 344 >>Turn in Brother Paxton
.target Brother Paxton
.accept 345 >>Accept Ink Supplies
step
.hs >> Hearth to Lakeshire. Remember to buy drink if you need
>> Buy food/water if needed
step
>>Go into the Town Hall
.goto Redridge Mountains,29.50,46.05,30,0
.goto Redridge Mountains,29.99,44.45
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 144 >>Turn in Messenger to Westfall
.target Magistrate Solomon
.accept 145 >>Accept Messenger to Darkshire
step
.goto Redridge Mountains,32.14,48.64
>>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
.turnin 345 >>Turn in Ink Supplies
.target Foreman Oslow
.accept 347 >>Accept Rethban Ore
step
>>Go into the cave. AoE Dredgers for Rethban Ore. They share respawns with Bashers
>>Be careful as Dredgers attack fast, and Bashers bash and stun
.goto Redridge Mountains,19.55,32.01,30,0
.goto Redridge Mountains,19.04,23.48
.complete 347,1 
step
>>Kill Yowler. Split pull him using Blizzard or Flamestrike, then kite him back through the path of mobs you killed
.goto Redridge Mountains,19.55,32.01,30,0
.goto Redridge Mountains,23.77,30.48,40,0
.goto Redridge Mountains,27.58,21.78
.complete 126,1 
step
.goto Redridge Mountains,30.98,47.28
.target Verner Osgood
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
.turnin 126 >>Turn in Howling in the Hills
step
.goto Redridge Mountains,30.59,59.41
.fly Darkshire >> Fly to Darkshire
step
#completewith next
.goto Duskwood,78.00,48.34
>> Buy a bronze tube from Herble if you didn't get one earlier
.collect 4371,1 
step
>>If you didn't get a bronze tube, then you can do this later
.goto Duskwood,79.80,48.03
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >>Accept Look To The Stars
.turnin 174 >>Turn in Look To The Stars
.accept 175 >>Accept Look To The Stars
step
>>Inside the building
.goto Duskwood,75.80,45.31
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 148 >>Turn in Supplies from Darkshire
.target Madame Eva
.accept 149 >>Accept Ghost Hair Thread
step
>>Talk to Chef Grual
.goto Duskwood,73.84,43.21
>>Talk to |cRXP_FRIENDLY_Chef Grual|r
.turnin 5 >>Turn in Jitters' Growling Gut
.target Chef Grual
.accept 93 >>Accept Dusky Crab Cakes
.turnin 90 >>Turn in Seasoned Wolf Kabobs
.turnin 93 >>Turn in Dusky Crab Cakes
.accept 240 >>Accept Return to Jitters
step
.goto Duskwood,72.81,46.83,20,0
.goto Duskwood,71.93,46.42
.target Lord Ello Ebonlocke
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 145 >>Turn in Messenger to Darkshire
step
>>Talk to Mary in the building. Try to avoid fighting mobs
>>Check for the chest in the area near the house/outhouse
.isQuestComplete 174
.goto Duskwood,81.77,59.38
>>Talk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 149 >>Turn in Ghost Hair Thread
.target Blind Mary
.accept 154 >>Accept Return the Comb
.turnin 175 >>Turn in Look To The Stars
.accept 177 >>Accept Look To The Stars
step
.goto Duskwood,81.77,59.37
>>Talk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 149 >>Turn in Ghost Hair Thread
.target Blind Mary
.accept 154 >>Accept Return the Comb
step
>>Kill the Insane Ghoul. Outrange/Decurse its Curse of Blood, keep it slowed
.complete 177,1 
.goto Duskwood,80.87,71.58
step
>>Kill mobs in the area
.goto Duskwood,79.22,70.97
.complete 56,1 
.complete 56,2 
step
.goto Duskwood,79.80,48.01
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >>Turn in Look To The Stars
.target Viktori Prism'Antras
.accept 181 >>Accept Look To The Stars
step
.goto Duskwood,75.80,45.32
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 154 >>Turn in Return the Comb
.target Madame Eva
.accept 157 >>Accept Deliver the Thread
step
.goto Duskwood,73.58,46.91
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 56 >>Turn in The Night Watch
.target Commander Althea Ebonlocke
.accept 57 >>Accept The Night Watch
step
.xp 22 >> Grind to 22
step
.zone Stormwind City >> Teleport to Stormwind
step
>>Respec to AoE Frost (if you didn't talent into it originally)
.goto Stormwind City,36.87,81.13
.trainer >> Train your class spells
>>MAKE SURE you save at least 30s for later (10s for another rune, 20s for IF tele)
step
#completewith next
.goto Stormwind City,55.30,68.18,40,0
.goto Stormwind City,56.47,73.42,20 >> Bank your cloth here (to do cloth turnins for extra xp later)
>>You'll eventually need 12 stacks of Wool, Silk, Mageweave and Runecloth
>>BANK YOUR LIGHT FEATHERS HERE. THIS IS SUPER IMPORTANT
step
#completewith next
.goto Stormwind City,56.12,65.26
.vendor >>Go into the building. Buy another Rune of Teleportation from Kyra
.collect 17031,1 
step
.goto Elwynn Forest,32.19,49.27,90 >> Exit Stormwind
step
>>Run into Northshire Abbey
.goto Elwynn Forest,45.50,48.25,40,0
.goto Elwynn Forest,48.82,41.65,40,0
.goto Elwynn Forest,49.60,40.41
>>Talk to |cRXP_FRIENDLY_Brother Paxton|r
.turnin 347 >>Turn in Rethban Ore
.target Brother Paxton
.accept 346 >>Accept Return to Kristoff
step
.zone Stormwind City >> Teleport to Stormwind
step
>>Run to the outside of the Cathedral
.goto Stormwind City,45.69,38.41
.target Brother Kristoff
>>Talk to |cRXP_FRIENDLY_Brother Kristoff|r
.turnin 346 >>Turn in Return to Kristoff
step
#completewith next
.goto Stormwind City,63.68,8.49,30 >> Take the Deeprun Tram to Ironforge
step
.zone Ironforge >> Travel to Ironforge
step
.isOnQuest 968
>>Go inside the building
.goto Ironforge,51.08,8.04,20,0
.goto Ironforge,50.84,5.64
.target Gerrig Bonegrip
>>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 968 >>Turn in The Powers Below
step
.goto Ironforge,25.51,7.08
.trainer >> Talk to Milstaff. Train the Ironforge Portal
step
.goto Ironforge,55.51,47.75
.fly Menethil >> Fly to Menethil
]]);
