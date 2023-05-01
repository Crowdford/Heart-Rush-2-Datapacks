execute if entity @s[team=red] run scoreboard players add red lives 1
execute if entity @s[team=blue] run scoreboard players add blue lives 1
execute if entity @s[team=green] run scoreboard players add green lives 1
execute if entity @s[team=yellow] run scoreboard players add yellow lives 1
scoreboard players operation red lives < max_lives options
scoreboard players operation blue lives < max_lives options
scoreboard players operation green lives < max_lives options
scoreboard players operation yellow lives < max_lives options
execute if entity @e[tag=hole,tag=red_hole,distance=..3] run tellraw @a ["",{"text":" |  ","color":"gray"},{"translate":"game.steal","color":"gray","with":[{"selector":"@s"},{"text":"❤","color":"red"},{"translate":"game.team.red","color":"red","bold":true},{"translate":"game.team.red.alt","color":"red","bold":true},{"translate":"game.team.red.alt2","color":"red","bold":true}]}]
execute if entity @e[tag=hole,tag=blue_hole,distance=..3] run tellraw @a ["",{"text":" |  ","color":"gray"},{"translate":"game.steal","color":"gray","with":[{"selector":"@s"},{"text":"❤","color":"blue"},{"translate":"game.team.blue","color":"blue","bold":true},{"translate":"game.team.blue.alt","color":"blue","bold":true},{"translate":"game.team.blue.alt2","color":"blue","bold":true}]}]
execute if entity @e[tag=hole,tag=green_hole,distance=..3] run tellraw @a ["",{"text":" |  ","color":"gray"},{"translate":"game.steal","color":"gray","with":[{"selector":"@s"},{"text":"❤","color":"green"},{"translate":"game.team.green","color":"green","bold":true},{"translate":"game.team.green.alt","color":"green","bold":true},{"translate":"game.team.green.alt2","color":"green","bold":true}]}]
execute if entity @e[tag=hole,tag=yellow_hole,distance=..3] run tellraw @a ["",{"text":" |  ","color":"gray"},{"translate":"game.steal","color":"gray","with":[{"selector":"@s"},{"text":"❤","color":"yellow"},{"translate":"game.team.yellow","color":"yellow","bold":true},{"translate":"game.team.yellow.alt","color":"yellow","bold":true},{"translate":"game.team.yellow.alt2","color":"yellow","bold":true}]}]