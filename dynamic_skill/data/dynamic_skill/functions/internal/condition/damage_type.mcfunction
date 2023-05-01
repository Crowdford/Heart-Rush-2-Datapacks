# get condition id
data modify storage text:lib all set from storage dynamic_skill:trees damage_type
data modify storage text:in bits set from storage dynamic_skill:main binary
function htc:do_convert 
data modify storage dynamic_skill:main binary set from storage text:int bits

function dynamic_skill:internal/condition/write_arg_tree

# arg text
execute store result score temp dynamic_skill run data get storage text:out chars[0]
execute if score temp dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.1"}'
execute if score temp dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.2"}'
execute if score temp dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.3"}'
execute if score temp dynamic_skill matches 4 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.4"}'
execute if score temp dynamic_skill matches 5 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.5"}'
execute if score temp dynamic_skill matches 6 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.6"}'
execute if score temp dynamic_skill matches 7 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.7"}'
execute if score temp dynamic_skill matches 8 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.8"}'
execute if score temp dynamic_skill matches 9 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.9"}'
execute if score temp dynamic_skill matches 10 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.10"}'
execute if score temp dynamic_skill matches 11 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.11"}'
execute if score temp dynamic_skill matches 12 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.12"}'
execute if score temp dynamic_skill matches 13 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.13"}'
execute if score temp dynamic_skill matches 14 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.14"}'
execute if score temp dynamic_skill matches 15 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.15"}'
execute if score temp dynamic_skill matches 16 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.16"}'
execute if score temp dynamic_skill matches 18 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.18"}'
execute if score temp dynamic_skill matches 19 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.19"}'
execute if score temp dynamic_skill matches 20 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.20"}'
execute if score temp dynamic_skill matches 21 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.21"}'
execute if score temp dynamic_skill matches 22 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.22"}'
execute if score temp dynamic_skill matches 23 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.damage_type.23"}'