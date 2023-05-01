kill @e[tag=lobby]
schedule function main:lobby/update_signs 30s

## Team Selection
# Red Sel
#summon minecraft:armor_stand 9953 104.55 10005 {ArmorItems:[{},{},{},{id:"red_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9952 104.55 10005 {ArmorItems:[{},{},{},{id:"red_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9951 104.55 10005 {ArmorItems:[{},{},{},{id:"red_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9953 104.55 10006 {ArmorItems:[{},{},{},{id:"red_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9952 104.55 10006 {ArmorItems:[{},{},{},{id:"red_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9951 104.55 10006 {ArmorItems:[{},{},{},{id:"red_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
summon minecraft:area_effect_cloud 9952.5 105.5 10006.0 {Tags:["lobby","lobbyTeamName"],CustomName:'{"translate":"lobby.join.red","color":"red"}',CustomNameVisible:1,Radius:0.0f,Duration:2147483647}
# Yellow Sel
#summon minecraft:armor_stand 9953 104.55 10002 {ArmorItems:[{},{},{},{id:"yellow_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9952 104.55 10002 {ArmorItems:[{},{},{},{id:"yellow_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9951 104.55 10002 {ArmorItems:[{},{},{},{id:"yellow_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9953 104.55 10003 {ArmorItems:[{},{},{},{id:"yellow_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9952 104.55 10003 {ArmorItems:[{},{},{},{id:"yellow_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9951 104.55 10003 {ArmorItems:[{},{},{},{id:"yellow_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
summon minecraft:area_effect_cloud 9952.5 105.5 10003.0 {Tags:["lobby","lobbyTeamName"],CustomName:'{"translate":"lobby.join.yellow","color":"yellow"}',CustomNameVisible:1,Radius:0.0f,Duration:2147483647}
# Green Sel
#summon minecraft:armor_stand 9953 104.55 9999 {ArmorItems:[{},{},{},{id:"lime_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9952 104.55 9999 {ArmorItems:[{},{},{},{id:"lime_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9951 104.55 9999 {ArmorItems:[{},{},{},{id:"lime_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9953 104.55 10000 {ArmorItems:[{},{},{},{id:"lime_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9952 104.55 10000 {ArmorItems:[{},{},{},{id:"lime_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9951 104.55 10000 {ArmorItems:[{},{},{},{id:"lime_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
summon minecraft:area_effect_cloud 9952.5 105.5 10000.0 {Tags:["lobby","lobbyTeamName"],CustomName:'{"translate":"lobby.join.green","color":"green"}',CustomNameVisible:1,Radius:0.0f,Duration:2147483647}
# Blue Sel
#summon minecraft:armor_stand 9953 104.55 9996 {ArmorItems:[{},{},{},{id:"blue_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9952 104.55 9996 {ArmorItems:[{},{},{},{id:"blue_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9951 104.55 9996 {ArmorItems:[{},{},{},{id:"blue_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9953 104.55 9997 {ArmorItems:[{},{},{},{id:"blue_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9952 104.55 9997 {ArmorItems:[{},{},{},{id:"blue_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9951 104.55 9997 {ArmorItems:[{},{},{},{id:"blue_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
summon minecraft:area_effect_cloud 9952.5 105.5 9997.0 {Tags:["lobby","lobbyTeamName"],CustomName:'{"translate":"lobby.join.blue","color":"blue"}',CustomNameVisible:1,Radius:0.0f,Duration:2147483647}
# Spectator
#summon minecraft:armor_stand 9956 104.55 10003 {ArmorItems:[{},{},{},{id:"light_gray_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9955 104.55 10003 {ArmorItems:[{},{},{},{id:"light_gray_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9956 104.55 10002 {ArmorItems:[{},{},{},{id:"light_gray_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9955 104.55 10002 {ArmorItems:[{},{},{},{id:"light_gray_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9956 104.55 10000 {ArmorItems:[{},{},{},{id:"purple_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9955 104.55 10000 {ArmorItems:[{},{},{},{id:"purple_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9956 104.55 9999 {ArmorItems:[{},{},{},{id:"purple_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
#summon minecraft:armor_stand 9955 104.55 9999 {ArmorItems:[{},{},{},{id:"purple_wool",Count:1}],Marker:1,Invisible:1,Tags:["lobby","lobbyTeamBlock"]}
summon minecraft:area_effect_cloud 9956.0 105.5 10003.0 {Tags:["lobby","lobbyTeamName"],CustomName:'{"translate":"lobby.leave","color":"white"}',CustomNameVisible:1,Radius:0.0f,Duration:2147483647}
summon minecraft:area_effect_cloud 9956.0 105.5 10000.0 {Tags:["lobby","lobbyTeamName"],CustomName:'{"translate":"lobby.random","color":"dark_purple"}',CustomNameVisible:1,Radius:0.0f,Duration:2147483647}

