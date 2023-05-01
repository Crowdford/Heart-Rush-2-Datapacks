scoreboard players operation $1 SkillParams *= 10 Const
scoreboard players operation $2 SkillParams *= 10 Const
execute if score @s damageTakenLast < $1 SkillParams run function skills:condition_not_met
execute if score @s damageTakenLast > $2 SkillParams run function skills:condition_not_met
execute unless score @s damageTakenLast matches 0.. run function skills:condition_not_met