execute unless score $1 SkillParams matches -2147483648 run scoreboard players operation $1 SkillParams *= 10 Const
execute unless score $2 SkillParams matches 2147483647 run scoreboard players operation $2 SkillParams *= 10 Const
execute if score $dmg SkillParams < $1 SkillParams run function skills:condition_not_met
execute if score $dmg SkillParams > $2 SkillParams run function skills:condition_not_met
execute unless score $dmg SkillParams matches 0.. run function skills:condition_not_met