execute store result score cmd Temp run data get entity @s ArmorItems[3].tag.CustomModelData
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add cmd Temp 5

scoreboard players set r Random 5
function main:util/randomish
scoreboard players operation @s blink += n Random