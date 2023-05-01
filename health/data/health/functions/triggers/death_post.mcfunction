scoreboard players reset @s killstreak
scoreboard players reset @s pointstreak
scoreboard players add @s mvpDeaths 1
execute as @a[tag=healthAssist] run function main:game/assist
execute as @a[tag=healthKill] run function main:game/kill
tag @a remove healthKill
tag @a remove healthAssist
gamemode adventure @s
execute at @s run function #skills:events/player/respawn/start
gamemode spectator @s
bossbar set minecraft:3 players @a[nbt={ActiveEffects:[{Id:31b}]}]

# Defenseless Mode
execute if score timer Stats matches 14000.. if score defenseless options matches 1 run scoreboard players add @s respawn 80
scoreboard players operation respawn Temp = timer Stats
scoreboard players remove respawn Temp 14000
scoreboard players operation respawn Temp /= #60 respawn
execute if score respawn Temp matches 1.. if score defenseless options matches 1 run scoreboard players operation @s respawn += respawn Temp

# remove health ui
title @s actionbar ""

# remove tag
tag @a remove healthKilled