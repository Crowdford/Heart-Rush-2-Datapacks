fill ~-140 ~ ~-140 ~0 ~ ~0 air replace #main:breakable
fill ~-140 ~ ~-140 ~0 ~ ~0 air replace bee_nest
fill ~-140 ~ ~-140 ~0 ~ ~0 air replace command_block
fill ~-140 ~ ~-140 ~0 ~ ~0 air replace #main:all[waterlogged=true]
fill ~-140 ~ ~-140 ~0 ~ ~0 air replace water

fill ~-140 ~ ~140 ~0 ~ ~0 air replace #main:breakable
fill ~-140 ~ ~140 ~0 ~ ~0 air replace bee_nest
fill ~-140 ~ ~140 ~0 ~ ~0 air replace command_block
fill ~-140 ~ ~140 ~0 ~ ~0 air replace #main:all[waterlogged=true]
fill ~-140 ~ ~140 ~0 ~ ~0 air replace water

fill ~140 ~ ~-140 ~0 ~ ~0 air replace #main:breakable
fill ~140 ~ ~-140 ~0 ~ ~0 air replace bee_nest
fill ~140 ~ ~-140 ~0 ~ ~0 air replace command_block
fill ~140 ~ ~-140 ~0 ~ ~0 air replace #main:all[waterlogged=true]
fill ~140 ~ ~-140 ~0 ~ ~0 air replace water

fill ~140 ~ ~140 ~0 ~ ~0 air replace #main:breakable
fill ~140 ~ ~140 ~0 ~ ~0 air replace bee_nest
fill ~140 ~ ~140 ~0 ~ ~0 air replace command_block
fill ~140 ~ ~140 ~0 ~ ~0 air replace #main:all[waterlogged=true]
fill ~140 ~ ~140 ~0 ~ ~0 air replace water

scoreboard players add remove_blocks Temp 1

execute unless score remove_blocks Temp matches 250.. positioned ~ ~1 ~ run function main:game/remove_blocks

# LEGACY BLOCK REMOVAL INCLUDED