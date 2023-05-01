execute store result score id dynamic_skill run data get storage dynamic_skill:main skills_copy[0].id
scoreboard players set hasSkill SkillsCondition 0
execute if score id dynamic_skill = @s skill_1 run scoreboard players set hasSkill SkillsCondition 1
execute if score id dynamic_skill = @s skill_2 run scoreboard players set hasSkill SkillsCondition 1
execute if score id dynamic_skill = @s skill_3 run scoreboard players set hasSkill SkillsCondition 1
execute if score id dynamic_skill matches 0 run scoreboard players set hasSkill SkillsCondition 0
execute if score hasSkill SkillsCondition matches 1 run data modify storage dynamic_skill:main sel_skills append from storage dynamic_skill:main skills_copy[0]
execute if score hasSkill SkillsCondition matches 0 run data modify storage dynamic_skill:main unsel_skills append from storage dynamic_skill:main skills_copy[0]
data remove storage dynamic_skill:main skills_copy[0]
execute if data storage dynamic_skill:main skills_copy[0] run function dynamic_skill:internal/get_selected_skill