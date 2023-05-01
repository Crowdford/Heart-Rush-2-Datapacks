execute if entity @s[team=red] run scoreboard players operation lives Temp = red lives
execute if entity @s[team=blue] run scoreboard players operation lives Temp = blue lives
execute if entity @s[team=green] run scoreboard players operation lives Temp = green lives
execute if entity @s[team=yellow] run scoreboard players operation lives Temp = yellow lives
execute if score lives Temp < $1 SkillParams run function skills:condition_not_met
execute if score lives Temp > $2 SkillParams run function skills:condition_not_met