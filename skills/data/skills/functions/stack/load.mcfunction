data modify storage skills:main stack_element set from storage skills:main stack[-1]
data remove storage skills:main stack[-1]
execute store result score $id SkillParams run data get storage skills:main stack_element.id
execute store result score id SkillsCondition run data get storage skills:main stack_element.id
execute store result score $cond SkillsCondition run data get storage skills:main stack_element.cond
execute store result score id Temp run data get storage skills:main stack_element.player
execute as @a if score @s playerID = id Temp run tag @s add skillTriggerTemp
