# load cooldown
scoreboard players operation $sid SkillParams = $id SkillParams
function dynamic_skill:execute/counter/load

# condition
execute if score $2 SkillParams matches 0 unless score @s dynSkill_sc <= $1 SkillParams run function skills:condition_not_met
execute if score $2 SkillParams matches 1 unless score @s dynSkill_sc >= $1 SkillParams run function skills:condition_not_met