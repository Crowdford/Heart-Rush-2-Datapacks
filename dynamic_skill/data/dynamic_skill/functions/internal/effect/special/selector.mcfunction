# store effect to stack [util]
function dynamic_skill:internal/effect/special/util/stack_save

# get arguments (type, sort, limit, team, distance)
scoreboard players set digits dynamic_skill 2
function dynamic_skill:internal/util/decode_binary
function dynamic_skill:internal/effect/write_arg_score_special
scoreboard players operation temp3 dynamic_skill = int dynamic_skill

scoreboard players set digits dynamic_skill 2
function dynamic_skill:internal/util/decode_binary
function dynamic_skill:internal/effect/write_arg_score_special
scoreboard players operation temp1 dynamic_skill = int dynamic_skill

scoreboard players set digits dynamic_skill 3
function dynamic_skill:internal/util/decode_binary
scoreboard players add int dynamic_skill 1
function dynamic_skill:internal/effect/write_arg_score_special
scoreboard players operation temp2 dynamic_skill = int dynamic_skill

scoreboard players set digits dynamic_skill 2
function dynamic_skill:internal/util/decode_binary
function dynamic_skill:internal/effect/write_arg_score_special
scoreboard players operation temp5 dynamic_skill = int dynamic_skill

scoreboard players set digits dynamic_skill 3
function dynamic_skill:internal/util/decode_binary
function dynamic_skill:internal/effect/write_arg_score_special
scoreboard players operation temp4 dynamic_skill = int dynamic_skill

data modify block 0 1 0 Text4 set value '""'
execute if score temp3 dynamic_skill matches 3 run data modify block 0 1 0 Text4 set value '{"translate":"dynskill.effects.selector.exists"}'

execute if score temp2 dynamic_skill matches 1 if score temp5 dynamic_skill matches 0 if score temp4 dynamic_skill matches 0 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.all.single_alt"}'
execute if score temp2 dynamic_skill matches 2.. if score temp5 dynamic_skill matches 0 if score temp4 dynamic_skill matches 0 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.all.multiple_alt"}'
execute if score temp2 dynamic_skill matches 1 if score temp5 dynamic_skill matches 1 if score temp4 dynamic_skill matches 0 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.same.single_alt"}'
execute if score temp2 dynamic_skill matches 2.. if score temp5 dynamic_skill matches 1 if score temp4 dynamic_skill matches 0 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.same.multiple_alt"}'
execute if score temp2 dynamic_skill matches 1 if score temp5 dynamic_skill matches 0 if score temp4 dynamic_skill matches 1 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.all.single"}'
execute if score temp2 dynamic_skill matches 2.. if score temp5 dynamic_skill matches 0 if score temp4 dynamic_skill matches 1 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.all.multiple"}'
execute if score temp2 dynamic_skill matches 1 if score temp5 dynamic_skill matches 1 if score temp4 dynamic_skill matches 1 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.same.single"}'
execute if score temp2 dynamic_skill matches 2.. if score temp5 dynamic_skill matches 1 if score temp4 dynamic_skill matches 1 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.same.multiple"}'
execute if score temp2 dynamic_skill matches 1 if score temp5 dynamic_skill matches 0 if score temp4 dynamic_skill matches 2..3 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.all.single_alt"}'
execute if score temp2 dynamic_skill matches 2.. if score temp5 dynamic_skill matches 0 if score temp4 dynamic_skill matches 2..3 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.all.multiple_alt"}'
execute if score temp2 dynamic_skill matches 1 if score temp5 dynamic_skill matches 1 if score temp4 dynamic_skill matches 2..3 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.same.single_alt"}'
execute if score temp2 dynamic_skill matches 2.. if score temp5 dynamic_skill matches 1 if score temp4 dynamic_skill matches 2..3 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.same.multiple_alt"}'
execute if score temp2 dynamic_skill matches 1 if score temp5 dynamic_skill matches 0 if score temp4 dynamic_skill matches 4.. run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.all.single"}'
execute if score temp2 dynamic_skill matches 2.. if score temp5 dynamic_skill matches 0 if score temp4 dynamic_skill matches 4.. run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.all.multiple"}'
execute if score temp2 dynamic_skill matches 1 if score temp5 dynamic_skill matches 1 if score temp4 dynamic_skill matches 4.. run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.same.single"}'
execute if score temp2 dynamic_skill matches 2.. if score temp5 dynamic_skill matches 1 if score temp4 dynamic_skill matches 4.. run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.same.multiple"}'
execute if score temp2 dynamic_skill matches 1 if score temp5 dynamic_skill matches 2 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.different.single"}'
execute if score temp2 dynamic_skill matches 2.. if score temp5 dynamic_skill matches 2 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.different.multiple"}'
execute if score temp2 dynamic_skill matches 1 if score temp5 dynamic_skill matches 3 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.different_attacker.single"}'
execute if score temp2 dynamic_skill matches 2.. if score temp5 dynamic_skill matches 3 run data modify block 0 1 0 Text2 set value '{"translate":"dynskill.effects.selector.different_attacker.multiple"}'