## Start Button
summon minecraft:armor_stand 9948.06 106.06 10001 {ArmorItems:[{},{},{},{id:"oak_button",Count:1}],NoGravity:1,Marker:1,Invisible:1,Pose:{Head:[-90f,0f,0f]},Rotation:[-90f,0f],Tags:["lobby","lobbyButton"]}


# Shop
summon armor_stand 9982 106 9982 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","lobby","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-45f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:1}}]}
summon area_effect_cloud 9982 107.25 9982 {CustomName:'{"translate":"menu.main.title","color":"white"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["lobby","shopName"]}
summon armor_stand 9983 106 10017 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","lobby","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-135f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:1}}]}
summon area_effect_cloud 9983 107.25 10017 {CustomName:'{"translate":"menu.main.title","color":"white"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["lobby","shopName"]}
summon armor_stand 9958 106 10005 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","lobby","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-180f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:1}}]}
summon area_effect_cloud 9958 107.25 10005 {CustomName:'{"translate":"menu.main.title","color":"white"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["lobby","shopName"]}
summon armor_stand 9868 112 9986 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","lobby","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:1}}]}
summon area_effect_cloud 9868 113.25 9986 {CustomName:'{"translate":"menu.ingame.title","color":"white"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["lobby","shopName"]}


#Normal AS
summon armor_stand 10030 105 9999 {CustomName:'{"text":"McTsts","color":"green","bold":true}',CustomNameVisible:1,NoGravity:1b,ShowArms:1,Invulnerable:1,NoBasePlate:1,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1200639}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3312672}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4063037}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"_tsts_"}}],Tags:["lobby"],Rotation:[90f,0f],Pose:{LeftArm:[-20f,0f,-20f]},DisabledSlots:2039583}
summon armor_stand 10029 104.4 10010 {ShowArms:1b,NoBasePlate:1b,Tags:["lobby"],Pose:{LeftLeg:[-90f,-5f,10f],RightLeg:[-86f,5f,-10f],LeftArm:[75f,117f,0f],RightArm:[82f,235f,0f]},NoGravity:1,Invulnerable:1,Rotation:[120f,0f],DisabledSlots:2039583,CustomName:'{"text":"Asometric","color":"dark_red","bold":true}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:9920608}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:3947580}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:5270141}}},{id:"player_head",Count:1s,tag:{SkullOwner:"Asometric"}}],CustomNameVisible:1}
summon minecraft:armor_stand 10029.5 105.00 9988.5 {Rotation:[70.0f,0.0f],Pose:{RightArm:[45.0f,0.0f,0.0f],LeftArm:[-45.0f,0.0f,0.0f],LeftLeg:[45.0f,0.0f,0.0f],RightLeg:[-45.0f,0.0f,0.0f]},CustomNameVisible:1b,CustomNameVisible:1b,DisabledSlots:2039583,ShowArms:1,Invulnerable:1,NoBasePlate:1,Tags:["lobby"],CustomName:'{"text":"Gamerrizz","color":"blue","bold":true}',CustomNameVisible:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1541948}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6881280}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Gamerrizz"}}]}
summon minecraft:armor_stand 10031 106 10010 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{Body:[7f,0f,0f],Head:[25f,0f,0f],LeftLeg:[25f,0f,0f],LeftArm:[313f,0f,0f],RightArm:[321f,0f,0f]},CustomName:'{"text":"Ds43m","color":"red","bold":true}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:7697266}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:5526352}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:5789011}}},{id:"player_head",Count:1s,tag:{SkullOwner:"Ds43m"}}],DisabledSlots:4144959,Tags:["lobby"],Rotation:[112f,0f]}
summon minecraft:armor_stand 10030 105.4 9997 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{Head:[25f,0f,0f],LeftLeg:[278f,0f,0f],RightLeg:[286f,0f,0f],LeftArm:[278f,0f,0f],RightArm:[295f,0f,0f]},DisabledSlots:4144959,Rotation:[83f,0f],Tags:["lobby"],CustomName:'{"text":"RockNRed","color":"red","bold":true}',CustomNameVisible:1b,DisabledSlots:2039583,ShowArms:1,Invulnerable:1,NoBasePlate:1,Tags:["lobby"],ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:6961474}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:10239810}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:9327956}}},{id:"player_head",Count:1s,tag:{SkullOwner:"RockNRed"}}]}
summon minecraft:armor_stand 10032 106 9988 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{Body:[6f,19f,0f],Head:[0f,21f,0f],LeftLeg:[11f,27f,350f],RightLeg:[344f,29f,3f],LeftArm:[328f,332f,0f],RightArm:[292f,23f,7f]},CustomName:'{"text":"QKuroire","color":"dark_blue","bold":true}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:65794}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:7234}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:9408399}}},{id:"player_head",Count:1s,tag:{SkullOwner:"QKuroire"}}],DisabledSlots:4144959,Rotation:[45f,0f],HandItems:[{id:bricks,Count:1s}],Tags:["lobby"]}
summon minecraft:armor_stand 10031 105 10021 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{Body:[356f,161f,0f],LeftLeg:[342f,188f,0f],RightLeg:[342f,0f,0f],LeftArm:[336f,342f,0f],RightArm:[293f,360f,0f]},CustomName:'{"text":"CommandMaster","color":"dark_green","bold":true}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:0}}},{id:"player_head",Count:1s,tag:{SkullOwner:"thegreenpotato"}}],DisabledSlots:4144959,Rotation:[131f,0f],Tags:["lobby"]}
summon minecraft:armor_stand 10029 104.4 10022 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{RightArm:[199.0f,0.0f,331.0f],LeftLeg:[278.0f,0.0f,0.0f],Head:[7.0f,0.0f,0.0f],LeftArm:[339.0f,0.0f,0.0f],RightLeg:[286.0f,0.0f,0.0f]},CustomName:'{"text":"Jerozgen","color":"green","bold":true}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:15584696}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:4537668}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:14453511}}},{id:"player_head",Count:1s,tag:{SkullOwner:"Jerozgen"}}],DisabledSlots:4144959,Rotation:[140f,0f],Tags:["lobby"]}
summon minecraft:armor_stand 10030 104.4 10001 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{RightArm:[199.0f,0.0f,331.0f],LeftLeg:[278.0f,0.0f,0.0f],Head:[7.0f,0.0f,0.0f],LeftArm:[339.0f,0.0f,0.0f],RightLeg:[286.0f,0.0f,0.0f]},DisabledSlots:4144959,Rotation:[80f,0f],Tags:["lobby"],CustomName:'{"text":"gibbsly","color":"gray","bold":true}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:2105635}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:2371647}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:6513766}}},{id:"player_head",Count:1s,tag:{SkullOwner:"gibbsly"}}]}
summon minecraft:armor_stand 10030 104.7 9978 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:0b,NoBasePlate:1b,Pose:{RightArm:[288.0f,8.0f,262.0f],LeftLeg:[275.0f,0.0f,0.0f],LeftArm:[334.0f,0.0f,266.0f],RightLeg:[271.0f,0.0f,0.0f]},CustomName:'{"text":"AmberW","color":"yellow","bold":true}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:5929092}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:2895657}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:14657870}}},{id:"player_head",Count:1s,tag:{SkullOwner:"AmberW"}}],DisabledSlots:4144959,Rotation:[55f,0f],Tags:["lobby"],Small:1}
summon minecraft:armor_stand 10031 106.3 9976 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:0b,NoBasePlate:1b,Pose:{Head:[6f,0f,0f],LeftLeg:[37f,105f,0f],RightLeg:[322f,55f,0f],LeftArm:[132f,117f,0f],RightArm:[138f,254f,0f]},CustomName:'{"text":"JevinLevin","color":"yellow","bold":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:13941964}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:14404299}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:9402243}}},{id:"player_head",Count:1s,tag:{SkullOwner:"JevinLevin"}}],DisabledSlots:4144959,Rotation:[49f,0f],Tags:["lobby"],Small:1}
summon minecraft:armor_stand 10029 105 9976 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:0b,Small:1,NoBasePlate:1b,Pose:{Head:[12f,0f,0f],LeftLeg:[328f,0f,0f],RightLeg:[25f,0f,0f],LeftArm:[315f,12f,0f],RightArm:[25f,0f,0f]},CustomName:'{"text":"kruthers","color":"gold","bold":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:3684408}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:3752796}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:3883494}}},{id:"player_head",Count:1s,tag:{SkullOwner:"kruthers"}}],DisabledSlots:4144959,Rotation:[55f,0f],Small:1b,Tags:["lobby"]}
summon minecraft:armor_stand 10030 106 9975 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:0b,NoBasePlate:1b,Pose:{Body:[356f,161f,0f],LeftLeg:[342f,188f,0f],RightLeg:[342f,0f,0f],LeftArm:[336f,342f,0f],RightArm:[293f,360f,0f]},CustomName:'{"text":"federick90","color":"red","bold":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:1381653}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:15000804}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:12961221}}},{id:"player_head",Count:1s,tag:{SkullOwner:"federick90"}}],DisabledSlots:4144959,Rotation:[60f,0f],Small:1b,Tags:["lobby"]}
summon minecraft:armor_stand 10030 103 10007.7 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{LeftArm:[210f,0f,0f],RightArm:[227f,0f,0f],LeftLeg:[356f,0f,0f],RightLeg:[339f,0f,0f],Head:[-21f,0f,0f]},CustomName:'{"text":"5uso","color":"red","bold":true}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:5258803}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:1186852}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:5270141}}},{id:"player_head",Count:1s,tag:{SkullOwner:"5uso"}}],DisabledSlots:4144959,Rotation:[0f,0f],Tags:["lobby"]}
summon minecraft:armor_stand 10032 106 9977 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Pose:{},ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:4730405}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:8094354}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:4337710}}},{id:"player_head",Count:1s,tag:{SkullOwner:"AmyMialee"}}],DisabledSlots:4144959,Rotation:[70f,0f],Small:1b,Tags:["lobby"]}
summon minecraft:armor_stand 10028 105 9975 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Pose:{Head:[340f,0f,0f],LeftArm:[179f,0f,27f],RightArm:[181f,0f,330f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:7170666}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:4020859}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:4350036}}},{id:"player_head",Count:1s,tag:{SkullOwner:"Kragast"}}],DisabledSlots:4144959,Rotation:[70f,0f],Small:1b,Tags:["lobby"]}
summon minecraft:armor_stand 10030.34 105.00 9977.18 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Pose:{Head:[340f,0f,0f],LeftArm:[179f,0f,27f],RightArm:[181f,0f,330f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:263172}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:6644319}}},{id:"player_head",Count:1s,tag:{SkullOwner:"Vilder50"}}],DisabledSlots:4144959,Rotation:[66f,0f],Small:1b,Tags:["lobby"]}


