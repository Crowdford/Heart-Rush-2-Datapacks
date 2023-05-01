scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary

function dynamic_skill:internal/effect/write_arg_score

# arg text
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.boolean.false"}'
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.boolean.true"}'