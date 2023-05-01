kill @e[tag=lobby_skull]
summon minecraft:armor_stand 9852.91 113.00 9999.41 {Silent:1b,NoGravity:1b,Marker:0b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{},CustomName:'{"text":"BartTheBart","color":"green","bold":false}',ArmorItems:[{},{},{},{id:"player_head",Count:1s,tag:{SkullOwner:"BartTheBart"}}],DisabledSlots:4144959,Rotation:[-5f,0f],Small:1b,Tags:["lobby"],Pose:{Head:[6f,0f,0f],LeftLeg:[37f,105f,0f],RightLeg:[322f,55f,0f],LeftArm:[132f,117f,0f],RightArm:[138f,254f,0f]},Tags:["lobby","lobby_skull"],Glowing:1,Team:"dark_aqua"}
summon minecraft:armor_stand 9867 112 9988 {Silent:1b,NoGravity:1b,Marker:0b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{Body:[356f,161f,0f],LeftLeg:[342f,188f,0f],RightLeg:[342f,0f,0f],LeftArm:[336f,342f,0f],RightArm:[293f,360f,0f]},CustomName:'{"text":"5uso","color":"green","bold":false}',ArmorItems:[{},{},{},{id:"player_head",Count:1s,tag:{SkullOwner:"5uso"}}],DisabledSlots:4144959,Rotation:[-153f,0f],Small:1b,Tags:["lobby","lobby_skull"],Invisible:1,Glowing:1,Team:"dark_aqua"}
summon minecraft:armor_stand 9867 112 10016 {Silent:1b,NoGravity:1b,Marker:0b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{Body:[8f,0f,0f],Head:[11f,0f,0f],LeftLeg:[352f,319f,0f],RightLeg:[29f,50f,34f],LeftArm:[9f,15f,354f],RightArm:[276f,307f,89f]},CustomName:'{"text":"Chopper2112","color":"green","bold":false}',ArmorItems:[{},{},{},{id:"player_head",Count:1s,tag:{SkullOwner:"Chopper2112"}}],DisabledSlots:4144959,Rotation:[-90f,0f],Small:1b,Tags:["lobby","lobby_skull"],Glowing:1,Team:"dark_aqua"}
summon minecraft:armor_stand 9869 112 10016 {Silent:1b,NoGravity:1b,Marker:0b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{Body:[6f,19f,0f],Head:[0f,21f,0f],LeftLeg:[11f,27f,350f],RightLeg:[344f,29f,3f],LeftArm:[328f,332f,0f],RightArm:[292f,23f,7f]},CustomName:'{"text":"McTsts","color":"green","bold":false}',ArmorItems:[{},{},{},{id:"player_head",Count:1s,tag:{SkullOwner:"_tsts_"}}],DisabledSlots:4144959,Rotation:[90f,0f],Small:1b,Tags:["lobby","lobby_skull"],Glowing:1,Team:"dark_aqua"}
summon minecraft:armor_stand 9870 112 9988 {Silent:1b,NoGravity:1b,Marker:0b,Invulnerable:1b,CustomNameVisible:1b,NoBasePlate:1b,Pose:{Body:[356f,161f,0f],LeftLeg:[342f,188f,0f],RightLeg:[342f,0f,0f],LeftArm:[336f,342f,0f],RightArm:[293f,360f,0f]},CustomName:'{"text":"5uso","color":"green","bold":false}',ArmorItems:[{},{},{},{id:"player_head",Count:1s,tag:{SkullOwner:"5uso"}}],DisabledSlots:4144959,Rotation:[130f,0f],Small:1b,Tags:["lobby","lobby_skull"],Invisible:1,Glowing:1,Team:"dark_aqua"}

scoreboard players set r Random 3
function main:util/random
execute if score n Random matches 1 run team join dark_aqua @e[tag=lobby_skull]
execute if score n Random matches 2 run team join dark_gray @e[tag=lobby_skull]
execute if score n Random matches 3 run team join light_purple @e[tag=lobby_skull]

tag @a add skullNotChosen

execute as @e[tag=lobby_skull,sort=random] at @s run function main:lobby/skull/one