#Tutorial AS
summon minecraft:armor_stand 9852.91 113.00 9999.41 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:0b,NoBasePlate:1b,Pose:{},CustomName:'{"text":"BartTheBart","color":"green","bold":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:6586468}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:1847068}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:1912084}}},{id:"player_head",Count:0s,tag:{SkullOwner:"BartTheBart"}}],DisabledSlots:4144959,Rotation:[-5f,0f],Small:1b,Tags:["lobby"],Pose:{Head:[6f,0f,0f],LeftLeg:[37f,105f,0f],RightLeg:[322f,55f,0f],LeftArm:[132f,117f,0f],RightArm:[138f,254f,0f]},Tags:["lobby"]}
summon minecraft:armor_stand 9867 112 9988 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:0b,NoBasePlate:1b,Pose:{Body:[356f,161f,0f],LeftLeg:[342f,188f,0f],RightLeg:[342f,0f,0f],LeftArm:[336f,342f,0f],RightArm:[293f,360f,0f]},CustomName:'{"text":"5uso","color":"green","bold":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:12878669}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:14133913}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:14526368}}},{id:"player_head",Count:0s,tag:{SkullOwner:"5uso"}}],DisabledSlots:4144959,Rotation:[-153f,0f],Small:1b,Tags:["lobby"]}
summon minecraft:armor_stand 9870 112 9988 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:0b,NoBasePlate:1b,Pose:{Body:[356f,161f,0f],LeftLeg:[342f,188f,0f],RightLeg:[342f,0f,0f],LeftArm:[336f,342f,0f],RightArm:[293f,360f,0f]},CustomName:'{"text":"5uso","color":"green","bold":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:12878669}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:14133913}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:14526368}}},{id:"player_head",Count:0s,tag:{SkullOwner:"5uso"}}],DisabledSlots:4144959,Rotation:[130f,0f],Small:1b,Tags:["lobby"]}
summon minecraft:armor_stand 9867 112 10016 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:0b,NoBasePlate:1b,Pose:{Body:[8f,0f,0f],Head:[11f,0f,0f],LeftLeg:[352f,319f,0f],RightLeg:[29f,50f,34f],LeftArm:[9f,15f,354f],RightArm:[276f,307f,89f]},CustomName:'{"text":"Chopper2112","color":"green","bold":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:5000268}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:4539459}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:9592876}}},{id:"player_head",Count:0s,tag:{SkullOwner:"Chopper2112"}}],DisabledSlots:4144959,Rotation:[-90f,0f],Small:1b,HandItems:[{id:bow,Count:1s},{id:arrow,Count:1s}],Tags:["lobby"]}
summon minecraft:armor_stand 9869 112 10016 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:0b,NoBasePlate:1b,Pose:{Body:[6f,19f,0f],Head:[0f,21f,0f],LeftLeg:[11f,27f,350f],RightLeg:[344f,29f,3f],LeftArm:[328f,332f,0f],RightArm:[292f,23f,7f]},CustomName:'{"text":"McTsts","color":"green","bold":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:5123}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:211978}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:6602258}}},{id:"player_head",Count:0s,tag:{SkullOwner:"_tsts_"}}],DisabledSlots:4144959,Rotation:[90f,0f],Small:1b,HandItems:[{id:iron_sword,Count:1s}],Tags:["lobby"]}
#Start AS
summon minecraft:armor_stand 9948 106 10004 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:0b,NoBasePlate:1b,Pose:{Body:[356f,161f,0f],LeftLeg:[342f,188f,0f],RightLeg:[342f,0f,0f],LeftArm:[336f,342f,0f],RightArm:[293f,360f,0f]},CustomName:'{"text":"federick90","color":"green","bold":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:1381653}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:15000804}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:12961221}}},{id:"player_head",Count:1s,tag:{SkullOwner:"federick90"}}],DisabledSlots:4144959,Rotation:[-110f,0f],Small:1b,HandItems:[{id:netherite_sword,tag:{CustomModelData:12},Count:1s},{id:shield,Count:1s}],Tags:["lobby"]}
summon minecraft:armor_stand 9948 106 9998 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,CustomNameVisible:0b,NoBasePlate:1b,Pose:{Body:[8f,0f,0f],Head:[11f,0f,0f],LeftLeg:[352f,319f,0f],RightLeg:[29f,50f,34f],LeftArm:[9f,15f,354f],RightArm:[276f,307f,89f]},CustomName:'{"text":"McTsts","color":"green","bold":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1s,tag:{display:{color:5123}}},{id:"minecraft:leather_leggings",Count:1s,tag:{display:{color:211978}}},{id:"minecraft:leather_chestplate",Count:1s,tag:{display:{color:6602258}}},{id:"player_head",Count:1s,tag:{SkullOwner:"_tsts_"}}],DisabledSlots:4144959,Rotation:[-50f,0f],Small:1b,HandItems:[{id:bow,Count:1s},{id:arrow,Count:1s}],Tags:["lobby"]}
function main:lobby/setup_skull


