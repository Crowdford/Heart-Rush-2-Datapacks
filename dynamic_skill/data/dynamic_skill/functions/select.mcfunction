scoreboard players set $cond SkillsCondition 0
scoreboard players set met0 SkillsCondition 1
function skills:is_player
execute if score met0 SkillsCondition matches 1 run function dynamic_skill:internal/assign_tags