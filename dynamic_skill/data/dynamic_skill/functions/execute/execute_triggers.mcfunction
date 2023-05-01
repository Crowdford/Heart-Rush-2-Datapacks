data modify storage dynamic_skill:main trigger set from storage dynamic_skill:main execute[0]
function dynamic_skill:execute/execute_trigger
data remove storage dynamic_skill:main execute[0]
execute if data storage dynamic_skill:main execute[0] run function dynamic_skill:execute/execute_triggers