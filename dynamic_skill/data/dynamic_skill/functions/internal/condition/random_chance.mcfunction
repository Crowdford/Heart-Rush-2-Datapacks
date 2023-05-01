scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary

scoreboard players operation int dynamic_skill *= #667 dynamic_skill
scoreboard players operation int dynamic_skill /= #100 dynamic_skill
execute if score int dynamic_skill matches 0 run scoreboard players set int dynamic_skill 1

function dynamic_skill:internal/condition/write_arg_score