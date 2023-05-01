scoreboard players set hasSkill SkillsCondition 0
execute if score id SkillsCondition = @s skill_1 run scoreboard players set hasSkill SkillsCondition 1
execute if score id SkillsCondition = @s skill_2 run scoreboard players set hasSkill SkillsCondition 1
execute if score id SkillsCondition = @s skill_3 run scoreboard players set hasSkill SkillsCondition 1
execute if score id SkillsCondition matches 0 run scoreboard players set hasSkill SkillsCondition 0
function skills:is_player
execute if score hasSkill SkillsCondition matches 0 run function skills:condition_not_met