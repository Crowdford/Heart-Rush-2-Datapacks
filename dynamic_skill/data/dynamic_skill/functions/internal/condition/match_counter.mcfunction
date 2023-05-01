# get condition id
scoreboard players set digits dynamic_skill 7
function dynamic_skill:internal/util/decode_binary
scoreboard players remove int dynamic_skill 64
function dynamic_skill:internal/condition/write_arg_score

# direction
scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary
function dynamic_skill:internal/condition/write_arg_score

# text arg
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '"⩽"'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '"⩾"'
