execute store result score block Temp run clear @s #main:all{custom:"block"} 0
execute if score block Temp matches 65.. run function main:game/block/clear_test
execute if score block Temp matches 65.. run function main:game/block/clear_rec
execute store result score block Temp run clear @s #main:all{custom:"block"} 0
execute if score block Temp matches ..4 run function main:game/equipment/block1