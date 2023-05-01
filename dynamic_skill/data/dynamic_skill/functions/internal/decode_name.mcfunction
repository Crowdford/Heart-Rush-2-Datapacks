## Decode Name
# Word #1
function dynamic_skill:internal/name/decode_segment1
# Word #2
scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary
scoreboard players operation temp dynamic_skill = int dynamic_skill
data modify storage dynamic_skill:main skill.word2 set value '{"translate":"dynskill.name.2.0.g","with":[{"storage":"dynamic_skill:main","interpret":true,"nbt":"skill.word1[0]"},{"storage":"dynamic_skill:main","interpret":true,"nbt":"skill.word1[1]"},{"storage":"dynamic_skill:main","interpret":true,"nbt":"skill.word1[2]"},{"storage":"dynamic_skill:main","interpret":true,"nbt":"skill.word1[3]"},{"storage":"dynamic_skill:main","interpret":true,"nbt":"skill.word1[4]"}]}'
execute if score temp dynamic_skill matches 1 run function dynamic_skill:internal/name/decode_segment2

# into json
execute if score temp dynamic_skill matches 1 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"skill.name[0]","interpret":true}," ",{"storage":"dynamic_skill:main","nbt":"skill.name[1]","interpret":true}]'
execute if score temp dynamic_skill matches 0 run data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"skill.name[0]","interpret":true}]'
data modify storage dynamic_skill:main skill.name set from block 0 1 0 Text1