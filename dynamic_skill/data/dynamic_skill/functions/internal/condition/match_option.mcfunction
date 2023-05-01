# option
scoreboard players set digits dynamic_skill 3
function dynamic_skill:internal/util/decode_binary

scoreboard players add int dynamic_skill 1

function dynamic_skill:internal/condition/write_arg_score

# arg text
scoreboard players operation temp dynamic_skill = int dynamic_skill
execute if score temp dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.1"}'
execute if score temp dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.2"}'
execute if score temp dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.3"}'
execute if score temp dynamic_skill matches 4 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.4"}'
execute if score temp dynamic_skill matches 5 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.5"}'
execute if score temp dynamic_skill matches 6 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.6"}'
execute if score temp dynamic_skill matches 7 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.7"}'
execute if score temp dynamic_skill matches 8 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.8"}'

# value
scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary

function dynamic_skill:internal/condition/write_arg_score

execute if score temp dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"score":{"name":"int","objective":"dynamic_skill"}}'
execute if score temp dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"score":{"name":"int","objective":"dynamic_skill"}}'
execute if score temp dynamic_skill matches 3 if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.3.1"}'
execute if score temp dynamic_skill matches 3 if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.3.2"}'
execute if score temp dynamic_skill matches 3 if score int dynamic_skill matches 4 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.3.4"}'
execute if score temp dynamic_skill matches 3 if score int dynamic_skill matches 7 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.3.7"}'
execute if score temp dynamic_skill matches 3 if score int dynamic_skill matches 8 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.3.8"}'
execute if score temp dynamic_skill matches 3 if score int dynamic_skill matches 9 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.3.9"}'
execute if score temp dynamic_skill matches 3 if score int dynamic_skill matches 10 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.3.10"}'
execute if score temp dynamic_skill matches 3 if score int dynamic_skill matches 11 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.3.11"}'
execute if score temp dynamic_skill matches 3 if score int dynamic_skill matches 12 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.3.12"}'
execute if score temp dynamic_skill matches 4 if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.4.0"}'
execute if score temp dynamic_skill matches 4 if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.4.1"}'
execute if score temp dynamic_skill matches 4 if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.4.2"}'
execute if score temp dynamic_skill matches 4 if score int dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.4.3"}'
execute if score temp dynamic_skill matches 5 if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.5.0"}'
execute if score temp dynamic_skill matches 5 if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.5.1"}'
execute if score temp dynamic_skill matches 6 if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.6.0"}'
execute if score temp dynamic_skill matches 6 if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.6.1"}'
execute if score temp dynamic_skill matches 7 if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.7.0"}'
execute if score temp dynamic_skill matches 7 if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.7.1"}'
execute if score temp dynamic_skill matches 7 if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.7.2"}'
execute if score temp dynamic_skill matches 8 if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.8.0"}'
execute if score temp dynamic_skill matches 8 if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.match_option.8.1"}'