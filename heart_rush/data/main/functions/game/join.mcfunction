function effectstack:join

execute as @s run attribute @s minecraft:generic.max_health base set 80
effect give @s minecraft:instant_health 1 120 true
scoreboard players set @s maxHealth 20


scoreboard players operation @s edgeK = #time edgeK

# parse name
function main:game/name_parse

function suso.mw:rewarn