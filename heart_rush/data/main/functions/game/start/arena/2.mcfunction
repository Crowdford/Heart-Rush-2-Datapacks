# Load Build
setblock 4001 49 4002 minecraft:redstone_block
setblock 4001 49 4002 minecraft:air

setblock 4001 49 3998 minecraft:redstone_block
setblock 4001 49 3998 minecraft:air

setblock 4003 49 4000 minecraft:redstone_block
setblock 4003 49 4000 minecraft:air

setblock 3999 49 4000 minecraft:redstone_block
setblock 3999 49 4000 minecraft:air

## Ocean Shrine
# Red
summon armor_stand 3998 53 3964 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-135f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:2}}]}
summon armor_stand 4004 53 3964 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[135f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:2}}]}
summon area_effect_cloud 3998 54.25 3964 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 4004 54.25 3964 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 4001 57.2 3962 {Radius:0.0f,Duration:2147483647,Tags:["game","red_spawn","spawn"],Rotation:[0f,0f]}
summon area_effect_cloud 4001 44 3960 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","red_hole"]}
fill 4001 50 3996 4001 42 3972 minecraft:red_stained_glass

# Blue
summon armor_stand 3998 53 4036 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-45f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:3}}]}
summon armor_stand 4004 53 4036 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[45f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:3}}]}
summon area_effect_cloud 3998 54.25 4036 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 4004 54.25 4036 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 4001 57.2 4038 {Radius:0.0f,Duration:2147483647,Tags:["game","blue_spawn","spawn"],Rotation:[180f,0f]}
summon area_effect_cloud 4001 44 4040 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","blue_hole"]}
fill 4001 50 4004 4001 42 4028 minecraft:blue_stained_glass

# Green
summon armor_stand 4037 53 3997 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-45f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:4}}]}
summon armor_stand 4037 53 4003 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-135f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:4}}]}
summon area_effect_cloud 4037 54.25 3997 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 4037 54.25 4003 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 4039 57.2 4000 {Radius:0.0f,Duration:2147483647,Tags:["game","green_spawn","spawn"],Rotation:[90f,0f]}
summon area_effect_cloud 4041 44 4000 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","green_hole"]}
fill 4005 50 4000 4029 42 4000 minecraft:lime_stained_glass

# Yellow
summon armor_stand 3965 53 3997 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[45f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:5}}]}
summon armor_stand 3965 53 4003 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[135f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:5}}]}
summon area_effect_cloud 3965 54.25 3997 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 3965 54.25 4003 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 3963 57.2 4000 {Radius:0.0f,Duration:2147483647,Tags:["game","yellow_spawn","spawn"],Rotation:[-90f,0f]}
summon area_effect_cloud 3961 44 4000 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","yellow_hole"]}
fill 3997 50 4000 3973 42 4000 minecraft:yellow_stained_glass

# Misc
summon area_effect_cloud 4001 45 4000 {Radius:0.0f,Duration:2147483647,Tags:["game","middle"],Rotation:[-90f,0f]}
scoreboard players set void Arena 35

# hole color
execute as @e[tag=red_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:red_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=blue_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:blue_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=green_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:lime_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=yellow_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:yellow_glazed_terracotta replace minecraft:white_glazed_terracotta