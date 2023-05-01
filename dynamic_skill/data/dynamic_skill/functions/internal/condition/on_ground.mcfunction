scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary

scoreboard players add int dynamic_skill 1

function dynamic_skill:internal/condition/write_arg_score


# text arg
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.on_ground.ground"}'
execute if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.conditions.on_ground.air"}'