# get trigger type
data modify storage text:lib all set from storage dynamic_skill:trees object_trigger_type
data modify storage text:in bits set from storage dynamic_skill:main binary
function htc:do_convert 
data modify storage dynamic_skill:main binary set from storage text:int bits
function dynamic_skill:internal/condition/write_arg_tree

# text arg
execute store result score temp dynamic_skill run data get storage text:out chars[0]
scoreboard players operation temp dynamic_skill /= #10 dynamic_skill
execute if score temp dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.object_trigger_type.team_different"}'
execute if score temp dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.object_trigger_type.team_same"}'
execute if score temp dynamic_skill matches 3 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.object_trigger_type.team_all"}'
execute store result score temp dynamic_skill run data get storage text:out chars[0]
scoreboard players operation temp dynamic_skill %= #10 dynamic_skill
execute if score temp dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.object_trigger_type.unselected"}'
execute if score temp dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.object_trigger_type.selected"}'