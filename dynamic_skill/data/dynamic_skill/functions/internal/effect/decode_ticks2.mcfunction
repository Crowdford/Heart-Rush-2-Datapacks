scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary
scoreboard players operation arg1 dynamic_skill = int dynamic_skill

execute if score arg1 dynamic_skill matches 0 run scoreboard players set digits dynamic_skill 5
execute if score arg1 dynamic_skill matches 1 run scoreboard players set digits dynamic_skill 7
function dynamic_skill:internal/util/decode_binary
execute if score arg1 dynamic_skill matches 0 run scoreboard players remove int dynamic_skill 16
execute if score arg1 dynamic_skill matches 1 run scoreboard players operation int dynamic_skill *= #806 dynamic_skill
execute if score arg1 dynamic_skill matches 1 run scoreboard players operation int dynamic_skill /= #100 dynamic_skill
execute if score arg1 dynamic_skill matches 1 run scoreboard players remove int dynamic_skill 512

function dynamic_skill:internal/effect/write_arg_score

# text
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.decode_ticks.no_change"}'
execute if score arg1 dynamic_skill matches 0 if score int dynamic_skill matches 1.. run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.decode_ticks.negative"}'
execute if score arg1 dynamic_skill matches 0 if score int dynamic_skill matches ..-1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.decode_ticks.positive"}'
execute if score arg1 dynamic_skill matches 1 if score int dynamic_skill matches 1.. run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.decode_ticks.negative"}'
execute if score arg1 dynamic_skill matches 1 if score int dynamic_skill matches ..-1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.decode_ticks.positive"}'

# arg text
scoreboard players operation temp dynamic_skill = int dynamic_skill
scoreboard players operation temp dynamic_skill /= #20 dynamic_skill
execute if score temp dynamic_skill matches ..-1 run scoreboard players operation temp dynamic_skill *= -1 Const
data modify storage dynamic_skill:main args_text append value '[{"score":{"name":"temp","objective":"dynamic_skill"}}]'