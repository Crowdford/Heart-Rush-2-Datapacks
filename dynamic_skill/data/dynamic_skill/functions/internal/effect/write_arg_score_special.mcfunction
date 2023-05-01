data modify storage dynamic_skill:main stack[-1].args append value [0]
execute store result storage dynamic_skill:main stack[-1].args[-1][0] int 1 run scoreboard players get int dynamic_skill