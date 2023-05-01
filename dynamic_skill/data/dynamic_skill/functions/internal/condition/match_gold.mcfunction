# get condition id
scoreboard players set digits dynamic_skill 7
function dynamic_skill:internal/util/decode_binary
scoreboard players operation int dynamic_skill *= #10 dynamic_skill
function dynamic_skill:internal/condition/write_arg_score

scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary
execute if score int dynamic_skill matches 0 run function dynamic_skill:internal/condition/write_min_int_pre
execute if score int dynamic_skill matches 1 run function dynamic_skill:internal/condition/write_max_int_ap

# text arg
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '"⩽"'
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"storage":"dynamic_skill:main","nbt":"condition.args[1]"}'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '"⩾"'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"storage":"dynamic_skill:main","nbt":"condition.args[0]"}'