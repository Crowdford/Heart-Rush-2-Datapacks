scoreboard players remove @s void_charm 1
execute store result score y Temp run data get entity @s Pos[1]
execute unless score @s void_charm matches 1.. if score y Temp < void Arena unless data entity @s Inventory[{id:"minecraft:elytra"}] unless data entity @s Inventory[{id:"minecraft:beetroot_seeds"}] run function health:force_death/void
execute unless score @s void_charm matches 1.. if score y Temp < void Arena unless data entity @s Inventory[{id:"minecraft:elytra"}] if data entity @s Inventory[{id:"minecraft:beetroot_seeds"}] run function main:game/item/void_charm