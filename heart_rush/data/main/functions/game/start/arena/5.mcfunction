## Industrial Factory
# Red
summon armor_stand 12919 44 12998 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[45f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:2}}]}
summon area_effect_cloud 12919 45.25 12998 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 12912 47.2 13000 {Radius:0.0f,Duration:2147483647,Tags:["game","red_spawn","spawn"],Rotation:[-90f,0f]}
summon area_effect_cloud 12916 41 12996 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","red_hole"]}
fill 12958 43 13001 12933 34 13001 minecraft:red_stained_glass

# Blue
summon armor_stand 13005 44 13004 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-135f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:3}}]}
summon area_effect_cloud 13005 45.25 13004 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 13012 47.2 13002 {Radius:0.0f,Duration:2147483647,Tags:["game","blue_spawn","spawn"],Rotation:[90f,0f]}
summon area_effect_cloud 13008 41 13006 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","blue_hole"]}
fill 12966 43 13001 12991 34 13001 minecraft:blue_stained_glass

# Green
summon armor_stand 12965 44 12958 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[135f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:4}}]}
summon area_effect_cloud 12965 45.25 12958 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 12963 47.2 12951 {Radius:0.0f,Duration:2147483647,Tags:["game","green_spawn","spawn"],Rotation:[0f,0f]}
summon area_effect_cloud 12967 41 12955 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","green_hole"]}
fill 12962 43 12997 12962 34 12972 minecraft:lime_stained_glass

# Yellow
summon armor_stand 12959 44 13044 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-45f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:5}}]}
summon area_effect_cloud 12959 45.25 13044 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 12961 47.2 13051 {Radius:0.0f,Duration:2147483647,Tags:["game","yellow_spawn","spawn"],Rotation:[180f,0f]}
summon area_effect_cloud 12957 41 13047 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","yellow_hole"]}
fill 12962 43 13005 12962 34 13030 minecraft:yellow_stained_glass

# Misc
summon area_effect_cloud 12962 44 13001 {Radius:0.0f,Duration:2147483647,Tags:["game","middle"],Rotation:[-90f,0f]}
scoreboard players set void Arena 30