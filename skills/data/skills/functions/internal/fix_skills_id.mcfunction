scoreboard players operation skillFix2 skills = skillFix1 skills
scoreboard players add skillFix2 skills 1
execute store result storage dynamic_skill:main skills_copy[1].id int 1 run scoreboard players get skillFix2 skills