effect clear @a[gamemode=adventure] blindness

scoreboard players set game Stats 1
execute as @a[gamemode=adventure] run function main:game/spawn

title @a times 0 20 20
title @a title [{"text":"|  ","color":"gray"},{"translate":"game.pause.continuing","color":"gold"},{"text":"  |","color":"gray"}]
title @a subtitle [{"text":"|  ","color":"gray"},{"translate":"game.pause.resuming","color":"gold"},{"text":"  |","color":"gray"}]

execute as @p[scores={gotPoint=1}] at @s run function #skills:events/player/on_point
execute at @p[scores={gotPoint=1}] as @a run function #skills:events/generic/point