execute if score temp2 dynamic_skill matches 1 if score temp1 dynamic_skill matches 0 run data modify block 0 1 0 Text1 set value '{"italic":true,"translate":"dynskill.effects.selector.nearest.single","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
execute if score temp2 dynamic_skill matches 2.. if score temp1 dynamic_skill matches 0 run data modify block 0 1 0 Text1 set value '{"italic":true,"translate":"dynskill.effects.selector.nearest.multiple","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
execute if score temp2 dynamic_skill matches 1 if score temp1 dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '{"italic":true,"translate":"dynskill.effects.selector.furthest.single","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
execute if score temp2 dynamic_skill matches 2.. if score temp1 dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '{"italic":true,"translate":"dynskill.effects.selector.furthest.multiple","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
execute if score temp2 dynamic_skill matches 1 if score temp1 dynamic_skill matches 2 run data modify block 0 1 0 Text1 set value '{"italic":true,"translate":"dynskill.effects.selector.random.single","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
execute if score temp2 dynamic_skill matches 2.. if score temp1 dynamic_skill matches 2 run data modify block 0 1 0 Text1 set value '{"italic":true,"translate":"dynskill.effects.selector.random.multiple","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
execute if score temp2 dynamic_skill matches 1 if score temp1 dynamic_skill matches 3 run data modify block 0 1 0 Text1 set value '{"italic":true,"translate":"dynskill.effects.selector.arbitrary.single","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
execute if score temp2 dynamic_skill matches 2.. if score temp1 dynamic_skill matches 3 run data modify block 0 1 0 Text1 set value '{"italic":true,"translate":"dynskill.effects.selector.arbitrary.multiple","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
execute if score temp2 dynamic_skill matches 1 if score temp1 dynamic_skill matches 0 run data modify block 0 1 0 Text3 set value '{"italic":true,"translate":"dynskill.effects.selector.nearest_alt.single","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true},{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true}]}'
execute if score temp2 dynamic_skill matches 2.. if score temp1 dynamic_skill matches 0 run data modify block 0 1 0 Text3 set value '{"italic":true,"translate":"dynskill.effects.selector.nearest_alt.multiple","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true},{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true}]}'
execute if score temp2 dynamic_skill matches 1 if score temp1 dynamic_skill matches 1 run data modify block 0 1 0 Text3 set value '{"italic":true,"translate":"dynskill.effects.selector.furthest_alt.single","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true},{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true}]}'
execute if score temp2 dynamic_skill matches 2.. if score temp1 dynamic_skill matches 1 run data modify block 0 1 0 Text3 set value '{"italic":true,"translate":"dynskill.effects.selector.furthest_alt.multiple","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true},{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true}]}'
execute if score temp2 dynamic_skill matches 1 if score temp1 dynamic_skill matches 2 run data modify block 0 1 0 Text3 set value '{"italic":true,"translate":"dynskill.effects.selector.random_alt.single","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
execute if score temp2 dynamic_skill matches 2.. if score temp1 dynamic_skill matches 2 run data modify block 0 1 0 Text3 set value '{"italic":true,"translate":"dynskill.effects.selector.random_alt.multiple","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
execute if score temp2 dynamic_skill matches 1 if score temp1 dynamic_skill matches 3 run data modify block 0 1 0 Text3 set value '{"italic":true,"translate":"dynskill.effects.selector.arbitrary_alt.single","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
execute if score temp2 dynamic_skill matches 2.. if score temp1 dynamic_skill matches 3 run data modify block 0 1 0 Text3 set value '{"italic":true,"translate":"dynskill.effects.selector.arbitrary_alt.multiple","with":[{"score":{"name":"temp2","objective":"dynamic_skill"}},{"block":"0 1 0","nbt":"Text2","interpret":true}]}'
 
 # selector type 
