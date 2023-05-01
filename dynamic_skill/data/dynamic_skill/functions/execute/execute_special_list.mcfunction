data modify storage dynamic_skill:main effect set from storage dynamic_skill:main special.effects[0]
function dynamic_skill:execute/execute_effect
# recursion
data remove storage dynamic_skill:main special.effects[0]
execute if data storage dynamic_skill:main special.effects[0] run function dynamic_skill:execute/execute_effect_list