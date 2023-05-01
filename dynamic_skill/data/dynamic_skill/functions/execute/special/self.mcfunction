#tellraw @a {"storage":"dynamic_skill:main","nbt":"args"}

# store to stack
data modify storage dynamic_skill:main stack append from storage dynamic_skill:main trigger

# create trigger from arguments
data modify storage dynamic_skill:main trigger set value {condition:{id:0,args:[]},effects:[]}
data modify storage dynamic_skill:main trigger.effects set from storage dynamic_skill:main args[1]

# handle effect list
tag @a remove skillTriggerTempS0
tag @a remove skillTriggerTempS1
execute store result score $1 SkillParams run data get storage dynamic_skill:main args[0][0]
execute if score $1 SkillParams matches 0 run tag @p[tag=skillTriggerTemp] add skillTriggerTempS0
execute if score $1 SkillParams matches 1 run tag @p[tag=skillTriggerTemp] add skillTriggerTempS1
execute if entity @p[tag=skillTriggerTemp,tag=skillTriggerTempS0] if data storage dynamic_skill:main trigger.effects[0] as @p[tag=skillTriggerTemp] run function dynamic_skill:execute/execute_effect_list
execute if entity @p[tag=skillTriggerTemp,tag=skillTriggerTempS1] if data storage dynamic_skill:main trigger.effects[0] at @p[tag=skillTriggerTemp] run function dynamic_skill:execute/execute_effect_list
tag @a remove skillTriggerTempS0
tag @a remove skillTriggerTempS1

# load from stack
data modify storage dynamic_skill:main trigger set from storage dynamic_skill:main stack[-1]
data remove storage dynamic_skill:main stack[-1]
execute store result score effect dynamic_skill run data get storage dynamic_skill:main trigger.effects[0].id