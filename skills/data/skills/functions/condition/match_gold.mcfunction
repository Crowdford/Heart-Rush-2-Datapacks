execute if score @s gold < $1 SkillParams run function skills:condition_not_met
execute if score @s gold > $2 SkillParams run function skills:condition_not_met
execute unless score @s gold = @s gold run function skills:condition_not_met