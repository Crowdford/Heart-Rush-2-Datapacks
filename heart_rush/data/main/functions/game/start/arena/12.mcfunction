# Load Build
setblock 18002 48 18000 minecraft:redstone_block
setblock 18002 48 18000 minecraft:air

setblock 17998 48 18000 minecraft:redstone_block
setblock 17998 48 18000 minecraft:air

setblock 18000 48 18002 minecraft:redstone_block
setblock 18000 48 18002 minecraft:air

setblock 18000 48 17998 minecraft:redstone_block
setblock 18000 48 17998 minecraft:air

## river
# Red
summon item_display 18088 50 17995 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:2}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 18088 51.25 17995 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon item_display 18031 50 18004 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:2}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 18031 51.25 18004 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 18047 50.2 18000 {Radius:0.0f,Duration:2147483647,Tags:["game","red_spawn","spawn"],Rotation:[90f,0f]}
summon area_effect_cloud 18083 47 17995 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","red_hole"]}
fill 18004 49 18000 18028 41 18000 minecraft:red_stained_glass
fill 18004 40 18000 18028 40 18000 minecraft:air

fill 18029 49 17981 18075 57 18011 minecraft:red_concrete replace minecraft:white_concrete
fill 18029 49 17981 18075 57 18011 minecraft:red_stained_glass_pane replace minecraft:white_stained_glass_pane
fill 18029 49 17981 18075 57 18016 minecraft:red_carpet replace minecraft:white_carpet
fill 18029 49 17981 18075 57 18016 minecraft:pink_carpet replace minecraft:light_gray_carpet

# Blue
summon item_display 17912 50 18005 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:3}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 17912 51.25 18005 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon item_display 17969 50 17996 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[180f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:3}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 17969 51.25 17996 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 17953 50.2 18000 {Radius:0.0f,Duration:2147483647,Tags:["game","blue_spawn","spawn"],Rotation:[-90f,0f]}
summon area_effect_cloud 17917 47 18005 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","blue_hole"]}
fill 17996 49 18000 17972 41 18000 minecraft:blue_stained_glass
fill 17996 40 18000 17972 40 18000 minecraft:air

fill 17971 49 18019 17925 57 17989 minecraft:blue_concrete replace minecraft:white_concrete
fill 17971 49 18019 17925 57 17989 minecraft:blue_stained_glass_pane replace minecraft:white_stained_glass_pane
fill 17971 49 18019 17925 57 17984 minecraft:blue_carpet replace minecraft:white_carpet
fill 17971 49 18019 17925 57 17984 minecraft:light_blue_carpet replace minecraft:light_gray_carpet

# Green
summon item_display 18005 50 18088 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:4}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 18005 51.25 18088 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon item_display 17996 50 18031 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:4}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 17996 51.25 18031 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 18000 50.2 18047 {Radius:0.0f,Duration:2147483647,Tags:["game","green_spawn","spawn"],Rotation:[180f,0f]}
summon area_effect_cloud 18005 47 18083 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","green_hole"]}
fill 18000 49 18004 18000 41 18028 minecraft:lime_stained_glass
fill 18000 40 18004 18000 40 18028 minecraft:air

fill 18019 49 18029 17989 57 18075 minecraft:lime_concrete replace minecraft:white_concrete
fill 18019 49 18029 17989 57 18075 minecraft:lime_stained_glass_pane replace minecraft:white_stained_glass_pane
fill 18019 49 18029 17984 57 18075 minecraft:lime_carpet replace minecraft:white_carpet
fill 18019 49 18029 17984 57 18075 minecraft:green_carpet replace minecraft:light_gray_carpet

# Yellow
summon item_display 17995 50 17912 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[180f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:5}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 17995 51.25 17912 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon item_display 18004 50 17969 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:5}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 18004 51.25 17969 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 18000 50.2 17953 {Radius:0.0f,Duration:2147483647,Tags:["game","yellow_spawn","spawn"],Rotation:[0f,0f]}
summon area_effect_cloud 17995 47 17917 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","yellow_hole"]}
fill 18000 49 17996 18000 41 17972 minecraft:yellow_stained_glass
fill 18000 40 17996 18000 40 17972 minecraft:air

fill 17981 49 17971 18011 57 17925 minecraft:yellow_concrete replace minecraft:white_concrete
fill 17981 49 17971 18011 57 17925 minecraft:yellow_stained_glass_pane replace minecraft:white_stained_glass_pane
fill 17981 49 17971 18016 57 17925 minecraft:yellow_carpet replace minecraft:white_carpet
fill 17981 49 17971 18016 57 17925 minecraft:orange_carpet replace minecraft:light_gray_carpet


# Misc
summon area_effect_cloud 18000 50 18000 {Radius:0.0f,Duration:2147483647,Tags:["game","middle"],Rotation:[-90f,0f]}
scoreboard players set void Arena 39

# hole color
execute as @e[tag=red_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:red_glazed_terracotta replace minecraft:white_concrete
execute as @e[tag=blue_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:blue_glazed_terracotta replace minecraft:white_concrete
execute as @e[tag=green_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:lime_glazed_terracotta replace minecraft:white_concrete
execute as @e[tag=yellow_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:yellow_glazed_terracotta replace minecraft:white_concrete