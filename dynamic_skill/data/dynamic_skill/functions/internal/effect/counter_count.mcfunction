scoreboard players set digits dynamic_skill 7
function dynamic_skill:internal/util/decode_binary

scoreboard players remove int dynamic_skill 64

function dynamic_skill:internal/effect/write_arg_score

# args text
execute if score int dynamic_skill matches 0.. run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.counter_count.positive"}'
execute if score int dynamic_skill matches ..-1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.counter_count.negative"}'

scoreboard players operation temp dynamic_skill = int dynamic_skill
execute if score temp dynamic_skill matches ..-1 run scoreboard players operation temp dynamic_skill *= #-1 dynamic_skill
data modify storage dynamic_skill:main args_text append value '[{"score":{"name":"temp","objective":"dynamic_skill"}}]'