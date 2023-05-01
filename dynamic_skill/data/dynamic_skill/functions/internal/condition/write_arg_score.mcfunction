data modify storage dynamic_skill:main condition.args append value 0
execute store result storage dynamic_skill:main condition.args[-1] int 1 run scoreboard players get int dynamic_skill