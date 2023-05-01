# time
scoreboard players set digits dynamic_skill 6
function dynamic_skill:internal/util/decode_binary

scoreboard players operation int dynamic_skill *= #20 dynamic_skill

execute if score int dynamic_skill matches 0 run scoreboard players set int dynamic_skill 10

function dynamic_skill:internal/effect/write_arg_score

# arg text
scoreboard players operation temp dynamic_skill = int dynamic_skill
scoreboard players add temp dynamic_skill 3
scoreboard players operation temp dynamic_skill /= #20 dynamic_skill
execute unless score int dynamic_skill matches 10 run data modify storage dynamic_skill:main args_text append value '[{"score":{"name":"temp","objective":"dynamic_skill"}}]'
execute if score int dynamic_skill matches 10 run data modify storage dynamic_skill:main args_text append value '["0.5"]'