# Logo
summon minecraft:armor_stand 10035.0 119 9999 {CustomNameVisible:1,CustomName:'["",{"translate":"space.-2048"},{"text":"\\uE010","font":"logo"},{"translate":"space.-1"},{"text":"\\uE011","font":"logo"},{"translate":"space.-2048"}]',NoGravity:1,Invisible:1,Tags:["lobby"],Rotation:[90f,0f],NoAI:1,Silent:1b,Invulnerable:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}]}

# Misc
summon minecraft:area_effect_cloud 9990 104 10001 {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"lobby.direction.start","color":"gold"}',CustomNameVisible:1,Tags:["lobby"]}
#summon minecraft:area_effect_cloud 10003 104 10005 {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"lobby.direction.this_way","color":"gold"}',CustomNameVisible:1,Tags:["lobby"]}


# Reset Timer
scoreboard players set timer Stats -1

# Reset Armor
scoreboard players reset * lobbyArmor

# Bossbar
bossbar set rp players @a


# Tutorial Button
summon minecraft:armor_stand 9998 104.5 9997 {ArmorItems:[{},{},{},{id:"spruce_button",Count:1}],NoGravity:1,Marker:1,Invisible:1,Pose:{Head:[0f,0f,0f]},Rotation:[180f,0f],Tags:["lobby","tutorialButton"]}
summon minecraft:armor_stand 9865 112.5 10004 {ArmorItems:[{},{},{},{id:"spruce_button",Count:1}],NoGravity:1,Marker:1,Invisible:1,Pose:{Head:[0f,0f,0f]},Rotation:[180f,0f],Tags:["lobby","tutorialButton"]}
summon area_effect_cloud 9998 104.75 9997 {CustomName:'{"translate":"lobby.teleport.tutorial","color":"gold"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["lobby","tutorialText"]}
summon area_effect_cloud 9865 112.75 10004 {CustomName:'{"translate":"lobby.teleport.lobby","color":"gold"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["lobby","tutorialText"]}

#Tutorial Middle
summon minecraft:area_effect_cloud 9859 114.0 10001 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"text":"Heart","color":"red","bold":true,"underlined":true}," ",{"translate":"lobby.tutorial.1.title","color":"dark_red"}," ",{"text":"Rush","color":"red","bold":true,"underlined":true}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9859 113.5 10001 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.1.1","color":"white","with":[{"translate":"lobby.tutorial.1.s1","color":"dark_red"},{"translate":"lobby.tutorial.1.s2","color":"red"},{"translate":"lobby.tutorial.1.s3","color":"dark_red"},{"translate":"lobby.tutorial.1.s4","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9859 113.2 10001 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.1.2","color":"white","with":[{"translate":"lobby.tutorial.1.s1","color":"dark_red"},{"translate":"lobby.tutorial.1.s2","color":"red"},{"translate":"lobby.tutorial.1.s3","color":"dark_red"},{"translate":"lobby.tutorial.1.s4","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9859 112.9 10001 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.1.3","color":"white","with":[{"translate":"lobby.tutorial.1.s1","color":"dark_red"},{"translate":"lobby.tutorial.1.s2","color":"red"},{"translate":"lobby.tutorial.1.s3","color":"dark_red"},{"translate":"lobby.tutorial.1.s4","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9859 112.6 10001 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.1.4","color":"white","with":[{"translate":"lobby.tutorial.1.s1","color":"dark_red"},{"translate":"lobby.tutorial.1.s2","color":"red"},{"translate":"lobby.tutorial.1.s3","color":"dark_red"},{"translate":"lobby.tutorial.1.s4","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9859 112.3 10001 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.1.5","color":"white","with":[{"translate":"lobby.tutorial.1.s1","color":"dark_red"},{"translate":"lobby.tutorial.1.s2","color":"red"},{"translate":"lobby.tutorial.1.s3","color":"dark_red"},{"translate":"lobby.tutorial.1.s4","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9859 112.0 10001 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.1.6","color":"white","with":[{"translate":"lobby.tutorial.1.s1","color":"dark_red"},{"translate":"lobby.tutorial.1.s2","color":"red"},{"translate":"lobby.tutorial.1.s3","color":"dark_red"},{"translate":"lobby.tutorial.1.s4","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}

