scoreboard players set digits dynamic_skill 1
function dynamic_skill:internal/util/decode_binary

scoreboard players set charCount dynamic_skill 0
data modify storage dynamic_skill:main name set value []
function dynamic_skill:internal/name/decode_char_upper
data modify block 0 1 0 Text1 set value '[{"storage":"dynamic_skill:main","nbt":"name","interpret":true}]'
data modify storage dynamic_skill:main skill.name set from block 0 1 0 Text1