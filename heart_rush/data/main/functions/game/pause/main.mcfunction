# Respawn
execute as @a[scores={respawn=1..}] run function main:game/pause/force_respawn

# Timer
scoreboard players remove pause Stats 1
scoreboard players operation sec Temp = pause Stats
scoreboard players add sec Temp 10
scoreboard players operation sec Temp /= 20 Const
title @a times 0 10 0
title @a title [{"text":"|  ","color":"gray"},{"translate":"game.pause.timer","color":"dark_aqua","with":[[{"nbt":"colors[0]","storage":"sbc:timer","interpret":true},{"score":{"name":"sec","objective":"Temp"}}]]},{"text":"  |","color":"gray"}]
title @a[gamemode=adventure] subtitle [{"text":"|  ","color":"gray"},{"translate":"game.pause.player","color":"gold"},{"text":"  |","color":"gray"}]
title @a[gamemode=spectator] subtitle [{"text":"|  ","color":"gray"},{"translate":"game.pause.spectator","color":"gold"},{"text":"  |","color":"gray"}]
data remove storage sbc:timer colors[0]

# End
execute if score pause Stats matches 0 run function main:game/pause/end


# spec death
execute as @a[gamemode=spectator] at @s positioned ~ -100 ~ if entity @s[distance=..100] run function main:game/spawn

kill @e[type=arrow]
kill @e[type=ender_pearl]
tp @e[type=trident] @e[tag=middle,limit=1]