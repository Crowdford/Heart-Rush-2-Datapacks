# get health
data modify storage text:lib all set from storage dynamic_skill:trees health
data modify storage text:in bits set from storage dynamic_skill:main binary
function htc:do_convert 
data modify storage dynamic_skill:main binary set from storage text:int bits
function dynamic_skill:internal/condition/write_arg_tree

scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary
execute if score int dynamic_skill matches 0 run function dynamic_skill:internal/condition/write_min_int_pre
execute if score int dynamic_skill matches 1 run function dynamic_skill:internal/condition/write_max_int_ap

# text arg
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '"⩽"'
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"storage":"dynamic_skill:main","nbt":"condition.args[1]"}'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '"⩾"'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"storage":"dynamic_skill:main","nbt":"condition.args[0]"}'