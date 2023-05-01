scoreboard players operation dynTrigger dynamic_skill = trigger dynamic_skill
tag @s add skillTriggerTemp
scoreboard players set $cond SkillsCondition 0
scoreboard players set met0 SkillsCondition 1
function skills:is_player
execute if score met0 SkillsCondition matches 1 unless score game Stats matches 0 run function dynamic_skill:execute/find_triggers
tag @s remove skillTriggerTemp