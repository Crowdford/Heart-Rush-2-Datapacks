#tellraw @a {"storage":"dynamic_skill:main","nbt":"args"}

# store to stack
data modify storage dynamic_skill:main stack append from storage dynamic_skill:main trigger

# create trigger from arguments
data modify storage dynamic_skill:main trigger set value {condition:{id:0,args:[]},effects:[]}
execute store result score r Random if data storage dynamic_skill:main args[]
function dynamic_skill:util/random
execute if score n Random matches 2.. run function dynamic_skill:execute/special/random_rec
data modify storage dynamic_skill:main trigger.effects set from storage dynamic_skill:main args[0]

# handle effect list
execute if data storage dynamic_skill:main trigger.effects[0] run function dynamic_skill:execute/execute_effect_list

# load from stack
data modify storage dynamic_skill:main trigger set from storage dynamic_skill:main stack[-1]
data remove storage dynamic_skill:main stack[-1]
execute store result score effect dynamic_skill run data get storage dynamic_skill:main trigger.effects[0].id