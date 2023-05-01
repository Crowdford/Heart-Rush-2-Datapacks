#tellraw @a {"storage":"dynamic_skill:main","nbt":"args"}

# store to stack
data modify storage dynamic_skill:main stack append from storage dynamic_skill:main trigger

# create trigger from arguments
data modify storage dynamic_skill:main trigger set value {condition:{id:0,args:[]},effects:[]}
data modify storage dynamic_skill:main trigger.effects set from storage dynamic_skill:main args[2]

## handle raycast
execute store result score $1 SkillParams run data get storage dynamic_skill:main args[0][0] 10
execute store result score $2 SkillParams run data get storage dynamic_skill:main args[1][0]
function skills:effects/raycast
# handle effect list
execute if data storage dynamic_skill:main trigger.effects[0] at @e[type=area_effect_cloud,tag=skillRaycast,limit=1,sort=nearest] run function dynamic_skill:execute/execute_effect_list
kill @e[type=area_effect_cloud,tag=skillRaycast]

# load from stack
data modify storage dynamic_skill:main trigger set from storage dynamic_skill:main stack[-1]
data remove storage dynamic_skill:main stack[-1]
execute store result score effect dynamic_skill run data get storage dynamic_skill:main trigger.effects[0].id