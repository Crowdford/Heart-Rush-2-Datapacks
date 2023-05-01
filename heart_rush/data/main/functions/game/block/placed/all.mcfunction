execute store result score y Temp run data get entity @s Pos[1]
scoreboard players remove y Temp 30
execute if score y Temp > void Arena run setblock ~ ~ ~ air
execute unless score y Temp > void Arena if entity @s[team=red] run setblock ~ ~ ~ red_mushroom_block
execute unless score y Temp > void Arena if entity @s[team=blue] run setblock ~ ~ ~ brown_mushroom_block
execute unless score y Temp > void Arena if entity @s[team=green] run setblock ~ ~ ~ acacia_leaves
execute unless score y Temp > void Arena if entity @s[team=yellow] run setblock ~ ~ ~ mushroom_stem
execute unless score y Temp > void Arena run function #skills:events/player/block/place

