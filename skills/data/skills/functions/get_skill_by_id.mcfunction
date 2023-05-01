data modify storage skills:main temp set from storage skills:main skills
data modify storage skills:main skill set value []
scoreboard players remove get skills 1
execute if score get skills matches 1.. run function skills:internal/get_skill_by_id
data modify storage skills:main skill set from storage skills:main temp[0]