scoreboard players reset * beeb
scoreboard players reset @s crow
scoreboard players set @s beeb 1
function main:lobby/secret/all
function main:lobby/team_maybe

execute unless entity @e[tag=beeb] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["beeb"]}

execute at @e[tag=beeb] if block ~ ~ ~ acacia_sign run setblock ~ ~ ~ air
spreadplayers 9994 10001 1 15 false @e[type=minecraft:area_effect_cloud,tag=beeb]
execute at @e[tag=beeb] if block ~ ~ ~ air run setblock ~ ~ ~ acacia_sign{Text1:'{"text":"\\uEBEE","color":"white","clickEvent":{"action":"run_command","value":"/function main:lobby/secret/beeb"}}'}

execute at @e[tag=crow] if block ~ ~ ~ acacia_sign run setblock ~ ~ ~ air
spreadplayers 9994 10001 1 15 false @e[type=minecraft:area_effect_cloud,tag=crow]
execute at @e[tag=crow] if block ~ ~ ~ air run setblock ~ ~ ~ acacia_sign{Text1:'{"text":"\\uE003","color":"white","clickEvent":{"action":"run_command","value":"/function main:lobby/secret/crow"}}'}