function dynamic_skill:execute/execute_effect
# recursion
data remove storage dynamic_skill:main trigger.effects[0]
execute if data storage dynamic_skill:main trigger.effects[0] run function dynamic_skill:execute/execute_effect_list