execute if score temp3 dynamic_skill matches 0 run data modify block 0 1 0 Text1 set value '[{"translate":"dynskill.special:selector00","with":[{"block":"0 1 0","nbt":"Text1","interpret":true}]}]'
execute if score temp3 dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '[{"translate":"dynskill.special:selector01","with":[{"block":"0 1 0","nbt":"Text1","interpret":true}]}]'
execute if score temp3 dynamic_skill matches 2 run data modify block 0 1 0 Text1 set value '[{"translate":"dynskill.special:selector10","with":[{"block":"0 1 0","nbt":"Text1","interpret":true}]}]'
execute if score temp3 dynamic_skill matches 3 run data modify block 0 1 0 Text1 set value '[{"translate":"dynskill.special:selector11","with":[{"block":"0 1 0","nbt":"Text1","interpret":true}]}]'
execute if score temp3 dynamic_skill matches 0 run data modify block 0 1 0 Text3 set value '[{"translate":"dynskill.special:selector00","with":[[{"block":"0 1 0","nbt":"Text3","interpret":true}," ",{"block":"0 1 0","nbt":"Text4","interpret":true,"italic":true}]]}]'
execute if score temp3 dynamic_skill matches 1 run data modify block 0 1 0 Text3 set value '[{"translate":"dynskill.special:selector01","with":[[{"block":"0 1 0","nbt":"Text3","interpret":true}," ",{"block":"0 1 0","nbt":"Text4","interpret":true,"italic":true}]]}]'
execute if score temp3 dynamic_skill matches 2 run data modify block 0 1 0 Text3 set value '[{"translate":"dynskill.special:selector10","with":[[{"block":"0 1 0","nbt":"Text3","interpret":true}," ",{"block":"0 1 0","nbt":"Text4","interpret":true,"italic":true}]]}]'
execute if score temp3 dynamic_skill matches 3 run data modify block 0 1 0 Text3 set value '[{"translate":"dynskill.special:selector11","with":[[{"block":"0 1 0","nbt":"Text3","interpret":true}," ",{"block":"0 1 0","nbt":"Text4","interpret":true,"italic":true}]]}]'
data modify storage dynamic_skill:main stack[-4].value append from block 0 1 0 Text1


execute if score temp4 dynamic_skill matches 0..1 run data modify storage dynamic_skill:main stack[-4].value[-1] set from block 0 1 0 Text3
execute if score temp4 dynamic_skill matches 2 if score temp2 dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.selector.distance.min.single","with":["5",{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true},{"block":"0 1 0","nbt":"Text4","interpret":true}]}]'
execute if score temp4 dynamic_skill matches 3 if score temp2 dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.selector.distance.min.single","with":["10",{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true},{"block":"0 1 0","nbt":"Text4","interpret":true}]}]'
execute if score temp4 dynamic_skill matches 1 if score temp2 dynamic_skill matches 2.. run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.selector.distance.min.multiple","with":["0.1",{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true},{"block":"0 1 0","nbt":"Text4","interpret":true}]}]'
execute if score temp4 dynamic_skill matches 2 if score temp2 dynamic_skill matches 2.. run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.selector.distance.min.multiple","with":["5",{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true},{"block":"0 1 0","nbt":"Text4","interpret":true}]}]'
execute if score temp4 dynamic_skill matches 3 if score temp2 dynamic_skill matches 2.. run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.selector.distance.min.multiple","with":["10",{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true},{"block":"0 1 0","nbt":"Text4","interpret":true}]}]'
execute if score temp4 dynamic_skill matches 4 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.selector.distance.max","with":["5",{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true},{"block":"0 1 0","nbt":"Text4","interpret":true}]}]'
execute if score temp4 dynamic_skill matches 5 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.selector.distance.max","with":["7",{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true},{"block":"0 1 0","nbt":"Text4","interpret":true}]}]'
execute if score temp4 dynamic_skill matches 6 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.selector.distance.max","with":["10",{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true},{"block":"0 1 0","nbt":"Text4","interpret":true}]}]'
execute if score temp4 dynamic_skill matches 7 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.selector.distance.max","with":["15",{"storage":"dynamic_skill:main","nbt":"trigger_data_translations[9]","interpret":true},{"block":"0 1 0","nbt":"Text4","interpret":true}]}]'
execute unless score temp4 dynamic_skill matches 0..1 run data modify storage dynamic_skill:main stack[-4].value append from block 0 1 0 Text1

