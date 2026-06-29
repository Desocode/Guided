RXPGuides.RegisterGuide([[
#version 23
#group RestedXP Horde 50-60
#classic
#tbc
#mop
<< Horde
#name 55-56 Felwood/Winterspring
#displayname 56-57 Felwood/Winterspring << sod
#next 56-58 Western PL/Eastern PL
step
#season 0
#sticky
#completewith EnterST
.subzone 1417 >> Now you should be looking for a group to Sunken Temple
.dungeon ST
step
.goto The Barrens,62.50,38.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv|r
.turnin 4502 >>Turn in Volcanic Activity
.turnin 4147 >>Turn in Marvon's Workshop
.target Liv Rizzlefix
step
#season 0
.goto The Barrens,62.50,38.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv|r
.accept 4146 >>Accept Zapper Fuel
.target Liv Rizzlefix
.isQuestTurnedIn 4147
.dungeon ST
step
.goto The Barrens,65.80,43.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r
.turnin 5158 >>Turn in Seeking Spiritual Aid
.timer 48,Seeking Spiritual Aid RP
.target Islen Waterseer
step
.goto The Barrens,65.80,43.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r
>>|cRXP_WARN_Wait for the RP to finish|r
.accept 5159 >>Accept Cleansed Water Returns to Felwood
.target Islen Waterseer
step
#season 0
#optional
#completewith EnterST
>>|cRXP_WARN_Have somebody in your group share the following quest if possible|r
.accept 1446 >> Jammal'an the Prophet
.dungeon ST
step
#season 0
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> Take the boat to Stranglethorn Vale
.zoneskip Stranglethorn Vale
.dungeon ST
step
#season 0
.goto Stranglethorn Vale,26.90,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|ttalk to |cRXP_FRIENDLY_Gringer|r
.fly Stonard>> Fly to Stonard
.target Gringer
.zoneskip Swamp of Sorrows
.dungeon ST
step
#season 0
.goto Swamp of Sorrows,47.93,54.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r
.accept 1445 >> Accept The Temple of Atal'Hakkar
.isQuestTurnedIn 1444
.dungeon ST
step << Warrior
#season 0
#phase 4-6
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.accept 8425 >> Accept Voodoo Feathers
.target Fallen Hero of the Horde
.isQuestTurnedIn 8424
.dungeon ST
step
#season 0
.goto Eastern Kingdoms,56.33,76.28
.subzone 1477 >> Travel to Sunken Temple
.dungeon ST
step
#season 0
#completewith next
>>Kill |cRXP_ENEMY_Atal'ai Trolls|r in the Sunken Temple. Loot them for their |cRXP_LOOT_Fetish of Hakkar|r
>>|cRXP_WARN_The trolls outside as well as inside Sunken Temple can drop these|r
.complete 1445,1 
.isOnQuest 1445
.dungeon ST
step
#season 0
#label EnterST
.goto Eastern Kingdoms,56.33,76.28,40,0
.goto Eastern Kingdoms,56.46,75.54,20,0
.goto Eastern Kingdoms,56.83,75.86,20,0
.goto Eastern Kingdoms,56.94,76.03,15,0
.goto Eastern Kingdoms,57.06,75.58,20,0
.goto Eastern Kingdoms,56.76,75.35,15,0
.goto Eastern Kingdoms,56.809,75.151
.subzone 1477,2 >> Zone into Sunken Temple
.dungeon ST
step
#season 0
#sticky
>>Kill |cRXP_ENEMY_Atal'ai Trolls|r in the Sunken Temple. Loot them for their |cRXP_LOOT_Fetish of Hakkar|r
.complete 1445,1 
.isOnQuest 1445
.dungeon ST
step
#season 0
#sticky
>>Kill |cRXP_ENEMY_Deep Lurkers|r, |cRXP_ENEMY_Murk Worms|r and |cRXP_ENEMY_Saturated Oozes|r. Loot them for their |cRXP_LOOT_Atal'ai Haze|r
>>|cRXP_WARN_Take a right down the stairs at the beginning of the instance to find these mobs|r
.complete 4146,1 
.isOnQuest 4146
.dungeon ST
step << Druid
#season 0
#phase 4-6
#completewith Altar
>>Kill |cRXP_ENEMY_Atal'alarion|r. Loot him for the |cRXP_LOOT_Putrid Vine|r
>>|cRXP_ENEMY_Atal'alarion|r |cRXP_WARN_is on the lower level of Sunken Temple and is summoned by clicking all |cRXP_PICK_Atal'ai Statues|r on the platforms|r
.complete 9053,1 
.mob Atal'alarion
.isOnQuest 9053
.dungeon ST
step 
#season 0
#completewith next
>>Click on the |cRXP_PICK_Altar of Hakkar|r
>>|cRXP_WARN_The |cRXP_PICK_Altar of Hakkar|r is located on the lower level of Sunken Temple|r
.turnin 3446 >> Turn in Into the Depths
.isOnQuest 3446
.dungeon ST
step 
#season 0
>>Click on the |cRXP_PICK_Idol of Hakkar|r
>>|cRXP_WARN_Clicking all of the |cRXP_PICK_Atal'ai Statues|r on the platforms will activate the|r |cRXP_PICK_Idol of Hakkar|r
>>|cRXP_WARN_The |cRXP_PICK_Idol of Hakkar|r is located on the lower level of Sunken Temple|r
.turnin 3447 >> Turn in Secret of the Circle
.isOnQuest 3447
.dungeon ST
step 
#season 0
#label Altar
>>Click on the |cRXP_PICK_Altar of Hakkar|r
>>|cRXP_WARN_The |cRXP_PICK_Altar of Hakkar|r is located on the lower level of Sunken Temple|r
.turnin 3446 >> Turn in Into the Depths
.isOnQuest 3446
.dungeon ST
step << Druid
#season 0
#phase 4-6
>>Kill |cRXP_ENEMY_Atal'alarion|r. Loot him for the |cRXP_LOOT_Putrid Vine|r
>>|cRXP_ENEMY_Atal'alarion|r |cRXP_WARN_is on the lower level of Sunken Temple and is summoned by clicking all |cRXP_PICK_Atal'ai Statues|r on the platforms|r
.complete 9053,1 
.mob Atal'alarion
.isOnQuest 9053
.dungeon ST
step << Warrior/Warlock
#phase 4-6
#season 0
>>Kill |cRXP_ENEMY_Gasher|r and |cRXP_ENEMY_Zul'Lor|r. Loot them for their |cRXP_LOOT_Amber Voodoo Feathers|r
>>Kill |cRXP_ENEMY_Mijan|r and |cRXP_ENEMY_Hukku|r. Loot them for their |cRXP_LOOT_Blue Voodoo Feathers|r
>>Kill |cRXP_ENEMY_Zolo|r and |cRXP_ENEMY_Loro|r. Loot them for their |cRXP_LOOT_Green Voodoo Feathers|r
>>|cRXP_WARN_This quest is completed on the upper level of Sunken Temple|r
.complete 8425,1 << Warrior 
.mob +Gasher
.complete 8425,2 << Warrior 
.mob +Hukku
.complete 8425,3 << Warrior 
.mob +Loro
.complete 8422,1 << Warlock 
.mob +Gasher
.complete 8422,2 << Warlock 
.mob +Hukku
.complete 8422,3 << Warlock 
.mob +Loro
.isOnQuest 8425 << Warrior
.isOnQuest 8422 << Warlock
.dungeon ST
step
#season 0
>>|cRXP_WARN_Use the|r |T132834:0|t[Egg of Hakkar] |cRXP_WARN_while next to the Dragonflayer Skeleton, then complete the event|r
>>Kill the minions of |cRXP_ENEMY_Hakkar|r until the |cRXP_ENEMY_Avatar of Hakkar|r joins
>>Kill the |cRXP_ENEMY_Avatar of Hakkar|r. Loot it for the |T136148:0|t[|cRXP_LOOT_Essence of Hakkar|r]
>>|cRXP_WARN_Use the|r |T136148:0|t[|cRXP_LOOT_Essence of Hakkar|r] |cRXP_WARN_to fill the|r |T132834:0|t[Egg of Hakkar]
.collect 10663,1,3528,1 
.disablecheckbox
.complete 3528,1 
.use 10465 
.use 10663 
.mob Avatar of Hakkar
.isOnQuest 3528
.dungeon ST
step
#season 0
>>Kill |cRXP_ENEMY_Jammal'an the Prophet|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_You must kill the 6 |cRXP_ENEMY_Trolls|r on the upper platforms to gain access to|r |cRXP_ENEMY_Jammal'an the Prophet|r
.complete 1446,1 
.mob Jammal'an the Prophet
.isOnQuest 1446
.dungeon ST
step << Hunter/Mage/Priest
#phase 4-6
#season 0
>>Kill |cRXP_ENEMY_Morphaz|r. Loot it for the |cRXP_LOOT_Tooth of Morphaz|r << Hunter
>>Kill |cRXP_ENEMY_Morphaz|r. Loot it for the |cRXP_LOOT_Arcane Shard|r << Mage
>>Kill |cRXP_ENEMY_Morphaz|r. Loot it for the |cRXP_LOOT_Blood of Morphaz|r << Priest
.complete 8232,1 << Hunter 
.complete 8253,1 << Mage 
.complete 8257,1 << Priest 
.mob Morphaz
.isOnQuest 8232 << Hunter
.isOnQuest 8253 << Mage
.isOnQuest 8257 << Priest
.dungeon ST
step
#season 0
>>Kill the |cRXP_ENEMY_Shade of Eranikus|r. Loot him for the |T135229:0|t[|cRXP_LOOT_Essence of Eranikus|r]
>>|cRXP_WARN_Use the |T135229:0|t[|cRXP_LOOT_Essence of Eranikus|r] to start the quest|r
>>|cRXP_WARN_Ensure you have killed all |cRXP_ENEMY_Dragonkin|r mobs on the upper level before engaging the |cRXP_ENEMY_Shade of Eranikus|r otherwise they will all agro onto you|r
.collect 10454,1,3373,1 
.accept 3373 >> Accept The Essence of Eranikus
.mob Shade of Eranikus
.dungeon ST
step
#season 0
>>Click the |cRXP_PICK_Essence Font|r
.turnin 3373 >> Turn in The Essence of Eranikus
.isOnQuest 3373
.dungeon ST
step
#season 0
.zone Swamp of Sorrows >> Leave the Sunken Temple Instance
.dungeon ST
step
#season 0
.goto Swamp of Sorrows,47.93,54.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r
.turnin 1445 >> Turn in The Temple of Atal'Hakkar
.isQuestComplete 1445
.dungeon ST
step << Warrior
#season 0
#phase 4-6
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
>>|cRXP_WARN_It is strongly advised you choose the|r |T132788:0|t[|cFF0070FFDiamond Flask|r] |cRXP_WARN_as your reward. Although the other rewards are also very good, you will not ever replace the|r |T132788:0|t[|cFF0070FFDiamond Flask|r]
.turnin 8425 >> Turn in Voodoo Feathers
.target Fallen Hero of the Horde
.isQuestComplete 842
.dungeon ST
step << !Mage
#season 0
.hs >>Hearth to Camp Taurajo
.subzone 378 >>Arrive in Camp Taurajo
.use 6948
.bindlocation 378,1
.dungeon ST
step << Mage
#season 0
.cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleport: Thunder Bluff]
.zoneskip Thunder Bluff
.dungeon ST
step << Mage
#season 0
#completewith ZapperTI
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Un'Goro Crater >>Fly to Un'Goro Crater
.target Tal
.zoneskip Thunder Bluff,1
.dungeon ST
step
#season 0
#optional << Mage
#completewith ZapperTI
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Un'Goro Crater >>Fly to Un'Goro Crater
.target Omusa Thunderhorn
.subzoneskip 378,1
.isQuestComplete 4146
.dungeon ST
step
#label ZapperTI
#season 0
.goto Un'Goro Crater,45.53,8.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larion|r
.turnin 4146 >>Turn in Zapper Fuel
.target Larion
.isQuestComplete 4146
.dungeon ST
step << Druid
#season 0
#phase 4-6
#completewith next
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Un'Goro Crater >>Fly to Un'Goro Crater
.target Omusa Thunderhorn
.subzoneskip 378,1
.isQuestComplete 9053
.dungeon ST
step << Druid
#season 0
#phase 4-6
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 9053 >> Turn in A Better Ingredient
.target Torwa Pathfinder
.isQuestComplete 9053
.dungeon ST
step << Mage
#season 0
#optional
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Tanaris >>Fly to Tanaris
.target Tal
.zoneskip Thunder Bluff,1
.isQuestComplete 3528
.dungeon ST
step
#season 0
#optional
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Tanaris >>Fly to Tanaris
.target Omusa Thunderhorn
.subzoneskip 378,1
.isQuestComplete 3528
.dungeon ST
step
#season 0
#completewith next
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
.fly Tanaris >>Fly to Tanaris
.target Gryfe
.subzoneskip 541,1
.isQuestComplete 3528
.dungeon ST
step
#season 0
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3528 >> Turn in The God Hakkar
.target Yeh'kinya
.isQuestComplete 3528
.dungeon ST
step << Mage
#season 0
#optional
#completewith JedigaTurnins1
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
.fly Azshara >> Fly to Azshara
.target Tal
.zoneskip Thunder Bluff,1
.dungeon ST
step
#season 0
#optional
#completewith JedigaTurnins1
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
.fly Azshara >> Fly to Azshara
.target Gryfe
.subzoneskip 541,1
.dungeon ST
step
#season 0
#completewith JedigaTurnins1
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Azshara >> Fly to Azshara
.target Bulkrek Ragefist
.zoneskip Tanaris,1
.dungeon ST
step
#season 0
#optional
#completewith JedigaTurnins1
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Azshara >> Fly to Azshara
.target Omusa Thunderhorn
.subzoneskip 378,1
.dungeon ST
step
#completewith JedigaTurnins1
.goto The Barrens,63.08,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Azshara >> Fly to Azshara
.target Bragok
.zoneskip Azshara
.dungeon !ST
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
.turnin 3562 >>Turn in Magatha's Payment to Jediga
.target Jediga
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
.turnin 3563 >>Turn in Jes'rimon's Payment to Jediga
.target Jediga
step
#label JedigaTurnins1
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
.accept 3542 >>Accept Delivery to Andron Gant
.target Jediga
step << Hunter/Priest
#season 0
#phase 4-6
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8232 >> Turn in The Green Drake << Hunter
.turnin 8257 >> Turn in Blood of Morphaz << Priest
.target Ogtinc
.isQuestComplete 8232 << Hunter
.isQuestComplete 8257 << Priest
.dungeon ST
step << Mage
#season 0
#phase 4-6
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
>>|cRXP_WARN_This will teleport you to the top of the mountain|r
.turnin 3503 >> Turn in Meeting with the Master
.target Sanath Lim-yo
.isQuestComplete 8253 << Mage
.dungeon ST
step << Mage
#season 0
#phase 4-6
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.turnin 8253 >> Turn in Destroy Morphaz << Mage
.target Archmage Xylem
.dungeon ST
.isQuestComplete 8253 << Mage
step << Mage
#season 0
#phase 4-6
#completewith next
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
>>|cRXP_WARN_This will teleport you back down|r
.turnin 3421 >> Turn in Return Trip
.timer 8,Return Trip RP
.target Nyrill
.dungeon ST
.isQuestTurnedIn 8253
step
#completewith WildGuardians1
.goto Azshara,22.00,49.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
.fly Felwood >>Fly to Felwood
.target Kroum
.zoneskip Felwood
step
.goto Felwood,34.30,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winna|r
.accept 4506 >>Accept Corrupted Sabers
.target Winna Hazzard
step
#label WildGuardians1
.goto Felwood,34.80,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trull|r
.accept 4521 >>Accept Wild Guardians
.target Trull Failbane
step << Warlock
#season 0
#phase 4-6
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8422 >> Turn in Trolls of a Feather
.target Impsy
.isQuestComplete 8422
.dungeon ST
step
#completewith next
>>Loot |cRXP_LOOT_Corrupted Soul Shards|r from any Mobs in Felwood
>>|cRXP_WARN_Grind your way down south until you have 6|r
.collect 11515,6,5882,1 
.itemcount 11511,1 
step
#completewith next
.subzone 2479 >> Travel to Emerald Sanctuary
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta|r
.turnin 5159 >>Turn in Cleansed Water Returns to Felwood
.accept 5165 >>Accept Dousing the Flames of Protection
.target Greta Mosshoof
step
.goto Felwood,46.60,83.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess|r
>>Turn in your |T132884:0|t[|cRXP_LOOT_Corrupted Soul Shards|r] to receive |T132804:0|t[|cRXP_LOOT_Cenarion Plant Salves|r]
>>|cRXP_WARN_If you don't have 6 get them from the |cRXP_ENEMY_Furbolgs|r to the south|r
.collect 11515,6,5887,1 
.turnin 5887 >> Turn in Salve via Hunting
.target Maybess Riverbreeze
.zoneskip Felwood,1
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
#completewith next
#icon |T135934:0|t
.goto Felwood,55.808,10.438,0
.goto Felwood,50.575,13.918,0
.goto Felwood,63.336,22.610,0
.goto Felwood,40.142,44.353,0
.goto Felwood,40.142,56.523,0
.goto Felwood,48.260,75.650,0
.goto Felwood,45.942,85.219,0
.goto Felwood,52.893,87.825,0
.aura 15366 >> |cRXP_WARN_Look for a |cRXP_PICK_Corrupted Songflower|r. Click it to cleanse it. Click the |cRXP_PICK_Cleansed Songflower|r to receive the hour-long|r |T135934:0|t[Songflower Serenade] |cRXP_WARN_buff|r
>>|cRXP_WARN_Their locations have been marked on your map. Skip this step if you aren't able to find one|r
.itemcount 11516,2 
step
.goto Felwood,36.02,66.99,70,0
.goto Felwood,32.40,66.60
.cast 15647 >>|cRXP_WARN_Use|r |T132599:0|t[Winna's Kitten Carrier] |cRXP_WARN_at the corrupted moonwell at the Ruins of Constellas|r
.use 12565
.isOnQuest 4506
step
#optional
#completewith next
#icon |T135934:0|t
.goto Felwood,55.808,10.438,0
.goto Felwood,50.575,13.918,0
.goto Felwood,63.336,22.610,0
.goto Felwood,40.142,44.353,0
.goto Felwood,40.142,56.523,0
.goto Felwood,48.260,75.650,0
.goto Felwood,45.942,85.219,0
.goto Felwood,52.893,87.825,0
.aura 15366 >> |cRXP_WARN_Look for a |cRXP_PICK_Corrupted Songflower|r. Click it to cleanse it. Click the |cRXP_PICK_Cleansed Songflower|r to receive the hour-long|r |T135934:0|t[Songflower Serenade] |cRXP_WARN_buff|r
>>|cRXP_WARN_Their locations have been marked on your map. Skip this step if you aren't able to find one|r
.itemcount 11516,2 
step
#label EnterShadowH
.goto Felwood,35.367,58.376
.subzone 1770 >> Travel to Shadow Hold within Jaedenar
step
#completewith next
>>Click the four |cRXP_PICK_Braziers|r on the ground
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
step
.goto Felwood,36.267,56.297
>>Kill |cRXP_ENEMY_Jaedenar Enforcers|r, |cRXP_ENEMY_Jaedenar Darkweavers|r, |cRXP_ENEMY_Jaedenar Warlocks|r and |cRXP_ENEMY_Jaedenar Legionnaires|r. Loot them for a |T134235:0|t[|cRXP_LOOT_Blood Red Key|r]
>>Use the |T134235:0|t[|cRXP_LOOT_Blood Red Key|r] to start the quest
>>|cRXP_WARN_This will begin an escort quest. Start this escort even if you still need to Extinguish Braziers|r
.collect 13140,1,5202 
.accept 5202 >> Accept A Strange Red Key
.use 13140 
.mob Jaedenar Enforcer
.mob Jaedenar Darkweaver
.mob Jaedenar Warlock
.mob Jaedenar Legionnaire
step
#label eStart
.goto Felwood,36.207,55.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Arko'narin|r
.turnin 5202 >> Turn in A Strange Red Key
.accept 5203,1 >> Accept Rescue From Jaedenar
.target Captured Arko'narin
step
#completewith next
>>Click the four |cRXP_PICK_Braziers|r on the ground
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
step
.goto Felwood,35.44,59.01
>>Escort |cRXP_FRIENDLY_Arko'narin|r through Shadow Hold. After |cRXP_FRIENDLY_Arko'narin|r equips her armor, kill the 3 |cRXP_ENEMY_Felguard|r that spawn
>>|cRXP_FRIENDLY_Arko'narin|r |cRXP_WARN_has 6,000 HP; let her tank mobs. Extinguish the Braziers within Shadow Hold as you progress towards the entrance|r
>>Once |cRXP_FRIENDLY_Arko'narin|r leaves the cave, the |cRXP_ENEMY_Spirit of Trey Lightforge|r will spawn. Kill him
>>|cRXP_WARN_Be careful of surrounding mobs. He has a 500 damage shock spell and hits very hard. Use all of your offensive cooldowns here, if you have them|r
.complete 5203,1 
.target Arko'narin
step
>>Click the four |cRXP_PICK_Braziers|r on the ground
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
step
#completewith next
.goto Felwood,37.37,49.83,40,0
.goto Felwood,35.45,50.10,40,0
.goto Felwood,34.57,52.12
.subzone 1997 >> Travel to Bloodvenom Post
step
#completewith next
>>|cRXP_WARN_Interact with the|r |cRXP_FRIENDLY_Corrupted Saber|r |cRXP_WARN_once you are standing next to|r |cRXP_FRIENDLY_Winna Hazzard|r
.complete 4506,1 
.skipgossip
.target Corrupted Saber
step
.goto Felwood,34.20,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tApproach |cRXP_FRIENDLY_Winna|r. Talk to the |cRXP_FRIENDLY_Corrupted Saber|r and then talk to |cRXP_FRIENDLY_Winna|r
.turnin 4506 >>Turn in Corrupted Sabers
.target Winna Hazzard
step
#completewith next
.goto Felwood,64.70,8.10,70 >>Travel to the the Timbermaw Hold Entrance
step
.goto Felwood,64.70,8.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.accept 8461 >>Accept Deadwood of the North
.target Nafien
step << Mage
#season 2
#sticky
#label MysteryScroll
.train 440858,1
.goto Felwood,63.0,9.0,0
>>Kill |cRXP_ENEMY_Deadwood Avengers|r and |cRXP_ENEMY_Deadwood Shamans|r. Loot them for the |T237446:0|t[|cRXP_LOOT_Mysterious Darnassian Scroll|r]. You will need it to unlock the rune of |T135851:0|t[Frozen Orb] soon
.collect 227796,1 
.mob Deadwood Shaman
.mob Deadwood Avenger
step << Mage
#season 2
#sticky
#label OrbScroll
#requires MysteryScroll
.train 440858,1
>>|cRXP_WARN_Use a|r |T135933:0|t[|cRXP_LOOT_Comprehension Charm|r] |cRXP_WARN_on the|r |T237446:0|t[|cRXP_LOOT_Mysterious Darnassian Scroll|r] |cRXP_WARN_to decipher it into the|r |T134937:0|t[|cRXP_LOOT_Deciphered Darnassian Scroll|r]
.collect 227797,1 
.use 211779
.use 227796
step << Shaman
#season 2
#label VoltaicIcon
#completewith Deadwoods
#sticky
.train 440634,1
>>Kill |cRXP_ENEMY_Deadwood Shamans|r, |cRXP_ENEMY_Deadwood Avengers|r and |cRXP_ENEMY_Deadwood Den Watchers|r. Loot them for the |T134918:0|t[|cRXP_LOOT_Voltaic Icon|r]
.collect 225838,1
.mob Deadwood Shaman
.mob Deadwood Avenger
.mob Deadwood Den Watcher
step << Shaman
#season 2
#requires VoltaicIcon
#label VoltaicIconEquip
#completewith Deadwoods
#sticky
.train 440634,1
.equip 18,225838 >> |cRXP_WARN_Equip the|r |T134918:0|t[|cRXP_LOOT_Voltaic Icon|r]
.use 225838
step << Shaman
#season 2
#requires VoltaicIconEquip
#label VoltaicIconStacks
#completewith Deadwoods
#sticky
.train 440634,1
.aura 408828 >>|cRXP_WARN_You must now kill 3 enemies with a single cast of|r |T136015:0|t[Chain Lightning]
>>|cRXP_WARN_Pull 3 mobs and lower their health to roughly 5% each then cast|r |T136015:0|t[Chain Lightning]
step << Shaman
#season 2
#requires VoltaicIconStacks
#completewith Deadwoods
#sticky
.aura -408828
.use 225838
.train 440634 >>|cRXP_WARN_Use the|r |T134918:0|t[|cRXP_LOOT_Voltaic Icon|r] |cRXP_WARN_to learn|r |T237588:0|t[Storm, Earth, and Fire]
step
#completewith next
.goto Felwood,62.68,8.06,0
>>Kill |cRXP_ENEMY_Deadwood Den Watchers|r, |cRXP_ENEMY_Deadwood Avengers|r ann |cRXP_ENEMY_Deadwood Shamans|r
>>|cRXP_WARN_Kill|r |cRXP_ENEMY_Deadwood Avengers|r |cRXP_WARN_first. If you multi-pull it will enrage if any furbolgs die nearby|r
.complete 8461,1 
.mob +Deadwood Den Watcher
.complete 8461,2 
.mob +Deadwood Avenger
.complete 8461,3 
.mob +Deadwood Shaman
step
.goto Felwood,60.20,5.90
>>Click the |cRXP_PICK_Deadwood Cauldron|r
>>|cRXP_WARN_This is an instant cast. You can run away from the |cRXP_ENEMY_Deadwood Furbolgs|r after turning it in|r
.turnin 5084 >>Turn in Falling to Corruption
.accept 5085 >>Accept Mystery Goo
step
#label Deadwoods
.goto Felwood,63.19,13.01,0
.goto Felwood,61.67,7.23,50,0
.goto Felwood,62.68,8.39,50,0
.goto Felwood,62.55,10.49,50,0
.goto Felwood,63.19,13.01,50,0
>>Kill |cRXP_ENEMY_Deadwood Den Watchers|r, |cRXP_ENEMY_Deadwood Avengers|r ann |cRXP_ENEMY_Deadwood Shamans|r
>>|cRXP_WARN_Kill|r |cRXP_ENEMY_Deadwood Avengers|r |cRXP_WARN_first. If you multi-pull it will enrage if any furbolgs die nearby|r
.complete 8461,1 
.mob +Deadwood Den Watcher
.complete 8461,2 
.mob +Deadwood Avenger
.complete 8461,3 
.mob +Deadwood Shaman
step << Mage
#season 2
#label DeadwoodEnd
#requires OrbScroll
.train 440858,1
.goto Felwood,61.0,12.0
.use 227797 >>|cRXP_WARN_Use the|r |T134937:0|t[|cRXP_LOOT_Deciphered Darnassian Scroll|r] |cRXP_WARN_on |cRXP_FRIENDLY_Calyx Greenglow|r and accept his quest|r
>>|cRXP_FRIENDLY_Calyx Greenglow|r |cRXP_WARN_patrols around slightly|r
.accept 84369 >> Accept Healing the Healer
.unitscan Calyx Greenglow
step << Mage
#season 2
#sticky
#label UnusualFlask
.train 440858,1
.goto Winterspring,55.0,22.0,0
>>Kill |cRXP_ENEMY_Irontree Stompers|r. Loot them for the |cRXP_LOOT_Unusual Flask|r
.collect 227924,1,84369,1 
.mob Irontree Stomper
step
#requires UnusualFlask << sod Mage
.goto Felwood,64.70,8.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8461 >>Turn in Deadwood of the North
.accept 8465 >>Accept Speak to Salfa
.target Nafien
step
#completewith next
#requires UnusualFlask << sod Mage
.goto Felwood,65.16,7.88,40,0
.goto Felwood,64.67,3.14,40,0
.goto Felwood,66.40,2.95,40,0
.goto Felwood,68.24,5.60,40,0
.goto Felwood,68.73,6.38
.zone Winterspring >>Travel through Timbermaw Hold to Winterspring
step
#requires UnusualFlask << sod Mage
.goto Winterspring,27.736,34.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
.turnin 8465 >>Turn in Speak to Salfa
.accept 8464 >>Accept Winterfall Activity
.target Salfa
step << Mage
#season 2
#requires UnusualFlask
.train 440858,1
.goto Winterspring,29.0,35.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calyx Greenglow|r
>>|cRXP_WARN_You will need to kill |cRXP_ENEMY_Calyx Greenglow|r after turning this quest in|r
.turnin 84369 >> Turn in Healing the Healer
.unitscan Calyx Greenglow
step << Mage
#season 2
#label OrbNotes
.train 440858,1
>>Kill the |cRXP_ENEMY_Enraged Shade|r. Loot it for the |T134939:0|t[|cRXP_LOOT_Spell Notes: Frozen Orb|r]
.collect 225690,1 
.mob Enraged Shade
step << Mage
#season 2
#sticky
#completewith next
#requires OrbNotes
.train 440858 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Frozen Orb|r] |cRXP_WARN_to train|r |T135851:0|t[Frozen Orb]
.use 225690
step
.goto Winterspring,31.30,45.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 980 >>Turn in The New Springs
.accept 4842 >>Accept Strange Sources
.turnin 5085 >>Turn in Mystery Goo
.accept 5086 >>Accept Toxic Horrors
.target Donova Snowden
step
#xprate <2.0
#era/som
.isQuestComplete 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 3909 >> Turn in The Videre Elixir
.target Donova Snowden
step
#xprate <2.0
#era/som
#softcore
.isQuestTurnedIn 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.accept 3912 >> Accept Meet at the Grave
.target Donova Snowden
step
#xprate <2.0
#era/som
#hardcoreserver
.isQuestTurnedIn 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_Blizzard has adjusted the quest chain for [The Videre Elixir] so it will no longer kill you on Official Hardcore Servers|r
.accept 3912 >> Accept Meet at the Grave
.target Donova Snowden
step
#era/som
#completewith WSYetis
>>Kill |cRXP_ENEMY_Ragged Owlbeasts|r on your way to Everlook
.complete 4521,2 
.mob Ragged Owlbeast
step
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizzie|r
.home >>Set your Hearthstone to Everlook
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Vizzie
.bindlocation 2255
.isQuestAvailable 3783,5054,4521
step
#label WSYetis
#era/som
.goto Winterspring,60.88,37.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi|r
.accept 3783 >>Accept Are We There, Yeti?
.target Umi Rumplesnicker
step
#label Ursius
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.accept 5054 >> Accept Ursius of the Shardtooth
.target Storm Shadowhoof
step
#era/som
#loop
.goto Winterspring,54.39,37.32,0
.goto Winterspring,47.46,36.84,0
.goto Winterspring,38.47,38.19,0
.goto Winterspring,45.14,42.46,0
.goto Winterspring,54.39,37.32,80,0
.goto Winterspring,48.13,34.60,80,0
.goto Winterspring,47.46,36.84,80,0
.goto Winterspring,44.39,37.72,80,0
.goto Winterspring,42.23,37.52,80,0
.goto Winterspring,38.47,38.19,80,0
.goto Winterspring,37.08,41.15,80,0
.goto Winterspring,45.14,42.46,80,0
>>Kill |cRXP_ENEMY_Ragged Owlbeasts|r west of Everlook
.complete 4521,2 
.mob Ragged Owlbeast
step
#era/som
#completewith ROwlbeasts
>>Kill all types of |cRXP_ENEMY_Ice Thistle Yetis|r. Loot them for their |cRXP_LOOT_Fur|r
>>|cRXP_WARN_Don't focus on this; you can finish it later|r
.complete 3783,1 
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
.mob Ice Thistle Patriarch
.mob Ice Thistle Matriarch
step
#era/som
#completewith next
.goto Winterspring,60.67,29.81,0
.goto Winterspring,58.64,34.51,0
>>Kill |cRXP_ENEMY_Raging Owlbeasts|r
.complete 4521,1 
.mob Raging Owlbeast
step
#loop
.goto Winterspring,63.40,27.04,0
.goto Winterspring,56.62,32.34,70,0
.goto Winterspring,60.50,33.02,70,0
.goto Winterspring,62.55,30.83,70,0
.goto Winterspring,62.43,28.08,70,0
.goto Winterspring,63.40,27.04,70,0
>>Kill |cRXP_ENEMY_Ursius|r. You can kite him back to Everlook if needed. Remember to deal 51%+ damage
>>|cRXP_WARN_Be careful, as this quest can be difficult|r
.complete 5054,1 
.unitscan Ursius
step
#era/som
#label ROwlbeasts
#loop
.goto Winterspring,60.58,29.76,0
.goto Winterspring,60.58,29.76,50,0
.goto Winterspring,58.82,27.41,70,0
.goto Winterspring,56.06,27.83,70,0
.goto Winterspring,55.97,30.25,70,0
.goto Winterspring,55.10,32.16,70,0
>>Kill |cRXP_ENEMY_Raging Owlbeasts|r
.complete 4521,1 
.mob Raging Owlbeast
step
#era/som
#loop
.goto Winterspring,66.50,41.70,0
.goto Winterspring,66.50,41.70,50,0
.goto Winterspring,64.90,40.20,50,0
.goto Winterspring,65.90,43.60,50,0
.goto Winterspring,66.20,45.80,50,0
.goto Winterspring,67.60,45.60,50,0
.goto Winterspring,67.60,43.80,50,0
.goto Winterspring,67.20,43.00,50,0
.goto Winterspring,67.60,41.90,50,0
.goto Winterspring,68.40,41.50,50,0
.goto Winterspring,69.00,41.30,50,0
.goto Winterspring,69.50,40.00,50,0
.goto Winterspring,69.80,41.80,50,0
.goto Winterspring,70.10,42.00,50,0
.goto Winterspring,70.30,40.80,50,0
.goto Winterspring,71.30,40.80,50,0
.goto Winterspring,71.80,39.80,50,0
.goto Winterspring,70.50,38.30,50,0
.goto Winterspring,71.80,39.80,50,0
.goto Winterspring,71.30,40.80,50,0
.goto Winterspring,70.30,40.80,50,0
.goto Winterspring,69.50,40.00,50,0
.goto Winterspring,69.00,41.30,50,0
.goto Winterspring,68.40,41.50,50,0
>>Kill all types of |cRXP_ENEMY_Ice Thistle Yetis|r. Loot them for their |cRXP_LOOT_Fur|r
.complete 3783,1 
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
.mob Ice Thistle Patriarch
step << Shaman
.hs >>Hearth or Astrall Recall to Everlook
.use 6948
.bindlocation 2255,1
.subzoneskip 2255
step << Shaman
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizzie|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Vizzie
.subzoneskip 2255,1
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.turnin 5054 >> Turn in Ursius of the Shardtooth
.accept 5055 >> Accept Brumeran of the Chillwind
.target Storm Shadowhoof
.isQuestComplete 5054
step
#optional
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.accept 5055 >> Accept Brumeran of the Chillwind
.target Storm Shadowhoof
.isQuestTurnedIn 5054
step << Hunter
.goto Winterspring,61.91,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
.accept 969 >> Accept Luck Be With You
.target Witch Doctor Mau'ari
step
#era/som
.goto Winterspring,60.88,37.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi|r
.turnin 3783 >>Turn in Are We There, Yeti?
.target Umi Rumplesnicker
step << !Shaman
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizzie|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Vizzie
.subzoneskip 2255,1
step
#completewith next
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r`
.fly Felwood >>Fly to Felwood
.target Yugrek
.zoneskip Felwood
step
#era/som
.goto Felwood,34.70,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trull|r
.turnin 4521 >> Turn in Wild Guardians
.accept 4741 >> Accept Wild Guardians
.target Trull Failbane
step
#xprate <2.0
#completewith next
#era/som
.goto Felwood,34.44,53.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakkar|r
.fly Tanaris>> Fly to Tanaris
.target Brakkar
.zoneskip Tanaris
.isOnQuest 3912
step
#xprate <2.0
#era/som
#softcore
#softcoreserver
.isOnQuest 3912
#completewith next
.goto Tanaris,53.99,28.63
.cast 14050 >> |cRXP_WARN_Use the|r |T134813:0|t[Videre Elixir] |cRXP_WARN_at the Tanaris graveyard|r
.use 11243 
step
#xprate <2.0
#era/som
#hardcoreserver
.isOnQuest 3912
#completewith next
.goto Tanaris,53.99,28.63
.cast 417627 >> |cRXP_WARN_Use the|r |T134813:0|t[Videre Elixir] |cRXP_WARN_at the Tanaris graveyard|r
>>|cRXP_WARN_Blizzard has adjusted this quest so consuming this will NOT kill your character on Official Hardcore Servers. It will lower your health to 3% however. Ensure you bandage or eat food before leaving the graveyard|r
.use 11243 
step
#xprate <2.0
#era/som
#hardcoreserver
.isOnQuest 3912
.goto Tanaris,53.93,23.33
>>|cRXP_WARN_Ensure you bandage or eat food before leaving the graveyard|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaeriyan|r
>>|cRXP_WARN_You must have the |T132331:0|t[Near Death Experience] debuff to see|r |cRXP_FRIENDLY_Gaeriyan|r |cRXP_WARN_by drinking the|r |T134813:0|t[Videre Elixir]
>>|cRXP_WARN_Blizzard has adjusted this quest so consuming this will NOT kill your character on Official Hardcore Servers|r
.use 11243 
.turnin 3912 >> Turn in Meet at the Grave
.accept 3913 >> Accept A Grave Situation
.target Gaeriyan
step
#xprate <2.0
#era/som
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,53.93,23.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaeriyan|r
>>|cRXP_WARN_You must have the |T132331:0|t[Near Death Experience] debuff to see|r |cRXP_FRIENDLY_Gaeriyan|r |cRXP_WARN_by drinking the|r |T134813:0|t[Videre Elixir]
>>|cRXP_WARN_Blizzard has adjusted this quest so consuming this will NOT kill your character on Official Hardcore Servers|r
.use 11243 
.accept 3913 >> Accept A Grave Situation
.target Gaeriyan
step
#xprate <2.0
#era/som
#softcore
#softcoreserver
.isOnQuest 3912
.goto Tanaris,53.93,23.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaeriyan|r
>>|cRXP_WARN_You must be dead in order to speak to|r |cRXP_FRIENDLY_Gaeriyan|r
.turnin 3912 >> Turn in Meet at the Grave
.accept 3913 >> Accept A Grave Situation
.target Gaeriyan
step
#xprate <2.0
#era/som
#softcore
.isQuestTurnedIn 3912
.goto Tanaris,53.815,29.061
>>Click the |cRXP_PICK_Conspicuous Gravestone|r
.turnin 3913 >> Turn in A Grave Situation
.accept 3914 >> Accept Linken's Sword
step
#xprate <2.0
#era/som
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,53.815,29.061
>>Click the |cRXP_PICK_Conspicuous Gravestone|r
.turnin 3913 >> Turn in A Grave Situation
.accept 3914 >> Accept Linken's Sword
step
#xprate <2.0
#optional
#era/som
.destroy 11243 >>|cRXP_WARN_Delete any remaining|r |T134813:0|t[Videre Elixirs] |cRXP_WARN_you have|r
.isQuestTurnedIn 3913
step
#xprate <2.0
#era/som
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Un'Goro Crater >>Fly to Un'Goro Crater
.target Bulkrek Ragefist
.zoneskip Tanaris,1
step
#xprate <2.0
#era/som
#hardcoreserver
.isQuestTurnedIn 3912
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3914 >> Turn in Linken's Sword
.accept 3941 >> Accept A Gnome's Assistance
.target Linken
step
#xprate <2.0
#era/som
#hardcoreserver
.isQuestTurnedIn 3912
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 3941 >> Turn in A Gnome's Assistance
.timer 25,A Gnome's Assistance RP
.accept 3942 >> Accept Linken's Memory
.target J.D. Collie
step
#xprate <2.0
.isQuestTurnedIn 3912
#era/som
#softcore
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
.fly Un'Goro Crater >>Fly to Un'Goro Crater
.target Bulkrek Ragefist
.zoneskip Tanaris,1
step
#xprate <2.0
.isQuestTurnedIn 3912
#era/som
#softcore
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3914 >> Turn in Linken's Sword
.accept 3941 >> Accept A Gnome's Assistance
.target Linken
step
#xprate <2.0
.isQuestTurnedIn 3912
#era/som
#softcore
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 3941 >> Turn in A Gnome's Assistance
.timer 25,A Gnome's Assistance RP
.accept 3942 >> Accept Linken's Memory
.target J.D. Collie
step << Druid
#era/som
#completewith DruidTraining9
.cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
.zoneskip Moonglade
step << Druid
#era/som
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 9857 >>Train your class spells
.target Loganaar
.xp <54,1
.xp >56,1
step << Druid
#era/som
#label DruidTraining9
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 22829 >>Train your class spells
.target Loganaar
.xp <56,1
step
#era/som
.hs >>Hearth to Winterspring
.use 6948
.zoneskip Winterspring
.bindlocation 2255,1
step
#era/som
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizzie|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Vizzie
.subzoneskip 2255,1
step
#loop
.line Winterspring,54.7,46.0,56.6,52.4,60.5,55.6,62.4,58.9,58.8,63.5
.goto Winterspring,58.8,63.5,0
.goto Winterspring,54.7,46.0,60,0
.goto Winterspring,56.6,52.4,60,0
.goto Winterspring,60.5,55.6,60,0
.goto Winterspring,62.4,58.9,60,0
.goto Winterspring,58.8,63.5,60,0
>>Kill |cRXP_ENEMY_Brumeran|r (58 elite)
>>|cRXP_WARN_This quest is HARD. Group up or skip this quest if needed|r
>>|cRXP_WARN_He patrols around. His path is marked on your map|r
.complete 5055,1 
.unitscan Brumeran
.isOnQuest 5055
step
#era/som
#completewith next
.goto Winterspring,65.01,59.77,0
>>Kill |cRXP_ENEMY_Moontouched Owlbeasts|r
>>|cRXP_WARN_Their moonfire hits fairly hard, and their rejuvenation is strong|r
.complete 4741,1 
.mob Moontouched Owlbeast
step
.goto Winterspring,60.09,73.34
>>Head to the border of Darkwhisper Gorge
.complete 4842,1 
step << Hunter
.goto Winterspring,60.43,65.31
>>Loot the |cRXP_FRIENDLY_Frostmaul Shards|r around the outer perimeter of the canyon. Use your pet to bait the |cRXP_ENEMY_Frostmaul Giants|r away from the crystals. Run away after looting one
>>|cRXP_WARN_This is a hard quest to solo, skip this quest if you have to|r
.complete 969,1 
.link https://www.youtube.com/watch?v=_GFA9BBvQek&t=11349s >> Click here for video reference
step
#era/som
#loop
.goto Winterspring,64.96,62.68,0
.goto Winterspring,63.49,59.25,70,0
.goto Winterspring,65.01,59.77,70,0
.goto Winterspring,65.30,61.06,70,0
.goto Winterspring,64.96,62.68,70,0
>>Kill |cRXP_ENEMY_Moontouched Owlbeasts|r
>>|cRXP_WARN_Their moonfire hits fairly hard, and their rejuvenation is strong|r
.complete 4741,1 
.mob Moontouched Owlbeast
step
#era/som
#softcore
#completewith WaterandFood11
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
#hardcore
#completewith WaterandFood11
.hs >> Hearth to Everlook
.use 6948
.bindlocation 2255,1
.subzoneskip 255
.cooldown item,6948,>0,1
step
#hardcore
#completewith WaterandFood11
.subzone 2255 >> Travel back to Everlook
.use 6948
.cooldown item,6948,<0
step << Hunter
.goto Winterspring,61.91,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
.turnin 969 >> Turn in Luck Be With You
.target Witch Doctor Mau'ari
.isQuestComplete 969
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.turnin 5055 >> Turn in Brumeran of the Chillwind
.target Storm Shadowhoof
.isQuestComplete 5055
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregor Greystone|r and |cRXP_FRIENDLY_Jessica Redpath|r
.accept 6029 >> Accept The Everlook Report
.accept 6030 >> Accept Duke Nicholas Zverenhoff
.target +Gregor Greystone
.goto Winterspring,61.348,38.973
.accept 5601 >> Accept Sister Pamela
.goto Winterspring,61.281,38.981
.target +Jessica Redpath
step
#label WaterandFood11
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizzie|r
.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
.target Innkeeper Vizzie
.isQuestComplete 5055,4741,4842
step
#completewith next
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r`
.fly Felwood>>Fly to Felwood
.target Yugrek
.zoneskip Felwood
step
#era/som
.goto Felwood,34.80,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trull|r
.turnin 4741 >> Turn in Wild Guardians
.accept 4721 >> Accept Wild Guardians
.target Trull Failbane
step
#completewith next
#icon |T135934:0|t
.goto Felwood,55.808,10.438,0
.goto Felwood,50.575,13.918,0
.goto Felwood,63.336,22.610,0
.goto Felwood,40.142,44.353,0
.goto Felwood,40.142,56.523,0
.goto Felwood,48.260,75.650,0
.goto Felwood,45.942,85.219,0
.goto Felwood,52.893,87.825,0
.aura 15366 >> |cRXP_WARN_Look for a |cRXP_PICK_Corrupted Songflower|r. Click it to cleanse it. Click the |cRXP_PICK_Cleansed Songflower|r to receive the hour-long|r |T135934:0|t[Songflower Serenade] |cRXP_WARN_buff|r
>>|cRXP_WARN_Their locations have been marked on your map. Don't go very far out of your way to find one|r
.itemcount 11516,2 
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta|r
.turnin 5165 >>Turn in Dousing the Flames of Protection
.accept 5242 >>Accept A Final Blow
.target Greta Mosshoof
step
.goto Felwood,51.30,82.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir|r
.turnin 5203 >>Turn in Rescue From Jaedenar
.accept 5204 >>Accept Retribution of the Light
.target Jessir Moonbow
step
#xprate <2.0
#era/som
#softcore
.isQuestTurnedIn 3941
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 3942 >> Turn in Linken's Memory
.accept 4084 >> Accept Silver Heart
.target Eridan Bluewind
step
#xprate <2.0
#era/som
#hardcoreserver
.isQuestTurnedIn 3941
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 3942 >> Turn in Linken's Memory
.accept 4084 >> Accept Silver Heart
.target Eridan Bluewind
step
#xprate <2.0
#era/som
#softcore
.isOnQuest 4084
#completewith next
>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r in Felwood. Loot them for their |cRXP_LOOT_Silvery Claws|r
.complete 4084,1 
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
#xprate <2.0
#era/som
#hardcoreserver
.isOnQuest 4084
#completewith next
>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r in Felwood. Loot them for their |cRXP_LOOT_Silvery Claws|r
.complete 4084,1 
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
#completewith ShadowLordFelidan
.goto Felwood,35.367,58.376
.subzone 1770 >> Travel to Shadow Hold within Jaedenar
step
.goto Felwood,35.39,58.74,30,0
.goto Felwood,38.30,50.50
>>Kill |cRXP_ENEMY_Rakaiah|r deep inside Shadow Hold
.complete 5204,1 
.unitscan Rakaiah
step
.goto Felwood,38.50,50.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remains of Trey Lightforge|r
>>|cRXP_WARN_Mobs around the remains can bug by keeping you in combat, despite not attacking you|r
.turnin 5204 >>Turn in Retribution of the Light
.accept 5385 >>Accept The Remains of Trey Lightforge
.target Remains of Trey Lightforge
.isQuestTurnedIn 5203
step
#label ShadowLordFelidan
.goto Felwood,38.90,46.80
>>Kill |cRXP_ENEMY_Shadow Lord Fel'dan|r, |cRXP_ENEMY_Moora|r and |cRXP_ENEMY_Salia|r. Loot |cRXP_ENEMY_Shadow Lord Fel'dan|r for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Linger outside of the room and use line of sight (LOS) to avoid Fel'dan's shadowbolts. When he starts casting, hide out of sight. As soon as his cast ends/fails, step into sight so he starts casting again/doesn't get too close to the LOS point|r
.complete 5242,1 
.mob +Moora
.complete 5242,2 
.mob +Salia
.complete 5242,3 
.unitscan +Shadow Lord Felidan
step << skip
#completewith next
.goto Felwood,38.72,46.77
.goto Felwood,49.57,30.76,30 >> Perform a logout skip to teleport out of Shadow Hold
.link https://youtu.be/SWBtPqm5M0Q?t=128 >> |cRXP_WARN_CLICK HERE for an example|r
step
.goto Felwood,35.42,58.72,15 >>Exit Shadow Hold
.isQuestComplete 5242
step
#xprate <2.0
#era/som
#softcore
.isOnQuest 4084
#completewith IrontreeHeart
>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r in Felwood. Loot them for their |cRXP_LOOT_Silvery Claws|r
.complete 4084,1 
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
#xprate <2.0
#era/som
#hardcoreserver
.isOnQuest 4084
#completewith IrontreeHeart
>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r in Felwood. Loot them for their |cRXP_LOOT_Silvery Claws|r
.complete 4084,1 
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
#era/som
#loop
.goto Felwood,49.76,27.29,0
.goto Felwood,50.87,23.72,50,0
.goto Felwood,49.44,23.39,50,0
.goto Felwood,48.86,24.80,50,0
.goto Felwood,49.76,27.29,50,0
>>Kill |cRXP_ENEMY_Toxic Horrors|r. Loot them for their |cRXP_LOOT_Toxic Horror Droplets|r
.complete 5086,1 
.mob Toxic Horror
step
#xprate <2.0
#label IrontreeHeart
#era/som
#softcore
#loop
.goto Felwood,49.60,30.00,0
.goto Felwood,46.40,24.60,60,0
.goto Felwood,49.20,19.80,60,0
.goto Felwood,53.00,20.40,60,0
.goto Felwood,52.00,24.80,60,0
.goto Felwood,49.60,30.00,60,0
>>Kill |cRXP_ENEMY_Irontree Stompers|r or |cRXP_ENEMY_Irontree Wanderers|r. Loot them for their |cRXP_LOOT_Irontree Heart|r
.complete 4084,2 
.mob Irontree Stomper
.mob Irontree Wanderer
step
#xprate <2.0
#label IrontreeHeart
#era/som
#hardcoreserver
#loop
.goto Felwood,49.60,30.00,0
.goto Felwood,46.40,24.60,60,0
.goto Felwood,49.20,19.80,60,0
.goto Felwood,53.00,20.40,60,0
.goto Felwood,52.00,24.80,60,0
.goto Felwood,49.60,30.00,60,0
>>Kill |cRXP_ENEMY_Irontree Stompers|r or |cRXP_ENEMY_Irontree Wanderers|r. Loot them for their |cRXP_LOOT_Irontree Heart|r
.complete 4084,2 
.mob Irontree Stomper
.mob Irontree Wanderer
.isOnQuest 4084
step
#xprate <2.0
#era/som
#softcore
#loop
.goto Felwood,63.27,19.15,0
.goto Felwood,53.75,28.06,90,0
.goto Felwood,58.03,17.83,90,0
.goto Felwood,63.27,19.15,90,0
>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r in Felwood. Loot them for their |cRXP_LOOT_Silvery Claws|r
.complete 4084,1 
.isOnQuest 4084
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
#xprate <2.0
#era/som
#hardcoreserver
#loop
.goto Felwood,63.27,19.15,0
.goto Felwood,53.75,28.06,90,0
.goto Felwood,58.03,17.83,90,0
.goto Felwood,63.27,19.15,90,0
>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r in Felwood. Loot them for their |cRXP_LOOT_Silvery Claws|r
.complete 4084,1 
.isOnQuest 4084
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
>>|cRXP_WARN_If you have more than 5|r |T132926:0|t[Deadwood Headdress Feathers] |cRXP_WARN_you may turn them in for reputation with Timbermaw Hold|r
.dailyturnin 8467 >> Turn in Feathers for Nafien
.itemcount 21377,>5 
.target Nafien
step
#completewith next
.goto Felwood,65.44,2.81,20,0
.goto Felwood,66.51,2.98,20,0
.goto Felwood,67.82,4.33,20,0
.goto Felwood,67.93,5.11,20,0
.zone Winterspring >>Travel through Timbermaw Hold to Winterspring to |cRXP_FRIENDLY_Kernda|r
>>|cRXP_WARN_If you are not Unfriendly with Timbermaw Hold, |cRXP_ENEMY_Furbolgs|r will attack you|r
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernda|r
>>|cRXP_FRIENDLY_Kernda|r |cRXP_WARN_patrols the lower Timbermaw Hold path|r
.use 20741 >>|cRXP_WARN_IF you found a |T136232:0|t[|cRXP_LOOT_Deadwood Ritual Totem|r], use it to start the quest|r
>>|cRXP_WARN_Skip this step if you aren't neutral with Timbermaw Hold|r
.accept 8470 >> Accept Deadwood Ritual Totem
.turnin 8470 >> Turn in Deadwood Ritual Totem
.reputation 576,neutral,<0,1 
.itemcount 20741,1 
.target Kernda
step
.goto Felwood,65.692,2.810
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meilosh|r
>>|cRXP_WARN_Skip this step if you aren't friendly with Timbermaw Hold|r
.accept 6031 >> Accept Runecloth
.turnin 6031 >> Turn in Runecloth
.reputation 576,friendly,<0,1 
.itemcount 14047,30 
.target Meilosh
step
#completewith next
.goto Felwood,65.16,7.88,40,0
.goto Felwood,64.67,3.14,40,0
.goto Felwood,66.40,2.95,40,0
.goto Felwood,68.24,5.60,40,0
.goto Felwood,68.73,6.38
.zone Winterspring >> Travel through Timbermaw Hold to |cRXP_FRIENDLY_Salfa|r in Winterspring
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 4842 >>Turn in Strange Sources
.turnin 5086 >>Turn in Toxic Horrors
.accept 5087 >>Accept Winterfall Runners
.target Donova Snowden
step
#loop
.line Winterspring,28.07,35.29,28.02,36.46,28.32,37.14,28.47,37.92,28.53,39.39,28.80,39.76,29.32,40.86,29.91,42.27,30.44,42.54,31.65,42.44,32.60,42.17,33.59,41.99,34.67,41.91,36.04,42.16,38.21,41.98,40.23,40.75,42.32,39.97,44.29,39.90,46.45,39.66,48.38,38.86,49.19,38.15,49.35,37.79,49.65,37.59,50.57,36.63,51.67,36.21,52.25,35.75,52.75,35.30,53.46,34.27,53.75,33.38,53.93,32.50,53.97,31.32,54.60,30.91,55.51,30.05,57.14,29.72,58.07,28.93,58.74,27.94,59.01,26.99,59.24,26.48,60.37,25.02,60.62,24.75,61.11,24.44,61.29,24.35,61.92,23.82,62.34,23.92,62.37,24.95,62.21,25.30,62.60,25.99,63.04,26.55,63.50,27.81,63.95,28.34,64.12,28.94,64.10,30.84,64.21,31.40,64.97,33.08,65.44,33.48,66.44,33.71,66.63,33.93,66.80,34.47,66.87,34.87,66.97,35.22,67.53,37.01,68.12,37.76,68.65,38.20,68.76,38.13,68.94,37.84,69.29,38.40,69.61,38.29
.goto Winterspring,28.01,34.60,0
.goto Winterspring,28.01,34.60,40,0
.goto Winterspring,30.12,42.57,40,0
.goto Winterspring,39.36,41.28,40,0
.goto Winterspring,47.81,39.23,40,0
.goto Winterspring,53.49,34.13,40,0
.goto Winterspring,54.07,30.98,40,0
.goto Winterspring,57.30,28.05,40,0
.goto Winterspring,61.97,23.00,40,0
.goto Winterspring,62.41,25.53,40,0
.goto Winterspring,64.37,32.06,40,0
.goto Winterspring,66.16,33.66,40,0
.goto Winterspring,67.96,37.54,40,0
>>Kill the |cRXP_ENEMY_Winterfall Runners|r. Loot them for their |cRXP_LOOT_Winterfall Crate|r
>>|cRXP_WARN_Their spawn point is on the west side of Winterspring near the Timbermaw tunnel. Their patrol route is marked on your map|r
>>|cRXP_WARN_Alternatively, run back through the cave to Felwood, and kill the Runner located at the cauldron in Felpaw Village|r
.complete 5087,1 
.unitscan Winterfall Runner
.zoneskip Felwood
step
.goto Felwood,60.20,5.90
>>Kill |cRXP_ENEMY_Winterfall Runners|r
>>|cRXP_WARN_The Runner's located at the cauldron in the northwest of Felpaw Village|r
.complete 5087,1 
.unitscan Winterfall Runner
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 5087 >>Turn in Winterfall Runners
.accept 5121 >>Accept High Chief Winterfall
.target Donova Snowden
step << !Mage
#softcore
#completewith next
.deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r in Everlook
step << !Mage
#softcore
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r`
.fly Felwood>>Fly to Felwood
.target Yugrek
.zoneskip Felwood
step << !Mage
#hardcore
#completewith next
.goto Moonglade,32.10,66.60,100 >>Go back to the Furbolg tunnel and take the north exit into Moonglade
step << !Mage
#hardcore
.goto Moonglade,32.10,66.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faustron|r
.fly Felwood >> Fly to Felwood
.target Faustron
.zoneskip Felwood
step << Mage
#completewith next
.cast 3567 >>|cRXP_WARN_Cast|r |T135759:0|t[Teleport: Orgrimmar]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
.fly Splintertree >> Fly to Splintertree Post
.target Doras
.zoneskip Ashenvale
.zoneskip Azshara
step << Mage
#completewith next
.goto Ashenvale,55.78,28.12
.zone Felwood >>Travel to Felwood
step
.goto Felwood,51.23,82.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta|r
.turnin 5242 >>Turn in A Final Blow
.target Greta Mosshoof
.isQuestComplete 5242
step
.goto Felwood,51.35,82.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir|r
.turnin 5385 >>Turn in The Remains of Trey Lightforge
.target Jessir Moonbow
.isQuestTurnedIn 5204
step
#xprate <2.0
#era/som
#softcore
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4084 >> Turn in Silver Heart
.accept 4005 >> Accept Aquementas
.target Eridan Bluewind
step
#xprate <2.0
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4084 >> Turn in Silver Heart
.accept 4005 >> Accept Aquementas
.target Eridan Bluewind
step << !Mage
.hs >>Hearth to Winterspring
.use 6948
.bindlocation 2255,1
.subzoneskip 255
.cooldown item,6948,>0,1
step << !Mage
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r
.fly Orgrimmar >>Fly to Orgrimmar
.target Yugrek
.zoneskip Winterspring,1
step << !Mage
#completewith next
.subzone 431 >> Travel to Splintertree Post
.cooldown item,6948,<0,1
.zoneskip Winterspring
step << !Mage
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
.fly Orgrimmar >>Fly to Orgrimmar
.target Vhulgra
.cooldown item,6948,<0,1
.zoneskip Winterspring
.zoneskip Orgrimmar
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10929 >> Train your class spells
.target Ur'kyo
.xp <56,1
.xp >58,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
.train 10947 >> Train your class spells
.target Ur'kyo
.xp <58,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10432 >> Train your class spells
.target Kardris Dreamseeker
.xp <56,1
.xp >58,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
.train 10473 >> Train your class spells
.target Kardris Dreamseeker
.xp <58,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20662 >> Train your class spells
.target Grezz Ragefist
.xp <56,1
.xp >58,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11597 >> Train your class spells
.target Grezz Ragefist
.xp <58,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11689 >> Train your class spells
.target Mirket
.xp <56,1
.xp >58,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
.train 11713 >> Train your class spells
.target Mirket
.xp <58,1
step << Warlock
.goto Orgrimmar,47.55,46.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
.vendor >>Upgrade your pet's abilities
.target Kurgul
.zoneskip Orgrimmar,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 11300 >> Train your class spells
.target Ormok
.xp <56,1
.xp >58,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
.train 11305 >> Train your class spells
.target Ormok
.xp <58,1
step << Rogue
.goto Orgrimmar,42.09,49.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rekkul|r
.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
.target Rekkul
.zoneskip Orgrimmar,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14305 >> Train your class spells
.target Ormak Grimshot
.xp <56,1
.xp >58,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
.train 14322 >> Train your class spells
.target Ormak Grimshot
.xp <58,1
step
.goto Orgrimmar,49.57,69.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karus|r
.bankwithdraw 8529 >>Withdraw |T134863:0|t[Noggenfogger Elixir] from your bank if you have any. Try to have at least 40 in your bags for a mountain skip in EPL
>>|cRXP_WARN_Alternatively,|r |T132917:0|t[Light Feathers] |cRXP_WARN_will also work for|r |T135992:0|t[Slow Fall] << Mage
.target Karus
.isQuestTurnedIn 2641 << !Mage
step << Mage
.cast 3563 >>|cRXP_WARN_Cast|r |T135766:0|t[Teleport: Undercity]
.zoneskip Undercity
step << Mage
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
.train 10157 >> Train your class spells
.target Anastasia Hartwell
.xp <56,1
.xp >58,1
step << Mage
#optional
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
.train 10054 >> Train your class spells
.target Anastasia Hartwell
.xp <58,1
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannah Akeley|r
>>|cRXP_BUY_Buy at least two|r |T134419:0|t[Rune of Teleportation]
.collect 17031,2 
.target Hannah Akeley
step << !Mage
#completewith next
.zone Durotar >> Leave Orgrimmar
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
.zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
.zoneskip Tirisfal Glades
]]);
