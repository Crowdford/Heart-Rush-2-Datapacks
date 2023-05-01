function health:death/respawn

execute at @e[tag=middle] run tp @s ~ 201 ~
scoreboard players operation @s pid2 = @s pid
execute as @s[scores={pid=2..}] run function main:game/pause/adjust