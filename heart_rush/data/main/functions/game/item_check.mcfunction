scoreboard players set gold Temp 0
function main:game/item_check/recursive
execute if score gold Temp matches 1.. run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.more_than_one_limited_item","color":"gray"}]
execute if score gold Temp matches 1.. run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","color":"gold","with":[{"score":{"name":"gold","objective":"Temp"},"color":"gold"}]}]
scoreboard players operation @s gold += gold Temp