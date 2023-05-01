execute store result score $id SkillParams run data get storage dynamic_skill:main trigger.skillId
execute if score trigger dynamic_skill matches 16 run function dynamic_skill:execute/trigger_condition/object
execute if score trigger dynamic_skill matches 13 run function dynamic_skill:execute/trigger_condition/object
execute if score trigger dynamic_skill matches 31 run function dynamic_skill:execute/trigger_condition/object
execute if score trigger dynamic_skill matches 44 run function dynamic_skill:execute/trigger_condition/select
execute if score trigger dynamic_skill matches 11 run function dynamic_skill:execute/trigger_condition/cooldown_active
execute if score trigger dynamic_skill matches 7 run function dynamic_skill:execute/trigger_condition/cooldown_end