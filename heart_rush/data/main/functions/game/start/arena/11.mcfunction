# Load Build
setblock 17002 48 17000 minecraft:redstone_block
setblock 17002 48 17000 minecraft:air

setblock 16998 48 17000 minecraft:redstone_block
setblock 16998 48 17000 minecraft:air

setblock 17000 48 17002 minecraft:redstone_block
setblock 17000 48 17002 minecraft:air

setblock 17000 48 16998 minecraft:redstone_block
setblock 17000 48 16998 minecraft:air

## Inception
# Red
summon item_display 17040 49 17013 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:2}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 17040 50.25 17013 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 17040 54.2 17009 {Radius:0.0f,Duration:2147483647,Tags:["game","red_spawn","spawn"],Rotation:[180f,0f]}
summon area_effect_cloud 17040 46 16997 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","red_hole"]}
fill 17004 49 17000 17028 41 17000 minecraft:red_stained_glass

fill 17036 55 17016 17044 66 16990 minecraft:red_wool replace minecraft:white_wool


# Blue
summon item_display 16960 49 16987 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[180f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:3}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 16960 50.25 16987 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 16960 54.2 16991 {Radius:0.0f,Duration:2147483647,Tags:["game","blue_spawn","spawn"],Rotation:[0f,0f]}
summon area_effect_cloud 16960 46 17003 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","blue_hole"]}
fill 16996 49 17000 16972 41 17000 minecraft:blue_stained_glass

fill 16964 55 16984 16956 66 17010 minecraft:blue_wool replace minecraft:white_wool

# Green
summon item_display 16987 49 17040 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:4}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 16987 50.25 17040 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 16991 54.2 17040 {Radius:0.0f,Duration:2147483647,Tags:["game","green_spawn","spawn"],Rotation:[-90f,0f]}
summon area_effect_cloud 17003 46 17040 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","green_hole"]}
fill 17000 49 17004 17000 41 17028 minecraft:lime_stained_glass

fill 16984 55 17036 17010 66 17044 minecraft:lime_wool replace minecraft:white_wool

# Yellow
summon item_display 17013 49 16960 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:5}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 17013 50.25 16960 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 17009 54.2 16960 {Radius:0.0f,Duration:2147483647,Tags:["game","yellow_spawn","spawn"],Rotation:[90f,0f]}
summon area_effect_cloud 16997 46 16960 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","yellow_hole"]}
fill 17000 49 16996 17000 40 16972 minecraft:yellow_stained_glass

fill 17016 55 16964 16990 66 16956 minecraft:yellow_wool replace minecraft:white_wool


# Misc
summon area_effect_cloud 17000 50 17000 {Radius:0.0f,Duration:2147483647,Tags:["game","middle"],Rotation:[-90f,0f]}
scoreboard players set void Arena 39

# hole color
execute as @e[tag=red_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:red_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=blue_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:blue_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=green_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:lime_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=yellow_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:yellow_glazed_terracotta replace minecraft:white_glazed_terracotta