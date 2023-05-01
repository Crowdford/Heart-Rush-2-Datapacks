execute if score $1 SkillParams matches 1 unless score $2 SkillParams = max_lives options run function skills:condition_not_met
execute if score $1 SkillParams matches 2 unless score $2 SkillParams = lives options run function skills:condition_not_met
execute if score $1 SkillParams matches 3 unless score $2 SkillParams = arena options run function skills:condition_not_met
execute if score $1 SkillParams matches 4 unless score $2 SkillParams = gold options run function skills:condition_not_met
execute if score $1 SkillParams matches 5 unless score $2 SkillParams = defenseless options run function skills:condition_not_met
execute if score $1 SkillParams matches 6 unless score $2 SkillParams = locked options run function skills:condition_not_met
execute if score $1 SkillParams matches 7 unless score $2 SkillParams = mode options run function skills:condition_not_met
execute if score $1 SkillParams matches 8 unless score $2 SkillParams = pause options run function skills:condition_not_met