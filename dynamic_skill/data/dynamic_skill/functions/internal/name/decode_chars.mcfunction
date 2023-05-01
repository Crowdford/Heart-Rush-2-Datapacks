scoreboard players add charCount dynamic_skill 1
function dynamic_skill:internal/name/decode_char
execute unless score int dynamic_skill matches 0 unless score int dynamic_skill matches 27 run function dynamic_skill:internal/name/decode_chars
execute if score int dynamic_skill matches 27 run function dynamic_skill:internal/name/decode_char_upper