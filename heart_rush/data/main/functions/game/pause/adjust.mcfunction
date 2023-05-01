execute at @s run tp @s ~ ~ ~1
scoreboard players remove @s pid2 1
execute if score @s pid2 matches 2.. run function main:game/pause/adjust