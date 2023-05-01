# Load Arena 
setblock 5998 49 6000 minecraft:redstone_block
setblock 5998 49 6000 minecraft:air

setblock 6002 49 6000 minecraft:redstone_block
setblock 6002 49 6000 minecraft:air

setblock 6000 49 5998 minecraft:redstone_block
setblock 6000 49 5998 minecraft:air

setblock 6000 49 6002 minecraft:redstone_block
setblock 6000 49 6002 minecraft:air

## Ancient Ruins
# Red
summon item_display 5966 53 5996 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[180f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:2}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 5966 54.25 5996 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 5963 59.2 6000 {Radius:0.0f,Duration:2147483647,Tags:["game","red_spawn","spawn"],Rotation:[-90f,0f]}
summon area_effect_cloud 5962 50 6000 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","red_hole"]}
fill 5996 50 6000 5972 44 6000 minecraft:red_stained_glass

# Blue
summon item_display 6034 53 6004 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:3}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 6034 54.25 6004 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 6037 59.2 6000 {Radius:0.0f,Duration:2147483647,Tags:["game","blue_spawn","spawn"],Rotation:[90f,0f]}
summon area_effect_cloud 6038 50 6000 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","blue_hole"]}
fill 6004 50 6000 6028 44 6000 minecraft:blue_stained_glass

# Green
summon item_display 6004 53 5966 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:4}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 6004 54.25 5966 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 6000 59.2 5963 {Radius:0.0f,Duration:2147483647,Tags:["game","green_spawn","spawn"],Rotation:[0f,0f]}
summon area_effect_cloud 6000 50 5962 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","green_hole"]}
fill 6000 50 5996 6000 44 5972 minecraft:lime_stained_glass

# Yellow
summon item_display 5996 53 6034 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:5}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 5996 54.25 6034 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 6000 59.2 6037 {Radius:0.0f,Duration:2147483647,Tags:["game","yellow_spawn","spawn"],Rotation:[180f,0f]}
summon area_effect_cloud 6000 50 6038 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","yellow_hole"]}
fill 6000 50 6004 6000 44 6028 minecraft:yellow_stained_glass

# Misc
summon area_effect_cloud 6000 51 6000 {Radius:0.0f,Duration:2147483647,Tags:["game","middle"],Rotation:[-90f,0f]}
scoreboard players set void Arena 40

# hole color
execute as @e[tag=red_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:red_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=blue_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:blue_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=green_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:lime_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=yellow_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:yellow_glazed_terracotta replace minecraft:white_glazed_terracotta