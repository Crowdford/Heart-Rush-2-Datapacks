scoreboard players remove block Temp 1
clear @s red_mushroom_block 1
clear @s brown_mushroom_block 1
clear @s acacia_leaves 1
clear @s mushroom_stem 1
execute if score block Temp matches 2.. run function main:game/block/clear_rec