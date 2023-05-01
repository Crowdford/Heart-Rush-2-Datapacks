execute if score $op SkillParams matches 1 run scoreboard players operation $v1 SkillParams > $v2 SkillParams
execute if score $op SkillParams matches 2 run scoreboard players operation $v1 SkillParams < $v2 SkillParams
execute if score $op SkillParams matches 3 run scoreboard players operation $v1 SkillParams = $v2 SkillParams
execute if score $op SkillParams matches 4 run scoreboard players operation $v1 SkillParams += $v2 SkillParams
execute if score $op SkillParams matches 5 run scoreboard players operation $v1 SkillParams -= $v2 SkillParams
execute if score $op SkillParams matches 6 run scoreboard players operation $v1 SkillParams *= $v2 SkillParams
execute if score $op SkillParams matches 7 run scoreboard players operation $v1 SkillParams /= $v2 SkillParams
# 8 => nothing