## Western Fortress
# Red
summon item_display 11945 34 1151 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[180f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:2}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 11945 35.25 1151 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 11945 42.2 1145 {Radius:0.0f,Duration:2147483647,Tags:["game","red_spawn","spawn"],Rotation:[0f,0f]}
summon area_effect_cloud 11945 30 1140 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","red_hole"]}
fill 11945 33 1156 11945 24 1180 minecraft:red_stained_glass

# Blue
summon item_display 11945 34 1217 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:3}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 11945 35.25 1217 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 11945 42.2 1223 {Radius:0.0f,Duration:2147483647,Tags:["game","blue_spawn","spawn"],Rotation:[180f,0f]}
summon area_effect_cloud 11945 30 1228 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","blue_hole"]}
fill 11945 33 1212 11945 24 1188 minecraft:blue_stained_glass

# Green
summon item_display 11978 34 1184 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:4}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 11978 35.25 1184 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 11984 42.2 1184 {Radius:0.0f,Duration:2147483647,Tags:["game","green_spawn","spawn"],Rotation:[90f,0f]}
summon area_effect_cloud 11989 30 1184 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","green_hole"]}
fill 11973 33 1184 11949 24 1184 minecraft:lime_stained_glass

# Yellow
summon item_display 11912 34 1184 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[90f,0f],item:{id:"emerald",Count:1,tag:{CustomModelData:5}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon area_effect_cloud 11912 35.25 1184 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 11906 42.2 1184 {Radius:0.0f,Duration:2147483647,Tags:["game","yellow_spawn","spawn"],Rotation:[-90f,0f]}
summon area_effect_cloud 11901 30 1184 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","yellow_hole"]}
fill 11917 33 1184 11941 24 1184 minecraft:yellow_stained_glass

# Misc
summon area_effect_cloud 11945 34 1184 {Radius:0.0f,Duration:2147483647,Tags:["game","middle"],Rotation:[-90f,0f]}
scoreboard players set void Arena 20

# Special
fill 11911 34 1177 11911 37 1191 minecraft:air replace iron_bars
fill 11938 34 1150 11952 37 1150 minecraft:air replace iron_bars
fill 11979 34 1177 11979 37 1191 minecraft:air replace iron_bars
fill 11952 34 1218 11938 37 1218 minecraft:air replace iron_bars