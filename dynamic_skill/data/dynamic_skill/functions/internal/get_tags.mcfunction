data modify storage dynamic_skill:main triggers set from storage dynamic_skill:main sel_skills_copy[0].triggers
execute if data storage dynamic_skill:main triggers[0] run function dynamic_skill:internal/get_tag
data remove storage dynamic_skill:main sel_skills_copy[0]
execute if data storage dynamic_skill:main sel_skills_copy[0] run function dynamic_skill:internal/get_tags