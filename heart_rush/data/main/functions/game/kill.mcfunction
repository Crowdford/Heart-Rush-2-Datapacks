execute if score gold options matches 0 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["10"],"color":"gold"}]
execute if score gold options matches 0 run scoreboard players add @s gold 10
execute if score gold options matches 1 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["10"],"color":"gold"}]
execute if score gold options matches 1 run scoreboard players add @s gold 10
execute if score gold options matches 2 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["20"],"color":"gold"}]
execute if score gold options matches 2 run scoreboard players add @s gold 20
execute if score gold options matches 3 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["40"],"color":"gold"}]
execute if score gold options matches 3 run scoreboard players add @s gold 40
execute if entity @s[gamemode=adventure] run function main:game/killstreak