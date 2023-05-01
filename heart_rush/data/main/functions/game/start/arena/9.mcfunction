# Load Build
setblock 15002 48 15000 minecraft:redstone_block
setblock 15002 48 15000 minecraft:air

setblock 14998 48 15000 minecraft:redstone_block
setblock 14998 48 15000 minecraft:air

setblock 15000 48 15002 minecraft:redstone_block
setblock 15000 48 15002 minecraft:air

setblock 15000 48 14998 minecraft:redstone_block
setblock 15000 48 14998 minecraft:air

## Woods of Mimicry
# Red
summon armor_stand 15035 58 14996 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[0f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:2}}]}
summon area_effect_cloud 15035 59.25 14996 {CustomName:'{"translate":"game.shop","color":"red"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 15044 63.2 15002 {Radius:0.0f,Duration:2147483647,Tags:["game","red_spawn","spawn"],Rotation:[90f,0f]}
summon area_effect_cloud 15043 47 14996 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","red_hole"]}
fill 15004 41 15000 15028 49 15000 minecraft:red_stained_glass

setblock 15025 54 15005 minecraft:red_wall_banner[facing=north]{Patterns:[]}
setblock 15033 54 14999 minecraft:red_wall_banner[facing=west]{Patterns:[]}
setblock 15035 54 14995 minecraft:red_wall_banner[facing=east]{Patterns:[]}
setblock 15042 55 15004 minecraft:red_wall_banner[facing=west]{Patterns:[]}
setblock 15034 56 15005 minecraft:red_wall_banner[facing=east]{Patterns:[]}
setblock 15040 59 15003 minecraft:red_wall_banner[facing=west]{Patterns:[]}
fill 15033 64 14993 15031 62 14990 minecraft:red_concrete replace minecraft:white_concrete

# Blue
summon armor_stand 14965 58 15004 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[180f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:3}}]}
summon area_effect_cloud 14965 59.25 15004 {CustomName:'{"translate":"game.shop","color":"blue"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 14956 63.2 14998 {Radius:0.0f,Duration:2147483647,Tags:["game","blue_spawn","spawn"],Rotation:[-90f,0f]}
summon area_effect_cloud 14957 47 15004 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","blue_hole"]}
fill 14996 41 15000 14972 49 15000 minecraft:blue_stained_glass

setblock 14975 54 14995 minecraft:blue_wall_banner[facing=south]{Patterns:[]}
setblock 14967 54 15001 minecraft:blue_wall_banner[facing=east]{Patterns:[]}
setblock 14965 54 15005 minecraft:blue_wall_banner[facing=west]{Patterns:[]}
setblock 14958 55 14996 minecraft:blue_wall_banner[facing=east]{Patterns:[]}
setblock 14966 56 14995 minecraft:blue_wall_banner[facing=west]{Patterns:[]}
setblock 14960 59 14997 minecraft:blue_wall_banner[facing=east]{Patterns:[]}
fill 14967 64 15007 14969 62 15010 minecraft:blue_concrete replace minecraft:white_concrete

# Green
summon armor_stand 15004 58 15035 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[90f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:4}}]}
summon area_effect_cloud 15004 59.5 15035 {CustomName:'{"translate":"game.shop","color":"green"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 14998 63.2 15044 {Radius:0.0f,Duration:2147483647,Tags:["game","green_spawn","spawn"],Rotation:[180f,0f]}
summon area_effect_cloud 15004 47 15043 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","green_hole"]}
fill 15000 49 15004 15000 41 15028 minecraft:lime_stained_glass

setblock 14995 54 15025 minecraft:lime_wall_banner[facing=east]{Patterns:[]}
setblock 15001 54 15033 minecraft:lime_wall_banner[facing=north]{Patterns:[]}
setblock 15005 54 15035 minecraft:lime_wall_banner[facing=south]{Patterns:[]}
setblock 14996 55 15042 minecraft:lime_wall_banner[facing=north]{Patterns:[]}
setblock 14995 56 15034 minecraft:lime_wall_banner[facing=south]{Patterns:[]}
setblock 14997 59 15040 minecraft:lime_wall_banner[facing=north]{Patterns:[]}
fill 15007 64 15033 15010 62 15031 minecraft:lime_concrete replace minecraft:white_concrete

# Yellow
summon armor_stand 14996 58 14965 {NoGravity:1b,Invisible:1,Marker:1,Invulnerable:1b,Tags:["ender_chest","game","blink"],Attributes:[{Name:generic.knockback_resistance,Base:10000}],Rotation:[-90f,0f],ArmorItems:[{},{},{},{id:"emerald",Count:1,tag:{CustomModelData:5}}]}
summon area_effect_cloud 14996 59.5 14965 {CustomName:'{"translate":"game.shop","color":"yellow"}',CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["game","shopName"]}
summon area_effect_cloud 15002 63.2 14956 {Radius:0.0f,Duration:2147483647,Tags:["game","yellow_spawn","spawn"],Rotation:[0f,0f]}
summon area_effect_cloud 14996 47 14957 {Radius:0.0f,Duration:2147483647,Tags:["game","hole","yellow_hole"]}
fill 15000 49 14996 15000 41 14972 minecraft:yellow_stained_glass

setblock 15005 54 14975 minecraft:yellow_wall_banner[facing=west]{Patterns:[]}
setblock 14999 54 14967 minecraft:yellow_wall_banner[facing=south]{Patterns:[]}
setblock 14995 54 14965 minecraft:yellow_wall_banner[facing=north]{Patterns:[]}
setblock 15004 55 14958 minecraft:yellow_wall_banner[facing=south]{Patterns:[]}
setblock 15005 56 14966 minecraft:yellow_wall_banner[facing=north]{Patterns:[]}
setblock 15003 59 14960 minecraft:yellow_wall_banner[facing=south]{Patterns:[]}
fill 14993 64 14967 14990 62 14969 minecraft:yellow_concrete replace minecraft:white_concrete

# Misc
summon area_effect_cloud 15000 50 15000 {Radius:0.0f,Duration:2147483647,Tags:["game","middle"],Rotation:[-90f,0f]}
scoreboard players set void Arena 39

# hole color
execute as @e[tag=red_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:red_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=blue_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:blue_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=green_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:lime_glazed_terracotta replace minecraft:white_glazed_terracotta
execute as @e[tag=yellow_hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:yellow_glazed_terracotta replace minecraft:white_glazed_terracotta