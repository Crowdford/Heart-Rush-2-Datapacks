fill ~-140 ~ ~-140 ~0 ~ ~0 red_mushroom_block replace red_stained_glass
fill ~-140 ~ ~-140 ~0 ~ ~0 brown_mushroom_block replace blue_stained_glass
fill ~-140 ~ ~-140 ~0 ~ ~0 acacia_leaves replace lime_stained_glass
fill ~-140 ~ ~-140 ~0 ~ ~0 mushroom_stem replace yellow_stained_glass

fill ~-140 ~ ~140 ~0 ~ ~0 red_mushroom_block replace red_stained_glass
fill ~-140 ~ ~140 ~0 ~ ~0 brown_mushroom_block replace blue_stained_glass
fill ~-140 ~ ~140 ~0 ~ ~0 acacia_leaves replace lime_stained_glass
fill ~-140 ~ ~140 ~0 ~ ~0 mushroom_stem replace yellow_stained_glass

fill ~140 ~ ~-140 ~0 ~ ~0 red_mushroom_block replace red_stained_glass
fill ~140 ~ ~-140 ~0 ~ ~0 brown_mushroom_block replace blue_stained_glass
fill ~140 ~ ~-140 ~0 ~ ~0 acacia_leaves replace lime_stained_glass
fill ~140 ~ ~-140 ~0 ~ ~0 mushroom_stem replace yellow_stained_glass

fill ~140 ~ ~140 ~0 ~ ~0 red_mushroom_block replace red_stained_glass
fill ~140 ~ ~140 ~0 ~ ~0 brown_mushroom_block replace blue_stained_glass
fill ~140 ~ ~140 ~0 ~ ~0 acacia_leaves replace lime_stained_glass
fill ~140 ~ ~140 ~0 ~ ~0 mushroom_stem replace yellow_stained_glass

scoreboard players add remove_blocks Temp 1
execute unless score remove_blocks Temp matches 250.. run schedule function main:game/change_blocks2 20t
execute if score remove_blocks Temp matches 250.. run kill @e[tag=defenseless_as,type=armor_stand]

# LEGACY BLOCK REMOVAL INCLUDED
# No? - 2021/07 1.17 Ts