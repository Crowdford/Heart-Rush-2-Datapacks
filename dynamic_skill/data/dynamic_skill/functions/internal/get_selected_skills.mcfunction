data modify storage dynamic_skill:main sel_skills set value []
data modify storage dynamic_skill:main skills_copy set from storage dynamic_skill:main skills
function dynamic_skill:internal/get_selected_skill