scoreboard players set r Random 100
function skills:util/random
execute if score n Random > $1 SkillParams run function skills:condition_not_met