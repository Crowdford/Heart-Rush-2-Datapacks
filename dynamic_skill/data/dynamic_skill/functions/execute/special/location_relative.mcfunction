#tellraw @a {"storage":"dynamic_skill:main","nbt":"args"}

# store to stack
data modify storage dynamic_skill:main stack append from storage dynamic_skill:main trigger

# create trigger from arguments
data modify storage dynamic_skill:main trigger set value {condition:{id:0,args:[]},effects:[]}
data modify storage dynamic_skill:main trigger.effects set from storage dynamic_skill:main args[3]

## handle location
execute store result score $1 SkillParams run data get storage dynamic_skill:main args[0][0]
execute store result score $2 SkillParams run data get storage dynamic_skill:main args[1][0]
execute store result score $3 SkillParams run data get storage dynamic_skill:main args[2][0]
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["special:location_relative"],Radius:0.0f,Duration:1,UUID:[I;1567092120,-121354665,-2031738157,-241475985]}
tp 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f ~ ~ ~ ~ ~
execute if score $1 SkillParams matches -3 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~-3 ~ ~
execute if score $1 SkillParams matches -2 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~-2 ~ ~
execute if score $1 SkillParams matches -1 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~-1 ~ ~
execute if score $1 SkillParams matches 1 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~1 ~ ~
execute if score $1 SkillParams matches 2 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~2 ~ ~
execute if score $1 SkillParams matches 3 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~3 ~ ~
execute if score $1 SkillParams matches 4 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~4 ~ ~
execute if score $2 SkillParams matches -3 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~-3 ~
execute if score $2 SkillParams matches -2 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~-2 ~
execute if score $2 SkillParams matches -1 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~-1 ~
execute if score $2 SkillParams matches 1 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~1 ~
execute if score $2 SkillParams matches 2 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~2 ~
execute if score $2 SkillParams matches 3 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~3 ~
execute if score $2 SkillParams matches 4 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~4 ~
execute if score $3 SkillParams matches -3 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~ ~-3
execute if score $3 SkillParams matches -2 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~ ~-2
execute if score $3 SkillParams matches -1 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~ ~-1
execute if score $3 SkillParams matches 1 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~ ~1
execute if score $3 SkillParams matches 2 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~ ~2
execute if score $3 SkillParams matches 3 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~ ~3
execute if score $3 SkillParams matches 4 as 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f at @s run tp @s ~ ~ ~4
# handle effect list
execute if data storage dynamic_skill:main trigger.effects[0] at 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f run function dynamic_skill:execute/execute_effect_list
kill 5d67ed98-f8c4-4657-86e6-22d3f19b5e6f

# load from stack
data modify storage dynamic_skill:main trigger set from storage dynamic_skill:main stack[-1]
data remove storage dynamic_skill:main stack[-1]
execute store result score effect dynamic_skill run data get storage dynamic_skill:main trigger.effects[0].id