# store effect to stack [util]
function dynamic_skill:internal/effect/special/util/stack_save

# get arguments
scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary
scoreboard players remove int dynamic_skill 3
function dynamic_skill:internal/effect/write_arg_score_special

scoreboard players operation temp dynamic_skill = int dynamic_skill
scoreboard players operation temp dynamic_skill *= #-1 dynamic_skill

execute if score int dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.east.single","with":[{"score":{"name":"int","objective":"dynamic_skill"}}]}]'
execute if score int dynamic_skill matches 2.. run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.east.multiple","with":[{"score":{"name":"int","objective":"dynamic_skill"}}]}]'
execute if score int dynamic_skill matches -1 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.west.single","with":[{"score":{"name":"temp","objective":"dynamic_skill"}}]}]'
execute if score int dynamic_skill matches ..-2 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.west.multiple","with":[{"score":{"name":"temp","objective":"dynamic_skill"}}]}]'
execute unless score int dynamic_skill matches 0 run data modify storage dynamic_skill:main stack[-4].value append from block 0 1 0 Text1

scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary
scoreboard players remove int dynamic_skill 3
function dynamic_skill:internal/effect/write_arg_score_special

scoreboard players operation temp dynamic_skill = int dynamic_skill
scoreboard players operation temp dynamic_skill *= #-1 dynamic_skill

execute if score int dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.up.single","with":[{"score":{"name":"int","objective":"dynamic_skill"}}]}]'
execute if score int dynamic_skill matches 2.. run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.up.multiple","with":[{"score":{"name":"int","objective":"dynamic_skill"}}]}]'
execute if score int dynamic_skill matches -1 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.down.single","with":[{"score":{"name":"temp","objective":"dynamic_skill"}}]}]'
execute if score int dynamic_skill matches ..-2 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.down.multiple","with":[{"score":{"name":"temp","objective":"dynamic_skill"}}]}]'
execute unless score int dynamic_skill matches 0 run data modify storage dynamic_skill:main stack[-4].value append from block 0 1 0 Text1

scoreboard players set digits dynamic_skill 4
function dynamic_skill:internal/util/decode_binary
scoreboard players remove int dynamic_skill 3
function dynamic_skill:internal/effect/write_arg_score_special

scoreboard players operation temp dynamic_skill = int dynamic_skill
scoreboard players operation temp dynamic_skill *= #-1 dynamic_skill

execute if score int dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.south.single","with":[{"score":{"name":"int","objective":"dynamic_skill"}}]}]'
execute if score int dynamic_skill matches 2.. run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.south.multiple","with":[{"score":{"name":"int","objective":"dynamic_skill"}}]}]'
execute if score int dynamic_skill matches -1 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.north.single","with":[{"score":{"name":"temp","objective":"dynamic_skill"}}]}]'
execute if score int dynamic_skill matches ..-2 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true}," ",{"italic":true,"translate":"dynskill.effects.location.north.multiple","with":[{"score":{"name":"temp","objective":"dynamic_skill"}}]}]'
execute unless score int dynamic_skill matches 0 run data modify storage dynamic_skill:main stack[-4].value append from block 0 1 0 Text1

# provide pseudo trigger location data
data modify storage dynamic_skill:main trigger_data_translations[0] set value '{"translate":"dynskill.triggers.location1.location"}'
data modify storage dynamic_skill:main trigger_data_translations[1] set value '{"translate":"dynskill.triggers.location2.location"}'
data modify storage dynamic_skill:main trigger_data_translations[2] set value '{"translate":"dynskill.triggers.location3.location"}'
data modify storage dynamic_skill:main trigger_data_translations[3] set value '{"translate":"dynskill.triggers.location4.location"}'
data modify storage dynamic_skill:main trigger_data_translations[4] set value '{"translate":"dynskill.triggers.location2.location"}'
data modify storage dynamic_skill:main trigger_data_translations[8] set value '{"translate":"dynskill.triggers.location5.location"}'
data modify storage dynamic_skill:main trigger_data_translations[9] set value '{"translate":"dynskill.triggers.location6.location"}'

# effect list
data modify storage dynamic_skill:main spaces append value "   "
data modify storage dynamic_skill:main prefix set value "@ "
execute if data storage dynamic_skill:main binary[0] run function dynamic_skill:internal/decode_effect_list
data modify storage dynamic_skill:main stack[-1].args append from storage dynamic_skill:main effect_list
data modify storage dynamic_skill:main extra_translations set from storage dynamic_skill:main stack[-4].value
data modify storage dynamic_skill:main extra_translations append from storage dynamic_skill:main translations[]

# remove special for translations as effect list is unused
execute unless data storage dynamic_skill:main stack[-1].args[1][0] run data modify storage dynamic_skill:main stack[-4].value set value []

# load effect from stack [util]
function dynamic_skill:internal/effect/special/util/stack_load