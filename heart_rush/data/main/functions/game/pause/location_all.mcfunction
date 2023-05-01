execute as @a[gamemode=adventure] at @e[tag=middle] run tp @s ~ 201 ~
execute as @a[gamemode=adventure] run scoreboard players operation @s pid2 = @s pid
execute as @a[gamemode=adventure,scores={pid=2..}] run function main:game/pause/adjust