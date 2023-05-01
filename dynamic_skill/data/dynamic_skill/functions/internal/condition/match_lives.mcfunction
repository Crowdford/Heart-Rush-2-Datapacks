# min
scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary

function dynamic_skill:internal/condition/write_arg_score

scoreboard players operation temp dynamic_skill = int dynamic_skill

# max
scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary

function dynamic_skill:internal/condition/write_arg_score

# text
execute unless score temp dynamic_skill = int dynamic_skill run data modify block 0 1 0 Text1 set value '[" ",{"translate":"dynskill.skills:condition/match_lives_main","italic":true,"with":[{"storage":"dynamic_skill:main","nbt":"condition.args[0]"},{"storage":"dynamic_skill:main","nbt":"condition.args[1]"},{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[6]","interpret":true}]}]'
execute if score temp dynamic_skill = int dynamic_skill unless score int dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '[" ",{"translate":"dynskill.skills:condition/match_lives_alt","italic":true,"with":[{"storage":"dynamic_skill:main","nbt":"condition.args[0]"},{"storage":"dynamic_skill:main","nbt":"condition.args[1]"},{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[6]","interpret":true}]}]'
execute if score temp dynamic_skill = int dynamic_skill if score int dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '[" ",{"translate":"dynskill.skills:condition/match_lives_alt1","italic":true,"with":[{"storage":"dynamic_skill:main","nbt":"condition.args[0]"},{"storage":"dynamic_skill:main","nbt":"condition.args[1]"},{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[6]","interpret":true}]}]'
data modify storage dynamic_skill:main args_text append from block 0 1 0 Text1