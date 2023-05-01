scoreboard players set digits dynamic_skill 7
function dynamic_skill:internal/util/decode_binary

scoreboard players remove int dynamic_skill 64

function dynamic_skill:internal/effect/write_arg_score

# text
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.mod_killstreak.no_change"}'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.mod_killstreak.slightly_positive"}'
execute if score int dynamic_skill matches 2..3 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.mod_killstreak.positive"}'
execute if score int dynamic_skill matches 4.. run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.mod_killstreak.strongly_positive"}'
execute if score int dynamic_skill matches -1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.mod_killstreak.slightly_negative"}'
execute if score int dynamic_skill matches -3..-2 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.mod_killstreak.negative"}'
execute if score int dynamic_skill matches ..-4 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.mod_killstreak.strongly_negative"}'