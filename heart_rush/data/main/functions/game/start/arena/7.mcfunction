# Load Arena 
setblock 12002 49 12000 minecraft:redstone_block
setblock 12002 49 12000 minecraft:air

setblock 11998 49 12000 minecraft:redstone_block
setblock 11998 49 12000 minecraft:air

setblock 12000 49 12002 minecraft:redstone_block
setblock 12000 49 12002 minecraft:air

setblock 12000 49 11998 minecraft:redstone_block
setblock 12000 49 11998 minecraft:air

## Technicolor Cargo
# Red
summon item_display 12047 54 12000 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:2}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 12047 55.25 12000 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 12036 58 12000 {Radius:0.0f,Duration:2147483647,Tags:["game","red_spawn","spawn"],Rotation:[90f,0f]}
summon area_effect_cloud 12036 40 12000 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","red_hole"]}
fill 12004 50 12000 12028 42 12000 minecraft:red_stained_glass

fill 12030 37 11978 12050 53 12022 minecraft:red_concrete replace minecraft:white_concrete
fill 12030 42 11978 12050 53 12022 minecraft:pink_stained_glass replace minecraft:white_stained_glass
fill 12030 42 11978 12050 53 12022 minecraft:red_stained_glass_pane replace minecraft:white_stained_glass_pane

# Blue
summon item_display 11953 54 12000 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:3}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 11953 55.25 12000 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 11964 58 12000 {Radius:0.0f,Duration:2147483647,Tags:["game","blue_spawn","spawn"],Rotation:[-90f,0f]}
summon area_effect_cloud 11964 40 12000 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","blue_hole"]}
fill 11996 50 12000 11972 42 12000 minecraft:blue_stained_glass

fill 11950 53 11978 11970 37 12022 minecraft:blue_concrete replace minecraft:white_concrete
fill 11950 53 11978 11970 42 12022 minecraft:cyan_stained_glass replace minecraft:white_stained_glass
fill 11950 53 11978 11970 42 12022 minecraft:blue_stained_glass_pane replace minecraft:white_stained_glass_pane

# Green
summon item_display 12000 54 12047 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:4}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 12000 55.25 12047 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 12000 58 12036 {Radius:0.0f,Duration:2147483647,Tags:["game","green_spawn","spawn"],Rotation:[180f,0f]}
summon area_effect_cloud 12000 40 12036 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","green_hole"]}
fill 12000 50 12004 12000 42 12028 minecraft:lime_stained_glass

fill 12022 37 12030 11978 53 12050 minecraft:lime_concrete replace minecraft:white_concrete
fill 12022 42 12030 11978 53 12050 minecraft:brown_stained_glass replace minecraft:white_stained_glass
fill 12022 42 12030 11978 53 12050 minecraft:lime_stained_glass_pane replace minecraft:white_stained_glass_pane

# Yellow
summon item_display 12000 54 11953 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[180f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:5}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 12000 55.25 11953 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 12000 58 11964 {Radius:0.0f,Duration:2147483647,Tags:["game","yellow_spawn","spawn"],Rotation:[0f,0f]}
summon area_effect_cloud 12000 40 11964 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","yellow_hole"]}
fill 12000 50 11996 12000 42 11972 minecraft:yellow_stained_glass

fill 11978 37 11970 12022 53 11950 minecraft:yellow_concrete replace minecraft:white_concrete
fill 11978 42 11970 12022 53 11950 minecraft:purple_stained_glass replace minecraft:white_stained_glass
fill 11978 42 11970 12022 53 11950 minecraft:yellow_stained_glass_pane replace minecraft:white_stained_glass_pane

# Misc
summon area_effect_cloud 12000 51 12000 {Radius:0.0f,Duration:2147483647,Tags:["game","middle"],Rotation:[-90f,0f]}
scoreboard players set void Arena 35

# hole color
execute as @e[tag=red_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:red_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=blue_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:blue_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=green_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:lime_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=yellow_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:yellow_glazed_terracotta replace minecraft:white_glazed_terracotta