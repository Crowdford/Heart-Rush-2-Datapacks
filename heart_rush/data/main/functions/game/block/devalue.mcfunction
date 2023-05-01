execute if block ~ ~ ~ red_mushroom_block run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ red_mushroom_block run function main:game/block/broke
execute if block ~ ~ ~ brown_mushroom_block run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ brown_mushroom_block run function main:game/block/broke
execute if block ~ ~ ~ acacia_leaves run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ acacia_leaves run function main:game/block/broke
execute if block ~ ~ ~ mushroom_stem run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ mushroom_stem run function main:game/block/broke
execute if block ~ ~ ~ red_stained_glass run setblock ~ ~ ~ red_mushroom_block destroy
execute if block ~ ~ ~ red_stained_glass run function main:game/block/devalued
execute if block ~ ~ ~ blue_stained_glass run setblock ~ ~ ~ brown_mushroom_block destroy
execute if block ~ ~ ~ blue_stained_glass run function main:game/block/devalued
execute if block ~ ~ ~ lime_stained_glass run setblock ~ ~ ~ acacia_leaves destroy
execute if block ~ ~ ~ lime_stained_glass run function main:game/block/devalued
execute if block ~ ~ ~ yellow_stained_glass run setblock ~ ~ ~ mushroom_stem destroy
execute if block ~ ~ ~ yellow_stained_glass run function main:game/block/devalued
kill @e[type=item,distance=..1,sort=nearest,limit=1]