# provide pseudo trigger location data
execute if score temp3 dynamic_skill matches 2 run data modify storage dynamic_skill:main trigger_data_translations[0] set value '{"translate":"dynskill.triggers.location1.player"}'
execute if score temp3 dynamic_skill matches 1 run data modify storage dynamic_skill:main trigger_data_translations[0] set value '{"translate":"dynskill.triggers.location1.player_alt"}'
execute if score temp3 dynamic_skill matches 1..2 run data modify storage dynamic_skill:main trigger_data_translations[1] set value '{"translate":"dynskill.triggers.location2.player"}'
execute if score temp3 dynamic_skill matches 1..2 run data modify storage dynamic_skill:main trigger_data_translations[2] set value '{"translate":"dynskill.triggers.location3.player"}'
execute if score temp3 dynamic_skill matches 1..2 run data modify storage dynamic_skill:main trigger_data_translations[3] set value '{"translate":"dynskill.triggers.location4.player"}'
execute if score temp3 dynamic_skill matches 1..2 run data modify storage dynamic_skill:main trigger_data_translations[4] set value '{"translate":"dynskill.triggers.location2.player"}'
execute unless score temp3 dynamic_skill matches 1 unless score temp3 dynamic_skill matches 3 run data modify storage dynamic_skill:main trigger_data_translations[5] set value '{"translate":"dynskill.triggers.identity1.player"}'
execute unless score temp3 dynamic_skill matches 1 unless score temp3 dynamic_skill matches 3 run data modify storage dynamic_skill:main trigger_data_translations[6] set value '{"translate":"dynskill.triggers.identity2.player"}'
execute unless score temp3 dynamic_skill matches 1 unless score temp3 dynamic_skill matches 3 run data modify storage dynamic_skill:main trigger_data_translations[7] set value '{"translate":"dynskill.triggers.identity3.player"}'
execute if score temp3 dynamic_skill matches 1..2 run data modify storage dynamic_skill:main trigger_data_translations[8] set value '{"translate":"dynskill.triggers.location5.player"}'
execute if score temp3 dynamic_skill matches 1..2 run data modify storage dynamic_skill:main trigger_data_translations[9] set value '{"translate":"dynskill.triggers.location6.player"}'
execute unless score temp3 dynamic_skill matches 1 unless score temp3 dynamic_skill matches 3 run data modify storage dynamic_skill:main trigger_data_translations[10] set value '{"translate":"dynskill.triggers.identity4.player"}'

# if context uses a 'self' but location and identity are different remove the 'self'
data modify storage dynamic_skill:main temp set from storage dynamic_skill:main trigger_data_translations[0] 
execute if score temp3 dynamic_skill matches 0 if data storage dynamic_skill:main {temp:'{"translate":"dynskill.triggers.location1.self"}'} run data modify storage dynamic_skill:main trigger_data_translations[0] set value '{"translate":"dynskill.triggers.location1.self_alt"}'
execute if score temp3 dynamic_skill matches 1 if data storage dynamic_skill:main {temp:'{"translate":"dynskill.triggers.location1.player"}'} run data modify storage dynamic_skill:main trigger_data_translations[0] set value '{"translate":"dynskill.triggers.location1.player_alt"}'

# effect list
data modify storage dynamic_skill:main spaces append value "   "
data modify storage dynamic_skill:main prefix set value "@ "
execute if data storage dynamic_skill:main binary[0] run function dynamic_skill:internal/decode_effect_list
data modify storage dynamic_skill:main stack[-1].args append from storage dynamic_skill:main effect_list
execute unless data storage dynamic_skill:main stack[-4].value[1] run data modify storage dynamic_skill:main extra_translations set value []
execute if data storage dynamic_skill:main stack[-4].value[1] run data modify storage dynamic_skill:main extra_translations set value [""]
execute if data storage dynamic_skill:main stack[-4].value[1] run data modify storage dynamic_skill:main extra_translations[0] set from storage dynamic_skill:main stack[-4].value[1]
data modify storage dynamic_skill:main extra_translations append from storage dynamic_skill:main translations[]

# remove special for translations as effect list is unused
execute unless data storage dynamic_skill:main stack[-1].args[1][0] run data modify storage dynamic_skill:main stack[-4].value set value []

# load effect from stack [util]
function dynamic_skill:internal/effect/special/util/stack_load
