execute store result score skillFix1 skills run data get storage dynamic_skill:main skills_copy[0].id
execute store result score skillFix2 skills run data get storage dynamic_skill:main skills_copy[1].id
execute if score skillFix1 skills >= skillFix2 skills run function skills:internal/fix_skills_id

data modify storage dynamic_skill:main skills append from storage dynamic_skill:main skills_copy[0]
data remove storage dynamic_skill:main skills_copy[0]

execute if data storage dynamic_skill:main skills_copy[0] run function skills:internal/fix_skills