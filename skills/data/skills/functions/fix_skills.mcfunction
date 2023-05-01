data modify storage dynamic_skill:main skills_copy set from storage dynamic_skill:main skills
data modify storage dynamic_skill:main skills set value []
execute if data storage dynamic_skill:main skills_copy[0] run function skills:internal/fix_skills