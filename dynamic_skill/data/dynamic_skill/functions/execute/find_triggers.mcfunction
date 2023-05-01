#execute unless score trigger dynamic_skill matches 45 run tellraw @a ["something triggered: ",{"score":{"name":"trigger","objective":"dynamic_skill"}}]
# compiles the triggers from all selected dynamic skills
data modify storage dynamic_skill:main sel_skills set value []
data modify storage dynamic_skill:main unsel_skills set value []
function dynamic_skill:internal/get_selected_skills
data modify storage dynamic_skill:main triggers set value []
data modify storage dynamic_skill:main triggers append from storage dynamic_skill:main sel_skills[].triggers[]
# everyone subscribes to main and object triggers
data modify storage dynamic_skill:main triggers append from storage dynamic_skill:main unsel_skills[].triggers[{id:13}]
data modify storage dynamic_skill:main triggers append from storage dynamic_skill:main unsel_skills[].triggers[{id:16}]
data modify storage dynamic_skill:main triggers append from storage dynamic_skill:main unsel_skills[].triggers[{id:31}]
data modify storage dynamic_skill:main triggers append from storage dynamic_skill:main unsel_skills[].triggers[{id:45}]
# filters out triggers with matching id
data modify storage dynamic_skill:main execute set value []
function dynamic_skill:internal/filter_triggers
# executes the trigger
execute if data storage dynamic_skill:main execute[0] run function dynamic_skill:execute/execute_triggers