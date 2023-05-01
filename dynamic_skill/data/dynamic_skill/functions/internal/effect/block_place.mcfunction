scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary

scoreboard players add int dynamic_skill 1

function dynamic_skill:internal/effect/write_arg_score

# arg text
execute if score int dynamic_skill matches 1 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.block_place.wool"}'
execute if score int dynamic_skill matches 2 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.block_place.terracotta"}'