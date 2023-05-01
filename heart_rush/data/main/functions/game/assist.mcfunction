execute if score gold options matches 0 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["15"],"color":"gold"}]
execute if score gold options matches 0 run scoreboard players add @s gold 15
execute if score gold options matches 1 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["15"],"color":"gold"}]
execute if score gold options matches 1 run scoreboard players add @s gold 15
execute if score gold options matches 2 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["30"],"color":"gold"}]
execute if score gold options matches 2 run scoreboard players add @s gold 30
execute if score gold options matches 3 run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.gold_gain","with":["60"],"color":"gold"}]
execute if score gold options matches 3 run scoreboard players add @s gold 60