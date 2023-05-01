# Load Build
setblock 16000 48 16002 minecraft:redstone_block
setblock 16000 48 16002 minecraft:air

setblock 16000 48 15998 minecraft:redstone_block
setblock 16000 48 15998 minecraft:air

setblock 15998 48 16000 minecraft:redstone_block
setblock 15998 48 16000 minecraft:air

setblock 16002 48 16000 minecraft:redstone_block
setblock 16002 48 16000 minecraft:air

## Inception
# Red
summon item_display 16006 51 16055 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:2}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon item_display 16006 50 16030 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[180f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:2}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 16006 55 16055 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 16006 51.5 16030 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 16000 50.2 16031 {Radius:0.0f,Duration:2147483647,Tags:["game","red_spawn","spawn"],Rotation:[180f,0f]}
summon area_effect_cloud 16000 48 16052 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","red_hole"]}
fill 16000 41 16004 16000 49 16028 minecraft:red_stained_glass

fill 16002 63 16026 16008 56 16020 minecraft:red_wool replace minecraft:white_wool
fill 15993 49 16029 16007 59 16040 minecraft:red_concrete replace minecraft:white_concrete
fill 16007 56 16046 16006 55 16048 minecraft:red_wool replace minecraft:white_wool
fill 16000 44 16029 16000 41 16048 minecraft:red_stained_glass

# Blue
summon item_display 15994 51 15945 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[180f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:3}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon item_display 15994 50 15970 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:3}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 15994 55 15945 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 15994 51.5 15970 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 16000 50.2 15969 {Radius:0.0f,Duration:2147483647,Tags:["game","blue_spawn","spawn"],Rotation:[0f,0f]}
summon area_effect_cloud 16000 48 15948 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","blue_hole"]}
fill 16000 41 15996 16000 49 15972 minecraft:blue_stained_glass

fill 15998 63 15974 15992 56 15980 minecraft:blue_wool replace minecraft:white_wool
fill 16007 49 15971 15993 59 15960 minecraft:blue_concrete replace minecraft:white_concrete
fill 15993 56 15954 15994 55 15952 minecraft:blue_wool replace minecraft:white_wool
fill 16000 44 15971 16000 41 15952 minecraft:blue_stained_glass

# Green
summon item_display 15945 51 16006 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:4}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon item_display 15970 50 16006 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:4}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 15945 55 16006 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 15970 51.5 16006 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 15969 50.2 16000 {Radius:0.0f,Duration:2147483647,Tags:["game","green_spawn","spawn"],Rotation:[-90f,0f]}
summon area_effect_cloud 15948 48 16000 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","green_hole"]}
fill 15996 41 16000 15972 49 16000 minecraft:lime_stained_glass

fill 15974 63 16002 15980 56 16008 minecraft:lime_wool replace minecraft:white_wool
fill 15971 49 15993 15960 59 16007 minecraft:lime_concrete replace minecraft:white_concrete
fill 15954 56 16007 15952 55 16006 minecraft:lime_wool replace minecraft:white_wool
fill 15971 44 16000 15952 41 16000 minecraft:lime_stained_glass

# Yellow
summon item_display 16055 51 15994 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:5}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon item_display 16030 50 15994 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:5}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 16055 55 15994 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 16030 51.5 15994 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 16031 50.2 16000 {Radius:0.0f,Duration:2147483647,Tags:["game","yellow_spawn","spawn"],Rotation:[90f,0f]}
summon area_effect_cloud 16052 48 16000 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","yellow_hole"]}
fill 16004 41 16000 16028 49 16000 minecraft:yellow_stained_glass

fill 16026 63 15998 16020 56 15992 minecraft:yellow_wool replace minecraft:white_wool
fill 16029 49 16007 16040 59 15993 minecraft:yellow_concrete replace minecraft:white_concrete
fill 16046 56 15993 16048 55 15994 minecraft:yellow_wool replace minecraft:white_wool
fill 16029 44 16000 16048 41 16000 minecraft:yellow_stained_glass



# Misc
summon area_effect_cloud 16000 50 16000 {Radius:0.0f,Duration:2147483647,Tags:["game","middle"],Rotation:[-90f,0f]}
scoreboard players set void Arena 39

# hole color
execute as @e[tag=red_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:red_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=blue_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:blue_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=green_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:lime_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=yellow_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:yellow_glazed_terracotta replace minecraft:white_glazed_terracotta