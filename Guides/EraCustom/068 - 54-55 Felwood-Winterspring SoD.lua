RXPGuides.RegisterGuide([[
#version 23
#season 2
#xprate <2.5
#group RestedXP Alliance 50-60
#classic
#tbc
#mop
<< Alliance
#name 54-55 Felwood/Winterspring SoD
#displayname 54-55 Felwood/Winterspring
#next 55-57 Winterspring SoD
step << Hunter
.goto Felwood,64.8,8.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8462 >> Turn in Speak to Nafien
.target Nafien
.accept 8461 >> Accept Deadwood of the North
step << Hunter
#sticky
#completewith firewater
.goto Winterspring,27.7,34.5,100 >> Cross the furbolg tunnel, take the east exit at the intersection and head to Winterspring
step << Hunter
.goto Winterspring,31.2,45.4
.target Donova Snowden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.accept 5082 >> Accept Threat of the Winterfall
.turnin 980 >> Turn in The New Springs
.accept 4842 >> Accept Strange Sources
step << Hunter
.goto Winterspring,31.1,36.2
>>Grind Furbolgs until you get an Empty Firewater Flask
.collect 12771,1,5083
.accept 5083 >> Accept Winterfall Firewater
step << Hunter
#label firewater
.goto Winterspring,31.2,45.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5083 >> Turn in Winterfall Firewater
.target Donova Snowden
.accept 5084 >> Accept Falling to Corruption
step << Hunter
.goto Felwood,60.2,5.9
>>Go back to felwood and click on the cauldron at the middle of the furbolg camp
.turnin 5084 >> Turn in Falling to Corruption
.accept 5085 >> Accept Mystery Goo
step << Hunter
#season 2
.train 453698,1
.goto Felwood,62.8,7.5
>>|cRXP_WARN_Look for a red book in the marked location. It's in a camp next to|r |cRXP_ENEMY_Chieftain Bloodmaw|r |cRXP_WARN_Loot it for the rune|r
.collect 226416,1 
step << Hunter
#season 2
.train 453698,1
#completewith next
.train 453698 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Nature Specialization|r] to train |T132848:0|t[Nature Specialization]
.itemcount 226416,1
.use 226416
step << Hunter
.goto Felwood,62.4,8.6
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.collect 11515,6,5882 
step << Hunter
.goto Felwood,64.8,8.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8461 >> Turn in Deadwood of the North
.target Nafien
.accept 8465 >> Speak to Salfa
step << Hunter
.goto Winterspring,27.7,34.5
>>Cross the furbolg tunnel into Winterspring
.target Salfa
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
.turnin 8465 >> Speak to Salfa
step << Hunter
.goto Winterspring,31.2,45.3
>>Head back to Wintersrping
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5085 >> Turn in Mystery Goo
.target Donova Snowden
.accept 5086 >> Accept Toxic Horrors
step << Hunter
.goto Felwood,60.2,5.9
.zone Felwood >> Head back through the tunnel into Felwood
step
#completewith CSS
>>Loot |cRXP_LOOT_Corrupted Soul Shards|r from any Mobs in Felwood
>>Grind your way down south until you have 6
.collect 11515,6,5882,1 
.itemcount 11511,1 
step
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4441 >> Turn in Felbound Ancients
.timer 16,Felbound Ancients RP
.target Eridan Bluewind
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5159 >> Turn in Cleansed Water Returns to Felwood
.accept 5165 >> Accept Dousing the Flames of Protection
.target Greta Mosshoof
step
#label CSS
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
>>|cRXP_WARN_You may need to wait for the RP|r
.accept 4442 >> Accept Purified!
.turnin 4442 >> Turn in Purified!
.target Eridan Bluewind
step
.goto Felwood,48.22,93.81,0
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
>>|cRXP_WARN_Turn in your 6|r |T132884:0|t[|cRXP_LOOT_Corrupted Soul Shards|r] |cRXP_WARN_you have to receive 2|r |T132804:0|t[|cRXP_LOOT_Cenarion Plant Salves|r]
>>If you don't have 6 get them from the |cRXP_ENEMY_Furbolgs|r to the west
.collect 11515,6,5882,1 
.accept 5882 >> Accept Salve via Hunting
.turnin 5882 >> Turn in Salve via Hunting
.target Arathandris Silversky
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
.goto Felwood,52.893,87.825,25,0
.goto Felwood,45.942,85.219,25,0
.goto Felwood,48.260,75.650,25,0
.goto Felwood,40.142,56.523,25,0
.goto Felwood,40.142,44.353,25,0
.goto Felwood,50.575,13.918,25,0
.goto Felwood,55.808,10.438,25,0
.goto Felwood,63.336,22.610,25,0
.cast 6478 >> |cRXP_WARN_Look for a |cRXP_PICK_Corrupted Songflower|r. Click it to cleanse it. Click the |cRXP_PICK_Cleansed Songflower|r to receive the hour-long|r |T135934:0|t[Songflower Serenade] |cRXP_WARN_buff|r
>>|cRXP_WARN_Their locations have been marked on your map. Skip this step if you aren't able to find one|r
.itemcount 11516,2 
step
#completewith eStart
.goto Felwood,35.367,58.376
.subzone 1770 >> Travel to Shadow Hold
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
>>Kill |cRXP_ENEMY_Jaedenar Enforcers|r, |cRXP_ENEMY_Jaedenar Darkweavers|r, |cRXP_ENEMY_Jaedenar Warlocks|r and |cRXP_ENEMY_Jaedenar Legionnaires|r. Loot them for a |T134235:0|t[|cRXP_LOOT_Blood Red Key|r]
>>|cRXP_WARN_Use the |T134235:0|t[|cRXP_LOOT_Blood Red Key|r] to start the quest|r
>>|cRXP_WARN_This will begin an escort quest. Start this escort even if you still need to Extinguish Braziers|r
.collect 13140,1,5202,1 
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
>>|cRXP_WARN_Escort |cRXP_FRIENDLY_Arko'narin|r through Shadow Hold. Once you approach the final |cRXP_PICK_Brazier|r, 3 |cRXP_ENEMY_Felguards|r will spawn which you will have to deal with|r
>>|cRXP_WARN_After exiting Shadow Hold, you will need to kill the |cRXP_ENEMY_Spirit of Trey Lightforge|r. Let |cRXP_FRIENDLY_Arko'narin|r tank him as much as possible|r
.complete 5203,1 
.target Arko'narin
.mob Spirit of Trey Lightforge
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
.goto Felwood,51.3,82.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5165 >> Turn in Dousing the Flames of Protection
.target Greta Mosshoof
.accept 5242 >> Accept A Final Blow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
.turnin 5203 >> Turn in Rescue From Jaedenar
.target Jessir Moonbow
.accept 5204 >> Accept Retribution of the Light
step
.goto Felwood,38.499,50.414
>>Go deep into the Shadow Hold. Kill |cRXP_ENEMY_Rakaiah|r
.complete 5204,1 
step
.goto Felwood,38.499,50.414
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remains of Trey Lightforge|r
.turnin 5204 >> Turn in Retribution of the Light
.target Remains of Trey Lightforge
.accept 5385 >> Accept The Remains of Trey Lightforge
step
.goto Felwood,38.9,46.8
>>Dive deeper into the Shadow Hold. Kill |cRXP_ENEMY_Moora|r and |cRXP_ENEMY_Salia|r. Kill |cRXP_LOOT_Fel'dan|r and loot him for his |cRXP_LOOT_Head|r
.complete 5242,1 
.complete 5242,2 
.complete 5242,3 
step << skip 
.goto Felwood,49.73,31.25,120 >> Jump on top of the purple jar right next to the wall and logout to teleport to the Irontree Woods graveyard
.link https://www.twitch.tv/videos/1219250841?t=02h06m57s >> Click here for video reference
step
#sticky
#label Droplets
.goto Felwood,50.0,24.7,0
>>Kill |cRXP_ENEMY_Water elementals|r for |cRXP_LOOT_Toxic Horror Droplets|r
.complete 5086,1 
.isOnQuest 5086
step
#completewith next
.goto Felwood,49.55,29.71,150 >> Travel to the Felwood graveyard
step
.goto Felwood,49.647,30.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arei|r
>>|cRXP_WARN_Use the|r |T133942:0|t[Flute of the Ancients] |cRXP_WARN_once you are at the graveyard to summon|r |cRXP_FRIENDLY_Arei|r
.accept 4261 >> Accept Ancient Spirit
.target Arei
.use 11445
.itemcount 11445,1 
step
.isOnQuest 4261
>>Escort |cRXP_FRIENDLY_Arei|r to the road north. He will be attacked a few times along the way
.complete 4261,1 
.target Arei
step
#completewith next
.goto Felwood,65.48,3.47,20 >> Travel through Timbermaw Hold to |cRXP_FRIENDLY_Kernda|r
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernda|r
>>|cRXP_FRIENDLY_Kernda|r |cRXP_WARN_patrols the lower Timbermaw Hold path|r
.use 20741 >>|cRXP_WARN_Use the |T136232:0|t[|cRXP_LOOT_Deadwood Ritual Totem|r] to start the quest|r
>>Skip this step if you aren't neutral with Timbermaw Hold
.accept 8470 >> Accept Deadwood Ritual Totem
.turnin 8470 >> Turn in Deadwood Ritual Totem
.reputation 576,neutral,<0,1 
.itemcount 20741,1 
.target Kernda
step
.goto Felwood,65.692,2.810
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meilosh|r
>>Skip this step if you aren't friendly with Timbermaw Hold
.accept 6031 >> Accept Runecloth
.turnin 6031 >> Turn in Runecloth
.reputation 576,friendly,<0,1 
.itemcount 14047,30 
.target Meilosh
step
#completewith next
.goto Winterspring,27.736,34.499,20 >> Travel through Timbermaw Hold to |cRXP_FRIENDLY_Salfa|r in Winterspring
step
.goto Winterspring,27.736,34.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
.turnin 8465 >> Turn in Speak to Salfa
.target Salfa
.isOnQuest 8465
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 980 >> Turn in The New Springs
.accept 4842 >> Accept Strange Sources
.accept 5082 >> Accept Threat of the Winterfall
.target Donova Snowden
step
#sticky
#label furbolgs
.goto Winterspring,32.4,37.6,0
.goto Winterspring,30.6,35.8,70,0
.goto Winterspring,33.6,36.8,70,0
.goto Winterspring,39.4,43.8,70,0
.goto Winterspring,41.6,42.8
>>Kill |cRXP_ENEMY_Winterfall Pathfinders|r, |cRXP_ENEMY_Winterfall Den Watchers|r and |cRXP_ENEMY_Winterfall Totemics|r
.complete 5082,1 
.complete 5082,2 
.complete 5082,3 
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step << !Hunter
>>Kill |cRXP_ENEMY_Winterfall Furbolgs|r. Loot them for a |T134865:0|t[|cRXP_LOOT_Empty Firewater Flask|r]
.use 12771 >>|cRXP_WARN_Use the |T134865:0|t[|cRXP_LOOT_Empty Firewater Flask|r] to start the quest|r
.collect 12771,1,5083,1 
.accept 5083 >> Accept Winterfall Firewater
step << !Hunter
#requires furbolgs
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_Be ready to move away from |cRXP_FRIENDLY_Donova Snowden|r quickly as after you turn in Winterfall Runners, 3 |cRXP_ENEMY_Winterfall Ambushers|r will attack her location|r
.turnin 5082 >> Turn in Threat of the Winterfall
.turnin 5083 >> Turn in Winterfall Firewater
.accept 5084 >> Accept Falling to Corruption
.target Donova Snowden
step << !Hunter
#completewith next
.zone Felwood >> Run back to Felwood
step << !Hunter
.goto Felwood,64.769,8.131
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.accept 8461 >> Accept Deadwood of the North
.target Nafien
step << Mage
#season 2
#sticky
#completewith DeadwoodEnd
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
#completewith DeadwoodEnd
#label OrbScroll
#requires MysteryScroll
.train 440858,1
>>|cRXP_WARN_Use a|r |T135933:0|t[|cRXP_LOOT_Comprehension Charm|r] |cRXP_WARN_on the|r |T237446:0|t[|cRXP_LOOT_Mysterious Darnassian Scroll|r] |cRXP_WARN_to decipher it into the|r |T134937:0|t[|cRXP_LOOT_Deciphered Darnassian Scroll|r]
.collect 227797,1 
.use 211779
.use 227796
step << !Hunter
#sticky
#completewith next
.goto Felwood,62.61,10.12,70,0
.goto Felwood,62.73,7.31,70,0
.goto Felwood,61.33,7.46,70,0
.goto Felwood,59.79,5.92,70,0
>>Kill |cRXP_ENEMY_Deadwood Den Watchers|r, |cRXP_ENEMY_Deadwood Den Avengers|r and |cRXP_ENEMY_Deadwood Den Shamans|r
>>|cRXP_WARN_If you find the |T136232:0|t[|cRXP_LOOT_Deadwood Ritual Totem|r], don't start the quest from this item yet|r
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.mob Deadwood Den Watcher
.mob Deadwood Avenger
.mob Deadwood Shaman
step << !Hunter
.goto Felwood,60.204,5.841
>>Click the |cRXP_PICK_Deadwood Cauldron|r in the northern |cRXP_ENEMY_Furbolg|r camp
>>|cRXP_WARN_If you create an escape path, you can simply click the |cRXP_PICK_Deadwood Cauldron|r and then run away. You don't need to kill all surrounding|r |cRXP_ENEMY_Furbolgs|r
.turnin 5084 >> Turn in Falling to Corruption
.accept 5085 >> Accept Mystery Goo
step << Druid/Rogue
#season 2
.train 453698,1
.goto Felwood,62.8,7.5
>>|cRXP_WARN_Look for a red book in the marked location. It's in a camp next to|r |cRXP_ENEMY_Chieftain Bloodmaw|r |cRXP_WARN_Loot it for the rune|r
.collect 226416,1 
step << Druid/Rogue
#season 2
.train 453698,1
#completewith next
.train 453698 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Nature Specialization|r] to train |T132848:0|t[Nature Specialization]
.itemcount 226416,1
.use 226416
step << !Hunter
.goto Felwood,62.61,10.12,70,0
.goto Felwood,62.73,7.31,70,0
.goto Felwood,61.33,7.46,70,0
.goto Felwood,59.79,5.92,70,0
.goto Felwood,62.61,10.12
>>Kill |cRXP_ENEMY_Deadwood Den Watchers|r, |cRXP_ENEMY_Deadwood Den Avengers|r and |cRXP_ENEMY_Deadwood Den Shamans|r
>>|cRXP_WARN_If you find the |T136232:0|t[|cRXP_LOOT_Deadwood Ritual Totem|r], don't start the quest from this item yet|r
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.mob Deadwood Den Watcher
.mob Deadwood Avenger
.mob Deadwood Shaman
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
step << !Hunter
#label DeadwoodEnd
#requires OrbScroll << Mage
.goto Felwood,64.769,8.131
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8461 >> Turn in Deadwood of the North
.accept 8465 >> Accept Speak to Salfa
.target Nafien
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
>>|cRXP_WARN_If you have more than 5|r |T132926:0|t[Deadwood Headdress Feathers] |cRXP_WARN_you may turn them in for reputation with Timbermaw Hold|r
.dailyturnin 8467 >> Turn in Feathers for Nafien
.itemcount 21377,>5 
.target Nafien
step << !Hunter
#completewith next
.zone Felwood >> Run back to |cRXP_FRIENDLY_Donova|r in Winterspring
step << !Hunter
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5085 >> Turn in Mystery Goo
.accept 5086 >> Accept Toxic Horrors
.target Donova Snowden
step << !Hunter
#completewith next
.zone Felwood >> Run back to Felwood
step << Mage
#season 2
#sticky
#completewith HorrorDropletEnd
#label UnusualFlask
.train 440858,1
.goto Winterspring,55.0,22.0,0
>>Kill |cRXP_ENEMY_Irontree Stompers|r. Loot them for the |cRXP_LOOT_Unusual Flask|r
.collect 227924,1,84369,1 
.mob Irontree Stomper
step << !Hunter
#label HorrorDropletEnd
.goto Felwood,50.6,22.4,70,0
.goto Felwood,49.6,26.6,70,0
.goto Felwood,48.0,24.0,70,0
.goto Felwood,49.6,26.6
>>Kill |cRXP_ENEMY_Toxic Horrors|r. Loot them for their |cRXP_LOOT_Toxic Horror Droplets|r
.complete 5086,1 
.mob Toxic Horror
step
#completewith next
#requires UnusualFlask << Mage
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Winterspring,27.76,34.59
.zone Winterspring >> Travel to Winterspring via Timbermaw Hold
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
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5082 >> Turn in Threat of the Winterfall << Hunter
.turnin 5086 >> Turn in Toxic Horrors
.accept 5087 >> Accept Winterfall Runners
.target Donova Snowden
step
#sticky
#completewith end
>>Kill the |cRXP_ENEMY_Winterfall Runners|r. Loot them for their |cRXP_LOOT_Winterfall Crate|r
>>|cRXP_WARN_Their spawn point is on the west side of Winterspring near the Timbermaw tunnel. Their patrol route is marked on your map|r
>>|cRXP_WARN_You may complete this later if you can't find them now|r
.complete 5087,1 
.line Winterspring,28.07,35.29,28.02,36.46,28.32,37.14,28.47,37.92,28.53,39.39,28.80,39.76,29.32,40.86,29.91,42.27,30.44,42.54,31.65,42.44,32.60,42.17,33.59,41.99,34.67,41.91,36.04,42.16,38.21,41.98,40.23,40.75,42.32,39.97,44.29,39.90,46.45,39.66,48.38,38.86,49.19,38.15,49.35,37.79,49.65,37.59,50.57,36.63,51.67,36.21,52.25,35.75,52.75,35.30,53.46,34.27,53.75,33.38,53.93,32.50,53.97,31.32,54.60,30.91,55.51,30.05,57.14,29.72,58.07,28.93,58.74,27.94,59.01,26.99,59.24,26.48,60.37,25.02,60.62,24.75,61.11,24.44,61.29,24.35,61.92,23.82,62.34,23.92,62.37,24.95,62.21,25.30,62.60,25.99,63.04,26.55,63.50,27.81,63.95,28.34,64.12,28.94,64.10,30.84,64.21,31.40,64.97,33.08,65.44,33.48,66.44,33.71,66.63,33.93,66.80,34.47,66.87,34.87,66.97,35.22,67.53,37.01,68.12,37.76,68.65,38.20,68.76,38.13,68.94,37.84,69.29,38.40,69.61,38.29
.unitscan Winterfall Runner
step
.goto Winterspring,32.8,44.3,70,0
.goto Winterspring,37.4,44.2,70,0
.goto Winterspring,40.5,37.5,70,0
.goto Winterspring,43.6,42.6,70,0
.goto Winterspring,45.9,41.6,70,0
.goto Winterspring,47.9,45.1,70,0
.goto Winterspring,50.5,38.0,70,0
.goto Winterspring,60.6,33.7
>>Loot |cRXP_LOOT_Moontouched Feathers|r on the ground
.complete 978,1
.isOnQuest 978
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r and |cRXP_FRIENDLY_Jaron Stoneshaper|r
.turnin 5250 >> Turn in Starfall
.accept 5244 >> Accept The Ruins of Kel'Theril
.goto Winterspring,51.971,30.387
.turnin 5244 >> Turn in The Ruins of Kel'Theril
.accept 5245 >> Accept Troubled Spirits of Kel'Theril
.accept 4861 >> Accept Enraged Wildkin
.goto Winterspring,52.139,30.429
.target Wynd Nightchaser
.target Jaron Stoneshaper
step
#label end
>>Click the |cRXP_PICK_Highborne Relic Fragments|r on the ground
.complete 5245,2
.goto Winterspring,50.88,41.71
.complete 5245,4
.goto Winterspring,52.42,41.50
.complete 5245,3
.goto Winterspring,53.30,43.43
.complete 5245,1
.goto Winterspring,55.13,42.98
]]);
