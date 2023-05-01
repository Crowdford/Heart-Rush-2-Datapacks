scoreboard players add @s blink 1
execute if score @s blink matches 100 run function main:game/blink/start
execute if score @s blink matches 110.. run function main:game/blink/end