execute unless score @s book_skill13 matches -1 run tellraw @a [{"translate":"dynskill.add_skill.vote_for","color":"green","with":[{"selector":"@s"},{"storage":"dynamic_skill:main","nbt":"book_skills[13][1].name","interpret":true}]}]
execute unless entity @s[scores={book_skill13o=1}] if score @s book_skill13 matches -1 run tellraw @a [{"translate":"dynskill.add_skill.vote_against","color":"red","with":[{"selector":"@s"},{"storage":"dynamic_skill:main","nbt":"book_skills[13][1].name","interpret":true}]}]
execute if entity @s[scores={book_skill13o=1}] if score @s book_skill13 matches -1 run tellraw @a [{"translate":"dynskill.add_skill.cancel","color":"red","with":[{"selector":"@s"},{"storage":"dynamic_skill:main","nbt":"book_skills[13][1].name","interpret":true}]}]
execute store result score players dynamic_skill run data get storage dynamic_skill:main book_skills[13][0].value
execute unless score @s book_skill13 matches -1 store result storage dynamic_skill:main book_skills[13][0].value int 1 run scoreboard players remove players dynamic_skill 1
execute unless score @s book_skill13 matches -1 if entity @s[tag=dynSkillForceAccept] store result storage dynamic_skill:main book_skills[13][0].value int 1 run scoreboard players remove players dynamic_skill 10
execute if score @s book_skill13 matches -1 if entity @s[scores={book_skill13o=1}] store result storage dynamic_skill:main book_skills[13][0].value int 1 run scoreboard players set players dynamic_skill 10000
execute if entity @s[scores={book_skill13o=1}] if score @s book_skill13 matches -1 run scoreboard players reset * book_skill13
execute if entity @s[scores={book_skill13o=1}] if score @s book_skill13 matches -1 run scoreboard players reset * book_skill13o
scoreboard players reset @s book_skill13
function dynamic_skill:book/clicked/votes_left
execute if score players dynamic_skill matches 0 run data modify storage dynamic_skill:main book_skill set from storage dynamic_skill:main book_skills[13][1]
execute if score players dynamic_skill matches 0 run data modify storage dynamic_skill:main book_skill_data set from storage dynamic_skill:main book_skills[13][2]
execute if score players dynamic_skill matches 0 run tag @a[scores={book_skill13o=1}] add dynSkillOwner
execute if score players dynamic_skill matches 0 run function dynamic_skill:book/register
execute if score players dynamic_skill matches 0 run scoreboard players reset * book_skill13
