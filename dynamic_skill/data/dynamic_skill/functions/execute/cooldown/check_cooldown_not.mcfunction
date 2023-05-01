# load cooldown
scoreboard players operation $sid SkillParams = $id SkillParams
function dynamic_skill:execute/cooldown/load

# condition
execute unless score @s dynSkill_st matches 1.. run function skills:condition_not_met