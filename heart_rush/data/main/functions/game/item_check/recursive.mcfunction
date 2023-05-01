execute store result score count Temp run clear @s minecraft:light_gray_dye 0
execute if score count Temp matches 2.. run clear @s light_gray_dye 1
execute if score count Temp matches 2.. run scoreboard players add gold Temp 120
execute if score count Temp matches 2.. run function main:game/item_check/recursive

execute store result score count Temp run clear @s minecraft:beetroot_seeds 0
execute if score count Temp matches 2.. run clear @s beetroot_seeds 1
execute if score count Temp matches 2.. run scoreboard players add gold Temp 160
execute if score count Temp matches 2.. run function main:game/item_check/recursive

execute store result score count Temp run clear @s minecraft:carrot_on_a_stick{custom:"persistence_crystal"} 0
execute if score count Temp matches 2.. run clear @s carrot_on_a_stick{custom:"persistence_crystal"} 1
execute if score count Temp matches 2.. run scoreboard players add gold Temp 60
execute if score count Temp matches 2.. run function main:game/item_check/recursive