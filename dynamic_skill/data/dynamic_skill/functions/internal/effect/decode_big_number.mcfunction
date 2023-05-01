scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary
scoreboard players operation arg1 dynamic_skill = int dynamic_skill

scoreboard players set digits dynamic_skill 11
function dynamic_skill:internal/util/decode_binary
execute if score arg1 dynamic_skill matches 0 run scoreboard players remove int dynamic_skill 1024
execute if score arg1 dynamic_skill matches 1 run scoreboard players operation int dynamic_skill *= #98 dynamic_skill
execute if score arg1 dynamic_skill matches 1 run scoreboard players remove int dynamic_skill 100000

function dynamic_skill:internal/effect/write_arg_score

# text (gold)
execute if score int dynamic_skill matches 0.. run data modify storage dynamic_skill:main args_text append value '"+"'
execute if score int dynamic_skill matches ..-1 run data modify storage dynamic_skill:main args_text append value '""'
data modify storage dynamic_skill:main args_text append value '{"score":{"name":"int","objective":"dynamic_skill"}}'

# text (arrow)
scoreboard players operation temp1 dynamic_skill = int dynamic_skill
scoreboard players operation temp2 dynamic_skill = int dynamic_skill
execute if score int dynamic_skill matches ..-1 run scoreboard players add temp1 dynamic_skill 999
scoreboard players operation temp1 dynamic_skill /= #1000 dynamic_skill
scoreboard players operation temp2 dynamic_skill %= #1000 dynamic_skill
execute if score int dynamic_skill matches ..-1 run scoreboard players remove temp2 dynamic_skill 1000
execute if score int dynamic_skill matches ..-1 run scoreboard players operation temp2 dynamic_skill *= #-1 dynamic_skill
execute if score int dynamic_skill matches ..-1 run scoreboard players operation temp1 dynamic_skill *= #-1 dynamic_skill
scoreboard players operation temp2 dynamic_skill %= #1000 dynamic_skill

execute if score int dynamic_skill matches 0.. run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.arrow.positive"}'
execute if score int dynamic_skill matches ..-1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.arrow.negative"}'
execute if score temp2 dynamic_skill matches 100.. run data modify storage dynamic_skill:main args_text append value '[{"score":{"name":"temp1","objective":"dynamic_skill"}},".",{"score":{"name":"temp2","objective":"dynamic_skill"}}]'
execute if score temp2 dynamic_skill matches 10..99 run data modify storage dynamic_skill:main args_text append value '[{"score":{"name":"temp1","objective":"dynamic_skill"}},".0",{"score":{"name":"temp2","objective":"dynamic_skill"}}]'
execute if score temp2 dynamic_skill matches 0..9 run data modify storage dynamic_skill:main args_text append value '[{"score":{"name":"temp1","objective":"dynamic_skill"}},".00",{"score":{"name":"temp2","objective":"dynamic_skill"}}]'