scoreboard players set digits dynamic_skill 6
function dynamic_skill:internal/util/decode_binary
scoreboard players operation int dynamic_skill *= #20 dynamic_skill

function dynamic_skill:internal/effect/write_arg_score

# text
scoreboard players operation temp dynamic_skill = int dynamic_skill
scoreboard players operation temp dynamic_skill /= #20 dynamic_skill
execute if score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.elytra.revoke","with":[{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[6]","interpret":true}]}'
execute unless score int dynamic_skill matches 0 run data modify storage dynamic_skill:main args_text append value '{"translate":"dynskill.effects.elytra.grant","with":[{"score":{"name":"temp","objective":"dynamic_skill"}},{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[10]","interpret":true}]}'
