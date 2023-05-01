scoreboard players add count particles 1

particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 1 force

execute unless score count particles matches 45.. positioned as @s positioned ~ ~0.25 ~ rotated ~4 ~30 run function main:sphere/offset1