scoreboard players operation starting Temp = starting Stats
scoreboard players set clicked Stats 30
function main:lobby/start/button/on
execute if score starting Temp matches 0 run function main:lobby/start/start
execute if score starting Temp matches 1 run function main:lobby/start/cancel