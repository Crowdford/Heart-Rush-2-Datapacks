scoreboard players add defenseless Stats 1

scoreboard players set ok Temp 1
execute if score red lives matches 1 run scoreboard players set ok Temp 0
execute if score blue lives matches 1 run scoreboard players set ok Temp 0
execute if score green lives matches 1 run scoreboard players set ok Temp 0
execute if score yellow lives matches 1 run scoreboard players set ok Temp 0

execute if score ok Temp matches 1 if score red lives matches 2.. run scoreboard players remove red lives 1
execute if score ok Temp matches 1 if score blue lives matches 2.. run scoreboard players remove blue lives 1
execute if score ok Temp matches 1 if score green lives matches 2.. run scoreboard players remove green lives 1
execute if score ok Temp matches 1 if score yellow lives matches 2.. run scoreboard players remove yellow lives 1

execute if score ok Temp matches 1 run tellraw @a ["",{"text":" |  ","color":"gray"},{"text":"\n |  ","color":"gray"},{"translate":"%s:","color":"gray","bold":true,"with":[{"translate":"game.defenseless","color":"red"}]}]
execute if score ok Temp matches 1 run tellraw @a ["",{"text":" |  ","color":"gray"},{"translate":"game.defenseless2","color":"gray"}]

function main:game/sidebar/all