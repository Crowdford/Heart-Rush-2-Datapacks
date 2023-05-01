execute if score @s actualHealth < $1 SkillParams run function skills:condition_not_met
execute if score @s actualHealth > $2 SkillParams run function skills:condition_not_met
execute unless score @s actualHealth = @s actualHealth run function skills:condition_not_met