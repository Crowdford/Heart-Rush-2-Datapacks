# Tags
tag @s add item_registered
execute if data entity @s Item.tag{no_drop:1b} run kill @s
execute unless data entity @s Item.tag{no_drop:1b} if data entity @s Thrower run function main:game/item_handle

execute if data entity @s Item{id:"minecraft:red_wool"} at @s run function main:game/block/broke
execute if data entity @s Item{id:"minecraft:blue_wool"} at @s run function main:game/block/broke
execute if data entity @s Item{id:"minecraft:lime_wool"} at @s run function main:game/block/broke
execute if data entity @s Item{id:"minecraft:yellow_wool"} at @s run function main:game/block/broke

execute if data entity @s Item{id:"minecraft:red_terracotta"} at @s run setblock ~ ~ ~ red_mushroom_block
execute if data entity @s Item{id:"minecraft:red_terracotta"} at @s run function main:game/block/devalued
execute if data entity @s Item{id:"minecraft:blue_terracotta"} at @s run setblock ~ ~ ~ brown_mushroom_block
execute if data entity @s Item{id:"minecraft:blue_terracotta"} at @s run function main:game/block/devalued
execute if data entity @s Item{id:"minecraft:lime_terracotta"} at @s run setblock ~ ~ ~ acacia_leaves
execute if data entity @s Item{id:"minecraft:lime_terracotta"} at @s run function main:game/block/devalued
execute if data entity @s Item{id:"minecraft:yellow_terracotta"} at @s run setblock ~ ~ ~ mushroom_stem
execute if data entity @s Item{id:"minecraft:yellow_terracotta"} at @s run function main:game/block/devalued