## EVERLASTING WINTER
# Red
summon armor_stand 4972 34 5002 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:2}}]}
summon area_effect_cloud 4972 35.25 5002 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 4965 41.2 5004 {Radius:0.0f,Duration:2147483647,Tags:["game","red_spawn","spawn"],Rotation:[-90f,0f]}
summon area_effect_cloud 4962 32 5004 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","red_hole"]}
fill 5000 32 5004 4976 23 5004 minecraft:red_stained_glass

# Blue
summon armor_stand 5036 34 5006 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[180f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:3}}]}
summon area_effect_cloud 5036 35.25 5006 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 5043 41.2 5004 {Radius:0.0f,Duration:2147483647,Tags:["game","blue_spawn","spawn"],Rotation:[90f,0f]}
summon area_effect_cloud 5046 32 5004 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","blue_hole"]}
fill 5008 32 5004 5032 23 5004 minecraft:blue_stained_glass

# Green
summon armor_stand 5002 34 5036 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-90f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:4}}]}
summon area_effect_cloud 5002 35.25 5036 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 5004 41.2 5043 {Radius:0.0f,Duration:2147483647,Tags:["game","green_spawn","spawn"],Rotation:[180f,0f]}
summon area_effect_cloud 5004 32 5046 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","green_hole"]}
fill 5004 32 5008 5004 23 5032 minecraft:lime_stained_glass

# Yellow
summon armor_stand 5006 34 4972 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[90f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:5}}]}
summon area_effect_cloud 5006 35.25 4972 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 5004 41.2 4965 {Radius:0.0f,Duration:2147483647,Tags:["game","yellow_spawn","spawn"],Rotation:[0f,0f]}
summon area_effect_cloud 5004 32 4962 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","yellow_hole"]}
fill 5004 32 5000 5004 23 4976 minecraft:yellow_stained_glass

# Misc
summon area_effect_cloud 5004 33 5004 {Radius:0.0f,Duration:2147483647,Tags:["game","middle"],Rotation:[-90f,0f]}
scoreboard players set void Arena 20

# Special
fill 5007 32 5007 5001 23 5001 minecraft:white_terracotta replace minecraft:packed_ice
fill 5007 32 5010 5001 30 4998 air replace ice
fill 4998 32 5001 5010 30 5007 air replace ice
fill 5000 32 5008 5008 30 5000 air replace ice