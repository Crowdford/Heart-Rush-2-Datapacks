scoreboard players remove timer Stats 1

scoreboard players operation sec Temp = timer Stats
scoreboard players operation sec Temp /= 20 Const
scoreboard players operation mod Temp = timer Stats
scoreboard players operation mod Temp %= 20 Const
execute if score mod Temp matches 0 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.5
scoreboard players add sec Temp 1
title @a times 0 20 0
title @a title [{"nbt":"colors[0]","storage":"sbc:timer","interpret":true},{"score":{"name":"sec","objective":"Temp"}}]
data remove storage sbc:timer colors[0]
execute if score timer Stats matches 0 run function main:lobby/start/start_game