#Tutorial Right 
summon minecraft:area_effect_cloud 9868 114.0 9992 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.2.title","color":"dark_blue","with":[{"translate":"lobby.tutorial.2.title.s1","color":"blue","bold":true,"underlined":true},{"translate":"lobby.tutorial.2.title.s2","color":"blue","bold":true,"underlined":true}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 113.5 9992 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.2.1","color":"white","with":[{"translate":"lobby.tutorial.2.s1","color":"gray"},{"translate":"lobby.tutorial.2.s2","color":"gray"},{"translate":"lobby.tutorial.2.s3","color":"blue"},{"translate":"lobby.tutorial.2.s4","color":"blue"},{"translate":"lobby.tutorial.2.s5","color":"gold"},{"translate":"lobby.tutorial.2.s6","color":"gold"},{"translate":"lobby.tutorial.2.s7","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 113.2 9992 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.2.2","color":"white","with":[{"translate":"lobby.tutorial.2.s1","color":"gray"},{"translate":"lobby.tutorial.2.s2","color":"gray"},{"translate":"lobby.tutorial.2.s3","color":"blue"},{"translate":"lobby.tutorial.2.s4","color":"blue"},{"translate":"lobby.tutorial.2.s5","color":"gold"},{"translate":"lobby.tutorial.2.s6","color":"gold"},{"translate":"lobby.tutorial.2.s7","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 112.9 9992 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.2.3","color":"white","with":[{"translate":"lobby.tutorial.2.s1","color":"gray"},{"translate":"lobby.tutorial.2.s2","color":"gray"},{"translate":"lobby.tutorial.2.s3","color":"blue"},{"translate":"lobby.tutorial.2.s4","color":"blue"},{"translate":"lobby.tutorial.2.s5","color":"gold"},{"translate":"lobby.tutorial.2.s6","color":"gold"},{"translate":"lobby.tutorial.2.s7","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 112.6 9992 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.2.4","color":"white","with":[{"translate":"lobby.tutorial.2.s1","color":"gray"},{"translate":"lobby.tutorial.2.s2","color":"gray"},{"translate":"lobby.tutorial.2.s3","color":"blue"},{"translate":"lobby.tutorial.2.s4","color":"blue"},{"translate":"lobby.tutorial.2.s5","color":"gold"},{"translate":"lobby.tutorial.2.s6","color":"gold"},{"translate":"lobby.tutorial.2.s7","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 112.3 9992 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.2.5","color":"white","with":[{"translate":"lobby.tutorial.2.s1","color":"gray"},{"translate":"lobby.tutorial.2.s2","color":"gray"},{"translate":"lobby.tutorial.2.s3","color":"blue"},{"translate":"lobby.tutorial.2.s4","color":"blue"},{"translate":"lobby.tutorial.2.s5","color":"gold"},{"translate":"lobby.tutorial.2.s6","color":"gold"},{"translate":"lobby.tutorial.2.s7","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 112.0 9992 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.2.6","color":"white","with":[{"translate":"lobby.tutorial.2.s1","color":"gray"},{"translate":"lobby.tutorial.2.s2","color":"gray"},{"translate":"lobby.tutorial.2.s3","color":"blue"},{"translate":"lobby.tutorial.2.s4","color":"blue"},{"translate":"lobby.tutorial.2.s5","color":"gold"},{"translate":"lobby.tutorial.2.s6","color":"gold"},{"translate":"lobby.tutorial.2.s7","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}
#summon minecraft:area_effect_cloud 9868 111.7 9992 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.2.7","color":"white","with":[{"translate":"lobby.tutorial.2.s1","color":"gray"},{"translate":"lobby.tutorial.2.s2","color":"gray"},{"translate":"lobby.tutorial.2.s3","color":"blue"},{"translate":"lobby.tutorial.2.s4","color":"blue"},{"translate":"lobby.tutorial.2.s5","color":"gold"},{"translate":"lobby.tutorial.2.s6","color":"gold"},{"translate":"lobby.tutorial.2.s7","color":"gold"}]}]',CustomNameVisible:1,Tags:["lobby"]}

#Tutorial Left
summon minecraft:area_effect_cloud 9868 114.0 10010 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.3.title","color":"gold","bold":true,"underlined":true}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 113.5 10010 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.3.1","color":"white","with":[{"translate":"lobby.tutorial.3.s1","color":"gray"},{"translate":"lobby.tutorial.3.s2","color":"gray"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 113.2 10010 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.3.2","color":"white","with":[{"translate":"lobby.tutorial.3.s1","color":"gray"},{"translate":"lobby.tutorial.3.s2","color":"gray"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 112.9 10010 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.3.3","color":"white","with":[{"translate":"lobby.tutorial.3.s1","color":"gray"},{"translate":"lobby.tutorial.3.s2","color":"gray"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 112.6 10010 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.3.4","color":"white","with":[{"translate":"lobby.tutorial.3.s1","color":"gray"},{"translate":"lobby.tutorial.3.s2","color":"gray"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 112.3 10010 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.3.5","color":"white","with":[{"translate":"lobby.tutorial.3.s1","color":"gray"},{"translate":"lobby.tutorial.3.s2","color":"gray"}]}]',CustomNameVisible:1,Tags:["lobby"]}
summon minecraft:area_effect_cloud 9868 112.0 10010 {Radius:0.0f,Duration:2147483647,CustomName:'["",{"translate":"lobby.tutorial.3.6","color":"white","with":[{"translate":"lobby.tutorial.3.s1","color":"gray"},{"translate":"lobby.tutorial.3.s2","color":"gray"}]}]',CustomNameVisible:1,Tags:["lobby"]}

#Tuts
summon minecraft:armor_stand 9873 111.5 10012 {NoGravity:1,Invisible:1,Silent:1b,Invulnerable:1,ArmorItems:[{},{},{},{id:"clay_ball",Count:1}],Tags:["lobby","tut1","tut"],Rotation:[-90f,0f]}
summon minecraft:armor_stand 9863 111.5 10012 {NoGravity:1,Invisible:1,Silent:1b,Invulnerable:1,ArmorItems:[{},{},{},{id:"clay_ball",Count:1}],Tags:["lobby","tut1","tut"],Rotation:[-90f,0f]}
summon minecraft:armor_stand 9857 111.5 10006 {NoGravity:1,Invisible:1,Silent:1b,Invulnerable:1,ArmorItems:[{},{},{},{id:"melon_seeds",Count:1}],Tags:["lobby","tut2","tut"],Rotation:[0f,0f]}
summon minecraft:armor_stand 9857 111.5 9996 {NoGravity:1,Invisible:1,Silent:1b,Invulnerable:1,ArmorItems:[{},{},{},{id:"melon_seeds",Count:1}],Tags:["lobby","tut2","tut"],Rotation:[0f,0f]}
summon minecraft:armor_stand 9863 111.5 9990 {NoGravity:1,Invisible:1,Silent:1b,Invulnerable:1,ArmorItems:[{},{},{},{id:"magenta_dye",Count:1}],Tags:["lobby","tut3","tut"],Rotation:[90f,0f]}
summon minecraft:armor_stand 9873 111.5 9990 {NoGravity:1,Invisible:1,Silent:1b,Invulnerable:1,ArmorItems:[{},{},{},{id:"magenta_dye",Count:1}],Tags:["lobby","tut3","tut"],Rotation:[90f,0f]}

# Secret Signs
data merge block 9998 99 10000 {Text1:'{"color":"gray","clickEvent":{"action":"run_command","value":"/function main:lobby/secret/1"},"text":"-=-=-=-=-=-=-=-"}',Text2:'{"bold":true,"color":"green","translate":"lobby.secret.armor"}',Text3:'{"color":"light_purple","text":"(1/5)"}',Text4:'{"italic":true,"color":"gray","translate":"lobby.secret.click"}'}
data merge block 10031 102 9999 {Text1:'{"color":"gray","clickEvent":{"action":"run_command","value":"/function main:lobby/secret/2"},"text":"-=-=-=-=-=-=-=-"}',Text2:'{"bold":true,"color":"blue","translate":"lobby.secret.armor"}',Text3:'{"color":"light_purple","text":"(2/5)"}',Text4:'{"italic":true,"color":"gray","translate":"lobby.secret.click"}'}
data merge block 10008 119 9991 {Text1:'{"color":"gray","clickEvent":{"action":"run_command","value":"/function main:lobby/secret/3"},"text":"-=-=-=-=-=-=-=-"}',Text2:'{"bold":true,"color":"red","translate":"lobby.secret.armor"}',Text3:'{"color":"light_purple","text":"(3/5)"}',Text4:'{"italic":true,"color":"gray","translate":"lobby.secret.click"}'}
data merge block 9995 97 9999 {Text1:'{"color":"gray","clickEvent":{"action":"run_command","value":"/function main:lobby/secret/4"},"text":"-=-=-=-=-=-=-=-"}',Text2:'{"bold":true,"color":"yellow","translate":"lobby.secret.armor"}',Text3:'{"color":"light_purple","text":"(4/5)"}',Text4:'{"italic":true,"color":"gray","translate":"lobby.secret.click"}'}
data merge block 9854 107 10001 {Text1:'{"color":"gray","clickEvent":{"action":"run_command","value":"/function main:lobby/secret/5"},"text":"-=-=-=-=-=-=-=-"}',Text2:'{"bold":true,"color":"dark_purple","translate":"lobby.secret.armor"}',Text3:'{"color":"light_purple","text":"(5/5)"}',Text4:'{"italic":true,"color":"gray","translate":"lobby.secret.click"}'}