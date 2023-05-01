# decode effect list
execute if data storage dynamic_skill:main binary[0] run function dynamic_skill:internal/decode_effect_list
data modify storage dynamic_skill:main stack[-1].args append from storage dynamic_skill:main effect_list

scoreboard players add randIndex dynamic_skill 1
data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"spaces","interpret":true},{"translate":"dynskill.effects.random","with":[{"score":{"name":"randIndex","objective":"dynamic_skill"}}]}]'
data modify storage dynamic_skill:main stack[-4].value append from block 0 1 0 Text1

data modify storage dynamic_skill:main stack[-4].value append from storage dynamic_skill:main translations[]

# check trig done
function dynamic_skill:internal/effect/special/util/trig_done_check