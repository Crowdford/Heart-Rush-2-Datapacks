# team
scoreboard players set digits dynamic_skill 2
function dynamic_skill:internal/util/decode_binary

function dynamic_skill:internal/condition/write_arg_score

# text arg
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.in_range.team_all"}'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.in_range.team_same"}'
execute if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.in_range.team_different"}'

# amount
scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary

function dynamic_skill:internal/condition/write_arg_score

# amount
scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary

function dynamic_skill:internal/condition/write_arg_score

execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '"⩽"'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '"⩾"'

# range
scoreboard players set digits dynamic_skill 3
function dynamic_skill:internal/util/decode_binary

scoreboard players operation int dynamic_skill *= #5 dynamic_skill

function dynamic_skill:internal/condition/write_arg_score
