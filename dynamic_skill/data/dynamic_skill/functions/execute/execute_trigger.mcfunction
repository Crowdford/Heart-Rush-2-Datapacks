#execute if score trigger dynamic_skill matches 1.. run tellraw @a ["trigger: ",{"storage":"dynamic_skill:main","nbt":"trigger"}]
scoreboard players operation trigger dynamic_skill = dynTrigger dynamic_skill

# check trigger condition
scoreboard players set trigger_condition dynamic_skill 1
function dynamic_skill:execute/execute_trigger_condition

# check condition
execute if score trigger_condition dynamic_skill matches 1 run function dynamic_skill:execute/execute_condition

# handle effect list
execute if score trigger_condition dynamic_skill matches 1 if score met0 SkillsCondition matches 1 if data storage dynamic_skill:main trigger.effects[0] run function dynamic_skill:execute/execute_effect_list