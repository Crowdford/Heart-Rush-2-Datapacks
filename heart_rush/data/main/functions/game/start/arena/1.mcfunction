# Load Build
setblock 3002 49 3000 minecraft:redstone_block
setblock 3002 49 3000 minecraft:air

setblock 2998 49 3000 minecraft:redstone_block
setblock 2998 49 3000 minecraft:air

setblock 3000 49 3002 minecraft:redstone_block
setblock 3000 49 3002 minecraft:air

setblock 3000 49 2998 minecraft:redstone_block
setblock 3000 49 2998 minecraft:air

## Olympus Paradise
# Red
summon armor_stand 3039 53 3004 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[180f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:2}}]}
summon area_effect_cloud 3039 54.25 3004 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 3037 58.2 3000 {Radius:0.0f,Duration:2147483647,Tags:["game","red_spawn","spawn"],Rotation:[90f,0f]}
summon area_effect_cloud 3039 50 3000 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","red_hole"]}
fill 3027 50 3000 3004 42 3000 minecraft:red_stained_glass

fill 3029 40 3008 3045 36 2992 minecraft:pink_stained_glass replace minecraft:white_stained_glass

# Blue
summon armor_stand 2961 53 2996 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:3}}]}
summon area_effect_cloud 2961 54.25 2996 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 2963 58.2 3000 {Radius:0.0f,Duration:2147483647,Tags:["game","blue_spawn","spawn"],Rotation:[-90f,0f]}
summon area_effect_cloud 2961 50 3000 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","blue_hole"]}
fill 2996 50 3000 2973 42 3000 minecraft:blue_stained_glass

fill 2971 40 2992 2955 36 3008 minecraft:cyan_stained_glass replace minecraft:white_stained_glass

# Green
summon armor_stand 2996 53 3039 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-90f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:4}}]}
summon area_effect_cloud 2996 54.25 3039 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 3000 58.2 3037 {Radius:0.0f,Duration:2147483647,Tags:["game","green_spawn","spawn"],Rotation:[180f,0f]}
summon area_effect_cloud 3000 50 3039 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","green_hole"]}
fill 3000 50 3004 3000 42 3027 minecraft:lime_stained_glass

fill 2992 40 3029 3008 36 3045 minecraft:brown_stained_glass replace minecraft:white_stained_glass

# Yellow
summon armor_stand 3004 53 2961 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[90f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:5}}]}
summon area_effect_cloud 3004 54.25 2961 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 3000 58.2 2963 {Radius:0.0f,Duration:2147483647,Tags:["game","yellow_spawn","spawn"],Rotation:[0f,0f]}
summon area_effect_cloud 3000 50 2961 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","yellow_hole"]}
fill 3000 50 2996 3000 42 2973 minecraft:yellow_stained_glass

fill 3008 40 2971 2992 36 2955 minecraft:purple_stained_glass replace minecraft:white_stained_glass

# Misc
summon area_effect_cloud 3000 51 3000 {Radius:0.0f,Duration:2147483647,Tags:["game","middle"],Rotation:[-90f,0f]}
scoreboard players set void Arena 40

# hole color
execute as @e[tag=red_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:red_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=blue_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:blue_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=green_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:lime_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=yellow_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:yellow_glazed_terracotta replace minecraft:white_glazed_terracotta